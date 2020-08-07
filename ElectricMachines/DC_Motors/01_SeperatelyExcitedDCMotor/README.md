# Seperately Excited DC Motor

## Objective:

1. Implement Seperately Excited DC Motor **Simulink model**
2. Analyse different methodologies to start the seperately excited DC motor.

   * Anyalysing factors: Energy lost, settling time, current ratings. 
   * Methods explored:
   
      *  **Abrupt Start:** Simulate an abrupt startup (i.e.both (stator and rotor) windings driven immediately to rated voltage).
      *  **Sequential Start:** Stator is energised first and once field is created armature is connected to rated voltage.
      *  **Ramp Start:** Simulate a controlled voltage start, in which the voltages can be ramped or otherwise adjusted between 0 and 100% of rated voltage, independently on the two windings. Propose a sequence to reduce starting energy losses. 

3. Design and implement **Torque control** using PI controller
4. Design and implement **Position control** uisng PI controller

Motor RPM can be controlled similar to torque control and position control using PID cpntroller. **Motor speed controller** is designed with different (but equivalent) way of modling electric motor i.e.** Transfer Function** here: **TBD** 

## Model/Developement:

## Results:

## Learnings/Comments/Analysis/Remember:

 


