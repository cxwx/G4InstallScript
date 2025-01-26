export PKG_CONFIG_PATH="/opt/homebrew/opt/expat/lib/pkgconfig"
export CMAKE_PREFIX_PATH=/opt/homebrew/Cellar/qt@5/5.15.10_1:${CMAKE_PREFIX_PATH}
cmake \
	-DCMAKE_INSTALL_PREFIX=${HOME}/software/Geant4/install/ ../geant4-v11.1.2/ \
	-DCMAKE_BUILD_TYPE=Release \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_STATIC_LIBS=OFF \
	-DGEANT4_INSTALL_DATA=ON \
	-DGEANT4_INSTALL_DATA_TIMEOUT=3000 \
	-DGEANT4_USE_QT=ON \
	-DGEANT4_USE_GDML=OFF \

