length = 112; 
width = 65;
height = 10;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 3.2;




coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
twentyCoinDiameter = 30.2 + 1;
tenCoinDiameter = 26.2 + 1;
fiveCoinDiameter = 24.1 + 1;
threeCoinDiameter = 22.1 + 1;
twoCoinDiameter = 20.9 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 2;

difference(){
    cube([length, width, height]);

    translate([fiftyCoinDiameter/2 + spaceBetweenCircles, fiftyCoinDiameter/2 - coinOffset, floorThickness])
        cylinder(height - floorThickness, d=fiftyCoinDiameter);

    translate([fiftyCoinDiameter + fiveCoinDiameter/2 + spaceBetweenCircles * 2, fiveCoinDiameter/2 - coinOffset, floorThickness])
        cylinder(height - floorThickness, d=fiveCoinDiameter);
    
    translate([fiftyCoinDiameter + fiveCoinDiameter + twoCoinDiameter/2 + spaceBetweenCircles * 3, twoCoinDiameter/2 - coinOffset, floorThickness])
        cylinder(height - floorThickness, d=twoCoinDiameter);
    
    translate([fiftyCoinDiameter + fiveCoinDiameter + twoCoinDiameter + oneCoinDiameter/2 + spaceBetweenCircles * 4, oneCoinDiameter/2 - coinOffset, floorThickness])
        cylinder(height - floorThickness, d=oneCoinDiameter);
  
    
    translate([oneCoinDiameter/2 + spaceBetweenCircles, width - (oneCoinDiameter/2 - coinOffset), floorThickness])
        cylinder(height - floorThickness, d=oneCoinDiameter);
    
    translate([oneCoinDiameter + threeCoinDiameter/2 + spaceBetweenCircles * 2, width - (threeCoinDiameter/2 - coinOffset), floorThickness])
        cylinder(height - floorThickness, d=threeCoinDiameter);
    
    translate([oneCoinDiameter + threeCoinDiameter + tenCoinDiameter/2 + spaceBetweenCircles * 3, width - (tenCoinDiameter/2 - coinOffset), floorThickness])
        cylinder(height - floorThickness, d=tenCoinDiameter);
        
        translate([oneCoinDiameter + threeCoinDiameter + tenCoinDiameter + twentyCoinDiameter/2 + spaceBetweenCircles * 4, width - (twentyCoinDiameter/2 - coinOffset), floorThickness])
        cylinder(height - floorThickness, d=twentyCoinDiameter);

//    translate([length /2 - (smallCircleDiameter/2 + spaceBetweenCircles / 2), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
//        cylinder(height - floorThickness, d=smallCircleDiameter);
//    
//    translate([length /2 + (smallCircleDiameter/2 + spaceBetweenCircles / 2), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
//        cylinder(height - floorThickness, d=smallCircleDiameter);
//    
//    translate([length - (smallCircleDiameter/2 + spaceBetweenCircles), width - (smallCircleDiameter/2 - smallCircleOffset), floorThickness])
//        cylinder(height - floorThickness, d=smallCircleDiameter);
//    
    

//
//    translate([largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset, width/2, floorThickness])
//        cylinder(height - floorThickness, d=largeCircleDiameter);
//
//    translate([length - (largeCircleDiameter/2 + spaceBetweenCircles - largeCircleOffset), width/2, floorThickness])
//        cylinder(height - floorThickness, d=largeCircleDiameter);
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

