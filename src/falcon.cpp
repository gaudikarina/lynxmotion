#include "ros/ros.h"
#include "std_msgs/String.h"
#include "../msg_gen/cpp/include/lynxmotion/posiciones.h"


#include <sstream>


int main(int argc, char **argv)
{
  ros::init(argc, argv, "falcon");

  ros::NodeHandle n;

  
  ros::Publisher chatter_pub = n.advertise<lynxmotion::posiciones>("Posiciones", 1000);

  ros::Rate loop_rate(1);

    int count = 0;
  while (ros::ok())
  {
      lynxmotion::posiciones msg;
     //aqui asigno vales totalmente arbitrarios para las coordenadas X, Y, Z del robot
	//valores a obtener por el falcon nodo a realizar por Orangel
	//ANGULOS EN RADIANES, LONGITUDES EN mm
     msg.X = 85;
     msg.Y = 85;
     msg.Z = 172;

    ROS_INFO("Falcon publicando: X:%.3f\tY:%.3f\tZ:%.3f", msg.X, msg.Y, msg.Z);

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}

