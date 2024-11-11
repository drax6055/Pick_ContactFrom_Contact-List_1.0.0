import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../wiget/Custome_textfield.dart';
import '../../wiget/Custome_button.dart';
import 'auth_controller.dart';

class AuthScreen extends StatelessWidget {
 AuthScreen({super.key});
  final AuthController getController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputTxtfield_Email(),
                SizedBox(height: 16.h),
                InputTxtfield_Pass(),
                SizedBox(height: 16.h),
                Btn_Login(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InputTxtfield_Email() {
    return CustomTextFormField(
      controller: getController.emailController,
      hintText: 'Enter your Email',
      labelText: 'Email',
      prefixIcon: Icons.email,
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget InputTxtfield_Pass() {
    return Obx(() => CustomTextFormField(
      controller: getController.passController,
      hintText: 'Enter your Password',
      labelText: 'Password',
      prefixIcon: Icons.password,
      obscureText: !getController.showPass.value,
      suffixIcon: IconButton(
        onPressed: () {
          getController.toggleShowPass();
        },
        icon: Icon(
          getController.showPass.value ? Icons.visibility : Icons.visibility_off,
        ),
      ),
    ));
  }

  Widget Btn_Login() {
    return ElevatedButtonExample(
      text: "Login",
      onPressed: () {
        getController.onLoginPress();
      },
    );
  }
}
