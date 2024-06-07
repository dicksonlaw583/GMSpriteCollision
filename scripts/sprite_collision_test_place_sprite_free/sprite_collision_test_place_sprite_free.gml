function sprite_collision_test_place_sprite_free() {
	// Setup
	var target = array_create(4);
	for (var i = 0; i < 4; ++i) {
		target[i] = instance_create_depth(lengthdir_x(32, i*90), lengthdir_y(32, i*90), 0, obj_sprite_collision_target);
	}
	
	// Simple placement
	assert_fail(place_sprite_free(0, 0, spr_sprite_collision_pointer));
	assert(place_sprite_free(0, 0, spr_sprite_collision_dot));
	
	// With rotation
	assert_fail(place_sprite_free(0, 0, spr_sprite_collision_pointer, 90));
	assert(place_sprite_free(0, 0, spr_sprite_collision_pointer, 45));
	
	// With scaling
	assert_fail(place_sprite_free(0, 0, spr_sprite_collision_cross, 0, 2, 2));
	assert_fail(place_sprite_free(0, 0, spr_sprite_collision_dot, 0, 8, 8));
	assert(place_sprite_free(0, 0, spr_sprite_collision_cross, 0, 0.5, 0.5));
	assert(place_sprite_free(0, 0, spr_sprite_collision_cross, 45, 2, 2));
	
	// Cleanup
	with (obj_sprite_collision_target) {
		instance_destroy();
	}
}
