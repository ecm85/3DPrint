woodenCubeWidth = 10.4 + .1;
woodenCubeLength = 9.05 + .3;
//TODO: !!!!!!!!!!!!!!!!!Fix this
woodenCubeHeight = 17.93 + .2; 

protrusionHeight = 9;

length = 50;
width = 90;
floorHeight = 3;
height = (woodenCubeHeight - protrusionHeight) + floorHeight;
totalHeight = height + protrusionHeight;
magnetPadding = 15;
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

woodenCubeBoxHeight = woodenCubeHeight - protrusionHeight;
woodenCubeBoxLength = woodenCubeLength;

wallThickness = 3;
lipThickness = 2;

woodenCubeCount = 8;
shortWoodenCubeCount = 2;
woodenCubeBoxWidth = woodenCubeWidth * woodenCubeCount + .5;
shortWoodenCubeBoxWidth = woodenCubeWidth * shortWoodenCubeCount + .5;

union() {    
    difference() {    
                $fn=50;
            difference(){
                translate([-lipThickness, -lipThickness, 0])
                    minkowski()
                    {
                        cube([length + lipThickness * 2, width + lipThickness * 2, totalHeight]);
                        cylinder(r=2,h=1);
                    }
                    
                translate([0, 0, height])
                    minkowski()
                    {
                        cube([length, width, totalHeight - height]);
                        cylinder(r=2,h=1);
                    }
                
                translate([wallThickness, wallThickness, 0])
                    WoodenCubeBox();
//                translate([wallThickness * 2 + woodenCubeLength, wallThickness, 0])
//                    WoodenCubeBox();
//                translate([wallThickness * 3 + woodenCubeLength * 2, wallThickness, 0])
//                    WoodenCubeBox();
                
                translate([length - (wallThickness + woodenCubeLength), wallThickness, 0])
                    WoodenCubeBox();
//                translate([length - (wallThickness * 2 + woodenCubeLength * 2), wallThickness, 0])
//                    WoodenCubeBox();
//                translate([length - (wallThickness * 3 + woodenCubeLength * 3), wallThickness, 0])
//                    WoodenCubeBox();
                
                translate([length/2 - woodenCubeLength/2, wallThickness, 0])
                    ShortWoodenCubeBox();
                translate([length/2 - woodenCubeLength/2, width - (wallThickness + shortWoodenCubeBoxWidth), 0])
                    ShortWoodenCubeBox();
            }

    }
    difference() {
        translate([length/2, width/2, 0])
            cylinder(height + protrusionHeight, d=magnetBaseOuterDiameter);
        translate([length/2, width/2, height + protrusionHeight - magnetHeight])
             cylinder(magnetHeight, d=magnetBaseInnerDiameter);
    }
}
    
    

module WoodenCubeBox()
{

    translate([0, 0, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);

}


module ShortWoodenCubeBox()
{

    translate([0, 0, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, shortWoodenCubeBoxWidth, woodenCubeBoxHeight]);

}

