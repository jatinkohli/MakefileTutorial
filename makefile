CFlags=-g -Wall

helloworld: helloworld.c
	gcc $(CFlags) helloworld.c -o helloworld

clean: helloworld
	rm helloworld