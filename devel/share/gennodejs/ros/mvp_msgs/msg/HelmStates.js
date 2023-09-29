// Auto-generated. Do not edit!

// (in-package mvp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HelmState = require('./HelmState.js');

//-----------------------------------------------------------

class HelmStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HelmStates
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = HelmState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HelmStates
    let len;
    let data = new HelmStates(null);
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = HelmState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.states.forEach((val) => {
      length += HelmState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/HelmStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fb91daf3e8086897a6eccc9f862d3a8';
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
    
    mvp_msgs/HelmState[] states
    ================================================================================
    MSG: mvp_msgs/HelmState
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
    
    string name
    string mode
    string[] transitions
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HelmStates(null);
    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = HelmState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = HelmStates;
