# cspell:disable
# export QT_DIR="/opt/homebrew/opt/qt@5/"
# export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig"
 # export CMAKE_PREFIX_PATH=/opt/homebrew/opt/qt@5/lib/cmake/Qt5/:${CMAKE_PREFIX_PATH}
# export CMAKE_PREFIX_PATH=/opt/homebrew/:${CMAKE_PREFIX_PATH}


cmake \
	-DCMAKE_INSTALL_PREFIX=${HOME}/software/Geant4/install/   ../geant4-v11.3.0  \
	-DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_STATIC_LIBS=OFF \
	-DGEANT4_INSTALL_DATA=ON \
	-DGEANT4_INSTALL_DATA_TIMEOUT=3000 \
  -DGEANT4_USE_QT_QT6=ON \
	-DGEANT4_USE_QT=ON \
	-DCMAKE_INSTALL_PREFIX=/Users/chenxu/software/Geant4/g4/install \
	-DGEANT4_ENABLE_TESTING=ON \
	-DGEANT4_USE_FREETYPE=ON \
	-DGEANT4_BUILD_TESTS=ON \
	-DGEANT4_BUILD_TLS_MODEL=global-dynamic \
	-DGEANT4_USE_GDML=ON \
	-DGEANT4_USE_VTK=OFF \
	-DGEANT4_USE_SMARTSTACK=ON \
	-DGEANT4_BUILD_BUILTIN_BACKTRACE=ON \
	-DGEANT4_BUILD_ENABLE_ASSERTIONS=ON \

#	-DCMAKE_PREFIX_PATH=/usr/local/opt/qt/ \
#	-DXERCESC_ROOT_DIR=${HOME}/software/install/ \
#	-DGEANT4_USE_OPENGL_X11=OFF \
#	-DGEANT4_USE_RAYTRACER_X11=OFF \

#	-G Xcode \

#	-DGEANT4_BUILD_EXAMPLES=OFF \
#	-DEXPAT_INCLUDE_DIR=/opt/homebrew/include/
#	-DEXPAT_LIBRARY=/opt/homebrew/lib/libexpat.




	
	
#make 
#make install
