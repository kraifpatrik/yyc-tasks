/// @func yyc_tasks_config()

/// @macro {real} Number of milliseconds available for executing tasks in
/// a single frame when multithreading is not available (e.g. in VM).
#macro YYC_TASKS_MS_PER_FRAME 8

/// @macro {real} Number of threads for task processing.
#macro YYC_TASKS_THREAD_COUNT max(yyc_get_cpu_count() - 1, 1)

/// @macro {string} Name of a mutex used in the task sytem.
#macro YYC_TASK_MUTEX "yycTasksMutex"

/// @macro {string} Name of a semaphore used in the task system.
#macro YYC_TASK_SEMAPHORE "yyTasksSemaphore"