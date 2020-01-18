/// @func yyc_task_to_string(task)
/// @desc Turns a task into a printable string.
/// @param {array} task The task.
/// @return {string} The created string.
/// @note You should never call `show_debug_message(task)` directly, because
/// tasks are recursive structures and such command may never finish and crash
/// your game!
var _task = argument0;
var _parent = _task[YYC_ETask.Parent];
var _childTasks = _task[YYC_ETask.Children];

var _childrenString;
if (!is_undefined(_childTasks))
{
	_childrenString = "[";
	var _childCount/*:int*/= array_length_1d(_childTasks);
	for (var i/*:int*/= 0; i < _childCount; ++i)
	{
		_childrenString += yyc_task_to_string(_childTasks[i]) + ", ";
	}
	_childrenString += "]";
}
else
{
	_childrenString = "undefined";
}

return "{ "
	+ "Parent: " + (is_undefined(_parent) ? "undefined" : "{...}")
	+ ", Script: " + script_get_name(_task[YYC_ETask.Script])
	+ ", Arg: " + string(_task[YYC_ETask.Arg])
	+ ", Children: " + _childrenString
	+ ", Counter: " + string(_task[YYC_ETask.Counter])
	+ ", MethodRun: " + script_get_name(_task[YYC_ETask.MethodRun])
	+ " }";