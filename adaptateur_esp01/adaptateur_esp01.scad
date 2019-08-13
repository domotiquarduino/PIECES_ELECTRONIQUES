afficher_module_esp01    ="o"; //o,n
mouvement_hauteur_adapt  ="n"; //o,n
rotation_360_adapt       ="n"; //x,y,z,n
afficher_texte           ="o"; //o,n (A désactiver si Vue-> Animer)

  x=31.82;
  y=47.82;
  z=6.00;
  
  x1=23.95;
  y1=42.15;
  z1=1.65; 


 if(rotation_360_adapt=="y" && mouvement_hauteur_adapt =="o")
 {       
  rotate([360*$t,0,0]) translate([-x1/2,-y1/2,0]) translate([0,0,50]) translate([0,0,-50.3*$t]) adaptateur_esp01();
 }
 else if (rotation_360_adapt=="x" && mouvement_hauteur_adapt =="o") 
 {       
  rotate([0,360*$t,0]) translate([-x1/2,-y1/2,0]) translate([0,0,50]) translate([0,0,-50.3*$t]) adaptateur_esp01();
 }
 else if (rotation_360_adapt=="z" && mouvement_hauteur_adapt =="o") 
 {       
  rotate([0,0,360*$t]) translate([-x1/2,-y1/2,0]) translate([0,0,50]) translate([0,0,-50.3*$t]) adaptateur_esp01();
 }
 else if(rotation_360_adapt=="y" && mouvement_hauteur_adapt =="n")
 {       
  rotate([360*$t,0,0]) translate([-x1/2,-y1/2,0]) adaptateur_esp01();
 }
 else if (rotation_360_adapt=="x" && mouvement_hauteur_adapt =="n") 
 {       
  rotate([0,360*$t,0]) translate([-x1/2,-y1/2,0]) adaptateur_esp01();
 }
 else if (rotation_360_adapt=="z" && mouvement_hauteur_adapt =="n") 
 {       
  rotate([0,0,360*$t]) translate([-x1/2,-y1/2,0]) adaptateur_esp01();
 }
 else if(rotation_360_adapt=="n" && mouvement_hauteur_adapt =="o")
 {       
  translate([-x1/2,-y1/2,z1/2+2.21]) translate([0,0,50]) translate([0,0,-50.3*$t]) adaptateur_esp01();
 } 
 if(afficher_module_esp01=="o") translate([-x1/2,-y1/2,0]) adaptateur_esp01();

module adaptateur_esp01()
{
  difference()
  {
    color("Blue")   translate([0,0,0.825]) cube_arrondi(x1,y1,z1,1.52);
     
                  for ( i = [-1 : 2] )
                  {
                   translate([i*2.54,0,0.1/2])                   
                    {
                      translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0]) cylinder(2,1.0,1.0,$fn=40,center=true);
                    }
                  }
 
                  for ( i = [-1 : 2] )
                  {
                   translate([i*2.54,18.5,0.1/2])                   
                    {
                      translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0]) cylinder(2,1.0,1.0,$fn=40,center=true);
                    }
                  }
                  
                  for ( i = [-1 : 2] )
                  {
                   translate([i*2.54,18.5-2.54,0.1/2])                   
                    {
                      translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0]) cylinder(2,1.0,1.0,$fn=40,center=true);
                    }
                  }
                          
             translate([x1/2-10.6,y1/2-19.7,0])cylinder(2.1,0.8,0.8,$fn=40,center=true);
             translate([x1/2+10.6,y1/2-19.7,0])cylinder(2.1,0.8,0.8,$fn=40,center=true);
             translate([x1/2+10.6,y1/2+19.7,0])cylinder(2.1,0.8,0.8,$fn=40,center=true);
             translate([x1/2-10.6,y1/2+19.7,0])cylinder(2.1,0.8,0.8,$fn=40,center=true);                
  } 
 
 color("Black")translate([x1/2-5,y1/2-11,z1-0.23])cube([4.4,2.3,1.2],center=true ); 
 color("Black")translate([x1/2+0.2,y1/2-11,z1-0.23])cube([2.7,1.1,1.2],center=true );
 color("Black")translate([x1/2+0.2+4.5,y1/2-11,z1-0.23])cube([2.7,1.1,1.2],center=true ); 
 color("DimGray")translate([x1/2-3.5,y1/2-15.8,z1-0.23-0.4])cube([1.1,2.5,0.8],center=true );
 color("DimGray")translate([x1/2-3.5,y1/2-6.5,z1-0.23-0.4])cube([1.1,2.5,0.8],center=true );
 color("DimGray")translate([x1/2+0.2+4.5,y1/2-11-4.3,z1-0.23])cube([3.3,1.5,1.2],center=true );


