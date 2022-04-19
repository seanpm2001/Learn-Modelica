
***

![/Modelica1.png](/Modelica1.png)

### Learning Modelica

I am not too experienced with Modelica at the moment. This document will go over my knowledge of the Modelica language so far.

This document used various version 3.4 of the Modelica programming language.

#### Comments in Modelica

Comments in Modelica are unique, but still easy to do.

```modelica
// This is a single line comment in Modelica
// Modelica doesn't support multi-line comments as far as I know.
```

This example works with every version of Modelica, except for some versions of OpenModelica.

_/!\ This example has not been tested yet, and may not work_

#### Break keyword in Modelica

Modelica supports the `break` keyword.

```modelica
break
```

To this day, I am still not entirely sure what the `break` keyword does, but most languages support it.

_/!\ This example has not been tested yet, and may not work_

#### Hello World in Modelica

A hello world program in Modelica is a bit more complicated than a Python or Perl Hello World program, but it isn't very difficult either. It is not similar to any language I am currently familiar with.

```modelica
model HelloWorld "Hello World";
end HelloWorld
```

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Real variables in Modelica

I think this is how you implement real variables in Modelica

```modelica
model isReal
	Real x "Real variable"
	Real y "Another Real variable"
end isReal
```

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Constant Real variables in Modelica

I think this is how you implement const. real variables in Modelica

```modelica
model isConstReal
	constant Real z = -2.0 "Constant variable is negative 2";
end isConstReal
```

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Real parameters in Modelica

I think this is how you implement real parameter variables in Modelica

```modelica
model isRealParam
	parameter Real x_start = 5.0 "The initial value of variable x";
end isConstReal
```

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Equations in Modelica

Modelica seems to support equations as a form of programming. This is how I make it out so far:

```modelica
model equationModel
initial equation
// Define initial equation instructions
	x = x_start;
equation
	// Write the equations here...
	der(x) = a*x;
end equationModel;
```

I think `der` stands for `deritative` but I am not sure.

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Booleans in Modelica

Modelica supports Booleans, but not implicitely (not as a keyword)

```modelica
model bcbool
b = true;
c = false;
end bcbool
```

This example works with every version of Modelica (as far as I know)

_/!\ This example has not been tested yet, and may not work_

#### Source

The majority of my Modelica knowledge comes from self-experimentation, and Wikipedia. Most of the examples here were dissected from [ModelicaInAction](https://github.com/mbonvini/ModelicaInAction/blob/master/modelica/HelloWorld.mo) by GitHub user [mbonvini](https://github.com/mbonvini/) full credits are [listed here](/PLANG_SOURCE.urll)

The majority of dissections were done from this file:

[HelloWorld.mo](/HelloWorld.mo)

```modelica
model HelloWorld  "The simplest differential equation ever"
 Real x "The unknown variable";
 constant Real a = -2.0 "Constant that characterizes the model";
 parameter Real x_start = 5.0 "Initial value of the variable x";
initial equation
 // Define initial conditions here...
 x = x_start;
equation
 // Write the equations here...
 der(x) = a*x;
end HelloWorld;
```

#### Other knowledge of Modelica

1. Modelica is a curly bracket language, and it does use semicolons at the end of each line.;

2. Modelica uses the `*.mo` file extension for normal use.

3. Modelica is a software modeling language

4. Modelica is a language recognized by GitHub

5. Modelica has been around since 1997

6. Modelica may be an open source language, but I am unsure

7. No other knowledge of Modelica at the moment.

***

**File version:** `1 (2022, Monday, April 18th at 5:28 pm PST)`

***
