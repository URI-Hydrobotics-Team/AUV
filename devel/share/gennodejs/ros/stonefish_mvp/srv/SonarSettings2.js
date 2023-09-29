// Auto-generated. Do not edit!

// (in-package stonefish_mvp.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SonarSettings2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range_min = null;
      this.range_max = null;
      this.rotation_min = null;
      this.rotation_max = null;
      this.gain = null;
    }
    else {
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('rotation_min')) {
        this.rotation_min = initObj.rotation_min
      }
      else {
        this.rotation_min = 0.0;
      }
      if (initObj.hasOwnProperty('rotation_max')) {
        this.rotation_max = initObj.rotation_max
      }
      else {
        this.rotation_max = 0.0;
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
    // Serializes a message object of type SonarSettings2Request
    // Serialize message field [range_min]
    bufferOffset = _serializer.float64(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float64(obj.range_max, buffer, bufferOffset);
    // Serialize message field [rotation_min]
    bufferOffset = _serializer.float64(obj.rotation_min, buffer, bufferOffset);
    // Serialize message field [rotation_max]
    bufferOffset = _serializer.float64(obj.rotation_max, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.float64(obj.gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarSettings2Request
    let len;
    let data = new SonarSettings2Request(null);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotation_min]
    data.rotation_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rotation_max]
    data.rotation_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stonefish_mvp/SonarSettings2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfed8c2983058c6e85a18dcfe3512881';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 range_min
    float64 range_max
    float64 rotation_min
    float64 rotation_max
    float64 gain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarSettings2Request(null);
    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.rotation_min !== undefined) {
      resolved.rotation_min = msg.rotation_min;
    }
    else {
      resolved.rotation_min = 0.0
    }

    if (msg.rotation_max !== undefined) {
      resolved.rotation_max = msg.rotation_max;
    }
    else {
      resolved.rotation_max = 0.0
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

class SonarSettings2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarSettings2Response
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarSettings2Response
    let len;
    let data = new SonarSettings2Response(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stonefish_mvp/SonarSettings2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarSettings2Response(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SonarSettings2Request,
  Response: SonarSettings2Response,
  md5sum() { return '77368ba160f8f6dd31453146bbd4b728'; },
  datatype() { return 'stonefish_mvp/SonarSettings2'; }
};
