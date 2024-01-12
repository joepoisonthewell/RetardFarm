﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include "common/socket.h"

#include "char_equip.h"

CEquipPacket::CEquipPacket(uint8 EquipSlot, uint8 SlotID, uint8 containerID)
{
    this->setType(0x50);
    this->setSize(0x08);

    ref<uint8>(0x04) = EquipSlot;
    ref<uint8>(0x05) = SlotID;
    ref<uint8>(0x06) = containerID;
}