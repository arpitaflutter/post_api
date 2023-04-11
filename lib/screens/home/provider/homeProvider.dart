import 'package:flutter/material.dart';
import 'package:post_api/utils/homeHelper.dart';

class homeProvider extends ChangeNotifier
{
    Future<String> ApiCall(String name,String job)
    async {
      homeHelper home = homeHelper();

      String msg = await home.PostApiCall(name, job);

      return msg;
    }
}