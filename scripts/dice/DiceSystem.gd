extends Node

var rng = RandomNumberGenerator.new()


func identify_roll (roll: String) -> Dictionary:
	
	var num: int = 0
	var sides: int =0
	var mod :int = 0
	var valid: bool = true
	
	
	
	roll = roll.replace(" ","")
	
	if not roll.contains("d"):
		return{ 
			"valid": false
		}
	
	var roll_d = roll.split("d")
	
	if roll_d.size() != 2: 
		return{ 
			"valid": false
		}
	if  not roll_d[0].is_valid_int():
		return{ 
			"valid": false
		}
	
	num = roll_d[0].to_int()
	
	if num <= 0:
		return{ 
			"valid": false
		}
	
	
	if roll.contains("+"):
		var roll_plus = roll_d[1].split("+")
		if roll_plus.size() != 2: 
			return{ 
				"valid": false
			}
		if  not roll_plus[0].is_valid_int():
			return{ 
				"valid": false
			}
		sides = roll_plus[0].to_int()
		if sides % 2 != 0 || sides <= 0:
			return{
				"valid": false
			}
		
		if  not roll_plus[1].is_valid_int():
			return{ 
				"valid": false
			}
		mod = roll_plus[1].to_int()
		
	elif roll.contains("-"):
		var roll_minus = roll_d[1].split("-")
		if roll_minus.size() != 2: 
			return{ 
				"valid": false
			}
		if  not roll_minus[0].is_valid_int():
			return{ 
				"valid": false
			}
		sides = roll_minus[0].to_int()
		if sides % 2 != 0 || sides <= 0:
			return{
				"valid": false
			}
		
		if  not roll_minus[1].is_valid_int():
			return{ 
				"valid": false
			}
		mod = roll_minus[1].to_int()
		mod = mod * -1
	else:
		if not roll_d[1].is_valid_int():
			return{
				"valid": false
			}
		
		sides = roll_d[1].to_int()
		
		if sides % 2 != 0 || sides <= 0:
			return{
				"valid": false
			}
			
		mod = 0
	
	
	return{
		"valid": true,
		"num": num,
		"sides": sides,
		"mod": mod
	}

func roll(roll:String) -> Dictionary:
	
	var rolls = []
	var result: int = 0
	var result_mod: int=0
	
	var roll_str = identify_roll(roll)
	
	if not roll_str.valid:
		return{
			"valid": false
		}
	
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
	
	
	
		
