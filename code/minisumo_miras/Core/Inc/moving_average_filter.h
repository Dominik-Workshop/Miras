#ifndef MOVING_AVERAGE_FILTER_H
#define MOVING_AVERAGE_FILTER_H

#define T float


typedef struct {
	uint8_t num_of_readings = 10;
	T readings[num_of_readings];   //stores defined amount of readings to be averaged out
	int readIndex = 0;                 //the index of the current reading
	T total = 0;                   //sum of all readings
	T average = 0;
}MovingAverage;

void initAverage(){
	for (int i = 0; i < num_of_readings; ++i)
    readings[i] = 0;
}

T calculate(T reading){
	total -= readings[readIndex];       //subtract the last reading:
	readings[readIndex] = reading;      //read from the sensor:
	total += readings[readIndex];       //add the reading to the total:
	++readIndex;                        //advance to the next position in the array:
	if (readIndex >= num_of_readings)   //if we're at the end of the array...
	readIndex = 0;                    //...wrap around to the beginning:
	average = total / num_of_readings;  //calculate the average:
	return average;
}


#endif
