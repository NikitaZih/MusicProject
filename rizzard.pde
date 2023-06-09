import ddf.minim.analysis.*;
import ddf.minim.*;


AudioPlayer player;
Minim minim;
AudioInput input;
FFT fft;
BeatDetect beat;

float eRadius;
int[][] colo=new int[300][3];

void setup()
{
  size(600,600);
  frameRate(60);
  colorMode(HSB);
  
  beat = new BeatDetect();
  minim = new Minim(this);
  input = minim.getLineIn();
  fft = new FFT(input.bufferSize(), input.sampleRate());
  
  eRadius = 200;
  player = minim.loadFile("twistard.mp3", 2048);
  player.play();
}
 


void draw()
{
  background(25, 30, 255);
  beat.detect(player.mix);
  strokeWeight(3);
  DrawWizard();
  fft.forward(input.mix);
  float a = map(eRadius, 200, 300, 60, 255);
  
  fill(150, 255, 150, a);
  if ( beat.isOnset() ) eRadius = 300;
  ellipse(450, 450, eRadius, eRadius);
  eRadius *= 0.95;
  if ( eRadius < 200 ) eRadius = 200;
  
  strokeWeight(0);
  for(int i = 0; i < player.bufferSize()-1; i++)
  {
     fill(random(255),155,155);
     ellipse(450,450, 50,player.left.get(i) *150);
  }
}

void DrawWizard()
{
  //orb
  
  //general outline and clothes outline
  line(5,276,51,244);
  line(51,244,58,222);
  line(58,222,70,216);
  line(70,216,97,232);
  line(97,232,111,231);
  line(111,231,145,246);
  line(145,246,187,268);
  line(187,268,222,270);
  line(222,270,244,287);
  line(244,287,278,294);
  line(278,294,324,304);
  line(324,304,336,301);
  line(336,301,353,302);
  line(353,302,393,298);
  line(393,298,433,288);
  line(433,288,466,279);
  line(466,279,479,260);
  line(479,260,483,236);
  line(483,236,477,204);
  line(477,204,438,182);
  line(438,182,418,172);
  line(418,172,390,124);
  line(390,124,356,112);
  line(356,112,322,62);
  line(322,62,311,54);
  line(311,54,291,64);
  line(291,64,242,112);
  line(242,112,182,170);
  line(182,170,149,190);
  line(149,190,122,200);
  line(122,200,101,230);
  line(98,230,101,212);
  line(101,212,114,184);
  line(114,184,144,158);
  line(144,158,174,126);
  line(174,126,175,102);
  line(175,102,189,69);
  line(189,69,215,44);
  line(215,44,230,22);
  line(230,22,244,14);
  line(244,14,269,7);
  line(269,7,299,8);
  line(299,8,322,22);
  line(322,22,346,36);
  line(346,36,367,56);
  line(367,56,385,82);
  line(385,82,401,111);
  line(401,111,415,142);
  line(415,142,438,159);
  line(438,159,463,179);
  line(463,179,488,197);
  line(488,197,485,245);
  line(483,228,528,267);
  line(528,267,572,272);
  line(572,272,605,296);
  line(2,571,160,558);
  line(160,558,267,552);
  line(267,552,357,552);
  line(357,552,468,553);
  line(468,553,608,554);
  line(5,385,23,402);
  line(23,402,58,425);
  line(58,425,92,447);
  line(92,447,152,465);
  line(152,465,219,464);
  line(219,464,295,452);
  line(295,452,239,444);
  line(239,444,188,438);
  line(188,438,126,431);
  line(126,431,87,416);
  line(87,416,129,418);
  line(129,418,172,414);
  line(172,414,227,394);  
  line(225,374,190,386);
  line(190,386,131,398);
  line(131,398,71,387);
  line(71,387,33,380);
  line(33,380,3,367);
  line(3,367,25,358);
  line(25,358,55,364);
  line(55,364,105,355);
  line(105,355,68,341);
  line(68,341,97,336);
  line(97,336,55,323);
  line(55,323,67,304);
  line(67,304,83,300);
  line(83,300,55,288);
  line(55,288,22,300);
  line(22,300,60,266);
  line(1,456,35,494);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  //eyes
  ellipse(267,121,30,17);
  ellipse(333,121,30,17);
  circle(267,125,7);
  circle(335,125,7);
  //nose
  line(293,144,284,153);
  line(284,153,289,160);
  line(289,160,299,153);
  line(299,153,305,162);
  line(305,162,324,160);
  line(324,160,309,124);
  line(285,184,325,184);
  //mouth
  line(293,193,315,191);
  //beard
 line(221,160,180,198);
 line(180,198,179,198);
 line(179,198,133,218);
 line(242,182,201,212);
 line(201,212,149,240);
 line(256,188,226,218);
 line(226,218,178,246);
 line(275,196,244,238);
 line(244,238,199,257);
 line(294,204,268,240);
 line(268,240,233,272);
 line(305,205,305,244);
 line(305,244,279,282);
 line(326,200,339,241);
 line(339,241,337,290);
 line(341,187,361,220);
 line(361,220,369,286);
 line(360,165,384,196);
 line(384,196,401,278);
 line(370,147,413,190);
 line(413,190,445,264);
 
  
  
  
  
  
  
}
