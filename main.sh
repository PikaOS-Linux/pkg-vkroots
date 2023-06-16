# Clone Upstream
git clone https://github.com/Joshua-Ashton/vkroots
cp -rvf ./debian ./vkroots
cd ./vkroots

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
