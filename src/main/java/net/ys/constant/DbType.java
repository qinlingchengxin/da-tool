package net.ys.constant;

public enum DbType {

    MY_SQL(0, "MySql"), ORACLE(1, "Oracle"), MS_SQL(2, "MSSQL"), KING_BASE(3, "KINGBASEES");

    public int type;

    public String desc;

    private DbType(int type, String desc) {
        this.type = type;
        this.desc = desc;
    }

    public static DbType fromType(int type) {
        DbType[] values = DbType.values();
        for (DbType value : values) {
            if (value.type == type) {
                return value;
            }
        }

        return null;
    }
}
