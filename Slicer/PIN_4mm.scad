$fn=130;

D_sock=8; //Sockeldurchmesser
D_kubb=4.2;  //Knubbeldurchmesser
H_sock=10; //Sockelhöhe
//Schaftdurchmesser=Knubbeldurchmesser-0.5

//Sockel
H=H_sock-6;color("Gray")
translate([0,0,H*-1])
cylinder (h=H_sock, d=D_sock);

difference(){

//Knubbl
color("Silver")       
union(){
translate([0,0,10])
cylinder (h=1, d1=D_kubb, d2=D_kubb-2);
translate([0,0,8])
cylinder (h=1, d1=D_kubb-0.5, d2=D_kubb);
translate([0,0,9])
cylinder (h=1, d1=D_kubb, d2=D_kubb);
//Schaft
translate([0,0,6])
cylinder (h=2, d=D_kubb-0.5);   
}


//Einschnitt
translate([-0.3,-2.5,7])
 cube([0.7,5,7]);
}