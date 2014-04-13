import 'dart:html';
CanvasElement cvs;
CanvasRenderingContext2D ctx;

final int OFFSET_X = 0;
final int OFFSET_Y = 20;
final int STRING_SPACE = 10;
final int STRINGS = 5;
final int FRET_SPACE = 40;
final int NECK_WIDTH =STRING_SPACE*(STRINGS+2);

void main() {
  cvs = querySelector("#cvs");
  ctx = cvs.getContext("2d");
  initBoard();
}

void initBoard(){
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
  for(int i=0;i<frets;i++){

  }
}
