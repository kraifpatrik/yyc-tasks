/// @func yyc_tasks_update()
/// @desc Executes tasks in a single thread. Should be called every frame in
/// a step event of some controller object. Maximum number of executed tasks
/// can be configured through [YYC_TASKS_PER_FRAME](./YYC_TASKS_PER_FRAME.html).
/// @note This script doesn't do anything when used with YYC Overwrite.
/// @see yyc_tasks_update_thread
/// @see YYC_TASKS_PER_FRAME
if (yyc_is_overwrite())
{
	return;
}

repeat (YYC_TASKS_PER_FRAME)
{
	if (!ds_queue_empty(global.__yycTasks))
	{
		yyc_task_execute(ds_queue_dequeue(global.__yycTasks));
	}
}