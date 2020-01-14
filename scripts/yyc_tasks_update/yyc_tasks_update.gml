/// @func yyc_tasks_update()
/// @desc Executes tasks in a single thread. Should be called every frame in
/// a step event of some controller object. You can control how much time in
/// a single frame can be used for executing tasks through
/// [YYC_TASKS_MS_PER_FRAME](./YYC_TASKS_MS_PER_FRAME.html), but at least one
/// task is always executed if available.
/// @note This script doesn't do anything when used with YYC Overwrite.
/// @see yyc_tasks_update_thread
/// @see YYC_TASKS_MS_PER_FRAME
if (yyc_is_overwrite())
{
	return;
}

var _t = get_timer();

while (true)
{
	if (ds_queue_empty(global.__yycTasks))
	{
		break;
	}

	yyc_task_execute(ds_queue_dequeue(global.__yycTasks));

	if ((get_timer() - _t) * 0.001 >= YYC_TASKS_MS_PER_FRAME)
	{
		break;
	}
}