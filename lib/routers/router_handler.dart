import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app/pages/404.dart';
import 'package:flutter_app/pages/widget/widget_text.dart';
import 'package:flutter_app/pages/widget/widget_container.dart';
import 'package:flutter_app/pages/widget/widget_image.dart';
import 'package:flutter_app/pages/widget/widget_listview.dart';
import 'package:flutter_app/pages/widget/widget_gridview.dart';
import 'package:flutter_app/pages/route_passing_value/route_passing_value.dart';
import 'package:flutter_app/pages/gaode_map/gaode_map.dart';
import 'package:flutter_app/pages/wechat_fluwx/wechat_fluwx.dart';

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