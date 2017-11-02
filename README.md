# UIMask
[![donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=5VW3E89ZUYYXC)

Reverse Mask of Unity "Mask" component.
![mask_test](https://cloud.githubusercontent.com/assets/7010398/10592593/955f4836-76c5-11e5-9262-81b36b241c68.PNG)

How to use:

1. Download shaders from the provided link

2. Put them into your project (anywhere would do, but keep in mind your own project hierarchy)

3. Notice that there are two shaders (UIMask and UIMasked). You need to create two materials (i.e. ReverseMask and ReverseMasked).

4. Create a new material (ReverseMask) and under "Shader" drop-down menu, select "IndieYP->UIMask". As it's texture, put the texture that you want to be the mask (in my case it was a circle, because I wanted the make a "hole" in the black background).

5. Create a new material (ReverseMaked) and under "Shader" drop-down menu, select "IndieYP->UIMasked". Set the color of you material (in my case, black).

6. Now you need to assign the materials to your game objects. ReverseMasked goes to the game object that you want to mask (in my case, panel that's serving as a background). ReverseMask goes to game object that's going to do the masking, in my case, image that's set as a child of the mentioned panel (this is very important).

Also, set the same texture (that you used for ReverseMask) as a source image for Image game object.
