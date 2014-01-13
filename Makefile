#all: Sandbox.class
#	CLASSPATH=/usr/share/java/joda-time.jar:/home/josh/Desktop/jjj java Sandbox
#Sandbox.class: Sandbox.java
#	CLASSPATH=/usr/share/java/joda-time.jar javac Sandbox.java

JFLAGS = -g -classpath /usr/share/java/joda-time.jar
JC = javac
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = Sandbox.java

default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) *.class
run: classes
	java -cp .:/usr/share/java/joda-time.jar Sandbox
