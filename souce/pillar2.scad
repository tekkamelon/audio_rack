$fn=50;

module target(){

	cylinder(h=20, r=5);

	translate([0, 0, 20]){

		cylinder(h=3, r1=5, r2=8);

	}

	translate([0, 0, 23]){

		cylinder(h=10, r=8);

	}

}

module tool(){

	translate([0, 0, 20]){

		cylinder(h=3, r1=5.2-3, r2=8.2-3);

	}

	translate([0, 0, 23]){

		cylinder(h=10, r=5.2);

	}

}
difference(){

	%target();

	#tool();

}

