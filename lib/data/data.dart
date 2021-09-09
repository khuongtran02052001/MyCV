import 'package:flutter/material.dart';

//Copy ảnh vào thư mục assets
//Có thể sửa tự do chỉnh sữa dữ liệu

final kProgramLanguage = ['React Native', 'Node js', 'MongoDb', 'Javascript'];

final kcontactMainIcon = [
  Icons.mail,
  Icons.face,
];
final kcontactMainLinkTo = [
  'mailto:Khuongtran227@gmail.com',
  'https://www.facebook.com/khuonggggggggg/',
];

final kIntroduce =
    'Hi I\'m Tran Duy Khuong, I\'m a junior developer, my favorite language is javascript, and know some framework, thank you for visiting my site, I did got some outstanding projects, but in the future I will be better';

final kSkillsTitle = [
  'React Native',
  'MongoDb',
  'Nodejs',
  'Javascript',
];

final kSkillPercent = [
  0.6,
  0.5,
  0.5,
  0.5,
];

final kPaddingValue = [
  0.2,
  0.15,
  0.10,
  0.05,
];

double kPaddingSkill(double w, double val) {
  return w * (val + 0.02);
}

final kProjectTitle = ['Apple Store Web', 'Ruby Jewels Shop'];

final kProjectImage = ['assets/apple_banner.png', 'assets/rubybanner.png'];

final kProjectLink = [
  'https://github.com/khuongtran02052001/AppleStore',
  'https://github.com/khuongtran02052001/RubyShop'
];

final kContactTitle = ['Facebook', 'Zalo', 'Github', 'Gmail'];
final kContactLinkTo = [
  'https://www.facebook.com/khuonggggggggg/',
  'https://zalo.me/0702972026',
  'https://github.com/khuongtran02052001',
  'mailto:khuongtran227@gmail.com'
];

final kContactImage = [
  'assets/fb_banner.png',
  'assets/zalo_banner.png',
  'assets/github_banner.png',
  'assets/gmail_banner.png'
];
final kContactContainerColor = [
  Colors.blue,
  Colors.blueAccent,
  Colors.grey[900],
  Colors.white70
];
final kContactFontColor = [
  Colors.grey[200],
  Colors.indigo,
  Colors.white70,
  Colors.red[800]
];
