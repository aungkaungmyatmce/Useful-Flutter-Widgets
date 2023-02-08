import 'package:best_flutter_widgets/best_flutter_widgets/Part%201/banner_widgets/another_flushbar.dart';
import 'package:best_flutter_widgets/best_flutter_widgets/Part%201/banner_widgets/material_banner_widget.dart';
import 'package:best_flutter_widgets/best_flutter_widgets/Part%201/bottom_sheet/model_bottom_sheet.dart';
import 'package:best_flutter_widgets/best_flutter_widgets/Part%202/circle_avatar/circle_avatar_widget.dart';
import 'package:best_flutter_widgets/best_flutter_widgets/Part%203/dialog/alert_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'best_flutter_widgets/Part 1/banner_widgets/snack_bar.dart';
import 'best_flutter_widgets/Part 1/draggable/drag_target.dart';
import 'best_flutter_widgets/Part 1/draggable/draggable_scrollable.dart';
import 'best_flutter_widgets/Part 2/checkbox/checkbox_listtile.dart';
import 'best_flutter_widgets/Part 2/cupertino/cupertino_context_menu_widget.dart';
import 'best_flutter_widgets/Part 2/cupertino/cupertino_sliding_segmented_control.dart';
import 'best_flutter_widgets/Part 2/reorderable_listview/reorderable_ listview_widget.dart';
import 'best_flutter_widgets/Part 2/table/table_widget.dart';
import 'best_flutter_widgets/Part 3/animation/animated_container.dart';
import 'best_flutter_widgets/Part 3/animation/animated_cross_fade.dart';
import 'best_flutter_widgets/Part 3/animation/animated_default_textstyle.dart';
import 'best_flutter_widgets/Part 3/animation/animated_icon.dart';
import 'best_flutter_widgets/Part 3/animation/animated_opacity.dart';
import 'best_flutter_widgets/Part 3/animation/animated_rotation.dart';
import 'best_flutter_widgets/Part 3/animation/hero.dart';
import 'best_flutter_widgets/Part 3/card/card_widget.dart';
import 'best_flutter_widgets/Part 3/date_and_time_picker/date_picker_widget.dart';
import 'best_flutter_widgets/Part 3/date_and_time_picker/date_range_picker.dart';
import 'best_flutter_widgets/Part 3/date_and_time_picker/time_picker_widget.dart';
import 'best_flutter_widgets/Part 3/dismissible/dismissible_widget.dart';
import 'best_flutter_widgets/Part 4/aspect_ratio/aspect_ratio.dart';
import 'best_flutter_widgets/Part 4/auto_complete/auto_complete.dart';
import 'best_flutter_widgets/Part 4/choice_chip/choice_chip.dart';
import 'best_flutter_widgets/Part 4/form/text_form_field.dart';
import 'best_flutter_widgets/Part 4/menu_button/popup_menu_buttton.dart';
import 'best_flutter_widgets/Part 5/box/fitted_box.dart';
import 'best_flutter_widgets/Part 5/box/fractionally_sized_box.dart';
import 'best_flutter_widgets/Part 5/grid_view/grid_view.dart';
import 'best_flutter_widgets/Part 5/image/fadein_image.dart';
import 'best_flutter_widgets/Part 5/pointer/ignore_pointer.dart';
import 'best_flutter_widgets/Part 5/stack/index_stack.dart';
import 'best_flutter_widgets/Part 6/list_tile/radio_list_tile.dart';
import 'best_flutter_widgets/Part 6/refresh_indicatior/refresh_indicator.dart';
import 'best_flutter_widgets/Part 6/stepper/stepper.dart';
import 'best_flutter_widgets/Part 6/tab_page/page_view.dart';
import 'best_flutter_widgets/Part 6/tab_page/tab_bar.dart';
import 'best_flutter_widgets/Part 6/tab_page/tab_page_selector.dart';
import 'best_flutter_widgets/Part 6/text/selectable_text.dart';
import 'best_flutter_widgets/Part 7/expansion/expansion_tile.dart';
import 'best_flutter_widgets/Part 7/layout/layout_builder.dart';
import 'best_flutter_widgets/Part 7/layout/orientation_builder.dart';
import 'best_flutter_widgets/Part 7/overflow_bar/overflow_bar_widget.dart';
import 'best_flutter_widgets/Part 7/slider/slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: CupertinoSlidingSegmentedControlWidget(),
    );
  }
}
