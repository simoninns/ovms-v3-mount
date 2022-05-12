/************************************************************************

    ovms.scad
    
    OVMS V3 Mount for the Renault Twizy
    Copyright (C) 2022 Simon Inns
    
    This is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
    Email: simon.inns@gmail.com
    
************************************************************************/

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>

module render_ovms(toPrint)
{
    // This rendering is just for CAD assistance - not printing
    if (!toPrint) {
        difference() {
            cuboid([72,99,30], chamfer=3);

            // Label recess
            move([0,0,-15.5]) cuboid([30,60,2]);
        }

        // Antenna and GPS connectors
        move([-30 + 11,0,0]) {
            move([-5.5,-53.5,0]) ycyl(h=8, d=6.5);
            move([+5.5,-53.5,0]) ycyl(h=8, d=6.5);
        }
    }
}