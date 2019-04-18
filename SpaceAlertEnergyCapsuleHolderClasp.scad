cylinderHeight = 13.83;
floorThickness = 3;
innerBoxWidth = cylinderHeight + floorThickness * 2 + .2;
innerBoxLength = 10;
wrapperHeight = 5;
outerBoxThickness = 2;
difference(){
    
        $fn=50;
    minkowski()
    {
      cube([outerBoxThickness * 2 + innerBoxLength, outerBoxThickness* 2 + innerBoxWidth, wrapperHeight - 1]);
      cylinder(r=2,h=1);
    }
    
//    cube([outerBoxThickness * 2 + innerBoxLength, outerBoxThickness* 2 + innerBoxWidth, wrapperHeight]);
     $fn=50;
    translate([outerBoxThickness,outerBoxThickness,0])
        minkowski()
        {
          cube([innerBoxLength,innerBoxWidth, wrapperHeight]);
          cylinder(r=2,h=1);
        }
    
        
}