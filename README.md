# StarView
This is training on UIButton excercise project, created to work on with peers I am mentoring.


## UIButton exercise

This exercise will help you understand how UIButton works. You will achieve understanding of goals:
- how to use UIButton state
- how to connect target action to UIButton
- how to alert observer object which button was pressed


## 1. Adding star views

To add initial star buttons to a superview you will need to go through following steps:

1. Obtain frame of StarView
2. Set number of stars within StarView
3. Calculate frame for each star view
4. Add UIButtons as subviews to StarView

## 2. Setting up state

We need to control which star is highlighted and which is not. To do this we need a function that sets this state

func setStateForStar(number: Int, state: UIButtonState)

You can set it manually and see if it works on running project. For example:

```
setStateForStar(number: 0, state: .highlighted)
setStateForStar(number: 1, state: .normal)
setStateForStar(number: 2, state: .highlighted)
setStateForStar(number: 3, state: .normal)
```

Please check [UIControl.State](https://developer.apple.com/documentation/uikit/uicontrol/state?changes=_4) for setting proper state.

Then run a project and confirm if state is corresponds with above values.


## 3. Setting target actions

To retain information about which button was clicked we need to put some additional information into each button. We can put this information while adding subviews to a view.
1. Create function which will be a target function for each button pressed within the view. This function should have UIButton as argument passed into the function
3. Put a tag to each subview in order of addition
4. Connect each button with target action

This is mostly done. If this was not enough for you, this is a bit more challenging, but gives more flexibility to

5. Create custom action - variable which is a closure with integer as argument passed into. This will be the number of button pressed counting from the left
6. Within target action call our custom callback function


## 4. Storing button state

To store a button state we need to create an array, where we can store state of each button. When the button is tapped, it’s state is toggled on/off and its image is changed accordingly.

To achieve it we need:

1. Add boolean array buttonOnStates and initialise it with ‘false’ values
2. When button is tapped, its corresponding state is toggled
3. When button is in ON state, then we can update buttonOnStates array and change corresponding state to true. Then UIControl.State.normal is changed for full star.
4. When button is in OFF state then we can update buttonOnStates to ‘false’ and change its .normal state image to empty star


