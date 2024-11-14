### Removing tab bar from firefox, useful when using vertical tab navigation with add-ons like Sidebery/Tree Style Tab etc.

- Go to Firefox profile folder.
Details: https://www.userchrome.org/how-create-userchrome-css.html

- Create `chrome` folder in profile folder.
  
- Create `userChrome.css` file under `chrome` folder.

Refer: https://github.com/Timvde/UserChrome-Tweaks/blob/master/tabs/hide-tabs-windows.css

```css

.tabbrowser-tab {
  visibility: collapse !important;
}

.titlebar-button {
  height: 40px !important;
}

#nav-bar {
  margin-top: -42px;
  margin-right: 140px;
  box-shadow: none !important;
}

[uidensity="compact"]:root .titlebar-button {
  height: 32px !important;
}

[uidensity="compact"]:root #nav-bar {
  margin-top: -32px;
}

#titlebar-spacer {
  background-color: var(--chrome-secondary-background-color);
}

#titlebar-buttonbox-container {
  background-color: var(--chrome-secondary-background-color);
}

.titlebar-color {
  background-color: var(--toolbar-bgcolor);
}
```


-----
In `about:config` of Firefox,
Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`

Final screen will look like the following:

<img width="1672" alt="image" src="https://github.com/user-attachments/assets/9fefb218-7477-4d2e-bcdd-95515bc57451">
