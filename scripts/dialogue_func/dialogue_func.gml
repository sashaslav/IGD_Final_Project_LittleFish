
//function for dialog box that can be called anywhere else in the game code
//"constructor" allows you to add nested functions and variables, keeps everything encapsulated
function dialogue_func() constructor{
	
	//creates a variable that holds an empty array
	//array will be filled with structs that will be read 1 by 1 to make dialog appear
	dialogues = [];
	
	//variable containing unique function that 
	//takes in sprite and message variables
	//array_push then assigns a those local variables to other vars that can be called elsewhere
	//then it pushes them to the front of the dialogues[] array, "adding" them
	add = function(_sprite, _message) {
		array_push(dialogues, {
			sprite: _sprite,
			message: _message,
		});
	}
	
	//variable containing func that pops an item off the dialogue and returning it into the code
	//first, take the first element of the array and assign it to a var
	//then delete that element from the array, and return the temporary value
	pop = function() {
		//var "t" = "temporary"
		var _t = dialogues[0];
		array_delete(dialogues,0,1);
		
		return _t;
	}
	
	//this checks for if there are any more lines of dialogue left to display
	count = function() {
		return array_length(dialogues);
	}
}