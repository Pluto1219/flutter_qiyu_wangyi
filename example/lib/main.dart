import 'package:flutter/material.dart';

import 'package:flutter_qiyu/flutter_qiyu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  QiYu.registerApp(
    appKey: '',
    appName: 'qcdys',
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('联系客服'),
                onPressed: () {
                  QYUserInfoParams userInfoParams = QYUserInfoParams.fromJson({
                    'userId': 'uid10101010',
                    'data':
                        '[{\"key\":\"real_name\", \"value\":\"土豪\"},{\"key\":\"mobile_phone\", \"hidden\":true},{\"key\":\"email\", \"value\":\"13800000000@163.com\"},{\"index\":0, \"key\":\"account\", \"label\":\"账号\", \"value\":\"zhangsan\", \"href\":\"http://example.domain/user/zhangsan\"},{\"index\":1, \"key\":\"sex\", \"label\":\"性别\", \"value\":\"先生\"},{\"index\":5, \"key\":\"reg_date\", \"label\":\"注册日期\", \"value\":\"2015-11-16\"},{\"index\":6, \"key\":\"last_login\", \"label\":\"上次登录时间\", \"value\":\"2015-12-22 15:38:54\"}]'
                  });
//                  QiYu.setUserInfo(userInfoParams);

                  QYServiceWindowParams serviceWindowParams =
                      QYServiceWindowParams.fromJson({
                    'source': {
                      'sourceTitle': '网易七鱼Flutter',
                      'sourceUrl': 'http://www.qiyukf.com',
                      'sourceCustomInfo': '我是来自自定义的信息'
                    },
                    'sessionTitle': '网易七鱼',
                    'groupId': 0,
                    'staffId': 4089135,
                    'robotId': 0,
                    'robotFirst': false,
                    'faqTemplateId': 0,
                    'vipLevel': 0,
                    'showQuitQueue': true,
                    'showCloseSessionEntry': true
                  });

                  QiYu.openServiceWindow(serviceWindowParams);

                  QiYu.setCustomUIConfig({
                    'titleCenter': true,
                    'titleBackgroundColor': '#FFFCCC',
                    'titleBarStyle': 1,
//                    'customerHeadImage': 'https://www.baidu.com/img/flexible/logo/pc/result.png'
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
