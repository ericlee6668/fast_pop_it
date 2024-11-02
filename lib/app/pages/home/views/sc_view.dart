import 'package:flutter/material.dart';

class SciFiHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 背景设计
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.deepPurple.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // 星点效果
          Positioned.fill(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/stars_background.png', // 背景星空图，增强科幻氛围
                fit: BoxFit.cover,
              ),
            ),
          ),
          // 主内容
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 标题
              Text(
                'Pop it',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.blueAccent.withOpacity(0.6),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // 按钮组
              SciFiButton(text: 'Classic', onPressed: () {}),
              SciFiButton(text: 'Score', onPressed: () {}),
              SciFiButton(text: 'Memory', onPressed: () {}),
              SizedBox(height: 30),
              // 底部导航
              TextButton(
                onPressed: () {},
                child: Text(
                  'About us',
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ),
            ],
          ),
          // 图标按钮 (放在顶部右侧)
          Positioned(
            top: 40,
            right: 20,
            child: Row(
              children: [
                SciFiIconButton(icon: Icons.calendar_today, onPressed: () {}),
                SizedBox(width: 16),
                SciFiIconButton(icon: Icons.shopping_cart, onPressed: () {}),
                SizedBox(width: 16),
                SciFiIconButton(icon: Icons.settings, onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 科幻风格的按钮
class SciFiButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SciFiButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          backgroundColor: Colors.black,
          shadowColor: Colors.blueAccent.withOpacity(0.6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: Colors.blueAccent,
              width: 1.5,
            ),
          ),
          elevation: 8,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.blueAccent,
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 科幻风格的图标按钮
class SciFiIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  SciFiIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: Colors.blueAccent.withOpacity(0.5),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Icon(
          icon,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}