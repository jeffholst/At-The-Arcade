////////////////////////////////////////////////////////////////////////////////////////////////////////
// At-The-Arcade theme v10.0
// 
// Design, Code and Art by Yaron2019
//
// Special thanks to farique for his ingenious scrolling text code!
// CRT screen glow shader by zpaolo11x
// 'coordinates table for different screen aspects' code adapted from nevato theme
// Letters and 'System games count' code adapted from pcca theme
////////////////////////////////////////////////////////////////////////////////////////////////////////   

local orderx = 0;
local divider = "----"

class UserConfig {
	</ label="Enable startup animations", help="Enable system animation when layout starts", 
		options="Yes,No", order=orderx++ /> enable_ini_anim="Yes";
	</ label="Startup animation transition time", 
		help="Startup animation transition time in milliseconds", 
		options="500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000",
		order=orderx++
		/>ini_anim_trans_ms="1000";
	</ label="Select background image", help="Select static, animated or panscan background art", options="Retro,Retro Animated,Polygon Trip,Panscan", order=orderx++ /> enable_image="Retro Animated";   
	</ label="Enable background scanline", help="Show scanline effect on background image", options="No,Light,Medium,Strong", order=orderx++ /> enable_bg_scanline="No";
	</ label="Enable arcade hall ambience sound", help="Play arcade hall ambience sound", options="No,It's 1983,It's 1992", order=orderx++ /> enable_ambience="It's 1983";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx1 = " "

	</ label="Type of wheel", help="Select round or vertical wheel", options="Round,Vertical", order=orderx++ /> wheel_type="Round";
	</ label="Size of wheel logos", help="Use smaller or larger wheel logos", options="Smaller,Larger", order=orderx++ /> wheel_logo_size="Larger";
	</ label="Preserve wheel logo's aspect ratio", help="Preserve the original aspect ratio of the wheel logos, great for vertical wheel mode", options="Yes,No", order=orderx++ /> wheel_logo_aspect="No";
	</ label="Enable wheel logos mipmap", help="Mipmap reduces aliasing artifacts (jagged edges) for high resolution wheel logos", options="Yes,No", order=orderx++ /> wheel_logo_mipmap="No";
	</ label="Adjust wheel position", help="Adjust wheel position closer to or further from the right side of the screen", options="Adjust Left,Adjust Right", order=orderx++ /> wheel_poisition="Adjust Left";																										
	</ label="Enable semitransparent wheel", help="Semitransparent or fully opaque wheel logos", options="Yes,No", order=orderx++ /> wheel_semi_t="No";
	</ label="Number of wheel slots", 
		help="Number of slots in the wheel", 
		options="4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80",
		order=orderx++
		/>wheels="10";
	</ label="Wheel transition time", 
		help="wheel spin tranistion time in milliseconds", 
		options="1,25,50,75,100,125,150,175,200",
		order=orderx++
		/>transition_ms="50";
	</ label="Wheel fade out", help="Fade out wheel after navigation", options="No,Completely,Partially", order=orderx++ /> wheel_fadeout="Completely";
	</ label="Wheel fade out animation time", help="The time (in milliseconds) it takes the wheel to fade", options="500,1000,2000,3000", order=orderx++ /> wheel_fade_ms="500"; 
	</ 	label			= "Delay time",
		help			= "The time (in milliseconds) it takes to start hiding the wheel and pointer",
		options			= "500,750,1000,1250,1500,1750,2000,2250,2500,2750,3000",
		order			= orderx++
	/> 	set_ms_delay	= "1250";	
	</ label="Enable wheel pulse", help="Animate a pulse of the current wheel logo - will pulse only once if wheel fadeout is enabled", options="No,Once,Loop", order=orderx++ /> wheel_pulse="Loop";
	</ label="Enable wheel background", help="Show wheel background texture", options="No,Light,Medium,Dark", order=orderx++ /> enable_wl_bg="Light";
	</ label="Enable wheel sounds", help="Play sounds when navigating systems wheel", options="No,Random,Click,Arcade Joystick", order=orderx++ /> enable_random_sound="Random"; 
	</ label="Show wheel pointer", help="Show animated pointer", options="Yes,No", order=orderx++ /> enable_pointer="No";
	</ label="Enable Letters", 
		help="Show graphical letters on the screen when pressing the wheel's 'Next Letter' or 'Previous Letter' hotkeys set in the Controls menu.\n 'System Display Name' option will seek the letters in a folder identical to the current system display name (attract/letters/mame for example).", 
		options="No,Default,By System Display Name", order=orderx++ /> letters_type="Default";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx2 = " "

	</ label="Enable game snap aspect ratio", help="Show game snap videos in their original aspect ratio (horizontal or vertical)", options="Yes,No", order=orderx++ /> enable_verticlesnap="No";
	</ label="Enable CRT screen glow", help="Show CRT screen glow effect if device is able to run GLSL shaders", options="No,Light,Medium,Strong", order=orderx++ /> enable_crt_screenglow="Medium";
	</ label="Enable CRT scanlines", help="Show CRT scanline effect", options="No,Light,Medium,Dark", order=orderx++ /> enable_crt_scanline="Light";
	</ label="Enable scratches over CRT", help="Show scratches over the CRT for extra authenticity", options="Yes,No", order=orderx++ /> enable_crt_scratches="Yes";
	</ label="Enable CRT bloom shader effect", help="Creates a bloom effect for the snap video, if device is able to run GLSL shaders", options="Yes,No", order=orderx++ /> enable_bloom="No";
	</ label="Mute game snap videos", help="Mute game snap videos", options="Yes,No", order=orderx++ /> mute_videos="No"; 
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx3= " "

 	</ label="Show marquee", help="Show marquee art on top of arcade cabinet", options="No,Marquee,Arcade Classics1,Arcade Classics2,Insert coin sign,Title (Short),Title (Full)", order=orderx++ /> enable_gmarquee="Marquee"; 
 	</ label="Enable lighted marquee effect", help="Light on or off for the Marquee", options="Yes,No", order=orderx++ /> enable_Lmarquee="Yes";
	</ label="Marquee title scroll speed", 
		help="Scroll speed of game title text - value between 0.1 and 1", 
		options="0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1",
		order=orderx++
		/>scrlSpeed="0.2";
	</ label="Marquee title scroll delay", 
		help="Wait time in milliseconds before the scroll starts - value between 1000 and 10000", 
		options="1000,2000,3000,4000,5000,6000,7000,8000,9000,10000",
		order=orderx++
		/>scrlDelay="2000";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx4= " "

	</ label="Enable box art", help="Shows the current game box art if available", options="Yes,No", order=orderx++ /> enable_gboxart="No";
	</ label="Enable flyer art", help="Show flyer art - available only when wheel fadeout is set to Partially or Completely", options="Yes,No", order=orderx++ /> enable_gcartart="No";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx5= " "

	</ label="Show game information", help="Show game info", options="No,Info,Info and Enumerate", order=orderx++ /> enable_gameinfo="No";
	</ label="Game name", help="Show game title only or manufacturer and game title. If there is no manufacturer name in the romlist, only the game title will be shown.", 
		options="Title Only,Manufacturer and Title", order=orderx++ /> enable_game_manu="Title Only";
	</ label="Enable random text colors", help="Enable game info random text colors", options="Yes,No", order=orderx++ /> enable_colors="No";
	</ label="Enable text frame", help="Show frame to make game info text standout ", options="Yes,No", order=orderx++ /> enable_frame="No"; 
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx6= " "

	</ label="Mark favourite games", help="Mark favourite games with an icon to the left of the wheel logo or at the bottom with the game info", options="No,Left of Wheel,With Game Info", order=orderx++ /> enable_favstar="Left of Wheel";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx7= " "

