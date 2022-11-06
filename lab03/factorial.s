.globl factorial

.data
n: .word 10

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi t0 x0 1 # t0 = 1
    addi t2 a0 1 # t2 = a0 + 1
    addi a0 x0 1 # t1 = 1
while:
    beq t0 t2 end # if t0 == t2 : return
    mul a0 a0 t0 # t1 = t1 * t0
    addi t0 t0 1 # t0 += 1
    j while 
end:
    ret