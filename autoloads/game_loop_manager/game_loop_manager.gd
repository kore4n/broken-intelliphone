extends Node

var beginning_intelligence: String
var final_intelligence: String
var agents: Array[Agent]

# This will mutate the state of the agents
# (i.e.) kill some agents...
func execute_arrival_commands():
	var agent_arrival_context: AgentArrivalContext = AgentArrivalContext.new()
	for agent in agents:
		agent.agent_arrival_command.execute(agent_arrival_context)

# This is the intelligence the player will receive
# Ensure this does NOT mutate the state of the agents/game
func calculate_final_intelligence(beginning_intelligence: String):
	#var interpretation_context: AgentInterpretationContext
	#var current_intelligence: String
	#for agent in agents:
		#var output_intelligence = agent.agent_interpretation_command.execute(interpretation_context)
	pass
