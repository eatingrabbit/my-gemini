import 'package:flutter/material.dart';

class CarrotPage extends StatelessWidget {
  const CarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [CarrotCardView()],
          )),
    );
  }
}

class CarrotCardView extends StatefulWidget {
  const CarrotCardView({super.key});

  @override
  State<CarrotCardView> createState() => _CarrotCardViewState();
}

class _CarrotCardViewState extends State<CarrotCardView> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            padding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            elevation: 0,
            surfaceTintColor: Colors.white,
            overlayColor: Colors.grey),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xffeeeeee), width: 1))),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                // child: Image.asset(
                //   'assets/images/icecream.jpg',
                //   width: 100,
                //   height: 100,
                //   fit: BoxFit.cover,
                // ),
                child: Image.network(
                  "https://blog.thermoworks.com/wp-content/uploads/2021/06/Ice_Cream_Compressed-43.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: const Text(
                            '고디바 더블 초콜릿 소프트 아이스크림 1+1',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                            maxLines: 2,
                          ),
                        ),
                        Icon(Icons.more_vert_outlined, color: Colors.grey,size: 30,)
                      ],
                    ),
                    const Text(
                      '마포구 아현동  16분전',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                              color: Color(0xff444444),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Text(
                            '거래 완료',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          '9,000원',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}