/************************************************************************

    cableholder.scad
    
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

module cableholder()
{   
    move([0,0,-29]) {
        difference() {
            union() {
                cuboid([38,60,20], fillet=14, edges=EDGES_Z_ALL);
                move([0,0,-9]) cuboid([70,94,2], chamfer=1, edges=EDGES_Z_ALL);
            }
            cuboid([38-4,60-4,22], fillet=12, edges=EDGES_Z_ALL);
        }

        move([0,0,5]) {
            move([18,0,7]) cuboid([2,10,4]);
            move([-18,0,7]) cuboid([2,10,4]);

            move([+17,0,8.25]) yrot(45) cuboid([1,10,1]);
            move([-17,0,8.25]) yrot(45) cuboid([1,10,1]);
        }
    }
}

module render_cableholder(toPrint)
{
    if (toPrint) move([0,0,39]) cableholder();   
    else cableholder();
}