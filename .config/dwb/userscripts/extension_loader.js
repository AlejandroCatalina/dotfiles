//!javascript
//<adblock_subscriptions___SCRIPT
extensions.load("adblock_subscriptions", {
//<adblock_subscriptions___CONFIG

// Shortcut to subscribe to a filterlist
scSubscribe : null, 
// Command to subscribe to a filterlist
cmdSubscribe : "adblock_subscribe", 

// Shortcut to unsubscribe from a filterlist
scUnsubscribe : null, 

// Command to unsubscribe from a filterlist
cmdUnsubscribe : "adblock_unsubscribe",

// Shortcut to update subscriptions and reload filter rules
// Note that dwb will also update all subscriptions on startup
scUpdate : null, 

// Command to update subscriptions and reload filter rules
// Note that dwb will also update all subscriptions on startup
cmdUpdate : "adblock_update", 

// Path to the filterlist directory, will be created if it doesn't exist. 
filterListDir : data.configDir + "/adblock_lists"
//>adblock_subscriptions___CONFIG
});
//>adblock_subscriptions___SCRIPT
//<unique_tabs___SCRIPT
extensions.load("unique_tabs", {
//<unique_tabs___CONFIG
// Shortcut that removes duplicate tabs
shortcutRemoveDuplicates : null,

// Command that removes duplicate tabs
commandRemoveDuplicates : "ut_remove_duplicates",

// Autofocus a tab if an url is already opened, if the url would be loaded in a
// new tab the new tab is closed. 
// Setting this to true makes commandRemoveDuplicates and
// shortcutRemoveDuplicates obsolete because there will be no duplicates. 
autoFocus : true,

// Shortcut for toggling autofocus
shortcutToggleAutoFocus : null, 

// Command for toggling autofocus
commandToggleAutoFocus : "ut_toggle_autofocus", 

//>unique_tabs___CONFIG
});
//>unique_tabs___SCRIPT
//<googledocs___SCRIPT
extensions.load("googledocs", {
//<googledocs___CONFIG
  // An array of filename extensions, matching urls will be
  // loaded  with Google Docs, the extensions are case
  // insensitive. The default value is 
  // [ "doc", "docx", "xls", "xlsx", "odt", "ods" ]
  // Possible filetypes are
  // "DOC", "DOCX", "XLS", "XLSX", "PPT", "PPTX", "ODT", "ODS",
  // "PDF", "PAGES", "AI", "PSD", "TIFF", "DXF", "SVG", "EPS",
  // "PS", "TTF", "OTF", "XPS", "ZIP" and "RAR".
  filetypes: [ "doc", "docx", "xls", "xlsx", "odt", "ods" ]
//>googledocs___CONFIG
});
//>googledocs___SCRIPT
//<userscripts___SCRIPT
extensions.load("userscripts", {
//<userscripts___CONFIG
  // paths to userscripts, this extension will also load all scripts in 
  // $XDG_CONFIG_HOME/dwb/greasemonkey, it will also load all scripts in
  // $XDG_CONFIG_HOME/dwb/scripts but this is deprecated and will be
  // disabled in future versions.
  scripts : []

//>userscripts___CONFIG

});
//>userscripts___SCRIPT
