/************************************************************************

    backplate.scad
    
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

module backplate_cross()
{
    move([0,-6.5,-17]) cuboid([14,90,4], chamfer=1, edges=EDGES_Z_ALL);
    move([0,-((99+4)/2) + 1,-11]) cuboid([14,2,8], chamfer=1, edges=EDGES_Z_ALL); 
}

// 22x16

module render_backplate(toPrint)
{
    move([+24,0,0]) backplate_cross();
    move([-24,0,0]) backplate_cross();

    move([0,44.5,-17]) cuboid([60,14,4], chamfer=1, edges=EDGES_Z_ALL);
    move([8,((99+4)/2) - 1,-13]) cuboid([30,2,8], chamfer=1, edges=EDGES_Z_ALL); 

    // Centre cross-member
    move([0,0,-17]) {
        difference() {
            cuboid([60,14,4], chamfer=1, edges=EDGES_Z_ALL);
            move([+6,0,0]) zcyl(h=6, d=3.5);
            move([-6,0,0]) zcyl(h=6, d=3.5);
            move([+6,0,5 - 2.5]) zcyl(h=6, d=6.5);
            move([-6,0,5 - 2.5]) zcyl(h=6, d=6.5);
        }
    }

    move([0,0,-2]) {
        // 4G Antenna mount
        move([-37,0,-6]) cuboid([2,116,22], chamfer=1, edges=EDGES_X_ALL);
        move([-32,28,-15]) cuboid([10,14,4]);
        move([-32,-28,-15]) cuboid([10,14,4]);

        // Side clip
        move([37,0,-12]) cuboid([2,14,8], chamfer=1, edges=EDGES_Z_ALL);
        move([33,0,-15]) cuboid([10,14,4], chamfer=1, edges=EDGES_Z_ALL);

        // GPS Antenna mount
        move([8,50.5 + 6,3]) cuboid([45,2,40], chamfer=1, edges=EDGES_Y_ALL);
        move([8,52,-15]) cuboid([30,10,4]);
        move([8,((99+4)/2) +2,-11]) cuboid([30,6,8]); 
    }
}