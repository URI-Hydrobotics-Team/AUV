// Auto-generated. Do not edit!

// (in-package mvp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControlMode = require('./ControlMode.js');

//-----------------------------------------------------------

class ControlModes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modes = null;
    }
    else {
      if (initObj.hasOwnProperty('modes')) {
        this.modes = initObj.modes
      }
      else {
        this.modes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlModes
    // Serialize message field [modes]
    // Serialize the length for message field [modes]
    bufferOffset = _serializer.uint32(obj.modes.length, buffer, bufferOffset);
    obj.modes.forEach((val) => {
      bufferOffset = ControlMode.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlModes
    let len;
    let data = new ControlModes(null);
    // Deserialize message field [modes]
    // Deserialize array length for message field [modes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.modes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.modes[i] = ControlMode.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.modes.forEach((val) => {
      length += ControlMode.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/ControlModes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '603519323f79819b7761d3e2017e75dd';
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
    
    mvp_msgs/ControlMode[] modes
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
    const resolved = new ControlModes(null);
    if (msg.modes !== undefined) {
      resolved.modes = new Array(msg.modes.length);
      for (let i = 0; i < resolved.modes.length; ++i) {
        resolved.modes[i] = ControlMode.Resolve(msg.modes[i]);
      }
    }
    else {
      resolved.modes = []
    }

    return resolved;
    }
};

module.exports = ControlModes;
