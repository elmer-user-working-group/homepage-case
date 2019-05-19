// Gmsh project created on Sat May 18 23:31:54 2019
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {10, 0, 0, 1.0};
//+
Point(3) = {10, 5, 0, 1.0};
//+
Point(4) = {11.5, 5, 0, 1.0};
//+
Point(5) = {11.5, 0, 0, 1.0};
//+
Point(6) = {65, 0, 0, 1.0};
//+
Point(7) = {65, 10, 0, 1.0};
//+
Point(8) = {0, 10, 0, 1.0};
//+
Line(1) = {8, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 5};
//+
Line(6) = {2, 5};
//+
Line(7) = {5, 6};
//+
Line(8) = {6, 7};
//+
Line(9) = {7, 8};
//+
Physical Curve("inlet", 1) = {1};
//+
Physical Curve("fst", 3) = {3, 4, 5};
//+
Physical Curve("outlet", 2) = {8};
//+
Physical Curve("wall-bottom", 4) = {2, 7};
//+
Physical Curve("wall-top", 5) = {9};
//+
Physical Curve("wall-fix", 10) = {6};
//+
Physical Curve("wall-fix", 6) -= {6};
//+
Physical Curve("wall-fix", 6) = {6};
//+
Curve Loop(1) = {3, 4, 5, -6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 3, 4, 5, 7, 8, 9, 1};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {2, 3, 4, 5, 7, 8, 9, 1};
//+
Physical Surface("fluid", 7) = {2};
//+
Physical Surface("body", 8) = {1};