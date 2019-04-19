protrusionHeight = 12;
specialPawnHeight = 30.2 + .5;
specialPawnDiameter = 14.7 + .5;
yearTokenHeight = 19.76 + .5;
yearTokenDiameter = 16.7 + .5;



length = 50;
width = 50;
floorHeight = 3;
height = (specialPawnHeight - protrusionHeight) + floorHeight;
totalHeight = height + protrusionHeight;
echo(totalHeight);
magnetPadding = 15;
magnetBaseOuterDiameter = 18;
magnetBaseInnerDiameter = 15.4;
magnetHeight = 4.0;



wallThickness = 3;
lipThickness = 2;




//      30 cubes, 7.85-8.1 (use woodenCubeSide) cubed
//		2 cubes, 10 cubed
//		1 player token
//			orange
//				17.25 width, 18.8 tall, 10.0 thick
//			blue
//				19.7 width, 18.7 tall, 9.95 thick
//			purple
//				17.4 width, 19.5 tall, 10.0 tall
//			white
//				17.7 width, 19.05 tall, 9.8 thick
 
//    rotate([0,0,90])
   
    union() {    
    
        difference(){
            $fn=50;
            
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
            translate([
                wallThickness + specialPawnDiameter/2,
                wallThickness + specialPawnDiameter/2,
                height - (specialPawnHeight - protrusionHeight)])
                cylinder(specialPawnHeight - protrusionHeight, d=specialPawnDiameter);
            translate([
                length - (wallThickness + specialPawnDiameter/2),
                wallThickness + specialPawnDiameter/2,
                height - (specialPawnHeight - protrusionHeight)])
                cylinder(specialPawnHeight - protrusionHeight, d=specialPawnDiameter);
            translate([
                wallThickness + specialPawnDiameter/2,
                width - (wallThickness + specialPawnDiameter/2),
                height - (specialPawnHeight - protrusionHeight)])
                cylinder(specialPawnHeight - protrusionHeight, d=specialPawnDiameter); 
            translate([
                length - (wallThickness + yearTokenDiameter/2),
                width - (wallThickness + yearTokenDiameter/2),
                height - (yearTokenHeight - protrusionHeight)])
                cylinder(yearTokenHeight - protrusionHeight, d=yearTokenDiameter);     
        }
        difference() {
            translate([length/2, width/2, 0])
                cylinder(height + protrusionHeight, d=magnetBaseOuterDiameter);
            translate([length/2, width/2, height + protrusionHeight - magnetHeight])
                 cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        }
    }
    
    
    


