///////////////////////////////////////////////////////////////////////
# Spinner Layout by Tankman3737               
# As always, thanks to those developers for their time, effort a great modules                                                                
# (AM+) v3.0.9                                          
# Updated (07-11-24)                                       
///////////////////////////////////////////////////////////////////////



class UserConfig {
	
    

    </ label="Center Artwork", 
       help="Artwork for center circle ",
       options="Snap,Boxes,Both", order=1, /> ART="Snap";
 

}
cfg <- fe.get_config()




# Layout Size
fe.layout.preserve_aspect_ratio = true
  
fe.layout.width=1920;
fe.layout.height=1080;

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;
	
# Modules

fe.load_module("wheel");
fe.load_module("animate");
fe.load_module("fade");
fe.load_module("file");
fe.load_module("file-format");
fe.load_module("inertia")



local Bigsnap=fe.add_artwork("snap",575,140,1200,800)


local BG=fe.add_image("spinner assets/BG.png", 0, 0, 1920, 1080);
//local fanart=fe.add_artwork("fanart", 0, 0, 1920, 1080);
local shS=fe.add_surface(1920,1080)
shS.x=0
shS.y=0

local sh=shS.add_image("spinner assets/shaft.png", 0, 0, 1920, 1080);

local BD=fe.add_image("spinner assets/B_door.png", 0, 0, 1920, 1080);
local TD=fe.add_image("spinner assets/T_door.png", 0, 0, 1920, 1080);


local SM=fe.add_surface(1920,1080)
SM.x=0
SM.y=0

local cogback=SM.add_image("spinner assets/cog_backing.png", 0, 0, 1920, 1080);



if (cfg["ART"] == "Snap")
{
   
local snap=SM.add_artwork("snap",960,540,420,420)
snap.anchor=Anchor.Centre
local mask = fe.add_image("spinner assets/round_mask.png");
mask.visible = false;
snap.shader = ::fe.add_shader(Shader.Fragment, "mask.frag");
snap.shader.set_texture_param("mask", mask);
snap.video_flags = Vid.NoAudio;
}
if (cfg["ART"] == "Boxes")
{
	
local box=SM.add_artwork("3Dboxes",960,540,200,300)
box.anchor=Anchor.Centre
}
   
if (cfg["ART"] == "Both")
{
	local snap=SM.add_artwork("snap",960,540,420,420)
snap.anchor=Anchor.Centre
local mask = fe.add_image("spinner assets/round_mask.png");
mask.visible = false;
snap.shader = ::fe.add_shader(Shader.Fragment, "mask.frag");
snap.shader.set_texture_param("mask", mask);
snap.video_flags = Vid.NoAudio;
local box=SM.add_artwork("3Dboxes",960,540,200,300)
box.anchor=Anchor.Centre
}















local Bcog=SM.add_image("spinner assets/Bigcog2.png", 0, 0, 1920, 1080);
Bcog.rotation_origin_x=0.5
Bcog.rotation_origin_y=0.5
//Bcog.alpha=0
local Bcog2=SM.add_image("spinner assets/Bigcog2.png", 0, 0, 1920, 1080);
Bcog2.rotation_origin_x=0.5
Bcog2.rotation_origin_y=0.5


local ringS=SM.add_surface(1920,1080)
ringS.x=0
ringS.y=0

local TL=ringS.add_surface(1920,1080)
TL.x=0
TL.y=0
//TL.alpha=0

local gearTL=TL.add_image("spinner assets/gearTL.png", 0, 0, 1920, 1080);
local gearTR=TL.add_image("spinner assets/gearTR.png", 0, 0, 1920, 1080);
local gearBR=TL.add_image("spinner assets/gearBr.png", 0, 0, 1920, 1080);
local gearBL=TL.add_image("spinner assets/gearBL.png", 0, 0, 1920, 1080);

local gearTL2=TL.add_image("spinner assets/gearTL.png", 0, 0, 1920, 1080);
local gearTR2=TL.add_image("spinner assets/gearTR.png", 0, 0, 1920, 1080);
local gearBR2=TL.add_image("spinner assets/gearBr.png", 0, 0, 1920, 1080);
local gearBL2=TL.add_image("spinner assets/gearBL.png", 0, 0, 1920, 1080);


local outer_ring=ringS.add_image("spinner assets/outer_ring2.png", 0, 0, 1920, 1080);

local Gring=SM.add_image("spinner assets/grey_ring.png", 0, 0, 1920, 1080);
local wheel = fe.add_wheel("circle",SM)

local Lback=SM.add_image("spinner assets/lens_back.png", 0, 0, 1920, 1080);


local Lfront=SM.add_image("spinner assets/lens_front.png", 0, 0, 1920, 1080);
Lfront.zorder=50
local bracket=SM.add_image("spinner assets/bracket.png", 0, 0, 1920, 1080);
bracket.zorder=50


