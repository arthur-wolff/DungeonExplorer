class_name CharacterStats
extends Resource


@export_category("Atributos")

@export var str: int = 10
@export var dex: int = 10
@export var con: int = 10
@export var intl: int = 10
@export var wis: int = 10
@export var car: int = 10

func get_modificador (atribute: int) -> int:
	return floori((atribute-10)/2.0)
	
func get_str_mod () -> int:
	return get_modificador(str)
func get_dex_mod() -> int:
	return get_modificador(dex)
func get_con_mod()->int:
	return get_modificador(con)
func get_intl_mod()-> int:
	return get_modificador(intl)
func get_wis_mod()->int:
	return get_modificador(wis)
func get_car_mod()->int:
	return get_modificador(car)
	
func get_all()->Dictionary:
	return{
		"str": str,
		"dex": dex,
		"con": con,
		"intl": intl,
		"wis": wis,
		"car": car
	}
	
	
