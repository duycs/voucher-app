import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

DateTime? stringToDateTime(String? dateString) {
  // parse string to datetime
  DateTime? dateTime;
  try {
    dateTime = DateTime.parse(dateString ?? "");
  } catch (e) {
    dateTime = null;
  }

  return dateTime;
}

int stringToInt(String stringNumber) {
  // string to int
  return int.parse(stringNumber);
}

String? customFilterVoucher(
  String? nameVoucher,
  String? dateStart,
  String? dateEnd,
  String? priceStart,
  String? priceEnd,
  String? codeVoucher,
  String? statusVoucher,
  String? agentId,
) {
  final buffer = StringBuffer('{"_and": [');

  if (nameVoucher != null && nameVoucher.isNotEmpty) {
    buffer.write(
        '{"voucher_template_id": {"title": {"_icontains": "$nameVoucher"}}}');
  }

  if (codeVoucher != null && codeVoucher.isNotEmpty) {
    if (nameVoucher != null && nameVoucher.isNotEmpty) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"code": {"_icontains": "$codeVoucher"}}');
    buffer.write(
        '{"voucher_template_id": {"code": {"_icontains": "$codeVoucher"}}}');
  }

  if (statusVoucher != null && statusVoucher.isNotEmpty) {
    if ((codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"status": {"_icontains": "$statusVoucher"}}');
    buffer.write(
        '{"voucher_template_id": {"status": {"_icontains": "$statusVoucher"}}}');
  }

  if (dateStart != null && dateStart.isNotEmpty) {
    if ((statusVoucher != null && statusVoucher.isNotEmpty) ||
        (codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"date_end": {"_gte": "$dateStart"}}');
    buffer
        .write('{"voucher_template_id": {"date_end": {"_gte": "$dateStart"}}}');
  }

  if (dateEnd != null && dateEnd.isNotEmpty) {
    if ((dateStart != null && dateStart.isNotEmpty) ||
        (statusVoucher != null && statusVoucher.isNotEmpty) ||
        (codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"date_end": {"_lte": "$dateEnd"}}');
    buffer.write('{"voucher_template_id": {"date_end": {"_lte": "$dateEnd"}}}');
  }

  if (priceStart != null && priceStart.isNotEmpty) {
    if ((dateEnd != null && dateEnd.isNotEmpty) ||
        (dateStart != null && dateStart.isNotEmpty) ||
        (statusVoucher != null && statusVoucher.isNotEmpty) ||
        (codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"date_end": {"_lte": "$dateEnd"}}');
    buffer.write('{"voucher_template_id": {"price": {"_gte": "$priceStart"}}}');
  }

  if (priceEnd != null && priceEnd.isNotEmpty) {
    if ((priceStart != null && priceStart.isNotEmpty) ||
        (dateEnd != null && dateEnd.isNotEmpty) ||
        (dateStart != null && dateStart.isNotEmpty) ||
        (statusVoucher != null && statusVoucher.isNotEmpty) ||
        (codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"date_end": {"_lte": "$dateEnd"}}');
    buffer.write('{"voucher_template_id": {"price": {"_lte": "$priceEnd"}}}');
  }

  if (agentId != null && agentId.isNotEmpty) {
    if ((priceEnd != null && priceEnd.isNotEmpty) ||
        (priceStart != null && priceStart.isNotEmpty) ||
        (dateEnd != null && dateEnd.isNotEmpty) ||
        (dateStart != null && dateStart.isNotEmpty) ||
        (statusVoucher != null && statusVoucher.isNotEmpty) ||
        (codeVoucher != null && codeVoucher.isNotEmpty) ||
        (nameVoucher != null && nameVoucher.isNotEmpty)) {
      buffer.write(buffer.isEmpty ? '' : ',');
    }
    // buffer.write('{"date_end": {"_lte": "$dateEnd"}}');
    buffer.write('{"agent_id": {"id": {"_eq": "$agentId"}}}');
  }

  buffer.write(']}');
  buffer.toString();

  return buffer.toString();
}

String jsonToString(dynamic json) {
  // convert json to string
  return jsonEncode(json);
}

double stringToDouble(String stringNumber) {
  // convert string to number
  return double.parse(stringNumber);
}

List<dynamic> convertJSONToList(dynamic jsonInput) {
  List<dynamic> result = [];

  if (jsonInput != null) {
    for (var jsonObject in jsonInput) {
      result.add(jsonObject);
    }
  }

  return result;
}
