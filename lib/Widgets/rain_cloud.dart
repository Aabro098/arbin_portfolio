import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RainCloud extends StatefulWidget {
  final double top;
  final bool isopposite;
  const RainCloud({
    super.key, 
    required this.top, 
    required this.isopposite
  });

  @override
  State<RainCloud> createState() => _RainCloudState();
}

class _RainCloudState extends State<RainCloud> {
  Artboard? rainArtBoard;
  SMIInput<bool>? rain;
  SMIInput<bool>? hover;

  @override
  void initState(){
    super.initState();
    _loadRiveArtboard();
  }

   Future<void> _loadRiveArtboard() async {
    await RiveFile.initialize(); 

    final data = await rootBundle.load("assets/rive/rain.riv");
    final file = RiveFile.import(data);
    final artBoard = file.mainArtboard;

    var controller = StateMachineController.fromArtboard(artBoard, "State Machine 1");
    if (controller != null) {
      artBoard.addController(controller);
      rain = controller.findInput("isPressed");
      hover = controller.findInput("isHover");
      rain?.value = false;
      hover?.value = false;
    }

    setState(() {
      rainArtBoard = artBoard; 
    });
  }

  playRain(){
    if(rain?.value ==false){
      rain?.value = true;
    }else if(rain?.value == true){
      rain?.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return rainArtBoard!= null 
      ? TweenAnimationBuilder(
        tween: Tween(
          begin: widget.isopposite ? size.width-180 : 0,
          end: widget.isopposite ? 0 : size.width - 180
        ),
        duration: const Duration(seconds: 300),
        builder: (context , value , _) {
          return Positioned(
            top: widget.top,
            child: SizedBox(
              width: 220,
              height: 100,
              child: MouseRegion(
                onEnter: (_){
                  hover?.value = true;
                },
                onExit: (_){
                  hover?.value = false;
                },
                child: GestureDetector(
                  onTap: ()=> playRain() ,
                  child: Rive(
                    useArtboardSize: true,
                    fit: BoxFit.cover,
                    artboard: rainArtBoard!,
                  ),
                ),
              ),
            ),
          );
        }
      )
      :Container();
  }
}