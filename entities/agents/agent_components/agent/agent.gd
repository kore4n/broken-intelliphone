class_name Agent
extends Node

@export var agent_name: String
@export var agent_sprite: Texture2D
# TODO: Maybe move somewhere else
@export var is_reporter: bool = true

@export_group("Agent Components")
@export var agent_arrival_command: AgentArrivalCommand
@export var agent_interpretation_command: AgentInterpretationCommand
@export var agent_action_command: AgentActionCommand
# TODO: Add other components like Sprite2D

var intelligence_input: String
var intelligence_output: String
var is_alive: bool = true

func report():
	if !is_alive:
		return
	# TODO: If alive, return their report

func kill_agent():
	is_alive = false
