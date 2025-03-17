# Ibis Trackers

DIY NRF52840 based SlimeVR compatible trackers based on [Smol Slimes](https://docs.shinebright.dev/diy/smol-slime.html). These docs are a work in progress, and are aimed at those who purchased my trackers. If you don't care for DIY, you can skip to the "setting up your Ibis Trackers" section.

## How it works
Traditionally, SlimeVR trackers connect to the SlimeVR Server via Wifi. Smol Slimes, also known as nRF trackers connect via a USB receiver. They are very power-efficient so they can last for up to 30 hours with a tiny battery. For reference, an official SlimeVR tracker has a 1200 mAh battery, while these have a 115 mAh battery. Official Slimes last around 15 hours, while these last around 30 hours, with a battery less than 1/10th the size.

> [!NOTE]
> Smol Slimes require a computer to connect the receiver to and to run the SlimeVR server Software. They are compatible with Standalone Quest VRChat, however, you must have your computer connected to your game via OSC. Be sure to read the [SlimeVR documentation](https://docs.slimevr.dev/) thouroughly.

## DIY - Getting Started

You're welcome to make your own version, otherwise you can purchase pre-made Ibis Trackers through my [Ko-Fi store here](https://ko-fi.com/s/f180a946a8).

> [!CAUTION]
> Smol Slimes are still experimental and they are changing **daily**. Please be patient when setting them up. Take your time, and understand that you will most likely struggle at first. If you need help, join the [SlimeVR Discord](https://discord.gg/2vcdMAtBWe), or [Ibis Trackers Discord](https://discord.gg/djbpK6MW26).

### Components

| Component | Variation | Link |
| --- | --- | --- |
| Nice!Nano Supermini | Alternative | [AliExpress](https://www.aliexpress.com/item/1005007738886550.htm) |
| 2 pin Tactile Button (2mm height) | 2.5mm Button (requires Modifying Lid) | [AliExpress](https://www.aliexpress.com/item/1005001302607169.html) |
| 401230 3.7V 110 mAh Battery | Any similar sized LiPo battery | [AliExpress](https://www.aliexpress.com/item/1005006016397268.html) |
| KOUNOLAB Module ICM-45686 + Mag | LSM6DSR (cheaper) | [Meia's IMU's](https://store.kouno.xyz/) |
| eByte E104-BT5040U Receiver | Supermini | [Alibaba.com](https://www.alibaba.com/product-detail/Ebyte-E104-BT5040U-nRF52840-BLE4-2_1600122746292.html) |
| 30mm Straps with Silicone | Any 30mm Straps, really... | [Ibis Tracker Straps](https://ko-fi.com/s/a23793f04d) |

> [!WARNING]
> Buy at least 20% more components than you anticipate you will make. If you're making 8 trackers, buy at least 10 SuperMini's etc. You'll probably break some.

[From here, your best bet is to follow the docs here.](https://docs.shinebright.dev/diy/smol-slime.html)

## Setting Up Your Ibis Trackers

> [!NOTE]
> The following section is aimed specifically at users who purchased Ibis Trackers. If you're building your own, go follow the docs [here](https://docs.shinebright.dev/diy/smol-slime.html).

Download and install [SlimeVR Server](https://slimevr.dev/#download).

Your trackers should come paired already, but if they aren't you'll need to download some additional software. [nRF Connect for Desktop](https://www.nordicsemi.com/Products/Development-tools/nRF-Connect-for-Desktop) and Serial Terminal (install it via nRF Connect for Desktop). 

Plug in your Receiver, and turn on your trackers one at a time. To turn on your tracker, push the button **once**. Multiple presses have different functions.

#### Button functions

- 1 Press: Reset
- 2 Presses: Calibration
- 3 Presses: Pairing Mode (if you do this, you may disconnect your tracker and will need to re-pair it using nRF Connect Terminal)
- 4 Presses: DFU Bootloader (for flashing new firmware)
- Hold: Deep Sleep mode

After turning your tracker on, it should appear in the SlimeVR server. From here, you can follow the SlimeVR docs and get started!

### Pairing a tracker

If you need to re-pair your tracker(s), follow the docs [here](https://docs.shinebright.dev/diy/smol-slime.html#pairing-mode).

> [!TIP]
> Enjoy! ;)
