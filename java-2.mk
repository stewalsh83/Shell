
dst = class

java = $(wildcard *.java)
class = $(addprefix $(dst)/, $(patsubst %.java, %.class, $(java))

build: $(dst) $(class)

$(dst)/%.class: %.java
	javac -g $(dst) $<

.PHONY: build


# complies some number of non-zero java files
# example
# $ ls
# Add.java java-2.mk Subtract.java
# $
# $ make -f java-2.mk
# javac Add.java
# javac Subtract.java
# $
# $ ls
# Add.class Add.java java-2.mk Subtract.class Subtract.java
# $