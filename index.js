import { NativeModules } from "react-native";

// const { IosKeyboardLibrary } = NativeModules;

// export default IosKeyboardLibrary;

type ISnackBar = {
  /**
   * Shows a native Snackbar component.
   */
  show: (text: string) => void,
};

const IosKeyboardLibrary: ISnackBar = {
  show(text: string) {
    NativeModules.IosKeyboardLibrary.show(text);
  },
};

export default IosKeyboardLibrary;
