import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrimate/application/redux/actions/diseases/search_diseases_action.dart';
import 'package:nutrimate/application/redux/actions/diseases/update_search_diseases_action.dart';
import 'package:nutrimate/application/redux/actions/update_complete_profile_state_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/search_diseases_view_model.dart';
import 'package:nutrimate/domain/core/entities/diseases/disease.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_search_item.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/global/widgets/platform_loader.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/widgets/search_item.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SearchDiseasesPage extends StatefulWidget {
  const SearchDiseasesPage({super.key});

  @override
  State<SearchDiseasesPage> createState() => _SearchDiseasesPageState();
}

class _SearchDiseasesPageState extends State<SearchDiseasesPage> {
  final TextEditingController searchController = TextEditingController();

  void searchDiseases(BuildContext context) {
    context.dispatch(
      SearchDiseasesAction(query: searchController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
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
            Navigator.pushNamed(context, Routes.setMealTimes);
          },
        ),
      ),
      body: SafeArea(
        child: StoreConnector<AppState, SearchDiseasesViewModel>(
          converter: (Store<AppState> store) =>
              SearchDiseasesViewModel.fromStore(store),
          onInit: (Store<AppState> store) async {
            await store.dispatch(
              UpdateSearchDiseasesStateAction(
                searchedDiseases: <Disease>[],
              ),
            );
          },
          builder: (BuildContext context, SearchDiseasesViewModel vm) {
            if (vm.wait!.isWaiting(searchDiseasesFlag)) {
              return const SizedBox(height: 300, child: PlatformLoader());
            }
            final List<Disease?>? diseases = vm.searchedDiseases;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    mediumVerticalSizedBox,
                    Text(
                      haveIllnessQuestionText,
                      style: boldSize16Text(
                        AppColors.blackColor,
                      ),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      haveIllnessQuestionDesc,
                      style: normalSize15Text(
                        AppColors.blackColor,
                      ),
                    ),
                    mediumVerticalSizedBox,
                    CustomTextField(
                      controller: searchController,
                      hintText: searchString,
                      borderColor: AppColors.primaryColor,
                      focusedBorderColor: AppColors.primaryColor,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.deny(
                          RegExp(r'\s'),
                        ),
                      ],
                      suffixIcon: const Icon(Icons.search),
                      onSuffixIconPressed: () => searchDiseases(context),
                      onChanged: (String value) {},
                      onFieldSubmitted: (_) => searchDiseases(context),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    mediumVerticalSizedBox,
                    if (diseases!.isNotEmpty) ...<Widget>[
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: diseases.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: SearchItem(
                              text: diseases[index]?.name ?? '',
                              onTap: () {
                                final List<Disease?> currentlySelectedDiseases =
                                    List<Disease>.from(
                                  vm.selectedDiseases ?? <Disease>[],
                                );
                                if (!currentlySelectedDiseases
                                    .contains(diseases[index])) {
                                  currentlySelectedDiseases
                                      .add(diseases[index]);
                                }
                                context.dispatch(
                                  UpdateSearchDiseasesStateAction(
                                    selectedDiseases: currentlySelectedDiseases,
                                    searchedDiseases: <Disease?>[],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                    mediumVerticalSizedBox,
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: <Widget>[
                        ...vm.selectedDiseases!.map(
                          (Disease? disease) {
                            return CustomSearchItem(
                              text: disease?.name ?? '',
                              onTap: () {
                                // remove disease from selected diseases
                                final List<Disease?> modifiableList =
                                    List<Disease?>.from(
                                  vm.selectedDiseases ?? <Disease>[],
                                );
                                modifiableList.remove(disease);
                                context.dispatch(
                                  UpdateSearchDiseasesStateAction(
                                    selectedDiseases: modifiableList,
                                  ),
                                );
                                setState(() {});
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    size120VerticalSizedBox,
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: CustomButton(
                        onPressed: () {
                          // update selected diseases in store
                          context.dispatch(
                            UpdateCompleteProfileStateAction(
                              initialRoute: Routes.completeProfileSuccess,
                              illnesses: vm.selectedDiseases!
                                  .map((Disease? disease) => disease?.name)
                                  .where((String? name) => name != null)
                                  .cast<String>()
                                  .toList(),
                            ),
                          );
                          Navigator.pushNamed(
                            context,
                            Routes.completeProfileSuccess,
                          );
                        },
                        fillColor: AppColors.primaryColor,
                        customBorderRadius: 25,
                        customChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              continueText,
                              style: normalSize18Text(
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