color("LightGrey")translate([x1/2-5-1.4,y1/2-11-1.33,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true ); 
color("LightGrey")translate([x1/2-5-1.4+2.80,y1/2-11-1.33,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true ); 
color("LightGrey")translate([x1/2-5-1.4+1.4,y1/2-11-1.33,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true ); 
  
color("LightGrey")translate([x1/2-5-1.4+1.4,y1/2-11+1.35,z1-0.23-0.31])cube([1.2,0.6,0.6],center=true );
  
color("LightGrey")translate([x1/2-5-1.4+6.6+0.8,y1/2-11+0.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );
  
color("LightGrey")translate([x1/2-5-1.4+6.6-0.8,y1/2-11+0.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );
  
color("LightGrey")translate([x1/2-5-1.4+6.6,y1/2-11.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );
  
color("LightGrey")translate([x1/2-5-1.4+6.6+4.5,y1/2-11.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6+0.8+4.5,y1/2-11+0.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );
  
color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.5,y1/2-11+0.75,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1,y1/2-16.3,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+2.4,y1/2-16.3,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+0.8,y1/2-16.3,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+1.6,y1/2-16.3,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1,y1/2-16.3+1.95,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+2.4,y1/2-16.3+1.95,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+0.8,y1/2-16.3+1.95,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );

color("LightGrey")translate([x1/2-5-1.4+6.6-0.8+4.1+1.6,y1/2-16.3+1.95,z1-0.23-0.31])cube([0.6,0.6,0.6],center=true );
  
    for (i = [-1:2])  
          { 
            translate([i*2.54,0,0.3])                   
            {      
        color("lightblue")translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0.1/2])cube([0.315*2,0.315*2,6.83],center=true );         
            }
          }
          
     for (i = [-1:2])  
          {
           translate([i*2.54,-0.883,3.42+0.25])                   
            {                
           color("lightblue") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0.1/2]) arrondie();
            } 
          }
          
    for (i = [-1:2]) 
          { 
            translate([i*2.54,0,0.1/2])           
          {
           color("black") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9]) cube([2.40+0.10,2.40,2.30],center=true);
          }   
          }
          
     for (i = [-1:2])  
          {
           translate([i*2.54,0,-4.66])                   
            {                  
           color("grey") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9]) cylinder($fa=12,$fn=60,h=1.93,r1=0.6,r2=1.1,center=false); 
            }     
          }
         
     for (i = [-1:2])  
          {
           translate([i*2.54,18.5,-4.66])                   
            {                  
           color("grey") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9]) cylinder($fa=12,$fn=60,h=1.93,r1=0.6,r2=1.1,center=false); 
            }     
          } 
     for (i = [-1:2])  
          {
           translate([i*2.54,18.5-2.54,-4.66])                   
            {                  
           color("grey") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9]) cylinder($fa=12,$fn=60,h=1.93,r1=0.6,r2=1.1,center=false); 
            }     
          }   
 
    for (i = [-1:2])  
          {
           rotate([90,0,0])  translate([i*2.54,2.53923,0.11])           
           {                 
           color("lightblue") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9]) cube([0.315*2,0.3158*2,6.4],center=true);
           }       
          }   
  
    for (i = [-1:2])  
          { 
            translate([i*2.54,18.5,0.3])                   
            {      
             color("lightblue")translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0.1/2]) cube([0.315*2,0.315*2,6.83],center=true);         
            }
          }   
   
    for (i = [-1:2])  
          { 
            translate([i*2.54,18.5-2.54,0.3])                   
            {      
             color("lightblue")translate([x1/2-(2.54/2),y1/2-(y/2-4.9),0.1/2]) cube([0.315*2,0.315*2,6.83],center=true);         
            }
          }  
     
    difference()
    {
    for (i = [-1:2]) 
          { 
           translate([i*2.54,18.5-0.05,0.1/2])           
          {
           color("black") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9+3.6]) cube([2.40+0.10,2.40,9.5],center=true);
          }   
          } 
          
    for (i = [-1:2]) 
          { 
           translate([i*2.54,18.5-0.05,0.1/2])           
          {
           color("lightblue") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9+3.6+2.5]) cube([2.40+0.10-0.3,2.40-0.3,9.5+0.5],center=true);
          }   
          }           
          
   }
    difference()
    {   
    for (i = [-1:2]) 
          { 
           translate([i*2.54,18.5-2.49,0.1/2])           
          {
           color("black") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9+3.6]) cube([2.40+0.10,2.40,9.5],center=true);
          }   
          }     
    for (i = [-1:2]) 
          { 
           translate([i*2.54,18.5-2.49,0.1/2])           
          {
           color("lightblue") translate([x1/2-(2.54/2),y1/2-(y/2-4.9),1.9+3.6+2.5]) cube([2.40+0.10-0.3,2.40-0.3,9.5+0.5],center=true);
          }   
          }           
    
   }
   
   color("White") translate([x1/2,y1/2-4.25,0.776]) cube([12.8,0.2,0.1], center=true);
   color("White") translate([x1/2+6.5,y1/2+7.65,0.776]) cube([0.2,24,0.1], center=true);
   color("White") translate([x1/2-6.5,y1/2+7.65,0.776]) cube([0.2,24,0.1], center=true);
   color("White") translate([x1/2,y1/2+19.55,0.776]) cube([12.8,0.2,0.1], center=true);
   color("White") translate([x1/2-6.5+1,y1/2+7.65+8.6,0.776]) cube([0.2,5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65,y1/2+7.65+11.2,0.776]) cube([1.5,0.2,0.1], center=true);
   color("White") translate([x1/2-6.5+1+1.3,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+1.30,y1/2+7.65+7.7,0.776]) cube([1.5,0.2,0.1], center=true);
   color("White") translate([x1/2-6.5+1+1.3+1.30,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+2.60,y1/2+7.65+11.2,0.776]) cube([1.5,0.2,0.1], center=true);
   color("White") translate([x1/2-6.5+1+1.3+1.30+1.3,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+1.30+2.6,y1/2+7.65+7.7,0.776]) cube([1.5,0.2,0.1], center=true); 
   color("White") translate([x1/2-6.5+1+1.3+1.30+1.3+1.3,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);  
   color("White") translate([x1/2-6.5+1+1.3+1.30,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+2.60+2.60,y1/2+7.65+11.2,0.776]) cube([1.5,0.2,0.1], center=true); 
   color("White") translate([x1/2-6.5+1+1.3+1.30+3.90,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+1.30+2.6+2.60,y1/2+7.65+7.7,0.776]) cube([1.5,0.2,0.1], center=true);
   color("White") translate([x1/2-6.5+1+1.3+1.30+3.90+1.3,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1+1.3+1.30,y1/2+7.65+8.6+0.75,0.776]) cube([0.2,3.5,0.1], center=true);
   color("White") translate([x1/2-6.5+1.65+2.60+2.60+3.85,y1/2+7.65+11.2,0.776]) cube([4.0,0.2,0.1], center=true);
   
   if(afficher_texte=="o")translate([x1/2,y1/2,-(z1/2+2.21)]) texte_esp01();
}    