	</ label="Search key", help="Choose the key to initiate a search", options="Custom1,Custom2,Custom3,Custom4,Custom5,Custom6", order=orderx++ /> user_search_key="Custom1";
	</ label="Search box size", help="Choose size of the search box", options="Small,Large", order=orderx++ /> user_search_boxsize="Small";
	</ label= divider, help=" ", options = " ", order=orderx++ /> paramxx8 = " "
}  

/*if (FeVersionNum < 261) 
{
	while (!fe.overlay.splash_message( "This theme requires Attract Mode v2.6.1 or higher to work properly. \n You are running "+FeVersion+"\n Press Esc key to exit this message.")) {}
} 
print("AM Version = " + FeVersion + "\n");*/

local my_config = fe.get_config();
fe.layout.font="BigSquareDots";

// modules
fe.load_module( "animate" );
fe.load_module( "fade" );
fe.load_module("file");
fe.load_module("file-format");
fe.load_module("gtc");
fe.load_module("gtc-kb");
fe.load_module("gtc-pas");
fe.load_module("sound-player");
// wheel fade delay ini
my_delay <- 0;
try {my_delay = my_config["set_ms_delay"].tointeger();} catch(e) {}
my_play <- my_delay;

local ini_anim_time;
try { ini_anim_time =  my_config["ini_anim_trans_ms"].tointeger(); } catch ( e ) { }

// Letters ini
local rtime = 0;
local glob_time = 0;
local glob_delay;
try { glob_delay =  my_config["set_ms_delay"].tointeger(); } catch ( e ) { }
if ( glob_delay > 750 )
	glob_delay = 750;

//coordinates table for different screen aspects -- Start
local settings = {
   "default": { 
   //16x9 is default
      aspectDepend = { 
        res_x = 2133,
        res_y = 1200,
        maskFactor = 1.9}
   },
   "16x10": {
      aspectDepend = { 
        res_x = 1920,
        res_y = 1200,
        maskFactor = 1.9}
   },
    "16x9": {
      aspectDepend = { 
        res_x = 1920,
        res_y = 1080,
        maskFactor = 1.9}
   },
   "4x3": {
      aspectDepend = { 
        res_x = 1600,
        res_y = 1200,
        maskFactor = 1.6}
   }
   "5x4": {
      aspectDepend = { 
        res_x = 1500,
        res_y = 1200,
        maskFactor = 1.6}
   }
}

local aspect = fe.layout.width / fe.layout.height.tofloat();
local aspect_name = "";
switch( aspect.tostring() )
{
    case "1.77865":  //for 1366x768 screen
    case "1.77778":  //for any other 16x9 resolution
        aspect_name = "16x9";
        break;
    case "1.6":
        aspect_name = "16x10";
        break;
    case "1.33333":
        aspect_name = "4x3";
        break;
    case "1.25":
        aspect_name = "5x4";
        break;
    case "0.75":
        aspect_name = "3x4";
        break;
}
print("Attract-Mode Version: " + FeVersion + "\n" + "Screen aspect ratio: "+aspect_name+"\n" + "Resolution: "+ScreenWidth+"x"+ScreenHeight+"\n" + "Shader GLSL available: "+ShadersAvailable+"\n" + "OS: "+OS+"\n");

function Setting( id, name )
{
    if ( aspect_name in settings && id in settings[aspect_name] && name in settings[aspect_name][id] )
  {
    ::print("\tusing settings[" + aspect_name + "][" + id + "][" + name + "] : " + settings[aspect_name][id][name] + "\n" );
    return settings[aspect_name][id][name];
  } else if ( aspect_name in settings == false )
  {
    ::print("\tsettings[" + aspect_name + "] does not exist\n");
  } else if ( name in settings[aspect_name][id] == false )
  {
    ::print("\tsettings[" + aspect_name + "][" + id + "][" + name + "] does not exist\n");
  }
  ::print("\t\tusing default value: " + settings["default"][id][name] + "\n" );
  return settings["default"][id][name];
}

fe.layout.width = Setting("aspectDepend", "res_x");
fe.layout.height = Setting("aspectDepend", "res_y");

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

local mask_factor = Setting("aspectDepend", "maskFactor");

//coordinates table for different screen aspects -- End


//////////////////////////////////////////////////////////////////////////////////////////////////
// Select background or pan-and-scan 
if ( my_config["enable_image"] == "Retro") 
	local bg = fe.add_image( FeConfigDirectory+"gtc-common/art/arcade/bkg.jpg", 0, 0, flw, flh );

if ( my_config["enable_image"] == "Retro Animated")
	local bg = fe.add_image( FeConfigDirectory+"gtc-common/videos/bkg_anim.mp4", 0, 0, flw, flh );
	
if ( my_config["enable_image"] == "Polygon Trip")
{
	local bg = fe.add_image( FeConfigDirectory+"gtc-common/videos/Polygon Trip.mp4", 0, 0, flw, flh );
	bg.video_flags = Vid.NoAudio;
}


if ( my_config["enable_image"] == "Panscan") 
{
	local bgart = PanAndScanImage( FeConfigDirectory+"gtc-common/art/arcade/panscan.jpg", 0, 0, flw, flh);
	bgart.trigger = Transition.EndNavigation;
	bgart.preserve_aspect_ratio = false;
	bgart.set_fit_or_fill("fill");
	bgart.set_anchor(::Anchor.Center);
	bgart.set_zoom(0, 0.00008);
	bgart.set_animate(::AnimateType.Bounce, 0.10, 0.10)
	bgart.set_randomize_on_transition(true);
	bgart.set_start_scale(1.1);
	 local alpha_cfg = {
		when = Transition.StartLayout,
		property = "alpha",
		start = 0,
		end = 255,
		time = 800
	}
	animation.add( PropertyAnimation( bgart, alpha_cfg ) );
}

