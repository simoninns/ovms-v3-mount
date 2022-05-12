/************************************************************************

    main.scad
    
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

// Local includes
include <ovms.scad>
include <backplate.scad>
include <cableholder.scad>

// Rendering resolution
$fn=50;

// Select rendering parameters
display = "Assembled"; // [Assembled, Printing]

// Select what to render:
display_ovms = "No"; // [Yes, No]
display_backplate = "No"; // [Yes, No]
display_cableholder = "No"; // [Yes, No]

// Render the required items
module main()
{
    toPrint = (display == "Printing") ? true:false;

    // Display selections
    d_ovms = (display_ovms == "Yes") ? true:false;
    d_backplate = (display_backplate == "Yes") ? true:false;
    d_cableholder = (display_cableholder == "Yes") ? true:false;

    // Invoke rendering modules
    if (d_ovms) render_ovms(toPrint);
    if (d_backplate) render_backplate(toPrint);
    if (d_cableholder) render_cableholder(toPrint);
}

main();
