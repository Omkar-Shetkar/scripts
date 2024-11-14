### Removing tab bar from firefox, useful when using vertical tab navigation with add-ons like Sidebery/Tree Style Tab etc.

- Go to Firefox profile folder.
Details: https://www.userchrome.org/how-create-userchrome-css.html

- Create `chrome` folder in profile folder.
- 
- Create `userChrome.css` file under `chrome` folder.

```css
/* Squash tab bar to 1px tall and hide the tabs */
#TabsToolbar {
  height: 1px !important;
  min-height: 1px !important;
  max-height: 1px !important;
} 
#TabsToolbar .tabbrowser-tab {
  display: none !important;
}
#tabbrowser-tabs { visibility: collapse !important; }
```


-----
In `about:config` of Firefox,
Set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`

Final screen will look like the following:

<img width="1672" alt="image" src="https://github.com/user-attachments/assets/9fefb218-7477-4d2e-bcdd-95515bc57451">