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