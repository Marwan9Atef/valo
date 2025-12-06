import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo/feature/home/presentation/cubit/page_cubit.dart';
import '../feature/history/presentation/screens/desktop/desktop_history.dart';
import '../feature/upload/presentation/screens/desktop/upload_desktop_screen.dart';


class ValoDesktopLayout extends StatelessWidget {
  const ValoDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
         if( state ==1){
        return  DesktopHistory();
        }
        else{
          return UploadDesktopScreen();
        }
      },
    );
  }
}

