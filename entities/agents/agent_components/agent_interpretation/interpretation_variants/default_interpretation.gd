class_name DefaultInterpretationCommand
extends AgentInterpretationCommand

## Default interpretation is no changes are made to the intelligence

# Output will be equal to input
func execute(agent_interpretation_context: AgentInterpretationContext):
	return agent_interpretation_context.intelligence_input
