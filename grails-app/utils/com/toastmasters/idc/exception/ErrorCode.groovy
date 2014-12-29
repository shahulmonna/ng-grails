package com.toastmasters.idc.exception

/**
 * Created by syedshahul on 27/12/14.
 * http://docs.spring.io/spring/docs/4.0.x/javadoc-api/org/springframework/http/HttpStatus.html
 * */
public enum ErrorCode {
	/**
	 * The Default error code.
	 */
	DefaultErrorCode(500, "Internal Server Error"),
	ServiceOk(200, "OK")

	/**
	 * errorCode value.
	 */
	private int errorCode;
	/**
	 * error Message.
	 */
	private String errorMessage;


	private ErrorCode(final int code, final String message) {
		this.errorCode    = code;
		this.errorMessage = message;
	}

	int getErrorCode() {
		return errorCode
	}

	String getErrorMessage() {
		return errorMessage
	}
}