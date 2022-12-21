//علاشان اتنقل من صفحه وارجع تانى

import 'package:flutter/material.dart';

void navigaateTo(context, Widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);
// لو عملت باك يطلنى بره علاشان اتنقل من صفحه ومرجعش تانى
void navigaateAndFinish(context, Widget) => Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);
