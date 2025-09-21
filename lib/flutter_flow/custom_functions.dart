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
import '/auth/custom_auth/auth_util.dart';

String? formatTransactionDate(String isoDate) {
  DateTime parsedDate = DateTime.parse(isoDate);
  return DateFormat('MMM d, yyyy • hh:mm a').format(parsedDate);
}

List<String> getDistributionCompanies(dynamic response) {
  if (response == null || response['data'] == null) {
    return [];
  }

  return response['data'].keys.map((key) {
    // Replace underscores with spaces, split into words, capitalize each word, then join back
    return key
        .replaceAll('_', ' ') // Replace underscores with spaces
        .split(' ') // Split into words
        .map((word) =>
            word[0].toUpperCase() + word.substring(1)) // Capitalize each word
        .join(' '); // Join words back with spaces
  }).toList();
}

String formatTransactionDateOnly(String isoDate) {
  DateTime parsedDate = DateTime.parse(isoDate);
  return DateFormat('MMM d, yyyy').format(parsedDate);
}

List<String> getProviderNames(dynamic jsonResponse) {
  if (jsonResponse == null || jsonResponse['data'] == null) {
    return [];
  }

  final data = jsonResponse['data'];

  // Ensure all keys are strings and formatted correctly
  return data.keys
      .map((key) => key.toString().replaceAll("_", " ").toUpperCase())
      .toList();
}

List<String> getMeterTypes(
  String provider,
  dynamic apiData,
) {
  if (provider.isEmpty || apiData == null || !apiData.containsKey(provider)) {
    return [];
  }

  List<dynamic> services = List.from(apiData[provider]);

  return services
      .map((e) => e is Map && e.containsKey('meterType')
          ? e['meterType'].toString()
          : '')
      .where((type) => type.isNotEmpty)
      .toList();
}

String? timestamp() {
  String timeAgo(String timestamp) {
    if (timestamp.isEmpty) {
      return "Just now";
    }

    DateTime past = DateTime.parse(timestamp).toLocal();
    DateTime now = DateTime.now();
    Duration difference = now.difference(past);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()} weeks ago';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else {
      return '${(difference.inDays / 365).floor()} years ago';
    }
  }
}

String formatNairaFull(String amountStr) {
  try {
    final number = double.parse(amountStr);
    final isNegative = number < 0;

    final formatter = NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦',
      decimalDigits: 2,
    );

    final formatted = formatter.format(number.abs());
    return isNegative ? '-$formatted' : formatted;
  } catch (e) {
    return amountStr; // fallback if parsing fails
  }
}

List<dynamic> sortTransactionsByDate(List<dynamic> transactions) {
  transactions.sort((a, b) {
    DateTime dateA = DateTime.parse(a['transaction_date']);
    DateTime dateB = DateTime.parse(b['transaction_date']);
    return dateB.compareTo(dateA); // Newest first
  });

  return transactions;
}

String formatDaysList(List<String> days) {
  return days.map((d) => d[0].toUpperCase() + d.substring(1)).join(', ');
}

String toUpper(String input) {
  return input.toUpperCase();
}

String calculatePercentInNaira(String amountString) {
  try {
    final amount = double.parse(amountString);
    final fee = amount * 0.015;
    final cappedFee = fee > 600 ? 600 : fee;
    return '₦${cappedFee.toStringAsFixed(2)}';
  } catch (e) {
    return '₦0.00';
  }
}

int getDropdownIndex(
  List<String> list,
  String value,
) {
  return list.indexOf(value);
}

String removeTokenPrefix(String input) {
  return input.replaceFirst('Token : ', '').trim();
}

String formatApiResponse(String input) {
  if (input.isEmpty) return '';

  return input
      .split('_') // Split by underscores
      .map((word) =>
          word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : '')
      .join(' ');
}

String? formatErrorMessages(List<String>? errors) {
  if (errors == null || errors.isEmpty) {
    return null;
  }

  if (errors.length == 1) {
    return errors[0];
  }

  List<String> formatted = [];
  for (String error in errors) {
    formatted.add('• $error');
  }

  return formatted.join('\n');
}

String formatCurrencyInput(String value) {
  // Remove all non-digit characters
  String cleaned = value.replaceAll(RegExp(r'[^\d]'), '');

  if (cleaned.isEmpty) return '';

  // Parse the cleaned number
  final number = int.parse(cleaned);

  // Format with comma separator and add ₦
  final formatted =
      '₦${number.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => '${match[1]},')}';

  return formatted;
}
