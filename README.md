# PROJECT VAKRA
## Valkyrie Adaptive Kinetic Resilience Architecture
### Complete Offline-First AI Disaster Prediction, Emergency Communication, Infrastructure Protection and Rescue Management Platform for Nepal

---

## 🏔️ 1. Executive Summary & Mission
**Project VAKRA** is a state-of-the-art, **100% offline-first** disaster intelligence and emergency response platform engineered specifically for the rugged terrain of Nepal (Sindhupalchok, Trishuli Valley, Rasuwa, Helambu, and Bhotekoshi).

In high-altitude Himalayan mountain valleys, earthquakes, cloudbursts, glacial lake outburst floods (GLOFs), and landslides frequently sever fiber cables, cellular towers, and grid power. **VAKRA is engineered to remain fully operational when all cloud services, mobile networks, and central command centers are completely offline.**

---

## ⚡ 2. Key Capabilities & Architectural Modules

### 1. **Interactive 3D Disaster Digital Twin (WebGL / Three.js)**
- High-fidelity procedural Himalayan gorge and mountain slope elevation model.
- Dynamic animated water surface shader with interactive flood inundation levels.
- 12 Remote Himalayan Warning & Sensor Towers (VAKRA-001 to VAKRA-012) with real-time status beacons, solar arrays, and RF coverage Fresnel domes.
- Live mesh topology lines with animated packet particles (Green = Active, Yellow = Degraded, Red Dashed = Severed).
- 3D models for the Trishuli Hydropower Dam, suspension bridges, village settlements, evacuation shelters, hospitals, and search & rescue helicopters/drones.
- Interactive camera presets: *Valley Wide*, *Trishuli Dam*, *Tatopani Ridge*, *Barhabise Command Hub*, and *Helambu Pass*.
- 5-stage timeline disaster replay scrubber (Pre-disaster baseline -> Cloudburst -> Flash Flood & Landslide -> Rescue -> Recovery).

### 2. **Hydrological Catchment & Flood Prediction Engine**
- Modified Manning open-channel flow and Rational catchment runoff equations for steep mountain basins.
- Real-time stage-discharge rating curves with rainfall accumulation mm/hr and soil saturation percentage.
- Downstream inundation velocity and early warning lead-time calculations in minutes.

