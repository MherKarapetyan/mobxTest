import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_clean_archtecture/helper/themes.dart';
import 'dart:math' as math;

import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/components/segmented_control_styles.dart';

// class SegmentedControl extends StatefulWidget {
//   const SegmentedControl({Key? key}) : super(key: key);

//   @override
//   _SegmentedControlState createState() => _SegmentedControlState();
// }
final AuthModule _auth = AuthModule();
final SegmentedControlStyles _styles = SegmentedControlStyles();

class SegmentedControl extends StatelessWidget {
  const SegmentedControl();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Center(
        child: Observer(
            name: 'SegmentedControl',
            builder: (_) {
              return Stack(
                children: [
                  AnimatedPositioned(
                    left: _auth.tab == 0 ? 0 : size.maxWidth / 2,
                    duration: _styles.animationDuration,
                    curve: _styles.animationCurve,
                    child: Container(
                      height: _styles.height,
                      width: size.maxWidth / 2,
                      decoration: BoxDecoration(
                        color: AppThemes.red,
                        borderRadius: _styles.borderRadius,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: _styles.borderRadius,
                      color: Colors.grey
                          .withOpacity(_styles.buttonsBackgroundOpacity),
                    ),
                    child: Row(children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => _auth.changeTabIndex(0),
                        child: Container(
                          height: _styles.height,
                          width: size.maxWidth / 2,
                          alignment: Alignment.center,
                          child: AnimatedDefaultTextStyle(
                            duration: _styles.animationDuration,
                            curve: _styles.animationCurve,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .button!
                                .copyWith(
                                    color: _auth.tab == 0
                                        ? AppThemes.white
                                        : AppThemes.grey),
                            child: Text(
                              'Login',
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => _auth.changeTabIndex(1),
                        child: Container(
                          height: _styles.height,
                          width: size.maxWidth / 2,
                          alignment: Alignment.center,
                          child: AnimatedDefaultTextStyle(
                            duration: _styles.animationDuration,
                            curve: _styles.animationCurve,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .button!
                                .copyWith(
                                    color: _auth.tab == 1
                                        ? AppThemes.white
                                        : AppThemes.grey),
                            child: Text('Sign-up'),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              );
            }),
      );
    });
  }
}
