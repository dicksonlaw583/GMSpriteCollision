# GM Sprite Collision

## Overview

This GameMaker library allows checking for collisions using virtually placed sprites. You can use it to check sprite-based collisions for things that don't exist yet, such as rotated positions or randomized new instance placements.

## Requirements

- GameMaker 2022.0.3 LTS / 2024.11 Monthly or above

## Installation

Get the current asset package and associated documentation from [the releases page](https://github.com/dicksonlaw583/GMSpriteCollision/releases). Simply extract all the scripts to your project.

## Examples

### Check Rotated Position Before Turning

```gml
var newAngle = image_angle+(keyboard_check(vk_left)-keyboard_check(vk_right))*4;
if (!place_sprite_meeting(x, y, sprite_index, obj_block, newAngle)) {
    image_angle = newAngle;
}
```

### Check Randomized New Instance Placement

```gml
///@func instance_create_layer_scatter(x1, y1, x2, y2, layerId, n, object, [avoids])
///@param {Real} x1 X position of the region's top-left corner
///@param {Real} y1 Y position of the region's top-left corner
///@param {Real} x2 X position of the region's bottom-right corner
///@param {Real} y2 Y position of the region's bottom-right corner
///@param {String,Id.Layer} layerId The name or ID of the layer
///@param {Real} n The number of instances to spawn
///@param {Asset.GMObject} object The object to spawn instances of
///@param {Asset.GMObject,Id.Instance} [avoids] Object or instance to avoid colliding with while spawning
///@desc Generate n instances of the given object in the area bounded by (x1, y1) and (x2, y2) while avoiding collisions with the specified target.
function instance_create_scatter(x1, y1, x2, y2, layerId, n, object, avoids=noone) {
    var checkSprite = object_get_sprite(object);
    var xx, yy;
    repeat (n) {
        do {
            xx = irandom_range(x1, x2);
            yy = irandom_range(y1, y2);
        } until (!place_sprite_meeting(xx, yy, checkSprite, avoids))
        instance_create_layer(xx, yy, "Instances", object);
    }
}
```
