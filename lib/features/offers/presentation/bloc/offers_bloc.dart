import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/get_offers_use_case.dart';
import 'offers_event.dart';
import 'offers_state.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final GetOffersUseCase getOffersUseCase;
  OffersBloc({
    required this.getOffersUseCase,
  }) : super(
          const OffersState.initialState(),
        ) {
    on<OffersEvent>(
      (event, emit) async {
        await event.when(
          getOffers: (governorateId) async {
            const OffersState.loading();
            final result = await getOffersUseCase.getOffers(
              governorateId: governorateId,
            );
            await result.when(
              success: (offersResponseModel) async {
                emit(
                  OffersState.offersLoaded(
                    offersResponseModel: offersResponseModel,
                  ),
                );
              },
              failure: (error) {
                emit(
                  OffersState.failure(
                    error: error.error!,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
