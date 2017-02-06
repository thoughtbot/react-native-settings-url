# react-native-settings-url

This is a simple React Native module that allows you to retrieve the App
Settings URL from within your React Native application.

## Install

To install, run:

```sh
npm install --save react-native-settings-url
```

Then, be sure to link the native modulue:

```sh
react-native link
```

## Usage

Inside your React Native app, you can now do something like this:

```js
import { Linking } from 'react-native';
import SettingsURL from 'react-native-settings-url';

SettingsURL.getURL()
  .then(url => {
    return Promise.all([
      url,
      Linking.canOpenURL(url),
    ]);
  })
  .then(([url, supported]) => {
    if (supported) {
      Linking.openURL(url);
    }
  });
```

## Questions or feedback

Please direct any questions or feedback to the author, Giles Van Gruisen, at
giles [at] thoughtbot [dot] com.

## License

react-native-settings-url is copyright © 2017 thoughtbot. It is free software,
and may be redistributed under the terms specified in the [`LICENSE`] file.

[`LICENSE`]: /LICENSE

## About thoughtbot

![thoughtbot](https://thoughtbot.com/logo.png)

react-native-settings-url is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community] or
[hire us][hire] to design, develop, and grow your product.

[community]: https://thoughtbot.com/community?utm_source=github
[hire]: https://thoughtbot.com/hire-us?utm_source=github

