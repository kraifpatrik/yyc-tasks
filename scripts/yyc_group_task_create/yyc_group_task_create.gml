/// @func yyc_group_task_create(childTasks, script[, arg])
/// @desc Creates a new group task, which is a task that's never executed before
/// its child-tasks are completed.
/// @param {array} childTasks Array of child tasks.
/// @param {real} script A script to execute when all child tasks are finished.
/// Will be passed two arguments, the first one being `arg` and the second the
/// task itself.
/// @param {any} [arg] An argument to pass to the script. Defaults to `undefined`.
/// @return {array} The created group task.
var _childTasks = argument[0];
var _childCount/*:int*/= array_length_1d(_childTasks);

var _groupTask = yyc_task_create(argument[1], (argument_count > 2) ? argument[2] : undefined);
_groupTask[@ YYC_ETask.Children] = _childTasks;
_groupTask[@ YYC_ETask.Counter] = _childCount;
_groupTask[@ YYC_ETask.MethodRun] = yyc_group_task_method_run;

for (var i/*:int*/= 0; i < _childCount; ++i)
{
	var _t = _childTasks[i];
	_t[@ YYC_ETask.Parent] = _groupTask;
}

return _groupTask;