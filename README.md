# openlight-camera

This is an extraction, decompilation, and recompilation of the light L16 camera light_camera.apk 

## Setup & Build

1) Just run `./recomp.sh build` this will build the docker image to repro the build and then run the build itself.

## Generate keystore (If necessary)

1) `keytool -genkey -v -keystore {path_to_my-release-key.keystore} -alias {alias} -keyalg RSA -keysize 2048 -validity 10000 -storepass {storepass} -keypass {keypass}`
2) You will find a .keystore file in the specified path

## Sign APK

1) Install apksigner `apt install apksigner`
2) Sign apk `apksigner sign --ks {path_to_my-release-key.keystore} --ks-pass pass:{keypass} --in {path_to_apk.apk}`

## Install APK to device

1) `adb install {path_to_apk.apk}`

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)