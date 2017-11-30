extends TextureFrame

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("Author").set_text("История про маленького принца")
	get_node("SamplePlayer").play("pp")
	get_node("MyKnight").get_node("AnimationPlayer").play("run")
	
func _on_AnimationPlayer_finished():
	get_node("MyKnight").get_node("Label").get_node("textAnim").play("char")
	#get_node("MyKnight").get_node("Label").set_text("А ты хочешь чтобы я зашел в дверь?")
	
func _on_YesButton_pressed():
	get_tree().change_scene("res://scenes/two.tscn")
	#need to set the scene to second one

func _on_NoButton_pressed():
	get_tree().change_scene("res://scenes/10.tscn")


func _on_textAnim_finished():
	get_node("HBoxContainer").show() # replace with function body