module arrondie()
{
difference() 
{
  difference()
  {
  rotate([0,90,0]) cylinder(h=0.63,r=1.2,$fn=200,center=true);
  rotate([0,0,90]) translate([0,0,-0.75]) cube([2.45,0.632,1.5],center=true); 
  rotate([0,0,90]) translate([-0.6,0,0.5]) cube([1.2,0.632,1.42],center=true);         
  }
   translate([0,0,0])rotate([0,90,0])cylinder(h=0.632, r=0.569,$fn=200,center=true);
}
}

module cube_arrondi(xdim,ydim,zdim,rdim)
{
 $fn=64;
 hull()
 {
  translate([rdim,rdim,-zdim/2]) cylinder(r=rdim, h=zdim, center=true);    
  translate([xdim-rdim,rdim,-zdim/2]) cylinder(r=rdim, h=zdim , center=true);    
  translate([rdim,ydim-rdim,-zdim/2]) cylinder(r=rdim, h=zdim, center=true);
  translate([xdim-rdim,ydim-rdim,-zdim/2]) cylinder(r=rdim, h=zdim, center=true);         
 }      
       
}


module texte_esp01()
{
    //texte face supérieure 
    color("white") translate([-0.90,12.3,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("ESP-01", font = "Arial", size=1.8, spacing=1.0);
    color("white") translate([-9.80,13.1,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("ESP-01 Adapter", font = "Arial", size=1.6, spacing=0.95);   
    color("white") translate([-11.5,12.9,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("V1.0", font = "Arial", size=0.8, spacing=1.0);
    
     color("white") translate([7.90,-18.3,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("RX", font = "Arial", size=1.1, spacing=1.0); 
     color("white") translate([7.90-2.0,-18.3,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("TX", font = "Arial", size=1.1, spacing=1.0);     

     color("white") translate([-7.0,-17.2,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("VCC", font = "Arial", size=1.1, spacing=1.0);  
     color("white") translate([-7.0-2.0,-17.2,2.221+2]) rotate([0,0,-90]) linear_extrude(height=0.01105) text("GND", font = "Arial", size=1.1, spacing=1.0);     
   //texte face inférieure    
   color("white") translate([9.3,-7.3,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("ESP-01 Adapter", font = "Arial", size=1.3, spacing=1.1);    
   color("white") translate([0.7+2.54,-17.5,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("RX", font = "Arial", size=1.1, spacing=1);
   color("white") translate([0.7,-17.5,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("TX", font = "Arial", size=1.1, spacing=1);
   color("white") translate([0.7-2.54,-17.5,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("VCC", font = "Arial", size=1.1, spacing=1);
   color("white") translate([0.7-(2.54*2),-17.5,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("GND", font = "Arial", size=1.1, spacing=1);    
   color("white") translate([5.4,0.5,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("OPEN-SMART", font = "Arial", size=1.0, spacing=1);    
   color("white") translate([7.8,-7.15,2.221-0.01]) rotate([180,0,90]) linear_extrude(height=0.01105) text("V1.0", font = "Arial", size=0.8, spacing=1);     
    

    
}