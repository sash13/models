base_inner=51.6;
base_head_w=10;
base_head_h=8;
base_h=1;
base_w=51;
base_l=base_inner+2*base_head_w;

gorb_h = 2;
gorb_s = 1;
gorb_w = 8+gorb_s*2;

kat_h = 6;
kat_w = 8;
kat_g = 4;

add = 1;

pok = 27;
hole_r = 0.9;

$fn=50;

difference() {
	//main body
	union() {
		//base
		translate([-base_l/2,-base_w/2,0]) 
			cube([base_l, base_w ,base_h]);
			

		translate([-pok/2-kat_w,-base_w/2+base_head_h,0]) 
			difference() {
				cube([kat_w, kat_g ,kat_h]);
				translate([kat_w/2,kat_g/2,kat_h/2]) rotate(a=[90,0,0])
					 cylinder(h=kat_g+2, r=hole_r, center = true);

			}	
		translate([pok/2,-base_w/2+base_head_h,0]) 
			difference() {
				cube([kat_w, kat_g ,kat_h]);
				translate([kat_w/2,kat_g/2,kat_h/2]) rotate(a=[90,0,0])
					 cylinder(h=kat_g+2, r=hole_r, center = true);

			}	

		translate([-pok/2-kat_w,base_w/2-base_head_h-kat_g,0]) 
			difference() {
				cube([kat_w, kat_g ,kat_h]);
				translate([kat_w/2,kat_g/2,kat_h/2]) rotate(a=[90,0,0])
					 cylinder(h=kat_g+2, r=hole_r, center = true);

			}	
		translate([pok/2,base_w/2-base_head_h-kat_g,0]) 
			difference() {
				cube([kat_w, kat_g ,kat_h]);
				translate([kat_w/2,kat_g/2,kat_h/2]) rotate(a=[90,0,0])
					 cylinder(h=kat_g+2, r=hole_r, center = true);

			}	

		//gorb
		difference() {
			translate([-base_l/2,-gorb_w/2, 0]) 
				cube([base_l, gorb_w ,gorb_h+base_h]);	
	
			translate([-base_l/2-add,-(gorb_w-gorb_s*2)/2, base_h+0.1]) 
				cube([base_l+add*2, gorb_w-gorb_s*2 ,gorb_h+base_h]);				
		}
		
	}
	//left/righr diff
	translate([-base_l/2+base_head_w,-base_w/2-add, -base_h/3])
		cube([base_inner, base_head_h+add ,base_h*2]);

	translate([-base_l/2+base_head_w, base_w/2-base_head_h, -base_h/3])
		cube([base_inner, base_head_h+add ,base_h*2]);

}