// ambience sound selection
if ( my_config["enable_ambience"] != "No" )
{
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// Scanline effect overlay for background art
local bg_scanline;
if ( my_config["enable_bg_scanline"] != "No" )
{
	local scanlines = FeConfigDirectory+"gtc-common/art/arcade/scanlines_1920.png"
	if (ScreenWidth < 1920)
		scanlines = FeConfigDirectory+"gtc-common/art/arcade/scanlines_720.png"
		
	bg_scanline = fe.add_image( scanlines, 0, 0, flw, flh );
	bg_scanline.preserve_aspect_ratio = false;

	if ( my_config["enable_bg_scanline"] == "Light" )
		bg_scanline.alpha = 30;
	else if ( my_config["enable_bg_scanline"] == "Medium" )
		bg_scanline.alpha = 80;
	else if ( my_config["enable_bg_scanline"] == "Strong" )
		bg_scanline.alpha = 150;
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// Snap video
// Static effect for cab monitor when no snap is available
local snapbg = fe.add_image(FeConfigDirectory+"gtc-common/videos/static.mp4", flx*0.188, fly*0.312, flw*0.274, flh*0.38);
if ( my_config["enable_ini_anim"] == "Yes" )
{
	local move_transition1 = { when = Transition.StartLayout, property = "x", start = flx*-1.36, end = flx*0.188, tween = "cubic", time = ini_anim_time }
	animation.add( PropertyAnimation( snapbg, move_transition1 ) );
}

// black bezels for vertical snaps
local vertical_cover;
	//vertical_cover = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/vertical_cover.png", flx*0.188, fly*0.312, flw*0.274, flh*0.38);
if ( my_config["enable_verticlesnap"] == "Yes" )
{
	if (flx == 1900 && fly = 1200)
	{
		vertical_cover = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/vertical_cover.png", 150, fly*0.295, 790, flh*0.485);
	}
	else
	{
		vertical_cover = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/vertical_cover.png", flx*0.105, fly*0.295, flw*0.400, flh*0.485);
	}
	
}

// Create surface for snap
local surface = fe.add_surface( 640, 480 );
local snap = surface.add_artwork("snap", 0, 0, 640, 480);
snap.trigger = Transition.EndNavigation;

if ( my_config["enable_verticlesnap"] == "Yes" )
	snap.preserve_aspect_ratio = true;
print("flx='" + flx + "' fly='" + fly + "' flw='" + flw + "'\n")	
// JKH ORIGINAL
// surface.set_pos(flx*0.188, fly*0.312, flw*0.274, flh*0.38);
// New Originial
//surface.set_pos(flx*0.105, fly*0.295, flw*0.365, flh*0.485);
if (flx == 1900 && fly = 1200)
{
	surface.set_pos(155, fly*0.295, flw*0.400, flh*0.485);
}
else
{
	surface.set_pos(flx*0.105, fly*0.295, flw*0.400, flh*0.485);
}

if ( my_config["mute_videos"] == "Yes" )
	snap.video_flags = Vid.NoAudio;

if ( my_config["enable_ini_anim"] == "Yes" )
{
	local move_transition1 = { when = Transition.StartLayout, property = "x", start = flx*-1.36, end = flx*0.188, tween = "cubic", time = ini_anim_time }
	animation.add( PropertyAnimation( surface, move_transition1 ) );

	if ( my_config["enable_verticlesnap"] == "Yes" )
	{
		local vc_transition = { when = Transition.StartLayout, property = "x", start = flx*-1.36, end = flx*0.188, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( vertical_cover, vc_transition ) );
	}
}

// bloom shader
if ( my_config["enable_bloom"] == "Yes" && ShadersAvailable == 1)
{
    local sh = fe.add_shader( Shader.Fragment, "bloom_shader.frag" );
	sh.set_texture_param("bgl_RenderedTexture"); 
	surface.shader = sh;
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// CRT scanline effect
local scanline;
if ( my_config["enable_crt_scanline"] != "No" )
{
	local scanlines = FeConfigDirectory+"gtc-common/art/arcade/scanlines_1920.png"
	if (ScreenWidth < 1920)
		scanlines = FeConfigDirectory+"gtc-common/art/arcade/scanlines_640.png"
		
	scanline = fe.add_image( scanlines, flx*0.188, fly*0.312, flw*0.274, flh*0.50 );
	scanline.preserve_aspect_ratio = false;

	if ( my_config["enable_crt_scanline"] == "Light" )
		scanline.alpha = 50;
	else if ( my_config["enable_crt_scanline"] == "Medium" )
		scanline.alpha = 90;
	else if ( my_config["enable_crt_scanline"] == "Dark" )
		scanline.alpha = 150;

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout, property = "x", start = flx*-1.36, end = flx*0.188, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( scanline, move_transition1 ) );
	}
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// CRT scratches
if ( my_config["enable_crt_scratches"] == "Yes" )
{
	local scratched_cover = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/scratched_cover.png", flx*0.188, fly*0.312, flw*0.274, flh*0.37)
	scratched_cover.alpha = 100;

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout, property = "x", start = flx*-1.36, end = flx*0.188, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( scratched_cover, move_transition1 ) );
	}
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// Cabinet image
local cab = fe.add_image("Arcade.png", 0, 0, flw, flh );

if ( my_config["enable_ini_anim"] == "Yes" )
{
	local move_transition1 = { when = Transition.StartLayout,	property = "x",	start = flx*-1.555,	end = flx*0.0, tween = "cubic",	time = ini_anim_time }
	animation.add( PropertyAnimation( cab, move_transition1 ) );
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// Marquee 
if ( my_config["enable_gmarquee"] == "Marquee" )
{
	// JKH ORIGINAL
	// local marquee = fe.add_artwork("marquee", flx*0.146, fly*0.039, flw*0.362, flh*0.185 );
	local marquee
	if (flx == 1920 && fly == 1080)
	{
		marquee = fe.add_artwork("marquee", 120, fly*0.00, 870, flh*0.220 );
	}
	else if (flx == 1900 && fly == 1200)
	{
		marquee = fe.add_artwork("marquee", 79, fly*0.00, 930, flh*0.220 );
	}
	else
	{
		marquee = fe.add_artwork("marquee", flx*0.090, fly*0.00, flw*0.430, flh*0.220 );
	}

	marquee.pinch_x = 2;
   	marquee.preserve_aspect_ratio = false;
	marquee.trigger = Transition.EndNavigation;

	if ( my_config["enable_Lmarquee"] == "Yes" )
	{
		local shader = fe.add_shader( Shader.Fragment "bloom_shader_marquee.frag" );
		shader.set_texture_param("bgl_RenderedTexture"); 
		marquee.shader = shader;
	}
	
	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x",	start = flx*-1.41, end = flx*0.146, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( marquee, move_transition1 ) );
	}
}

if ( my_config["enable_gmarquee"] == "Insert coin sign" )
{
	local neon_sign = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/insert_coin.gif", flx*0.146, fly*0.039, flw*0.362, flh*0.185 );
	neon_sign.trigger = Transition.EndNavigation;
	
	if ( my_config["enable_Lmarquee"] == "Yes" )
	{
		local shader = fe.add_shader( Shader.Fragment "bloom_shader_marquee.frag" );
		shader.set_texture_param("bgl_RenderedTexture"); 
		neon_sign.shader = shader;
	}

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x", start = flx*-1.41, end = flx*0.146, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( neon_sign, move_transition1 ) );
	}
}

if ( my_config["enable_gmarquee"] == "Arcade Classics1" || my_config["enable_gmarquee"] == "Arcade Classics2" )
{
	// load background
	local txt_bg = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/led_board.png", flx*0.146, fly*0.039, flw*0.362, flh*0.185 );
	txt_bg.pinch_x = 2;
	txt_bg.preserve_aspect_ratio = false;

	// animate background
	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x",	start = flx*-1.41, end = flx*0.146, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( txt_bg, move_transition1 ) );
	}
	
	// Show Title
	local arcade_sign = fe.add_artwork(my_config["enable_gmarquee"]+".png", flx*0.177, fly*0.049, flw*0.3, flh*0.17 );
	arcade_sign.trigger = Transition.EndNavigation;
	
	if ( my_config["enable_Lmarquee"] == "Yes" )
	{
		local shader = fe.add_shader( Shader.Fragment "bloom_shader_marquee.frag" );
		shader.set_texture_param("bgl_RenderedTexture"); 
		arcade_sign.shader = shader;
	}

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x", start = flx*-1.41, end = flx*0.177, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( arcade_sign, move_transition1 ) );
	}
}

