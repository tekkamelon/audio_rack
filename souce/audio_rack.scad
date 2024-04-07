$fn=50;

board_x=150;
board_y=128;

pillar_hole_x=board_x/2-10;
pillar_hole_y=board_y/2-10;

// ------- 関数の宣言 ------
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

	// i=x軸,j=y軸
	for(i=[-70, 70], j=[-22, 22]){
		
		translate([i, j, 0]){
		
			cylinder(h=10, r=5.5/2);

		}

	}

}

// 支柱用の穴
module pillar_hole(){

	// i=x軸,j=y軸
	for(i=[-pillar_hole_x, pillar_hole_x], j=[-pillar_hole_y, pillar_hole_y]){

		translate([i, j, 0]){

			cylinder(h=10 ,r=5.25);

		}

	}

}
// ------- 関数の宣言ここまで ------


// 確認用のアンプ
%amp();

// 穴あけ
difference(){

	// 棚板
	linear_extrude(5){

		// 角丸
		offset(r=5){

			// 150*128の平面
			square([board_x, board_y], center=true);

		}

	}

	screw_hole();

	pillar_hole();

}

