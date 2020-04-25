use <C:\Users\"VOTRE NOM UTILISATEUR"\Desktop\pieces_3d_openscad\lettres\Write.scad>

afficher_texte = "o";  // o,n

pcb_dt06();
dt06();

module pcb_dt06()
{
difference()
{
   //PCB vert  
   color ("green")translate ([0,0,0])  cube([19.40,10.90,1.55], center = true);
   
     //trous PCB
     for (i = [-1:2])  
     {
       color("grey")translate ([8.2-0.5, i*2.54-2.54/2, 4/50]) cylinder (r=0.44, h=1.72, $fn=60, center=true );
       color("grey")translate ([-8.2+0.5, i*2.54-2.54/2, 4/50]) cylinder (r=0.44, h=1.72, $fn=60, center=true );     
     }
     for (i = [-1:0])  
     {
       color("grey")translate ([8.2-2.54-0.5, i*2.54-2.54/2, 4/50]) cylinder (r=0.44, h=1.72, $fn=60, center=true );
       color("grey")translate ([-8.2+2.54+0.5, i*2.54-2.54/2, 4/50]) cylinder (r=0.44, h=1.72, $fn=60, center=true );     
     }     
}

    //contours soudures
    for (i = [-1:2])  
    {        
      difference()
      {  
       color("grey") translate ([8.2-0.5, i*2.54-2.54/2, 0]) cylinder (r=0.68, h=1.551, $fn=60, center=true );
       color("grey") translate ([8.2-0.5, i*2.54-2.54/2, 0]) cylinder (r=0.44, h=1.651, $fn=60, center=true ); 
      }
      difference()
      {  
       color("grey") translate ([-8.2+0.5, i*2.54-2.54/2, 0]) cylinder (r=0.68, h=1.551, $fn=60, center=true );
       color("grey") translate ([-8.2+0.5, i*2.54-2.54/2, 0]) cylinder (r=0.44, h=1.651, $fn=60, center=true ); 
      }           
     }    
    for (i = [-1:0])  
    {        
      difference()
      {  
       color("grey") translate ([8.2-2.54-0.5, i*2.54-2.54/2, 0]) cylinder (r=0.68, h=1.551, $fn=60, center=true );
       color("grey") translate ([8.2-2.54-0.5, i*2.54-2.54/2, 0]) cylinder (r=0.44, h=1.651, $fn=60, center=true ); 
      }
      difference()
      {  
       color("grey") translate ([-8.2+2.54+0.5, i*2.54-2.54/2, 0]) cylinder (r=0.68, h=1.551, $fn=60, center=true );
       color("grey") translate ([-8.2+2.54+0.5, i*2.54-2.54/2, 0]) cylinder (r=0.44, h=1.651, $fn=60, center=true ); 
      }           
     }
     
