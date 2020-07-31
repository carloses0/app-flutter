class ObjectUtil {

  static bool isNull(dynamic any){
    return any == null;
  }

  static bool isNullOrBlank(dynamic any){
    return any == null || any == '';
  }

  static bool isNoN(dynamic any){
    return any != null;
  }
}
