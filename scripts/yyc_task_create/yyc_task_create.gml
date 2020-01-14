/// @func yyc_task_create(script[, arg])
/// @desc Creates a new task structure.
/// @param {real} script The script to execute.
/// @param {any} [arg] Argument to pass to the script. Defaults to `undefined`.
/// @return {array} The created task.
var _task = array_create(YYC_ETask.SIZE, undefined);
_task[@ YYC_ETask.Script] = argument[0];
if (argument_count > 1)
{
	_task[@ YYC_ETask.Arg] = argument[1];
}
return _task;