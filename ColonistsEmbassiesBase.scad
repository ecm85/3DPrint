include<ColonistsBuildingsLib.scad>

length = 100;
width = 100;

height = 3;


magnetHoleWidth = 19;
floorThickness = 3;
maxBuildingsPerStack = 4;
singleLayerHeight = buildingPileHeight(maxBuildingsPerStack) + floorThickness;
pillarHeight = (singleLayerHeight * 3)+ .5 + height;
echo (pillarHeight);

//Based on magnet size:
pillarSideLength = 18;
pillarSideOffset = .5;

magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;

spaceBetweenCircles = 2;


difference() {
union(){
    cube([length, width, height]);


//----------------------------------


            
//---------------------------------------------------------------------
    
          

//----------------------------------------
   
    translate([length/2 - ((pillarSideLength)/2), width/2 - ((pillarSideLength)/2), 0])
        cube([pillarSideLength, pillarSideLength, pillarHeight]);
        

}
    translate([length/2,  width/2, pillarHeight - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);

}

