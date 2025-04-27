MATLAB文件：（均为MATLAB函数，供Simulink仿真程序调用）
1.“DynMoEque.m”：ROV动力学方程函数。
2.“Coord_Trans.m”：ROV运动学方程函数。
3.“Depth_Controller.m”：反馈线性化控制器函数，进行深度控制。
4.“YawAngle_Controller.m”：滑动模态法控制器函数，进行艏向角控制。
5.“sat.m”：饱和函数。滑动模态法引入边界层中需要用到。

Simulink文件：
1.“Depth_controller_test.slx”：可直接运行，用来单独测试和分析所设计的“深度控制器”性能，以及得到相关数据分析图。
2.“YawAngle_controller_test.slx”：可直接运行，用来单独测试和分析所设计的“艏向控制器”性能，以及得到相关数据分析图。
3.“Integrated_Model.slx”：可直接运行，用来测试和分析所设计控制器在整个完整的系统上的性能，以及得到相关数据分析图。

“设计报告所使用图片[MATLAB Figure]”文件夹：
其中包含报告内所使用的全部图片的原图，即MATLAB Figure格式的文件。

