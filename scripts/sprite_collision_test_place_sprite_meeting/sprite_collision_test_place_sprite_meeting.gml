function sprite_collision_test_place_sprite_meeting() {
	// Setup
	var target = array_create(4);
	for (var i = 0; i < 4; ++i) {
		target[i] = instance_create_depth(lengthdir_x(32, i*90), lengthdir_y(32, i*90), 0, obj_sprite_collision_target);
	}
	
	// Simple placement
	assert(place_sprite_meeting(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target));
	assert_fail(place_sprite_meeting(0, 0, spr_sprite_collision_dot, obj_sprite_collision_target));
	
	// With rotation
	assert(place_sprite_meeting(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, 90));
	assert_fail(place_sprite_meeting(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, 45));
	
	// With scaling
	assert(place_sprite_meeting(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, 0, 2, 2));
	assert(place_sprite_meeting(0, 0, spr_sprite_collision_dot, obj_sprite_collision_target, 0, 8, 8));
	assert_fail(place_sprite_meeting(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, 0, 0.5, 0.5));
	assert_fail(place_sprite_meeting(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, 45, 2, 2));
	
	// Cleanup
	with (obj_sprite_collision_target) {
		instance_destroy();
	}
}
