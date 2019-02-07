length = 111; 
width = 69;
height = 34;

floorThickness = 3;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.2;

fiftyCoinHeight = 16.7 + .5;
twentyCoinHeight = 19.2 + .5;
tenCoinHeight = 28.2 + .5;
fiveCoinHeight = 29.1 + .5;
threeCoinHeight = 29.2 + .5;
twoCoinHeight = 28.8 + .5;
oneCoinFirstHeight = 23.3 + .5;
oneCoinSecondHeight = 25.2 + .5;


coinOffset = 2.5;
fiftyCoinDiameter = 34.1 + 1;
twentyCoinDiameter = 30.2 + 1;
tenCoinDiameter = 26.2 + 1;
fiveCoinDiameter = 24.1 + 1;
threeCoinDiameter = 22.1 + 1;
twoCoinDiameter = 20.9 + 1;
oneCoinDiameter = 20.1 + 1;

spaceBetweenCircles = 1.5;

difference(){
    cube([length, width, height]);

    translate([fiftyCoinDiameter/2 + spaceBetweenCircles, fiftyCoinDiameter/2 - coinOffset, height - fiftyCoinHeight])
        cylinder(fiftyCoinHeight, d=fiftyCoinDiameter);

    translate([fiftyCoinDiameter + fiveCoinDiameter/2 + spaceBetweenCircles * 2, fiveCoinDiameter/2 - coinOffset, height - fiveCoinHeight])
        cylinder(fiveCoinHeight, d=fiveCoinDiameter);
    
    translate([fiftyCoinDiameter + fiveCoinDiameter + twoCoinDiameter/2 + spaceBetweenCircles * 3, twoCoinDiameter/2 - coinOffset, height - twoCoinHeight])
        cylinder(twoCoinHeight, d=twoCoinDiameter);
    
    translate([fiftyCoinDiameter + fiveCoinDiameter + twoCoinDiameter + oneCoinDiameter/2 + spaceBetweenCircles * 4, oneCoinDiameter/2 - coinOffset, height - oneCoinFirstHeight])
        cylinder(oneCoinFirstHeight, d=oneCoinDiameter);
  
    
    translate([oneCoinDiameter/2 + spaceBetweenCircles, width - (oneCoinDiameter/2 - coinOffset), height - oneCoinSecondHeight])
        cylinder(oneCoinSecondHeight, d=oneCoinDiameter);
    
    translate([oneCoinDiameter + threeCoinDiameter/2 + spaceBetweenCircles * 2, width - (threeCoinDiameter/2 - coinOffset), height - threeCoinHeight])
        cylinder(threeCoinHeight, d=threeCoinDiameter);
    
    translate([oneCoinDiameter + threeCoinDiameter + tenCoinDiameter/2 + spaceBetweenCircles * 3, width - (tenCoinDiameter/2 - coinOffset), height - tenCoinHeight])
        cylinder(tenCoinHeight, d=tenCoinDiameter);
        
        translate([oneCoinDiameter + threeCoinDiameter + tenCoinDiameter + twentyCoinDiameter/2 + spaceBetweenCircles * 4, width - (twentyCoinDiameter/2 - coinOffset), height - twentyCoinHeight])
        cylinder(twentyCoinHeight, d=twentyCoinDiameter);

        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    translate([(1 * length/6), width/2 + 8, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        
    translate([5 * length/6, width/2 - 8, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
}

