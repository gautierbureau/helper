``` bash
$> javac Test.java
$> java -cp target/classes com.perso.App
$> java -jar target/perso-0.0.1-SNAPSHOT.jar com.perso.App
$> java -jar target/perso-0.0.1-SNAPSHOT.jar
```

To create a classpath
``` bash
$> var=$(find $app_path -name '*.jar')
$> classpath=$(echo $var | tr ' ' ':')
$> java -cp "$classpath" application.Main
```

See content of jar and search function in multiple jar:
``` bash
$> jar tf test.jar
$> find . -name '*.jar' -exec jar tf {} \; | grep Function
$> find . -name '*.jar' -exec grep -Hls Function {} \;
```

``` bash
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
```

Java WebStart
``` bash
$> javaws -viewer
$> cat ~/.java/deployment/security
$> javaws file.jnlp
```

Maven
``` bash
$> mvn -B archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes \
    -DgroupId=com.mycompany.app -DartifactId=my-app
```

Get a classpath from maven
``` bash
$> mvn dependency:build-classpath -Dmdep.outputFile=cp.txt
$> mvn -e -X ....
$> mvn dependency:list
```

- JSE : Java Standard Edition
- JVM : Java Virtual Machine
- JRE : Java Runtime Envirnoment
- JSR : Java Specification Requests
- JDK : Java Development Kit
- JEE : Java Enterprise Edition
- Java FX
- JCF : Java Collections Framework
- JSP : Java Server Pages

Servlet est une classe Java qui permet de créer dynamiquement des données au sein d'un serveur HTTP. Ces données sont le plus généralement présentées au format HTML, mais elles peuvent également l'être au format XML ou tout autre format destiné aux navigateurs web. Les servlets utilisent l'API Java Servlet.  Il existe plusieurs conteneurs de servlets, dont Apache Tomcat ou encore Jetty. Le serveur d'application JBoss Application Server utilise Apache Tomcat.

Applet: Ce sont des solutions coté client pour faire des pages webs dynamiques, le code s'execute sur la JVM de la machine client.
