import { NativeModules } from "react-native";

type IosKeyboardLibrary = {
  /**
   * Shows a native Snackbar component.
   */
  show: (text: string) => void,
};

const IosKeyboardLibrary: IosKeyboardLibrary = {
  show(text: string) {
    NativeModules.IosKeyboardLibrary.show(text);
  },
};

export default IosKeyboardLibrary;
