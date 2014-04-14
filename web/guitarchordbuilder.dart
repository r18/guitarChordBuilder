import 'dart:html';
CanvasElement cvs;
CanvasRenderingContext2D ctx;

final int OFFSET_X = 0;
final int OFFSET_Y = 20;
final int STRING_SPACE = 20;
final int STRINGS = 5;
final int FRET_SPACE = 60;
final int NECK_WIDTH =STRING_SPACE*(STRINGS+2);

void main() {
  cvs = querySelector("#cvs");
  ctx = cvs.getContext("2d");
  initBoard(0,15);
}

void initBoard(start,frets){
  cvs.width = frets*FRET_SPACE;
  cvs.height = (STRINGS + 4) * STRING_SPACE;
  drawFret(start,frets);

  ctx.beginPath();
  ctx.lineWidth = 1;
  for(int i = 0; i<STRINGS+2; i++){
    ctx.moveTo(OFFSET_X, OFFSET_Y+i*STRING_SPACE);
    ctx.lineTo(OFFSET_X+cvs.width, OFFSET_Y+i*STRING_SPACE);
  }
  ctx.stroke();

  ctx.lineWidth = 2;
  ctx.strokeRect(OFFSET_X, OFFSET_Y, cvs.width, NECK_WIDTH);
}

void drawFret(start,frets){
  ctx.beginPath();
  for(int i=0;i<frets;i++){
   ctx.moveTo(OFFSET_X+FRET_SPACE*i,OFFSET_Y );
   ctx.lineTo(OFFSET_X+FRET_SPACE*i, OFFSET_Y+NECK_WIDTH);
   if(i==3 || i==5 || i==7 || i==9 || i==12 || i == 15){
     ctx.fillText("$i", OFFSET_X+FRET_SPACE*(i-1), OFFSET_Y+NECK_WIDTH+STRING_SPACE);
   }
  }
   ctx.stroke();
}


