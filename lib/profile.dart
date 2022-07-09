import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  final String profData;

  ProfileData(this.profData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        profData,
      ),
    );
  }
}
