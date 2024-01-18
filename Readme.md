# Robot Kinematic

- Compute **Forward Kinematic**, **Jacobians** and **Jacobians Derivative** starting from the **Denavit-Hartenberg Parameters**.
- UR3/UR5/UR10 and UR3e/UR5e/UR10e/UR16e Manipulator Models.
- Kuka LWR4p Manipulator Model.
- Neobotix MPO-500 Model.

## Usage

- Create a **Robot** Model `name_of_robot.m` in the `export_robot_functions\models` folder using the **Denavit-Hartenberg Parameters**.
- Open MATLAB and add the `export_robot_functions` and `rvctools` folder and sub-folders to the MATLAB path.
- In the MATLAB terminal run the `export_robot_functions\export_robot_functions.m` script to generate the **Forward Kinematic**, **Jacobians** and **Jacobians Derivative** functions:

        export_kinematic_functions(import_model('robot_model_name'))

- The **Forward Kinematic**, **Jacobians** and **Jacobians Derivative** functions are generated in the `export_robot_functions\exported` folder:

  - Forward Kinematic to **End-Effector** and to each Joint. (Partial FK)
  - Jacobian to **End-Effector** and to each Joint. (Partial Jacobian)
  - Jacobian Derivative to **End-Effector** and to each Joint. (Partial Jacobian Derivative)

## Examples

- UR10e Manipulator Model:

        export_kinematic_functions(import_model('UR10e'))

`compute_UR10e_direct_kinematic.h` ⇾ Forward Kinematic to **End-Effector**.
`compute_UR10e_direct_kinematic_0.h` ⇾ Forward Kinematic to Joint_1.
`compute_UR10e_direct_kinematic_1.h` ⇾ Forward Kinematic to Joint_2.
`compute_UR10e_direct_kinematic_2.h` ⇾ Forward Kinematic to Joint_3.
`compute_UR10e_direct_kinematic_3.h` ⇾ Forward Kinematic to Joint_4.
`compute_UR10e_direct_kinematic_4.h` ⇾ Forward Kinematic to Joint_5.

`compute_UR10e_jacobian.h` ⇾ Jacobian to **End-Effector**.
`compute_UR10e_jacobian_0.h` ⇾ Jacobian to Joint_1.
`compute_UR10e_jacobian_1.h` ⇾ Jacobian to Joint_2.
`compute_UR10e_jacobian_2.h` ⇾ Jacobian to Joint_3.
`compute_UR10e_jacobian_3.h` ⇾ Jacobian to Joint_4.
`compute_UR10e_jacobian_4.h` ⇾ Jacobian to Joint_5.

`compute_UR10e_jacobian_derivative.h` ⇾ Jacobian Derivative to **End-Effector**.
`compute_UR10e_jacobian_derivative_0.h` ⇾ Jacobian Derivative to Joint_1.
`compute_UR10e_jacobian_derivative_1.h` ⇾ Jacobian Derivative to Joint_2.
`compute_UR10e_jacobian_derivative_2.h` ⇾ Jacobian Derivative to Joint_3.
`compute_UR10e_jacobian_derivative_3.h` ⇾ Jacobian Derivative to Joint_4.
`compute_UR10e_jacobian_derivative_4.h` ⇾ Jacobian Derivative to Joint_5.