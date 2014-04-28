import ddf.minim.*;

class Flush {
  Minim minim;
  AudioPlayer flush;
  
  Flush() {
    minim = new Minim(this);
    flush = minim.loadFile("toiletFlush.mp3");
    flush.play();
  }

  void flushing() {
    if (!flush.isPlaying()) {
      flush.rewind();
      flush.play();
      println("Flushing...");
    }
  }
}
