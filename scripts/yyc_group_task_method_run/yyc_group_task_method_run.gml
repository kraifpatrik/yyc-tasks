/// @func yyc_group_task_method_run(groupTask)
/// @desc Runs all child tasks of a group task.
/// @param {array} groupTask The group task.
var _groupTask = argument0;
var _children = _groupTask[YYC_ETask.Children];

for (var i/*:int*/= array_length_1d(_children) - 1; i >= 0; --i)
{
	yyc_task_run(_children[i]);
}