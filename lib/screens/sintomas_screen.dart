import 'package:arboviroses/widgets/single_widget.dart';
import 'package:flutter/material.dart';

class SintomasScreen extends StatefulWidget {
  @override
  _SintomasScreenState createState() => _SintomasScreenState();
}

class _SintomasScreenState extends State<SintomasScreen> {
  bool _selected1(bool sel1) {
    return sel1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'dorretro', function: _selected1, label: "Dor Retro"),
                SizedBox(height: 15),
                SingleWidget(campo: 'cefaleia', function: _selected1, label: "Cefáleia"),
                SizedBox(height: 15),
                SingleWidget(campo: 'prurido', function: _selected1, label: "Prurido"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'dorabdominal', function: _selected1, label: "Dor Abdominal"),
                SizedBox(height: 15),
                SingleWidget(campo: 'hemorragia', function: _selected1, label: "Hemorragia"),
                SizedBox(height: 15),
                SingleWidget(campo: 'artralgia', function: _selected1, label: "Artralgia"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'prostacao', function: _selected1, label: "Prostação"),
                SizedBox(height: 15),
                SingleWidget(campo: 'mialgia', function: _selected1, label: "Mialgia"),
                SizedBox(height: 15),
                SingleWidget(campo: 'Convulsão', function: _selected1, label: "Convulção"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'conjutivite', function: _selected1, label: "Conjuntivite"),
                SizedBox(height: 15),
                SingleWidget(campo: 'tosse', function: _selected1, label: "Tosse"),
                SizedBox(height: 15),
                SingleWidget(campo: 'dorcostas', function: _selected1, label: "Dor nas Costas"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'artrite', function: _selected1, label: "Artrite"),
                SizedBox(height: 15),
                SingleWidget(campo: 'dorouvido', function: _selected1, label: "Dor de Ouvido"),
                SizedBox(height: 15),
                SingleWidget(campo: 'faltaapetite', function: _selected1, label: "Falta de Apitite"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'diarreia', function: _selected1, label: "Diarreia"),
                SizedBox(height: 15),
                SingleWidget(campo: 'malestar', function: _selected1, label: "Mal Estar"),
                SizedBox(height: 15),
                SingleWidget(campo: 'dispneia', function: _selected1, label: "Dispneia"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'sudorese', function: _selected1, label: "Sudorese"),
                SizedBox(height: 15),
                SingleWidget(campo: 'calafrio', function: _selected1, label: "Calafrio"),
                SizedBox(height: 15),
                SingleWidget(campo: 'linfadenopatia', function: _selected1, label: "Linfadenopatia"),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'edema', function: _selected1, label: "Edema"),
                SizedBox(height: 15),
                SingleWidget(campo: 'exantema', function: _selected1, label: "Exantema"),
                SizedBox(height: 15),
                SingleWidget(campo: 'hematoma', function: _selected1, label: "Hematoma"),
                SizedBox(height: 15),
              ],
            ),
             SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleWidget(campo: 'nauseas', function: _selected1, label: "Nauseas"),
                SizedBox(height: 15),
                SingleWidget(campo: 'vomito', function: _selected1, label: "Vomito"),
                SizedBox(height: 15),
                SingleWidget(campo: 'outros', function: _selected1, label: "Outros"),
                SizedBox(height: 15),                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
