# SoCodeCNN
Main program code to convert Program Source Code in C language to SoCodeCNN Images, as explained in the paper, "SoCodeCNN: Program Source Code for Visual CNN Classification Using Computer Vision Methodology", published in IEEE Access (2019).

***Note:*** Since, the automation process differs between OS/hardware platforms, in this code repository we provide the basic instuctions/code and tools so that the key components of the SoCodeCNN methodology could be built and implemented on your chosen platform with least effort. You need to automate the final process on your chosen platform as required.

## Requirements
Please make sure that LLVM compiler is installed in your computer. More details on LLVM could be accessed from here: http://laure.gonnord.org/pro/research/ER03_2015/lab1_intro.pdf 

You would also require to install clang on your system. Clang is a compiler front end for the C, C++, Objective-C and Objective-C++ programming languages, as well as the OpenMP, OpenCL, RenderScript and CUDA frameworks. It uses the LLVM compiler infrastructure as its back end.

Installation details on Clang-LLVM could be accessed here: https://clang.llvm.org/get_started.html 

## Usage

<p align="center">
![image](https://user-images.githubusercontent.com/8515608/67781905-f887d780-fa5f-11e9-834e-5826b544214c.png)

**SoCodeCNN Block Diagram**
</p>

### IR Generator

To generate LLVM IR of your program with name, MyProgram.c then you have to use the following command to achieve the LLVM IR:

```
$ clang -emit-llvm -S MyProgram.c -o MyProgram.ll
```

In the aforementioned command, MyProgram.ll is the text file representing the LLVM IR code. **-S** wild card instructs the LLVM to create a text file for IR code, whereas **-c** wild card instructs to create a binary file instead. Extra help could on the topic could be found here: https://www.inf.ed.ac.uk/teaching/courses/ct/17-18/slides/llvm-1-intro.pdf 

***Note:*** You can also use **opt** tool to optimize LLVM IR code. More details are avlailable here: https://subscription.packtpub.com/book/application_development/9781785285981/1/ch01lvl1sec16/transforming-llvm-ir 

### Image Creator

To create SoCodeCNN images you could use the MatLab code provided in CreateImage.m in this folder. In the **CreateImage.m** file, you need to specify the input file, which is the LLVM IR code, in our example that would be **MyProgram.ll**. The SoCodeCNN (output) image would be **MyProgram.png**. In **CreateImage.m** code file, you would need to to change the name of the input file and output file in case you want the name to be different from our example here.

CreateImage.m code file link: https://github.com/somdipdey/SoCodeCNN/blob/master/CreateImage.m

*********************************************************************

## Citation
***
Dey, Somdip, Amit Kumar Singh, Dilip Kumar Prasad, and Klaus McDonald-Maier. "[SoCodeCNN: Program Source Code for Visual CNN Classification Using Computer Vision Methodology](https://ieeexplore.ieee.org/document/8882216)." IEEE Access (2019).
***
