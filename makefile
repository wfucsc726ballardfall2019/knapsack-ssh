all: knapsack_sequential.cpp
	g++ -fopenmp -o sequential knapsack_sequential.cpp
	g++ -fopenmp -o parallel knapsack_parallel.cpp

clean:
	rm sequential
	rm parallel
