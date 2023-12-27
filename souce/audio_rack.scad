//アンプの大きさに合わせてモデリング

module cube_basic(tx, ty, tz, cx, cy, cz){
	translate([tx, ty, tz]){
		cube([cx, cy, cz], center=true);
	}
}

//棚板
for(z=[0:66:66*2]){
	cube_basic(0, 0, z, 160, 138, 2); 
}

//脚部
for(tx=[-145/2:145:145/2], ty=[-123/2:123:123/2], tz=[33:33:99]){
	color([0, 0.5, 0])
	cube_basic(tx, ty, tz, 15, 15, 66-2); 
}
