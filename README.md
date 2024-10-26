### Experimenting with 3D Models for 3D printing

> I dont have 3D printer yet, but its the last step. I am just enjoing the (n - 1) steps.

Tools used:

- [OpenSCAD](https://openscad.org/) - An Script/Programming Based CAD Software
- [Slic3r](https://slic3r.org/) - A 3D model Slicer
- [gcodetutor](https://gcodetutor.com/cnc-program-simulator.html) - A `g code` simulator
- 3D Printer... TODO

## Workflow

1. Create a 3D model in `openscad`
2. Export `.stl` file
3. Import `.stl` file into `Slic3r` and create a 3D printer instructions
4. Export `.gcode` file from Slic3r,
5a. Import `.gcode` file into `gcodetutor` for simulating
5b. Send this `.gcode` to 3D printer and wait.

### Mics

OpenSCAD Cheatsheet [here](https://openscad.org/cheatsheet/)

#### Images

![openscad](https://github.com/user-attachments/assets/018a7340-c7e6-4b62-a1c5-d311f01efbf5)


![slicer](https://github.com/user-attachments/assets/0c7684fd-f2f9-42db-b681-e022a83b3670)


![simulate](https://github.com/user-attachments/assets/2e3c9f7d-7f44-4c61-b02b-a8e7c4c7421a)
