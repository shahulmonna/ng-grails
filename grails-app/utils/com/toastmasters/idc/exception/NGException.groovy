package com.toastmasters.idc.exception

import groovy.transform.ToString

/**
 * Created by syedshahul on 27/12/14.*/
@ToString
class NGException extends Exception{
	ErrorCode code = ErrorCode.DefaultErrorCode;
	def source=""
	def errorMessages;
}
