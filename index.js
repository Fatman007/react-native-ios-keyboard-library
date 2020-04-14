import { NativeModules } from "react-native";

type IosKeyboardLibraryStatic = {
  /**
   * Shows a native Snackbar component.
   */
  show: (text: string) => void,
};

const IosKeyboardLibrary: IosKeyboardLibraryStatic = {
  show(text: string) {
    NativeModules.IosKeyboardLibrary.show(text);
  },
};

export default IosKeyboardLibrary;
