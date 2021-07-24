import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:mobx_with_clean_archtecture/helper/helper.dart';
import 'package:mobx_with_clean_archtecture/helper/routes.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_styles.dart';
import 'package:mobx_with_clean_archtecture/presentation/widgets/custom_paint/custom_paint.dart';
import 'package:mobx_with_clean_archtecture/presentation/widgets/loading.dart';
import 'package:mobx_with_clean_archtecture/presentation/widgets/textfields/textfield.dart';

class AuthPage extends StatelessWidget {
  final AuthModule _auth = AuthModule();
  final AuthStyles _styles = AuthStyles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        height: window.physicalSize.height,
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: CustomPaint(
            painter: AuthPageCustomPaint(),
            child: Observer(
              name: AppRoutes.auth,
              builder: (_) {
                return Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: _styles.contentPadding,
                        child: Form(
                          key: _auth.formKey,
                          child: ListView(
                            children: [
                              AppTextField(
                                validator: _auth.validateEmail,
                                onChanged: _auth.changeEmail,
                                hintText: 'Email',
                              ),
                              AppTextField(
                                validator: _auth.validatePassword,
                                onChanged: _auth.changePassword,
                                hintText: 'Password',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (_auth.loading) const Loading(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
