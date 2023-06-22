import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListAnimal extends StatelessWidget {
  const ListAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cá thuỷ sinh'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              // TextField search
              SearchWidget(),
              SizedBox(height: 15),
              // danh sach ca
              ListAnimalWidget()
            ],
          ),
        ));
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Nhập tên để tìm kiếm',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

class ListAnimalWidget extends StatelessWidget {
  const ListAnimalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/bg_tep.jpeg',
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ca ten VN $index'),
                      Text('Ca ten EN $index'),
                      Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset('assets/icons/ruler.svg'),
                              const Text('3-5 cm')
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              SvgPicture.asset('assets/icons/temper.svg'),
                              const Text('20-25')
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              SvgPicture.asset('assets/icons/drop.svg'),
                              const Text('4.5-6')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ));
        },
      ),
    );
  }
}
