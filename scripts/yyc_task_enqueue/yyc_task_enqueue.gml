/// @func yyc_task_enqueue(task)
/// @desc Enqueues task for execution.
/// @param {array} task The task to enqueue.
yyc_mutex_acquire(YYC_TASK_MUTEX);
ds_queue_enqueue(global.__yycTasks, argument0);
yyc_mutex_release(YYC_TASK_MUTEX);
yyc_semaphore_release(YYC_TASK_SEMAPHORE);