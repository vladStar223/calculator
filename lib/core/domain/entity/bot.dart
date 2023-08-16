class Post2 {
  String? date;
  String? previousDate;
  String? previousURL;
  String? timestamp;
  Valute? valute;

  Post2(
      {this.date,
      this.previousDate,
      this.previousURL,
      this.timestamp,
      this.valute});

  Post2.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    previousDate = json['PreviousDate'];
    previousURL = json['PreviousURL'];
    timestamp = json['Timestamp'];
    valute =
        json['Valute'] != null ? new Valute.fromJson(json['Valute']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Date'] = this.date;
    data['PreviousDate'] = this.previousDate;
    data['PreviousURL'] = this.previousURL;
    data['Timestamp'] = this.timestamp;
    if (this.valute != null) {
      data['Valute'] = this.valute!.toJson();
    }
    return data;
  }
}

class Valute {
  AUD? aUD;
  AUD? aZN;
  AUD? gBP;
  AUD? aMD;
  AUD? bYN;
  AUD? bGN;
  AUD? bRL;
  AUD? hUF;
  AUD? vND;
  AUD? hKD;
  AUD? gEL;
  AUD? dKK;
  AUD? aED;
  AUD? uSD;
  AUD? eUR;
  AUD? eGP;
  AUD? iNR;
  AUD? iDR;
  AUD? kZT;
  AUD? cAD;
  AUD? qAR;
  AUD? kGS;
  AUD? cNY;
  AUD? mDL;
  AUD? nZD;
  AUD? nOK;
  AUD? pLN;
  AUD? rON;
  AUD? xDR;
  AUD? sGD;
  AUD? tJS;
  AUD? tHB;
  AUD? tRY;
  AUD? tMT;
  AUD? uZS;
  AUD? uAH;
  AUD? cZK;
  AUD? sEK;
  AUD? cHF;
  AUD? rSD;
  AUD? zAR;
  AUD? kRW;
  AUD? jPY;

  Valute(
      {this.aUD,
      this.aZN,
      this.gBP,
      this.aMD,
      this.bYN,
      this.bGN,
      this.bRL,
      this.hUF,
      this.vND,
      this.hKD,
      this.gEL,
      this.dKK,
      this.aED,
      this.uSD,
      this.eUR,
      this.eGP,
      this.iNR,
      this.iDR,
      this.kZT,
      this.cAD,
      this.qAR,
      this.kGS,
      this.cNY,
      this.mDL,
      this.nZD,
      this.nOK,
      this.pLN,
      this.rON,
      this.xDR,
      this.sGD,
      this.tJS,
      this.tHB,
      this.tRY,
      this.tMT,
      this.uZS,
      this.uAH,
      this.cZK,
      this.sEK,
      this.cHF,
      this.rSD,
      this.zAR,
      this.kRW,
      this.jPY});

