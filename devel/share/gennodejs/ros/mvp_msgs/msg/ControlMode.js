// Auto-generated. Do not edit!

// (in-package mvp_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PIDgains = require('./PIDgains.js');

//-----------------------------------------------------------

class ControlMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.dofs = null;
      this.pid_x = null;
      this.pid_y = null;
      this.pid_z = null;
      this.pid_roll = null;
      this.pid_pitch = null;
      this.pid_yaw = null;
      this.pid_surge = null;
      this.pid_sway = null;
      this.pid_heave = null;
      this.pid_roll_rate = null;
      this.pid_pitch_rate = null;
      this.pid_yaw_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('dofs')) {
        this.dofs = initObj.dofs
      }
      else {
        this.dofs = [];
      }
      if (initObj.hasOwnProperty('pid_x')) {
        this.pid_x = initObj.pid_x
      }
      else {
        this.pid_x = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_y')) {
        this.pid_y = initObj.pid_y
      }
      else {
        this.pid_y = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_z')) {
        this.pid_z = initObj.pid_z
      }
      else {
        this.pid_z = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_roll')) {
        this.pid_roll = initObj.pid_roll
      }
      else {
        this.pid_roll = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_pitch')) {
        this.pid_pitch = initObj.pid_pitch
      }
      else {
        this.pid_pitch = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_yaw')) {
        this.pid_yaw = initObj.pid_yaw
      }
      else {
        this.pid_yaw = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_surge')) {
        this.pid_surge = initObj.pid_surge
      }
      else {
        this.pid_surge = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_sway')) {
        this.pid_sway = initObj.pid_sway
      }
      else {
        this.pid_sway = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_heave')) {
        this.pid_heave = initObj.pid_heave
      }
      else {
        this.pid_heave = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_roll_rate')) {
        this.pid_roll_rate = initObj.pid_roll_rate
      }
      else {
        this.pid_roll_rate = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_pitch_rate')) {
        this.pid_pitch_rate = initObj.pid_pitch_rate
      }
      else {
        this.pid_pitch_rate = new PIDgains();
      }
      if (initObj.hasOwnProperty('pid_yaw_rate')) {
        this.pid_yaw_rate = initObj.pid_yaw_rate
      }
      else {
        this.pid_yaw_rate = new PIDgains();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlMode
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [dofs]
    bufferOffset = _arraySerializer.int32(obj.dofs, buffer, bufferOffset, null);
    // Serialize message field [pid_x]
    bufferOffset = PIDgains.serialize(obj.pid_x, buffer, bufferOffset);
    // Serialize message field [pid_y]
    bufferOffset = PIDgains.serialize(obj.pid_y, buffer, bufferOffset);
    // Serialize message field [pid_z]
    bufferOffset = PIDgains.serialize(obj.pid_z, buffer, bufferOffset);
    // Serialize message field [pid_roll]
    bufferOffset = PIDgains.serialize(obj.pid_roll, buffer, bufferOffset);
    // Serialize message field [pid_pitch]
    bufferOffset = PIDgains.serialize(obj.pid_pitch, buffer, bufferOffset);
    // Serialize message field [pid_yaw]
    bufferOffset = PIDgains.serialize(obj.pid_yaw, buffer, bufferOffset);
    // Serialize message field [pid_surge]
    bufferOffset = PIDgains.serialize(obj.pid_surge, buffer, bufferOffset);
    // Serialize message field [pid_sway]
    bufferOffset = PIDgains.serialize(obj.pid_sway, buffer, bufferOffset);
    // Serialize message field [pid_heave]
    bufferOffset = PIDgains.serialize(obj.pid_heave, buffer, bufferOffset);
    // Serialize message field [pid_roll_rate]
    bufferOffset = PIDgains.serialize(obj.pid_roll_rate, buffer, bufferOffset);
    // Serialize message field [pid_pitch_rate]
    bufferOffset = PIDgains.serialize(obj.pid_pitch_rate, buffer, bufferOffset);
    // Serialize message field [pid_yaw_rate]
    bufferOffset = PIDgains.serialize(obj.pid_yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlMode
    let len;
    let data = new ControlMode(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dofs]
    data.dofs = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_x]
    data.pid_x = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_y]
    data.pid_y = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_z]
    data.pid_z = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_roll]
    data.pid_roll = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_pitch]
    data.pid_pitch = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_yaw]
    data.pid_yaw = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_surge]
    data.pid_surge = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_sway]
    data.pid_sway = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_heave]
    data.pid_heave = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_roll_rate]
    data.pid_roll_rate = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_pitch_rate]
    data.pid_pitch_rate = PIDgains.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid_yaw_rate]
    data.pid_yaw_rate = PIDgains.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += 4 * object.dofs.length;
    return length + 488;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mvp_msgs/ControlMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d6ffb9dbcb11283ec4e54683a5c1e8d';
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
    const resolved = new ControlMode(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.dofs !== undefined) {
      resolved.dofs = msg.dofs;
    }
    else {
      resolved.dofs = []
    }

    if (msg.pid_x !== undefined) {
      resolved.pid_x = PIDgains.Resolve(msg.pid_x)
    }
    else {
      resolved.pid_x = new PIDgains()
    }

    if (msg.pid_y !== undefined) {
      resolved.pid_y = PIDgains.Resolve(msg.pid_y)
    }
    else {
      resolved.pid_y = new PIDgains()
    }

    if (msg.pid_z !== undefined) {
      resolved.pid_z = PIDgains.Resolve(msg.pid_z)
    }
    else {
      resolved.pid_z = new PIDgains()
    }

    if (msg.pid_roll !== undefined) {
      resolved.pid_roll = PIDgains.Resolve(msg.pid_roll)
    }
    else {
      resolved.pid_roll = new PIDgains()
    }

    if (msg.pid_pitch !== undefined) {
      resolved.pid_pitch = PIDgains.Resolve(msg.pid_pitch)
    }
    else {
      resolved.pid_pitch = new PIDgains()
    }

    if (msg.pid_yaw !== undefined) {
      resolved.pid_yaw = PIDgains.Resolve(msg.pid_yaw)
    }
    else {
      resolved.pid_yaw = new PIDgains()
    }

    if (msg.pid_surge !== undefined) {
      resolved.pid_surge = PIDgains.Resolve(msg.pid_surge)
    }
    else {
      resolved.pid_surge = new PIDgains()
    }

    if (msg.pid_sway !== undefined) {
      resolved.pid_sway = PIDgains.Resolve(msg.pid_sway)
    }
    else {
      resolved.pid_sway = new PIDgains()
    }

    if (msg.pid_heave !== undefined) {
      resolved.pid_heave = PIDgains.Resolve(msg.pid_heave)
    }
    else {
      resolved.pid_heave = new PIDgains()
    }

    if (msg.pid_roll_rate !== undefined) {
      resolved.pid_roll_rate = PIDgains.Resolve(msg.pid_roll_rate)
    }
    else {
      resolved.pid_roll_rate = new PIDgains()
    }

    if (msg.pid_pitch_rate !== undefined) {
      resolved.pid_pitch_rate = PIDgains.Resolve(msg.pid_pitch_rate)
    }
    else {
      resolved.pid_pitch_rate = new PIDgains()
    }

    if (msg.pid_yaw_rate !== undefined) {
      resolved.pid_yaw_rate = PIDgains.Resolve(msg.pid_yaw_rate)
    }
    else {
      resolved.pid_yaw_rate = new PIDgains()
    }

    return resolved;
    }
};

// Constants for message
ControlMode.Constants = {
  DOF_X: 0,
  DOF_Y: 1,
  DOF_Z: 2,
  DOF_ROLL: 3,
  DOF_PITCH: 4,
  DOF_YAW: 5,
  DOF_SURGE: 6,
  DOF_SWAY: 7,
  DOF_HEAVE: 8,
  DOF_ROLL_RATE: 9,
  DOF_PITCH_RATE: 10,
  DOF_YAW_RATE: 11,
}

module.exports = ControlMode;
