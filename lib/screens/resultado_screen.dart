import 'package:arboviroses/models/dai_class.dart';
import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/models/resultado_class.dart';
import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/models/sorologia_class.dart';
import 'package:arboviroses/utils/app_routes.dart';
import 'package:arboviroses/utils/validator.dart';
import 'package:arboviroses/widgets/box_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultadoScreen extends StatefulWidget {
  @override
  _ResultadoScreenState createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    ResultadoClass obj = Provider.of(context, listen: false);
    int segErro = 6;
    
    TextStyle styleErro() {
      return TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      );
    }

    TextStyle styleSucess() {
      return TextStyle(
        fontSize: 20,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _selected1 = !_selected1;
                          if (_selected1) {
                            Map<String, int> doenca = {"doenca": 1};
                            obj.newFunction(doenca);
                            _selected2 = false;
                            _selected3 = false;
                          }
                        },
                      );
                    },
                    child: BoxTextWidget(
                      'Dengue',
                      80,
                      _selected1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _selected2 = !_selected2;
                          if (_selected2) {
                            Map<String, int> doenca = {"doenca": 2};
                            obj.newFunction(doenca);
                            _selected1 = false;
                            _selected3 = false;
                          }
                        },
                      );
                    },
                    child: BoxTextWidget(
                      'Zika',
                      80,
                      _selected2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      setState(
                        () {
                          _selected3 = !_selected3;
                          if (_selected3) {
                            Map<String, int> doenca = {"doenca": 3};
                            obj.newFunction(doenca);
                            _selected1 = false;
                            _selected2 = false;
                          }
                        },
                      );
                    },
                    child: BoxTextWidget(
                      'Chikungunya',
                      80,
                      _selected3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _status
                    ? InkWell(
                        onTap: () async {
                          setState(() {
                            _status = false;
                          });
                          PacienteClass paciente;
                          FebreClass febre;
                          SintomasClass sintomas;
                          ExamesClass exames;
                          SorologiaClass sorologia;
                          ResultadoClass resultado;

                          if (Provider.of<PacienteClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            paciente = new PacienteClass(0, 0, 0, 0, 0, 0);
                          } else {
                            paciente = Provider.of<PacienteClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<FebreClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            febre = new FebreClass(0, 0, 0, 0, 0, 0, 0, 0);
                          } else {
                            febre =
                                Provider.of<FebreClass>(context, listen: false)
                                    .items[0];
                          }

                          if (Provider.of<SintomasClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            sintomas = new SintomasClass(
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0);
                          } else {
                            sintomas = Provider.of<SintomasClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<ExamesClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            exames = new ExamesClass(
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0);
                          } else {
                            exames =
                                Provider.of<ExamesClass>(context, listen: false)
                                    .items[0];
                          }

                          if (Provider.of<SorologiaClass>(context,
                                  listen: false)
                              .items
                              .isEmpty) {
                            sorologia = new SorologiaClass(0, 0, 0, 0, 0, 0, 0);
                          } else {
                            sorologia = Provider.of<SorologiaClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<ResultadoClass>(context,
                                  listen: false)
                              .items
                              .isEmpty) {
                            resultado = new ResultadoClass(
                              0,
                            );
                          } else {
                            resultado = Provider.of<ResultadoClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          Validator validatePaciente = new Validator();
                          Validator validateFebre = new Validator();
                          Validator validateSintomas = new Validator();
                          Validator validateResultado = new Validator();
                          Validator validateSorologia = new Validator();


                          bool validPaciente =validatePaciente.validatePaciente(paciente);
                          bool validFebre = validateFebre.validateFebre(febre);
                          bool validSintomas = validateSintomas.validateSintomas(sintomas);
                          bool validResultado = validateResultado.validateResultado(resultado);
                          bool validSorologia = validateSorologia.validateSorologia(sorologia);


                          if (!validResultado) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor escolher pelo menos 1 doença como resultado",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                duration: Duration(seconds: segErro),
                                backgroundColor: Colors.white,
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validSorologia) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor selecionar somente 2 opções de sorologia para Dengue!",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validSintomas) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor escolher pelo menos 3 sintomas",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validFebre) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor escolher pelo menos 1 item de febre",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validPaciente) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Opção gestante é apenas para o sexo Feminino!",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (validSintomas &&
                              validFebre &&
                              validResultado &&
                              validPaciente &&
                              validSorologia) {

                            final ret = await Provider.of<DaiClassAction>(
                                    context,
                                    listen: false)
                                .addDai(
                                    paciente != null ? paciente : null,
                                    febre != null ? febre : null,
                                    sintomas != null ? sintomas : null,
                                    exames != null ? exames : null,
                                    sorologia != null ? sorologia : null,
                                    resultado != null ? resultado : null);

                            if (ret) {
                              Scaffold.of(context).hideCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                      'Registro adicionado com sucesso!',
                                      textAlign: TextAlign.center,
                                      style: styleSucess(),
                                    ),
                                    duration: Duration(seconds: 10),
                                    backgroundColor: Colors.white,
                                    onVisible: () async {
                                      setState(() {
                                        _status = true;
                                      });
                                      await Future.delayed(
                                          Duration(seconds: 3));
                                      Navigator.of(context)
                                          .pushNamed(AppRoutes.HOME);
                                    }),
                              );
                            } else {
                              Scaffold.of(context).hideCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Registro não gravado! Problema no servidor ou internet indisponível.",
                                    textAlign: TextAlign.center,
                                    style: styleErro(),
                                  ),
                                  backgroundColor: Colors.white,
                                  duration: Duration(seconds: segErro),
                                  onVisible: () {
                                    setState(() {
                                      _status = true;
                                    });
                                  },
                                ),
                              );
                            }
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Text(
                                'Gravar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                            //_status ? container() : CircularProgressIndicator(),
                          ],
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
