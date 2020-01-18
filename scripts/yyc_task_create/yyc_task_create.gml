/// @func yyc_task_create(script[, arg])
/// @desc Creates a new task.
/// @param {real} script The script to execute. Will be passed two arguments,
/// the first one being `arg` and the second the task itself.
/// @param {any} [arg] An argument to pass to the script. Defaults to `undefined`.
/// @return {array} The created task.
var _task = array_create(YYC_ETask.SIZE, undefined);
_task[@ YYC_ETask.Script] = argument[0];
if (argument_count > 1)
{
	_task[@ YYC_ETask.Arg] = argument[1];
}
_task[@ YYC_ETask.MethodRun] = yyc_task_enqueue;
return _task;