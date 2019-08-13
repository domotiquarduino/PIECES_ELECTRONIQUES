//Plaque pcb pour module Wifi ESP8266MOD
//________________________________VARIABLES_____________________________________________________
afficher_pin_male              ="n";
mouvement_hauteur_pin_male     ="o";

afficher_pin_femelle           ="o";
mouvement_hauteur_pin_femelle  ="n";

mouvement_hauteur              ="n";
rotation_360                   ="z"; //x,y,z,n

afficher_esp_12                ="o";
mouvement_hauteur_esp          ="n";

afficher_soudure_esp           ="o";
mouvement_hauteur_soudure_esp  ="n";

afficher_soudure_broches       ="o";
mouvement_hauteur_soudure_bro  ="n";

afficher_texte                 ="o"; //o,n (A désactiver si Vue-> Animer)

hauteur_pcb = 1.42;
fin_pin   = 7;

//________________________________CONDITIONS____________________________________________________
 if(rotation_360=="x" && mouvement_hauteur =="o")
 {       
  translate([0,0,50]) translate([0,0,-50.3*$t]) rotate([360*$t,0,0]) suppportEtEsp12E();
 }
 else if (rotation_360=="y" && mouvement_hauteur =="o") 
 {       
  translate([0,0,50]) translate([0,0,-50.3*$t]) rotate([0,360*$t,0]) suppportEtEsp12E();
 }
 else if (rotation_360=="z" && mouvement_hauteur =="o") 
 {       
  translate([0,0,50]) translate([0,0,-50.3*$t]) rotate([0,0,360*$t]) suppportEtEsp12E();
 }
 else if(rotation_360=="x" && mouvement_hauteur =="n")
 {       
  rotate([360*$t,0,0]) suppportEtEsp12E();
 }
 else if (rotation_360=="y" && mouvement_hauteur =="n") 
 {       
  rotate([0,360*$t,0]) suppportEtEsp12E();
 }
 else if (rotation_360=="z" && mouvement_hauteur =="n") 
 {       
  rotate([0,0,360*$t]) suppportEtEsp12E();
 }
 else if(rotation_360=="n" && mouvement_hauteur =="o")
 {       
  translate([0,0,50]) translate([0,0,-50.3*$t]) suppportEtEsp12E();
 }
  else
 {       
  suppportEtEsp12E();
 }
 

