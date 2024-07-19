extends Control

func _ready():
	pass

func _process(delta):
	pass

func _on_open_file_pressed():
	$FileDialog.popup()

func _on_save_file_pressed():
	$SaveDialog.popup()

func _on_file_dialog_file_selected(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	file.close()  # Don't forget to close the file when you're done
	$TextEdit.text = content  
