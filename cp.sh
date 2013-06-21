echo '=============================================='
echo 'build glib'
echo '=============================================='
cd glib-2.35.8/
ndk-build -j8
cd ..
cp ./glib-2.35.8/obj/local/armeabi/*.a ./libs
cd gssdp
echo '=============================================='
echo 'build gssdp'
echo '=============================================='
ndk-build clean
ndk-build -j8
cd ..
echo '=============================================='
echo 'copies file'
echo '=============================================='
cp ./gssdp/obj/local/armeabi/*.a ./libs
#echo '=============================================='
#echo 'build test'
#echo '=============================================='
#cd gssdp/tests
#ndk-build clean
#ndk-build -j8
#cd ../..
#echo '=============================================='
#echo 'copies file'
#echo '=============================================='
#cp ./gssdp/tests/libs/armeabi/* ./test-gssdp/assets/exe
#android.bat update project --subprojects --target android-10 --name test-gssdp --path test-gssdp
#ant debug -buildfile test-gssdp