//________________________________MODULES_______________________________________________________
module suppportEtEsp12E()
{
difference()
{
 //pcb
 color("Snow") translate([0,0,hauteur_pcb/2]) cube([27.95,30.85,hauteur_pcb], center=true);
                  
 //trous percage pcb  
 espace = -(2.54*fin_pin)/2;
 translate([0,0,1.5/2-0.03])
 for (i = [0:fin_pin])  
 {                 
  translate([espace+3.64,14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=1.5,r1=0.68,r2=0.68,$fn=60, center=true);  
  translate([espace+3.64,-14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=1.5,r1=0.68,r2=0.68,$fn=60, center=true);              
 }      
 translate([12.4,-2.4,hauteur_pcb/2]) color("grey")cylinder(h=1.5,r1=0.38,r2=0.38,$fn=60, center=true);
 translate([12.4-2.67-0.25,-2.4-0.65,hauteur_pcb/2]) color("grey")cylinder(h=1.5,r1=0.38,r2=0.38,$fn=60, center=true);
 translate([10.8,-10.0,hauteur_pcb/2]) color("grey") cylinder(h=1.5,r1=0.38,r2=0.38,$fn=60, center=true);
 
 //Trace soudure Esp sur PCB 
 translate([0,0,hauteur_pcb])  
 for (i = [0:7])  
 {
   color("LightGrey")translate([i*2-5.4,7.9,0])cube([0.415*2,1.9,0.00018],center=true);
   color("LightGrey")translate([i*2-5.4,-7.9,0])cube([0.415*2,1.9,0.00018],center=true);      
 }      
}
 //3 résistances
 color("AntiqueWhite")translate([12.4,-7.6,0.45/2+(hauteur_pcb)])cube([1.1,2.52,0.45],center=true);
 color("Black")translate([12.4,-7.6,0.45/2+hauteur_pcb+0.001])cube([1.1-0.11,2.52/1.5,0.45],center=true);
 color("AntiqueWhite")translate([12.4,-7.6+7,0.45/2+hauteur_pcb])cube([1.1,2.52,0.45],center=true);
 color("Black")translate([12.4,-7.6+7,0.45/2+hauteur_pcb+0.001])cube([1.1-0.11,2.52/1.5,0.45],center=true);
 color("AntiqueWhite")translate([12.4,-7.6+6+9,0.45/2+hauteur_pcb])cube([1.1,2.52,0.45],center=true);
 color("Black")translate([12.4,-7.6+6+9,0.45/2+hauteur_pcb+0.001])cube([1.1-0.11,2.52/1.5,0.45],center=true);

 //contour soudure trous pcb
 difference()
{
 translate([12.4,-2.4,0]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([12.4,-2.4,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}
 difference()
{
 translate([12.4,-2.4,hauteur_pcb]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([12.4,-2.4,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}

 difference()
{
 translate([12.4-2.67-0.25,-2.4-0.65,0]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([12.4-2.67-0.25,-2.4-0.65,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}
 difference()
{
 translate([12.4-4.67+1.75,-2.4-0.65,hauteur_pcb]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([12.4-4.67+1.75,-2.4-0.65,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}

 difference()
{
 translate([10.8,-10,0]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([10.8,-10,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}
 difference()
{
 translate([10.8,-10,hauteur_pcb]) color("LightGrey")cylinder(h=0.0001,r1=0.38+0.2,r2=0.38+0.2,$fn=60, center=true);
 translate([10.8,-10,hauteur_pcb/2]) color("grey")cylinder(h=3,r1=0.38,r2=0.38,$fn=60, center=true);
}
    //contour trous broches pcb(x8) à droite
    espace = -(2.54*fin_pin)/2;
    translate([0,0,hauteur_pcb])
    for (i = [0:fin_pin])  
    {  
      difference()
      {               
       translate([espace+3.64,14.25,0]) color("LightGrey") translate([i*2.54,0,0]) cylinder(h=0.0001,r1=0.68+0.2,r2=0.68+0.2,$fn=60, center=true);  
       translate([espace+3.64,14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=4,r1=0.68,r2=0.68,$fn=60, center=true);                
      }
      difference()
      {        
       translate([espace+3.64,-14.25,0]) color("LightGrey") translate([i*2.54,0,0]) cylinder(h=0.0001,r1=0.68+0.2,r2=0.68+0.2,$fn=60, center=true); 
       translate([espace+3.64,-14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=4,r1=0.68,r2=0.68,$fn=60, center=true); 
      }
    }
    //contour trous broches pcb(x8) à gauche
    translate([0,0,-hauteur_pcb])
    for (i = [0:fin_pin])  
    {  
      difference()
      {               
       translate([espace+3.64,14.25,hauteur_pcb]) color("LightGrey") translate([i*2.54,0,0]) cylinder(h=0.0001,r1=0.68+0.2,r2=0.68+0.2,$fn=60, center=true);  
       translate([espace+3.64,14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=4,r1=0.68,r2=0.68,$fn=60, center=true);                
      }
      difference()
      {               
       translate([espace+3.64,-14.25,hauteur_pcb]) color("LightGrey") translate([i*2.54,0,0]) cylinder(h=0.0001,r1=0.68+0.2,r2=0.68+0.2,$fn=60, center=true);  
       translate([espace+3.64,-14.25,0]) color("grey") translate([i*2.54,0,0]) cylinder(h=4,r1=0.68,r2=0.68,$fn=60, center=true);                
      }            
     }

 //soudures inférieure pcb
 color("LightGrey") translate([9.5-0.1,0,0]) cube([1.6,1,0.0001], center=true);
 color("LightGrey") translate([9.5+0.2,1.15,0]) cube([1,1,0.0001], center=true);
 color("LightGrey") translate([9.5+0.2,-1.15,0]) cube([1,1,0.0001], center=true);
 color("LightGrey") translate([9.5-1.3,0,0]) cube([1.7,1.7,0.0001], center=true);
 
    
if(fin_pin)
{
 espace = -(2.54*fin_pin)/2;
 if(afficher_pin_male=="o")
 {     
       if(mouvement_hauteur_pin_male=="o")
       { 
        translate([0,0,40]) translate([0,0,-40.5*$t])    
        translate([espace+3.64,14.25,0]) pin_male_x_2_54mm();
        translate([0,0,40]) translate([0,0,-40.5*$t])
        translate([espace+3.64,-14.25,0]) pin_male_x_2_54mm();
       }
       else
       {   
        translate([espace+3.64,14.25,0]) pin_male_x_2_54mm();
        translate([espace+3.64,-14.25,0]) pin_male_x_2_54mm();       
       }       
 }
 if(afficher_pin_femelle=="o")
 {
       if(mouvement_hauteur_pin_femelle=="o")
       { 
        translate([0,0,40]) translate([0,0,-40.8*$t])        
        translate([espace+3.64,14.25,0]) pin_femelle_x_2_54mm();
        translate([0,0,40]) translate([0,0,-40.8*$t])              
        translate([espace+3.64,-14.25,0]) pin_femelle_x_2_54mm();
       } 
       else
       {         
        translate([espace+3.64,14.25,0]) pin_femelle_x_2_54mm();              
        translate([espace+3.64,-14.25,0]) pin_femelle_x_2_54mm();        
       }      
 }     
}

if(fin_pin==0)
{
 if(afficher_pin_male=="o")
 {      
  if(axe=="x") translate([0,0,0]) pin_male_x_2_54mm();     
 }
 if(afficher_pin_femelle=="o") 
 {   
  if(axe=="x") translate([0,0,0]) pin_femelle_x_2_54mm();         
 }      
}

if(afficher_esp_12=="o" && mouvement_hauteur_esp=="o") 
  translate([0,0,25]) translate([0,0,-25.5*$t]) ESP12();
if(afficher_esp_12=="o" && mouvement_hauteur_esp=="n") 
    
if(afficher_texte=="o") texte_esp8266MOD();
    
  ESP12();
}

module ESP12()
{
difference()
{
 color("Black") translate([-1.95,0,0.72/2+hauteur_pcb]) cube([24.05,16.05,0.72], center=true);
 translate([0,0,hauteur_pcb])  
 for (i = [0:7])  
 {
  color("LightGrey")translate([i*2-5.4,7.9+0.1,0])cylinder($fa=60,$fn=60,h=1.63,r1=0.4,r2=0.4,center=true);              
  color("LightGrey")translate([i*2-5.4,-7.9-0.1,0])cylinder($fa=60,$fn=60,h=1.63,r1=0.4,r2=0.4,center=true);               
 }
}
//diode led
color("Linen")translate([-7.0,-7.6+13.95,0.45/2+hauteur_pcb+0.72])cube([1.1,2.52,0.45],center=true);
translate([0,0.8,0]) logo();
module logo()
{
color("Gold") translate([-13.3,4.8,0.72/2+hauteur_pcb+0.01]) cube([0.4,4.0,0.72], center=true);
color("Gold") translate([-11.1,3,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-9.0,2.25,0.72/2+hauteur_pcb+0.01]) cube([0.4,1.9,0.72], center=true);
color("Gold") translate([-9.0,2.25-6.3,0.72/2+hauteur_pcb+0.01]) cube([0.4,1.7,0.72], center=true);
color("Gold") translate([-11.1,2.7-1.55+0.35,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35,0.72/2+hauteur_pcb+0.01]) cube([0.4,1.9,0.72], center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35-3,0.72/2+hauteur_pcb+0.01]) cube([0.4,1.9,0.72], center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35-6.4+0.15,0.72/2+hauteur_pcb+0.01]) cube([0.4,2,0.72], center=true);
color("Gold") translate([-11.1,2.7-1.7-1.35+0.35,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-9.0,1.75-3.8+1.3,0.72/2+hauteur_pcb+0.01]) cube([0.4,1.9,0.72], center=true);

color("Gold") translate([-11.1,2.7-1.7-1.7-1.7+0.90,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-11.1,2.7-1.7-1.7-1.7-1.7+0.90+0.2,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-11.1,2.7-1.7-1.7-1.7-1.7-1.7+0.90+0.2,0.72/2+hauteur_pcb+0.01]) cube([4.6,0.4,0.72], center=true);
color("Gold") translate([-10.1,2.7-1.7-1.7-1.7-1.7-1.7-1.7+0.90+0.3,0.72/2+hauteur_pcb+0.01]) cube([6.8,0.4,0.72], center=true);
color("Gold") translate([-9.0+2.2,1.7-4.58+1.3,0.72/2+hauteur_pcb+0.01]) cube([0.4,9.6,0.72], center=true);
}
//support wifi ESP8266
color("Silver") translate([1.60,0,2.22/2+hauteur_pcb+0.001]) cube([15.1,12.01,2.22], center=true);


   if(afficher_soudure_esp=="o" && mouvement_hauteur_soudure_esp =="n")
   {      
    translate([0,0,0.75/2+hauteur_pcb])  
    for (i = [0:7])  
    { 
     color("grey")translate([i*2-5.4,7.9,0])cube([0.315*2,2.2,0.75],center=true);
     color("grey")translate([i*2-5.4,-7.9,0])cube([0.315*2,2.2,0.75],center=true);      
    }
   }
   else if(afficher_soudure_esp=="o" && mouvement_hauteur_soudure_esp =="o")
   {
    translate([0,0,25]) translate([0,0,-25.9*$t])      
    translate([0,0,0.75/2+hauteur_pcb])  
    for (i = [0:7])  
    { 
     color("grey")translate([i*2-5.4,7.9,0])cube([0.315*2,2.2,0.75],center=true);
     color("grey")translate([i*2-5.4,-7.9,0])cube([0.315*2,2.2,0.75],center=true);      
    }
   }
  
}

module pin_male_x_2_54mm()
{
  //tige métallique(s)
  translate([0,0,11.55/2-2.9+hauteur_pcb])  
  for (i = [0:fin_pin])  
  {
   color("lightblue")translate([i*2.54,0,0])cube([0.315*2,0.315*2,11.55],center=true );     
  } 
  //carré(s) plastique(s)       
  translate([0,0,2.35/2+hauteur_pcb])
  for (i = [0:fin_pin])  
  {
   color("black") translate([i*2.54,0,0]) cube([2.45,2.35,2.35],center=true );   
  }         
 if(afficher_soudure_broches=="o")
 {
   if(mouvement_hauteur_soudure_bro=="o")      
   translate([0,0,-40]) translate([0,0,40.8*$t]) 
   {    
    //soudure inférieure  
    translate([0,0,-1.35/2])
    for (i = [0:fin_pin])  
    {
     color("grey") translate([i*2.54,0,0]) cylinder($fn=0,$fa=60,$fn=60,h=1.35,r1=0.6,r2=1.1,center=true); 
    }
   }
   else
   {
    //soudure inférieure  
    translate([0,0,-1.35/2])
    for (i = [0:fin_pin])  
    {
     color("grey") translate([i*2.54,0,0]) cylinder($fn=0,$fa=60,$fn=60,h=1.35,r1=0.6,r2=1.1,center=true); 
    }          
   }
  
  
 }
}

module pin_femelle_x_2_54mm()
{
  //tige métallique(s)
  translate([0,0,3.5/2-2.95+hauteur_pcb])  
  for (i = [0:fin_pin])  
  {
   color("gold")translate([i*2.54,0,0])cube([0.315*2,0.315*2,3.5],center=true);               
  } 
  //carré(s) plastique(s)       
  translate([0,0,8.35/2+hauteur_pcb])
  for (i = [0:fin_pin])  
  {
   difference()
   {
    color("black") translate([i*2.54,0,0]) cube([2.54+0.35,2.35,8.35],center=true);
    color("brown") translate([i*2.54,0,0.5]) cube([2.54-0.36,2.35-0.3,8.35],center=true);       
   }           
  }
 if(afficher_soudure_broches=="o")
  {    
   if(mouvement_hauteur_soudure_bro=="o")      
   translate([0,0,-40]) translate([0,0,40.8*$t]) 
   {   
    //soudure inférieure  
    translate([0,0,-1.40/2])  
    for (i = [0:fin_pin]) 
    {
     color("grey") translate([i*2.54,0,0]) cylinder($fn=0,$fa=60,$fn=60,h=1.40,r1=0.6,r2=1.1,center=true); 
    } 
   }
   else
   {
    //soudure inférieure  
    translate([0,0,-1.40/2])  
    for (i = [0:fin_pin]) 
    {
     color("grey") translate([i*2.54,0,0]) cylinder($fa=60,$fn=60,h=1.40,r1=0.6,r2=1.1,center=true); 
    }          
   }
  }
}


module soudure()
{
   translate([-5.25,14.2,21.8*$t])
     translate([0,0,-1.40/2])    
   //soudure inférieure  
   translate([0,0,-21])  
   for (i = [0:fin_pin]) 
   {
    color("grey") translate([i*2.54,0,0]) cylinder($fa=60,$fn=60,h=1.40,r1=0.6,r2=1.1,center=true); 
   }
   translate([-5.25,-14.2,21.8*$t])
     translate([0,0,-1.40/2])    
   //soudure inférieure  
   translate([0,0,-21])  
   for (i = [0:fin_pin]) 
   {
    color("grey") translate([i*2.54,0,0]) cylinder($fa=60,$fn=60,h=1.40,r1=0.6,r2=1.1,center=true); 
   }        
}

module texte_esp8266MOD()
{
    //texte à gauche
    color("Grey") translate([9.0-14,-12.3,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("REST", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-12,-12,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("ADC", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-10,-12.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("CH_PD", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-8,-12.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO16", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-6,-12.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO14", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-4,-12.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO12", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-2,-12.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO13", font = "Arial", size=0.75, spacing=1.0);    
    color("Grey") translate([9.0,-12,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("VCC", font = "Arial", size=0.75, spacing=1.0);    
    //texte à droite
    color("Grey") translate([9.0-14,9.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("TXD", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-12,9.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("RXD", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-10,9.1,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO5", font = "Arial", size=0.75, spacing=1.0);
    color("Grey") translate([9.0-8,9.1,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO4", font = "Arial", size=0.75, spacing=1.0); 
    color("Grey") translate([9.0-6,9.1,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO0", font = "Arial", size=0.75, spacing=1.0);    
    color("Grey") translate([9.0-4,9.1,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO02", font = "Arial", size=0.75, spacing=1.0);    
    color("Grey") translate([9.0-2,9.1,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GPIO15", font = "Arial", size=0.75, spacing=1.0); 
    color("Grey") translate([9.0,9.8,1.45]) rotate([0,0,90]) linear_extrude(height=0.01105) text("GND", font = "Arial", size=0.75, spacing=1.0); 
}




