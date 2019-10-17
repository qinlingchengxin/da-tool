package net.ys.listener;

import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import net.ys.component.ApplicationContextUtil;
import net.ys.service.EtlService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.Driver;
import java.sql.DriverManager;
import java.util.Enumeration;

/**
 * User: NMY
 * Date: 16-8-29
 */
@WebListener
public class SystemListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {//释放驱动并关闭线程
            Enumeration<Driver> enumeration = DriverManager.getDrivers();
            while (enumeration.hasMoreElements()) {
                DriverManager.deregisterDriver(enumeration.nextElement());
            }
            AbandonedConnectionCleanupThread.shutdown();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("system contextDestroyed------------------");
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        EtlService etlService = ApplicationContextUtil.getBean("etlService", EtlService.class);
        etlService.restartEtlJob();
        etlService.restartApiJob();
        System.out.println("system contextInitialized");
    }
}