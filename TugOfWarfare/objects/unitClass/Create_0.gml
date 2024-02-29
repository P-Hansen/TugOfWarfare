/// @description universal variables

scale = 2;
image_xscale = scale;
image_yscale = scale;

flashTimer = 0;
colourTimer = 0;
range = 1;
moveSpeed = 1 + random_range(-0.1, 0.1);
speed = moveSpeed;
target = noone;
target2 = noone;
unitColour = c_white;
currentStatus = status.active;
statusEffects = [];
drop = 1;
enemy = global.playerFaction;
enemyBuildings = global.playerBuildings;
selectedFlag = false;
uniForm_Handle = shader_get_uniform(OutlineShader, "texture_Pixel");
damageType = "Normal";
unitName = "Unit Name"

sfx = swing1;
pitchLow = 0.8;
pitchHigh = 1;

alarm[2] = room_speed*0.25;
alarm[10] = 10+irandom_range(-5, 5);