# Makefiles can have variables for things used repeatedly,
# like gcc args in this case.
CFlags=-g -Wall 

# Below is an example of how to make an instruction to compile a c program.

# This is an instruction to make the helloworld executable binary.
# The first line tells make that we require the helloworld.c file to run this instruction
helloworld: helloworld.c
#	This line is what the terminal will execute once the instruction is called.
#	Basically all makefiles do is give aliases to terminal commands that are easy to understand!
	gcc $(CFlags) helloworld.c -o helloworld

# This next example shows how instructions can call other instructions if needed.

# We are telling make we need the helloworldrunner.c and the helloworld files.
# If make cannot find a file, it will attempt to find an instruction to make it.
# Try running 'make clean' before 'make helloworldrunner' to see this in action.
# It will run the helloworld instruction before this one (only if helloworld does not exist)!
helloworldrunner: helloworldrunner.c helloworld
	gcc $(CFlags) helloworldrunner.c -o helloworldrunner

# A 'clean' instruction is commonly included to delete all binaries
clean: 
#	This could be done with one rm command, but this showcases how one instruction
#	can call multiple commands
	rm helloworld
	rm helloworldrunner