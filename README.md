# Miras

[![License](https://img.shields.io/github/license/Dominik-Workshop/miras)](https://github.com/Dominik-Workshop/miras/blob/main/LICENSE) ![Repo Size](https://img.shields.io/github/repo-size/Dominik-Workshop/miras)
![Microcontroller](https://img.shields.io/badge/uC-STM32F411RET6-white)

<img src="images/pictures/front_before_fights-nb.png" alt="Miras photo front">

## Overview

Autonomous minisumo robot, based around an **STM32** microcontroller and **VL53L0X** TOF (time of flight) distance sensors, which provide necessary processing power and great detection range of opponents.

Its distinguishing feature is a set of **deployable wings**, designed to attract an opponent toward them, making them vulnerable to falling off the dohyo.

## Electronics

This project features two custom-designed PCBs that are connected via a flexible flat cable (FFC):

- [**Main board**](/pcb_main/): responsible for the robot's core functionalities. It integrates the microcontroller, sensors, motor drivers, and power management circuitry

<p align="center">
  <img src="images/renders/main-board.png" width=80% alt="Main board render">
</p>

- [**Top board**](/pcb_top/): accommodates an on/off switch, an SWD programming connector, configuration DIP switches, and a dedicated space for a standard [starter module](https://p1r.se/startmodule/)

<p align="center">
  <img src="images/renders/top-board.png" width=30% alt="Top board render"> 
</p>

The robot also features a 128x64px **OLED** screen for debugging.

<p align="center">
  <img src="images/pictures/oled.png" width=30% alt="OLED photo"> 
</p>

## Mechanical

<p align="center">
  <img src="images/renders/render_front.png" alt="Miras render front">
</p>

The chassis is a robust blend of 3D-printed components, steel, and aluminum, designed for durability and a low center of gravity. For superior traction on the dohyo, the robot is equipped with custom cast rubber tires. The unique deployable wings, made from lightweight paper, serve as the active deflection mechanism.

The robot is powered by two **N20** motors.

## Used Tools

<img src="images/logos/Eagle.png" align="center" height="64"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/logos/Inventor.png" align="center"  height="64"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/logos/STM32CubeIDE.png" align="center" height="64">

## Authors

- [**Dominik Pluta**](https://github.com/Dominik-Workshop):
  - **Responsibility**: PCB design, programming
- [**Kamil Winnicki**](https://github.com/KamilWuu):
  - **Responsibility**: design and manufacturing of mechanical parts

## Special Thanks

Special thanks to [**Eryk Możdzeń**](https://github.com/Eryk-Mozdzen), who helped with programming.
