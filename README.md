# YYC Tasks
> Multithreaded task system for YYC Overwrite

[![License](https://img.shields.io/github/license/kraifpatrik/yyc-tasks)](LICENSE)

# Example
```gml
/// @desc Create event
var _groupTask = yyc_group_task_create([
	yyc_task_create(sleep_task, [1000, "Task 1 done!"]),
	yyc_task_create(sleep_task, [2000, "Task 2 done!"]),
	yyc_task_create(sleep_task, [3000, "Task 3 done!"]),
], sleep_task, [1000, "Group 1 done!"]);

yyc_task_run(_groupTask);


/// @desc Step event
yyc_tasks_update();


/// @func sleep_task(arg, task)
/// @desc Sleeps for given amount of milliseconds and then prints a message.
/// @param {array} arg An array containing `[ms, message]`.
/// @param {array} task The task that executed this script.
var _arg = argument[0];
var _ms = _arg[0];
var _message = _arg[1];
var _t = current_time;
while (current_time - _t < _ms) {}
show_debug_message(_message);
```

# Installation
Using [Catalyst](https://github.com/GameMakerHub/Catalyst), the open-source package manager for GameMaker Studio 2:

```
catalyst require kraifpatrik/yyc-tasks
```

# Related
This library is part of project YYC Overwrite. For more information, please visit the project's repository: https://github.com/kraifpatrik/yyc-overwrite
