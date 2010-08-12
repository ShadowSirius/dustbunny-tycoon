Introd=sprintf(' The Controller Design Tool is for the design and analysis of control systems \n in a simple block diagram form.  It can be used to calculate the closed-loop \n transfer functions, find time and frequency responses, and perform root locus, \n root contour or frequency analysis and design.');
Enter=sprintf(' Click on the Blocks to enter the Transfer Functions of the system. \n Note the Transfer function MUST be entered in a polynomial form. \n You may convert transfer functions from pole-zero form into polynomials using \n the following components of ACSYS: \n\n 1. Transfer Function Symbolic \n 2. Transfer Function Calculator \n 3. Transfer Function Tool \n\n The zeros, poles, and transfer function of the system will be displayed on \n the Controls Window.  For a more detailed representation, press the \n "Display on Command Line" button and refer to the Matlab command window.');
Timresp=sprintf(' The time response of the closed-loop transfer function due to various inputs \n is obtained.  The diferent input options have a unit amplitude.  The user \n may change the input amplitude by clicking on the F block in the Block \n Diagram.  For any other inputs use the Other Inputs menu option.  The selected \n input must be a function of time e.g. sin(2*t) or exp(5*t)');
Freqresp=sprintf(' The Frequency Response of the closedloop system is obtained using: \n 1. Closedloop Mag.-Phase \n 2. Mag.Phase (DB) \n the latter provides the Magnitude and Phase diagrams in DB scale. \n\n The Phase and Gain Margin and the Nyquist menu options \n use the loop transfer function (Gc*G*H).');
Contdestool=sprintf(' The Root Locus and Bode menu options start the MATLAB SISO \n tool for Root Locus and Frequency Response.  The MATLAB SISO tool is a \n Graphical User Interface that helps you to design single-input/single-output \n (SISO) compensators by interacting with the root locus and Bode plots of \n the open-loop system.  You may add poles and zeros to the transfer function, \n and check their effect on the time and frequency responses. Use the MATLAB \n Help SISOTOOL for more information. \n\n The Root Contour tool plots the poles of the system as functions of a certain \n varying parameter. For the PD design option, the varying parameter is Kd. \n Choose the minimum, maximum, and number of interim values of Kd. For the \n Lead-Lag option the varying parameter is T.  Choose the value of the constant \n a, and the minimum, maximum and number of interim values of T. The form of \n the C(s) transfer function used for each value of the parameter is displayed \n on the input panel that pops up when one of the root contour options is chosen.');
Display=sprintf(' Application of this button will diplay a more accurate representaion of the \n calculated valued than is diplayed on the Controller Design Tool window. \n Default is to display the information to four decimal places. Typing "format \n long" at the command line bofore pressing the "Display on Command Line" \n button will change the accuracy to 14 decimal places.');
Reset=sprintf(' Application of this button will reset the Controls window. \n The user must re-enter all parmeters to continue.');
Done=sprintf(' Application of this button will Close the Controls window.');

str={'Introduction', Introd;
   'Block Diagram', Enter;
   'Time Response', Timresp;
   'Frequency Response', Freqresp;
   'Controller Design Tool', Contdestool;
   'Display on Command Line', Display;
   'Reset', Reset;
   'Close Window', Done;};
helpwin(str,'Introduction','ACSYS Help on Controls Tool')

