// Auto-generated. Do not edit!

// (in-package mvp_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let HelmState = require('../msg/HelmState.js');

//-----------------------------------------------------------

class ChangeStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeStateRequest
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeStateRequest
    let len;
    let data = new ChangeStateRequest(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mvp_msgs/ChangeStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af6d3a99f0fbeb66d3248fa4b3e675fb';
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
    
    string state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

class ChangeStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new HelmState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeStateResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = HelmState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeStateResponse
    let len;
    let data = new ChangeStateResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = HelmState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HelmState.getMessageSize(object.state);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mvp_msgs/ChangeStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e231daf675af5b403dc1dce27d3684a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    mvp_msgs/HelmState state
    
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
    const resolved = new ChangeStateResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    if (msg.state !== undefined) {
      resolved.state = HelmState.Resolve(msg.state)
    }
    else {
      resolved.state = new HelmState()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeStateRequest,
  Response: ChangeStateResponse,
  md5sum() { return '6fc3cc8eedce7a52d2a746bc3e0301b9'; },
  datatype() { return 'mvp_msgs/ChangeState'; }
};
