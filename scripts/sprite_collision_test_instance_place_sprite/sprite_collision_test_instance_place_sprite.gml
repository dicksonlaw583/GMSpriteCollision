function sprite_collision_test_instance_place_sprite() {
	// Setup
	var target = array_create(4);
	for (var i = 0; i < 4; ++i) {
		target[i] = instance_create_depth(lengthdir_x(32, i*90), lengthdir_y(32, i*90), 0, obj_sprite_collision_target);
	}
	
	// Simple placement
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target), target[0]);
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_dot, obj_sprite_collision_target), noone);
	
	// With rotation
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, 90), target[1]);
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, 45), noone);
	
	// With scaling
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, 180, 2, 2), target[2]);
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, 0, 0.5, 0.5), noone);
	assert_equal(instance_place_sprite(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, 45, 2, 2), noone);
	
	// Cleanup
	with (obj_sprite_collision_target) {
		instance_destroy();
	}
}
