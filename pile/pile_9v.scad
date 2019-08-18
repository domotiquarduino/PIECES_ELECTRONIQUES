// pile carrée de 9 volts

//___________________________________VARIABLES__________________________________
afficher_pile    ="o"; //o,n
rotation_360      ="z"; //x,y,z,f,n
mouvement_hauteur ="n";
//___________________________________ANIMATIONS/CONDITIONS______________________
//Mettre :     FPS : 50  -----------    Etapes : 50    -----------
if(afficher_pile=="o")
{
if(rotation_360=="z" && mouvement_hauteur=="o")
translate([0,0,45]) rotate([0,0,360*$t]) 
translate([0,0,-45*$t]) translate([0,0,2.2]) pile_9V();
else if(rotation_360=="x" && mouvement_hauteur=="o")
translate([0,0,45]) rotate([0,-360*$t,0])
translate([0,0,-45*$t]) pile_9V();
else if(rotation_360=="y" && mouvement_hauteur=="o")
translate([0,0,45]) rotate([360*$t,0,0])
translate([0,0,-45*$t]) pile_9V();
else if(rotation_360 =="n" && mouvement_hauteur=="o")
translate([0,0,45]) translate([0,0,-45*$t]) pile_9V();
else if(rotation_360 =="f")
pile_9V();
else if(rotation_360=="y" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([360*$t,0,0]) pile_9V();
else if(rotation_360=="x" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([0,360*$t,0]) pile_9V();
else if(rotation_360=="z" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([0,0,360*$t]) pile_9V();
else if(rotation_360=="n" && mouvement_hauteur=="n") 
rotate([0,0,-90]) pile_9V();
else
{ }
}
//___________________________________MODULES__________________________________  
module pile_9V()
{
 union()
 {
 color ("DeepSkyBlue", 0.98) translate([0,0,16.9/2]) cube([45.6,26.3,16.9], center = true);
 difference()
 {
  color("lightblue")translate([45.6/2+1.5,45.6/7,16.9/2])rotate([0,90,0])cylinder(d=5.85,h=3,$fn=60, center=true); 
  color("lightblue")translate([45.6/2+1.5+0.2,45.6/7,16.9/2])rotate([0,90,0])cylinder(d=4.65,h=3,$fn=60, center=true);     
 } 
 difference()
 { 
  color("lightblue") translate([45.6/2+1.5,-(45.6/7),16.9/2])rotate([0,90,0])cylinder(d=7.85,h=3,$fn=6, center=true); 
  color("lightblue") translate([45.6/2+1.5+0.2,-(45.6/7),16.9/2])rotate([0,90,0])cylinder(d=6.65,h=3,$fn=6, center=true);      
 }
 }
    //texte
    color("White") translate([45.6/2-0.0109,-8,11.5]) rotate([90,0,90]) linear_extrude(height=0.01105) text("-", font = "Arial", size=6, spacing=1.0);
    color("White") translate([45.6/2-0.0109,4,11]) rotate([90,0,90]) linear_extrude(height=0.01105) text("+", font = "Arial", size=6, spacing=1.0);
}
