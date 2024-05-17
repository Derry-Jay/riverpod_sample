// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// import '../extensions/extensions.dart';
// import '../utils/enums.dart';
import '../utils/keys.dart';
// import '../utils/methods.dart';
import '../utils/values.dart';

mixin FormValidationMixin on MaterialStateMixin, Form, State {
  // String? validateName(String? value) =>
  //     (value?.isEmpty ?? true) ? hp.loc.not_a_valid_full_name : null;

  // String? validatePhoneNumber(String? phone) {
  //   return (phone != null && phone.length == 10 && int.tryParse(phone) != null
  //       ? null
  //       : hp.loc.not_a_valid_phone);
  // }

  // String? validatePassword(String? password) {
  //   RegExp re =
  //       RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[!@#$&*~]).{8,}$');
  //   return password != null &&
  //           password.isNotEmpty &&
  //           password.length >= 6 &&
  //           password.length <= 12 &&
  //           re.hasMatch(password)
  //       ? null
  //       : hp.loc.wrong_email_or_password;
  // }

  // String? validateEmail(String? email) {
  //   RegExp re = RegExp(
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  //   return email != null &&
  //           email.isNotEmpty &&
  //           re.hasMatch(email) &&
  //           re.allMatches(email).length == 1
  //       ? null
  //       : hp.loc.not_a_valid_email;
  // }
}

mixin API on ChangeNotifier, State<StatefulWidget>, StatelessWidget {
  BuildContext get bc =>
      navKey.currentContext ??
      (wb?.buildOwner?.focusManager.rootScope.context ?? context);

  // Future<T?> getData<T>(String uril,
  //     {bool? isFormData,
  //     Options? options,
  //     HTTPMethodType? type,
  //     CancelToken? cancelToken}) async {
  //   try {
  //     Response<T> res;
  //     final dio = Dio();
  //     final cm = bc.getCommonProvider(false);
  //     final data = (isFormData ?? false) ? body : body.formData();
  //     switch (type) {
  //       case HTTPMethodType.delete:
  //         res = await dio.deleteUri<T>(uril.url,
  //             data: data, options: options, cancelToken: cancelToken);
  //         break;
  //       case HTTPMethodType.head:
  //         res = await dio.headUri<T>(uril.url,
  //             data: data, options: options, cancelToken: cancelToken);
  //         break;
  //       case HTTPMethodType.patch:
  //         res = await dio.patchUri<T>(uril.url,
  //             data: data,
  //             options: options,
  //             cancelToken: cancelToken,
  //             onSendProgress: cm.onProgress,
  //             onReceiveProgress: cm.onProgress);
  //         break;
  //       case HTTPMethodType.post:
  //         res = await dio.postUri<T>(uril.url,
  //             data: data,
  //             options: options,
  //             cancelToken: cancelToken,
  //             onSendProgress: cm.onProgress,
  //             onReceiveProgress: cm.onProgress);
  //         break;
  //       case HTTPMethodType.put:
  //         res = await dio.putUri<T>(uril.url,
  //             data: data,
  //             options: options,
  //             cancelToken: cancelToken,
  //             onSendProgress: cm.onProgress,
  //             onReceiveProgress: cm.onProgress);
  //         break;
  //       default:
  //         res = await dio.getUri<T>(uril.url,
  //             data: data,
  //             options: options,
  //             cancelToken: cancelToken,
  //             onReceiveProgress: cm.onProgress);
  //     }
  //     return res.data;
  //   } catch (e) {
  //     jot(e);
  //     return e is DioException ? e.response?.data : null;
  //   }
  // }
}
