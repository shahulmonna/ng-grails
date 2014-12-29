package com.toastmasters.idc

class ErrorController {
	def index() {

		def exception = request.exception.cause
		def className = request.getAttribute('exception').className
		println("Invalid meeting ${exception}, className ${className} " +
				"status: ${exception.code?.getErrorCode()} tos ${exception.toString()}")
		def status = "Error"
		exception.source=className
		response.status = exception.code?.getErrorCode()
		render(template: "/error", model: [status: status, className:className,
																	 exception:exception])
	}

	//--------------------------------------------
	// Exception methods:
	//--------------------------------------------

	/**
	 * If any method in this controller invokes code that
	 * will throw a ConnectException then this method
	 * is invoked.
	 */
	def connectException(final ConnectException exception) {
		logException exception
		render view: '/error', model: [exception: exception]
	}




   /** Log exception */
	public void logException(final Exception exception) {
		println("exception : ${exception}")
		log.error "Exception occurred. ${exception?.message}", exception
	}
}