  Valute.fromJson(Map<String, dynamic> json) {
    aUD = json['AUD'] != null ? new AUD.fromJson(json['AUD']) : null;
    aZN = json['AZN'] != null ? new AUD.fromJson(json['AZN']) : null;
    gBP = json['GBP'] != null ? new AUD.fromJson(json['GBP']) : null;
    aMD = json['AMD'] != null ? new AUD.fromJson(json['AMD']) : null;
    bYN = json['BYN'] != null ? new AUD.fromJson(json['BYN']) : null;
    bGN = json['BGN'] != null ? new AUD.fromJson(json['BGN']) : null;
    bRL = json['BRL'] != null ? new AUD.fromJson(json['BRL']) : null;
    hUF = json['HUF'] != null ? new AUD.fromJson(json['HUF']) : null;
    vND = json['VND'] != null ? new AUD.fromJson(json['VND']) : null;
    hKD = json['HKD'] != null ? new AUD.fromJson(json['HKD']) : null;
    gEL = json['GEL'] != null ? new AUD.fromJson(json['GEL']) : null;
    dKK = json['DKK'] != null ? new AUD.fromJson(json['DKK']) : null;
    aED = json['AED'] != null ? new AUD.fromJson(json['AED']) : null;
    uSD = json['USD'] != null ? new AUD.fromJson(json['USD']) : null;
    eUR = json['EUR'] != null ? new AUD.fromJson(json['EUR']) : null;
    eGP = json['EGP'] != null ? new AUD.fromJson(json['EGP']) : null;
    iNR = json['INR'] != null ? new AUD.fromJson(json['INR']) : null;
    iDR = json['IDR'] != null ? new AUD.fromJson(json['IDR']) : null;
    kZT = json['KZT'] != null ? new AUD.fromJson(json['KZT']) : null;
    cAD = json['CAD'] != null ? new AUD.fromJson(json['CAD']) : null;
    qAR = json['QAR'] != null ? new AUD.fromJson(json['QAR']) : null;
    kGS = json['KGS'] != null ? new AUD.fromJson(json['KGS']) : null;
    cNY = json['CNY'] != null ? new AUD.fromJson(json['CNY']) : null;
    mDL = json['MDL'] != null ? new AUD.fromJson(json['MDL']) : null;
    nZD = json['NZD'] != null ? new AUD.fromJson(json['NZD']) : null;
    nOK = json['NOK'] != null ? new AUD.fromJson(json['NOK']) : null;
    pLN = json['PLN'] != null ? new AUD.fromJson(json['PLN']) : null;
    rON = json['RON'] != null ? new AUD.fromJson(json['RON']) : null;
    xDR = json['XDR'] != null ? new AUD.fromJson(json['XDR']) : null;
    sGD = json['SGD'] != null ? new AUD.fromJson(json['SGD']) : null;
    tJS = json['TJS'] != null ? new AUD.fromJson(json['TJS']) : null;
    tHB = json['THB'] != null ? new AUD.fromJson(json['THB']) : null;
    tRY = json['TRY'] != null ? new AUD.fromJson(json['TRY']) : null;
    tMT = json['TMT'] != null ? new AUD.fromJson(json['TMT']) : null;
    uZS = json['UZS'] != null ? new AUD.fromJson(json['UZS']) : null;
    uAH = json['UAH'] != null ? new AUD.fromJson(json['UAH']) : null;
    cZK = json['CZK'] != null ? new AUD.fromJson(json['CZK']) : null;
    sEK = json['SEK'] != null ? new AUD.fromJson(json['SEK']) : null;
    cHF = json['CHF'] != null ? new AUD.fromJson(json['CHF']) : null;
    rSD = json['RSD'] != null ? new AUD.fromJson(json['RSD']) : null;
    zAR = json['ZAR'] != null ? new AUD.fromJson(json['ZAR']) : null;
    kRW = json['KRW'] != null ? new AUD.fromJson(json['KRW']) : null;
    jPY = json['JPY'] != null ? new AUD.fromJson(json['JPY']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aUD != null) {
      data['AUD'] = this.aUD!.toJson();
    }
    if (this.aZN != null) {
      data['AZN'] = this.aZN!.toJson();
    }
    if (this.gBP != null) {
      data['GBP'] = this.gBP!.toJson();
    }
    if (this.aMD != null) {
      data['AMD'] = this.aMD!.toJson();
    }
    if (this.bYN != null) {
      data['BYN'] = this.bYN!.toJson();
    }
    if (this.bGN != null) {
      data['BGN'] = this.bGN!.toJson();
    }
    if (this.bRL != null) {
      data['BRL'] = this.bRL!.toJson();
    }
    if (this.hUF != null) {
      data['HUF'] = this.hUF!.toJson();
    }
    if (this.vND != null) {
      data['VND'] = this.vND!.toJson();
    }
    if (this.hKD != null) {
      data['HKD'] = this.hKD!.toJson();
    }
    if (this.gEL != null) {
      data['GEL'] = this.gEL!.toJson();
    }
    if (this.dKK != null) {
      data['DKK'] = this.dKK!.toJson();
    }
    if (this.aED != null) {
      data['AED'] = this.aED!.toJson();
    }
    if (this.uSD != null) {
      data['USD'] = this.uSD!.toJson();
    }
    if (this.eUR != null) {
      data['EUR'] = this.eUR!.toJson();
    }
    if (this.eGP != null) {
      data['EGP'] = this.eGP!.toJson();
    }
    if (this.iNR != null) {
      data['INR'] = this.iNR!.toJson();
    }
    if (this.iDR != null) {
      data['IDR'] = this.iDR!.toJson();
    }
    if (this.kZT != null) {
      data['KZT'] = this.kZT!.toJson();
    }
    if (this.cAD != null) {
      data['CAD'] = this.cAD!.toJson();
    }
    if (this.qAR != null) {
      data['QAR'] = this.qAR!.toJson();
    }
    if (this.kGS != null) {
      data['KGS'] = this.kGS!.toJson();
    }
    if (this.cNY != null) {
      data['CNY'] = this.cNY!.toJson();
    }
    if (this.mDL != null) {
      data['MDL'] = this.mDL!.toJson();
    }
    if (this.nZD != null) {
      data['NZD'] = this.nZD!.toJson();
    }
    if (this.nOK != null) {
      data['NOK'] = this.nOK!.toJson();
    }
    if (this.pLN != null) {
      data['PLN'] = this.pLN!.toJson();
    }
    if (this.rON != null) {
      data['RON'] = this.rON!.toJson();
    }
    if (this.xDR != null) {
      data['XDR'] = this.xDR!.toJson();
    }
    if (this.sGD != null) {
      data['SGD'] = this.sGD!.toJson();
    }
    if (this.tJS != null) {
      data['TJS'] = this.tJS!.toJson();
    }
    if (this.tHB != null) {
      data['THB'] = this.tHB!.toJson();
    }
    if (this.tRY != null) {
      data['TRY'] = this.tRY!.toJson();
    }
    if (this.tMT != null) {
      data['TMT'] = this.tMT!.toJson();
    }
    if (this.uZS != null) {
      data['UZS'] = this.uZS!.toJson();
    }
    if (this.uAH != null) {
      data['UAH'] = this.uAH!.toJson();
    }
    if (this.cZK != null) {
      data['CZK'] = this.cZK!.toJson();
    }
    if (this.sEK != null) {
      data['SEK'] = this.sEK!.toJson();
    }
    if (this.cHF != null) {
      data['CHF'] = this.cHF!.toJson();
    }
    if (this.rSD != null) {
      data['RSD'] = this.rSD!.toJson();
    }
    if (this.zAR != null) {
      data['ZAR'] = this.zAR!.toJson();
    }
    if (this.kRW != null) {
      data['KRW'] = this.kRW!.toJson();
    }
    if (this.jPY != null) {
      data['JPY'] = this.jPY!.toJson();
    }
    return data;
  }
}

class AUD {
  String? iD;
  String? numCode;
  String? charCode;
  int? nominal;
  String? name;
  double? value;
  double? previous;

  AUD(
      {this.iD,
      this.numCode,
      this.charCode,
      this.nominal,
      this.name,
      this.value,
      this.previous});

  AUD.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    numCode = json['NumCode'];
    charCode = json['CharCode'];
    nominal = json['Nominal'];
    name = json['Name'];
    value = json['Value'];
    previous = json['Previous'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NumCode'] = this.numCode;
    data['CharCode'] = this.charCode;
    data['Nominal'] = this.nominal;
    data['Name'] = this.name;
    data['Value'] = this.value;
    data['Previous'] = this.previous;
    return data;
  }
}
