
execute as @s[type=marker,tag=doll] run function doll:doll_body_location_marker
execute as @s[type=item_display,tag=doll] run function doll:doll_body_location_item_display
execute as @s[type=item_display,tag=doll_limb] run function doll:doll_action/apply_rotation
