# *************************************************************************** #
#                                                                             #
#                                                        :::      ::::::::    #
#    sh1_install.sh                                    :+:      :+:    :+:    #
#                                                    +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>          +#+  +:+       +#+         #
#                                                +#+#+#+#+#+   +#+            #
#    Created: 2012/01/27 00:07:34 by chenxu           #+#    #+#              #
#    Updated: 2025/05/02 11:48:22 by chenxu          ###   ########.fr        #
#                                                                             #
# *************************************************************************** #

# shellcheck disable=SC2034,SC3010
# DONE: datadir
# DONE: openinventer, coin3d need cmake3.5
# TODO: coin3d -> cmake4

if [[ "$(uname)" == "Darwin" ]]; then
  CMAKE_PARAMS="
  -DGEANT4_USE_SYSTEM_ZLIB=ON \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_STATIC_LIBS=OFF \
	-DGEANT4_INSTALL_DATA=ON \
	-DGEANT4_INSTALL_DATA_TIMEOUT=3000 \
  -DGEANT4_USE_QT_QT6=ON \
	-DGEANT4_USE_QT=ON \
	-DCMAKE_INSTALL_PREFIX=${HOME}/software/Geant4/g4/install \
	-DGEANT4_ENABLE_TESTING=ON \
  -DGEANT4_USE_INVENTOR=OFF \
  -DGEANT4_USE_INVENTOR_QT=OFF \
  -DGEANT4_USE_OPENGL_X11=ON \
  -DGEANT4_USE_RAYTRACER_X11=ON \
  -DGEANT4_USE_SYSTEM_CLHEP=ON \
  -DGEANT4_USE_VTK=OFF \
  -DGEANT4_USE_XM=ON \
	-DGEANT4_INSTALL_DATADIR=${HOME}/software/Geant4/g4/data \
  -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
  -DGEANT4_USE_INVENTOR_QT=ON \
  "
else
  CMAKE_PARAMS="
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_STATIC_LIBS=ON \
	-DGEANT4_INSTALL_DATA=ON \
	-DGEANT4_INSTALL_DATA_TIMEOUT=3000 \
  -DGEANT4_USE_QT_QT6=OFF \
	-DGEANT4_USE_QT=OFF \
	-DCMAKE_INSTALL_PREFIX=${HOME}/software/Geant4/install \
	-DGEANT4_ENABLE_TESTING=OFF \
  -GNinja \
  "
fi

ANEWPATH=$(xcrun --sdk macosx --show-sdk-path)

cmake \
  ../geant4-v11.3.2 \
  -DCMAKE_OSX_SYSROOT=${ANEWPATH} \
  -DCMAKE_BUILD_TYPE=Release \
  -DGEANT4_INSTALL_DATA=ON \
  -DGEANT4_INSTALL_DATA_TIMEOUT=3000 \
  -DGEANT4_USE_QT_QT6=ON \
  -DGEANT4_USE_QT=ON \
  -DCMAKE_INSTALL_PREFIX=/Users/chenxu/software/Geant4/g4/install \
  -DGEANT4_USE_FREETYPE=ON \
  -DGEANT4_BUILD_TLS_MODEL=global-dynamic \
  -DGEANT4_USE_GDML=ON \
  -DGEANT4_USE_VTK=OFF \
  -DGEANT4_USE_SMARTSTACK=ON \
  -DGEANT4_BUILD_BUILTIN_BACKTRACE=OFF \
  -DGEANT4_BUILD_ENABLE_ASSERTIONS=ON \
  ${CMAKE_PARAMS}

#  --- for backup
#	-DCMAKE_PREFIX_PATH=/usr/local/opt/qt/ \
#	-DXERCESC_ROOT_DIR=${HOME}/software/install/ \

#	-G Xcode \

#	-DEXPAT_INCLUDE_DIR=/opt/homebrew/include/
#	-DEXPAT_LIBRARY=/opt/homebrew/lib/libexpat.

# export QT_DIR="/opt/homebrew/opt/qt@5/"
# export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig"
# export CMAKE_PREFIX_PATH=/opt/homebrew/opt/qt@5/lib/cmake/Qt5/:${CMAKE_PREFIX_PATH}
# export CMAKE_PREFIX_PATH=/opt/homebrew/:${CMAKE_PREFIX_PATH}

#make
#make install
