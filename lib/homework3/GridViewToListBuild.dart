import 'package:flutter/material.dart';

class Gridviewtolistbuild extends StatefulWidget {
  const Gridviewtolistbuild({super.key});

  @override
  State<Gridviewtolistbuild> createState() => _GridviewtolistbuildState();
}

// List Button
Widget _iconTextButton({
  required IconData icon,
  required String buttonText,
  required VoidCallback onPressed,
  Color? iconColor,
  double? iconSize,
  double? width,
  bool isListView = false,
  // bool sizedBox = false,
  bool isMargin = false,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(8.0),
    ),
    child: Container(
        color: Colors.blueGrey,
        width: width ?? 150,
        height: 100,
        margin: isMargin ? const EdgeInsets.only(bottom: 20) : EdgeInsets.zero,
        child: isListView
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor ?? Colors.grey,
                      size: iconSize ?? 24,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            : Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor ?? Colors.grey,
                      size: iconSize ?? 24,
                    ),
                  ),
                  const SizedBox(width: 20),

                  Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                  // const SizedBox(height: 20),
                ],
              )),
  );
}

//Menu Button
Widget _menuButton({
  required IconData icon,
  required VoidCallback onPressed,
  Color? iconColor,
  double? iconSize,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      padding: const EdgeInsets.all(8.0),
    ),
    child: Container(
      color: Colors.green,
      width: 100,
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: iconColor ?? Colors.white,
              size: iconSize ?? 50,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    ),
  );
}

class _GridviewtolistbuildState extends State<Gridviewtolistbuild> {
  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    List<Widget> buttons = [
      _iconTextButton(
        icon: Icons.home,
        buttonText: 'Home',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
      _iconTextButton(
        icon: Icons.search,
        buttonText: 'Search',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
      _iconTextButton(
        icon: Icons.account_balance_wallet,
        buttonText: 'Wallet',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
      _iconTextButton(
        icon: Icons.settings,
        buttonText: 'Settings',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
      _iconTextButton(
        icon: Icons.chair,
        buttonText: 'Chair',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
      _iconTextButton(
        icon: Icons.deck,
        buttonText: 'Deck',
        onPressed: () {},
        width: isGridView ? 150 : screenWidth * 0.8,
        isListView: !isGridView,
        isMargin: true,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeWork 3'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: screenWidth,
          height: screenHeight * 0.75,
          child: Stack(
            children: [
              isGridView
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: buttons.length,
                      itemBuilder: (context, index) {
                        return buttons[index];
                      },
                    )
                  : ListView.builder(
                      itemCount: buttons.length,
                      itemBuilder: (context, index) {
                        return buttons[index];
                      },
                    ),
              Positioned(
                bottom: 16,
                right: 16,
                child: _menuButton(
                  icon: isGridView ? Icons.menu : Icons.grid_on,
                  // buttonText: 'Toggle View',
                  onPressed: () {
                    setState(() {
                      isGridView = !isGridView;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
