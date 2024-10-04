import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:palette_generator/palette_generator.dart';

class MeshBackground extends StatefulWidget {
  const MeshBackground({
    Key? key,
    this.imagePath,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.child,
  }) : super(key: key);

  final String? imagePath;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Widget? child;

  @override
  _MeshBackgroundState createState() => _MeshBackgroundState();
}

class _MeshBackgroundState extends State<MeshBackground> {
  PaletteGenerator? _paletteGenerator;
  Color? _color1;
  Color? _color2;
  Color? _color3;
  Color? _color4;

  @override
  void initState() {
    super.initState();
    if (widget.imagePath != null) {
      _getImageColors();
    } else {
      _setColors();
    }
  }

  Future<void> _getImageColors() async {
    final ImageProvider imageProvider = AssetImage(widget.imagePath!);

    _paletteGenerator = await PaletteGenerator.fromImageProvider(
      imageProvider,
      maximumColorCount: 4,
    );

    setState(() {
      _color1 = _paletteGenerator?.dominantColor?.color ?? widget.color1 ?? Color(0xFFff7e5f);
      _color2 = _paletteGenerator?.lightVibrantColor?.color ?? widget.color2 ?? Color.fromARGB(255, 139, 105, 79);
      _color3 = _paletteGenerator?.darkMutedColor?.color ?? widget.color3 ?? Color(0xFF6a11cb);
      _color4 = _paletteGenerator?.mutedColor?.color ?? widget.color4 ?? Color.fromARGB(255, 7, 21, 45);
    });
  }

  void _setColors() {
    setState(() {
      _color1 = widget.color1 ?? Color(0xFFff7e5f);
      _color2 = widget.color2 ?? Color.fromARGB(255, 139, 105, 79);
      _color3 = widget.color3 ?? Color(0xFF6a11cb);
      _color4 = widget.color4 ?? Color.fromARGB(255, 7, 21, 45);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: _paletteGenerator == null && widget.imagePath != null
          ? Center(child: CircularProgressIndicator())
          : AnimatedMeshGradient(
              colors: [
                _color1!,
                _color2!,
                _color3!,
                _color4!,
              ],
              options: AnimatedMeshGradientOptions(speed: 0.01),
               child: widget.child,

            ),
    );
  }
}