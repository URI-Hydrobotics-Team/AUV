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

let ControlMode = require('../msg/ControlMode.js');

//-----------------------------------------------------------

class GetControlModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetControlModeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetControlModeRequest
    let len;
    let data = new GetControlModeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mvp_msgs/GetControlModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetControlModeRequest(null);
    return resolved;
    }
};

class GetControlModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = new ControlMode();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetControlModeResponse
    // Serialize message field [mode]
    bufferOffset = ControlMode.serialize(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetControlModeResponse
    let len;
    let data = new GetControlModeResponse(null);
    // Deserialize message field [mode]
    data.mode = ControlMode.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ControlMode.getMessageSize(object.mode);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mvp_msgs/GetControlModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb5640b19687f4d5df9afe0ad9c910ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mvp_msgs/ControlMode mode
    
    ================================================================================
    MSG: mvp_msgs/ControlMode
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
    
    int32 DOF_X          = 0
    int32 DOF_Y          = 1
    int32 DOF_Z          = 2
    int32 DOF_ROLL       = 3
    int32 DOF_PITCH      = 4
    int32 DOF_YAW        = 5
    int32 DOF_SURGE      = 6
    int32 DOF_SWAY       = 7
    int32 DOF_HEAVE      = 8
    int32 DOF_ROLL_RATE  = 9
    int32 DOF_PITCH_RATE = 10
    int32 DOF_YAW_RATE   = 11
    
    string name
    int32[] dofs
    
    mvp_msgs/PIDgains pid_x
    mvp_msgs/PIDgains pid_y
    mvp_msgs/PIDgains pid_z
    
    mvp_msgs/PIDgains pid_roll
    mvp_msgs/PIDgains pid_pitch
    mvp_msgs/PIDgains pid_yaw
    
    mvp_msgs/PIDgains pid_surge
    mvp_msgs/PIDgains pid_sway
    mvp_msgs/PIDgains pid_heave
    
    mvp_msgs/PIDgains pid_roll_rate
    mvp_msgs/PIDgains pid_pitch_rate
    mvp_msgs/PIDgains pid_yaw_rate
    ================================================================================
    MSG: mvp_msgs/PIDgains
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
    const resolved = new GetControlModeResponse(null);
    if (msg.mode !== undefined) {
      resolved.mode = ControlMode.Resolve(msg.mode)
    }
    else {
      resolved.mode = new ControlMode()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetControlModeRequest,
  Response: GetControlModeResponse,
  md5sum() { return 'fb5640b19687f4d5df9afe0ad9c910ef'; },
  datatype() { return 'mvp_msgs/GetControlMode'; }
};
