/// @func yyc_task_execute(task)
/// @desc Executes task's script.
/// @param {array} task The task to execute.
/// @note Normally you shouldn't need to call this function directly, as it is
/// called automaticaly from the update functions.
var _task = argument0;
script_execute(_task[YYC_ETask.Script], _task[YYC_ETask.Arg], _task);
var _parent = _task[YYC_ETask.Parent];
if (!is_undefined(_parent))
{
	yyc_mutex_acquire(YYC_TASK_MUTEX);
	var _groupFinished = (--_parent[@ YYC_ETask.Counter] == 0);
	yyc_mutex_release(YYC_TASK_MUTEX);
	if (_groupFinished)
	{
		yyc_task_enqueue(_parent);
	}
}