//MARK:  Transitions
     function Bcog( ttype, var, ttime )
     {
         if( ttype==Transition.ToNewSelection)
         {

			  Bcog.to_rotation+=30
			  Bcog2.to_rotation-=30
              gearTL.x=-30
              gearTL.y=-30
              gearTR.x=30
              gearTR.y=-30
              gearBR.x=30
              gearBR.y=30
              gearBL.x=-30
              gearBL.y=30
              SM.x=0
              sh.delay_x=1900
              sh.x=-1150
              sh.to_x=0

              
         }
		  if( ttype==Transition.StartLayout)
         {
           
			  
         }
		  if( ttype==Transition.EndNavigation)
         {
             
            
              gearTL.to_x=0
              gearTL.to_y=0
              gearTL.delay_x=1000
              gearTL.delay_y=1000
              gearTR.to_x=0
              gearTR.to_y=0
              gearTR.delay_x=1000
              gearTR.delay_y=1000
              gearBR.to_x=0
              gearBR.to_y=0
              gearBR.delay_x=1000
              gearBR.delay_y=1000
              gearBL.to_x=0
              gearBL.to_y=0
              gearBL.delay_x=1000
              gearBL.delay_y=1000
              //SM.tween_all = Tween.Linear;
              SM.delay_x=2100
              SM.x=0
              SM.to_x=-1150
              BD.y=0
              BD.to_y=540
              BD.delay_y=1500
              TD.y=0
              TD.to_y=-540
              TD.delay_y=1500
              shS.delay_x=2100
              shS.x=0
              shS.to_x=-1150
         
         }
		  
        
    }

fe.add_transition_callback( "Bcog" );


local anrd = { when=Transition.ToNewSelection, property="x"end=0,time=100, }
animation.add( PropertyAnimation(SM, anrd ) );


local anBD = { when=Transition.ToNewSelection, property="y"end=0,time=200, }
animation.add( PropertyAnimation(BD, anBD ) );

local anTD = { when=Transition.ToNewSelection, property="y"end=0,time=200, }
animation.add( PropertyAnimation(TD, anTD ) );

//MARK: Inertia
shS= Inertia(shS, 1500,"x","y");
sh= Inertia(sh, 200,"x","y");
TD= Inertia(TD, 1000,"x","y");
BD= Inertia(BD, 1000,"x","y");   

gearTL2= Inertia(gearTL2, 50,"x","y");
gearTR2= Inertia(gearTR2, 50,"x","y");
gearBR2= Inertia(gearBR2, 50,"x","y");
gearBL2= Inertia(gearBL2, 50,"x","y");

gearTL= Inertia(gearTL, 100,"x","y");
gearTR= Inertia(gearTR, 100,"x","y");
gearBR= Inertia(gearBR, 100,"x","y");
gearBL= Inertia(gearBL, 100,"x","y");
SM= Inertia(SM, 1500,"x");
Bcog= Inertia(Bcog, 300"rotation","alpha");
Bcog2= Inertia(Bcog2, 300"rotation","alpha");




//MARK: SIG controls
function interationControls(sig)
{
    switch (sig)
    {
        case "left":
            fe.signal("prev_game");

            Bcog2.alpha=0
            Bcog.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-30
            gearTL2.to_y=-30 
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=30
            gearTR2.to_y=-30
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=30
            gearBR2.to_y=30
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-30
            gearBL2.to_y=30

          
            return true;
        case "right":
            fe.signal("next_game");

            Bcog.alpha=0
			Bcog2.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-30
            gearTL2.to_y=-30
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=30
            gearTR2.to_y=-30
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=30
            gearBR2.to_y=30
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-30
            gearBL2.to_y=30

             
            return true;
        case "up":
            fe.signal("prev_game")
			
            Bcog2.alpha=0
            Bcog.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-30
            gearTL2.to_y=-30
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=30
            gearTR2.to_y=-30
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=30
            gearBR2.to_y=30
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-30
            gearBL2.to_y=30

            return true;
        case "down":
            fe.signal("next_game")
			Bcog.alpha=0
			Bcog2.alpha=255
            gearTL2.x=0
            gearTL2.y=0
            gearTL2.to_x=-30
            gearTL2.to_y=-30
            gearTR2.x=0
            gearTR2.y=0
            gearTR2.to_x=30
            gearTR2.to_y=-30
            gearBR2.x=0
            gearBR2.y=0
            gearBR2.to_x=30
            gearBR2.to_y=30
            gearBL2.x=0
            gearBL2.y=0
            gearBL2.to_x=-30
            gearBL2.to_y=30

            
            return true;
        default:
         }
            return false;
   
}
fe.add_signal_handler("interationControls");




