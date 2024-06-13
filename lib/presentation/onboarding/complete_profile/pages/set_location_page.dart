import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/application/core/services/utils.dart';
import 'package:nutrimate/application/redux/actions/location/search_location_action.dart';
import 'package:nutrimate/application/redux/actions/location/update_search_location_state_action.dart';
import 'package:nutrimate/application/redux/actions/update_complete_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/search_location_view_model.dart';
import 'package:nutrimate/domain/core/entities/location/location.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_search_item.dart';
import 'package:nutrimate/presentation/core/widgets/custom_select_field.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/global/widgets/platform_loader.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/widgets/search_item.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({super.key});

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  final TextEditingController searchController = TextEditingController();

  void searchLocation(BuildContext context) {
    if (searchController.text.isNotEmpty) {
      context.dispatch(
        SearchLocationAction(
          query: searchController.text,
        ),
      );
      searchController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          showBackButton: true,
          trailingWidget: Text(
            skipText,
            style: normalSize18Text(
              AppColors.primaryColor,
            ),
          ),
          onBackButtonPressed: () {
            Navigator.pushNamed(context, Routes.setBasicInfo);
          },
        ),
      ),
      body: SafeArea(
        child: StoreConnector<AppState, SearchLocationViewModel>(
          converter: (Store<AppState> store) =>
              SearchLocationViewModel.fromStore(store),
          onInit: (Store<AppState> store) async {
            await store.dispatch(
              UpdateSearchLocationStateAction(
                searchedLocations: <Location?>[],
              ),
            );
          },
          builder: (BuildContext context, SearchLocationViewModel vm) {
            if (vm.wait!.isWaiting(searchLocationFlag)) {
              return const SizedBox(
                height: 300,
                child: PlatformLoader(),
              );
            }
            final List<Location?>? locations = vm.searchedLocations;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    mediumVerticalSizedBox,
                    Text(
                      currentLocationQuestion,
                      style: boldSize20Text(
                        AppColors.blackColor,
                      ),
                    ),
                    Text(
                      specifyLocationText,
                      style: normalSize16Text(
                        AppColors.blackColor,
                      ),
                    ),
                    mediumVerticalSizedBox,
                    CustomTextField(
                      controller: searchController,
                      hintText: searchText,
                      borderColor: AppColors.primaryColor,
                      suffixIcon: const Icon(Icons.search),
                      onFieldSubmitted: (_) => searchLocation(context),
                      onSuffixIconPressed: () => searchLocation(context),
                    ),
                    if (locations!.isNotEmpty) ...<Widget>[
                      mediumVerticalSizedBox,
                      ListView.builder(
                        itemCount: locations.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return SearchItem(
                            text: locations[index]?.name ?? '',
                            onTap: () {
                              context.dispatch(
                                UpdateSearchLocationStateAction(
                                  selectedLocation: locations[index],
                                  searchedLocations: <Location?>[],
                                ),
                              );
                              setState(() {});
                            },
                          );
                        },
                      ),
                    ],
                    smallVerticalSizedBox,
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: <Widget>[
                        vm.selectedLocation != Location.initial()
                            ? CustomSearchItem(
                                text: vm.selectedLocation?.name ?? '',
                                onTap: () {
                                  // remove selected location
                                  context.dispatch(
                                    UpdateSearchLocationStateAction(
                                      selectedLocation: Location.initial(),
                                    ),
                                  );
                                  setState(() {});
                                },
                              )
                            : Container(),
                      ],
                    ),
                    smallVerticalSizedBox,
                    Text(
                      dietaryPreferencesQuestion,
                      style: normalSize16Text(
                        AppColors.blackColor,
                      ),
                    ),
                    smallVerticalSizedBox,
                    CustomSelectField(
                      items: dietaryPreferences,
                      hintText: vm.userProfile?.foodPreferences?.first ??
                          selectString,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsetsGeometry.lerp(
                          const EdgeInsets.all(10),
                          const EdgeInsets.all(10.5),
                          10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: AppColors.redColor,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                            color: AppColors.redColor,
                          ),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        context.dispatch(
                          UpdateCompleteProfileStateAction(
                            initialRoute: Routes.searchDiseases,
                            location: vm.selectedLocation?.name.toString(),
                            foodPreferences: <String>[newValue ?? ''],
                          ),
                        );
                      },
                    ),
                    size70VerticalSizedBox,
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            Routes.searchDiseases,
                          );
                        },
                        fillColor: AppColors.primaryColor,
                        customBorderRadius: 25,
                        customChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              continueText,
                              style: normalSize16Text(
                                AppColors.whiteColor,
                              ),
                            ),
                            const Icon(
                              Icons.chevron_right_sharp,
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
