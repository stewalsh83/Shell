
java = $(wildcard *.java)
class = $(patsubst %.java, %.class, $(java))

build: $(class)
	@true

clean:
	rm -f $(class)

%.class: %.java
	javac -g $<

# add a (phony) target named clean 
# which removes any .class files which have been generated.
# example
# $ ls
# Add.java java-3.mk Subtract.java
# $
# $ make -f java-3.mk
# javac Add.java
# javac Subtract.java
# $
# $ ls
# Add.class Add.java java-3.mk Subtract.class Subtract.java
# $
# $ make -f java-3.mk clean
# $
# $ ls
# Add.java java-3.mk Subtract.java
# $
# $ make -f java-3.mk clean                 # Note: no error due to non-existent files here!
# $