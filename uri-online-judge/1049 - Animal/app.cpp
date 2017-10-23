#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

int main(int argc, char **argv) {
	string id1, id2, id3, animal;
	cin >> id1 >> id2 >> id3;

	if (id1 == "vertebrado") {
		if (id2 == "ave") {
			if (id3 == "carnivoro") {
				animal = "aguia";
			}
			else { //onívoro
				animal = "pomba";
			}
		}		
		else { //mamifero
			if (id3 == "onivoro") {
				animal = "homem";
			}
			else { //herbivoro
				animal = "vaca";
			}
		}		
	}
	else {
		if (id2 == "inseto") {
			if (id3 == "hematofago") {
				animal = "pulga";
			}
			else { //herbivoro
				animal = "lagarta";
			}
		}		
		else { //anelideo
			if (id3 == "hematofago") {
				animal = "sanguessuga";
			}
			else { //onivoro
				animal = "minhoca";
			}
		}			
	}
	cout << animal << endl;
	return 0;
}