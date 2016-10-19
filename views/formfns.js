
function showCharCount(input, output, limit){
	var input = document.getElementById(input).value;
	var output = document.getElementById(output);

	var charCount = 0;
	for(var i = 0; i < input.length; i++){
		charCount += 1;
	}

	output.innerHTML = charCount + " characters entered.";

	if(charCount <= limit){
		output.className += " alert-success";
	} else {
		output.className += " alert-danger";
		output.innerHTML += " limit is " + limit + " characters!"
	}
}