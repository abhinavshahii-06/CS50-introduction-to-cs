#include <cs50.h>
#include <stdio.h>

void print_row(int bricks);

int main(void) 
{
    // Prompt user for input
    int height;
    do 
    {
        height = get_int("Enter the height of the pyramid: ");
    }
    while (height < 1);

    // Print a pyramid of that height
    for (int i = 0; i < height; i++)
    {
        print_row(height);
    }
}

void print_row(int bricks) 
{
    for (int i = 0; i < bricks; i++){
        printf("#");
    }
    printf("\n");

}