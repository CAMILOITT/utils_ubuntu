#!/bin/bash

directory_app="/usr/lib/x86_64-linux-gnu"
package="libffmpeg.so"
directory_opera="$directory_app/opera"
directory_opera_developer="$directory_app/opera-developer"
file_libffmpeg="/home/camiloitt/Descargas/0.100.1-linux-ia32/$package"

sudo rm $directory_opera/$package
sudo rm $directory_opera_developer/$package

sudo cp $file_libffmpeg $directory_opera
sudo cp $file_libffmpeg $directory_opera_developer

