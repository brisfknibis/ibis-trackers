# 🕹️ Using Smol Slimes with Shadow PC

Smol Slimes use **NRF** chips instead of ESP. They don't use WiFi — they rely on a dedicated **NRF USB receiver** that must be plugged in and forwarded to your **Shadow PC**. To make this work remotely, you’ll use:

- 🛜 [**Tailscale**](https://tailscale.com) – for a secure private network between your local PC and Shadow
- 🔌 [**VirtualHere**](https://www.virtualhere.com/) – to forward USB devices over that network
- 🎮 [**SlimeVR**](https://docs.slimevr.dev/) – runs on Shadow and tracks your IbisTrackers once the receiver is active

## Requirements

- Smol Slimes + NRF USB Receiver (whatever came with your Smol Slimes, or which you made yourself)
- Shadow PC Account, with SteamVR (and games of your choice)
- Tailscale (installed on **both PCs**)  
- VirtualHere USB Server (on your **local PC**)  
- VirtualHere USB Client (on your **Shadow PC**)
- SlimeVR Server (installed on **Shadow PC**)

## ⚙️ Setup Guide

### 1. 🔌 Plug in the NRF Receiver

Connect your **NRF receiver** to a USB port on your **local PC**.

### 2. Install and Set Up Tailscale

- Download Tailscale: [https://tailscale.com/download](https://tailscale.com/download)
- Install it on **both your local PC and Shadow PC**
- Log into the **same Tailscale account** on both devices
- On your **local PC**, open Tailscale and copy your **Tailscale IP address**  

> [!TIP]
> **Tip:** You can also get the IP from the [Tailscale admin panel](https://login.tailscale.com/admin/machines) if needed.

### 3. Launch VirtualHere USB Server on Local PC
- Download the USB Server: [https://www.virtualhere.com/usb_server_software](https://www.virtualhere.com/usb_server_software)
- Run the app — no install required
- It should auto-detect the connected USB receiver

> [!NOTE]
> You don’t need to configure anything in the USB server. Just keep it running in the background.

### 4. Run VirtualHere USB Client on Shadow PC

- Download the USB Client: [https://www.virtualhere.com/usb_client_software](https://www.virtualhere.com/usb_client_software)
- Open the app
- Go to: `File → Specify Hubs Manually`
- Paste in your **local PC’s Tailscale IP address**
- You should now see a list of connected USB devices from your local PC

> [!IMPORTANT]
> If nothing shows up, make sure both machines are online and connected via Tailscale. Try restarting both VirtualHere apps.

### 5. Forward the NRF Receiver

- In VirtualHere on **Shadow PC**:
  - Find your receiver (often labeled `SlimeVR Receiver`, `SuperMini Receiver`, or similar)
  - Right-click → **Use this device**

> [!TIP]
> Once forwarded, the receiver will no longer be usable on your local PC — this is expected!

### 6. Launch SlimeVR on Shadow PC

- Open **SlimeVR Server** on your **Shadow PC**
- Your trackers should start appearing and connecting automatically

> [!NOTE]
> If trackers don’t appear, try restarting the SlimeVR server after forwarding the device

### 7. Follow the SlimeVR Setup Docs

Once your trackers connect:

📖 Follow the SlimeVR setup guide to calibrate, configure body proportions, and set up bindings:  
👉 [https://docs.slimevr.dev/](https://docs.slimevr.dev/)

> [!WARNING]
> Do **everything** on your **Shadow PC** — running anything locally (like SteamVR or SlimeVR) will break tracking.

---

## 💡 Tips & Troubleshooting

> ✅ **Free Version Works!**  
> VirtualHere is **free for one device**, which is perfect for forwarding your single NRF receiver.

> 💻 **Run Everything on Shadow:**  
> SteamVR, VRChat, SlimeVR — all of it should be opened **only on Shadow PC**, never on your local machine.

> 🔄 **Trackers not showing?**  
> Try the following:
> - Restart SlimeVR
> - Re-forward the USB device
> - Check for NRF receiver driver issues on Shadow PC

> 🔐 **Tailscale not connecting?**  
> - Make sure both devices show as "Connected" in the Tailscale dashboard
> - Use `tailscale ip` in Command Prompt to double-check IPs

---

## ✅ You're Good to Go!

You’re now running your SlimeVR NRF trackers entirely on **Shadow PC**, with the NRF receiver being tunneled through **Tailscale** using **VirtualHere**.  
SlimeVR sees the trackers like they’re plugged in directly — no WiFi, no desync, and no weird configs.

Enjoy your full-body tracking!

<3 Bris Ibis
