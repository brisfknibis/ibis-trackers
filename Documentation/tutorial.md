# How to make an Ibis Tracker (Stacked Smol Slimes: SlimeVR Compatible NRF Trackers)

> [!NOTE]
> Ibis trackers are SlimeVR Compatible full body tracking devices. They are a “Smol” slime, which means they use NRF instead of wifi to connect to your PC. NRF is like bluetooth, but with less lag. To learn more, please visit the SlimeVR Documentation on Smol Slimes.

Ibis Trackers are completely open source, which means you can build your own if you have the time. They are identical to the product we sell. This guide will show you the process we take for each tracker.

## Parts Required

To make your trackers, you’ll need access to a 3D printer. You can also buy the 3D printed parts from us. You’ll also need:

- [ ] a Stanley knife (or something very sharp)
- [ ]wire cutters
- [ ] wire strippers
- [ ]kapton tape
- [ ]a fine tip soldering iron specifically for electronics (best if it has temperature control)
- [ ]Solder with Flux
- [ ]other tools you think may make the process easier.

### Tracker Components

Each tracker is made up of only a few components:

- [ ]IMU Module (ICM-45686 or LSM6DSR)
- [ ]Supermini NRF52840 board OR Seed Studio equivalent
- [ ]120mAh LiPo battery
- [ ]Small, tactile push button
- [ ]Board pins (should have come with your Supermini)
- [ ]Wire for the antenna mod

## Component Preparation

To ensure each component fits correctly and works, there are a few steps we need to take before we assemble each tracker.

### IMU

The IMU will most likely come in rows of 5, and will have some little defects we want to shave off. Before then, if you still have them connected, you’ll need to add some kapton tape to the back of them. This prevents solder from seeping through onto the supermini board later.

![LSM6DSR IMU modules joined still from factory.](/Images/process/imus.jpg)

<img src="../Images/process/imus-back-kapton-tape.jpg" alt="Add kapton tape to the back of the IMU’s, aligning the tape so the pins can still touch the side of the Module." style="max-width: 400px;">

<img src="../Images/process/imus-back-kapton-tape-2.jpg">
<sub>Cut the excess tape off.</sub>

<img src="../Images/process/imu-kapton-back-split.jpg">

<img src="../Images/process/imus-split-front.jpg">

Once you’ve separated and taped your IMU’s, you’ll want to shave off the excess from the top and bottom. This isn’t a required step, but helps clean them up a bit.

<img src="../Images/process/imu-prep-unprepped.jpg">
<sub>Left: Shaved/cleaned up IMU vs right</sub>

#### Pre-Soldering The IMU

This step is as far as I can tell, unique to our process. I designed a “Soldering Cube” to help make this process less likely to destroy part of the SuperMini.

<img src="../Images/process/soldering-cube-imu.jpg">

