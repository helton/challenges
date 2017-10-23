#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(int argc, char **argv) {
	double salary, newSalary, percentage;
	cin >> salary;

	if (salary <= 400) {
		percentage = 0.15;
	}
	else if (salary <= 800) {
		percentage = 0.12;
	}
	else if (salary <= 1200) {
		percentage = 0.1;
	}
	else if (salary <= 2000) {
		percentage = 0.07;
	}
	else {
		salary = 0.04;
	}
	newSalary = salary * (1 + percentage);

	cout << fixed << setprecision(2);

	cout << "Novo salario: " << newSalary << endl <<
	        "Reajuste ganho: "  << newSalary - salary << endl << setprecision(0) <<
	        "Em percentual: " << percentage * 100 << " %" << endl;

	return 0;
}