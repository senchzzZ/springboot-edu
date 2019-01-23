package com.ultron.common.response;


public enum ResponseMessage implements ResponseMessageInterface {
    SUCCESS(200, "操作成功"),
    NOT_FOUND(404, "没有查询结果"),
    UNSUPPORT_PARAM(405, "不支持的参数"),
    ERROR(500, "操作失败");

    private int code;
    private String message;

    private ResponseMessage(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }
}