git clone https://github.com/adamcmiel/multiphotos.git example

mkdir exampleapp
cd exampleapp && cordova create MultiPhotos com.$USER.multiphotos MultiPhotos
cp -R example/www MultiPhotos/www

cd MultiPhotos
cordova plugin add org.apache.cordova.console
cordova plugin add https://github.com/wymsee/cordova-imagePicker.git
cordova platform add ios
cordova run ios