(You can get a Soldering Cube here.)[https://github.com/brisfknibis/ibis-trackers/blob/main/3D%20Print%20Models/Solder%20Cube.stl]

Take your pins, and split them in half. You’ll need a row of six:


<img src="../Images/process/header-pins.jpg">

<img src="../Images/process/header-pins-split.jpg">

Push the plastic on the 6 pins down towards the bottom. I use a breadboard to push the pins down easily. I also do this on my soldering mat, so they don’t go ALL the way to the bottom. about 1mm at the end is right.

<img src="../Images/process/header-pins-6.jpg">

Place the pins in the soldering cube with the IMU.

Tile the cube on the side so we can more easily solder the pins.

<img src="../Images/process/soldering-cube-side-split.jpg">

I prefer to solder the left, then the right most pins, then the inner ones. Just a little bit of solder first, then if you want, you can strengthen the connections with a bit more solder.

<img src="../Images/process/soldering-cube-soldered-partial.jpg">

<img src="../Images/process/soldering-cube-soldered.jpg">

Once you’re happy with your joints, I recommend cleaning it with a bit of Isopropyl alchohol or PCB cleaner to remove any flux from the soldering process.

<img src="../Images/process/soldering-cube-soldered-clean.jpg">

Remove the IMU from the soldering cube, and snip the pins as close to the plastic as possible. You can attempt the just slide the plastic off, but this risks pulling the pins off of the IMU.

<img src="../Images/process/imu-soldered-cut.jpg">

Now onto the SuperMini!

### Supermini NRF52840

For the Supermini development board, there are 3 steps to prepare this one. It’s also your main tracker board, so mostly all steps will focus on this device.

#### Preparing the board

As with the IMU, you’ll want to shave off the excess from the sides of the unit. This is a requirement, otherwise it will not fit inside the case.

<img src="../Images/process/supermini-unprepped.jpg">
<sub>SuperMini Module with edges that need to be cleaned up.</sub>



<img src="../Images/process/supermini-prepped.jpg">
<sub>SuperMini NRF52840 with cleaned up edges. I used a Stanley knife for this one.</sub>



#### Firmware Flashing

Before we start soldering, it’s best to ensure that the SuperMini actually works. Connect it via USB to your PC, and open the Serial Terminal in NRF Connect for Desktop App. The first sign of a good board is that it should be blinking like the following:

(video of supermini idle)

Next, we need to short the RST button to the GND pin. Alternatively, you can be the ground, and just use something metal to short the RST pin like this:

(video of supermini DFU)

Once you’ve shorted the pin by tapping it 2 times (sometimes it takes 2-5 times) the red light will fade/flash solid. Then, you can copy the Bootloader .uf2 file to update the device BEFORE we flash it with the tracker firmware.

Download the Bootloader firmware here.

To copy the firmware, simply copy/paste the bootloader file above to the “NiceNano” drive that appears in your computer. It should look like a USB Drive.

(Download the Bootloader firmware here.)[https://github.com/SlimeVR/Adafruit_nRF52_Bootloader/releases/download/0.9.2-SlimeVR.7/update-slimenrf_promicro_bootloader-0.9.2-SlimeVR.7_nosd.uf2]

To copy the firmware, simply copy/paste the bootloader file above to the “NiceNano” drive that appears in your computer. It should look like a USB Drive.

(nicenano-pc.jpg)

Your SuperMini will reset, and the drive will disappear. If you see it in the Terminal, it most likely worked. It may appear like a “Feather” device in your Serial Terminal.

(serial-terminal-feather.png)
[Updated Bootloader. Non updated will look the same, or may have a different name.]

(serial-terminal-nicenano.png)
[A SuperMini in “DFU” mode, ready to be flashed with firmware]

Next, we need to flash the SlimeVR Tracker Firmware.

(Download the latest SlimeVR Tracker Firmware here)[https://github.com/Shine-Bright-Meow/SlimeNRF-Firmware-CI/releases/download/latest/SlimeNRF_Tracker_NoSleep_SPI_StackedSmol.uf2]

Short the RST pin again and copy the above file. Once done, the tracker should appear in the terminal like this:

(serial-terminal-slimenrf-tracker.png)

You can now connect to the tracker, and check everything so far is working:

(serial-terminal-connect-to-port.png)

(serial-terminal-info.png)

Looks like we’re working!

in the text input above the console, type “info”:

(serial-terminal-info-screen.png)
(Info screen for a tracker with no IMU attached.)

Great! That’s enough for us to continue to the next stage.

#### Pre Soldering the board 

There’s a few points I prefer to pre solder to make life easier for us later. Fill the following pins with solder. We’re adding solder to the battery connectors, button contacts, and the antenna for the antenna mod (right side only!)

(supermini-solder-points)
[Solder these points]

(supermini soldered points)
[Pre Soldered Supermini. 006, GND, B+, GND (right side) and the right side of the C3 antenna.]

Lastly, we want to pre solder the button.

(supermini-button-soldered)

#### Assembly

To assemble the IMU to the SuperMini, we need to connect the 6 pins from the left side of the IMU to the 6 pins on the left side of the SuperMini starting from the THIRD PIN, 011.

(imu position on supermini)

Flip the supermini upside down with the IMU in the correct pins, and snip off the excess pin length:

(back side supermini pins up)
[SuperMini with IMU pins that need to be snipped]

(back side pins snipped)
[Pins have now been snipped!]

Solder the pins from the back, and clean off any excess Flux from your solder job.

(supermini back soldered)
[Supermini with pins soldered from the back for the IMU.]

(supermini soldered top)

Usually, you should solder the pins so they are creating a good contact. This one is okay because the pins are connected correctly from the back. Notice on most of these, they don’t appear to have a good soldered connection on the top. I find this to be okay, and even optimal, because too much solder can short the connections with one another.

#### Check the connection

Before we do the final assembly steps, you’ll want to connect the tracker to your PC and check to see if the IMU is detected. If it’s detected, you should see info logs about motion and status switching. Type “info” into the text box, and you should see something like this:

(serial terminal info with imu)
[IMU will show as the model if it is detected.]

If your terminal is being spammed with yellow warnings, type “Reboot” and this should hopefully clear it. If no IMU is detected, you may need to go backk and check your soldering connections and try again.

In our case, everything is working as expected, so we can solder the last pin, “002”, on the right hand side. Note that the pins labels are UNDER the pins, not above. so you want to solder a pin in the hole between “002” and “029”.

(circled supermini)

(supermini with row of pins right side)

Using the remaining pins, place them in the holes. Solder pin “002”.

(supermini right side soldered pin plastic still there)

You should be able to then pull out the rest of the pins from the plastic, leaving just the one remaining.

(supermini soldered right side staning pin solo)

NOTE: If you are using ICM-45686 modules, you will ALSO need to solder the lower most pin on the IMU to pin 111 on the SuperMini. Leaving you with two soldered pins on the right side.

Fold the pin down so it’s touching the IMU, then snip the top.

(supermini right side bent pin)
[Bent pin towards IMU]

(snipped pin)
[Snipped pin]

Solder the connection, and be sure to clean off any flux.

(soldered right side)

#### Connecting the Wire Mod

SuperMinis have horrendous signal strength as they are. To get the most out of them, the best option is to cut a 31mm wire (3.1cm) and connect it to the RIGHT side of the C3 antenna.

(4 pics of wire mod)

#### Connecting The battery

A little trick I use, is I use the Antenna Mod to hold the SuperMini upright, so I can solder the battery Negative terminal from the back side and push it in.

(Battery Connection pics)

Once you have soldered the negative terminal, you can then do the final step and connect the positive terminal to B+.

### You just built a Stacked Smol Slime Tracker!

(Completed Tracker)

Put it in a case, and enjoy!







