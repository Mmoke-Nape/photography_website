const String imageAssetRoot = "assets/images/background/";

final String background1 = _getImagePath('background1.jpg');
final String background2 = _getImagePath('background2.jpg');
final String background3 = _getImagePath('background3.jpg');
final String background4 = _getImagePath('background4.jpg');
final String background5 = _getImagePath('background5.png');
final String background6 = _getImagePath('background6.jpg');
final String background7 = _getImagePath('background7.jpg');
final String background8 = _getImagePath('background8.jpg');
final String background9 = _getImagePath('background9.jpg');

String _getImagePath(String fileName) {
  return imageAssetRoot + fileName;
}
