# Autonomous UAVs: MAVLink Communication Between FCs and SBCs

<p align="center">
  <img src="Images/sbc_fc.png" alt="sbc_fc">
</p>

## Integrating Peripherals for Status Display and Image Processing in UAVs
![sbc_fc_ench](Images/sbc_fc_ench.png)

### Option 1: Using an OLED Display
![oled](Images/oled.png)

For monochrome OLEDs and LCDs:
<ol style="line-height: 2; list-style-type: none;">
   <li>
      <details>
        <summary>U8g2 Library Setup</summary>
        <p>Navigate to the u8g2 directory:</p>
        <pre><code>cd ~/u8g2</code></pre>
        <p>Create a build directory and navigate into it:</p>
        <pre><code>mkdir build && cd build</code></pre>
        <p>Run CMake to configure the project:</p>
        <pre><code>cmake ..</code></pre>
        <p><strong>Output:</strong></p>
        <p>
        -- The C compiler identification is GNU 10.2.1<br>
        -- The CXX compiler identification is GNU 10.2.1<br>
        -- Detecting C compiler ABI info<br>
        -- Detecting C compiler ABI info - done<br>
        -- Check for working C compiler: /usr/bin/cc - skipped<br>
        -- Detecting C compile features<br>
        -- Detecting C compile features - done<br>
        -- Detecting CXX compiler ABI info<br>
        -- Detecting CXX compiler ABI info - done<br>
        -- Check for working CXX compiler: /usr/bin/c++ - skipped<br>
        -- Detecting CXX compile features<br>
        -- Detecting CXX compile features - done<br>
        -- Configuring done<br>
        -- Generating done<br>
        -- Build files have been written to: /home/radxa/u8g2/build
        </p>
        <p>Build the project:</p>
        <pre><code>make</code></pre>
        <p><strong>Output:</strong></p>
        <p>
        Scanning dependencies of target u8g2<br>
        [  0%] Building C object CMakeFiles/u8g2.dir/csrc/mui.c.o<br>
        [  1%] Building C object CMakeFiles/u8g2.dir/csrc/mui_u8g2.c.o<br>
        [  2%] Building C object CMakeFiles/u8g2.dir/csrc/u8g2_arc.c.o<br>
        [  3%] Building C object CMakeFiles/u8g2.dir/csrc/u8g2_bitmap.c.o<br>
        ...<br>
        [ 97%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_string.c.o<br>
        [ 98%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_u16toa.c.o<br>
        [ 99%] Building C object CMakeFiles/u8g2.dir/csrc/u8x8_u8toa.c.o<br>
        [100%] Linking C static library libu8g2.a<br>
        [100%] Built target u8g2
        </p>
        <p>Install the library:</p>
        <pre><code>sudo make install</code></pre>
        <p><strong>Output:</strong></p>
        <p>
        Install the project...<br>
        -- Install configuration: ""<br>
        -- Installing: /usr/local/lib/libu8g2.a<br>
        -- Installing: /usr/local/include/u8g2/mui.h<br>
        -- Installing: /usr/local/include/u8g2/mui_u8g2.h<br>
        -- Installing: /usr/local/include/u8g2/u8g2.h<br>
        -- Installing: /usr/local/include/u8g2/u8x8.h<br>
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-targets.cmake<br>
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-targets-noconfig.cmake<br>
        -- Installing: /usr/local/lib/cmake/u8g2/u8g2-config.cmake
        </p>
         <p>Create a Symlink for Easier Access:</p>
         <pre><code>sudo ln -s /usr/local/include/u8g2 /usr/local/include/u8g2</code></pre>
      </details>
   </li>
   <li>
      <p align="left">
         <img src="Images/image1.png" alt="sbc_fc" width=300>
      </p>
      <a href="./Logo/README.md">Create and integrate your custom logo as Splash Screen</a>
   </li>  
</ol>
 



### Option 2: Using an E-ink Display
![epaper](Images/epaper.png)

For E-ink (ePaper) and TFT LCD displays:
<ol style="line-height: 2; list-style-type: none;">
   <li>
      <details>
        <summary>LVGL Library Setup</summary>
        <ol style="line-height: 2; list-style-type: none;">
            <li>
               <details>
               <summary>1. Clone the LVGL Repository</summary>
               <p>Clone the LVGL GitHub repository:</p>
               <pre><code>git clone https://github.com/lvgl/lvgl.git</code></pre>
               <p>Enter the cloned directory:</p>
               <pre><code>cd lvgl</code></pre>
               </details>
            </li>
            <li>
               <details>
               <summary>2. Configure Your Build System</summary>
               <p>For a standard CMake setup:</p>
               <pre><code>mkdir build && cd build</code></pre>
               <pre><code>cmake ..</code></pre>
               <p>Add LVGL to your `CMakeLists.txt`:</p>
               <pre><code>add_subdirectory(lvgl)
         include_directories(lvgl)
         target_link_libraries(your_project lvgl)</code></pre>
               </details>
            </li>
            <li>
               <details>
               <summary>3. Configure LVGL Settings</summary>
               <p>Modify `lv_conf.h`:</p>
               <pre><code>#define LV_COLOR_DEPTH 16
         #define LV_HOR_RES_MAX 240
         #define LV_VER_RES_MAX 320</code></pre>
               </details>
            </li>
         </ol>
      </details>
   </li>
</ol>

### Option 3: Using the FC plus board
![sbc_fc_plus](Images/sbc_fc_plus.png)

