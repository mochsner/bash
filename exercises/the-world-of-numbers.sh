#!/bin/bash
read base_operand
read secondary_operand

# Optional Number Check
function is_number(){
	if ! [[ "$base_operand" =~ ^[0-9]+$ ]]
	then
		echo "Sorry, numbers only"
		return 0
	else 
		return 1
	fi
}

# Add, Subtract, Multiply, Divide
sum="$(($base_operand+$secondary_operand))"
echo $sum
difference="$(($base_operand-$secondary_operand))"
echo $difference
product="$(($base_operand*$secondary_operand))"
echo $product
divided="$(($base_operand/$secondary_operand))"
echo $divided
