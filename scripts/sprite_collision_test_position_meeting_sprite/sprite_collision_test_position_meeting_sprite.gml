function sprite_collision_test_position_meeting_sprite() {
	// Simple placement
	assert(position_meeting_sprite(0, 0, spr_sprite_collision_cross, 0, 0));
	assert_fail(position_meeting_sprite(0, 0, spr_sprite_collision_cross, 12, 12));
	
	// With rotation
	assert(position_meeting_sprite(0, 0, spr_sprite_collision_cross, -10, -10, 45));
	assert_fail(position_meeting_sprite(8, 0, spr_sprite_collision_cross, 0, 0, 45));
	
	// With scaling
	assert(position_meeting_sprite(48, 0, spr_sprite_collision_cross, 0, 0, 0, 2, 2));
	assert(position_meeting_sprite(40, 40, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
	assert_fail(position_meeting_sprite(48, 0, spr_sprite_collision_cross, 0, 0, 0, 0.5, 0.5));
	assert_fail(position_meeting_sprite(16, 0, spr_sprite_collision_cross, 0, 0, 45, 2, 2));
}
