grails.servlet.version =
		"3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

grails.project.fork = [
		// configure settings for compilation JVM, note that if you alter the Groovy version forked compilation is required
		//  compile: [maxMemory: 256, minMemory: 64, debug: false, maxPerm: 256, daemon:true],

		// configure settings for the test-app JVM, uses the daemon by default
		test   : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, daemon: true],
		// configure settings for the run-app JVM
		run    : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve: false],
		// configure settings for the run-war JVM
		war    : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve: false],
		// configure settings for the Console UI JVM
		console: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256]]

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
	// inherit Grails' default dependencies
	inherits("global") {
		// specify dependency exclusions here; for example, uncomment this to disable ehcache:
		// excludes 'ehcache'
	}
	log "error"
	// log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
	checksums true // Whether to verify checksums on resolve
	legacyResolve false
	// whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

	repositories {
		inherits true // Whether to inherit repository definitions from plugins

		grailsPlugins()
		grailsHome()
		mavenLocal()
		grailsCentral()
		mavenCentral()
		// uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
		//mavenRepo "http://repository.codehaus.org"
		//mavenRepo "http://download.java.net/maven/2/"
		//mavenRepo "http://repository.jboss.com/maven2/"
		mavenRepo "http://archiva.fdvs.com.ar/repository/public1"
	}

	dependencies {
		// specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.
		// runtime 'mysql:mysql-connector-java:5.1.29'
		// runtime 'org.postgresql:postgresql:9.3-1101-jdbc41'

		compile "net.sf.ehcache:ehcache-core:2.4.8"
		/*compile ("ar.com.fdvs:DynamicJasper:5.0.2"){
			transitive = false
		}
		runtime ('net.sf.jasperreports:jasperreports:5.1.0') {
			excludes 'xml-apis'
		}*/
		runtime 'org.springframework:spring-test:3.2.3.RELEASE'
		test "org.grails:grails-datastore-test-support:1.0.2-grails-2.4"
		compile 'org.xhtmlrenderer:flying-saucer-pdf:9.0.4'
	}

	plugins {
		// plugins for the build system only
		build ":tomcat:7.0.55"

		// plugins for the compile step
		compile ":scaffolding:2.1.2"
		compile ':cache:1.1.7'
		compile ":asset-pipeline:1.9.9"

		// plugins needed at runtime but not for compilation
		//runtime ":hibernate4:4.3.5.5" // or ":hibernate:3.6.10.17"
		compile ":mongodb:3.0.2"
		runtime ":database-migration:1.4.0"
		runtime ":jquery:1.11.1"
	/*	compile ":jasper:1.10.0"
		compile ":dynamic-jasper:0.6"*/
		compile ":rendering:1.0.0"
		//https://github.com/robfletcher/grails-gson#readme
		//compile 'org.grails.plugins:gson:1.1.4'
//		compile ":pdf:0.6"

		// Uncomment these to enable additional asset-pipeline capabilities
		//compile ":sass-asset-pipeline:1.9.0"
		//compile ":less-asset-pipeline:1.10.0"
		//compile ":coffee-asset-pipeline:1.8.0"
		//compile ":handlebars-asset-pipeline:1.3.0.3"
		// for heroku
		//https://medium.com/groovy-grails/grails-heroku-mongodb-and-postgresql-1eeedaceabf8
		compile ":heroku:1.0.1"
		compile ":cloud-support:1.0.11"
		//compile ":database-session:1.2.1"
		/*build-info : Provides a controller/view that display basic information
		about the war file*/
		compile ":build-info:1.2.8"
	}
}
