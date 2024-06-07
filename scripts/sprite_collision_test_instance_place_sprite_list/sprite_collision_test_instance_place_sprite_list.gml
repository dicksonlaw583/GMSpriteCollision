function sprite_collision_test_instance_place_sprite_list() {
	// Setup
	var target = array_create(4);
	for (var i = 0; i < 4; ++i) {
		target[i] = instance_create_depth(lengthdir_x(32, i*90), lengthdir_y(32, i*90), 0, obj_sprite_collision_target);
	}
	var list = ds_list_create();
	
	// Simple placement
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, list, false), 1);
	assert_equal(ds_list_size(list), 1);
	assert_contains(list, target[0]);
	ds_list_clear(list);
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, list, false), 4);
	assert_equal(ds_list_size(list), 4);
	assert_contains(list, target[0]);
	assert_contains(list, target[1]);
	assert_contains(list, target[2]);
	assert_contains(list, target[3]);
	ds_list_clear(list);
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_dot, obj_sprite_collision_target, list, false), 0);
	assert_equal(ds_list_size(list), 0);
	ds_list_clear(list);
	
	
	// With rotation
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, list, false, 90), 1);
	assert_equal(ds_list_size(list), 1);
	assert_contains(list, target[1]);
	ds_list_clear(list);
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, list, false, 45), 0);
	assert_equal(ds_list_size(list), 0);
	ds_list_clear(list);
	
	// With scaling
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_pointer, obj_sprite_collision_target, list, false, 180, 2, 2), 1);
	assert_equal(ds_list_size(list), 1);
	assert_contains(list, target[2]);
	ds_list_clear(list);
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, list, false, 0, 0.5, 0.5), 0);
	assert_equal(ds_list_size(list), 0);
	ds_list_clear(list);
	assert_equal(instance_place_sprite_list(0, 0, spr_sprite_collision_cross, obj_sprite_collision_target, list, false, 45, 2, 2), 0);
	assert_equal(ds_list_size(list), 0);
	ds_list_clear(list);
	
	// Cleanup
	with (obj_sprite_collision_target) {
		instance_destroy();
	}
	ds_list_destroy(list);
}
