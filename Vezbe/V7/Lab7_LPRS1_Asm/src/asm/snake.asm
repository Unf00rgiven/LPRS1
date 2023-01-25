
/*
	// Ekvivalentan C kod:
	short* p_food_and_snake = &a_food_and_snake;
	short frames_cnt = 0;
	short frames_per_heartbeat = 75; // 75 for synth, 1 for sim.
	short* p_rgb_matrix = 0x100;
	short* p_frame_sync = 0x140;
	short* p_pb_dec = 0x200;
	typedef struct {
		short x;
		short y
	} chunk_t;
	chunk_t a_food_and_snake[10] = {
		{3, 2}, // Food.
		{2, 0}, // Head.
		{1, 0},
		{0, 0}, // Tail.
		{-1, -1},
	};

*/
.data
6
0
75
0x100
0x140
0x200
6, 2
2, 4
2, 3
2, 2
2, 1
1, 1
-1, -1

/*
	Ekvivalentan C kod (viši nivo):
*/
.text
/*
	Spisak registara:
	R0 - tmp register
	R1 - tmp chunk x
	R2 - tmp chunk y
	R3 - color
	R4 - p_food_and_snake
	R5 - p_pb_dec
	R6 - p_frame_sync
	R7 - p_rgb_matrix
*/

begin:
	// Setup pointers and color.
	inc R0, R0                  // addr = 1
	inc R0, R0                  // addr = 2
	inc R0, R0                  // addr = 3
	ld R7, R0                   // R7 <- p_rgb_matrix
	inc R0, R0                  // addr = 4
	ld R6, R0                   // R6 <- p_frame_sync
	inc R0, R0                  // addr = 5
	ld R5, R0                   // R5 <- p_pb_dec
	inc R3, R3                  // color = RED

frame_sync_rising_edge:
frame_sync_wait_0:
	ld R0, R6                   // R0 <- p_frame_sync
	jmpnz frame_sync_wait_0
frame_sync_wait_1:
	ld R0, R6                   // R0 <- p_frame_sync
	jmpz frame_sync_wait_1

//TODO Implement drawing snake to RGB matrix.
draw_snake_begin:
	// color is RED at this point.
	shl R3, R3                  // color = GREEN;
	shl R3, R3                  // color = BLUE;
	//TODO Setup pointer to food and snake chunks.
draw_snake_loop:
	//TODO Read chunk of snake.
	//TODO write to addr: p_rgb_matrix + (y << 3) + x
	//TODO Change color.
	//TODO Move to next chunk.
	jmp draw_snake_loop
draw_snake_end:

move_snake_begin:
	sub R0, R0, R0              // addr = 0
	ld R4, R0                   // R4 <- p_food_and_snake
	// R4 points to food.
	inc R4, R4
	inc R4, R4
	// R4 points to head.
	ld R1, R4                   // R1 <- p_food_and_snake->x
	ld R0, R5                   // R0 <- p_pb_dec->x
	inc R5, R5                  // Move to p_pb_dec->y
	add R0, R0, R1              // Moving x by controls.
	st R0, R4                   // R0 -> p_food_and_snake->x
	inc R4, R4                  // Go to p_food_and_snake->y.
	ld R2, R4                   // R2 <- p_food_and_snake->y
	ld R0, R5                   // R0 <- p_pb_dec->y
	dec R5, R5                  // Return to p_pb_dec->x
	add R0, R0, R2              // Moving y by controls.
	st R0, R4                   // R0 -> p_food_and_snake->y
	inc R4, R4                  // p_food_and_snake++; Next chunk.
move_snake_loop:
	ld R0, R4                   // R0 <- p_food_and_snake->x
	jmps move_snake_end         // Jump to end if passed tail of snake.
	st R1, R4                   // prev chunk x -> p_food_and_snake->x
	mov R1, R0                  // Current x is now prev x.
	inc R4, R4                  // Go to p_food_and_snake->y.
	ld R0, R4                   // R0 <- p_food_and_snake->y
	st R2, R4                   // prev chunk y -> p_food_and_snake->y
	mov R2, R0                  // Current y is now prev y.
	inc R4, R4                  // p_food_and_snake++; Next chunk.
	jmp move_snake_loop
move_snake_end:

	jmp frame_sync_rising_edge
