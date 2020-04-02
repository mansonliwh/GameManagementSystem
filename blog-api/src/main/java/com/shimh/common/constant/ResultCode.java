package com.shimh.common.constant;

public enum ResultCode {

    /* state code */
    SUCCESS(0, "成功"),
    ERROR(1, "失败"),

    PARAM_IS_INVALID(10001, "params invaild"),
    PARAM_IS_BLANK(10002, "params Null"),
    PARAM_TYPE_BIND_ERROR(10003, "params type error"),
    PARAM_NOT_COMPLETE(10004, "params Miss"),


    USER_NOT_LOGGED_IN(20001, "user do not log in"),
    USER_LOGIN_ERROR(20002, "wrong account or password"),
    USER_ACCOUNT_FORBIDDEN(20003, "account occupied"),
    USER_NOT_EXIST(20004, "user do not exist"),
    USER_HAS_EXISTED(20005, "user existed"),
    USER_Register_ERROR(20006, "user register fail"),

    SPECIFIED_QUESTIONED_USER_NOT_EXIST(30001, "logical error"),

    SYSTEM_INNER_ERROR(40001, "system busy"),

    RESULE_DATA_NONE(50001, "missing data"),
    DATA_IS_WRONG(50002, "wrong data"),
    DATA_ALREADY_EXISTED(50003, "data existed"),

    INTERFACE_INNER_INVOKE_ERROR(60001, "internal api fail"),
    INTERFACE_OUTTER_INVOKE_ERROR(60002, "external api fail"),
    INTERFACE_FORBID_VISIT(60003, "api forbidden"),
    INTERFACE_ADDRESS_INVALID(60004, "api address"),
    INTERFACE_REQUEST_TIMEOUT(60005, "running time error"),
    INTERFACE_EXCEED_LOAD(60006, "overload"),

    PERMISSION_NO_ACCESS(70001, "no permission"),

    UPLOAD_ERROR(80001, "upload fail"),

    SESSION_TIME_OUT(90001, "Session running time error");

    private Integer code;

    private String message;

    ResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public static String getMessage(String name) {
        for (ResultCode item : ResultCode.values()) {
            if (item.name().equals(name)) {
                return item.message;
            }
        }
        return name;
    }

    public static Integer getCode(String name) {
        for (ResultCode item : ResultCode.values()) {
            if (item.name().equals(name)) {
                return item.code;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return this.name();
    }

}
