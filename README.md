![](https://dcbadge.limes.pink/api/shield/1163089077386616872)

# 🪶 Ibis Trackers

DIY nRF52840-based, full-body tracking (FBT) trackers, built on [Smol Slimes](https://docs.slimevr.dev/smol-slimes/index.html). Originally created by [Lyall](https://github.com/LyallUlric/Stacked-SmolSlime).

---

## 🧠 How It Works

Unlike Wi-Fi SlimeVR trackers, **Smol Slimes (nRF trackers)** connect via a **USB receiver**, offering:
- ⚡ Low power consumption
- 🔋 ~30+ hrs battery life with 120 mAh battery
- 🖥️ PC connection required for the SlimeVR server

> [!NOTE]
> You must connect your receiver to a PC running the SlimeVR server.  
> Works with Standalone Quest VRChat via OSC bridge.  
> 👉 Read the [SlimeVR documentation](https://docs.slimevr.dev/) if you’re new to this.

---

## 🧰 Components

| Component                        | Notes                                      | Link |
|-----------------------------------|--------------------------------------------|------|
| ProMicro NRF52840                | Main MCU board                             | [AliExpress](https://www.aliexpress.com/item/1005007738886550.html) |
| 2-pin Tactile Button (2mm)       | 2.5mm button requires lid mod              | [AliExpress](https://www.aliexpress.com/item/1005001302607169.html) |
| 401230 3.7V 110 mAh LiPo Battery | Any similar-sized battery works            | [AliExpress](https://www.aliexpress.com/item/1005006327425971.html) |
| SlimeVR ICM-45686 Mumo Module    | LSM6DSR is a cheaper alternative           | [SlimeVR Shop](https://shop.slimevr.dev/products/slimevr-mumo-breakout-module-v1-icm-45686-qmc6309) |
| Holyiot nRF52840+PA Receiver     | Receiver board                             | [AliExpress](https://www.aliexpress.com/item/1005004673179004.html) |
| 30mm Ibis Tracker Straps         | Any 30mm strap works                       | [VyroVR Store](https://vyrovr.com/product/ibis-tracker-straps/) |

> [!WARNING]
> Buy at least 20% extra MCUs and IMUs.  
> Example: building 8 trackers → buy 10 boards.  
> Trust me, you’ll break some.

---

## 🛠️ Assembly & Setup

- 📄 Follow the official Smol Slimes assembly guide: [docs.slimevr.dev/smol-slimes](https://docs.slimevr.dev/smol-slimes/index.html)  
- 🖱️ Flash firmware, solder components, and pair with your receiver.  
- ⚙️ Configure your setup in the [SlimeVR Server](https://docs.slimevr.dev/).

---

## 🙌 Credits

- 🧠 **[ManicQuinn](https://github.com/ManicQuinn/SlimeVR-Gremlin)** – inspiration and internal sizing  
- 🧱 **[Sorakage033](https://github.com/Sorakage033/SlimeVR-CheeseCake)** – case design inspiration  
- 🐶 **[Lexie](https://github.com/sctanf)** for their hard work on the firmware
- 🐺 **[Lyall](https://github.com/LyallUlric/Stacked-SmolSlime) for being the GOAT for Stacked Smol Slimes
- 🟣 Everyone in the community who tested, broke, fixed, and bought these trackers.
---

## 📜 License

<a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">
  <img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" width="30" height="30">
  <img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" width="30" height="30">
  <img src="https://mirrors.creativecommons.org/presskit/icons/nc.svg" width="30" height="30">
  <img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" width="30" height="30">
</a>

Ibis Trackers © 2025 by [Bris Ibis](https://github.com/brisfknibis) is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

For **commercial licensing**, contact [vyrovr@gmail.com](mailto:vyrovr@gmail.com).

---

## 🐛 Contributing

PRs and improvements are welcome. If you break something, fix it. If you improve something, share it.  
If you solder upside-down… well, that’s on you.

---

✅ **Quick links:**  
- [Assembly Guide](https://docs.slimevr.dev/smol-slimes/index.html)  
- [SlimeVR Docs](https://docs.slimevr.dev/)  
- [Buy Straps](https://vyrovr.com/product/ibis-tracker-straps/)  
- [Report Issues](https://github.com/brisfknibis/ibis-trackers/issues)
