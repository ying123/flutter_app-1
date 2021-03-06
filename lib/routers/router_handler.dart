import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app/pages/drawer_demo/drawer_demo.dart';
import 'package:flutter_app/pages/form/form_demo.dart';
import 'package:flutter_app/pages/form/form_register.dart';
import 'package:flutter_app/pages/home_page/home_page.dart';
import 'package:flutter_app/pages/404.dart';
import 'package:flutter_app/pages/material/material_components.dart';
import 'package:flutter_app/pages/slivers/slivers_demo.dart';
import 'package:flutter_app/pages/tabbar/tabbar_demo.dart';
import 'package:flutter_app/pages/widget/widget_text.dart';
import 'package:flutter_app/pages/widget/widget_container.dart';
import 'package:flutter_app/pages/widget/widget_image.dart';
import 'package:flutter_app/pages/widget/widget_listview.dart';
import 'package:flutter_app/pages/widget/widget_gridview.dart';
import 'package:flutter_app/pages/route_passing_value/route_passing_value.dart';
import 'package:flutter_app/pages/gaode_map/gaode_map.dart';
import 'package:flutter_app/pages/wechat_fluwx/wechat_fluwx.dart';
import 'package:flutter_app/pages/alipay_tobias/alipay_tobias.dart';
import 'package:flutter_app/pages/toast/toast.dart';
import 'package:flutter_app/pages/extended_components/flutter_swiper.dart';
import 'package:flutter_app/pages/cached_network_image/cached_network_image.dart';
import 'package:flutter_app/pages/charts_flutter/charts_flutter.dart';
import 'package:flutter_app/pages/flutter_dropdown_menu/flutter_dropdown_menu.dart';
import 'package:flutter_app/pages/voice_set_page/voice_set_page.dart';
import 'package:flutter_app/pages/ajax/ajax_page.dart';
import 'package:flutter_app/pages/webview/webview.dart';
import 'package:flutter_app/pages/loading/loading.dart';
import 'package:flutter_app/pages/flutter_easyrefresh/flutter_easyrefresh.dart';
import 'package:flutter_app/pages/flutter_easyrefresh/basic_page/basic_page.dart';
import 'package:flutter_app/pages/flutter_easyrefresh/phoenix_page/phoenix_page.dart';
import 'package:flutter_app/pages/flutter_easyrefresh/user_profile_page/user_profile_page.dart';
import 'package:flutter_app/pages/url_launcher/url_launcher.dart';
import 'package:flutter_app/pages/screen/screen.dart';
import 'package:flutter_app/pages/app_update/app_update.dart';
import 'package:flutter_app/pages/provide/provide.dart';
import 'package:flutter_app/pages/barcode_scan/barcode_scan.dart';
import 'package:flutter_app/pages/bloc/bloc_demo.dart';

/* *
 * handler就是每个路由的规则，编写handler就是配置路由规则，
 * 比如我们要传递参数，参数的值是什么，这些都需要在Handler中完成。
 */
// 404页面
Handler notFoundHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return NotFound();
  },
);

// text_widget页面
Handler homePageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomePage();
  },
);

// text_widget页面
Handler textWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return WidgetText();
  },
);

// widget_container页面
Handler containerWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ContainerWidget();
  },
);

// widget_image页面
Handler imageWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ImageWidget();
  },
);

// widget_listview页面
Handler listViewWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ListViewWidget();
  },
);

// widget_listview页面
Handler gridViewWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return GridViewWidget();
  },
);

// route_passing_value页面
Handler routePassingValueHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String goodsId = params['id'].first;
    // print('index>details goodsID is ${goodsId}');
    return RoutePassingValue(goodsId);
  },
);

// gaode_map页面
Handler gaodeMapHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return GaodeMap();
  },
);

// wechat_fluwx页面
Handler wechatFluwxHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return WechatFluwx();
  },
);

// wechat_fluwx页面
Handler aliPayTobiasHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return AliPayTobias();
  },
);

// toast页面
Handler toastMessageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ToastMessage();
  },
);

// FlutterSwiper页面
Handler flutterSwiperHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FlutterSwiper();
  },
);

// cachedNetworkImage页面
Handler cachedNetworkImageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return CachedNetworkImageWidget();
  },
);

// ChartsFlutter页面
Handler chartsFlutterHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ChartsFlutter();
  },
);

// flutterDropdownMenu页面
Handler flutterDropdownMenuHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FlutterDropdownMenu();
  },
);

// voiceSetPage页面
Handler voiceSetPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return VoiceSetPage();
  },
);

// ajaxPage页面
Handler ajaxPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return AjaxPage();
  },
);

// webview页面
Handler webviewHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Webview();
  },
);

// loading页面
Handler loadingHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Loading();
  },
);

// flutterEasyrefresh页面
Handler flutterEasyrefreshHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FlutterEasyrefresh();
  },
);

// basicPage页面
Handler basicPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return BasicPage();
  },
);

// phoenixPage页面
Handler phoenixPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return PhoenixPage();
  },
);

// userProfilePage页面
Handler userProfilePageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return UserProfilePage();
  },
);

// urlLauncher页面
Handler urlLauncherHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return UrlLauncher();
  },
);

// screenPage页面
Handler screenPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ScreenPage();
  },
);

// appUpdate页面
Handler appUpdateHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return AppUpdate();
  },
);

// providePage页面
Handler providePageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ProvidePage();
  },
);

// barcodeScan页面
Handler barcodeScanHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return BarcodeScan();
  },
);

// blocDemo页面
Handler blocDemoHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return BlocDemo();
  },
);

// drawerDemo页面
Handler drawerDemoHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return DrawerDemo();
  },
);

// sliversDemo页面
Handler sliversDemoHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SliversDemo();
  },
);

// tabbarDemo页面
Handler tabbarDemoHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return TabbarDemo();
  },
);

// formDemo页面
Handler formDemoHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FormDemo();
  },
);

// formRegister页面
Handler formRegisterHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return FormRegister();
  },
);

// materialComponents页面
Handler materialComponentsHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return MaterialComponents();
  },
);