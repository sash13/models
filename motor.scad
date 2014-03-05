motor_r = 7/2;
motor_h = 20;
wall = 1;
diff = 0.0;
plank = 3+0.06;
hight=wall*3+plank;
plank_with = 8+0.1;
up = 7.5;

$fn=100;

union() {

	difference() {
		translate ([0,0,up-1.6]) 
		cylinder(h=motor_h-4, r=motor_r+wall);
		translate ([0,0,-0.1+up-4]) 
		cylinder(h=motor_h+8, r=motor_r-diff);

	}
	difference() {
		union() {
			translate ([0,0,0]) {
				cylinder(h=hight-diff, r=motor_r+wall*2);
				translate ([-(motor_r+wall)-0.5,3-1,0]) 
				cube([(motor_r+wall)*2+1,12,plank*2-1]);
			}
		}

		translate ([-plank_with/2,-15,-6.1+up-0.5]) cube([plank_with,40,plank]);
		translate ([-3,-2,-2.3+up]) cube([6,30,wall+0.8]);
	}
}