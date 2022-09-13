import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:order_ui/utils/app_assets.dart';
import 'package:order_ui/utils/app_style.dart';

class SettingInventory extends StatelessWidget {
  const SettingInventory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Cài đặt đồng bộ tồn kho'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Wrap(
              alignment: WrapAlignment.end,
              children: [
                Text(
                  'Tự động cập nhật tồn kho trên sàn theo số lượng sản phẩm thực tế có trong kho.',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.product,
                    height: 48,
                    width: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 6),
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
          ),
        ],
      ),
    );
  }
}
