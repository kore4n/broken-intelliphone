class_name AgentArrivalContext
extends Resource

## Information the agent needs to perform its arrival command.
## (i.e. list of agents, if agent needs to kill them)

var agents: Array[Agent]

func instantiate(_agents: Array[Agent]):
	agents = _agents
