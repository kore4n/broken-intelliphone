@tool
class_name ScramblerInterpretation
extends AgentInterpretationCommand

## Scrambles the nth word in the intelligence where
## n is the nth agent of the loop

func _ready() -> void:
	pass
	# Test case
	#var agent_index = 3
	#var test_string = "These are a sentence that I have chosen"
	#print(calculate_shuffled_intelligence(agent_index, test_string))

func execute(agent_interpretation_context: AgentInterpretationContext) -> String:
	var agent_index = agent_interpretation_context.owner_agent
	var intelligence_input: String = agent_interpretation_context.intelligence_input
	
	return calculate_shuffled_intelligence(agent_index, intelligence_input)

func calculate_shuffled_intelligence(agent_index: int, intelligence_input: String) -> String:
	var intelligence_words_list: Array[String] = packed_string_array_to_array(intelligence_input.split(" "))
	
	if agent_index == -1:
		print_debug("Agent not found in list. Not supposed to happen.")
		return ''
	if agent_index >= len(intelligence_words_list):
		print_debug("Agent index is too high for the agent list.")
	
	var chosen_word: String = intelligence_words_list[agent_index]
	var shuffled_split_word: Array[String] = packed_string_array_to_array(chosen_word.split(""))
	shuffled_split_word.shuffle()
	var shuffled_word: String = array_to_string(shuffled_split_word)
	var first_sub_array = intelligence_words_list.slice(0, agent_index)
	var second_sub_array = intelligence_words_list.slice(agent_index + 1, len(intelligence_words_list))
	var calculated_intelligence_output: String = " ".join(first_sub_array + [shuffled_word] + second_sub_array)
	return calculated_intelligence_output

func array_to_string(arr: Array) -> String:
	var result_string = ""
	for element in arr:
		result_string += String(element)
	return result_string

func packed_string_array_to_array(packed_string_array: PackedStringArray) -> Array[String]:
	return Array(Array(packed_string_array), TYPE_STRING, "", null)
