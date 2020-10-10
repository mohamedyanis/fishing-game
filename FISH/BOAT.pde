class BOAT //name of the boat class
{
  boolean boatPointingLeft = true; //this boolean is true, which will make the boat point to the left
  int x = 240; //this is the x position of my boat on screen 
  int y = 120; //this is the y position of my boat on screen
  PImage Boat; //I have loaded this to store my boat image / given it a name
  

 void render() //this will render my boat, making it appear on screen
  {
    if ( boatPointingLeft == true ) { //if the boat is poiting left, and its true, which it is
      Boat = loadImage("BOAT.png"); //then we change the image to the boat pointing in the left direction 
    }
    else { //this means, if the boat is not pointing left, then...
      Boat =  loadImage("BOAT_RIGHT.png"); //we load the image pointing in the right direction
    }
    image(Boat,x,y); //the image has been assigned with an x and y position 
  }
}
