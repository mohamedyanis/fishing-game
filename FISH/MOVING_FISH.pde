class Fish { //Name of the class

  float x,y;   // x,y location of the fish
  PImage Goldfish; //I have loaded this to store my goldfish image / given it a name
  int deltaX = 1; //This integer will be the speed for my fish when they move across the X axis
  int deltaY = 1; //This integer will be the speed for my fish when they move across the Y axis


  //This is my constructor for the fish
  Fish(float FishX, float FishY) { //The fish constructor has an X and Y position 
    x = FishX; //Here I have given my float X a name, which refers to the fish
    y = FishY; //Here I have given my float y a name, which refers to the fish
   
  } 
  
  void display() { //this is how I want each fish to display when the game runs
  for(int i=0; i<5; i=i+3)
{ 
 Goldfish = loadImage("GOLDFISH.png"); //here I have loaded my goldfish image that I am going to use
 image(Goldfish, x, y, 40,60); //the image has an x and y position, along with the height and width
 x=x+deltaX; //this will allow the fish to move along the x axis when the game runs
 y=y-deltaY;  //this will allow the fish to move along the y axis when the game runs


 if (x>565) //this means, while the fish is moving, if the x position is greater than 564
 deltaX = -deltaX; //then deltaX is subtracted from itself, which makes it move the opposite way 
 else if (x<= -10) //otherwise, if the x position is less than or equal to 10
 deltaX = -deltaX; //then it will subtract deltaX from itself, making it move in the opposite direction 
   
 if (y<= 210) //if the y position of the fish is less than or equal to 210, then...
 deltaY = -deltaY; //deltaY is subtracted from itself, making it move in the opposite direction 
 else if (y >= 730) //otherwise, if the y position is more than or equal to 730, then..
 deltaY = -deltaY; //deltaY will be subtracted from itself, making the fish move in the opposite direction
   
   
   
   
  }
}

}
