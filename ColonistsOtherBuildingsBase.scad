include<ColonistsBuildingsLib.scad>

length = 110;
width = 110;

height = 3;


magnetHoleWidth = 19;
floorThickness = 3;
maxBuildingsPerStack1 = 13;
maxBuildingsPerStack2 = 10;
maxBuildingsPerStack3 = 8;
singleLayerHeight1 = buildingPileHeight(maxBuildingsPerStack1) + floorThickness;
singleLayerHeight2 = buildingPileHeight(maxBuildingsPerStack2) + floorThickness;
singleLayerHeight3 = buildingPileHeight(maxBuildingsPerStack3) + floorThickness;
pillarHeight = (singleLayerHeight1 + singleLayerHeight2 + singleLayerHeight3)+ .5 + height;
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

