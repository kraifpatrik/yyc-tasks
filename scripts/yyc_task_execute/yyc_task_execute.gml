/// @func yyc_task_execute(task)
/// @desc Executes a task.
/// @param {array} task The task to execute.
/// @note Normally you shouldn't need to call this function directly, as it is
/// called automaticaly from the update functions.
gml_pragma("forceinline");
var _task = argument0;
script_execute(_task[YYC_ETask.Script], _task[YYC_ETask.Arg]);