all: knapsack_sequential.cpp
	g++ -fopenmp -o knapsack_sequential knapsack_sequential.cpp

clean:
	rm knapsack_sequential