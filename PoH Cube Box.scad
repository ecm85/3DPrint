largeWoodenCubeSide = 10.2 + .5;
woodenCubeSide = 8.2 + .5;
protrusionHeight = 6;

length = 110;
width = 90;
floorHeight = 3;
height = (largeWoodenCubeSide - protrusionHeight) + floorHeight;
totalHeight = height + protrusionHeight;
magnetPadding = 15;
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

woodenCubeBoxHeight = woodenCubeSide - protrusionHeight;
woodenCubeBoxLength = woodenCubeSide;


largeWoodenCubeBoxHeight = largeWoodenCubeSide - protrusionHeight;
largeWoodenCubeBoxWidth = largeWoodenCubeSide;

wallThickness = 6;
lipThickness = 2;

woodenCubeCount = 8;
largeWoodenCubeCount = 1;
woodenCubeBoxWidth = woodenCubeSide * woodenCubeCount + .5;
longWoodenCubeBoxWidth = woodenCubeSide * (woodenCubeCount + 1) + .5;
largeWoodenCubeBoxLength = largeWoodenCubeSide * largeWoodenCubeCount + .5;

union() {    
    difference() {    
        
            difference(){
                translate([-lipThickness, -lipThickness, 0])
                    cube([length + lipThickness * 2, width + lipThickness * 2, totalHeight]);
                translate([0, 0, height])
                    cube([length, width, totalHeight - height]);
                
                translate([wallThickness, wallThickness, 0])
                    WoodenCubeBox();
                translate([wallThickness * 2 + woodenCubeSide, wallThickness, 0])
                    LongWoodenCubeBox();
                translate([wallThickness * 3 + woodenCubeSide * 2, wallThickness, 0])
                    WoodenCubeBox();
                
                translate([length - (wallThickness + woodenCubeSide), wallThickness, 0])
                    WoodenCubeBox();
                translate([length - (wallThickness * 2 + woodenCubeSide * 2), wallThickness, 0])
                    LongWoodenCubeBox();
                translate([length - (wallThickness * 3 + woodenCubeSide * 3), wallThickness, 0])
                    WoodenCubeBox();
                
                translate([length/2 - largeWoodenCubeSide/2, wallThickness, 0])
                    LargeWoodenCubeBox();
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

module LongWoodenCubeBox()
{

    translate([0, 0, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, longWoodenCubeBoxWidth, woodenCubeBoxHeight]);

}

module LargeWoodenCubeBox()
{

    translate([0, 0, height - largeWoodenCubeBoxHeight])
        cube([largeWoodenCubeBoxLength, largeWoodenCubeBoxWidth, largeWoodenCubeBoxHeight]);

}

