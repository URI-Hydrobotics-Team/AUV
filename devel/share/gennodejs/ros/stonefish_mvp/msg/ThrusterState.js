// Auto-generated. Do not edit!

// (in-package stonefish_mvp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ThrusterState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.setpoint = null;
      this.rpm = null;
      this.thrust = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = [];
      }
      if (initObj.hasOwnProperty('rpm')) {
        this.rpm = initObj.rpm
      }
      else {
        this.rpm = [];
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = [];
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrusterState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [setpoint]
    bufferOffset = _arraySerializer.float64(obj.setpoint, buffer, bufferOffset, null);
    // Serialize message field [rpm]
    bufferOffset = _arraySerializer.float64(obj.rpm, buffer, bufferOffset, null);
    // Serialize message field [thrust]
    bufferOffset = _arraySerializer.float64(obj.thrust, buffer, bufferOffset, null);
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float64(obj.torque, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrusterState
    let len;
    let data = new ThrusterState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [setpoint]
    data.setpoint = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rpm]
    data.rpm = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [thrust]
    data.thrust = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.setpoint.length;
    length += 8 * object.rpm.length;
    length += 8 * object.thrust.length;
    length += 8 * object.torque.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stonefish_mvp/ThrusterState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93e0b03a2fe79ac1fe95ccde2413a6a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[] setpoint
    float64[] rpm
    float64[] thrust
    float64[] torque
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrusterState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = msg.setpoint;
    }
    else {
      resolved.setpoint = []
    }

    if (msg.rpm !== undefined) {
      resolved.rpm = msg.rpm;
    }
    else {
      resolved.rpm = []
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = []
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = []
    }

    return resolved;
    }
};

module.exports = ThrusterState;
