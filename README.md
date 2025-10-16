# Ibis Trackers

DIY nRF52840 based SlimeVR-compatible trackers based on [Smol Slimes](https://docs.slimevr.dev/smol-slimes/index.html). These docs are a work in progress, and are aimed at those who purchased my trackers. If you don't care for DIY, you can skip to the [setting up your Ibis Trackers](#setting-up-your-ibis-trackers) section.

## License
<img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;" width="30" height="30"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;" width="30" height="30"><img src="https://mirrors.creativecommons.org/presskit/icons/nc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;" width="30" height="30"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;" width="30" height="30"><br>
<a href="https://github.com/brisfknibis/ibis-trackers">Ibis Trackers</a> © 2025 by <a href="https://github.com/brisfknibis">Bris Ibis</a> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY-NC-SA 4.0</a>
For commercial licensing, contact <vyrovr@gmail.com>.

> [!CAUTION]
> My trackers are currently being sold on AliExpress. While my design is available as open source, it is not licensed for commercial use. Do not buy them. If you want SlimeVR, buy Official Slimes, from an approved 3rd party seller from the SlimeVR Discord, or build your own.
## How it works
Traditionally, SlimeVR trackers connect to the SlimeVR Server via Wi-Fi. Smol Slimes, also known as nRF Trackers, connect via a USB receiver. They are very power-efficient so they can last for up to 30 hours with a tiny battery. For reference, an official SlimeVR tracker has a 1,200 mAh battery, while these have a 115 mAh battery.. Official Slimes last around 15 hours, while these last around 30 hours, with a battery less than 1/10th the size.

> [!NOTE]
> Smol Slimes require a computer to connect the receiver to and to run the SlimeVR server Software. They are compatible with Standalone Quest VRChat, however, you must have your computer connected to your game via OSC. Be sure to read the [SlimeVR documentation](https://docs.slimevr.dev/) thoroughly.

## DIY - Getting Started

You're welcome to make your own version, otherwise, you can purchase pre-made Ibis Trackers through my [Ko-Fi store here](https://ko-fi.com/s/f180a946a8).

> [!CAUTION]
> Smol Slimes are still experimental and they are changing **daily**. Please be patient when setting them up. Take your time, and understand that you will most likely struggle at first. If you need help, join the [SlimeVR Discord](https://discord.gg/2vcdMAtBWe), or [Ibis Trackers Discord](https://discord.gg/NPgz6GH8).

### Components

| Component | Variation | Link |
| --- | --- | --- |
| ProMicro NRF52840 | | [AliExpress](https://www.aliexpress.com/item/1005007738886550.html) |
| 2 pin Tactile Button (2mm height) | 2.5mm Button (requires Modifying Lid) | [AliExpress](https://www.aliexpress.com/item/1005001302607169.html) |
| 401230 3.7V 110 mAh Battery | Any similar sized LiPo battery | [AliExpress](https://www.aliexpress.com/item/1005006327425971.html) |
| SlimeVR ICM-45686 Mumo Module | [LSM6DSR (cheaper)](https://moffshop.deyta.de/products/lsm6dsr) | [SlimeVR Mumo Breakout Module V1](https://shop.slimevr.dev/products/slimevr-mumo-breakout-module-v1-icm-45686-qmc6309) |
| Holyiot nRF52840+PA Receiver | ProMicro NRF52840 | (AliExpress)[https://www.aliexpress.com/item/1005004673179004.html] |
| 30mm Ibis Tracker Straps with Silicone | Any 30mm Straps, really... | [Ibis Tracker Straps](https://vyrovr.com/product/ibis-tracker-straps/) |

> [!WARNING]
> Buy at least 20% more ProMicro boards and IMU modules than you plan to use. If you're making 8 trackers, buy at least 10 etc. You'll probably break some.

[Next, follow the docs here.](https://docs.slimevr.dev/smol-slimes/index.html)

Download and install [SlimeVR Server](https://slimevr.dev/#download).

##### Credits

Special thanks to ManicQuinn for their hard work on the [Gremlin Tracker](https://github.com/ManicQuinn/SlimeVR-Gremlin). My case design uses a lot of their sizing for 3D printing on the inside. The style of Ibis Trackers is based on a philosophy that they should be strong, reliable, simple, and easy to make. The exterior is heavily inspired by [Cheesecakes](https://github.com/Sorakage033/SlimeVR-CheeseCake) by Sorakage033. Thanks to everyone who purchased my trackers, and everyone who helped me along the way!