// Marquee Game Title - Scrolling text
if ( my_config["enable_gmarquee"] == "Title (Short)" || my_config["enable_gmarquee"] == "Title (Full)")
{
	// Load led board background texture
	local txt_bg = fe.add_image(FeConfigDirectory+"gtc-common/art/arcade/led_board.png", flx*0.146, fly*0.039, flw*0.362, flh*0.185 );
	txt_bg.pinch_x = 2;
	txt_bg.preserve_aspect_ratio = false;

	// animate led board background
	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x",	start = flx*-1.41, end = flx*0.146, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( txt_bg, move_transition1 ) );
	}

	// Create an array to hold the scrolling text box
	// along with information relevant to its scrolling
	local _scrlMsg = [0] // The fe.text text box layout object
	local scrlSze = [0] // The width of the text box
	local scrlFon = [0] // The font size
	// Other characteristics can be set to be independent between other scroll boxes


	// Variables to help compose the scroll text
	base_text <- [""] // Original text content
	full_text <- [""] // Original text + separator + original text again (to allow a full scroll back to the original text)
	slice_text <- [""] // Get the sliced text and show it
	base_length <- [0] // Original text length
	slice_length <- [0] // Length to slice
	hold_timer <- [0] // Timer to hold the scroll until the delay amount is reached
	enable_scroll <- [true] // Enable the scroll
	scroll_start <- [true] // Enable the start of the scroll timer

	ScrlDelay <- my_config["scrlDelay"].tofloat() // Get the config scroll delay
	ScrlSpeed <- my_config["scrlSpeed"].tofloat() // Get the config scroll speed

	// Don't allow scroll speed and delay to be greater then the following values:
	if (ScrlDelay > 10000)
		ScrlDelay = 10000;
	if (ScrlDelay < 1000)
		ScrlDelay = 1000;
		
	if (ScrlSpeed > 1)
		ScrlSpeed = 1;
	if (ScrlSpeed < 0.1)
		ScrlSpeed = 0.1;

	// Text box to be scrolled.
	scrlSze[0] = flw*0.31; // Set the size (width) of this box
	scrlFon[0] = flw*0.032;

	_scrlMsg[0] = fe.add_text( "[Title]",flx*0.17, fly*0.073, flw*0.31, flh*0.1)
	_scrlMsg[0].set_rgb(255, 120, 0);
	_scrlMsg[0].align = Align.Left
	_scrlMsg[0].charsize = scrlFon[0]
	_scrlMsg[0].nomargin = true // Removing margin helps with the measure
	
	// Set game title shader to light it up
	local shader = fe.add_shader( Shader.Fragment "bloom_shader_text.frag" );
	shader.set_texture_param("bgl_RenderedTexture"); 
	_scrlMsg[0].shader = shader;

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local move_transition1 = { when = Transition.StartLayout,	property = "x",	start = flx*-1.41, end = flx*0.17, tween = "cubic", time = ini_anim_time }
		animation.add( PropertyAnimation( _scrlMsg[0], move_transition1 ) );
	}

	// Invisible box (visible here) to measure the text size to check if it needs scrolling
	// Each scrolling box text is put here (with their attributes) and a .msg_width is performed
	// to measure the width in pixels the text occupies on the screen
	// .msg_width only shows correct width if the text is smaller than the box
	// Hence the need for a very big box to measure the text in full
	// This box should be invisible and in fact can have a (0,0,1920,0) dimension
	local _measure = fe.add_text("", 10, 750, 1900, 100) // Dimensions can be (0,0,1920,0)
	_measure.set_bg_rgb( 64, 64, 64 ); // no need for that
	_measure.align = Align.Right // to maintain size consistency with the scroll boxes
	_measure.nomargin = true  // to maintain size consistency with the scroll boxes
	_measure.visible = false // This box should not be visible

	// transition function to tell when to activate the scroll
	// Here it is activated when
	// changing selection, starting the layout and changing lists
	function transition_callback( ttype, var, ttime )
	{
		switch ( ttype )
		{
			case Transition.FromOldSelection:
			case Transition.StartLayout:
			case Transition.ToNewList:
				ScrollText()
		}
		return false
	}
	fe.add_transition_callback( "transition_callback" )


	// Function called from the transition events
	// to get the new texts, check if the scroll is needed
	// and initialize it if it is the case
	function ScrollText()
	{
		if ( my_config["enable_gmarquee"] == "Title (Full)")
			base_text[0] = fe.game_info(Info.Title) // Get the game title
		else // Title (Short)
		{
			local clean_text = fe.game_info(Info.Title)  // Get the game title
			clean_text = split(clean_text, "([{")  // Split the string on the brackets positions
			base_text[0] = clean_text[0]  // Get only the first element of the array, the one before the brackets
		}
		
		// Go through all the scrolling text boxes
		for (local f=0; f < 1; f++)
		{
			// Apply the current text box characteristics
			// to the measure box to get the correct text size
			_measure.charsize = scrlFon[f]
			_measure.msg = base_text[f]
			local text_width = _measure.msg_width // get the width of the full text in pixels

			base_length[f] = base_text[f].len() // Get the number of characters of the original text
			full_text[f] = base_text[f] + "    " + base_text[f] // Add a separator and a copy of the text to mark the text end
																// and make the roll over seamless (the scroll stops at the beginning of
																// the second instance of the text, after the separator)
			slice_length[f] = 0 // Reset the amount of text to be sliced
			enable_scroll[f] = false // Disable the scroll

			if (scrlSze[f] < text_width) { // If the text box is smaller than the text width...
				enable_scroll[f] = true // ... enable the scroll...
				_scrlMsg[f].align = Align.Left // ... align the text so that removing characters from
											   // the beginning will make the text scroll to the left... 
				scroll_start[f] = true // ... and enable the start of the delay timer
			} else { // if the text fits ...
				_scrlMsg[f].align = Align.Centre // ... restore the original text box alignment 
			}
			_scrlMsg[f].msg = base_text[f] // Put the original ext in its box. if it fits, no problem, 
										   // if not, the end (and the separator) would not be visible anyway
		}
	}


	// The realtime function makes the scroll tick
	function update_realtime( ttime )
	{
		// Go through all the scrolling text boxes
		for (local f=0; f < 1; f++)
		{
			if (scroll_start[f]) { // if scroll is needed the delay timer should start...
				hold_timer[f] = ttime // ... so the timer for the delay is set for the first time...
				scroll_start[f] = false // and disabled to prevent continuous reset (will be reset when the text completes a scroll)
			}
			if (enable_scroll[f]) { // If the scroll is enabled...
				if (ttime > hold_timer[f] + ScrlDelay) { // ... and if the timer is bigger than the configured delay...
					if ( slice_length[f] < base_length[f] + 4 ) { // ... and if the amount of text to be sliced is still less
																  // than the length of the original text plus the separator... 
						slice_length[f] += ScrlSpeed // ... increase the slice amount by the configured speed amount
													 // (the configured amount is usually less than 1.0 so the length
													 // will only be really increased when it reach a full integer amount) ...
						slice_text[f] = full_text[f].slice(slice_length[f]) // ... remove the calculated amount of characters from
																			// the full text (doubled and with the separator)...
						_scrlMsg[f].msg = slice_text[f] // ... and put it into the text box
					}else{ // if the text has scrolled all the way plus the separator, it is at the start of the second copy
						slice_length[f] = 0 // So reset the slice length
						hold_timer[f] = ttime // And reset the timer for the delay again
					}
				}
			}
		}
	}
	fe.add_ticks_callback( this, "update_realtime" )
}


/////////////////////////////////////////////////////////////////////////////////
// wheel background
local wheel_art;
local wheel_art_alpha;
if ( my_config["enable_wl_bg"] != "No" )
{
	// Large is default
	local round_x = 0;
	local round_w = flw;
	local vertical_x = flx*0.1;
	local vertical_w = flw*0.8;
	
	if ( my_config["wheel_poisition"] == "Adjust Right" )
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
		{
			round_x = flx*0.05;
			vertical_x = flx*0.17;
		}
		else //smaller
		{
			round_x = flx*0.27;	
			round_w = flw*0.75;
			vertical_x = flx*0.23;
			vertical_w = flw*0.71;
		}
	}
	if ( my_config["wheel_poisition"] == "Adjust Left" )
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
		{
			round_x = flx*0;
			vertical_x = flx*0.13;
		}
		else //smaller
		{
			round_x = flx*0.2;	
			round_w = flw*0.77;
			vertical_x = flx*0.2;	
			vertical_w = flw*0.7;
		}
	}

	if ( my_config["wheel_type"] == "Round" )
		wheel_art = fe.add_image( FeConfigDirectory+"gtc-common/art/arcade/wheel_art.png", round_x, 0, round_w, flh );
	else
		wheel_art = fe.add_image( FeConfigDirectory+"gtc-common/art/arcade/wheel_vert.png", vertical_x, 0, vertical_w, flh );

	if ( my_config["enable_wl_bg"] == "Light") 
		wheel_art_alpha = 80;
	else if ( my_config["enable_wl_bg"] == "Medium") 
		wheel_art_alpha = 180;
	else if ( my_config["enable_wl_bg"] == "Dark")
		wheel_art_alpha = 255;
	else if ( my_config["enable_wl_bg"] == "No")
		wheel_art_alpha = 0;
		
	wheel_art.alpha = wheel_art_alpha;
}


