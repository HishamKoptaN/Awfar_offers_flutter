import 'package:aroodi_app/features/offers/presentation/views/widgets/aroodi_view_body_details.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/offers_response_model.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.offersResponseModel,
  });
  final OffersResponseModel offersResponseModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height - 240;
    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
          AroodiViewBodyDetails(
            offersResponseModel: offersResponseModel,
          ),
        ],
      ),
    );
  }
}
