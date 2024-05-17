class Css {
  static final Css _singleton = Css._internal();
  
  factory Css() {
    return _singleton;
  }
  
  Css._internal();
}