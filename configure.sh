./autogen.sh --prefix=/usr/lib/x86_64-linux-gnu/ --disable-radeon --disable-amdgpu --disable-nouveau --disable-vmwgfx --disable-install-test-programs

sudo ln -s /usr/lib/x86_64-linux-gnu/include/libdrm2 /usr/include/
sudo mkdir /usr/local/include/libdrm2/
sudo cp include/drm2/drm.h /usr/local/include/libdrm2/ 
sudo cp include/drm2/drm_mode.h /usr/local/include/libdrm2/
sudo cp xf86drm2.h /usr/local/include/
sudo cp xf86drm2Mode.h /usr/local/include/
