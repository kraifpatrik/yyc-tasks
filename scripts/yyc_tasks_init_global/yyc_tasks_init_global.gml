/// @func yyc_tasks_init_global()
/// @desc Global initialization script of the task system.
/// @note Do not call this script by hand, it is called automatically at the
/// game start!
gml_pragma("global", "yyc_tasks_init_global();");

var _threadCount = YYC_TASKS_THREAD_COUNT;

yyc_mutex_create(YYC_TASK_MUTEX);

yyc_semaphore_create(YYC_TASK_SEMAPHORE, 0, _threadCount);

/// @var {real} Queue of tasks waiting for execution.
global.__yycTasks = ds_queue_create();

if (yyc_is_overwrite())
{
	repeat (_threadCount)
	{
		yyc_tasks_update_thread();
	}
}