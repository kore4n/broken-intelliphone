class_name AgentInterpretationCommand
extends Node

## Command agents use to interpret intelligence, involves its input and its output

@export var can_report: bool
var report: String

# Return the would-be passed intelligence
func execute(agent_interpretation_context: AgentInterpretationContext):
	pass
