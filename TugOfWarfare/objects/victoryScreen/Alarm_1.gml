/// @description Insert description here

//kill any towers
with(buildingClass){
	instance_destroy(self, false);
}

//kill any brambles
with(flammableClass){
	instance_destroy(self, false);
}