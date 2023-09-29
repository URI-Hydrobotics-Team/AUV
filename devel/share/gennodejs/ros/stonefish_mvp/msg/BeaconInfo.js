// Auto-generated. Do not edit!

// (in-package stonefish_mvp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BeaconInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.beacon_id = null;
      this.range = null;
      this.azimuth = null;
      this.elevation = null;
      this.relative_position = null;
      this.local_orientation = null;
      this.local_depth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('beacon_id')) {
        this.beacon_id = initObj.beacon_id
      }
      else {
        this.beacon_id = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0.0;
      }
      if (initObj.hasOwnProperty('relative_position')) {
        this.relative_position = initObj.relative_position
      }
      else {
        this.relative_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('local_orientation')) {
        this.local_orientation = initObj.local_orientation
      }
      else {
        this.local_orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('local_depth')) {
        this.local_depth = initObj.local_depth
      }
      else {
        this.local_depth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BeaconInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [beacon_id]
    bufferOffset = _serializer.uint8(obj.beacon_id, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float32(obj.elevation, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [local_orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.local_orientation, buffer, bufferOffset);
    // Serialize message field [local_depth]
    bufferOffset = _serializer.float32(obj.local_depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeaconInfo
    let len;
    let data = new BeaconInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [beacon_id]
    data.beacon_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_orientation]
    data.local_orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_depth]
    data.local_depth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'stonefish_mvp/BeaconInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1127716b80995f5b12a8c1f5f98b902';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 beacon_id
    float32 range
    float32 azimuth
    float32 elevation
    geometry_msgs/Point relative_position
    geometry_msgs/Quaternion local_orientation
    float32 local_depth
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
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BeaconInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.beacon_id !== undefined) {
      resolved.beacon_id = msg.beacon_id;
    }
    else {
      resolved.beacon_id = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0.0
    }

    if (msg.relative_position !== undefined) {
      resolved.relative_position = geometry_msgs.msg.Point.Resolve(msg.relative_position)
    }
    else {
      resolved.relative_position = new geometry_msgs.msg.Point()
    }

    if (msg.local_orientation !== undefined) {
      resolved.local_orientation = geometry_msgs.msg.Quaternion.Resolve(msg.local_orientation)
    }
    else {
      resolved.local_orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.local_depth !== undefined) {
      resolved.local_depth = msg.local_depth;
    }
    else {
      resolved.local_depth = 0.0
    }

    return resolved;
    }
};

module.exports = BeaconInfo;
