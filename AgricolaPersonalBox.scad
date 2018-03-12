length = 74;
width = 94;
height = 32;
magnetPadding = 15;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

houseBoxLength = 46;
houseBoxHeight = 13;
houseBoxWidth = 14.3;

wallThickness = 2;

fingerNotchSize = 11;

meepleBoxWidth = 51;
meepleBoxLength = 21;
meepleBoxHeight = 29;

cylinderDiameter = 15.8;
cylinderBoxLength = 24;

slotForWallsHeight =  26;
slotForWallsWidth = 34;
slotForWallsLength = 44;
//44 x 34 x 8 high

 

union()
{
    difference(){
        cube([length, width, height]);
        
        //houses 1 x 5, 57 long x houseBoxWidth wide x 13 high
        
        translate([wallThickness, wallThickness, height - (houseBoxHeight/2)])
            cube([houseBoxLength, fingerNotchSize, houseBoxHeight / 2]);
        
        translate([wallThickness, wallThickness + fingerNotchSize, height - houseBoxHeight])
            cube([houseBoxLength, houseBoxWidth, houseBoxHeight]);
        translate([wallThickness, wallThickness + fingerNotchSize + houseBoxWidth, height - (houseBoxHeight/2)])
            cube([houseBoxLength, fingerNotchSize, houseBoxHeight / 2]);
        
       
        
       
        
        //meeples x 3, 32 x 21 x 20 high
       translate([
            length - (meepleBoxLength + wallThickness),
            width/2 - (meepleBoxWidth + fingerNotchSize)/2,
            height - meepleBoxHeight])
            cube([meepleBoxLength, meepleBoxWidth, meepleBoxHeight]);
        
        translate([
            length - (meepleBoxLength + wallThickness),
            width/2 - (meepleBoxWidth + fingerNotchSize)/2 + meepleBoxWidth,
            height - (meepleBoxHeight/2)])
            cube([meepleBoxLength, fingerNotchSize, meepleBoxHeight/2]);
        
        translate([wallThickness, width - (wallThickness + slotForWallsLength - 12),height - slotForWallsHeight])
            cube([slotForWallsLength,slotForWallsWidth, slotForWallsHeight]);
        
        

        //magnet
        translate([
            length/2,
            width/2,
            height - magnetHeight])
            cylinder(magnetHeight, d=magnetBaseInnerDiameter);

    }
    translate([wallThickness + slotForWallsLength, width - (wallThickness + slotForWallsLength - 12), height - slotForWallsHeight])
        rotate([0,0,90])
            difference()
            
            {
                rotate([90,0,90])
                    import("D:\\code\\git\\3DPrint\\Original Agricola Border Tray.stl");
                translate([0, 0, 26])
                    cube([34, 44, 8]);
            }
        
}
    