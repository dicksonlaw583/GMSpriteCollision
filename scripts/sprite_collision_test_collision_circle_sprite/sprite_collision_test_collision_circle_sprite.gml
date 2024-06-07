function sprite_collision_test_collision_circle_sprite() {
	// Simple placement
	assert(collision_circle_sprite(0, 0, 4, true, spr_sprite_collision_cross, 0, 0));
	assert_fail(collision_circle_sprite(0, 0, 4, true, spr_sprite_collision_cross, 12, 12));
	
	// With rotation
	assert(collision_circle_sprite(0, 0, 4, true, spr_sprite_collision_cross, -10, -10, 45));
	assert_fail(collision_circle_sprite(16, 0, 4, true, spr_sprite_collision_cross, 0, 0, 45));
	
	// With scaling
	assert(collision_circle_sprite(48, 0, 4, true, spr_sprite_collision_cross, 0, 0, 0, 2, 2));
	assert(collision_circle_sprite(40, 40, 4, true, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
	assert_fail(collision_circle_sprite(48, 0, 4, true, spr_sprite_collision_cross, 0, 0, 0, 0.5, 0.5));
	assert_fail(collision_circle_sprite(24, 0, 4, true, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
}
