 #include "ros/ros.h"
#include "std_msgs/String.h"
#include "math.h"
#include "../msg_gen/cpp/include/lynxmotion/angulos.h"
#include "../msg_gen/cpp/include/lynxmotion/aceleracion.h"
#include "../../joystick_drivers/wiimote/msg_gen/cpp/include/wiimote/State.h" 

lynxmotion::angulos ang;
lynxmotion::aceleracion ace;

ros::Publisher chatter_pub;
void chatterCallback(const wiimote::State msg)
{
  	ace.aX0=msg.linear_acceleration_zeroed.x;
	ace.aY0=msg.linear_acceleration_zeroed.y;
	ace.aZ0=msg.linear_acceleration_zeroed.z;
	


	float a_x,a_y,a_z,a,R,P;    

	a_x=ace.aX0;
	a_y=ace.aY0;
	a_z=ace.aZ0;
	a=sqrt(a_x*a_x+a_y*a_y+a_z*a_z);
	ang.Roll= atan(a_x/a_z);     
	if(a_z<= 0.0){
		ang.Roll+=M_PI*((a_x>0.0)?1:-1);
	}
	ang.Pitch=atan(a_y/a_z*cos(ang.Roll));
	ang.Pitch*=-1;
	
	if(ang.Pitch >1.7 ){
		ang.Pitch= 1.7;
	}
	if(ang.Pitch < -1.7){
		ang.Pitch= 1.7;
	}
	if(ang.Roll >1.7 ){
		ang.Roll= 1.7;
	}
	if(ang.Roll < -1.7){
		ang.Roll= 1.7;
	}
	R = -ang.Roll*180.0/M_PI;
	P = ang.Pitch*180.0/M_PI;	
	



	ROS_INFO("WII recibe X0:%f\tY0:%f\tZ0:%f\t", msg.linear_acceleration_zeroed.x,msg.linear_acceleration_zeroed.y,
		msg.linear_acceleration_zeroed.z);		
	ROS_INFO("Wii publicando: Roll:%f grados\t Roll:%f rad \n Pitch:%fgrados\t Pitch:%frad", R,ang.Roll,P, ang.Pitch);

	
	chatter_pub.publish(ang);
  
}




int main(int argc, char **argv)
{
  
	ros::init(argc, argv, "wii");

	ros::NodeHandle n;

	chatter_pub=n.advertise<lynxmotion::angulos>("orientacion", 100);
	ros::Subscriber sub = n.subscribe("wiimote/state", 100, chatterCallback);	

	ros::spin();

  return 0;
}

