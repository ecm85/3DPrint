length = 47; 
width = 56;
//height = 24;
height = 25;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.2;

//fiftyCoinHeight = 16.4 + .5;
fiftyCoinHeight = 17.2 + .5;
//fiftyCoinHeight = 17.8 + .5;

//oneCoinSecondHeight = 20.3 + .5;
oneCoinSecondHeight = 21.4 + .5;
//oneCoinSecondHeight = 22.1 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 25 + 1;
oneCoinDiameter = 20.2 + 1;

spaceBetweenCircles = 1.5;

difference(){
    cube([length, width, height]);

    translate([length/2, fiftyCoinDiameter/2 - coinOffset, height - fiftyCoinHeight])
        cylinder(fiftyCoinHeight, d=fiftyCoinDiameter);

    
  
    
    translate([oneCoinDiameter/2 + spaceBetweenCircles, width - (oneCoinDiameter/2 - coinOffset), height - oneCoinSecondHeight])
        cylinder(oneCoinSecondHeight, d=oneCoinDiameter);
    
    translate([length - (oneCoinDiameter/2 + spaceBetweenCircles), width - (oneCoinDiameter/2 - coinOffset), height - oneCoinSecondHeight])
        cylinder(oneCoinSecondHeight, d=oneCoinDiameter);

  
    translate([length/2, width/2 + 4, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

