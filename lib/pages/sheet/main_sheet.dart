import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

/// 日期：2023-02-15
/// 描述：主页-中间+号-弹出页面
/// 说明：

class Sheet extends StatelessWidget {
  Sheet({Key? key}) : super(key: key);

  final icons = [
    {
      "i": Remix.bookmark_2_line,
      "t": "Orders",
      "s": "5 pending orders",
      "c": Colors.indigo,
    },
    {
      "i": Remix.bank_card_2_line,
      "t": "Payments",
      "s": "No pending payments",
      "c": Colors.purple,
    },
    {
      "i": Remix.map_pin_line,
      "t": "Addresses",
      "s": "No pending payments",
      "c": Colors.green,
    },
    {
      "i": Remix.heart_2_line,
      "t": "Wishlist",
      "s": "No pending payments",
      "c": Colors.red,
    },
    {
      "i": Remix.refund_line,
      "t": "Buy again",
      "s": "No pending payments",
      "c": Colors.cyan,
    },
  ];

  final icons2 = [
    {
      "i": Remix.settings_5_line,
      "t": "Settings",
      "s": "Theme, color, etc.",
      "c": Colors.blueGrey,
    },
    {
      "i": Remix.question_answer_line,
      "t": "Help & Support",
      "s": "Chat with us",
      "c": Colors.deepOrange,
    },
    {
      "i": Remix.information_line,
      "t": "About",
      "s": "Know more about us",
      "c": Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return DraggableScrollableSheet(
      builder: (context, controller) {
        return Material(
          //color: theme.backgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                height: 8,
                width: 40,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          for (var icon in icons)
                            FractionallySizedBox(
                              widthFactor: 0.33,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: (icon["c"] as Color).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Icon(
                                      (icon["i"] as IconData),
                                      color: icon["c"] as Color,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "${icon["t"]}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "More options".toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                            letterSpacing: 5,
                          ),
                        ),
                      ),
                      Wrap(
                        children: [
                          for (var icon in icons2) ...[
                            if (icons2.indexOf(icon) > 0)
                              const Divider(
                                color: Colors.black26,
                                height: 1,
                                indent: 48,
                              ),
                            ListTile(
                              leading: Icon(
                                (icon["i"] as IconData),
                                color: icon["c"] as Color,
                              ),
                              minLeadingWidth: 0,
                              minVerticalPadding: 20,
                              title: Text(
                                "${icon["t"]}",
                                style: const TextStyle(color: Colors.black),
                              ),
                              dense: true,
                              visualDensity: VisualDensity.compact,
                              subtitle: Text(
                                "${icon["s"]}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.black54),
                              ),
                            ),
                          ]
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      minChildSize: 0.5,
      initialChildSize: 0.75,
    );
  }
}