# sum of positive elements (N=4 (columns), M=2 (rows))
.data

N:
.word 4
M:
.word 2

matrix:
.word 1, 0, 1, -4
.word 2, -1, -3, 1

result:
.word 0

.text

main:
lw a2, N
lw a3, M
la a4, matrix
call sum_of_positive
addi a0, x0, 1 # print_int ecall
ecall
addi a0, x0, 10 # exit ecall
ecall

sum_of_positive:
addi t0, x0, 0 # initialize row number
addi a1, x0, 0 # initialize sum

init:
addi t1, x0, 0 # initialize column number

cycle:
lw t2, 0(a4) # load new element
addi a4, a4, 4 # increment array pointer
bltz t2, continue # if current element < 0 then continue
add a1, a1, t2 # add current element to result

continue:
addi t1, t1, 1 # increment column number
blt t1, a2, cycle # if column number < N then process next element from row
addi t0, t0, 1
blt t0, a3, init # if row pointer < M then process next row
ret