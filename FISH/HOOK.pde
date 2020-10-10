class HOOK //name I have given to the Hook class
{
  int x = 240; //integer to store the x position of the hook 
  int y; //integer assigned to y has been declared
  PImage Hook; //I have loaded this to store my hook image / given it a name

  HOOK(int x, int y) //this is my constructor for my hook 
  {
    this.x = x; //refers to the current object, the hook; it has been assigned to the integer x
    this.y = y; //refers to the current object, the hook; it has been assigned to the integer y
  }

   void render() //this will render my hook, making it appear on the screen 
  {
 Hook = loadImage("Hook.png"); //the PImage Hook has been loaded with my hook image
 image(Hook, x, y, 30,30); //the hook image has been given an x and y position and a height and width value
 y=y+1; //the integer y has been assigned to y plus one - this will make the hook move
  }
  
  boolean crash() //boolean declared called crash to make the hook catch the fish
  {
    color findColour; //this stores the variable for the colour I want the hook to interact with
    for(int i = y; i < y +20; i++) //this is a for loop which will scrub through to find the colour I want the hook to interact with 
    {
      findColour = get (x, i); //the findColour variable is now equal to getting the colour I want
      if(findColour == color(255,127,0)) //if findColour is equal to the colour I have selected, which is orange
      {
        return true; //then returns a true to say this is the correct colour 
      }
    }
    return false; //if it is not the correct colour, it returns a false
  }
  
  
  
  
  
  
  
  
  
  
}
