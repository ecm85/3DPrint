personalPawnHeight = 26.72 + .5;
personalPawnDiameter = 16.19 + .5;
protrusionHeight = 15;



length = 25;
width = 25;floorHeight = 3;
height = (personalPawnHeight - protrusionHeight) + floorHeight;
totalHeight = height + protrusionHeight;
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
                
           
            translate([
                length/2,
                width/2,
                height - (personalPawnHeight - protrusionHeight)])
                cylinder(personalPawnHeight, d=personalPawnDiameter);
               
        }
        
    }
    
    
    


