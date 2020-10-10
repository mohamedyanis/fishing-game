PImage background; //I have loaded this to store my background image / given it a name
int x = 0; //the value 0 is assigned to x
int game = 0; //the game variable has been assigned to 0
int Running = 0; //the game Running variable has been assigned to 0
int over = 1; //the game over variable has been assigned to 1
int deltaX = 0; //deltaX has been assigned to 0;
int points = 0; //the points variable has been assigned to 0


Fish[][] grid; // 2D Array of objects, which will be the fish


int cols = 5; //this integer will store 5, which will be the number of columns
int rows = 5; //this integer will store 5, which will be the number of rows
BOAT Boat; //the Boat class has been initialised here and given a new name
HOOK Hook; //the HOOK class has been initialised here and given a new name


void setup() //this is where variables and functions are declared
{
    size(600, 800); //this is the size of the screen; 600 pixels by 800 pixels
    background = loadImage("seaBackground.jpg"); //this is where I have loaded the underwater background
    background.resize(width, height); //the background will fill the height and width of the screen size
    Boat = new BOAT(); //the new name of the Boat has been linked to the BOAT class
    Hook = null; //the Hook is equal to null, nothing - which means it will not appear


    grid = new Fish[cols][rows];  //grid is now equal to a new fish, which will now have columns and rows
    for (int i = 0; i < cols; i++) { //this loop initialises 5 columns of fish
        for (int j = 0; j < rows; j++) { //this loop initialises 5 rows of fish

            grid[i][j] = new Fish(i * 55 + 250, j * 65 + 400); //this is where I have positioned the grid of fish to appear on screen
        }

    }


}


void draw() //this will execute the function
{
    if (game == Running) //if statment is saying that this is what happens if the game is running
    {
        drawBackground(); //makes the background appear on the screen
        Boat.render(); //makes the boat appear on the screen

        textSize(30); //size of the text, which is "Points"
        fill(0, 0, 0); //the colour of the text that will appear on screen
        text("Points: " + points, 20, 40); //makes "Points" appear on screen in the top left

 
        for (int i = 0; i < cols; i++) { //the variables i and j also refer to the rows and columns 
            for (int j = 0; j < rows; j++) { //and are used for the constructor for each fish on my grid
                if (grid[i][j] != null) { //if the fish are not equal to null

                    grid[i][j].display(); //this will make the grid of fish appear

                }



                if (Hook != null) { //if the hook is not equal to Null
                    Hook.render(); //then the hook will render / appear on screen

                    if (Hook.crash()) { //if the hook crashes, as declared on the hook class, it will crash to find the colour orange
                        Hook = null; //then the hook will disappear
                        grid[i][j] = null; { //as it makes one of the fish on the grid also disappear, too
                        points = points + 5; //then when one fish has been hit, 5 points are added to the score
                        }


                    }

                }

            }

        }

    }


    if (points == 125) { //if the points are equal to 125

        background(77, 166, 255); //the background will change to a solid colour
        textSize(70); //text size of the message
        fill(0, 0, 0); //colour of the text
        text("Game Finished", 40, 350); //the text that will appear
        textSize(30); //size of the text that will appear
        text("YOU CAUGHT ALL THE FISH!", 90, 450); //other piece of text that will appear

        game = over; //the game will end - which means it will freeze





    }


}

void drawBackground() //initialises the background
{
    image(background, x, 0); //the background has been given an x position, along with 0
}


void keyPressed() //this is to control the boat using keys on the keyboard
{

    if (key == ' ') { //if the space key has been pressed
        Hook = new HOOK(Boat.x, Boat.y); //then the hook appears on screen
    }

    if (key == CODED) {

        if (keyCode == LEFT) //if the left arrow key has been pressed
        {
            if (Boat.x > -7) { //if the x position of the boat is more than -7
                Boat.boatPointingLeft = true; //then the image showing the boat pointing left will render
                Boat.x = Boat.x - 8; //and the x position of the boat will equal the same x position minus 8 
                //this is so the boat stays within the canvas size and does not go off the left edge of the screen
            }
        }

        if (keyCode == RIGHT) //if the right arrow key has been pressed
        {
            if (Boat.x < 496) { //if the x position of the boat is less than 496
                Boat.boatPointingLeft = false; //then the boat image pointing left will not render, rendering the right position image
                Boat.x = Boat.x + 8; //and the x position of the boat will equal the same x position plus 8
                //this is so the boat stays within the canvas size and does not go off the right edge of the screen
            }


        }

    }

}
