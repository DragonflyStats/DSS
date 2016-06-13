Introduction

Rtools provides a toolchain for Windows platform that work well with R. It mainly includes GNU make, GNU gcc, and other utilities commonly used on UNIX-ish platform. This page gives a simple introduction to how to install Rtools on Windows. This howto includes:

- install Rtools
- check if Rtools can be used by R

#### Install Rtools

Download Rtools from http://cran.r-project.org/bin/windows/Rtools/. If you have installed R version 3.3.x, download and run Rtools33.exe. If you have installed R version 3.2.x or lower, do not use Rtools33.exe but rather choose the most recent "frozen" version that supports the version of R you have installed. If you have more than one version of R, it is possible to have more than one version of Rtools, but you may have to adjust some environmental variables to compile a Stan program.

For installing Rtools, attention needs to be paid in a step where we can edit the system PATH so that the C++ compiler that is included in Rtools can be used by R. As indicated by the following step, we need to check this option (not manually edit the system PATH. Once the option is checked, system PATH would be edited to include important folders of Rtools by the installation process).

editpathrtools

Check if Rtools can be used in R

Close the current R session.

Open a new R session.

Execute Sys.getenv("PATH") as the following to see if Rtools is included in system PATH. In the following output, the first few are c:\\Rtools\\bin and c:\\Rtools\\gcc-4.x-y\\bin if Rtools is installed to c:\\Rtools. If these two do no appear, check if installing Rtools had followed the above instruction. One way is to reinstall Rtools and the other way is to edit system PATH manually (or using some other tool). For simplicity, we suggest reinstalling Rtools and make sure PATH is edited (only check the option) during the installation.
<pre><code>
> Sys.getenv('PATH')
[1] "c:\\\\Rtools\\\\bin;c:\\\\Rtools\\\\gcc-4.6.3\\\\bin;...
</code></pre>
Further, we can check if g++ can be really called from R. For example, we can see the version of gcc in R as follows.
<pre><code>
> system('g++ -v')
Using built-in specs.
COLLECT_GCC=c:\Rtools\GCC-46~1.3\bin\G__~1.EXE
COLLECT_LTO_WRAPPER=c:/rtools/gcc-46~1.3/bin/../libexec/gcc/i686-w64-mingw32/4.6.3/lto-wrapper.exe
Target: i686-w64-mingw32
Configured with: /data/gannet/ripley/Sources/mingw-test3/src/gcc/configure --host=i686-w64-mingw32 --build=x86_64-linux-gnu --target=i686-w64-mingw32 --with-sysroot=/data/gannet/ripley/Sources/mingw-test3/mingw32mingw32/mingw32 --prefix=/data/gannet/ripley/Sources/mingw-test3/mingw32mingw32/mingw32 --with-gmp=/data/gannet/ripley/Sources/mingw-test3/mingw32mingw32/prereq_install --with-mpfr=/data/gannet/ripley/Sources/mingw-test3/mingw32mingw32/prereq_install --with-mpc=/data/gannet/ripley/Sources/mingw-test3/mingw32mingw32/prereq_install --disable-shared --enable-static --enable-targets=all --enable-languages=c,c++,fortran --enable-libgomp --enable-sjlj-exceptions --enable-fully-dynamic-string --disable-nls --disable-werror --enable-checking=release --disable-win32-registry --disable-rpath --disable-werror CFLAGS='-O2 -mtune=core2 -fomit-frame-pointer' LDFLAGS=
Thread model: win32
gcc version 4.6.3 20111208 (prerelease) (GCC)
</code></pre>
> system('where make')
c:\Rtools\bin\make.exe
