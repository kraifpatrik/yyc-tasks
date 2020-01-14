/// @func yyc_tasks_config()

/// @macro {real} Maximum number of tasks to execute per frame when not using
/// YYC Overwrite (e.g. in VM).
#macro YYC_TASKS_PER_FRAME 10

/// @macro {string} Name of a mutex used in the task sytem.
#macro YYC_TASK_MUTEX "yycTasksMutex"

/// @macro {string} Name of a semaphore used in the task system.
#macro YYC_TASK_SEMAPHORE "yyTasksSemaphore"