# Autonomous UAVs: MAVLink Communication Between FCs and SBCs

![sbc_fc](Images/sbc_fc.png)

## Integrating Peripherals for Status Display and Image Processing in UAVs
![sbc_fc_ench](Images/sbc_fc_ench.png)

### Option 1: Using an OLED Display
![oled](Images/oled.png)

For monochrome OLEDs and LCDs:
<ol style="line-height: 2; list-style-type: none;">
   <li><details>
      <summary>U8g2 Library Setup</summary>
        Navigate to the u8g2 directory:
        ```bash
        cd ~/u8g2
        ```
        Create a build directory and navigate into it:
        ```bash
        mkdir build && cd build
        ```
        Run CMake to configure the project:
        ```bash
        cmake ..
        ```
        *Output:*
        -- The C compiler identification is GNU 10.2.1
        -- The CXX compiler identification is GNU 10.2.1
        -- Detecting C compiler ABI info
        -- Detecting C compiler ABI info - done
        -- Check for working C compiler: /usr/bin/cc - skipped
        -- Detecting C compile features
        -- Detecting C compile features - done
        -- Detecting CXX compiler ABI info
        -- Detecting CXX compiler ABI info - done
        -- Check for working CXX compiler: /usr/bin/c++ - skipped
        -- Detecting CXX compile features
        -- Detecting CXX compile features - done
        -- Configuring done
        -- Generating done
        -- Build files have been written to: /home/radxa/u8g2/build

        Build the project:
        ```bash
        make
        ```
        *Output:*
        Scanning dependencies of target u8g2
        [  0%] Building C object CMakeFiles/u8g2.dir/csrc/mui.c.o
        [  1%] Building C object CMakeFiles/u8g2.dir/csrc/mui_u8g2.c.o
        [  2%] Building C object CMakeFiles/u8g2.dir/csrc/u8g2_arc.c.o
        [  3%] Building C object CMakeFiles/u8g2.dir/csrc/u8g2_bitmap.c.o
        ...
        [ 97%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_string.c.o
        [ 98%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_u16toa.c.o
        [ 99%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_u8toa.c.o
        [100%] Linking C static library libu8g2.a
        [100%] Built target u8g2

        Install the library:
        ```bash
        sudo make install
        ```
        *Output:*
        [100%] Built target u8g2
        Install the project...
        -- Install configuration: ""
        -- Installing: /usr/local/lib/libu8g2.a
        -- Installing: /usr/local/include/u8g2/mui.h
        -- Installing: /usr/local/include/u8g2/mui_u8g2.h
        -- Installing: /usr/local/include/u8g2/u8g2.h
        -- Installing: /usr/local/include/u8g2/u8x8.h
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-targets.cmake
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-targets-noconfig.cmake
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-config.cmake

        Create a Symlink for Easier Access:
        ```bash
        sudo ln -s /usr/local/include/u8g2 /usr/local/include/u8g2
        ```
   </details></li>
</ol>

### Option 2: Using an E-ink Display


### Option 3: Using the FC plus board with the OLED onboard
