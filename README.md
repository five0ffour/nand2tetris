# Logic Gate Simulations for the Nand2Tetris project work  
  
## What is Nand2Tetris?  
Source:  https://www.nand2tetris.org/

Nand2Tetris is a fantastic resouce for anyone who is interested in understanding how computer hardware and software solutions are architected.  The site provides an somewhat uncommon bottom-up approach to the hardware-software archtiecture relationship.  Beyond the website, there is a companion study book that can be used to augment the learning process.   The first several chapters of the book contains challenges of designing the fundamental logic gates of their simple computer in a proprietary HDL language and tooling.  These files show one solution to those challenges using a different toolset and in a more graphical approach.
  
Note:  The authors of nand2tetris.org strongly encourage the public not to post solutions to their challenges online.  In their words, "allow students to enjoy the thrill of discovery for themselves."   I whole heartedly agree with this sentiment.  The internet is already rife with their HDL solutions that can be readily cut & pasted for those unscrupulous/unconfident souls that aren't up for the challenge.  Anyone wishing to take the low road will find many options out there.  

I hesitated to post this project because of that request but ultimately relented.  This data set is for those that have already reasoned out the soluiton and would like a visual representation that has a more graphical feel than is supplied in the nand2tetris software site.  The HDL is provided as well since it shows the relationship of the chipsets to the code.  For those who are looking for cut & paste solutions, this would not be the ideal place.  

## What is the Logic Gate Simulator? 
Source:  https://www.kolls.net/gatesim/

Logic Gate Simlulator is an open source project providing student engineers an opportunity to model simple logic gates and animate them in realtime.  It is designed only as a learning tool and does not provide the sophistication (or complexity) of the CAD solutions that are available for engineers and home electronics enthusiats.   What it does do well is give a simple learning curve and simulator environemnt to watch the behaviors and interactions of logic gates.  One can implement and develop integrated circuits, add them to a library and build them into more complex solutions.  Watching the interaction of these circuits and the data flowing through them help visualize exactly what is going on with the design.  

My hope is that these files can be used to provide just another way of understanding the fascintating world of digital computers.  As with the original authors intent, nothing beats actually implementing them to really undertand.  I too encourage any student to try their hand at designing these gates using their HDL and use my source or PDFs only as a double-check of their final work.  

| Sample The ALU (Arithmetic Logic Unit) (from nand2tetris.org) - Ruleset
| --- |      
| Computes one of the following functions:  
| x+y, x-y, y-x, 0, 1, -1, x, y, -x, -y, !x, !y,  
| x+1, y+1, x-1, y-1, x&y, x|y on two 16-bit inputs,   
| according to 6 input bits denoted zx,nx,zy,ny,f,no.  
| In addition, the ALU computes two 1-bit outputs:   
| if the ALU output == 0, zr is set to 1; otherwise zr is set to 0;   
| if the ALU output < 0, ng is set to 1; otherwise ng is set to 0.   
|     
  
|  zx  |  nx   |  zy   |  ny   |  f   |  no   |  out=  |  
| ---- | ----- | ----- | ----- | ---- | ----- | -----: |  
|  1   |   0   |   1   |   0   |  1   |   0   |   0    |  
|  1   |   1   |   1   |   1   |  1   |   1   |   1    |  
|  1   |   1   |   1   |   0   |  1   |   0   |  -1    |  
|  0   |   0   |   1   |   1   |  0   |   0   |   x    |  
|  1   |   1   |   0   |   0   |  0   |   0   |   y    |  
|  0   |   0   |   1   |   1   |  0   |   1   |  !x    |   
|  1   |   1   |   0   |   0   |  0   |   1   |  !y    |  
|  0   |   0   |   1   |   1   |  1   |   1   |  -x    |  
|  1   |   1   |   0   |   0   |  1   |   1   |  -y    |  
|  0   |   1   |   1   |   1   |  1   |   1   |  x+1   |   
|  1   |   1   |   0   |   1   |  1   |   1   |  y+1   |  
|  0   |   0   |   1   |   1   |  1   |   0   |  x-1   |  
|  1   |   1   |   0   |   0   |  1   |   0   |  y-1   |  
|  0   |   0   |   0   |   0   |  1   |   0   |  x+y   |   
|  0   |   1   |   0   |   0   |  1   |   1   |  x-y   |  
|  0   |   0   |   0   |   1   |  1   |   1   |  y-x   |  
|  0   |   0   |   0   |   0   |  0   |   0   |  x&y   |  
|  0   |   1   |   0   |   1   |  0   |   1   |  x|y   |  
  
![](documentation/SAP-1.png)

Enjoy!  
Mike  
