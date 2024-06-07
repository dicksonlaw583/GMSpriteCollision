///@func sprite_collision_test_all()
function sprite_collision_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;
	
	/* v Tests here v */
	sprite_collision_test_place_sprite_meeting();
	sprite_collision_test_instance_place_sprite();
	sprite_collision_test_instance_place_sprite_list();
	sprite_collision_test_place_sprite_free();
	sprite_collision_test_position_meeting_sprite();
	sprite_collision_test_collision_point_sprite();
	sprite_collision_test_collision_circle_sprite();
	sprite_collision_test_collision_ellipse_sprite();
	sprite_collision_test_collision_rectangle_sprite();
	sprite_collision_test_collision_line_sprite();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("Sprite Collision tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
