# 4-Channel 2-to-1 Digital Multiplexer Berbasis CMOS SKY130

<p align="center">

![Technology](https://img.shields.io/badge/Technology-SKY130-blue)
![Simulation](https://img.shields.io/badge/Simulator-NGSPICE-green)
![Layout](https://img.shields.io/badge/Layout-Magic-orange)
![Verification](https://img.shields.io/badge/LVS-Netgen-red)
![Status](https://img.shields.io/badge/Project-Completed-success)

</p>

## Deskripsi

Repository ini berisi implementasi **4-Channel 2-to-1 Digital Multiplexer** menggunakan teknologi **SKY130 Open PDK** dengan arsitektur **Transmission Gate CMOS**.

Seluruh tahapan perancangan dilakukan mulai dari penyusunan skematik, simulasi transistor-level, implementasi layout, Design Rule Check (DRC), Layout Versus Schematic (LVS), hingga simulasi pasca-layout.

Proyek ini merupakan tugas akhir Mata Kuliah **Perancangan Rangkaian Terintegrasi (PRT)** Program Magister Teknik Elektro Institut Teknologi Sepuluh Nopember (ITS).

---

# Anggota Kelompok

| Nama | NRP |
|------|------|
| Erlanda Miko Prasetya | 6022251020 |
| Sri Kusmiyati | 6022251027 |

---

# Dosen Pengampu

Mata Kuliah **Perancangan Rangkaian Terintegrasi (PRT)**

Program Magister Teknik Elektro

Institut Teknologi Sepuluh Nopember (ITS)

---

# Tujuan Proyek

Proyek ini bertujuan untuk:

- Merancang inverter CMOS menggunakan teknologi SKY130.
- Merancang Transmission Gate sebagai saklar digital CMOS.
- Mengimplementasikan Multiplexer 2-to-1 menggunakan Transmission Gate.
- Mengintegrasikan empat buah Multiplexer menjadi Quad Multiplexer.
- Melakukan simulasi menggunakan NGSPICE.
- Mendesain layout menggunakan Magic VLSI.
- Melakukan verifikasi DRC dan LVS.
- Melakukan simulasi pasca-layout.

---

# Teknologi yang Digunakan

| Komponen | Software |
|-----------|-----------|
| PDK | SKY130 Open PDK |
| Schematic | Xschem |
| Simulator | NGSPICE |
| Layout | Magic VLSI |
| LVS | Netgen |

---

# Spesifikasi

| Parameter | Nilai |
|-----------|--------|
| Teknologi | SKY130 CMOS |
| Supply Voltage | 1.8 Volt |
| Arsitektur | Transmission Gate |
| Jumlah Channel | 4 |
| Tipe Multiplexer | 2-to-1 |

---

# Diagram Alur Perancangan

```
Spesifikasi
      │
      ▼
CMOS Inverter
      │
      ▼
Transmission Gate
      │
      ▼
MUX 2-to-1
      │
      ▼
Quad MUX
      │
      ▼
NGSPICE Simulation
      │
      ▼
Magic Layout
      │
      ▼
DRC
      │
      ▼
LVS
      │
      ▼
Post Layout Simulation
```

---

# Struktur Repository

```
quadmux-sky130
│
├── README.md
├── LICENSE
│
├── docs
│   └── Laporan_PRT_Final_Project.pdf
│
├── images
│   ├── flowchart.png
│   ├── inverter.png
│   ├── transmission_gate.png
│   ├── mux21.png
│   ├── quad_mux.png
│   ├── waveform.png
│   ├── layout_inverter.png
│   ├── layout_tg.png
│   ├── layout_mux21.png
│   ├── layout_quadmux.png
│   ├── drc.png
│   ├── lvs_mux21.png
│   ├── lvs_quadmux.png
│   └── postlayout_waveform.png
│
├── xschem
│
├── ngspice
│
├── magic
│
├── netgen
│
└── scripts
```

---

# Hasil Perancangan

## 1. CMOS Inverter

Inverter digunakan untuk menghasilkan sinyal komplemen (`SEL̅`) yang diperlukan oleh Transmission Gate.

<p align="center">
<img src="images/inverter.png" width="400">
</p>

---

## 2. Transmission Gate

Transmission Gate terdiri atas pasangan transistor PMOS dan NMOS yang dikendalikan oleh sinyal SEL dan SEL̅.

<p align="center">
<img src="images/transmission_gate.png" width="400">
</p>

---

## 3. Multiplexer 2-to-1

Multiplexer dibangun menggunakan:

- 2 Transmission Gate
- 1 CMOS Inverter

<p align="center">
<img src="images/mux21.png" width="700">
</p>

---

## 4. Quad Multiplexer

Empat buah Multiplexer 2-to-1 dihubungkan secara paralel membentuk Quad Multiplexer.

<p align="center">
<img src="images/quad_mux.png" width="700">
</p>

---

# Simulasi NGSPICE

Simulasi dilakukan menggunakan:

```
VDD = 1.8 Volt

.tran 10n 40u
```

Waveform menunjukkan:

- SEL = 0 → Output mengikuti input A
- SEL = 1 → Output mengikuti input B

<p align="center">
<img src="images/waveform.png" width="900">
</p>

---

# Implementasi Layout

## Layout Inverter

<p align="center">
<img src="images/layout_inverter.png" width="250">
</p>

---

## Layout Transmission Gate

<p align="center">
<img src="images/layout_tg.png" width="250">
</p>

---

## Layout Multiplexer 2-to-1

<p align="center">
<img src="images/layout_mux21.png" width="800">
</p>

---

## Layout Quad Multiplexer

<p align="center">
<img src="images/layout_quadmux.png" width="900">
</p>

---

# Verifikasi DRC

Design Rule Check dilakukan menggunakan Magic VLSI.

Hasil verifikasi menunjukkan bahwa seluruh layout telah memenuhi aturan fabrikasi SKY130.

✅ DRC CLEAN

<p align="center">
<img src="images/drc.png" width="700">
</p>

---

# Verifikasi LVS

Verifikasi menggunakan Netgen menunjukkan bahwa layout identik dengan skematik.

## MUX 2-to-1

<p align="center">
<img src="images/lvs_mux21.png" width="750">
</p>

## Quad Multiplexer

<p align="center">
<img src="images/lvs_quadmux.png" width="750">
</p>

✅ LVS MATCH

---

# Simulasi Pasca Layout

Setelah proses ekstraksi layout, simulasi kembali dilakukan menggunakan netlist hasil ekstraksi.

Hasil menunjukkan bahwa karakteristik keluaran tetap sama dengan simulasi skematik.

<p align="center">
<img src="images/postlayout_waveform.png" width="900">
</p>

---

# Ringkasan Hasil

| Tahapan | Status |
|-----------|---------|
| CMOS Inverter | ✅ |
| Transmission Gate | ✅ |
| Multiplexer 2-to-1 | ✅ |
| Quad Multiplexer | ✅ |
| Simulasi NGSPICE | ✅ |
| Layout Magic VLSI | ✅ |
| DRC | ✅ Clean |
| LVS | ✅ Match |
| Post Layout Simulation | ✅ Berhasil |

---

# Cara Menjalankan

## Simulasi NGSPICE

```bash
ngspice quadmux.spice
```

## Membuka Layout

```bash
magic quadmux.mag
```

## Menjalankan LVS

```bash
netgen
```

---

# Dokumentasi

Laporan lengkap tersedia pada folder:

```
docs/
```

atau dapat dibaca melalui file:

```
Laporan_PRT_Final_Project.pdf
```

---

# Referensi

1. N. H. E. Weste and D. Harris, *CMOS VLSI Design: A Circuits and Systems Perspective*, 4th Edition.

2. J. M. Rabaey, A. Chandrakasan, and B. Nikolic, *Digital Integrated Circuits: A Design Perspective*, 2nd Edition.

3. R. J. Baker, *CMOS Circuit Design, Layout, and Simulation*, 4th Edition.

4. SKY130 Open PDK Documentation.

5. Magic VLSI Documentation.

6. NGSPICE User Manual.

7. Xschem Documentation.

---

# Lisensi

Repository ini dibuat untuk keperluan akademik sebagai bagian dari Mata Kuliah **Perancangan Rangkaian Terintegrasi (PRT)** Program Magister Teknik Elektro Institut Teknologi Sepuluh Nopember (ITS).

Silakan menggunakan repository ini sebagai referensi pembelajaran dengan tetap mencantumkan sumber apabila digunakan dalam pengembangan lebih lanjut.
