
image:image.c image.h
	gcc -g image.c -o image -lm
omp:image_omp.c image.h
	gcc -g -fopenmp image_omp.c -o image -lm
pthread:image_pthread.c image.h
	gcc -g -lpthread image_pthread.c -o image -lm
clean:
	rm -f image output.png
