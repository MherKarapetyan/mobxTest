import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx_with_clean_archtecture/helper/helper.dart';
import 'package:mobx_with_clean_archtecture/helper/routes.dart';
import 'package:mobx_with_clean_archtecture/presentation/auth/auth_module.dart';
import 'package:mobx_with_clean_archtecture/presentation/widgets/loading.dart';

class AuthPage extends StatelessWidget {
  final AuthModule _auth = AuthModule();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(brightness: Brightness.dark),
      body: Observer(
        name: AppRoutes.auth,
        builder: (_) {
          return Stack(
            children: [
              if (_auth.loading) const Loading(),
              Center(
                child: Text(
                  'App',
                  style: GoogleFonts.dosis(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontWeight: AppThemes.FONTWEIGHT_BOLD),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
