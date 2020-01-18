/// @func yyc_task()
/// @desc Definition of the task structure.

/// @enum Enumeration of members of the task structure.
enum YYC_ETask
{
	/// @member Index at which the task script is stored.
	Script,
	/// @member Index at which the task argument is stored.
	Arg,
	/// @member Index at which the parent task is stored.
	Parent,
	/// @member Index at which an array of child tasks is stored.
	Children,
	/// @member Index at which a number of remaining child tasks is stored.
	Counter,
	/// @member Index at which a runner method is stored.
	MethodRun,
	/// @member Total number of members of a task structure.
	SIZE,
};