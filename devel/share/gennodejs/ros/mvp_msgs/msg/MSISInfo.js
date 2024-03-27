// Auto-generated. Do not edit!

// (in-package mvp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MSISInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.step_angle = null;
      this.bins = null;
      this.horizontal_beam = null;
      this.vertical_beam = null;
      this.min_range = null;
      this.max_range = null;
      this.min_rotation = null;
      this.max_rotation = null;
      this.gain = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('step_angle')) {
        this.step_angle = initObj.step_angle
      }
      else {
        this.step_angle = 0.0;
      }
      if (initObj.hasOwnProperty('bins')) {
        this.bins = initObj.bins
      }
      else {
        this.bins = 0;
      }
      if (initObj.hasOwnProperty('horizontal_beam')) {
        this.horizontal_beam = initObj.horizontal_beam
      }
      else {
        this.horizontal_beam = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_beam')) {
        this.vertical_beam = initObj.vertical_beam
      }
      else {
        this.vertical_beam = 0.0;
      }
      if (initObj.hasOwnProperty('min_range')) {
        this.min_range = initObj.min_range
      }
      else {
        this.min_range = 0.0;
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0.0;
      }
      if (initObj.hasOwnProperty('min_rotation')) {
        this.min_rotation = initObj.min_rotation
      }
      else {
        this.min_rotation = 0.0;
      }
      if (initObj.hasOwnProperty('max_rotation')) {
        this.max_rotation = initObj.max_rotation
      }
      else {
        this.max_rotation = 0.0;
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MSISInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [step_angle]
    bufferOffset = _serializer.float64(obj.step_angle, buffer, bufferOffset);
    // Serialize message field [bins]
    bufferOffset = _serializer.uint64(obj.bins, buffer, bufferOffset);
    // Serialize message field [horizontal_beam]
    bufferOffset = _serializer.float32(obj.horizontal_beam, buffer, bufferOffset);
    // Serialize message field [vertical_beam]
    bufferOffset = _serializer.float32(obj.vertical_beam, buffer, bufferOffset);
    // Serialize message field [min_range]
    bufferOffset = _serializer.float64(obj.min_range, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.float64(obj.max_range, buffer, bufferOffset);
    // Serialize message field [min_rotation]
    bufferOffset = _serializer.float32(obj.min_rotation, buffer, bufferOffset);
    // Serialize message field [max_rotation]
    bufferOffset = _serializer.float32(obj.max_rotation, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.float64(obj.gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MSISInfo
    let len;
    let data = new MSISInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [step_angle]
    data.step_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bins]
    data.bins = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [horizontal_beam]
    data.horizontal_beam = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vertical_beam]
    data.vertical_beam = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_range]
    data.min_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_rotation]
    data.min_rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_rotation]
    data.max_rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/MSISInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59d3f83483205f23af9acdf27bc7d76d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # This message defines meta information for a mechanical scanning imaging sonar (MSIS).
    #
    
    # Time of sonar acquisition, sonar coordinate frame ID and seq 
    Header header
    
    # size of the rotation step [deg]
    float64 step_angle
    
    # a range resolution of the sonar image
    uint64 bins
    
    # horizontal beam width [deg]
    float32 horizontal_beam
    
    # vertical beam width [deg]
    float32 vertical_beam
    
    # minimum measured range [m]
    float64 min_range
    
    # maximum measured range [m]
    float64 max_range
    
    # minimum rotation of the sonar head [deg]
    float32 min_rotation
    
    # maximum rotation of the sonar head [deg]
    float32 max_rotation
    
    # gain
    float64 gain 
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
    const resolved = new MSISInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.step_angle !== undefined) {
      resolved.step_angle = msg.step_angle;
    }
    else {
      resolved.step_angle = 0.0
    }

    if (msg.bins !== undefined) {
      resolved.bins = msg.bins;
    }
    else {
      resolved.bins = 0
    }

    if (msg.horizontal_beam !== undefined) {
      resolved.horizontal_beam = msg.horizontal_beam;
    }
    else {
      resolved.horizontal_beam = 0.0
    }

    if (msg.vertical_beam !== undefined) {
      resolved.vertical_beam = msg.vertical_beam;
    }
    else {
      resolved.vertical_beam = 0.0
    }

    if (msg.min_range !== undefined) {
      resolved.min_range = msg.min_range;
    }
    else {
      resolved.min_range = 0.0
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0.0
    }

    if (msg.min_rotation !== undefined) {
      resolved.min_rotation = msg.min_rotation;
    }
    else {
      resolved.min_rotation = 0.0
    }

    if (msg.max_rotation !== undefined) {
      resolved.max_rotation = msg.max_rotation;
    }
    else {
      resolved.max_rotation = 0.0
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0.0
    }

    return resolved;
    }
};

module.exports = MSISInfo;
