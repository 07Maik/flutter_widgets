import 'package:flutter/foundation.dart';

import './model/user.dart';

/// run command
/// flutter pub run build_runner build

class Example {
  Example() {
    const User user = User.common(id: "1", nickname: "maik");
    const User admin = User.admin(level: LevelUser.advanced);
    const User support = User.support(level: LevelUser.basic);

    user.when(
      common: (id, nickname, level) => debugPrint("Hello your level is $level"),
      admin: (level) => debugPrint("Hello your level is $level"),
      support: (level) => debugPrint("Hello your level is $level"),
    );
  }
}
