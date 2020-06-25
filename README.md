# SimulinkPractice

**This project was made just for fun**. The goal of this project was to get more familiar with **MATLAB Simulink** and, at the same time, understand a little better how **PID Controllers** work. 

# About the project

The system designed in the **TeslaModelS.slx** file (image below) represents a **Tesla Model S** car. Each block represents a subsystem of the car.

![Preview-Screens](https://github.com/patrickmetzner/SimulinkPractice/blob/master/system.PNG)

The goal of this project was to simulate how a simple cruise control system would work in that vehicle. At the left most block of the system we choose the speed at which we want to set our cruise control and this information passes through 3 main blocks, the **PID**, the  **Brushed DC Motor** and the **Car Dynamics** function. Each block has its inputs and outputs connected according to what we would expect in real life, making a closed feedback loop.

In the **PID block** we can play with the **Proportional (P), Integral (I)** and **Derivative (D)** parameters of the controller to **adjust how fast or smooth** we want the speed of the car to respond to the changes made at the input (left most block). Changes to these parameters also affect how precise the controller is, influencing how much the controller will **overshoot or over correct** the speed until it stabilizes at the chosen input. 

The **Brushed DC Motor**, simulates how much power the car's motor can generate at each RPM, while the **saturation block** (immediately to the right of the Brushed DC Motor) limits the maximum output torque to represent how the motor would work in real life.

The **Car Dynamics** function can be found at the **Car Dynamics.m** file. It is a mathematical representation of how the acceleration (output) changes, according to the motor's torque and the car's speed. The formula inside this function takes into account some vehicle specifications, like weight, drag coefficient and gear ratio between the motor and the wheels.

We can open each individual scope to see how each parameter/signal changed during the simulation period. The image below shows us how the speed changed over time during a 50 seconds simulation with the input speed set to 65mph. The **PID** parameters were set to 50, 3 and 100, respectively (image below).   

![Preview-Screens](https://github.com/patrickmetzner/SimulinkPractice/blob/master/output.PNG)    

![Preview-Screens](https://github.com/patrickmetzner/SimulinkPractice/blob/master/PID.PNG)