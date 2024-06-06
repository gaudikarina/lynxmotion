#include "ros/ros.h"
#include "std_msgs/String.h"
#include "../util/comm/comm.hpp"
#include "lynxmotion/commData.h"
#include "lynxmotion/motores.h"

#define MOTOR_Q1 0X00
#define MOTOR_Q2 0X01
#define MOTOR_Q3 0X02
#define MOTOR_Q4 0X03
#define MOTOR_Q5 0X04

#define MOTOR_Q_MAX  1.5707963
#define MOTOR_Q_MIN -1.5707963

ros::Publisher chatter_pub;

void tramaConstruir(char *trama, char motor, char angulo)
{
	trama[0] = 0xFF;
	trama[1] = motor;
	trama[2] = angulo;
//	trama[3] = 0x00;
}

void tramaEnviar(char *trama)
{
	lynxmotion::commData msg;

	for(int i=0; i<3; i++)
	{
		msg.data = trama[i];
//		printf ("%2X",msg.data);
		chatter_pub.publish(msg);
	}
	printf ("\n");
}

unsigned char radianToByte(float angulo)
{
	/*
	 * Ejecuta una transformacion lineal para el intervalo que va desde
	 * float(MIN, MAX) al intervalo int(0, 255)
	 * 
	 */
	unsigned char c;
	
	c = ((angulo + (3.1415926/2))/3.1415926)*255;
	
	return c;
}

void moverCallback(const lynxmotion::motores msg)
{
	char trama[3];

	
	// Q1
	tramaConstruir(trama, MOTOR_Q1, radianToByte(-msg.q1));
	tramaEnviar(trama);
	printf ("Q1: %.2f\t",msg.q1*180/M_PI);
	
	// Q2
	tramaConstruir(trama, MOTOR_Q2, radianToByte(msg.q2));
	tramaEnviar(trama);
	printf ("Q2: %.2f\t",msg.q2*180/M_PI);
	
	// Q3
	tramaConstruir(trama, MOTOR_Q3, radianToByte(-msg.q3));
	tramaEnviar(trama);
	printf ("Q3: %.2f\t",msg.q3*180/M_PI);
	
	// Q4
	tramaConstruir(trama, MOTOR_Q4, radianToByte(msg.q4));
	tramaEnviar(trama);
	printf ("Q4: %.2f\t",msg.q4*180/M_PI);
	
	// Q5
	tramaConstruir(trama, MOTOR_Q5, radianToByte(msg.q5));
	tramaEnviar(trama);
	printf ("Q5: %.2f\n",msg.q5*180/M_PI);

	
}


int main(int argc, char **argv)
{
	ros::init(argc, argv, "moverMotores");
    ros::NodeHandle n;

	chatter_pub = n.advertise<lynxmotion::commData>(COMM_MSG_TX, 50);
    ros::Subscriber sub = n.subscribe("Articulaciones", 100, moverCallback);

	ros::spin();

    return 0;
}

