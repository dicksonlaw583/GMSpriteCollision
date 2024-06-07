/**
 * Return whether placing the sprite at the given point would collide with the target object.
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {Asset.GMObject, Id.Instance} object The target object or instance to collide with
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function place_sprite_meeting(xx, yy, sprite, object, angle=0, xscale=1, yscale=1, frame=0) {
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return place_meeting(x, y, object);
	}
}

/**
 * Return the colliding instance when placing the sprite at the given point, otherwise noone.
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {Asset.GMObject, Id.Instance} object The target object or instance to collide with
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {Id.Instance}
 */
function instance_place_sprite(xx, yy, sprite, object, angle=0, xscale=1, yscale=1, frame=0) {
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return instance_place(x, y, object);
	}
}


/**
 * Push into a list all instances colliding with a sprite placed at the given point.
 * Return the number of instances found.
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {Asset.GMObject, Id.Instance} object The target object or instance to collide with
 * @param {Id.DsList} list The DS list to target
 * @param {bool} ordered Whether to sort by distance from the given point
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {real}
 */
function instance_place_sprite_list(xx, yy, sprite, object, list, ordered, angle=0, xscale=1, yscale=1, frame=0) {
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return instance_place_list(x, y, object, list, ordered);
	}
}

/**
 * Return whether placing the sprite at the given point is collision-free against solids.
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function place_sprite_free(xx, yy, sprite, angle=0, xscale=1, yscale=1, frame=0) {
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return place_free(x, y);
	}
}

/**
 * Return whether a point (px, py) collides with the sprite put at (xx, yy).
 * @param {real} px The X position to check
 * @param {real} py The Y position to check
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function position_meeting_sprite(px, py, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return position_meeting(px, py, id);
	}
}

/**
 * Return whether a point (px, py) collides with the sprite put at (xx, yy).
 * @param {real} px The X position to check
 * @param {real} py The Y position to check
 * @param {bool} precise Whether to use precise checking
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function collision_point_sprite(px, py, precise, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	///Feather disable GM1044
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return collision_point(px, py, id, precise, false) != noone;
	}
	///Feather enable GM1044
}

/**
 * Return whether a circle centered at (cx, cy) with radius rad collides with the sprite put at (xx, yy).
 * @param {real} cx The X position of the circle's centre
 * @param {real} cy The Y position of the circle's centre
 * @param {real} radius The radius of the circle
 * @param {bool} precise Whether to use precise checking
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function collision_circle_sprite(cx, cy, radius, precise, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	///Feather disable GM1044
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return collision_circle(cx, cy, radius, id, precise, false) != noone;
	}
	///Feather enable GM1044
}

/**
 * Return whether an ellipse from (px1, py1) to (px2, py2) collides with the sprite put at (xx, yy).
 * @param {real} px1 The X position of the ellipse's top-left corner
 * @param {real} py1 The Y position of the ellipse's top-left corner
 * @param {real} px2 The X position of the ellipse's bottom-right corner
 * @param {real} py2 The Y position of the ellipse's bottom-right corner
 * @param {bool} precise Whether to use precise checking
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function collision_ellipse_sprite(px1, py1, px2, py2, precise, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	///Feather disable GM1044
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return collision_ellipse(px1, py1, px2, py2, id, precise, false) != noone;
	}
	///Feather enable GM1044
}

/**
 * Return whether a line segment from (px1, py1) to (px2, py2) collides with the sprite put at (xx, yy).
 * @param {real} px1 The X position of the line's starting point
 * @param {real} py1 The Y position of the line's starting point
 * @param {real} px2 The X position of the line's ending point
 * @param {real} py2 The Y position of the line's ending point
 * @param {bool} precise Whether to use precise checking
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function collision_line_sprite(px1, py1, px2, py2, precise, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	///Feather disable GM1044
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return collision_line(px1, py1, px2, py2, id, precise, false) != noone;
	}
	///Feather enable GM1044
}

/**
 * Return whether a rectangle from (px1, py1) to (px2, py2) collides with the sprite put at (xx, yy).
 * @param {real} px1 The X position of the rectangle's top-left corner
 * @param {real} py1 The Y position of the rectangle's top-left corner
 * @param {real} px2 The X position of the rectangle's bottom-right corner
 * @param {real} py2 The Y position of the rectangle's bottom-right corner
 * @param {bool} precise Whether to use precise checking
 * @param {Asset.GMSprite} sprite The sprite to use
 * @param {real} xx The X position to put the sprite at
 * @param {real} yy The Y position to put the sprite at
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {bool}
 */
function collision_rectangle_sprite(px1, py1, px2, py2, precise, sprite, xx, yy, angle=0, xscale=1, yscale=1, frame=0) {
	///Feather disable GM1044
	with (__place_sprite_getinst__(xx, yy, sprite, angle, xscale, yscale, frame)) {
		return collision_rectangle(px1, py1, px2, py2, id, precise, false) != noone;
	}
	///Feather enable GM1044
}
