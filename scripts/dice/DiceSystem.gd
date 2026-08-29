extends Node

var rng = RandomNumberGenerator.new()

func indentify_roll (roll: String) -> Dictionary:
	
	var num: int = 0
	var sides: int =0
	var mod :int = 0
	
	roll = roll.replace(" ","")
	
	var roll_d = roll.split("d")
	num = roll_d[0].to_int()
	
	if roll.contains("+"):
		var roll_plus = roll_d[1].split("+")
		sides = roll_plus[0].to_int()
		mod = roll_plus[1].to_int()
	elif roll.contains("-"):
		var roll_minus = roll_d[1].split("-")
		sides = roll_minus[0].to_int()
		mod = roll_minus[1].to_int()
		mod = mod * -1
	else:
		sides = roll_d[1].to_int()
		mod = 0
	
	
	return{
		"num": num,
		"sides": sides,
		"mod": mod
	}

func roll(roll:String) -> Dictionary:
	
	var rolls = []
	var result: int = 0
	var result_mod: int=0
	
	var roll_str = indentify_roll(roll)
	
	var num = roll_str.num
	var sides = roll_str.sides
	var mod = roll_str.mod
	
	
	for i in range(num):
		rolls.append(rng.randi_range(1, sides))
	
	for i in range(rolls.size()):
		result = result + rolls[i]
	
	result_mod = result + mod
	 
	return {
		"rolls": rolls,
		"mod": mod,
		"result": result,
		"total": result_mod
	}
	
