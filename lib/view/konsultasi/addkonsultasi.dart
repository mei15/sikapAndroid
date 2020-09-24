import 'package:flutter/material.dart';
import 'package:SikapApp/widgets/custom_date_time_picker.dart';
import 'package:SikapApp/widgets/custom_modal_action_button.dart';
import 'package:SikapApp/widgets/custom_textfield.dart';

class AddKonsultasi extends StatefulWidget {
  @override
  _AddKonsultasiState createState() => _AddKonsultasiState();
}

class _AddKonsultasiState extends State<AddKonsultasi> {
  String _selectedDate = 'Pick date';
  String _selectedTime = 'Pick time';

  Future _pickDate() async {
    DateTime datepick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime.now().add(Duration(days: -365)),
        lastDate: new DateTime.now().add(Duration(days: 365)));

    if (datepick != null)
      setState(() {
        _selectedDate = datepick.toString();
      });
  }

  Future _pickTime() async {
    TimeOfDay timepick = await showTimePicker(
        context: context, initialTime: new TimeOfDay.now());
    if (timepick != null) {
      setState(() {
        _selectedTime = timepick.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
              child: Text(
            "Add Konsultasi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          SizedBox(
            height: 24,
          ),
          CustomTextField(labelText: 'Masukkan Judul Kerja Praktik'),
          SizedBox(
            height: 12,
          ),
          CustomTextField(labelText: 'Masukkan Nama Dosen'),
          SizedBox(
            height: 12,
          ),
          CustomTextField(labelText: 'Masukkan Keterangan Revisi'),
          SizedBox(
            height: 12,
          ),
          CustomDateTimePicker(
            icon: Icons.date_range,
            onPressed: _pickDate,
            value: _selectedDate,
          ),
          CustomDateTimePicker(
            icon: Icons.access_time,
            onPressed: _pickTime,
            value: _selectedTime,
          ),
          SizedBox(
            height: 24,
          ),
          CustomModalActionButton(
            onCLose: () {
              Navigator.of(context).pop();
            },
            onSave: () {},
          )
        ],
      ),
    );
  }
}
