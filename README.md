# About
> So this is a stand-alone repo to add some prebuilt packages along Shady launcher and also to remove some useless packages which come prebuilt with some roms.

## Banner
<p align="center">
<img src="https://github.com/dhimanparas20/buildbot/blob/main/mst.jpg" />

## cloning or calling  
So basically there are 2 ways of how you can use this repo for the same purpose  .
> 1: Clone this repo to the vendor of the rom source, but you have to do this everytime you build a different rom.
```sh
cd vendor
```
```sh
git clone https://github.com/dhimanparas20/vendor_packages.git packages
```

> 2: Add this line to the "vendorsetup.sh" of your Device Tree so that it gets automatically syned everytime you build a rom 
```sh
git clone https://github.com/dhimanparas20/vendor_packages.git vendor/packages
```
## Calling the packages
open the device.mk of your device tree and add this line
```sh
# calling prebuilt packages
$(call inherit-product, vendor/packages/main.mk)
```

## Notes
Feel free to clone,copy,edit this repo and personalize according to your needs. (if you know how to :-/ )

Dont be a gey by copying or cloning this repo and calling it yours by not giving proper authorships and credits.

Im not responsible for any of your data losses , do it at your own will .


