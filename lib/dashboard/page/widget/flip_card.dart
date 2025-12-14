import 'dart:math';
import 'package:flutter/material.dart';

class FlipCard extends StatefulWidget {
  final VoidCallback onFlip;
  final bool canFlip;

  const FlipCard({super.key, required this.onFlip, required this.canFlip});

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFlipped = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    _animation = Tween<double>(
      begin: 0,
      end: pi,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _handleTap() {
    if (_isFlipped || !widget.canFlip) return;

    _isFlipped = true;
    _controller.forward();

    Future.delayed(const Duration(milliseconds: 600), () {
      widget.onFlip();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final isFront = _animation.value < pi / 2;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple.withAlpha(80),
                border: Border.all(color: Colors.purpleAccent),
              ),
              child: Center(
                child: isFront
                    ? const Icon(Icons.card_giftcard, color: Colors.amber, size: 32)
                    : Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: const Icon(Icons.star, color: Colors.yellow, size: 32),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