/////////////////////////////////////////////////////////////////////////////////
// Pointers
local pointer; 

if ( my_config["enable_pointer"] == "Yes") 
{
	local start_x = 0.91;
	local end_x = 0.87;
	
	if ( my_config["wheel_poisition"] == "Adjust Right" )
	{
		start_x = 0.915;
		end_x = 0.89;
	}
		
	pointer = fe.add_image("pointers/default.png", flx*start_x, fly*0.34, flw*0.2, flh*0.35);
	pointer.preserve_aspect_ratio = true;
	
	local movey_cfg = { when = Transition.ToNewSelection, property = "y", start = pointer.y, end = pointer.y, time = 200 }
	animation.add( PropertyAnimation( pointer, movey_cfg ) );

	local movex_cfg = {	when = Transition.ToNewSelection, property = "x", start = flx*end_x, end = pointer.x, time = 200 }	
	animation.add( PropertyAnimation( pointer, movex_cfg ) );
}


/////////////////////////////////////////////////////////////////////////////////
// Wheels
fe.load_module( "conveyor" );

local wheel_count;
try { wheel_count = my_config["wheels"].tointeger(); } catch ( e ) { }

local _partially = 30;
local _alpha;
local wheel_x;
local wheel_y;
local wheel_w;
local wheel_a;
local wheel_h;
local wheel_r;
local num_arts;


// Round wheel
if ( my_config["wheel_type"] == "Round" )
{
	if ( my_config["wheel_poisition"] == "Adjust Left" )
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
			wheel_x = [ flx*0.80, flx*0.795, flx*0.756, flx*0.725, flx*0.70, flx*0.68, flx*0.63, flx*0.68, flx*0.70, flx*0.725, flx*0.756, flx*0.76, ]; 
		else //smaller
			wheel_x = [ flx*0.85, flx*0.850, flx*0.801, flx*0.775, flx*0.75, flx*0.73, flx*0.68, flx*0.73, flx*0.75, flx*0.775, flx*0.8006, flx*0.81, ]; 
	}
	else //adjust right
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
			wheel_x = [ flx*0.85, flx*0.845, flx*0.806, flx*0.775, flx*0.75, flx*0.730, flx*0.68, flx*0.73, flx*0.75, flx*0.775, flx*0.806, flx*0.81, ]; 
		else //smaller
			wheel_x = [ flx*0.90, flx*0.895, flx*0.856, flx*0.825, flx*0.80, flx*0.780, flx*0.73, flx*0.78, flx*0.78, flx*0.825, flx*0.856, flx*0.86, ]; 
	}
	wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.61, fly*0.72 fly*0.83, fly*0.935, fly*0.99, ];
	if ( my_config["wheel_logo_size"] == "Larger" )
		wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.28, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
	else //smaller
		wheel_w = [ flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.19, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, ];
	if ( my_config["wheel_semi_t"] == "Yes" )
		wheel_a = [  80,  80,  80,  80,  80,  80, 255,  80,  80,  80,  80,  80, ];
	else
		wheel_a = [  255,  255,  255,  255,  255,  255, 255,  255,  255,  255,  255,  255, ];
	wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.168,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
	wheel_r = [  30,  25,  20,  15,  10,   5,   0, -10, -15, -20, -25, -30, ];
}
else // Vertical wheel
{
	if ( my_config["wheel_poisition"] == "Adjust Left" )
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
			wheel_x = [ flx*0.72, flx*0.72, flx*0.72, flx*0.72, flx*0.72, flx*0.72, flx*0.685, flx*0.72, flx*0.72, flx*0.72, flx*0.72, flx*0.72, ]; 
		else //smaller
			wheel_x = [ flx*0.74, flx*0.74, flx*0.74, flx*0.74, flx*0.74, flx*0.74, flx*0.70, flx*0.74, flx*0.74, flx*0.74, flx*0.74, flx*0.74, ]; 
	}	
	else //adjust right
	{
		if ( my_config["wheel_logo_size"] == "Larger" )
			wheel_x = [ flx*0.76, flx*0.76, flx*0.76, flx*0.76, flx*0.76, flx*0.76, flx*0.725, flx*0.76, flx*0.76, flx*0.76, flx*0.76, flx*0.76, ]; 
		else //smaller
			wheel_x = [ flx*0.78, flx*0.78, flx*0.78, flx*0.78, flx*0.78, flx*0.78, flx*0.74, flx*0.78, flx*0.78, flx*0.78, flx*0.78, flx*0.78, ]; 
	}
	wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.61, fly*0.72 fly*0.83, fly*0.935, fly*0.99, ];
	if ( my_config["wheel_logo_size"] == "Larger" )
		wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.25, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
	else //smaller
		wheel_w = [ flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.19, flw*0.12, flw*0.12, flw*0.12, flw*0.12, flw*0.12, ];
	
	if ( my_config["wheel_semi_t"] == "Yes" )
		wheel_a = [  80,  80,  80,  80,  150,  150, 255,  150,  150,  80,  80,  80, ];
	else
		wheel_a = [  255,  255,  255,  255,  255,  255, 255,  255,  255,  255,  255,  255, ];
	wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.15,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
	wheel_r = [  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ];
}
num_arts = wheel_count;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( "wheel" ) );
	}

	function on_progress( progress, var )
	{
		local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
		if ( my_config["wheel_logo_mipmap"] == "Yes" )
			m_obj.mipmap = true;
		if ( my_config["wheel_logo_aspect"] == "Yes" )
			m_obj.preserve_aspect_ratio=true;
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

local conveyor = Conveyor();
conveyor.set_slots( wheel_entries );
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }

	
// Favourite games marker
function FavStar() 
{
	if (fe.game_info( Info.Favourite ) == "1") return FeConfigDirectory+"gtc-common/art/arcade/fav.png";
}
	
local favourite_marker;
if ( my_config["enable_favstar"] == "Left of Wheel" )
{
	local x;
	local y;
	local wh;
	
	if (conveyor.m_objs.len() > 0)
	{
		local art = wheel_entries[conveyor.m_objs.len()/2].m_obj;
		x = art.x-(flw*0.042);
		y = art.y+(flh*0.038);
		wh = flw*0.04;
	}
		
	favourite_marker = fe.add_image("[!FavStar]",x, y, wh, wh );
	
	if ( my_config["wheel_logo_mipmap"] == "Yes" )
		favourite_marker.mipmap = true;
}

