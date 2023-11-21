import 'package:ecommerce_ui/styles.dart';
import 'package:ecommerce_ui/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shadow_clip/shadow_clip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce-UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  _topNavigationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildRoundedIconButton(Icons.arrow_back),
        _buildRoundedIconButton(Icons.shopping_cart),
      ],
    );
  }

  _buildRoundedIconButton(icon) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: softUiShadow,
        color: const Color(0xffe8f1f9),
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: const Color(0xff9Db4d3),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 24,
          color: const Color(0xff353151).withOpacity(0.7),
        ),
      ),
    );
  }

  _buildButtonNavigationBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.blueGrey.shade500,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            const Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Rs. 35,999',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: _preorderButton(),
            )
          ],
        ),
      ),
    );
  }

  _preorderButton() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: activeGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.indigo[300]!,
            spreadRadius: 1,
            blurRadius: 15,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Pre-Order',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 32,
          ),
        ],
      ),
    );
  }

  _buildMainCard() {
    return ClipShadow(
      boxShadow: softUiShadow,
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.0),
          color: const Color(0xffcddeec),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: _buildRoundedIconButton(Icons.favorite),
            ),
            _buildMainCardBottomDescription(),
          ],
        ),
      ),
    );
  }

  _buildMainCardBottomDescription() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomIconButton(iconName: Icons.directions_walk),
            CustomIconButton(iconName: Icons.donut_small),
            CustomIconButton(iconName: Icons.track_changes),
            CustomIconButton(iconName: Icons.tune),
          ],
        ),
        const SizedBox(
          height: 18.0,
        ),
        const Text(
          'IWC Schaffhausen',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w700,
            color: Color(0xff353151),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Lunar Sample Return LE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff353151),
            letterSpacing: 4,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Companion that transcends fleeting trends, becoming a reliable and enduring reflection of your journey through every ticking second...',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: _buildButtonNavigationBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              _topNavigationRow(),
              const SizedBox(height: 120),
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  _buildMainCard(),
                  const Positioned(
                    top: -100,
                    child: Image(
                      height: 300,
                      image: AssetImage('images/pngwing.com.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
