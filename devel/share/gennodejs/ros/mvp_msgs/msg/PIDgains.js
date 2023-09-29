// Auto-generated. Do not edit!

// (in-package mvp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PIDgains {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kp = null;
      this.ki = null;
      this.kd = null;
      this.k_i_max = null;
      this.k_i_min = null;
    }
    else {
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = 0.0;
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = 0.0;
      }
      if (initObj.hasOwnProperty('k_i_max')) {
        this.k_i_max = initObj.k_i_max
      }
      else {
        this.k_i_max = 0.0;
      }
      if (initObj.hasOwnProperty('k_i_min')) {
        this.k_i_min = initObj.k_i_min
      }
      else {
        this.k_i_min = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PIDgains
    // Serialize message field [kp]
    bufferOffset = _serializer.float64(obj.kp, buffer, bufferOffset);
    // Serialize message field [ki]
    bufferOffset = _serializer.float64(obj.ki, buffer, bufferOffset);
    // Serialize message field [kd]
    bufferOffset = _serializer.float64(obj.kd, buffer, bufferOffset);
    // Serialize message field [k_i_max]
    bufferOffset = _serializer.float64(obj.k_i_max, buffer, bufferOffset);
    // Serialize message field [k_i_min]
    bufferOffset = _serializer.float64(obj.k_i_min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PIDgains
    let len;
    let data = new PIDgains(null);
    // Deserialize message field [kp]
    data.kp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ki]
    data.ki = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kd]
    data.kd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_i_max]
    data.k_i_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_i_min]
    data.k_i_min = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/PIDgains';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64020c6ebba7ed9dc090c3163510a872';
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
    
    float64 kp
    float64 ki
    float64 kd
    float64 k_i_max
    float64 k_i_min
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PIDgains(null);
    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = 0.0
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = 0.0
    }

    if (msg.k_i_max !== undefined) {
      resolved.k_i_max = msg.k_i_max;
    }
    else {
      resolved.k_i_max = 0.0
    }

    if (msg.k_i_min !== undefined) {
      resolved.k_i_min = msg.k_i_min;
    }
    else {
      resolved.k_i_min = 0.0
    }

    return resolved;
    }
};

module.exports = PIDgains;
