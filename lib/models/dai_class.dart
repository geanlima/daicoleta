import 'dart:convert';
import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/models/resultado_class.dart';
import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/models/sorologia_class.dart';
import 'package:arboviroses/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DaiClass with ChangeNotifier {
  int id;

  //Dados do Paciente
  int idade1;
  int idade2;
  int idade3;
  int gestante;
  int sexof;
  int sexom;

  //Dados Febre
  int temperatura1;
  int temperatura2;
  int temperatura3;
  int duracao1;
  int duracao2;
  int duracao3;
  int temperaturanao;
  int febreausente;

  // Dados Sintomas
  int dorretro;
  int cefaleia;
  int prurido;
  int dorabdominal;
  int hemorragia;
  int artralgia;
  int prostacao;
  int mialgia;
  int vomito;
  int conjutivite;
  int tosse;
  int dorcostas;
  int artrite;
  int dorouvido;
  int faltaapetite;
  int diarreia;
  int malestar;
  int dispneia;
  int sudorese;
  int calafrio;
  int linfadenopatia;
  int edema;
  int exantema;
  int hematoma;
  int outros;
  int nauseas;
  int convulsoes;

  // Dados Exames
  int laco;
  int hemacias1;
  int hemacias2;
  int hemacias3;
  int hemoglobina1;
  int hemoglobina2;
  int hemoglobina3;
  int hematocrito1;
  int hematocrito2;
  int hematocrito3;
  int leucocitos1;
  int leucocitos2;
  int leucocitos3;
  int linfocitos1;
  int linfocitos2;
  int linfocitos3;
  int neutrofilos1;
  int neutrofilos2;
  int neutrofilos3;
  int plaqueta1;
  int plaqueta2;
  int plaqueta3;
  int pcr1;
  int pcr2;
  int pcr3;
  int tgo1;
  int tgo2;
  int tgo3;
  int tgp1;
  int tgp2;
  int tgp3;

// Dados Sorologia
  int dengueigg;
  int dengueigm;
  int denguens1;
  int zikaigg;
  int zikaigmint;
  int chikigg;
  int chikigm;

// Dados Resultado
  int doenca;

  DaiClass({
    this.artralgia,
    this.artrite,
    this.calafrio,
    this.cefaleia,
    this.chikigg,
    this.chikigm,
    this.conjutivite,
    this.convulsoes,
    this.dengueigg,
    this.dengueigm,
    this.denguens1,
    this.diarreia,
    this.dispneia,
    this.doenca,
    this.dorabdominal,
    this.dorcostas,
    this.dorouvido,
    this.dorretro,
    this.duracao1,
    this.duracao2,
    this.duracao3,
    this.edema,
    this.exantema,
    this.faltaapetite,
    this.febreausente,
    this.gestante,
    this.hemacias1,
    this.hemacias2,
    this.hemacias3,
    this.hematocrito1,
    this.hematocrito2,
    this.hematocrito3,
    this.hematoma,
    this.hemoglobina1,
    this.hemoglobina2,
    this.hemoglobina3,
    this.hemorragia,
    this.id,
    this.idade1,
    this.idade2,
    this.idade3,
    this.laco,
    this.leucocitos1,
    this.leucocitos2,
    this.leucocitos3,
    this.linfadenopatia,
    this.linfocitos1,
    this.linfocitos2,
    this.linfocitos3,
    this.malestar,
    this.mialgia,
    this.nauseas,
    this.neutrofilos1,
    this.neutrofilos2,
    this.neutrofilos3,
    this.outros,
    this.pcr1,
    this.pcr2,
    this.pcr3,
    this.plaqueta1,
    this.plaqueta2,
    this.plaqueta3,
    this.prostacao,
    this.prurido,
    this.sexof,
    this.sexom,
    this.sudorese,
    this.temperatura1,
    this.temperatura2,
    this.temperatura3,
    this.temperaturanao,
    this.tgo1,
    this.tgo2,
    this.tgo3,
    this.tgp1,
    this.tgp2,
    this.tgp3,
    this.tosse,
    this.vomito,
    this.zikaigg,
    this.zikaigmint,
  });
}

class DaiClassAction with ChangeNotifier {
  String baseUrl = Constants.BASE_API_URL;
  
  bool retorno = false;

