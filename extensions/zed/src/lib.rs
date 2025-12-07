use zed_extension_api as zed;

/// The main extension struct that holds state and implements the Extension trait.
struct TodoTreeExtension;

impl zed::Extension for TodoTreeExtension {
    /// Called when the extension is first loaded.
    fn new() -> Self
    where
        Self: Sized,
    {
        TodoTreeExtension
    }
}

// Register the extension with Zed
zed::register_extension!(TodoTreeExtension);
