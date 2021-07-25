import 'package:flutter/material.dart';
import 'package:mobx_with_clean_archtecture/helper/helper.dart';
import 'package:mobx_with_clean_archtecture/helper/themes.dart';

import 'global_context.dart';

class Snackbars {
  void showMessage({required String text}) {
    final snackBar = SnackBar(
      content: Text(
        text,
        style:
            Theme.of(GlobalContext.value).primaryTextTheme.headline6?.copyWith(
                  color: AppThemes.white,
                ),
      ),
      duration: Duration(seconds: 3),
      backgroundColor: AppThemes.red,
    );
    // Asd1@asd.com

    ScaffoldMessenger.of(GlobalContext.value).showSnackBar(snackBar);
  }
}
