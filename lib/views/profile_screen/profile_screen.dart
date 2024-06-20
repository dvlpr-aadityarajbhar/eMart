import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/views/profile_screen/components/details_card.dart';
import 'package:emart/widgets/page_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(
                  () {},
                ),
              ),
              //users details section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    5.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          "customer@example.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),
              // 10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4,
                  ),
                  detailsCard(
                    count: "32",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4,
                  ),
                  detailsCard(
                    count: "675",
                    title: "your orders",
                    width: context.screenWidth / 3.4,
                  ),
                ],
              ),

              //buttons section
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                  );
                },
              )
                  .box
                  .white
                  .rounded
                  .shadowSm
                  .margin(const EdgeInsets.all(16))
                  .padding(const EdgeInsets.symmetric(horizontal: 16))
                  .make()
                  .box
                  .color(redColor)
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
