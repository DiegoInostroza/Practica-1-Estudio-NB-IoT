#!/usr/bin/awk -f
#
# Copyright (c) 2018 TELEMATICS LAB, Politecnico di Bari
#
# This file is part of 5G-air-simulator
#
# 5G-air-simulator is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 as
# published by the Free Software Foundation;
#
# 5G-air-simulator is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with 5G-air-simulator; if not, see <http://www.gnu.org/licenses/>.
#
# Author: Alessandro Grassi <alessandro.grassi@poliba.it>
#


/^RX/ {
    delay += $14
    total_packets += 1

}

END{
	print delay/total_packets
}
