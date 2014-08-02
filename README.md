#Example of using multi photo select plugin with Cordova.

To use

```bash
git clone https://github.com/adamcmiel/multiphotos.git example
```

Create your app

```bash
mkdir exampleapp
cd exampleapp && cordova create MultiPhotos com.<yourname>.multiphotos MultiPhotos
```

Copy my example use code to your app

```bash
cp -R example/www MultiPhotos/www 
```

Install dependencies and run project

```bash
cd MultiPhotos
cordova plugin add org.apache.cordova.console
cordova plugin add https://github.com/wymsee/cordova-imagePicker.git
cordova platform add ios
cordova run ios
```

Photo grab API
Uses [wymsee color picker](https://github.com/wymsee/cordova-imagePicker)

```javascript
function success(results) {
    console.log('GREAT SUCCESS! Images successfully retrieved!');
    for (var i = 0; i < results.length; i++) {
        console.log('Image URI: ');
        console.log(results[i]);
    }
}

function fail(error) {
    console.log('There was an error:');
    console.error(error);
}

var options = {
    maximumImagesCount: 10,
    width: 800
};

window.imagePicker.getPictures(success, fail, options);
```
