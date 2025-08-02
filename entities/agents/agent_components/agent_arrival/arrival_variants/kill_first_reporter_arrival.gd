class_name KillFirstReporterArrival
extends AgentArrivalCommand

## Kills the first reporting agent in the chain

func execute(agent_arrival_context: AgentArrivalContext):
	for agent in agent_arrival_context.agents:
		if agent.is_reporter:
			agent.kill_agent()
			return
