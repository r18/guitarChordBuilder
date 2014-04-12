import 'dart:html';
CanvasElement cvs;
CanvasRenderingContext ctx;

void main() {
  cvs = querySelector("#cvs");
  print(cvs);
  ctx = cvs.getContext("2d");
  ctx.fillRect(0,0,100,100);
}

