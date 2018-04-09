length = 110;
width = 80;
height = 14;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;



woodenCubeSide = 10.2 + .5;
woodenCubeBoxHeight = woodenCubeSide;
woodenCubeBoxWidth = woodenCubeSide;

wallThickness = 2;

fingerNotchSize = 11;
woodenCubeCount = 4;
woodenCubeBoxLength = woodenCubeSide * woodenCubeCount + .5;

shortWoodenCubeCount = 3;
shortWoodenCubeBoxLength = woodenCubeSide * shortWoodenCubeCount + .5;

        
        

    difference(){
        cube([length, width, height]);  
        translate([wallThickness, wallThickness, 0])
            WoodenCubeBoxes();
        translate([length - (wallThickness + woodenCubeBoxLength), wallThickness, 0])
            WoodenCubeBoxes();

        //magnet
        translate([
            length/2,
            width/2,
            height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);


    }
    
module WoodenCubeBoxes()
{
    translate([0,0, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize + woodenCubeSide, 0])
    {
        WoodenCubeBox();
    }
    translate([0,fingerNotchSize * 2 + woodenCubeSide * 2, 0])
    {
        ShortWoodenCubeBox();
    }
}

module WoodenCubeBox()
{
    translate([0, 0, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - woodenCubeBoxHeight])
        cube([woodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + woodenCubeBoxWidth, height - (woodenCubeBoxHeight/2)])
        cube([woodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
}

module ShortWoodenCubeBox()
{
    translate([0, 0, height - (woodenCubeBoxHeight/2)])
        cube([shortWoodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
    translate([0, 0 + fingerNotchSize, height - woodenCubeBoxHeight])
        cube([shortWoodenCubeBoxLength, woodenCubeBoxWidth, woodenCubeBoxHeight]);
    translate([0, 0 + fingerNotchSize + woodenCubeBoxWidth, height - (woodenCubeBoxHeight/2)])
        cube([shortWoodenCubeBoxLength, fingerNotchSize, woodenCubeBoxHeight / 2]);
}

