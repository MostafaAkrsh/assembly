.data
msg : .asciiz " Please enter number\n "
output1: .asciiz " The sum is : "
output2: .asciiz "\n The average is : "

.text

main:
#define sum and counter

li $t0 0   		#counter
li $s0 0		#sum

loop :
# print beginning massages
li $v0 4
la $a0 msg
syscall

# get input from the user
li $v0 5
syscall
add $s0, $s0, $v0

addi $t0 , $t0 , 1
blt $t0 , 10 , loop

# print output 
li $v0 4
la $a0 output1
syscall

add $a0, $0, $s0
li $v0 1
syscall

# print output 
li $v0 4
la $a0 output2
syscall

div $s0 , $s0 , $t0
add $a0, $0, $s0
li $v0 1
syscall




