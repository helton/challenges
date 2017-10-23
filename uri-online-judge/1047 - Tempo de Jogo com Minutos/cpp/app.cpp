#include <iostream>
#include <cmath>
#include <string>

using namespace std;

int getTotalMinutesFrom(int hour, int minutes) {
	return hour * 60 + minutes;
}

int getElapsedTime(int startHour, int startMin, int endHour, int endMin) {
	int elapsedTimeMin;
	if (getTotalMinutesFrom(startHour, startMin) <= getTotalMinutesFrom(endHour, endMin))	{
		elapsedTimeMin = getTotalMinutesFrom(endHour, endMin) - getTotalMinutesFrom(startHour, startMin);
	}
	else {
		elapsedTimeMin = getTotalMinutesFrom(24, 0) - getTotalMinutesFrom(startHour, startMin) + getTotalMinutesFrom(endHour, endMin);
	}
	if (elapsedTimeMin == 0) {
		elapsedTimeMin = getTotalMinutesFrom(24, 0);
	}
	return elapsedTimeMin;
}

void printResult(int elapsedTimeInMinutes) {
	int hours = elapsedTimeInMinutes / 60;
	int minutes = elapsedTimeInMinutes - (hours * 60);
	cout << "O JOGO DUROU " << hours << " HORA(S) E " << minutes << " MINUTO(S)" << endl;	
}

int main(int argc, char **argv) {
	int startHour, startMin, endHour, endMin;
	cin >> startHour >> startMin >> endHour >> endMin;
	printResult(getElapsedTime(startHour, startMin, endHour, endMin));
	return 0;
}