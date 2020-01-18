/// @func yyc_task_run(task)
/// @desc Executes task's runner method.
/// @param {array} task The target task.
gml_pragma("forceinline");
script_execute(argument0[YYC_ETask.MethodRun], argument0);