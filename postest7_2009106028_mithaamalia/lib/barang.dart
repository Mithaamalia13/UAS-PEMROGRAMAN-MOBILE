import 'package:flutter/material.dart';

class barang extends StatelessWidget {
  final int Harga;
  final String nama;
  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  barang(this.nama, this.Harga, {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: lebar - 32,
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.white]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    nama,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Text(
                "Harga Rp.$Harga,-",
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Color(0xffa85cf9),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.delete_forever,
                      color: Colors.white,
                    )),
                    onPressed: () {
                      if (onDelete != null) onDelete!();
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
