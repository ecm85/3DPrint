y = 14.25;
a = 4.3;
height = 25;
difference() {
//    cube([100, 100, 25]);
            polyhedron(
                points = 
                [
                    [0,0,0],
                    [y,0,0],
                    [y/2,a,0],
                    [0,0,height],
                    [y,0,height],
                    [y/2,a,height],
                ],
                faces = 
                [
                    [0,1,2],
                    [3,4,1,0],
                    [3,5,4],
                    [4,5,2,1],
                    [5,3,0,2]
                ]);   
//    CubePoints = [
//  [  0,  0,  0 ],  //0
//  [ 10,  0,  0 ],  //1
//  [ 10,  7,  0 ],  //2
//  [  0,  7,  0 ],  //3
//  [  0,  0,  5 ],  //4
//  [ 10,  0,  5 ],  //5
//  [ 10,  7,  5 ],  //6
//  [  0,  7,  5 ]]; //7
//  
//CubeFaces = [
//  [0,1,2,3],  // bottom
//  [4,5,1,0],  // front
//  [7,6,5,4],  // top
//  [5,6,2,1],  // right
//  [6,7,3,2],  // back
//  [7,4,0,3]]; // left
//  
//polyhedron( CubePoints, CubeFaces );
    
};