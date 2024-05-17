class Measurements {
  static final Measurements _singleton = Measurements._internal();
  
  factory Measurements() {
    return _singleton;
  }
  
  Measurements._internal();
}