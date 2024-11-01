import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class RainCloud extends StatefulWidget {
  const RainCloud({super.key, required this.top, required this.isopposite});
  
  final double top;
  final bool isopposite;

  @override
  State<RainCloud> createState() => _RainCloudState();
}

class _RainCloudState extends State<RainCloud> {
  SMIInput<bool>? rain;
  SMIInput<bool>? hover;
  Artboard? waterArtBoard;

  @override
  void initState() {
    super.initState();
    _loadRiveArtboard(); 
  }

  Future<void> _loadRiveArtboard() async {
    await RiveFile.initialize();
    
    final data = await rootBundle.load('assets/rive/rain.riv');
    final file = RiveFile.import(data);
    final artBoard = file.mainArtboard;

    var controller = StateMachineController.fromArtboard(artBoard, 'State Machine 1');

    if (controller != null) {
      artBoard.addController(controller);
      rain = controller.findInput('isPressed');
      hover = controller.findInput('isHover');
      rain?.value = false;
      hover?.value = false;
    }
    
    setState(() {
      waterArtBoard = artBoard;
    });
  }

  void playRain() {
    if (rain?.value == false) {
      rain?.value = true;
    } else {
      rain?.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 300),
      tween: Tween(
        begin: widget.isopposite ? size.width - 150 : 0.0,
        end: widget.isopposite ? 30.0 : size.width - 150,
      ),
      builder: (context, value, _) {
        return Positioned(
          top: widget.top,
          right: value,
          child: MouseRegion(
            onEnter: (_) {
              hover?.value = true;
            },
            onExit: (_) {
              hover?.value = false;
            },
            child: GestureDetector(
              onTap: () => playRain(),
              child: SizedBox(
                height: 120,
                width: 220,
                child: waterArtBoard != null
                    ? Rive(
                        useArtboardSize: true,
                        artboard: waterArtBoard!,
                        fit: BoxFit.cover,
                      )
                    : Container(),
              ),
            ),
          ),
        ).animate().fadeIn(delay: 1.5.seconds, duration: .35.seconds).slide(begin: const Offset(0, .2));
      },
    );
  }
}
