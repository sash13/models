motor_r = 7;
motor_h = 20;
wall = 2;
diff = 0.1;
plank = 3;
hight=wall*3+plank;
plank_with = 8-diff;
up = 9;

$fn=100;

union() {

	difference() {
		translate ([0,0,up]) 
		cylinder(h=motor_h-2, r=motor_r+wall);
		translate ([0,0,-0.1+up]) 
		cylinder(h=motor_h+5, r=motor_r-diff);

	}
	difference() {
		union() {
		translate ([0,0,-hight+diff*2+up]) {
		cylinder(h=hight-diff, r=motor_r+wall);
		translate ([-(motor_r+wall),0,-hight-diff/2+up]) 
			cube([(motor_r+wall)*2,20,plank*2+0.5]);
		}
}

		translate ([-plank_with/2,-15,-6.1+up]) cube([8,40,plank]);
		translate ([-4,-2,-2+up]) cube([8,30,wall*2]);
	}
}