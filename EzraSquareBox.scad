length = 97;
width = 82;


floorThickness = 3;
clayTileHeight = 17.25 + .3;
stoneTileHeight = 17.25 + .3;
woodTileHeight = 23.7 + .3;
fieldTileHeight = 25.9 + .3;
height = 25.9 + floorThickness + .5;

//Based on magnet size:
magnetBaseOuterDiameter = 20;
magnetBaseInnerDiameter = 15.4;

magnetHeight = 4.0;

smallSquareSide = 36.5;

difference(){
    cube([length, width, height]);

        translate([3, 3, height - clayTileHeight])
            cube([smallSquareSide,smallSquareSide, clayTileHeight]);
        translate([-5, 3 + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
        translate([3, width - (3 + smallSquareSide), height - stoneTileHeight])
            cube([smallSquareSide,smallSquareSide, stoneTileHeight]);
        translate([-5, width - (3 + smallSquareSide) + (5/2), 0])
            cube([smallSquareSide  - 18,smallSquareSide - 5, height]);
    
        
    
    
        translate([length - (3  + smallSquareSide), 3, height - woodTileHeight])
            cube([smallSquareSide,smallSquareSide, woodTileHeight]);
        translate([length - (smallSquareSide - 5 - 18), 3 + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
                
        translate([length - (3  + smallSquareSide), width - (3 + smallSquareSide), height - fieldTileHeight])
            cube([smallSquareSide,smallSquareSide, fieldTileHeight]);
        translate([length - (smallSquareSide - 5 - 18), width - (3 + smallSquareSide) + 5/2, 0])
            cube([smallSquareSide  - 5,smallSquareSide - 5, height]);
            
        
        
        
    
        
    translate([length/2, width/2, height - magnetHeight])
        cylinder(magnetHeight, d=magnetBaseInnerDiameter);
        

}

