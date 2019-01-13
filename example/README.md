# osom_rating

the most fun way to get a rating component for your flutter apps

![osom](https://user-images.githubusercontent.com/461124/51090657-3758d500-174d-11e9-9d49-1798960dc2b0.gif)

### Installing

Add the osom_rating to your pubspec.yaml file

```yaml
dependencies:
  osom_rating: 0.0.3
```

then install the package using the get command

```bash
flutter packages get
```

### Usage

import it inside your app

```dart
import 'package:osom_rating/osom_rating.dart';
```

then create a new instance of the component

```dart
// by default it will generate five stars
OsomRating();
```

### Options

| Parameter          | Default       | Description                                                                                                     |
| ------------------ | ------------- | --------------------------------------------------------------------------------------------------------------- |
| `rating`           | 0             | the rating value                                                                                                |
| `totalStars`       | 5             | the quantity of stars to generate                                                                               |
| `colorStar`        | Colors.yellow | the color of the full star                                                                                      |
| `colorEmptyStar`   | Colors.black  | the color of the empty star                                                                                     |
| `sizeStar`         | 60            | the size of the stars                                                                                           |
| `minimunHalfValue` | 5             | the decimal part to considered an star as a half value. 5 means any x.5 value will be considered as a half star |

### Events

| Event            | Param               |
| ---------------- | ------------------- |
| `onTapped`       | current index value |
| `onDoubleTapped` | none                |