  Future<bool> addDai(
      PacienteClass pacienteClass,
      FebreClass febreClass,
      SintomasClass sintomasClass,
      ExamesClass examesClass,
      SorologiaClass sororologiaClass,
      ResultadoClass resultadoClass) async {

    try {
      await http
          .post(baseUrl,
              headers: {"Content-type": "application/json"},
              body: json.encode({
                "artralgia": sintomasClass.artralgia,
                "artrite": sintomasClass.artrite,
                "calafrio": sintomasClass.calafrio,
                "cefaleia": sintomasClass.cefaleia,
                "chik_igg": sororologiaClass.chikigg,
                "chik_igm": sororologiaClass.chikigm,
                "conjutivite": sintomasClass.conjutivite,
                "convulsoes": sintomasClass.convulsoes,
                "dengue_igg": sororologiaClass.dengueigg,
                "dengue_igm": sororologiaClass.dengueigm,
                "dengue_ns1": sororologiaClass.denguens1,
                "diarreia": sintomasClass.diarreia,
                "dispneia": sintomasClass.dispneia,
                "doenca": resultadoClass.doenca,
                "dor_abdominal": sintomasClass.dorabdominal,
                "dor_costas": sintomasClass.dorcostas,
                "dor_ouvido": sintomasClass.dorouvido,
                "dor_retro": sintomasClass.dorretro,
                "duracao1": febreClass.duracao1,
                "duracao2": febreClass.duracao2,
                "duracao3": febreClass.duracao3,
                "edema": sintomasClass.edema,
                "exantema": sintomasClass.exantema,
                "falta_apetite": sintomasClass.faltaapetite,
                "febre_ausente": febreClass.febreausente,
                "gestante": pacienteClass.gestante,
                "hemacias1": examesClass.hemacias1,
                "hemacias2": examesClass.hemacias2,
                "hemacias3": examesClass.hemacias3,
                "hematocrito1": examesClass.hematocrito1,
                "hematocrito2": examesClass.hematocrito2,
                "hematocrito3": examesClass.hematocrito3,
                "hematoma": sintomasClass.hematoma,
                "hemoglobina1": examesClass.hemoglobina1,
                "hemoglobina2": examesClass.hemoglobina2,
                "hemoglobina3": examesClass.hemoglobina3,
                "hemorragia": sintomasClass.hemorragia,
                "idade1": pacienteClass.idade1,
                "idade2": pacienteClass.idade2,
                "idade3": pacienteClass.idade3,
                "laco": examesClass.laco,
                "leucocitos1": examesClass.leucocitos1,
                "leucocitos2": examesClass.leucocitos2,
                "leucocitos3": examesClass.leucocitos3,
                "linfadenopatia": sintomasClass.linfadenopatia,
                "linfocitos1": examesClass.linfocitos1,
                "linfocitos2": examesClass.linfocitos2,
                "linfocitos3": examesClass.linfocitos3,
                "mal_estar": sintomasClass.malestar,
                "mialgia": sintomasClass.mialgia,
                "nauseas": sintomasClass.nauseas,
                "neutrofilos1": examesClass.neutrofilos1,
                "neutrofilos2": examesClass.neutrofilos2,
                "neutrofilos3": examesClass.neutrofilos3,
                "outros": sintomasClass.outros,
                "pcr1": examesClass.pcr1,
                "pcr2": examesClass.pcr2,
                "pcr3": examesClass.pcr3,
                "plaqueta1": examesClass.plaqueta1,
                "plaqueta2": examesClass.plaqueta2,
                "plaqueta3": examesClass.plaqueta3,
                "prostacao": sintomasClass.prostacao,
                "prurido": sintomasClass.prurido,
                "sexof": pacienteClass.sexof,
                "sexom": pacienteClass.sexom,
                "sudorese": sintomasClass.sudorese,
                "temperatura1": febreClass.temperatura1,
                "temperatura2": febreClass.temperatura2,
                "temperatura3": febreClass.temperatura3,
                "temperatura_nao": febreClass.temperaturanao,
                "tgo1": examesClass.tgo1,
                "tgo2": examesClass.tgo2,
                "tgo3": examesClass.tgo3,
                "tgp1": examesClass.tgp1,
                "tgp2": examesClass.tgp2,
                "tgp3": examesClass.tgp3,
                "tosse": sintomasClass.tosse,
                "vomito": sintomasClass.vomito,
                "zika_igg": sororologiaClass.zikaigg,
                "zika_igm": sororologiaClass.zikaigmint,
              }))
          .then((http.Response response) {
                if(response.statusCode == 201){
                  retorno = true;
                } else {
                  retorno = false;
                }
              }).catchError(((onError){       
                         
              }));
          
      pacienteClass.clear();
      febreClass.clear();
      sintomasClass.clear();
      examesClass.clear();
      sororologiaClass.clear();
      resultadoClass.clear();

      notifyListeners();
      
      return retorno;

    } catch (error) {
      return false;
    }
  }
}
