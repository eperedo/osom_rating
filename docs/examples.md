# Examples

### Default

if you do not pass any parameter it will generate 5 black stars

```dart
OsomRating();
```

![osom_default](https://user-images.githubusercontent.com/461124/51091070-5d817380-1753-11e9-9d0d-ca83e285802c.png)

### Quantity

Not enough stars? Do not worry!

```dart
OsomRating({ rating: 3, totalStars: 7 });
```

![osom_total](https://user-images.githubusercontent.com/461124/51091073-5d817380-1753-11e9-8222-5e4c128ec607.png)

### Size

Do you need a smaller star? Easy!

```dart
OsomRating({ rating: 3, totalStars: 7, sizeStar: 20.0 });
```

![osom_size](https://user-images.githubusercontent.com/461124/51091072-5d817380-1753-11e9-8276-97b3fc6dddc8.png)

### Colors

Blue and red are the new yellow!

```dart
OsomRating({
	rating: 3,
	colorStar = Colors.blue,
	colorEmptyStar = Colors.red
});
```

![osom_colors](https://user-images.githubusercontent.com/461124/51091069-5ce8dd00-1753-11e9-9539-98344593f691.png)

### Half Star

By default an star needs a decimal value of .5 to be half painted. You can change that using the minimunHalfValue parameter. Let's paint the half of an star with a rating of 3.2

```dart
OsomRating({
	rating: 3.2,
	minimunHalfValue: 2,
});
```

![osom_half](https://user-images.githubusercontent.com/461124/51091071-5d817380-1753-11e9-9bff-c0cb609e0975.png)

### Events

You can update the rating value either with the tap or the double tap event.

```dart
OsomRating(
	rating: 3.5,
	onTapped: (currentRating) {
		setState(() {
			this.ratingValue = currentRating;
		});
	},
);
```

```dart
OsomRating(
	rating: 3.5,
	onDoubleTapped: () {
		setState(() {
			this.ratingValue = 0;
		});
	},
);
```
