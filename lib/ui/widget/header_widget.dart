import 'package:flutter/material.dart';
import 'package:testforwrok/utils/constants.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: AppColors.mainBlack,
      width: double.maxFinite,
      height: 450,
      child: Column(
        children: [
          const SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(backgroundImage: AssetImage(AppImages.flag))),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'USD Account',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: AppColors.headerGrey, fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 65,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: AppColors.headerGrey))),
                child: const Text(
                  'Hide',
                  style: TextStyle(color: AppColors.mainWhite),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.attach_money,
                color: AppColors.mainWhite,
              ),
              Text(
                '180,970.83',
                style: TextStyle(color: AppColors.mainWhite, fontSize: 24),
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Transactions History',
              textAlign: TextAlign.left,
              style: TextStyle(color: AppColors.mainWhite, fontSize: 20),
            ),
          ),
          HeaderDropdownWidget(
            dropdownItem: "USD Dollar",
          ),
          Row(
            children: [
              Expanded(child: HeaderDropdownWidget(dropdownItem: 'All')),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 19),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: AppColors.headerGrey))),
                  child: const Icon(
                    Icons.calendar_today_outlined,
                    color: AppColors.mainWhite,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class HeaderDropdownWidget extends StatelessWidget {
  String dropdownItem;
  HeaderDropdownWidget({Key? key, required this.dropdownItem})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColors.headerGrey))),
          borderRadius: BorderRadius.circular(10),
          isExpanded: true,
          value: dropdownItem,
          items: [
            DropdownMenuItem(
              child: Text(
                dropdownItem,
                style: TextStyle(color: AppColors.mainWhite),
              ),
              value: dropdownItem,
            )
          ],
          onChanged: null),
    );
  }
}