//Wheel fading code starts here
if ( my_config["wheel_fadeout"] != "No" )
{
	first_tick <- 0;
	stop_fading <- true;
	wheel_fade_ms <- 0;
	try {	wheel_fade_ms = my_config["wheel_fade_ms"].tointeger(); } catch ( e ) { }

	if ( wheel_fade_ms > 0 )
	{
		function wheel_fade_transition( ttype, var, ttime )
		{
			if ( ttype == Transition.ToNewSelection || ttype == Transition.ToNewList )
			{
					first_tick = -1;
					my_delay = fe.layout.time;
					if ( my_config["enable_pointer"] != "No") 
						pointer.alpha = 255;
					if (my_config["enable_wl_bg"] != "No")
						wheel_art.alpha = wheel_art_alpha;
					if ( my_config["enable_favstar"] != "No" )
					{
						if (fe.game_info( Info.Favourite, var ) == "1")
							favourite_marker.alpha = 255;
					}
			}
			return false;	 
		}
		fe.add_transition_callback( "wheel_fade_transition" );
		
		function wheel_alpha( ttime )
		{
			local search_result = fe.list.search_rule;
			local _elapsed = 0;
			
			if (first_tick == -1)
				stop_fading = false;

			// Handle wheel fading after keyboard search
			// -----------------------------------------
			if (first_tick > 0)
				_elapsed = ttime - first_tick;
			
			// if there is a search result
			if (search_result != "" && _elapsed < wheel_fade_ms)
			{
				local count = conveyor.m_objs.len();

				for (local i=0; i < count; i++)
				{
					if (i == count/2)
						conveyor.m_objs[i].alpha = 255;
					else
					{
						if ( my_config["wheel_semi_t"] == "Yes" )
							conveyor.m_objs[i].alpha = 80;
						else
							conveyor.m_objs[i].alpha = 255;
					}	
				}
			}
			
			// if there is no search result
			if (search_result == "" && _elapsed < wheel_fade_ms)
			{
				local count = conveyor.m_objs.len();

				for (local i=0; i < count; i++)
				{
					if (i == count/2)
						conveyor.m_objs[i].alpha = 255;
					else
					{
						if ( my_config["wheel_semi_t"] == "Yes" )
							conveyor.m_objs[i].alpha = 80;
						else
							conveyor.m_objs[i].alpha = 255;
					}	
				}
			}
			// -----------------------------------------

			// Wheel fading
			if ( !stop_fading && ttime - my_delay >= my_play )
			{
				local elapsed = 0;

				if (first_tick > 0)
					elapsed = ttime - first_tick;

				local count = conveyor.m_objs.len();
				
				for (local i=0; i < count; i++)
				{
					if ( elapsed > wheel_fade_ms)
					{
						if ( my_config["wheel_fadeout"] == "Partially" )
							conveyor.m_objs[i].alpha = _partially;
						else
							conveyor.m_objs[i].alpha = 0;
					}
					else
					{
						if (i == count/2)
						{
							_alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
							if (_alpha < _partially && my_config["wheel_fadeout"] == "Partially")
								_alpha = _partially;
							conveyor.m_objs[i].alpha = _alpha;
						}
						else
						{
							local _start_alpha = 79;
							if ( my_config["wheel_semi_t"] == "No" )
								_start_alpha = 254;
							_alpha = (_start_alpha * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
							if (_alpha < _partially && my_config["wheel_fadeout"] == "Partially")
								_alpha = _partially;
							conveyor.m_objs[i].alpha = _alpha;
						}
						
						if ( my_config["enable_pointer"] != "No") 
						{
							_alpha =  (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
							if (_alpha < _partially && my_config["wheel_fadeout"] == "Partially")
								_alpha = _partially;
							pointer.alpha = _alpha;
						}
						
						if (my_config["enable_wl_bg"] != "No")
						{
							_alpha = (wheel_art_alpha * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
							if (_alpha < _partially && my_config["wheel_fadeout"] == "Partially")
								_alpha = _partially;
							wheel_art.alpha = _alpha;
						}
						
						if ( my_config["enable_favstar"] == "Left of Wheel" )
						{
							_alpha =  (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
							if (_alpha < _partially && my_config["wheel_fadeout"] == "Partially")
								_alpha = _partially;
							favourite_marker.alpha = _alpha;
						}
					}
				}

				if ( elapsed > wheel_fade_ms)
				{
					//So we don't keep doing the loop above when all values have 0 alpha
					stop_fading = true;
				}
			
				if (first_tick == -1)
					first_tick = ttime;
			}
		}
		fe.add_ticks_callback( "wheel_alpha" );
	}
}

// pulse current wheel logo
if ( my_config["wheel_pulse"] != "No" )
{
	local _loop = false;
	if (my_config["wheel_pulse"] == "Loop")
		_loop = true;

	local art = wheel_entries[num_arts/2].m_obj;
	local art_pulse = fe.add_artwork("wheel", art.x,art.y,art.width,art.height);
	art.zorder = 1
	if ( my_config["wheel_logo_aspect"] == "Yes" )
		art_pulse.preserve_aspect_ratio=true;
	
	local _time = 3000;
	
	local alpha_cfg = {when = Transition.StartLayout, property = "alpha", start = 150, end = 0,	time = _time, loop = _loop}
	animation.add( PropertyAnimation( art_pulse, alpha_cfg ) );
	
	local art_scale = {when = Transition.StartLayout, property = "scale", start = 1.0, end = 1.2, time = _time-1, loop = _loop}
	animation.add( PropertyAnimation( art_pulse, art_scale ) );
	
	function pulse_transition( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewSelection )
		{
			// turn off StartLayout pulse animation when ToNewSelection begins
			if (alpha_cfg.loop == true) 
			{
				alpha_cfg.start = 0;
				alpha_cfg.loop = false;
				art_scale.loop = false;
			}
		}
		return false;
	}
	fe.add_transition_callback( "pulse_transition" );

	local alpha_cfg2 = {when = Transition.ToNewSelection, property = "alpha", start = 150, end = 0,	time = _time, loop = _loop}
	animation.add( PropertyAnimation( art_pulse, alpha_cfg2 ) );
	
	local art_scale2 = {when = Transition.ToNewSelection, property = "scale", start = 1.0, end = 1.2, time = _time-1, loop = _loop}
	animation.add( PropertyAnimation( art_pulse, art_scale2 ) );
	
	function stop_pulse( ttime )
	{
		// if there is fadeout, pulse once only
		if (conveyor.m_objs[num_arts/2].m_obj.alpha == 0 || conveyor.m_objs[num_arts/2].m_obj.alpha == _partially)
		{
			alpha_cfg.loop = false;
			alpha_cfg2.loop = false;
		}
		else // if no fadeout pulse loop
		{
			alpha_cfg.loop = true;
			alpha_cfg2.loop = true;
			
			if (my_config["wheel_pulse"] == "Once")
			{
				alpha_cfg.loop = false;
				alpha_cfg2.loop = false;
			}
		}
	}
	fe.add_ticks_callback( "stop_pulse" );
}


/////////////////////////////////////////////////////////////////////////////////
// Play sound when transitioning to next / previous game on wheel
//
// Use an array that is loaded outside and only updated inside the transition_callback function 
// in order to prevent a memory leak by calling fe.add_sound() within that function

local random_num;
local sound_name="";
local Wheelclick = [];
local i;
for (i=0; i<20; i++)
	Wheelclick.push(fe.add_sound(sound_name));

local sid = 0;

function sound_transitions(ttype, var, ttime) 
{
	if (my_config["enable_random_sound"] != "No")
	{		
		if (my_config["enable_random_sound"] == "Random")
		{
			random_num = floor(((rand() % 1000 ) / 1000.0) * (322 - (1 - 1)) + 1);
			sound_name = FeConfigDirectory+"gtc-common/sounds/GS"+random_num+".mp3";
		}

		if (my_config["enable_random_sound"] == "Click")
			sound_name = FeConfigDirectory+"gtc-common/sounds/click.mp3";
			
		if (my_config["enable_random_sound"] == "Arcade Joystick")
			sound_name = FeConfigDirectory+"gtc-common/sounds/joystick.mp3";
		
		switch(ttype) 
		{
		case Transition.StartLayout:		
		case Transition.EndNavigation:	
			sid++; // next cell in the array
			if (sid > 19) //if reached end of the array go to the beginning
				sid = 0;
			Wheelclick[sid].file_name = sound_name;
			Wheelclick[sid].playing = true;
		break;
		}
	}
	return false;
}
fe.add_transition_callback("sound_transitions");


//////////////////////////////////////////////////////////////////////////////////////////////////
// Flyer art
if ( my_config["enable_gcartart"] == "Yes" && my_config["wheel_fadeout"] != "No")
{
	local x = 0.76;
	local y = 0.39;
	if (aspect_name == "16x10")
		y = 0.38;

	if ( my_config["enable_gboxart"] == "No" ) 
	{
		x = 0.68;
		y = 0.42;
	}	

	local flyer = fe.add_artwork("flyer", flx*2, fly*y, flw*0.206, flh*0.49 );
	flyer.preserve_aspect_ratio = false;
	
	local start_transition1 = {	when = Transition.StartLayout, property = "x", start = flx*2, end = flx*x, time = my_delay+600 }
	animation.add( PropertyAnimation( flyer, start_transition1 ) );

	function art_transition_flyer( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewSelection)
			start_transition1.time = 1;

		return false;
	}
	fe.add_transition_callback( "art_transition_flyer" );

	local move_transition2 = { when = Transition.ToNewSelection, property = "x", start = flx*2,	end = flx*x, time = my_delay+600 }
	animation.add( PropertyAnimation( flyer, move_transition2 ) );
}


//////////////////////////////////////////////////////////////////////////////////////////////////
// Boxart
if ( my_config["enable_gboxart"] == "Yes" )
{
        local from_side = 0; //animate from right
        local x = 0;
        local y = 0;
        local w = 0;
        local h = 0;

        if (my_config["wheel_fadeout"] == "No")
        {
                x = 0.;
                y = 0.;
                if( aspect_name == "16x10" )
                        y = 0;
                w = 0;
                h = 0;
        }

        local boxart = fe.add_artwork("boxart", -310, 0, flw, flh );
        boxart.preserve_aspect_ratio = true;

        local start_transition1 = {
                when = Transition.StartLayout,
                property = "y",
                start = fly*from_side,
                end = fly*y,
                time = my_delay+200
        }
        animation.add( PropertyAnimation( boxart, start_transition1 ) );

        function boxart_transition( ttype, var, ttime )
        {
                if ( ttype == Transition.ToNewSelection)
                        start_transition1.time = 1;

                return false;
        }
        fe.add_transition_callback( "boxart_transition" );

        local move_transition1 = {
                when = Transition.ToNewSelection,
                property = "y",
                start = fly*from_side,
                end = fly*y,
                time = my_delay+200
        }
        animation.add( PropertyAnimation( boxart, move_transition1 ) );
}

//////////////////////////////////////////////////////////////////////////////////////////////////
// Shader - Screen Glow
// check if GLSL shaders are available on this system
if ( my_config["enable_crt_screenglow"] != "No" && ShadersAvailable == 1)
{
	// shadow parameters
	local shadow_radius = 1600;
	local shadow_xoffset = 0;
	local shadow_yoffset = 0;
	local shadow_alpha = 255;
	local shadow_downsample = 0;
	
	if (my_config["enable_crt_screenglow"] == "Light" )
	{
		shadow_downsample=0.04;
		shadow_xoffset = flx*0.156;
		shadow_yoffset = fly*0.277;
	}
	else if (my_config["enable_crt_screenglow"] == "Medium" )
	{
		shadow_downsample=0.03;
		shadow_xoffset = flx*0.104;
		shadow_yoffset = fly*0.231;
	}
	else if (my_config["enable_crt_screenglow"] == "Strong" )
	{
		shadow_downsample=0.02;
		shadow_xoffset = flx*0.052;
		shadow_yoffset = fly*0.138;
	}

	// creation of first surface with safeguards area
	local xsurf1 = fe.add_surface (shadow_downsample * (snap.width + 2*shadow_radius), shadow_downsample * (snap.height + 2*shadow_radius));

	// add a clone of the picture to topmost surface
	local pic1 = xsurf1.add_clone(snap);
	pic1.set_pos(shadow_radius*shadow_downsample,shadow_radius*shadow_downsample,snap.width*shadow_downsample,snap.height*shadow_downsample);

	// creation of second surface
	local xsurf2 = fe.add_surface (xsurf1.width, xsurf1.height);

	// nesting of surfaces
	xsurf1.visible = false;
	xsurf1 = xsurf2.add_clone(xsurf1);
	xsurf1.visible = true;

	// define and apply blur shaders
	local blursizex = 1.0/xsurf2.width;
	local blursizey = 1.0/xsurf2.height;
	local kernelsize = shadow_downsample * (shadow_radius * 2) + 1;
	local kernelsigma = shadow_downsample * shadow_radius * 0.3;

	local shaderH1 = fe.add_shader( Shader.Fragment, fe.script_dir + "gauss_kernsigma_o.glsl" );
	shaderH1.set_texture_param( "texture");
	shaderH1.set_param("kernelData", kernelsize, kernelsigma);
	shaderH1.set_param("offsetFactor", blursizex, 0.0);
	xsurf1.shader = shaderH1;

	local shaderV1 = fe.add_shader( Shader.Fragment, fe.script_dir + "gauss_kernsigma_o.glsl" );
	shaderV1.set_texture_param( "texture");
	shaderV1.set_param("kernelData", kernelsize, kernelsigma);
	shaderV1.set_param("offsetFactor", 0.0, blursizey);
	xsurf2.shader = shaderV1;

	// apply black color and alpha channel to shadow
	pic1.alpha=shadow_alpha;
	pic1.width=21;
	pic1.height=16;

	// reposition and upsample shadow surface stack
	xsurf2.set_pos (snap.x-shadow_radius+shadow_xoffset,snap.y-shadow_radius+shadow_yoffset, snap.width + 2 * shadow_radius , snap.height + 2 * shadow_radius);
}


/////////////////////////////////////////////////////////////////////////////////
// Game info background frame
if ( my_config["enable_frame"] == "Yes" )
{
	local frame = fe.add_image( FeConfigDirectory+"gtc-common/art/arcade/frame.png", 0, fly*0.94, flw, flh*0.06 );
	frame.alpha = 255;

	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		local start_transition1 = { when = Transition.StartLayout, property = "y", start = fly*2, end = fly*0.94, time = ini_anim_time }
		animation.add( PropertyAnimation( frame, start_transition1 ) );
	}
}

local title = fe.add_text("", fly*0.21, fly*0.917, flw*0.7, flh*0.1);
title.align = Align.Left;
title.charsize = flh*0.028;
title.set_rgb(255, 120, 0);

local soundArtwork = fe.add_image( "", 0, fly*0.82, 220, 220 );

local sp = SoundPlayer("/home/jeff/RetroPie/roms/music/", title, soundArtwork);

fe.add_signal_handler("myHandler");

function myHandler( str )
{
        switch( str )
        {
                case "next_favourite":
                        sp.playNextSound();
                break;
        }
        return false
}

/////////////////////////////////////////////////////////////////////////////////
// Favourite marker for "With Game Info" setting, separated from "Left to Wheel" 
// to avoid zorder issues
if ( my_config["enable_favstar"] == "With Game Info" )
{
	local x = flx*0.07;
	local y = fly*0.95;
	local wh = flw*0.022;
	
	favourite_marker = fe.add_image("[!FavStar]",x, y, wh, wh );
	favourite_marker.mipmap = true;
	
	if ( my_config["enable_ini_anim"] == "No" )
	{
		// fade in if startup animation is set to No
		local alpha_cfg = {	when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = (ini_anim_time*2) }
		animation.add( PropertyAnimation( favourite_marker, alpha_cfg ) );
	}
	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		// animate with game info
		local move_transition_year = { when = Transition.StartLayout, property = "x", start = flx*-2, end = x, time = (ini_anim_time+350) }
		animation.add( PropertyAnimation( favourite_marker, move_transition_year ) );
	}
}	


