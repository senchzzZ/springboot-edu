package com.ultron.common.response;


public interface ResponseMessageInterface {
    int getCode();

    String getMessage();

    public static class Default implements ResponseMessageInterface {
        private final int code;
        private final String message;

        Default(int code, String message) {
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
}
