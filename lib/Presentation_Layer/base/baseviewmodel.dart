abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs {
    // shared variables and functoins that will be used through any view model.

}

abstract class BaseViewModelInputs{
    void start(); // will be called while intit. of view model
  void dispose(); // will be called when viewmodel dies.
}

abstract class BaseViewModelOutputs{

}
