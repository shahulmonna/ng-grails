import grails.converters.JSON

class BootStrap {

	def init = { servletContext ->
		JSON.registerObjectMarshaller(Date) {
			return it?.format("yyyy-MM-dd")
		}
		def gradleScript = new File('/home/syedshahul/projects/github/ng-grails/.git/HEAD')
		if(gradleScript.canRead()){

			gradleScript.eachLine {
				// Continue if it is not the version line
				if (!it.startsWith('def version')) {return}
				println evaluate(it) // Evaluates the line and prints the version
			}
		}

	}
	def destroy = {}
}
