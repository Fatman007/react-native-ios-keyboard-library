// TypeScript typings.

export interface SnackbarStatic {
  /**
   * Shows a native Snackbar component.
   */
  show: (text: string) => void;
}

declare const Snackbar: SnackbarStatic;
export default Snackbar;
