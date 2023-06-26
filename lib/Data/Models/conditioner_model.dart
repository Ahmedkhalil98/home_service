class ConditionerModel {
  String? key;
  ConditionerData? conditionerData;
  ConditionerModel({this.key, this.conditionerData});
}


class ConditionerData {
  String? fANSPEED;
  String? mAXFANSPEED;
  String? mAXTEMP;
  String? mINFANSPEED;
  String? mINTEMP;
  String? mOOD;
  String? pOWER;
  String? sLEEPMOOD;
  String? sWING;
  String? tEMP;
  String? tIMER;

  ConditionerData(
      {this.fANSPEED,
      this.mAXFANSPEED,
      this.mAXTEMP,
      this.mINFANSPEED,
      this.mINTEMP,
      this.mOOD,
      this.pOWER,
      this.sLEEPMOOD,
      this.sWING,
      this.tEMP,
      this.tIMER});

  ConditionerData.fromJson(Map<dynamic, dynamic> json) {
    fANSPEED = json['FANSPEED'];
    mAXFANSPEED = json['MAXFANSPEED'];
    mAXTEMP = json['MAXTEMP'];
    mINFANSPEED = json['MINFANSPEED'];
    mINTEMP = json['MINTEMP'];
    mOOD = json['MOOD'];
    pOWER = json['POWER'];
    sLEEPMOOD = json['SLEEPMOOD'];
    sWING = json['SWING'];
    tEMP = json['TEMP'];
    tIMER = json['TIMER'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FANSPEED'] = this.fANSPEED;
    data['MAXFANSPEED'] = this.mAXFANSPEED;
    data['MAXTEMP'] = this.mAXTEMP;
    data['MINFANSPEED'] = this.mINFANSPEED;
    data['MINTEMP'] = this.mINTEMP;
    data['MOOD'] = this.mOOD;
    data['POWER'] = this.pOWER;
    data['SLEEPMOOD'] = this.sLEEPMOOD;
    data['SWING'] = this.sWING;
    data['TEMP'] = this.tEMP;
    data['TIMER'] = this.tIMER;
    return data;
  }
}
