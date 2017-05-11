# mvn-template
A Java/Scala mixed project template for maven build

## How to build and install  
```bash
 #!/bin/bash 
 set -e 
 MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
 mvn -DskipTests -T 1C  install
```

or alternatively have a look at `build-install.sh`

## How to build and execute 
```bash 
#!/bin/bash 
set -e 
MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
mvn -T 1C clean compile assembly:single
```
or alternatively have a look at `build-with-dependencies.sh`

### If Scala code needs to be compiled first 
```
<plugin>
	<groupId>net.alchim31.maven</groupId>
	<artifactId>scala-maven-plugin</artifactId>
	<executions>
		<execution>
			<id>scala-compile-first</id>
			<phase>process-resources</phase>
			<goals>
				<goal>add-source</goal>
				<goal>compile</goal>
			</goals>
		</execution>
		<execution>
			<id>scala-test-compile</id>
			<phase>process-test-resources</phase>
			<goals>
				<goal>testCompile</goal>
			</goals>
		</execution>
	</executions>
</plugin>
```
http://davidb.github.io/scala-maven-plugin/example_java.html

## Example run
```bash
$java -jar ./target/empty-project-1.0-jar-with-dependencies.jar 
 Hello World!
 concat arguments =
```
```bash 
$java -jar ./target/empty-project-1.0-jar-with-dependencies.jar -h 
 Hello World!
 concat arguments = -h
 usage: Main
  -h,--help   show help.
```
