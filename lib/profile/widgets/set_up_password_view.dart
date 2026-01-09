import 'package:flutter/material.dart';
import 'package:shopee_clone/generated/assets.gen.dart';

class SetUpPasswordView extends StatelessWidget {
  const SetUpPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Assets.images.icLock.svg(width: 24, height: 24),
          const SizedBox(width: 15),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Thiết Lập Mật Khẩu', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5),
              const Text('Thiết lập mật khẩu để đăng nhập mà không cần mã OTP và giúp tăng cường bảo mật tài khoản.',
                  style: TextStyle(color: Colors.black, fontSize: 12), softWrap: true),
              const SizedBox(height: 7),
              Row(
                children: [_viewAction('Để sau'), const SizedBox(width: 10), _viewAction('Thực hiện ngay')],
              ),
            ],
          )),
          const SizedBox(width: 30),
          const Icon(Icons.close, color: Colors.grey, size: 25),
        ],
      ),
    );
  }
}

Widget _viewAction(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
    ),
    child: Text(
      title,
      style: const TextStyle(fontSize: 14, color: Colors.black),
    ),
  );
}