/////////////////////////////////////////////////////////////////////////////////
// Game info
function Manufacturer_Name( ioffset )
{
	local name = fe.game_info( Info.Manufacturer, ioffset );
	if (name.len() > 0) 
	{
		name = split( name, "(" )[0]; // shorten the manufacturer name when one of the followig characters exist
		name = split( name, "[" )[0];
		name = split( name, "/" )[0];
		name = split( name, "," )[0];
		name = split( name, "?" )[0];
		
		name = strip( name ); // remove white-space-only from the beginning or end of the manufacturer name
	}
	return name;
}

if ( my_config["enable_gameinfo"] != "No" )
{
	local year = "";
	local title = "";
	local filter = "";
	local x_year = flx*0.0;
	local x_title = flx*0.11;
	local x_filter = flx*0.6;
	local font_size = flh*0.028;


	// Year
	year = fe.add_text("[Year]", x_year, fly*0.917, flw*0.4, flh*0.1);
	year.align = Align.Left;
	year.charsize = font_size;
	year.set_rgb(255, 120, 0);

	// Title
	if ( my_config["enable_game_manu"] == "Title Only" )
		title = fe.add_text("[Title]", x_title, fly*0.917, flw*0.7, flh*0.1);
	else
	{
		function formatted_text()
		{
			local m = Manufacturer_Name(0);
			local t = "[Title]";

			if (( m.len() > 0 ) && ( t.len() > 0 ))
				return m + ",  " + t;

			return t;
		}
		title = fe.add_text( "[!formatted_text]", x_title, fly*0.917, flw*0.7, flh*0.1);	
	}
	title.align = Align.Left;
	title.charsize = font_size;
	title.set_rgb(255, 120, 0);
	
	if ( my_config["enable_gameinfo"] == "Info and Enumerate" )
	{  
		// Current game out of total number of games
		filter = fe.add_text( "Game: [ListEntry]/[ListSize]", x_filter, fly*0.917, flw*0.4, flh*0.1 );
		filter.align = Align.Right;
		filter.charsize = font_size-4;
		filter.set_rgb(255, 120, 0);
	}

	if (ShadersAvailable == 1)
	{
		local shader = fe.add_shader( Shader.Fragment "bloom_shader_text.frag" );
		shader.set_texture_param("bgl_RenderedTexture"); 
		if(year!="")
			year.shader = shader;
		if(title!="")
			title.shader = shader;
		if(filter!="")
			filter.shader = shader;
	}
	
	// random color for info text
	if ( my_config["enable_colors"] == "Yes" )
	{
		function brightrand() {
			return 255-(rand()/255);
		}

		local red, green, blue;
		
		// Color Transitions
		fe.add_transition_callback( "color_transitions" );
		function color_transitions( ttype, var, ttime ) {
			switch ( ttype )
			{
				case Transition.StartLayout:
				case Transition.ToNewSelection:
				red = brightrand();
				green = brightrand();
				blue = brightrand();
				if(filter!="")
					filter.set_rgb(red,green,blue);
				if(year!="")
					year.set_rgb(red,green,blue);
				if(title!="")
					title.set_rgb(red,green,blue);
				break;
			}
			return false;
		}
	}
	
	// fade in game info if the startup animation is disabled
	if ( my_config["enable_ini_anim"] == "No" )
	{
		// year
		local alpha_cfg = {	when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = (ini_anim_time*2) }
		animation.add( PropertyAnimation( year, alpha_cfg ) );
		
		// title
		local alpha_cfg = {	when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = (ini_anim_time*2) }
		animation.add( PropertyAnimation( title, alpha_cfg ) );
		
		// filter
		if ( my_config["enable_gameinfo"] == "Info and Enumerate" )
		{
			local alpha_cfg = { when = Transition.StartLayout, property = "alpha", start = 0, end = 255, time = (ini_anim_time*2) }
			animation.add( PropertyAnimation( filter, alpha_cfg ) );
		}
	}

	// animate game info
	if ( my_config["enable_ini_anim"] == "Yes" )
	{
		// year
		local move_transition_year = { when = Transition.StartLayout, property = "x", start = flx*-2, end = x_year, time = (ini_anim_time+350) }
		animation.add( PropertyAnimation( year, move_transition_year ) );

		// title
		local move_transition_title = {	when = Transition.StartLayout, property = "x", start = flx*-2, end = x_title, time = (ini_anim_time+350) }
		animation.add( PropertyAnimation( title, move_transition_title ) );
		
		// filter
		if ( my_config["enable_gameinfo"] == "Info and Enumerate" )
		{
			local move_transition_title = {	when = Transition.StartLayout, property = "x", start = flx*2, end = x_filter, time = (ini_anim_time+350) }
			animation.add( PropertyAnimation( filter, move_transition_title ) );
		}
	}
}


