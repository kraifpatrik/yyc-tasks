/// @func yyc_tasks_update_thread()
/// @desc Executes tasks in a separate thread.
/// @note Do not call this script by hand, it is done automatically at the
/// game start!
YYC_THREAD;

while (true)
{
	yyc_semaphore_acquire(YYC_TASK_SEMAPHORE);
	yyc_mutex_acquire(YYC_TASK_MUTEX);
	var _task = ds_queue_dequeue(global.__yycTasks);
	yyc_mutex_release(YYC_TASK_MUTEX);
	yyc_task_execute(_task);
}