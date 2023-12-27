$fn=50;

module target(){

	cylinder(h=20, r=5);

	translate([0, 0, 20]){

		cylinder(h=10, r=2.5);

	}

}

module tool(){

	cylinder(h=10, r=2.7);

	translate([0, 0, 10]){

		sphere(r=2.7);

	}

}

difference(){

	target();

	tool();
	
}

