### Experimenting with 3D Models

Tools used:

- [OpenSCAD](https://openscad.org/) - An Script/Programming Based CAD Software
- [Slic3r](https://slic3r.org/) - A 3D model Slicer
- [gcodetutor](https://gcodetutor.com/cnc-program-simulator.html) - A `g code` simulator

## Workflow

1. Create a 3D model in `openscad`
2. Export `.stl` file
3. Import `.stl` file into `Slic3r` and create a 3D printer instructions
4. Export `.gcode` file from Slic3r,
5a. Import `.gcode` file into `gcodetutor` for simulating
5b. Send this `.gcode` to 3D printer and wait.

#### Images
