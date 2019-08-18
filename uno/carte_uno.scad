//Arduino uno

//___________________________________VARIABLES__________________________________
afficher_arduino  ="o"; //o,n
afficher_texte    ="o"; //o,n
afficher_anneau   ="n"; //o,n
rotation_360      ="x"; //x,y,z,f,n
mouvement_hauteur ="n"; //o,n


//___________________________________ANIMATIONS__________________________________
//Mettre :     FPS : 50  -----------    Etapes : 50    -----------
if(afficher_arduino=="o")
{
if(rotation_360=="z" && mouvement_hauteur=="o")
translate([0,0,42]) rotate([0,0,360*$t]) 
translate([0,0,-45*$t]) translate([0,0,2.2]) arduino_uno();
else if(rotation_360=="y" && mouvement_hauteur=="o")
translate([0,0,45]) rotate([0,-360*$t,0])
translate([0,0,-45*$t]) arduino_uno(); 
else if(rotation_360=="x" && mouvement_hauteur=="o")
translate([0,0,45]) rotate([360*$t,0,0])
translate([0,0,-45*$t]) arduino_uno();
else if(rotation_360 =="n" && mouvement_hauteur=="o")
translate([0,0,45]) translate([0,0,-45*$t]) arduino_uno();
else if(rotation_360 =="f")
{
 arduino_uno();
 if(afficher_anneau =="o")arduino_uno_anneau();   
}
else if(rotation_360=="x" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([360*$t,0,0]) arduino_uno();
else if(rotation_360=="y" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([0,360*$t,0]) arduino_uno();
else if(rotation_360=="z" && mouvement_hauteur=="n")translate([0,0,1.85]) 
rotate([0,0,360*$t]) arduino_uno();
else if(rotation_360=="n" && mouvement_hauteur=="n")
{ 
rotate([0,0,-90]) arduino_uno();
if(afficher_anneau =="o") rotate([0,0,-90]) arduino_uno_anneau();
}
else
{ }
}

//___________________________________MODULES__________________________________
module arduino_uno() 
{
    
    //atmega328P
    translate([9.6,14.15,1.73]) support_atmega328P();
    translate([9.6,14.15,1.75]) atmega328P();
    if(afficher_texte=="o") translate([0,0,-1.85]) texte_uno();
   
	translate([-53.7/2,-68/2,0]) 
    {	
		difference() 
        {
			union() 
            {
                //socle bas
		color("SteelBlue") cube([53.7, 67, 1.8]);
                              
                //partie arrière socle bas
		color("SteelBlue") translate([12,67,0]) cube([38.9, 1, 1.8]);
                
                //pin femelles
                translate([2.25,56.3,0]) pin_femelle_8();
                translate([2.25,56.3-(2.54*10),0]) pin_femelle_10();
                translate([51.50,58.85,0]) pin_femelle_6();
                translate([51.50,58.85-(2.54*8),0]) pin_femelle_8();
                        
                //condensateur
		color("LightGrey") translate([45.5,20.9,4.05]) cylinder(r=3.1, h=4.5, center=true, $fn=55);
		color("LightGrey") translate([45.5,28.4,4.05]) cylinder(r=3.1, h=4.5, center=true, $fn=55);
                
                //usb carré
                difference()
                {
		         color("LightGrey") translate([9.6,-6.7,1.8]) cube([12,16.2,10.5]);
                 color("lightblue") translate([9.6+1,-6.7-0.1,1.8+1]) cube([12-2,16.2-2,10.5-2]);   
                }
                color("white") translate([9.6+1+1.5,-6.7-0.1,1.8+1+2.5]) cube([12-2-3,16.2-2,10.5-2-5]);
                
                //bouton reset
		        color("LightGrey") translate([22.9-22.5,52.6-49,1.8]) cube([6,6,2]);
		        color("RosyBrown") translate([25.9-22.5,55.6-49,4.05]) cylinder(r=1.5, h=1, center=true, $fn=25);
                
                //pin ICSP1
                translate([22.22,63.83,0]) pin_male_2();
                translate([22.22+2.54,63.83,0]) pin_male_2();
                translate([22.22+2.54+2.54,63.83,0]) pin_male_2();

                //pin ICSP2
                rotate([0,0,90]) translate([16.5+(2.54*2),-8.2,0]) pin_male_2();
                rotate([0,0,90]) translate([16.5+2.54,-8.2,0]) pin_male_2();
                rotate([0,0,90]) translate([16.5,-8.2,0]) pin_male_2();               
                
                
                //sortie jack alim
                difference()
                {                
		 color("black") translate([41.2,-2,1.8]) cube([9,3.5,11]);                    
                 color("lightblue") rotate([90,0,0]) translate([45.5,8.2,-1.05]) cylinder(r=3.6, h=7.5, center=true, $fn=55);    
	        }
                difference()
                {  
                 color("black") rotate([90,0,0]) translate([45.5,8.2,-5.05]) cylinder(r=4.5, h=9.5, center=true, $fn=55);
                 color("lightblue") rotate([90,0,0]) translate([45.5,8.2,-1.05]) cylinder(r=3.6, h=7.5, center=true, $fn=55);            }
                 color("black") translate([41.2,1,1.8]) cube([9.0,8.8,2.8]);
                 color("grey") rotate([90,0,0]) translate([45.5,8.2,-1.05]) cylinder(r=1.0, h=7.5, center=true, $fn=55);
                 
                 //TKD 16 000
                 color("LightGrey") translate([26.5,20,1.80])
                 resize ([4.5,9.5,0]) cylinder (r=2, h=2.5, $fn=60);  
                 
                //Atmega 16U2 mini
                color("DimGray") translate([15,17,1.8]) rotate([0,0,0]) cube([6.4,6.4,1.0]); 
                 
                //Led Power
                color("DimGray") translate([45.4,39.0,1.8]) rotate([0,0,0]) cube([1.5,3.0,1.0]); 
  
                //Led ON
                color("DimGray") translate([17.0,57.0,1.8]) rotate([0,0,0]) cube([1.5,3.0,1.0]); 
   
                //Led L
                color("DimGray") translate([17.0,29.0,1.8]) rotate([0,0,0]) cube([1.5,3.0,1.0]); 
    
                //Led TX
                color("DimGray") translate([22.0,29.0,1.8]) rotate([0,0,0]) cube([1.5,3.0,1.0]); 
                //Led RX
                color("DimGray") translate([24.5,29.0,1.8]) rotate([0,0,0]) cube([1.5,3.0,1.0]);            
           }
                                                 
        //contour plaque pCB     
		translate([-1.8,64.2,-.5]) rotate([0,0,45]) cube([6.4,3.6,3]);
		translate([12,67,-.5]) rotate([0,0,38.7]) cube([6.4,3.6,3]);
		translate([45.359,70.2,-.5]) rotate([0,0,-30]) cube([6.4,3.6,3]);              
         //trous de percage fixation
		translate([2.8+0.05,16.3-0.80,0]) cylinder(r=1.5,h=10,center=true,$fn=25);
		translate([17+1.40,66.2-0.2,0]) cylinder(r=1.5,h=10,center=true,$fn=25);
		translate([44.9+1-0.05,66.0,0]) cylinder(r=1.5,h=10,center=true,$fn=25);
		translate([50.9-0.05,15.7-1.7,0]) cylinder(r=1.5,h=10,center=true,$fn=25);             
      }
        //tiges soudure usb carré
        color("LightGrey") translate([9.9,2.5,-2.1]) cube([0.5,1,4.8]);
        color("LightGrey") translate([20.85,2.5,-2.1]) cube([0.5,1,4.8]);
        color("LightGrey")translate([14.0,8.5,0]) cylinder(r=0.60-0.15,h=3.62,center=true,$fn=25);
        color("LightGrey")translate([17.10,8.5,0]) cylinder(r=0.60-0.15,h=3.62,center=true,$fn=25);
        color("LightGrey")translate([17.10,8.5-2.7,0]) cylinder(r=0.60-0.15,h=3.62,center=true,$fn=25);      
        color("LightGrey")translate([14.0,8.5-2.7,0]) cylinder(r=0.60-0.15,h=3.62,center=true,$fn=25);    //soudure usb carré
        color("grey")translate([10.20,2.99,-20.97]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.93,r1=0.65,r2=1.15, center = true);
        color("grey")translate([10.20+10.80,2.99,-20.97]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.93,r1=0.65,r2=1.15, center = true);  
         color("grey")translate([17.10,5.79,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.60,r2=0.80, center = true);
        color("grey")translate([17.10-3.1,5.79,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.60,r2=0.80, center = true);
        color("grey")translate([17.10-3.1,5.79+2.75,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.60,r2=0.80, center = true);
        color("grey")translate([17.10,5.79+2.75,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.60,r2=0.80, center = true);   
      
      
        //tiges sortie jack alim    
        color("LightGrey") translate([50,7.90,-2.1]) cube([0.5,1.2,4.8]);
        color("LightGrey") translate([45,9.55,-2.1]) cube([1.2,0.5,4.8]);
        color("LightGrey") translate([45.3,4.45,-2.1]) cube([0.5,1.2,4.8]);


        //soudure sortie jack alim 
        color("grey")translate([45.55,5.0,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.85,r2=1.15, center = true);   
        color("grey")translate([45.55+4.48,5.0+3.40,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.85,r2=1.15, center = true);
        color("grey")translate([45.55,5.0+4.6,-20.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.85,r2=1.15, center = true);  
       
   }
   
}

module atmega328P()
{
        //atmega328P        
         difference()
         {         
		  color("DarkSlateGray") translate([0,0,2.0+6.0/2]) cube([9.8-1.3,32.5-0.55,6.0/2],center=true);
          color("DarkSlateGray") translate([0,17.0,6.1]) cylinder(r=1.55,h=0.95,$fn=60,center=true);   
         }
               for (i = [0:13])  
              {                          
               color("LightBlue") translate([4.3,i*2.4+2.40/2-2.54*6.5-0.3,3.90]) cube([0.2,0.80,5],center=true);
               color("LightBlue") translate([-4.3,i*2.40+2.40/2-2.54*6.5-0.3,3.90]) cube([0.2,0.80,5],center=true);
              }        
} 

module support_atmega328P()
{     
        //support atmega328P 2x14 broches
        difference()
        {
          color("Grey") translate([0,0,1.8]) cube([9.8,32.5,6.7/2],center=true);           
              for (i = [0:13])  
              {                          
               color("grey") translate([4.1,i*2.4+2.40/2-2.54*6.5-0.3,5.83/2-1]) cylinder(r=0.50, h=5.83, $fn=60,center=true);
               color("grey") translate([-4.1,i*2.40+2.40/2-2.54*6.5-0.3,5.83/2-1]) cylinder(r=0.50,h=5.83,$fn=60,center=true);
              }
             color("grey") translate([0,17.0,1.9]) cylinder(r=1.50,h=3.83,$fn=60,center=true);
             translate([0,0,0.4]) cube([7.0/2,32.5+0.5,6.7/2-2+1],center=true); 
        }
              translate([0,2.40/2,0])
              for (i = [0:13])  
              {         
               color("LightBlue")translate ([4.1,i*2.4-2.54*6.5-0.3,-1.33]) cylinder (r2=0.50,r1=0.32,h=4.98,$fn=60,center=true);
               color("LightBlue")translate ([-4.1,i*2.40-2.54*6.5-0.3,-1.33]) cylinder (r2=0.50,r1=0.32,h=4.98,$fn=60,center=true);
              }
              
               //soudure cylindrique
         for (i = [0:13])  
          {
           color("grey")translate([4.1,i*2.40+1.20-2.54*6.5-0.3,-22.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.4,r2=0.9, center = true);
           color("grey")translate([4.1-8.2,i*2.40+1.20-2.54*6.5-0.3,-22.87]) translate([0,0,20]) cylinder($fa=12,$fn=60,h=1.73,r1=0.4,r2=0.9, center = true); 
          }
}
     
module arduino_uno_anneau() 
{
	translate([-53.7/2,-68/2,0]) 
    {
		translate([2.8+0.05,16.3-0.80,0]) cylinder(r=1.5, h=10, center=true, $fn=25);
		translate([17+1.40,66.2-0.2,0]) cylinder(r=1.5, h=10, center=true, $fn=25);
		translate([44.9+1-0.05,66.0,0]) cylinder(r=1.5, h=10, center=true, $fn=25);
		translate([50.9-0.05,15.7-1.7,0]) cylinder(r=1.5, h=10, center=true, $fn=25);
	}
}

module pin_femelle_6()
 {
      //tiges
         for (i = [-2:3])  
          {
           color("lightblue") translate([0,i*2.54+(-2.54/2),5.7-5]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
          
          
         difference()
         {
          color("black")translate([0,0,5.7]) cube([2.50,2.56*6,7.80], center=true);           
          for (i = [-2:3])  
          {
           color("lightblue") translate([0,i*2.54+(-2.54/2),6.21]) cube([2.10,2.30,6.80], center=true );         
          }  
         }
         
          //soudure cylindrique pin femelle
         for (i = [-2:3])  
          {
           color("grey") translate([0,i*2.54+(-2.54/2),-20.87]) translate([0,0,20]) cylinder(, $fa = 12, $fn = 60, h = 1.73, r1 = 0.6, r2 = 1.1, center=true); 
          }        
 }
 
module pin_femelle_7()
 {
      //tiges
         for (i = [-3:3])  
          {
           color("lightblue") translate([0,i*2.54,5.7-5]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
          
          
         difference()
         {
          color("black") translate([0,0,5.7]) cube([2.50,2.56*7,7.80], center=true);           
         for (i = [-3:3])  
          {
           color("lightblue") translate([0,i*2.54,6.21]) cube([2.10,2.30,6.80], center=true );         
          }  
         }
         
          //soudure cylindrique pin femelle
         for (i = [-3:3])  
          {
           color("grey") translate([0,i*2.54,-20.87]) translate([0,0,20]) cylinder(, $fa = 12, $fn = 60, h = 1.73, r1 = 0.6, r2 = 1.1, center = false); 
          }        
 }
 
module pin_femelle_8()
 {
      //tiges
         for (i = [-4:3])  
          {
           color("lightblue")translate ([0,i*2.54+(2.54/2),5.7-5]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
                   
         difference()
         {
          color("black")translate([0,0,5.7]) cube([2.50,2.56*8,7.80], center=true);           
         for (i = [-4:3])  
          {
          color("lightblue")translate([0,i*2.54+(2.54/2),6.21]) cube([2.10,2.30,6.80],center=true );         
          }  
         }
         
          //soudure cylindrique pin femelle
         for (i = [-4:3])  
          {
           color("grey") translate([0,i*2.54+(2.54/2),-20.87]) translate([0,0,20]) cylinder(, $fa = 12, $fn = 60, h = 1.73, r1 = 0.6, r2 = 1.1, center=true); 
          }        
 }
 
module pin_femelle_10()
 {
      //tiges
         for (i = [-5:4])  
          {
           color("lightblue")translate ([0,i*2.54+(2.54/2),5.7-5]) cylinder (r=0.35, h=5.10, $fn=60, center=true );  
          }
                   
         difference()
         {
        color("black")translate([0,0,5.7]) cube([2.50,2.56*10,7.80], center=true );           
         for (i = [-5:4])  
          {
           color("lightblue")translate([0,i*2.54+(2.54/2),6.21]) cube([2.10,2.30,6.80],center=true );         
          }  
         }
         
          //soudure cylindrique pin femelle
         for (i = [-5:4])  
          {
           color("grey") translate([0,i*2.54+(2.54/2),-20.87]) translate([0,0,20]) cylinder(, $fa = 12, $fn = 60, h = 1.73, r1 = 0.6, r2 = 1.1, center=true); 
          }        
 }

module pin_male_2()
 {
      //pin écran
         for (i = [0:1])  
          {
           color("lightblue")translate([0,i*2.54,5.7-2]) cylinder(r=0.35, h=11.10, $fn=60, center=true );  
          }
          
         for (i = [0:1])  
          {    
           color("black") translate([0,i*2.54,3.21]) cube([2.10,2.30,2.80], center=true ); 
          }
         
          //soudure cylindrique
         for (i = [0:1])  
          {
           color("grey")translate([0,i*2.54,-20.87]) translate([0,0,20]) cylinder(, $fa = 12, $fn = 60, h = 1.73, r1 = 0.6, r2 = 1.1, center = true); 
          }         
 } 
 
 
 
 
 
module texte_uno()
{
    //texte à droite
    color("White") translate([-20.3,31.5,3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("RX<-0",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-20.3,31.5-2.54,3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("TX<-1",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-22.55,31.5-(2.54*2),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("2",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.95,31.5-(2.54*3),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~3",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-22.55,31.5-(2.54*4),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("4",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.95,31.5-(2.54*5),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~5",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.95,31.5-(2.54*6),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~6",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-22.55,31.5-(2.54*7),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("7",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-22.55,31.5-(2.54*9),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("8",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.95,31.5-(2.54*10),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~9",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.35,31.5-(2.54*11),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~10",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.35,31.5-(2.54*12),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("~11",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.85,31.5-(2.54*13),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("12",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-21.85,31.5-(2.54*14),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("13",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("Grey") translate([-20.85,31.5-(2.54*15),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("GND",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([-20.40,31.5-(2.54*16),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("AREF",font="Arial:style=Bold",size=0.75,spacing=1.0);
    //texte à gauche
    color("White") translate([23.1,31.5,3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A5",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-2.54,3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A4",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*2),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A3",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*3),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A2",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*4),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A1",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*5),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("A0",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*7),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("VIN",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("Grey") translate([21.95,31.1-(2.54*8),3.64]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("GND",font="Arial:style=Bold",size=0.75,spacing=1.0);    
    color("White") translate([22.3,9.5,3.6002]) cube([2.2,5,0.1],center=true);
    color("White") translate([23.1,31.5-(2.54*10),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("5V",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*11),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("3.3V",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*12),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("RESET",font="Arial:style=Bold",size=0.75,spacing=1.0);
    color("White") translate([23.1,31.5-(2.54*13),3.64]) rotate([0,0,-180]) linear_extrude(height=0.01105) text("IOREF",font="Arial:style=Bold",size=0.75,spacing=1.0);
    
    color("Grey") translate([19.8,29.1-(2.54*8),3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("POWER",font="Arial:style=Bold",size=1,spacing=1.1);    
    color("White") translate([19.2,11.55,3.6002]) cube([1.8,6.0,0.1],center=true);
    color("White") translate([18.2,8.80,3.6002]) cube([0.2,11.5,0.1],center=true); 
    
    color("Grey") translate([19.8,38.1-(2.54*8),3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("ANALOG IN",font="Arial:style=Bold",size=1,spacing=1.1);
    color("White") translate([19.2,21.95,3.6002]) cube([1.8,8.5,0.1],center=true);    
    color("White") translate([18.2,23.95,3.6002]) cube([0.2,12.5,0.1],center=true);
    color("White") translate([-8.5,46.6-(2.54*8),3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("ON",font="Arial:style=Bold",size=1,spacing=1.1);
    color("White") translate([-8.5,-6.8,3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("L",font="Arial:style=Bold",size=1,spacing=1.1);
    color("White") translate([-8.5+4.9,-6.8-0.9,3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("TX",font="Arial:style=Bold",size=1,spacing=1.1);
    color("White") translate([-8.5+7.3,-6.8-0.9,3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("RX",font="Arial:style=Bold",size=1,spacing=1.1);
    
    color("White") translate([-18.2,12.70,3.6002]) cube([0.2,37.5,0.1],center=true);
    color("Grey") translate([-18.5,-5.9,3.64]) rotate([0,0,90]) linear_extrude(height=0.01105) text("DIGITAL  -  PWM ~",font="Arial:style=Bold",size=1,spacing=1.1); 
    color("White") translate([-19,0.5,3.6002]) cube([1.8,13.2,0.1],center=true);    
    color("White") translate([-22,-7.0,3.6002]) cube([3.3,1.8,0.1],center=true);  
    color("Gray") translate([8.8,21.8,10.11]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("ATMEGA328P-PU",font="Arial:style=Bold",size=1.45,spacing=1.0);
}
 


