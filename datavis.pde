String[] SB;
String[] HW;
PImage A;
PImage H;
PImage L;
PImage M;
PImage R;
PImage E;
PImage logo;
PFont names;
PFont info;
int state = 0;



void setup(){
  size(1500,800);
   background(100);
  
  A = loadImage("FFXIV_Au_Ra.png");
  H = loadImage("Hyur_CG.png");
  L = loadImage("Lalafell_CG.png");
  M = loadImage("Miqote_CG.png");
  R = loadImage("Rodagyn_CG.png");
  E = loadImage("Elezen_CG.png");
  logo = loadImage("logo.png");
  
  names = createFont("SpectralSC-Regular.ttf", 100);
  info = createFont("Ubuntu-Regular.ttf", 100);
  
  rectMode(CORNER);
  
  SB = loadStrings("ffxivCensus2017.csv");
  
  
  
  
}


void displayData(){
  
  
  for (int current_row = 0; current_row < SB.length; current_row++){
    
   String [] SBcol = split(SB[current_row], ',');
   
   float rectWidth = width/SB.length/2.5;
   
   float ypos1 = height - float(SBcol[1])/200;
   float ypos2 = height - float(SBcol[2])/200;
   
   fill(#007DFF);
   rect((rectWidth * current_row), ypos1, 30, float(SBcol[1])/200);
   fill(#FF006B);
   rect((rectWidth * current_row+30), ypos2, 30, float(SBcol[2])/200);
   //rect(333, ypos, 30, float(SBcol[2])/200);
   
  // print("Race: " + SBcol[0] + " ");
  // print("# Male Char: " + SBcol[1] + " ");
  // print("# Female Char: " + SBcol[2] + " ");
   
  // rect(current_row*100, 100, 50, float(SBcol[1])/200);
  // rect(height-current_row*40, 0, 30, float(SBcol[2])/200);
    
    
    
  }  
  
}


void draw(){
  textSize(40);
  fill(#000000);
  text("Click on a bar to see its data!", 893, 49);
  displayData();
 
 
}




void mousePressed(){
 // fill(#000000);
//text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );


 
if(mouseX > 1 && mouseX < 30 && mouseY > 544 && mouseY <799){
 background(255);
 fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
 fill(#000000);
 textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 textFont(info, 100);
 textSize(25);
 text("Number of Characters by Playable Race", 2, 21);
 image(A, 647, 171); 
 image(logo, 487, 35, 350, 140);
 fill(#080000);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
 textFont(names, 100);
 textSize(60);
 text("Au'Ra", 458, 260);
 textFont(info,100);
 textSize(25);
 text("51,339 Male Characters", 429, 301);
 text("7.2% of Player Population", 429, 331);
}

if(mouseX > 31 && mouseX < 59 && mouseY > 247 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
  image(A, 647, 171);
image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Au'Ra",  458, 260);
 textFont(info,100);
 textSize(25);
 text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("110,763 Female Characters", 429, 301);
  text("15.5% of Player Population", 429, 331);
}


if(mouseX > 100 && mouseX < 130 && mouseY > 358 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25); 
 image(H, 808, 102); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Hyur",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("88,376 Male Characters", 429, 301);
 text("12.4% of Player Population", 429, 331);
}

if(mouseX > 131 && mouseX < 161 && mouseY > 484 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(H, 808, 102); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Hyur",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("62,742 Female Characters", 429, 301);
 text("8.8% of Player Population", 429, 331);
}

if(mouseX > 200 && mouseX < 230 && mouseY > 518 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(L, 780, 214); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Lalafell",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("56,350 Male Characters", 429, 301);
 text("7.9% of Player Population", 429, 331);
}

if(mouseX > 231 && mouseX < 260 && mouseY > 497 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25); 
 image(L, 780, 214); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Lalafell",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("60,616 Female Characters", 429, 301);
 text("8.5% of Player Population", 429, 331);
}

if(mouseX > 300 && mouseX < 330 && mouseY > 437 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(M, 830, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Miqo'te",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("72,597 Male Characters", 429, 301);
 text("10.2% of Player Population", 429, 331);
}

if(mouseX > 331 && mouseX < 360 && mouseY > 97 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(M, 830, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Miqo'te",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("140,663 Female Characters", 429, 301);
 text("19.7% of Player Population", 429, 331);
}

if(mouseX > 402 && mouseX < 429 && mouseY > 697 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(R, 787, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Roegadyn",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("20,619 Male Characters", 429, 301);
 text("2.9% of Player Population", 429, 331);
}

if(mouseX > 431 && mouseX < 459 && mouseY > 757 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(R, 787, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Roegadyn",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("8,386 Female Characters", 429, 301);
 text("1.2% of Player Population", 429, 331);
}

if(mouseX > 501 && mouseX < 531 && mouseY > 670 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
 text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(E, 787, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Elezen",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("25,967 Male Characters", 429, 301);
 text("3.6% of Player Population", 429, 331);
}

if(mouseX > 532 && mouseX < 561 && mouseY > 722 && mouseY <799){
 background(255);
  fill(#007DFF);
 rect(27, 61, 20, 20);
 fill(#FF006B);
 rect(27, 105, 20, 20);
  fill(#000000);
 image(logo, 487, 35, 350, 140);
  textFont(names, 100);
 textSize(20);
  text("Male Characters", 61, 79);
 text("Female Characters", 61, 124); 
 text("2017 Census Data", 580, 25);
 image(E, 787, 85); 
 fill(#080000);
 textFont(names,100);
 textSize(60);
 text("Elezen",  458, 260);
 textFont(info,100);
 textSize(25);
  text("Number of Characters by Playable Race", 2, 21);
 textSize(20);
 text("Au'Ra", 7, 225);
 text("Hyur", 105, 345);
 text("Lalafell", 191, 471);
 text("Miqo'te", 285, 73);
 text("Roegadyn", 379, 683);
 text("Elezen", 500, 651);
  textSize(25);
 text("15,930 Female Characters", 429, 301);
 text("2.2% of Player Population", 429, 331);
}



}

void keyPressed(){
  state = state + 1;
  
}