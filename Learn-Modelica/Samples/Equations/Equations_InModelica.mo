model equationModel
initial equation
// Define initial equation instructions
	x = x_start;
equation
	// Write the equations here...
	der(x) = a*x;
end equationModel;
