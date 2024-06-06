#include "ros/ros.h"
#include "std_msgs/String.h"

#include "constantes.hpp"
#include "../msg_gen/cpp/include/lynxmotion/posiciones.h"
#include "../msg_gen/cpp/include/lynxmotion/motores.h"
#include "../msg_gen/cpp/include/lynxmotion/angulos.h"

lynxmotion::motores motor; 
//el valor de los angulos de los motores es GLOBAL asi se puede reemplazar parte del contenido y publicarlo al siguiente topico, sin perder los datos anteriores


ros::Publisher chatter_pub;


void inversaCallback(const lynxmotion::posiciones msg)
{
  /*******************************************
  Aqui incluyo el codigo correspondiente al 
  calculo de la cinematica inversa. Obtengo q1, q2 y q3 (por ahora)
  a partir de X, Y, Z y los #defines de los valores de cada eslabon
  ********************************************/
  //usando los valores de cada uno de los eslabones (definidos en "constantes.hpp")
  float	q1,q2,q3;
  
  float dx, dy, dz, d, arg, alfa, betta,theta;

   dx = 95;	
   dy = msg.X*(-1000);//-msg.X*1000;	
   dz = msg.Y*1000 + 55;
   d = sqrt(dx*dx + dy*dy + dz*dz); //distancia de punto terminal a base L1/L2.

   arg = (LARGO2*LARGO2 + LARGO3*LARGO3 - d*d)/(2*LARGO2*LARGO3);
   if (fabs(arg)>=1) return;
	betta = acos (arg);

   arg = LARGO3*sin(betta)/d;
   if (fabs(arg)>=1) return;
	alfa = asin(arg);

   arg = dz / d;
   if (fabs(arg)>=1) return;
   theta = asin (arg);

   q3 = betta - M_PI_2;
   q2 = alfa + theta - M_PI_2;

	//calculo q1 como la arcotangente de las coordenadas en X y Y (proyeccion 'sombra' sobre el piso que es el plano X-Y)
	q1 = atan2(dy, dx); 

/*
   if (dx == 0)
   	{
      	if (dy > 0) q1 = M_PI_2;
         else q1 = -M_PI_2;
      }
   else
   	{
      	q1 = atan(dy / dx); //angulo q1, del primer eslabon, manejo de +-inf
	printf ("calculando");
      }

   if (dx < 0)	q1 = q1+M_PI;
*/

	//para el calculo de q2 y q3 se utiliza ley del coseno en triangulos escalenos.

//	q3= acos(((msg.Y/sin(q1))*(msg.Y/sin(q1))+(msg.Z-LARGO1)*(msg.Z-LARGO1)-(LARGO2)*(LARGO2)-LARGO3*LARGO3)/(2*LARGO2*LARGO3));
//	q2=atan(LARGO3*sin(q3)/(LARGO2+LARGO3*cos(q3)))+atan((msg.Z-LARGO1)/sqrt(msg.X*msg.X+msg.Y*msg.Y));

	ROS_INFO("Inversa recibe de Falcon: X:%.3f\tY:%.3f\tZ:%.3f", msg.X, msg.Y, msg.Z);
	
	//asigno los valores de cada uno de los motores. ESTAN EN RADIANES
	motor.q1 = q1;
	motor.q2 = q2 ;//- M_PI_2;
	motor.q3 = q3 ;// M_PI_2;

	//imprimo el valor de estos 3 angulos
	ROS_INFO("Inversa publica: q1=%.3f (%.2f)\tq2=%.3f (%.2f)\tq3=%.3f (%.2f)", motor.q1, motor.q1*180/M_PI,motor.q2, motor.q2*180/M_PI, motor.q3, motor.q3*180/M_PI);

	//publico el mensaje el el topico (notese que la variable 'chatter_pub' es global, esta definida antes del main)
	chatter_pub.publish(motor);
}

void wiiCallback(const lynxmotion::angulos msg)
{
	motor.q4 =  msg.Pitch - motor.q2 - motor.q3;
	motor.q5 = -msg.Roll;
  
	ROS_INFO("Inversa recibe de Wii: P=%.3f\tR=%.3f", msg.Pitch, msg.Roll);
	ROS_INFO("Inversa publica: q4:%.2f\tq5:%.2f\t\tcon q1:%.2f q2:%.2f y q3:%.2f", motor.q4,motor.q5,motor.q1, motor.q2,motor.q3);
	chatter_pub.publish(motor);
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "inversa");

	ros::NodeHandle n,nh;

	//el nodo de Inversa tambien publica en el topico 
	chatter_pub = n.advertise<lynxmotion::motores>("Articulaciones", 100);

	ros::Subscriber sub = n.subscribe("Posiciones", 100, inversaCallback);

	ros::Subscriber sub1 = nh.subscribe("orientacion", 100, wiiCallback);

	ros::spin();

	return 0;
}		
