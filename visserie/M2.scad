
M2_femelle_male();

translate ([0,5,5.6]) M2_male();


module M2_femelle_male()
{
difference()
{
color("white")translate([0,0,8.1/2]) cylinder(h=8.1, r=2.4, $fn=6, center=true);
color("white")translate([0,0,0.126+8.1-0.25+0.001]) cylinder(h=0.25, r=2.4-0.60, $fn=6, center=true); 
color("white")translate([0,0,8.1/2+0.001]) cylinder(h=8.1, r=1.16, $fn=60, center=true);      
}

  difference()
{
      color("white") translate([0,0,-5.6/2]) cylinder(h=5.6, r1=1.11, r2=1.11, $fn=60, center=true);
  translate([0,0,-5.52])  
    for (i = [0:45])  
          {
    color("white")    translate([0,0,i*0.12])cylinder(h=0.1, r=1.11+0.001, $fn=60, center=true);               
          }
}
color("white")translate([0,0,-5.6/2]) cylinder(h=5.6, r1=1.11-0.2, r2=1.11, $fn=60, center=true);
}



module M2_male()
{
  difference()
{
      color("white") translate([0,0,-5.6/2]) cylinder(h=5.6, r1=1.11, r2=1.11, $fn=60, center=true);
  translate([0,0,-5.52])  
    for (i = [0:45])  
          {
    color("white") translate([0,0,i*0.12])cylinder(h=0.1, r=1.11+0.001, $fn=60, center=true);               
          }
}
color("white")translate([0,0,-5.6/2]) cylinder(h=5.6, r1=1.11-0.2, r2=1.11, $fn=60, center=true);


difference()
{
color("white") translate ([0,0,-0.8]) sphere(d = 4.6,$fn=100);
color("white") translate([0,0,-1.05-0.5])cube([4.8,4.8,3.1], center=true); 
color("white") translate([0,0,1.4])cube([0.7,2.2,1.5], center=true);
color("white") translate([0,0,1.4])cube([2.2,0.7,1.5], center=true);      
}
}
