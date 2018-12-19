/*
    File: fn_getNodes.sqf
    Author: Lewey

	Description:
	loop through allMapMarkers and append to array the markers that contain the word "node"

	Parameters:
		Nothing
		
	Returns:
		Array: map markers
*/

private _nodeMarkers = [];
{

	if ( _x find "node" >= 0) then{
		_nodeMarkers pushBack _x;
	};

} foreach allMapMarkers;

_nodeMarkers;
