// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    required this.message,
    required this.resultados,
  });

  String message;
  List<Resultado>? resultados;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        message: json["message"] == null ? null : json["message"],
        resultados: json["resultados"] == null
            ? null
            : List<Resultado>.from(
                json["resultados"].map((x) => Resultado.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "resultados": resultados == null
            ? null
            : List<dynamic>.from(resultados!.map((x) => x.toJson())),
      };
}

class Resultado {
  Resultado({
    required this.id,
    required this.currentCirculationSupply,
    required this.price,
    required this.holders,
    required this.walletOne,
    required this.walletTwo,
    required this.walletThree,
    required this.transactions,
    required this.v,
    required this.totalRewardsDollar,
    required this.initialSupply,
  });

  String id;
  String currentCirculationSupply;
  String price;
  String holders;
  String walletOne;
  String walletTwo;
  String walletThree;
  List<Transaction>? transactions;
  int v;
  String totalRewardsDollar;
  String initialSupply;

  factory Resultado.fromJson(Map<String, dynamic> json) => Resultado(
        id: json["_id"],
        currentCirculationSupply: json["current_circulation_supply"] == null
            ? null
            : json["current_circulation_supply"],
        price: json["price"] == null ? null : json["price"],
        holders: json["holders"] == null ? null : json["holders"],
        walletOne: json["wallet_one"] == null ? null : json["wallet_one"],
        walletTwo: json["wallet_two"] == null ? null : json["wallet_two"],
        walletThree: json["wallet_three"] == null ? null : json["wallet_three"],
        transactions: json["transactions"] == null
            ? null
            : List<Transaction>.from(
                json["transactions"].map((x) => Transaction.fromJson(x))),
        v: json["__v"] == null ? null : json["__v"],
        totalRewardsDollar: json["total_rewards_dollar"] == null
            ? null
            : json["total_rewards_dollar"],
        initialSupply:
            json["initial_supply"] == null ? null : json["initial_supply"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "current_circulation_supply":
            currentCirculationSupply == null ? null : currentCirculationSupply,
        "price": price == null ? null : price,
        "holders": holders == null ? null : holders,
        "wallet_one": walletOne == null ? null : walletOne,
        "wallet_two": walletTwo == null ? null : walletTwo,
        "wallet_three": walletThree == null ? null : walletThree,
        "transactions": transactions == null
            ? null
            : List<dynamic>.from(transactions!.map((x) => x.toJson())),
        "__v": v == null ? null : v,
        "total_rewards_dollar":
            totalRewardsDollar == null ? null : totalRewardsDollar,
        "initial_supply": initialSupply == null ? null : initialSupply,
      };
}

class Transaction {
  Transaction({
    required this.blockNumber,
    required this.timeStamp,
    required this.hash,
    required this.nonce,
    required this.blockHash,
    required this.from,
    required this.contractAddress,
    required this.to,
    required this.value,
    required this.tokenName,
    required this.tokenSymbol,
    required this.tokenDecimal,
    required this.transactionIndex,
    required this.gas,
    required this.gasPrice,
    required this.gasUsed,
    required this.cumulativeGasUsed,
    required this.input,
    required this.confirmations,
  });

  String blockNumber;
  String timeStamp;
  String hash;
  String nonce;
  String blockHash;
  String from;
  ContractAddress? contractAddress;
  To? to;
  String value;
  TokenName? tokenName;
  TokenSymbol? tokenSymbol;
  String tokenDecimal;
  String transactionIndex;
  String gas;
  String gasPrice;
  String gasUsed;
  String cumulativeGasUsed;
  Input? input;
  String confirmations;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        blockNumber: json["blockNumber"] == null ? null : json["blockNumber"],
        timeStamp: json["timeStamp"] == null ? null : json["timeStamp"],
        hash: json["hash"] == null ? null : json["hash"],
        nonce: json["nonce"] == null ? null : json["nonce"],
        blockHash: json["blockHash"] == null ? null : json["blockHash"],
        from: json["from"] == null ? null : json["from"],
        contractAddress: json["contractAddress"] == null
            ? null
            : contractAddressValues.map[json["contractAddress"]],
        to: json["to"] == null ? null : toValues.map[json["to"]],
        value: json["value"] == null ? null : json["value"],
        tokenName: json["tokenName"] == null
            ? null
            : tokenNameValues.map[json["tokenName"]],
        tokenSymbol: json["tokenSymbol"] == null
            ? null
            : tokenSymbolValues.map[json["tokenSymbol"]],
        tokenDecimal:
            json["tokenDecimal"] == null ? null : json["tokenDecimal"],
        transactionIndex:
            json["transactionIndex"] == null ? null : json["transactionIndex"],
        gas: json["gas"] == null ? null : json["gas"],
        gasPrice: json["gasPrice"] == null ? null : json["gasPrice"],
        gasUsed: json["gasUsed"] == null ? null : json["gasUsed"],
        cumulativeGasUsed: json["cumulativeGasUsed"] == null
            ? null
            : json["cumulativeGasUsed"],
        input: json["input"] == null ? null : inputValues.map[json["input"]],
        confirmations:
            json["confirmations"] == null ? null : json["confirmations"],
      );

  Map<String, dynamic> toJson() => {
        "blockNumber": blockNumber == null ? null : blockNumber,
        "timeStamp": timeStamp == null ? null : timeStamp,
        "hash": hash == null ? null : hash,
        "nonce": nonce == null ? null : nonce,
        "blockHash": blockHash == null ? null : blockHash,
        "from": from == null ? null : from,
        "contractAddress": contractAddress == null
            ? null
            : contractAddressValues.reverse[contractAddress],
        "to": to == null ? null : toValues.reverse[to],
        "value": value == null ? null : value,
        "tokenName":
            tokenName == null ? null : tokenNameValues.reverse[tokenName],
        "tokenSymbol":
            tokenSymbol == null ? null : tokenSymbolValues.reverse[tokenSymbol],
        "tokenDecimal": tokenDecimal == null ? null : tokenDecimal,
        "transactionIndex": transactionIndex == null ? null : transactionIndex,
        "gas": gas == null ? null : gas,
        "gasPrice": gasPrice == null ? null : gasPrice,
        "gasUsed": gasUsed == null ? null : gasUsed,
        "cumulativeGasUsed":
            cumulativeGasUsed == null ? null : cumulativeGasUsed,
        "input": input == null ? null : inputValues.reverse[input],
        "confirmations": confirmations == null ? null : confirmations,
      };
}

enum ContractAddress {
  THE_0_X777_E2_AE845272_A2_F540_EBF6_A3_D03734_A5_A8_F618_E
}

final contractAddressValues = EnumValues({
  "0x777e2ae845272a2f540ebf6a3d03734a5a8f618e":
      ContractAddress.THE_0_X777_E2_AE845272_A2_F540_EBF6_A3_D03734_A5_A8_F618_E
});

enum Input { DEPRECATED }

final inputValues = EnumValues({"deprecated": Input.DEPRECATED});

enum To { THE_0_X95_AD61_B0_A150_D79219_DCF64_E1_E6_CC01_F0_B64_C4_CE }

final toValues = EnumValues({
  "0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce":
      To.THE_0_X95_AD61_B0_A150_D79219_DCF64_E1_E6_CC01_F0_B64_C4_CE
});

enum TokenName { RYOSHIS_VISION }

final tokenNameValues =
    EnumValues({"Ryoshis Vision": TokenName.RYOSHIS_VISION});

enum TokenSymbol { RYOSHI }

final tokenSymbolValues = EnumValues({"RYOSHI": TokenSymbol.RYOSHI});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
