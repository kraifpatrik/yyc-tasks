# YYC Tasks
> Multithreaded task system for YYC Overwrite

[![License](https://img.shields.io/github/license/kraifpatrik/yyc-tasks)](LICENSE)

# Example
```gml
/// @desc Create event
repeat (20)
{
    var _task = yyc_task_create(sleep_task, 1000);
    yyc_task_run(_task);
}


/// @desc Step event
yyc_tasks_update();


/// @func sleep_task(ms)
/// @desc Sleeps for given amount of milliseconds and then prints a message.
/// @param {array} ms
var _ms = argument0;
var _t = current_time;
while (current_time - _t < _ms) {}
show_debug_message("Task done!");
```

# Installation
Using [Catalyst](https://github.com/GameMakerHub/Catalyst), the open-source package manager for GameMaker Studio 2:

```
catalyst require kraifpatrik/yyc-tasks
```

# Related
This library is part of project YYC Overwrite. For more information, please visit the project's repository: https://github.com/kraifpatrik/yyc-overwrite