/////////////////////////////////////////////////////////////////////////////////
// Letters
local trigger_letter = false;
local letter_x = 0.5;
if ( my_config["wheel_poisition"] == "Adjust Right" )
	letter_x = 0.55;
	
local letters = fe.add_image("", flw * letter_x - (flw*0.140 * 0.5), flh * 0.5 - (flh*0.280 * 0.5), flw*0.140, flh*0.280);

fe.add_transition_callback( "letter_transition" );
function letter_transition( ttype, var, ttime )
{	
	if (ttype == Transition.ToNewList)
		rtime = glob_time;
}

fe.add_ticks_callback( "letter_tick" );
function letter_tick( ttime )
{
	glob_time = ttime;

	if(glob_time - rtime > glob_delay)
		letters.visible = false; // hide letter search if present
	
    if(trigger_letter == true)
	{
		local firstl = fe.game_info(Info.Title);
		/*if (fe.filters[fe.list.filter_index].sort_by == Info.Manufacturer)
			firstl = fe.game_info(Info.Manufacturer);*/

		if (my_config["letters_type"] != "No")
		{
			if (my_config["letters_type"] == "Default")
				letters.file_name = FeConfigDirectory + "gtc-common/letters/default/" + firstl.slice(0,1).tolower() + ".png";
			else  //by system display name
				letters.file_name = FeConfigDirectory + "gtc-common/letters/" + fe.displays[fe.list.display_index].name + "/" + firstl.slice(0,1).tolower() + ".png";

			letters.visible = true;
		}
		trigger_letter = false;
    }
}

fe.add_signal_handler(this, "on_signal")
function on_signal(str) 
{
	switch( str ) 
	{
		case "next_letter":
		case "prev_letter":
			rtime = glob_time;
			trigger_letter = true;
		break;
	}

    return false;
}


/////////////////////////////////////////////////////////////////////////////////
// Search
local search_surface = fe.add_surface(fe.layout.width *1.12 , fe.layout.height * 1.6)
KeyboardSearch(search_surface)
	.keys_pos([ 0.05, 0.45, 0.9, 0.4 ])
	.search_key( my_config["user_search_key"].tolower() )
	.mode( "show_results" )
	.text_font("BebasNeue Bold")
	.bg_color(0,0,0,210)
	.text_color(0,255,0)
	.keys_selected_color(0,255,0)
	.init()

if (my_config["user_search_boxsize"] == "Large")
	search_surface.set_pos(0, 0, flw, flh); // Large center
else
	search_surface.set_pos(flx*0.15, fly*0.23, flw*0.680, flh*0.58); // Small center


/////////////////////////////////////////////////////////////////////////////////
// System games count
/*
main_infos <- {};
if( !file_exist(FeConfigDirectory + "gtc.stats") ) 
{
	fe.overlay.splash_message ("Counting games, please wait...")
	print("Created the gtc.stats file!\n");
	refresh_stats();
}
main_infos <- LoadStats();

function system_stats( ttype, var, ttime )
{
	local curr_sys;
	if ( ttype == Transition.StartLayout)
	{
		curr_sys = fe.list.name;

		if( fe.filters[fe.list.filter_index].name.tolower() == "all" )  //make sure default filter ("all") is on so all games are counted
		{
			if( main_infos.rawin(curr_sys) )  //check if system exists
			{				
				if(fe.list.size != main_infos[curr_sys].cnt)  //if count is wrong, update it with current system list size
				{
					main_infos[curr_sys].cnt = fe.list.size;
					SaveStats(main_infos);
					print("Updated number of games for " + curr_sys + "\n");
				}
			}
			else  //if system is new and does not exist in the gtc.stats file, create new entry and count
			{
				main_infos <- refresh_stats(curr_sys);
				print("Created new entry for " + curr_sys + " and counted games for it" + "\n");
			}
		}
	}
	return false;
}
fe.add_transition_callback( "system_stats" );
*/