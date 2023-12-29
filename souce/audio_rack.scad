$fn=50;

// アンプ
module amp(){

	// 上部
	translate([0, 0, 22.5]){

		#cube([115, 90, 40], center=true);

	}

	// 下部
	translate([0, 0, 2.5]){

		cube([140, 90, 1], center=true);
	}


}

// ネジ止め用の穴
module screw_hole(){

	for(i=[-63, 63], j=[-22, 22]){
		
		translate([i, j, -5]){
		
			cylinder(h=10, d=5.5);

		}

	}


}

// 支柱用の穴
module pillar_hole(){

	for(i=[-140/2, 140/2], j=[-118/2, 118/2]){

		translate([i, j, -5]){

			cylinder(h=10 ,r=5);

		}

	}

}

// 確認用のアンプ
%amp();

difference(){

	// 棚板
	cube([160, 138, 5], center=true);

	screw_hole();

	pillar_hole();

}
