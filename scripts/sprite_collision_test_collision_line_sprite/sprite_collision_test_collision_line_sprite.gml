function sprite_collision_test_collision_line_sprite() {
	// Simple placement
	assert(collision_line_sprite(-4, -4, 4, 4, true, spr_sprite_collision_cross, 0, 0));
	assert_fail(collision_line_sprite(-4, -4, 4, 4, true, spr_sprite_collision_cross, 12, 12));
	
	// With rotation
	assert(collision_line_sprite(-4, -4, 4, 4, true, spr_sprite_collision_cross, -10, -10, 45));
	assert_fail(collision_line_sprite(12, -4, 20, 4, true, spr_sprite_collision_cross, 0, 0, 45));
	
	// With scaling
	assert(collision_line_sprite(44, -4, 52, 4, true, spr_sprite_collision_cross, 0, 0, 0, 2, 2));
	assert(collision_line_sprite(36, 36, 44, 44, true, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
	assert_fail(collision_line_sprite(44, -4, 52, 4, true, spr_sprite_collision_cross, 0, 0, 0, 0.5, 0.5));
	assert_fail(collision_line_sprite(20, -4, 28, 4, true, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
}
