class_name Agent
extends Node

@export var agent_name: String
@export var is_alive: bool = true
@export var agent_sprite: Texture2D

@export_group("Agent Components")
@export var agent_arrival_command: AgentArrivalCommand
@export var agent_interpretation_command: AgentInterpretationCommand
@export var agent_action_command: AgentActionCommand
# TODO: Add other components like Sprite2D

var intelligence_input: String
var intelligence_output: String

func report():
	if !is_alive:
		return
	# If alive, return their special information
	
