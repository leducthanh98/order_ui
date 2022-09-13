import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_ui/pages/setting_inventory_page.dart';

import 'package:order_ui/utils/app_assets.dart';
import 'package:order_ui/utils/app_style.dart';

import 'setting_inventory_page.dart';

class Inventory extends StatelessWidget {
  const Inventory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Thiết lập tồn kho'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: AppStyleColor.orangeBackgroup,
            child: Column(children: [
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
                          'Trovudev',
                          style: TextStyle(
                              color: AppStyleColor.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingInventory()));
                      },
                      child: Text(
                        'Cài đặt',
                        style: TextStyle(
                            color: AppStyleColor.blueText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              Row(
                children: [Text('Tự động cập nhật tồn kho chưa được bật')],
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
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
                            fontSize: 16,
                            color: AppStyleColor.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Số lượng: 1 x 250.000',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlineButton(
                  onPressed: null,
                  child: Text('Tạo mã tồn kho mới'),
                ),
                OutlineButton(
                  onPressed: null,
                  child: Text('Sử dụng mã đã có'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ví dụ: SP01_XL_DEN',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Số lượng còn trong kho',
                      border: OutlineInputBorder(),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
