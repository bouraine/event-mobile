import 'package:flutter/material.dart';

final list = [
  Event(
    name: "New year party",
    type: "Corporate Access",
    description: "From 30 DEc 2022 to 31 Dec 2022",
    status: "Attending",
    address: "Paris, France",
  ),
  Event(
    name: "Test cecile",
    type: "Corporate Access",
    description: "From 23 jun 2022 to 25 jun 2022",
    status: "Pending",
    address: "New york, USA",
  ),
  Event(
    name: "Test cecile",
    type: "Corporate Access",
    description: "From 23 jun 2022 to 25 jun 2022",
    status: "Pending",
    address: "New york, USA",
  ),
  Event(
    name: "Test cecile",
    type: "Corporate Access",
    description: "From 23 jun 2022 to 25 jun 2022",
    status: "Pending",
    address: "New york, USA",
  ),
  Event(
    name: "Test cecile",
    type: "Corporate Access",
    description: "From 23 jun 2022 to 25 jun 2022",
    status: "Pending",
    address: "New york, USA",
  ),
  Event(
    name: "New year party",
    type: "Corporate Access",
    description: "From 30 DEc 2022 to 31 Dec 2022",
    status: "Attending",
    address: "Paris, France",
  ),
  Event(
    name: "New year party",
    type: "Corporate Access",
    description: "From 30 DEc 2022 to 31 Dec 2022",
    status: "Attending",
    address: "Paris, France",
  ),
];

class Event {
  final String name;
  final String? description;
  final String? address;
  final String type;
  final String? status;

  Event({
    required this.name,
    this.description,
    this.address,
    required this.type,
    this.status,
  });

  Color get color {
    if (status == "Attending") {
      return Colors.green;
    }
    if (status == "Pending") {
      return Colors.orange;
    }
    return Colors.black;
  }
}