     //soudures cylindriques
     for (i = [-1:2])  
     {
      color("grey") translate ([8.2-0.5,i*2.54-2.54/2,-22.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=1.73,r1=0.55,r2=1.0,center=false);
      color("grey") translate ([-8.2+0.5,i*2.54-2.54/2,-22.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=1.73,r1=0.55,r2=1.0,center=false);            
     }
     for (i = [-1:0])  
     {
      color("grey") translate ([8.2-2.54-0.5,i*2.54-2.54/2,-22.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=1.73,r1=0.55,r2=1.0,center=false);
      color("grey") translate ([-8.2+2.54+0.5,i*2.54-2.54/2,-22.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=1.73,r1=0.55,r2=1.0,center=false);   
      color("grey") translate ([8.2-2.54-0.5,i*2.54-2.54/2,-19.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=0.73,r2=0.38,r1=0.83,center=false);   
      color("grey") translate ([-8.2+2.54+0.5,i*2.54-2.54/2,-19.50]) translate([0,0,20]) cylinder($fn=0,$fa=12,$fn=60,h=0.73,r2=0.38,r1=0.83,center=false);            
     } 
 
   translate([0,(2.54*2)-(2.54/2),0.7151]) color("grey") cube([15.2-0.7,0.35,0.12],center=true);  
   translate([0,(2.54)-(2.54/2),0.7151]) color ("grey")  cube([15.2-0.7,0.35,0.12],center=true);    
     
   translate([8.2-0.5-2.54/2,-(2.54)-(2.54/2),0.7151]) color("grey") cube([1.5,0.35,0.12],center=true); 
   translate([8.2-0.5-2.54,0+0.205,0.7151]) color("grey") cube([0.35,1.5+0.3,0.12],center=true);  
   translate([-8.2+0.5+2.54/2,-(2.54)-(2.54/2),0.7151]) color("grey") cube([1.5,0.35,0.12],center=true);  
   translate([-8.2+0.5+2.54/2+0.05,-(2.54)-(2.54/2)+1.1,0.7151]) rotate([0,0,48]) color("grey") cube([2.5,0.35,0.12],center=true);  
    
  translate ([8.2-0.5-2.54/2+0.6/2,-2.54/2,-0.7151])rotate([0,0,90]) color ("grey")  cube([0.35,2.54/2-0.6,0.12], center = true); 
  
  translate ([0.63,2.54-0.04,-0.7151])rotate([0,0,90]) color ("grey")  cube([0.35,10.22-1,0.12], center = true); 
  translate ([6.3-0.5,0.6,-0.7151])rotate([0,0,20]) color ("grey")  cube([0.35,4.25,0.12], center = true);
  translate ([-6.05+0.5,0.85,-0.7151])rotate([0,0,-45]) color ("grey")  cube([0.35,4.8,0.12], center = true);
  
    translate([8.2-0.5,0,0]) contour_blanc_4trous();
    translate([-8.2+0.5,0,0]) contour_blanc_4trous();
    
    contour_blanc_resistance();
    translate([0,2.54,0]) contour_blanc_resistance();
    
    module contour_blanc_4trous()
    {
     translate([-2.01/2+0.1,0,0.7151]) color("white") cube([0.2,1.35*7,0.12],center=true);
     translate([2.01/2-0.1,0,0.7151]) color("white") cube([0.2,1.35*7,0.12],center=true);
     translate([0,(1.35*7)/2,0.7151]) color("white") cube([2.01,0.2,0.12], center=true);
     translate([0,(-1.35*7)/2,0.7151]) color("white") cube([2.01,0.2,0.12], center=true);
    }
    
    module contour_blanc_resistance()
    {    
    translate([8.2-0.35-2.54/2-2.54-0.2,-(2.54)-(2.54/2),0.7151]) color("White") cube([1.5-0.35,0.35/2,0.12],center=true);
    translate([-8.2+0.35+2.54/2+2.54+0.2,-(2.54)-(2.54/2),0.7151]) color("White") cube([1.5-0.35,0.35/2,0.12],center=true);
    translate([8.2-2.54*2+0.235,-2.54*2+2.54/2,0.7151]) color("White") cube([0.35/2,1.5,0.12],center=true); 
    translate([-8.2+2.54*2-0.235,-2.54*2+2.54/2,0.7151]) color("White") cube([0.35/2,1.5,0.12],center=true);
    translate([0,-2.54*2+0.435,0.7151]) color ("White")  cube([6.885,0.35/2,0.12],center=true); 
    translate([0,-2.54*2+0.435+1.497+0.35/2,0.7151]) color ("White")  cube([6.885,0.35/2,0.12],center=true);   
    } 
    
    if(afficher_texte=="o") texte();
    
 module texte()
{
    translate([-8.2-2.54/2+0.01+0.2,0,0.8])rotate([0,0,90])
    color("white") write("HC-06",t=0.1,h=0.5,center=true);
    translate([8.2+2.54/2-0.01-0.2,2.54+2.54/2,0.8])rotate([0,0,90])
    color("white") write("+5V",t=0.1,h=0.5,center=true);       
    translate([8.2+2.54/2-0.01-0.2,2.54/2,0.8])rotate([0,0,90])
    color("white") write("GND",t=0.1,h=0.5,center=true); 
    translate([8.2+2.54/2-0.01-0.2,2.54/2,0.8])rotate([0,0,90])
    color("white") write("GND",t=0.1,h=0.5,center=true);  
    translate([8.2+2.54/2-0.01-0.2,-2.54/2,0.8])rotate([0,0,90])
    color("white") write("TXD",t=0.1,h=0.5,center=true);  
    translate([8.2+2.54/2-0.01-0.2,-2.54/2-2.54,0.8])rotate([0,0,90])
    color("white") write("RXD",t=0.1,h=0.5,center=true);  
    translate([0,-2.54/2-2.54,0.73])rotate([0,0,0])
    color("white") write("1 Kohm",t=0.1,h=1.1,center=true); 
    translate([0,-2.54/2,0.73])rotate([0,0,0])
    color("white") write("2 Kohm",t=0.1,h=1.1,center=true);     
}

    translate([8.2-0.5,-2.54/2,2.77]) pin_femelle_4();
    translate([-8.2+0.5,-2.54/2,2.77]) pin_femelle_6();

 module pin_femelle_4()
 {
         for (i = [-1:2])  
          {
       color("lightblue")translate ([0,i*2.54,-3]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
          
         for (i = [-1:2])  
          {
              difference()
              {
        color("black")translate ([ 0, i*2.54,(4/3.5)+0.78]) cube ([2.40+0.15,2.40+0.15,7.80], center=true ); 
        color("lightblue")translate ([ 0, i*2.54,(4/3.5)+0.78+0.6]) cube ([2.40-1.10,2.40-1.10,6.80], center=true );         
              }  
          }
                   
 }
 module pin_femelle_6()
 {
         for (i = [-1:2])  
          {
       color("lightblue")translate ([0,i*2.54,-3]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
          
         for (i = [-2:3])  
          {
              difference()
              {
        color("black")translate ([ 0, i*2.54,(4/3.5)+0.78]) cube ([2.40+0.15,2.40+0.15,7.80], center=true ); 
        color("lightblue")translate ([ 0, i*2.54,(4/3.5)+0.78+0.6]) cube ([2.40-1.10,2.40-1.10,6.80], center=true );         
              }  
          }
                   
 } 
translate([0,-2.54-2.54/2,1.7]) resistance_1K();
translate([0,-2.54/2,1.7]) resistance_2K();
 
 
module resistance_1K()
{
color("Bisque")translate ([0, 0, 0]) rotate([90,0,90]) cylinder (r=0.90, h=6.5, $fn=60, center=true );
color("Bisque")translate ([-3.3, 0, 0]) sphere(d = 1.802, $fn=50, center=true );
color("Bisque")translate ([3.3, 0, 0]) sphere(d = 1.802, $fn=50, center=true );
color("lightblue")translate ([8.2-0.5-2.54,0,-2-0.25]) cylinder (r=0.35, h=5.10-0.5, $fn=60, center=true );
color("lightblue")translate ([8.2-0.5-2.54-1.3,0,0]) rotate([0,90,0]) cylinder (r1=0.30,r2=0.20, h=2, $fn=60, center=true );
color("lightblue")translate ([8.2-0.5-1.75-0.8,0, 0]) sphere(d = 0.74, $fn=50, center=true );
color("lightblue")translate ([-8.2+0.5+2.54,0,-2-0.25]) cylinder (r=0.35, h=5.10-0.5, $fn=60, center=true );  
color("lightblue")translate ([-8.2+0.5+2.54+0.8,0,0]) rotate([0,90,0]) cylinder (r1=0.20,r2=0.30, h=2, $fn=60, center=true );
color("lightblue")translate ([-8.2+0.5+1.75+0.8,0, 0]) sphere(d = 0.74, $fn=50, center=true ); 
color("Brown")translate ([-2.54, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true );  
color("Black")translate ([-2.54/2, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true ); 
color("Red")translate ([0, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true ); 
color("Silver")translate ([2.54, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true );       
}

module resistance_2K()
{
color("Bisque")translate ([0, 0, 0]) rotate([90,0,90]) cylinder (r=0.90, h=6.5, $fn=60, center=true );
color("Bisque")translate ([-3.3, 0, 0]) sphere(d = 1.802, $fn=50, center=true );
color("Bisque")translate ([3.3, 0, 0]) sphere(d = 1.802, $fn=50, center=true );
color("lightblue")translate ([8.2-0.5-2.54,0,-2-0.25]) cylinder (r=0.35, h=5.10-0.5, $fn=60, center=true );
color("lightblue")translate ([8.2-0.5-2.54-1.3,0,0]) rotate([0,90,0]) cylinder (r1=0.30,r2=0.20, h=2, $fn=60, center=true );
color("lightblue")translate ([8.2-0.5-1.75-0.8,0, 0]) sphere(d = 0.74, $fn=50, center=true );
color("lightblue")translate ([-8.2+0.5+2.54,0,-2-0.25]) cylinder (r=0.35, h=5.10-0.5, $fn=60, center=true );  
color("lightblue")translate ([-8.2+0.5+2.54+0.8,0,0]) rotate([0,90,0]) cylinder (r1=0.20,r2=0.30, h=2, $fn=60, center=true );
color("lightblue")translate ([-8.2+0.5+1.75+0.8,0, 0]) sphere(d = 0.74, $fn=50, center=true ); 
color("Red")translate ([-2.54, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true );  
color("Black")translate ([-2.54/2, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true ); 
color("Red")translate ([0, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true ); 
color("Silver")translate ([2.54, 0, 0]) rotate([90,0,90]) cylinder (r=0.901, h=0.4, $fn=60, center=true );       
}
} 

module dt06()
{
   translate([-11.6,0,25.5]) rotate([180,90,0]) pin_avant();
   translate([-12.551,0,28.6]) rotate([0,90,0]) ESP12();
   //PCB Bleu  
   color ("Grey")translate ([-12.13,0,25.6]) cube([2,17.35,34.05], center = true);


   color ("DimGray")translate ([-12.13+1.25,-6,18]) cube([0.5,1.4,2.2], center = true);
   color ("Linen")translate ([-12.13+1.14,-6+1.5,18]) cube([0.3,0.8,1.2], center = true);
   color ("DarkGray")translate ([-12.13+1.14,-6+1.5+1.3,18]) cube([0.3,0.8,1.2], center = true);
       
   color ("DarkGray")translate ([-12.13+1.14,6-1.5+1.3-1,18]) cube([0.3,0.8,1.2], center = true);
   color ("DarkGray")translate ([-12.13+1.14,6-1.5+1.3-1.5-1,18]) cube([0.3,0.8,1.2], center = true);
   color ("DarkGray")translate ([-12.13+1.14,6-1.5+1.3+1.5-1,18]) cube([0.3,0.8,1.2], center = true); 
   color ("DarkGray")translate ([-12.13+1.14,6-1.5+1.3-1.3-1,13.5]) cube([0.3,0.8,1.2], center = true);  
   color ("DarkGray")translate ([-12.13+1.14,-3.6,13.5]) cube([0.3,0.8,1.2], center = true);   
    color ("DarkGray")translate ([-12.13+1.14,-2.2,13.5]) cube([0.3,0.8,1.2], center = true); 

   color ("Black")translate ([-12.13+1.14,1.0,13.5]) cube([0.3,3.5,1.75], center = true);
   color ("Silver")translate ([-12.13+1.25,-6,14]) cube([0.5,3.0,3.9], center = true);
   color ("Silver")translate ([-12.13+1.25,6,14]) cube([0.5,3.0,3.9], center = true);
   color("Black")rotate([0,90,0]) translate([-14,-6.0,-10.6])cylinder($fa=60,$fn=60,h=0.63,r1=1.0,r2=1.0,center=true);    
   color("Black")rotate([0,90,0]) translate([-14,6.0,-10.6])cylinder($fa=60,$fn=60,h=0.63,r1=1.0,r2=1.0,center=true); 
   if(afficher_texte=="o") texte_dt06();
}
 
module ESP12()
{
difference()
{
 color("Black") translate([-3.75,0,0.72/2+1.42]) cube([20.45,16.05-3.7,0.72],center=true);
 translate([-6.4,0,1.42])  
 for (i = [0:8])  
 {
  color("LightGrey")translate([i*1.53,6.3,0])cylinder($fa=60,$fn=60,h=1.63,r1=0.4,r2=0.4,center=true);                            
 }
 translate([-5.7,0,1.42])  
 for (i = [1:8])  
 {           
  color("LightGrey")translate([i*1.65,-6.3,0])cylinder($fa=60,$fn=60,h=1.63,r1=0.4,r2=0.4,center=true);               
 }
}
translate([0,0.8,0]) logo();
module logo()
{
color("Gold") translate([-13.3,4.8-1,0.72/2+1.42+0.01]) cube([0.4,2.0,0.72],center=true);
color("Gold") translate([-11.1,3,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-9.0,2.25,0.72/2+1.42+0.01]) cube([0.4,1.9,0.72],center=true);
color("Gold") translate([-9.0,2.25-6.3,0.72/2+1.42+0.01]) cube([0.4,1.7,0.72],center=true);
color("Gold") translate([-11.1,2.7-1.55+0.35,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35,0.72/2+1.42+0.01]) cube([0.4,1.9,0.72],center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35-3,0.72/2+1.42+0.01]) cube([0.4,1.9,0.72],center=true);
color("Gold") translate([-9.0-4.3,1.75-1.35+0.35-6.4+0.15,0.72/2+1.42+0.01]) cube([0.4,2,0.72],center=true);
color("Gold") translate([-11.1,2.7-1.7-1.35+0.35,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-9.0,1.75-3.8+1.3,0.72/2+1.42+0.01]) cube([0.4,1.9,0.72],center=true);
color("Gold") translate([-11.1,2.7-1.7-1.7-1.7+0.90,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-11.1,2.7-1.7-1.7-1.7-1.7+0.90+0.2,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-11.1,2.7-1.7-1.7-1.7-1.7-1.7+0.90+0.2,0.72/2+1.42+0.01]) cube([4.6,0.4,0.72],center=true);
color("Gold") translate([-10.1,2.7-1.7-1.7-1.7-1.7-1.7-1.7+0.90+0.3,0.72/2+1.42+0.01]) cube([6.8,0.4,0.72],center=true);
color("Gold") translate([-9.0+2.2,1.7-4.58+1.3,0.72/2+1.42+0.01]) cube([0.4,9.6,0.72], center=true);
}
//support wifi ESP8266
color("Silver") translate([0.00,0,2.22/2+1.42+0.001]) cube([12.65,10.35,1.32],center=true);   
} 


 module texte_dt06()
{   
    translate([-13.12,3.9+2.54,12.7])rotate([0,-90,0])
    color("white") write("EN",t=0.1,h=1.1,center=true);      
    translate([-13.12,3.9,13.1])rotate([0,-90,0])
    color("white") write("VCC",t=0.1,h=1.1,center=true);  
    translate([-13.12,3.9-2.54,13.1])rotate([0,-90,0])
    color("white") write("GND",t=0.1,h=1.1,center=true); 
    translate([-13.12,3.9-2.54*2,13.1])rotate([0,-90,0])
    color("white") write("TXD",t=0.1,h=1.1,center=true); 
    translate([-13.12,3.9-2.54*3,13.1])rotate([0,-90,0])
    color("white") write("RXD",t=0.1,h=1.1,center=true); 
    translate([-13.12,3.9-2.54*4,13.85])rotate([0,-90,0])
    color("white") write("STATE",t=0.1,h=1.1,center=true);  
    translate([-13.12,3.9-2.54*2,16.05])rotate([90,0,-90])
    color("white") write("LEVEL 3.3V",t=0.1,h=1.1,center=true);
    translate([-11.14,3.9-2.54*2+1,15.7])rotate([90,0,90])       
    color("white") write("TTL-WIFI",t=0.1,h=1.1,center=true); 
    translate([-11.14,3.9-2.54*2+1,17.9])rotate([90,0,90])       
    color("white") write("DOIT",t=0.1,h=1.1,center=true); 
}

module pin_avant()
{
    for (i = [-3:2])  
          {
           color("Lightblue") translate([36.1,i*2.54,1.3]) rotate([0,180,0]) translate([20,2.54/2,4.5]) arrondie();
          }
    translate([15.2,2.54/2,-1.8])  
    for (i = [-3:2])  
          {
            color("Lightblue")translate([0.015,i*2.54,2])cube([0.315*2,0.315*2,6.83],center=true);                
          }  
          
    rotate([0,90,0]) translate([4.085,2.54/2,19.8])  
    for (i = [-3:2])  
          {
           color("Lightblue")translate([0,i*2.54,0])cube([0.315*2,0.315*2,7.40],center=true);       
          } 
         
    for (i = [-3:2])  
          {
        color("Black")translate ([18.60/2+2.54*2+0.9,i*2.54+2.54/2,-(4/3.5)-0.49]) cube ([2.40+0.10,2.40,2.30], center=true );   
          } 
    //soudure cylindrique à l'avant
    for (i = [-3:2])  
          {
        color("Grey")translate ([18.60/2+2.54*2+0.9,i*2.54+2.54/2,1.55]) cylinder($fa=12,$fn=60,h=1.93,r1=1.1,r2=0.6,center=false); 
          }      
}


module arrondie()
{
 difference() 
 {
  difference()
  {
   rotate([90,90,0]) cylinder(h=0.63,r=1.2,$fn=200,center=true);
   translate([0,0,-0.75]) cube([2.45,0.632,1.5],center=true); 
  translate([-0.6,0,0.5]) cube([1.2,0.632,1.42],center=true);         
  }
   translate([0,0,0])rotate([90,90,0])cylinder(h=0.632,r=0.569,$fn=200,center=true);
 }
}

