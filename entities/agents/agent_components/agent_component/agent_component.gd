class_name AgentComponent
extends Node

@export var agent_name: String
@export var is_alive: bool = true
@export var agent_sprite: Texture2D

@export_group("Agent Components")
@export var agent_interpretation_strategy: AgentInterpretationStrategy
@export var agent_action_command: AgentActionCommand
# TODO: Add other components like Sprite2D

var intelligence_input: String
var intelligence_output: String
