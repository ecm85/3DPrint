length = 63;
width = 70;
height = 27;

floorThickness = 3;


//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 16.2;
magnetHeight = 3.2;

smallSquareSide = 16;
largeSquareSide = 21;

difference(){
    cube([length, width, height]);

        translate([3, 3, floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([-5, 3 + (5/2), 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
    
    
        translate([3, width/2 - (smallSquareSide/2), floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([-5, width/2 - (smallSquareSide/2) + (5/2), 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
    
    
        translate([3, width - (3 + smallSquareSide), floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([-5, width - (3 + smallSquareSide) + (5/2), 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
    
        
    
    
        translate([length - (3  + smallSquareSide), 3, floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([length - (smallSquareSide - 5 - 5), 3 + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
    
        translate([length - (3  + smallSquareSide), (width/2) - (smallSquareSide/2), floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([length - (smallSquareSide - 5 - 5), (width/2) - (smallSquareSide/2) + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        translate([length - (3  + smallSquareSide), width - (3 + smallSquareSide), floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([length - (smallSquareSide - 5 - 5), width - (3 + smallSquareSide) + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        
        
        translate([length/2 - (smallSquareSide/2), 3, floorThickness])
            cube([smallSquareSide,smallSquareSide, height - floorThickness]);
        translate([length/2 - (smallSquareSide/2) + 5/2, -5, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        translate([length/2 - (largeSquareSide/2), width - (3 + largeSquareSide), floorThickness])
            cube([largeSquareSide,largeSquareSide, height - floorThickness]);
        translate([length/2 - (largeSquareSide/2) + 5/2, width - largeSquareSide + 5 + 5, 0])
            cube([largeSquareSide  - 5,largeSquareSide - 5, height]);

    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

