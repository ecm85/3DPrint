length = 100;
width = 87;


floorThickness = 3;
tileHeight = 12.35 + .3;
height = tileHeight + floorThickness + .5;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

smallSquareSide = 38.2 + .5;

difference(){
    cube([length, width, height]);

        translate([3, 3, height - tileHeight])
            cube([smallSquareSide,smallSquareSide, tileHeight]);
        translate([-5, 3 + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
        translate([3, width - (3 + smallSquareSide), height - tileHeight])
            cube([smallSquareSide,smallSquareSide, tileHeight]);
        translate([-5, width - (3 + smallSquareSide) + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
    
    
        translate([length - (3  + smallSquareSide), 3, height - tileHeight])
            cube([smallSquareSide,smallSquareSide, tileHeight]);
        translate([length - (smallSquareSide - 5 - 18), 3 + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
                
        translate([length - (3  + smallSquareSide), width - (3 + smallSquareSide), height - tileHeight])
            cube([smallSquareSide,smallSquareSide, tileHeight]);
        translate([length - (smallSquareSide - 5 - 18), width - (3 + smallSquareSide) + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        
        
        
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}