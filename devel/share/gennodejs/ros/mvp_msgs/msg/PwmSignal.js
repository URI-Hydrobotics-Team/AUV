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

class PwmSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal = null;
      this.channel = null;
    }
    else {
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = new std_msgs.msg.Int16();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PwmSignal
    // Serialize message field [signal]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.signal, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = std_msgs.msg.Int16.serialize(obj.channel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PwmSignal
    let len;
    let data = new PwmSignal(null);
    // Deserialize message field [signal]
    data.signal = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = std_msgs.msg.Int16.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/PwmSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '991ddd8c160299aa4b755054be922e8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    #   This file is part of MVP-Mission program.
    #
    #   MVP-Mission is free software: you can redistribute it and/or modify
    #   it under the terms of the GNU General Public License as published by
    #   the Free Software Foundation, either version 3 of the License, or
    #   (at your option) any later version.
    #
    #   MVP-Mission is distributed in the hope that it will be useful,
    #   but WITHOUT ANY WARRANTY; without even the implied warranty of
    #   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    #   GNU General Public License for more details.
    #
    #   You should have received a copy of the GNU General Public License
    #   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.
    #
    #   Author: Emir Cem Gezer
    #   Email: emircem@uri.edu;emircem.gezer@gmail.com
    #   Year: 2022
    #
    #   Copyright (C) 2022 Smart Ocean Systems Laboratory
    #
    
    std_msgs/Float32 signal
    std_msgs/Int16 channel
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: std_msgs/Int16
    int16 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PwmSignal(null);
    if (msg.signal !== undefined) {
      resolved.signal = std_msgs.msg.Float32.Resolve(msg.signal)
    }
    else {
      resolved.signal = new std_msgs.msg.Float32()
    }

    if (msg.channel !== undefined) {
      resolved.channel = std_msgs.msg.Int16.Resolve(msg.channel)
    }
    else {
      resolved.channel = new std_msgs.msg.Int16()
    }

    return resolved;
    }
};

module.exports = PwmSignal;
