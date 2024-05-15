import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart'; // Import for flip animation
import 'package:scooter_store_ui/config/constants.dart';

class AdultScooters extends StatefulWidget {
  const AdultScooters({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<AdultScooters> createState() => _AdultScootersState();
}
class _AdultScootersState extends State<AdultScooters>
    with TickerProviderStateMixin {
  late AnimationController _controller1; // Animation controller for image

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller1.repeat(reverse: true); // Continuously repeat with reversal
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu_rounded, color: Colors.black54, size: 33),
              const Text(
                "Adulat Scooters",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 33,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 8,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(
            vertical: widget.size.height * 0.04,
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: widget.size.height * 0.4,
                  width: widget.size.height * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [primaryColor, Colors.white],
                    ),
                  ),
                ),
              ),

              // for image with animation
              ScaleTransition(
                // Pulsate the image slightly
                scale: Tween(begin: 0.9, end: 1.1).animate(_controller1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: widget.size.height * 0.49,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/scooter_img1_test.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // for dot slider positioned below image
              Positioned(
                bottom: 0.0, // Place it at the bottom of the Stack
                left: 0.0, // Align it to the left
                right: 0.0, // Stretch it horizontally
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 7; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: i == 3 ? 8 : 4,
                        width: i == 3 ? 8 : 4,
                        decoration: BoxDecoration(
                          color: i == 3 ? secondaryColor : Colors.black26,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 15,
        ),

        // ... other widget code
      ],
    );
  }
}
