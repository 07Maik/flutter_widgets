import './model/user.dart';

/// run command
/// flutter pub run build_runner build

class Example {
  int _count = 0;
  Example();

  User getUser() {
    User user;

    switch (_count) {
      case 0:
        user = const User.common(id: "1", nickname: "maik");
        break;
      case 1:
        user = const User.admin(level: LevelUser.advanced);
        break;
      case 2:
      default:
        user = const User.support(level: LevelUser.basic);
        break;
    }

    _count++;

    if (_count == 3) _count = 0;

    return user;
  }
}
