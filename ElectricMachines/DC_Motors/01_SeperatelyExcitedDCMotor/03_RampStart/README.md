# Seperately Excited DC Motor: Ramp Start

## Objective: 

In 1st [experiment](https://github.com/VishalDevnale/ControlSystem/tree/master/ElectricMachines/DC_Motors/01_SeperatelyExcitedDCMotor/01_AbruptStart), we noticed energy lost is high for startup.
In 2nd [experiment](https://github.com/VishalDevnale/ControlSystem/tree/master/ElectricMachines/DC_Motors/01_SeperatelyExcitedDCMotor/02_SequentialStart), we noticed energy lost is less compared to 1st experiment.

Simulate a controlled voltage start, in which the voltages can be ramped or otherwise adjusted between 0 and 100% of rated voltage, independently on the two windings. 

**Propose a sequence to reduce starting energy losses.**

Here we are trying differnet startup mechanisim. Rotor is winding is energized at the same time as stator but NOT with the rated voltage. We will apply ramp voltage to armature.

## Model/Developement:

Simulink model is same as previous experiments (01_AbruptStart or 02_SequentialStart) except the way Vf and Va supplied to motor. It's implementaion is shown below.  

![Screenshot](08_HowToChangeVaTiming.PNG)

![Screenshot](09_AppliedVoltages.PNG)

## Results:

* **Steady State Values**

![Screenshot](02_SS_Comment.PNG)

![Screenshot](04_Figure1.png)

* **Max values**

![Screenshot](03_Max_Comment.PNG)

* **Torque**

![Screenshot](05_Figure2.png)

* **Energy**

![Screenshot](06_Figure3.png)

* **Power**

![Screenshot](07_Figure4.png)

## Learnings/Comments/Analysis/Remember:
1. Less energy is consumed in startup phase than earlier experiments. Settling time = 0.6 sec. Energy spent during startup: ~ 120 J.
Which is significantly less than abrupt startup (01_AbruptStart) at 1015.82 J and sequential startup 242 J. It would be useful to find the optimal startup-sequence
that minimizes energy loss.

Here settling time i.e 6 sec is alos less compared to abrupt startup (01_AbruptStart) at 0.7 sec and sequential startup 0.73 sec.

I recommend to open [01_AbruptStart](https://github.com/VishalDevnale/ControlSystem/tree/master/ElectricMachines/DC_Motors/01_SeperatelyExcitedDCMotor/01_AbruptStart) and [01_SequentialStart](https://github.com/VishalDevnale/ControlSystem/tree/master/ElectricMachines/DC_Motors/01_SeperatelyExcitedDCMotor/02_SequentialStart) in other tab and compare all graphs and results. You will be surprised by comparing the results.

## Future work:
I tried reducing energy spent for startup of motor in next sections (i.e. [ramp startup](https://github.com/VishalDevnale/ControlSystem/tree/master/ElectricMachines/DC_Motors/01_SeperatelyExcitedDCMotor/03_RampStart)).