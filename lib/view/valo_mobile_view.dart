import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valo/feature/home/presentation/cubit/page_cubit.dart';
import '../feature/history/presentation/screens/mobile/mobile_history_screen.dart';
import '../feature/upload/presentation/screens/mobile/uplaod_mobile_screen.dart';

class ValoMobileView extends StatelessWidget {
  const ValoMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
         if(state==1) {
         return MobileHistoryScreen();
        }else{
          return UploadMobileScreen();
        }
      },
    );
  }
}

