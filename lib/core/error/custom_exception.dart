class CustomException implements Exception {
  final String messageAr, messageEn;

  CustomException({required this.messageAr, required this.messageEn});

  @override
  String toString() {
    return messageAr.toString();
  }

}
