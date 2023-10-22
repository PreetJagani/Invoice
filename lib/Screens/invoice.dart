import 'package:flutter/material.dart';
import 'package:invoice_generator_new/Screens/util.dart';

class InvoiceTemplate extends StatelessWidget {
  final int total;
  final int tax = 5;
  late final double finalTotal;
  InvoiceTemplate({Key? key, required this.total}) : super(key: key) {
    finalTotal = total + (total * tax / 100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Invoice header
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invoice',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                      Text(
                        'Your Customer',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        textAlign: TextAlign.end,
                      ),
                      Text(
                        'Bravo Street S\njakarta, indonesia 2850',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.end,
                      ),
                    ]),
                  ],
                ),
                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    // Container(),
                    Expanded(
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'INVOICE      2020-123',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(thickness: 2, color: Colors.black),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Item',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Qty',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(thickness: 2, color: Colors.black),
                          for (var i = 1; i <= cartList.length; i++)
                            RowItem(
                                itemNumber: formatNumber(i),
                                itemName: cartList.elementAt(i - 1)["name"],
                                itemPrice: "${cartList.elementAt(i - 1)["price"]} \$"),
                          const SizedBox(
                            height: 70,
                          ),
                          const Divider(thickness: 2, color: Colors.black),
                          Row(
                            children: [
                              const SizedBox(
                                width: 90,
                              ),
                              Expanded(
                                child: Table(
                                  children: [
                                    TableRow(children: [
                                      const Text(
                                        'Sub-total',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        total.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      const Text(
                                        'Tax',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "$tax%",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      const Text(
                                        'Amount due',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        finalTotal.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ])
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          'Coffee Brand Inc.',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Bravo Street S\njakarta, indonesia,\n2850',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          children: [
                            Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Q4hcU4RO5X6uAYlqB6X-kit4tOIAmqYG7gJHZFg5gIyFcRbgGRN5fZt5JeGuBdgn52I&usqp=CAU",
                                height: 25),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'twitter',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png",
                                height: 25),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'instagram',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Facebook_icon_2013.svg/640px-Facebook_icon_2013.svg.png",
                                height: 25),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'facebook',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String itemNumber;
  final String itemName;
  final String itemPrice;

  const RowItem(
      {super.key,
      required this.itemNumber,
      required this.itemName,
      required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          itemNumber,
          style: const TextStyle(fontSize: 16),
        ),
        const Text(
          "01",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          itemName,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          itemPrice,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
