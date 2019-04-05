#include <chrono>
#include <iostream>

#include "class.hpp"

using namespace std;

int main() {
  auto start = chrono::high_resolution_clock::now();

  cout << "Hello World!" << endl;
  Sample s;
  s.~Sample();

  auto stop = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
  cout << "Complete in: " << duration.count() << " microseconds" << endl;
  return 0;
}