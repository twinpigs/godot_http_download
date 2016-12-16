extends HTTPRequest

func _ready():
	set_download_file("res://image.png")
	request("http://docs.godotengine.org/en/stable/_static/docs_logo.png")
	
func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	if(result == HTTPRequest.RESULT_SUCCESS):
		print("!!!")
	else:
		print(":(")