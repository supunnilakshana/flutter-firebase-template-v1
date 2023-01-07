const testbunimg =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh5frP2WUiJbwPVf2Af1wi8sRmAggvSfXCzw&usqp=CAU";

const guserimg =
    "https://www.clipartmax.com/png/middle/319-3191274_male-avatar-admin-profile.png";

const addtumb =
    "https://firebasestorage.googleapis.com/v0/b/smartfair-fe0af.appspot.com/o/init%2Fadvertisement.png?alt=media&token=a16dcc2a-3813-40ee-96af-71e63ef21990";

const userimagebucket = "images/users";
const postimagebucket = "images/posts/";

const int resok = 1;
const int resfail = 0;
const String sucesscode = "sucessfull";

class CollectionPath {
  static const userpath = "users/";
  static const postpath = "post";
}

class ItemType {
  static const bakery = "b";
  static const coffe = "c";
}

const int maxad = 15;

enum UserRole { farmer, fofficer, expert }

String getpossition(String role) {
  int r = int.parse(role);

  if (r == 0) {
    return "Farmer";
  } else if (r == 1) {
    return "Field Officer";
  } else if (r == 2) {
    return "Expert";
  } else {
    return "Unknown";
  }
}
