/// @description countdown

if (count > 0)
{
	count--;
}
else
{
	countdown = false;
	oVacuum.alarm[1] = 1;
	oAnt.has_control = true;
}