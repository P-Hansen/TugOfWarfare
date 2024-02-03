// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkFor_object_xy(argument0, argument1, argument2) {
	//Initialize variables
	var xx,yy,obj
	xx = argument0;
	yy = argument1;
	obj = argument2;

	//Check for object at x,y position, if true return instance id
	var checkTarget = instance_place(argument0,argument1,argument2);
	if (checkTarget)
		{
			return checkTarget;
		}
		else
		{
			return false;
		}
}

function damage_variable(argument0, argument1) {
	//Initialize Variables
	var targetVar, dmg;
	targetVar = argument0;
	dmg = argument1;

	//Substract damage from target variable, return remaining amount.
	targetVar -= dmg;
	return targetVar;
}

function damage_variable_destroy(argument0, argument1, argument2) {
	//Initialize Variables
	var targetVar, limit, targetInst;
	targetVar = argument0;
	limit = argument1;
	targetInst = argument2;

	//Check if target variable is equal or less than the allowed limit, return true or false
	if targetVar <= limit
	{
		return true;
	}
	else
	{
		return false;
	}
}

