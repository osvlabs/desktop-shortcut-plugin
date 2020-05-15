## Install
`ionic cordova plugin add @osvlabs/desktop-shortcut`

## Use
```
declare var DesktopShortcut: any;

DesktopShortcut.createDesktopWithIconImage([iconBase64, appTitle, schemeUrl], success: (res: any) => {}, error: (err: any) => {})
```