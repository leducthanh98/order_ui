import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:order_ui/utils/app_assets.dart';
import 'package:order_ui/utils/app_style.dart';

import 'inventory_page.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Chi tiết đơn hàng'),
        actions: [
          IconButton(icon: SvgPicture.asset(AppAssets.union), onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: new DefaultTextStyle(
          style: new TextStyle(
              inherit: true,
              fontSize: 14,
              color: AppStyleColor.grayText,
              fontWeight: FontWeight.w400),
          child: Column(
            children: [
              Shop(),
              Customer(),
              ProductRevenue(),
              Ship(),
            ],
          ),
        ),
      ),
    );
  }
}

class Ship extends StatelessWidget {
  const Ship({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: SvgPicture.asset(
                        AppAssets.ship,
                        height: 16,
                        width: 16,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Thông tin vận chuyển',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Đơn vị vận chuyển:'),
              Text(
                'VNPost Tiết Kiệm',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mã vận chuyển:'),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '2205145YD7YABP',
                    style: TextStyle(
                        color: AppStyleColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: IconButton(
                        icon: SvgPicture.asset(AppAssets.copy),
                        onPressed: null),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí vận chuyển thực tế:'),
              Text(
                '0 VND',
                style: TextStyle(
                    color: AppStyleColor.redText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Lịch sử vận chuyển:',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductRevenue extends StatelessWidget {
  const ProductRevenue({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: SvgPicture.asset(
                        AppAssets.money,
                        height: 16,
                        width: 16,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Sản phẩm và doanh thu',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Danh sách sản phẩm Shopee:',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.product,
                height: 48,
                width: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cái đồng hồ thông minh màu trắng',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Số lượng: 1 x 250.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      child: Text(
                        'cập nhật tồn kho'.toUpperCase(),
                        style: TextStyle(
                            color: AppStyleColor.blueText,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Inventory()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.product,
                height: 48,
                width: 48,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cái đồng hồ thông minh màu trắng',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Số lượng: 1 x 250.000',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      child: Text(
                        'cập nhật tồn kho'.toUpperCase(),
                        style: TextStyle(
                            color: AppStyleColor.blueText,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Inventory()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                'Danh sách sản phẩm Salework:',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              SvgPicture.asset(AppAssets.line),
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              SvgPicture.asset(AppAssets.line),
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              SvgPicture.asset(AppAssets.line),
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              SvgPicture.asset(AppAssets.line),
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
              SvgPicture.asset(AppAssets.line),
              Text.rich(
                TextSpan(
                    text: '075 ',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                          text: 'x 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 1,
            width: 5000,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Color(0xffd7d6d6)),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tên khách hàng:'),
              Text(
                '35.000 VND',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Người mua trả:'),
              Text(
                '48.500 VND',
                style: TextStyle(
                    color: AppStyleColor.redText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí vận chuyển thực tế:'),
              Text(
                '13.500 VND',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí vận chuyển trợ giá Shopee:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí vận chuyển trợ giá shop:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí vận chuyển người mua trả:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Chênh lệch phí vận chuyển:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí dịch vụ:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí giao dịch'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phí sàn:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Voucher người bán:'),
              Text(
                '0',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Doanh thu:',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                '123.456 VND',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Thanh toán khi nhận hàng',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                '',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Customer extends StatelessWidget {
  const Customer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      AppAssets.icon_user,
                      width: 16,
                      height: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Khách hàng',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(73, 24),
                  side: BorderSide(color: AppStyleColor.blueText),
                ),
                child: Text('Nhắn tin',
                    style: TextStyle(
                        color: AppStyleColor.blueText,
                        fontSize: 10,
                        fontWeight: FontWeight.w700)),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tên khách hàng:'),
              Text(
                'Nguyễn Văn A',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Số điện thoại:'),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '0123 456 789',
                    style: TextStyle(
                        color: AppStyleColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: IconButton(
                          iconSize: 16,
                          icon: SvgPicture.asset(AppAssets.copy),
                          onPressed: null))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Địa chỉ:'),
              Text(
                'Yên Sở, Hoàng Mai, Hà Nội',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tin nhắn từ khách hàng:'),
              Text(
                '',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Shop extends StatelessWidget {
  const Shop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      AppAssets.shopee,
                      width: 16,
                      height: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Đơn hàng Shopee',
                      style: TextStyle(
                          color: AppStyleColor.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Text('14/5')
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop:'),
              Text(
                'Bafaby',
                style: TextStyle(
                    color: AppStyleColor.blueText, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mã đơn hàng:'),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '2205145YD7YABP',
                    style: TextStyle(
                        color: AppStyleColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: IconButton(
                          icon: SvgPicture.asset(AppAssets.copy),
                          onPressed: null))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Trạng thái:'),
              Container(
                padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xffCF4547),
                ),
                child: Text(
                  'HOÀN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bom hàng:'),
              Text(
                'Đã nhận hàng hoàn',
                style: TextStyle(
                    color: AppStyleColor.greenText,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Thẻ tag:'),
              Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffE1EDFD),
                    ),
                    child: Text(
                      'Đây là tag 1',
                      style: TextStyle(
                          color: AppStyleColor.blueText,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffE1F0E9),
                    ),
                    child: Text(
                      'Đây là tag 2',
                      style: TextStyle(
                          color: AppStyleColor.greenText,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xffFFF3DF),
                    ),
                    child: Text(
                      'Đây là tag 2',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ghi chú:'),
              Text(
                '',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
