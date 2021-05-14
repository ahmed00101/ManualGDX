JAVA_HOME		:=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home/bin
ANDROID_HOME	:= 
JAVAC		  	:= javac
J_FLAGS 		:= -d .#-cp
K_FLAGS 		:= -include-runtime#-cp



BINdir			:= bin
TMPdir			:= tmp
SRCdir			:= src
SRCJ			:= @$(TMPdir)/sourcesj.txt
SRCK			:= @$(TMPdir)/sourcesk.txt

LIBdir			:= lib
LIBS			= -cp "lib/*"

#	kotlinc -include-runtime @tmp/sourcesk.txt -d lib/myk.jar

all: clean generateSourceFileList
	kotlinc $(K_FLAGS) $(LIBS) $(SRCK) -d lib/myk.jar
	$(JAVA_HOME)/$(JAVAC) $(J_FLAGS) $(LIBS) $(SRCJ)
#	kotlinc $(K_FLAGS) $(LIBS) $(SRCK) 

run1:
	$(JAVA_HOME)/java $(LIBS) pgk.Game

jar:
	$(JAVA_HOME)/jar -cf lib/my.jar pkg/*

run: all jar
	cp lib/* bin/
	java -cp myjar.jar:lib/*:. pkg.Game


clean:
	printf "Cleaning up...\n" 
	echo "removing already generatied files...\n" > /dev/null
	-rm pkg/*
	-rm $(TMPdir)/*
	-rm lib/my.jar

generateSourceFileList:
	echo "\n"
	echo "Generating source file lists...\n"
	find src/ -name "*.java" > $(TMPdir)/sourcesj.txt
	find src/ -name "*.kt" > $(TMPdir)/sourcesk.txt
	



#Unused stuff


#LIBGDX	:= gdx-1.10.0.jar
#BACKEND	:= gdx-backend-lwjgl-1.10.0.jar
#LIBS:= -cp "gdx-1.10.0.jar:gdx-backend-lwjgl-1.10.0.jar"


CLASSES := \
    Game.java \
    MyGdxGame.java \
    #Library.java \
    #Main.java 