### 3. **Infinite Slope Stability & Landslide Factor of Safety (FoS)**
- Calculates Factor of Safety:
  $$\text{FoS} = \frac{c' + (\gamma \cdot z - u)\cos^2\theta \cdot \tan\phi' - k_h \cdot \gamma \cdot z \sin\theta \cos\theta \tan\phi'}{\gamma \cdot z \sin\theta \cos\theta + k_h \cdot \gamma \cdot z \cos^2\theta}$$
- Integrates slope gradient, piezometric pore pressure $u$, soil moisture %, and seismic acceleration coefficient $k_h$.
- Automatic geotechnical advisories when $\text{FoS} < 1.0$ (Imminent Collapse).

### 4. **Layered Offline Emergency Communication Network**
- **LoRa Point-to-Point Mesh (868.1 / 915 MHz)**: Short telemetry, hop count TTL, duplicate packet suppression, and battery-aware store-and-forward routing.
- **Assigned Emergency VHF Radio Directory (144.000 – 146.000 MHz)**: Standardized channels (CH-01 to CH-08) for Army SAR, APF Swiftwater units, hospital dispatch, and community guides.
- **Two-Way Compressed SOS Generator**: Encodes structured emergencies into lightweight ASCII payloads (`SOS|VILL-07|FLD|12P|2INJ|MED-AIRDROP`).
- **Satellite SBD Terminal**: Out-of-band Iridium/Inmarsat short-burst data uplink interface.

### 5. **Autonomous Warning Stations & Acoustic Sirens**
- **Web Audio API Siren Synthesizer**: Generates authentic 130dB wailing evacuation sirens, rapid alarm pulses, harmonic all-clear chords, test pulses, and Morse code SOS (`... --- ...`).
- **Multilingual PA Voice Alert Array**: Speech broadcasts in **Nepali (नेपाली)**, **English**, and **Hindi (हिन्दी)**.

### 6. **Station Health Watchdog & Equipment Fault Classifier**
- Independent heartbeat timeout monitor (distinguishes RF blockage from physical hardware failure).
- Monitors LiFePO4 battery health %, solar charging wattage, antenna VSWR, mast inclinometer tilt angles, cable DC continuity, and optical enclosure locks.
- Neighbor-assisted diagnostic pings to isolate line-of-sight dropouts.

### 7. **Critical Infrastructure Protection: Human & Wildlife Intrusion Detection**
- 316-stainless steel flexible conduit armor to protect against wildlife and rodent cable chewing.
- Privacy-preserving AI classifier analyzing kinetic frequencies and thermal mass to distinguish wildlife from unauthorized human tampering.

### 8. **Dynamic Mountain Rescue Routing (Dijkstra Solver)**
- Topological road and suspension bridge network with dynamic blockage penalties for landslides, severed bridges, and flooded rivers.
- Computes safe evacuation corridors to 8 mountain shelters and 3 district trauma hospitals.

### 9. **Autonomous Heavy-Lift Cargo Drone Logistics**
- VAKRA SkyHawk-I & SkyHawk-II hybrid VTOL flight planning.
- Calculates payload capacity (up to 25 kg) vs high-altitude battery consumption and alpine headwind penalties.

### 10. **Offline Local SQLite / IndexedDB Transaction Outbox**
- Cryptographic SHA-256 HMAC transaction journal.
- Guaranteed zero-data-loss durability during local power outages.

---

## 🚀 3. Quick Start (Running 100% Offline)

### Prerequisites
- Node.js (v18+)
- Python 3.8+ (optional, for local FastAPI backend)

### Step 1: Install Dependencies
```bash
npm install
```

### Step 2: Start the Application

#### Windows (Instant Field Launch):
Double-click `start.bat` or run:
```cmd
start.bat
```

#### Linux / macOS:
```bash
chmod +x start.sh
./start.sh
```

#### Or directly with npm:
```bash
npm run dev
```

Open your browser to: **`http://localhost:5173`**

---

## 📻 4. Standard Operating Emergency VHF Radio Net

| Channel | Channel Name | Frequency | CTCSS | Designated Usage | Power |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **CH-01** | `VAKRA-COMMAND-MAIN` | 144.600 MHz | 88.5 Hz | District Command & Nepal Army SAR Net | 25W |
| **CH-02** | `CHAUTARA-LOCAL-NET` | 144.650 MHz | 103.5 Hz | Town Coordination & Hospital Triage | 10W |
| **CH-03** | `SWIFTWATER-APF` | 144.750 MHz | 114.8 Hz | Armed Police Swiftwater Rescue Boats | 25W |
| **CH-04** | `BAHRABISE-SHELTER` | 144.900 MHz | 88.5 Hz | High School Evacuation Shelter Ops | 5W |
| **CH-05** | `LARCHA-REPEATER` | 145.000 MHz (Tx) / 145.600 MHz (Rx) | 123.0 Hz | Larcha – Tatopani Gorge Cross-Band Repeater | 50W |
| **CH-06** | `DRONE-AIR-OPS` | 145.050 MHz | 131.8 Hz | SkyHawk Drone Deconfliction Net | 15W |
| **CH-07** | `HELAMBU-COMMUNITY`| 145.100 MHz | 94.8 Hz | Mountain Volunteer Guides Net | 5W |
| **CH-08** | `TRISHULI-DAM-SAFETY`| 145.300 MHz | 100.0 Hz | Hydropower Spillway & Dam Engineers | 25W |

---

## 🛠️ 5. Simulation Sandbox & Field Testing Guide

Project VAKRA includes a full **Disaster Simulation Sandbox** accessible via the top navigation bar:
- **Rainfall Slider**: Dial up cloudburst rainfall from 0 to 250 mm/hr.
- **River Surge Offset**: Adjust river stage by +0 to +8 meters.
- **Physical Hazard Triggers**:
  - *Trigger Landslide* at Tatopani Escarpment (drops FoS to 0.88, triggering Level-3 sirens).
  - *Sever Trishuli Bridge* (dynamically re-routes ground rescue to high mountain trails).
  - *Drain Station Battery* or *Simulate Animal Cable Chew*.
- **Pre-Packaged Scenarios**:
  - *Scenario 1: Glacial Lake Outburst Flood (GLOF)*
  - *Scenario 2: Monsoon Cloudburst & Multi-Slope Slide*
  - *Scenario 3: Tower Sabotage & Animal Cable Severance*

---

## 🔒 6. Security, Privacy & Integrity
- **Zero Cloud Dependence**: All models, routing solvers, and databases run on local hardware.
- **Privacy-Preserving Vision**: Non-biometric kinetic and thermal detection.
- **Cryptographic Auditability**: SHA-256 HMAC verification on all local transaction journals.

---

*Project VAKRA — Protecting Himalayan Communities through Kinetic Engineering and Autonomous Intelligence.*
