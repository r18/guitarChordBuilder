
class FingerBoardModel{

  List<int> openStrings;
  final List<int> intToNote = ["C","C#","D","D#","E","F","F#","G","G#","A","A#","B"];

  FingerBoardModel([List<int> tuning]){
    if(tuning != null){
      this.openStrings = tuning;
    } else {
       this.openStrings = [0x24,0x29,0x32,0x37,0x3B,0x44];
    }
  }

  getNoteName(int note){
    return '${this.intToNote[note%16]}${(note / 15).floor()}';
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