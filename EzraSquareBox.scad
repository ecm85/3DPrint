length = 100;
width = 87;


floorThickness = 3;
ageOneTileHeight = 8.4 + .3;
ageTwoTileHeight = 6.35 + .3;
ageThreeTileHeight = 8.4 + .3;
ageFourTileHeight = 2.1 + .3;
height = ageOneTileHeight + floorThickness + .5;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

smallSquareSide = 38.2 + .5;

difference(){
    cube([length, width, height]);

        translate([3, 3, height - ageOneTileHeight])
            cube([smallSquareSide,smallSquareSide, ageOneTileHeight]);
        translate([-5, 3 + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
        translate([3, width - (3 + smallSquareSide), height - ageTwoTileHeight])
            cube([smallSquareSide,smallSquareSide, ageTwoTileHeight]);
        translate([-5, width - (3 + smallSquareSide) + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
    
    
        translate([length - (3  + smallSquareSide), 3, height - ageThreeTileHeight])
            cube([smallSquareSide,smallSquareSide, ageThreeTileHeight]);
        translate([length - (smallSquareSide - 5 - 18), 3 + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
                
        translate([length - (3  + smallSquareSide), width - (3 + smallSquareSide), height - ageFourTileHeight])
            cube([smallSquareSide,smallSquareSide, ageFourTileHeight]);
        translate([length - (smallSquareSide - 5 - 18), width - (3 + smallSquareSide) + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        
        
        
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}