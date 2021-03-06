package dbw_mkz_msgs;

public interface WheelSpeedReport extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "dbw_mkz_msgs/WheelSpeedReport";
  static final java.lang.String _DEFINITION = "Header header\n\n# Wheel speeds (rad/s)\nfloat32 front_left\nfloat32 front_right\nfloat32 rear_left\nfloat32 rear_right\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getFrontLeft();
  void setFrontLeft(float value);
  float getFrontRight();
  void setFrontRight(float value);
  float getRearLeft();
  void setRearLeft(float value);
  float getRearRight();
  void setRearRight(float value);
}
