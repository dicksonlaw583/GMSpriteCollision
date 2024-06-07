/**
 * Fetch or create the collision detector.
 * @param {real} xx The X position to move to or spawn at.
 * @param {real} yy The Y position to move to or spawn at.
 * @param {Asset.GMSprite} sprite The sprite to check.
 * @param {real} [angle] The angle to rotate to (default: 0)
 * @param {real} [xscale] The X scale to use (default: 1)
 * @param {real} [yscale] The Y scale to use (default: 1)
 * @param {real} [frame] The frame number to use (default: 0)
 * @returns {id.instance} The instance ID of the fetched or created collision detector.
 * @ignore
 */
function __place_sprite_getinst__(xx, yy, sprite, angle=0, xscale=1, yscale=1, frame=0) {
	with (instance_exists(__obj_place_sprite__) ? instance_find(__obj_place_sprite__, 0) : instance_create_depth(xx, yy, 0, __obj_place_sprite__)) {
		x = xx;
		y = yy;
		sprite_index = sprite;
		image_angle = angle;
		image_xscale = xscale;
		image_yscale = yscale;
		image_index = frame;
		///Feather disable GM1045
		return id;
		///Feather enable GM1045
	}
}