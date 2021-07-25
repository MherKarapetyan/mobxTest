import 'package:flutter/material.dart';
import 'package:mobx_with_clean_archtecture/internal/core/core.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color:
          Theme.of(context).backgroundColor.withOpacity(AppThemes.OPACITY_LOW),
      child: Center(
        child: CircularProgressIndicator(
          valueColor:
              AlwaysStoppedAnimation(Theme.of(context).secondaryHeaderColor),
        ),
      ),
    );
  }
}
