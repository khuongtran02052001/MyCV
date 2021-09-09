import 'package:flutter/material.dart';

//Copy ảnh vào thư mục assets
//Có thể sửa tự do chỉnh sữa dữ liệu

final kProgramLanguage = [
  'React Native',
  'Node js',
  'MongoDb',
  'Javascript'
]; //Ngôn ngữ lập trình chính (3-4 cái)

final kcontactMainIcon = [
  Icons.mail,
  Icons.face
]; //Icon liên kết các trang khác(fb,gmail,github,zalo,...)(2-3 cái)(thay thế bằng  'assets/Tên ảnh')
final kcontactMainLinkTo = [
  'mailto:Khuongtran227@gmail.com',
  'https://www.facebook.com/khuonggggggggg/',
]; //thêm link đến liên kết (gmail = 'mailto:example@gmail.com',github = đường dẫn github,...)

final kIntroduce =
    'Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu Giới thiệu ';
//Nội dung giới thiệu bản thân

///Phần này phải viết đúng theo thứ tự
final kSkillsTitle = [
  'React Native',
  'MongoDb',
  'Nodejs',
  'Javascript',
]; //Tất cả ngôn ngữ đc học

final kSkillPercent = [
  0.8, //Của react
  0.5, //Của MongoDb
  0.5,// của nodejs
  0.5,// của javascripts
]; //Số phần trăm nắm đc khi học môn đó (0.5 = 50% , 1 = 100%) (Tự đánh giá)

final kPaddingValue = [
  0.2,
  0.15,
  0.10,
  0.05,
]; //Nếu lớn hơn 5 giá trị thì tất cả giá trị lớn hơn 5 đều bằng 0.0 (Ghi rõ 0.0)

double kPaddingSkill(double w, double val) {
  return w * (val + 0.02);
} //Không được thay đổi phần này

//Cả 4 đều ghi theo thứ tự(index)
final kProjectTitle = ['A', 'B']; //Tựa đề

final kProjectImage = [
  'assets/error-art.png',
  'assets/error-art.png'
]; //Hình ảnh (Ghi theo format:'assets/Tên')

final kProjectDescription = ['AAAAAAAAAAAAAAAA', 'BBBBBBBBBBBBBBBB']; //Miêu tả

final kProjectLink = ['', '']; //Link github đến project đấy

final kContactTitle = ['Facebook', 'Zalo', 'Phone', 'Gmail'];
final kContactLinkTo = [
  'https://www.facebook.com/khuonggggggggg/',
  '0702972026',
  'tel:0702972026',
  'mailto:khuongtran227@gmail.com'
]; //Sdt ghi theo format:'tel:Số điện thoại' && email ghi theo format:'mailto:Tên gmail'
