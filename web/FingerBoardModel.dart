
class FingerBoardModel{

  List<int> openStrings;
  final List<String> intToNote = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"];

  FingerBoardModel([List<int> tuning]){
    if(tuning != null){
      this.openStrings = tuning;
    } else {
       this.openStrings = [0x44,0x3B,0x37,0x32,0x29,0x24];
    }
  }

  String getNoteName(int note){
    return '${this.intToNote[note%16]}${(note / 15).floor()}';
  }
  int getNoteWithHex(int note){
    return note%16;
  }
 int getNoteWithStringAndFret(int string, int fret){
     return (this.getNoteWithHex(this.openStrings[string-1])+fret)%12;
  }

 List<int> collectSameNotes(note){
   int target = this.getNoteWithHex(note);
   var results = [];
   int a;
   for(int s=1;s<6;s++){
     for(int f=0;f<13;f++){
       a = this.getNoteWithStringAndFret(s, f);
      if(a == target)results.add({"s":s,"f":f});
     }
   }
   return results;
 }
}

/*
  0 C
  1 C# Db
  2 d
  3 D# Eb
  4 E
  5 F
  6 F# Gb
  7 G
  8 G# Ab
  9 A
  A A# Bb
  B B

*/