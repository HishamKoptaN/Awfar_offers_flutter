import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/get_offers_use_case.dart';
import 'offers_event.dart';
import 'offers_state.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  final GetOffersUseCase getOffersUseCase;
  OffersBloc(
    this.getOffersUseCase,
  ) : super(const OffersState.initialState()) {
    on<OffersEvent>(
      (event, emit) async {
        await event.when(
          getOffersEvent: () async {
            final result = await getOffersUseCase.getOffers(
              governorateId: '1',
            );
            await result.when(
              success: (offersResponseModel) async {
                emit(
                  OffersState.offersLoaded(
                    offersResponseModel: offersResponseModel,
                  ),
                );
              },
              failure: (error) async {
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
