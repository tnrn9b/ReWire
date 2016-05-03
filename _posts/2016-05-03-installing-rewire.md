---
layout: page
title: "Installing ReWire"
category: doc
date: 2016-05-03 10:51:28
order: 2
---

# Step 1: Install System Requirements

You will need:

* [Haskell Platform](http://www.haskell.org/platform/), version 7.10.2 (July 2015) or later.
* [Git](http://git-scm.com/) (to acquire the ReWire source).
* Some sort of FPGA development tool suite that supports VHDL. Currently the only tested tools are those from Xilinx:
   - [ISE](http://www.xilinx.com/products/design-tools/ise-design-suite.html)
   - [Vivado](http://www.xilinx.com/products/design-tools/vivado.html)

  Each of these tools is available in a free "WebPACK" version.
* (Optional) An FPGA development board. (If you do not have access to a development board, you may still be able to test out your designs in simulation.)

For the quick start tutorial we will be using ISE and the (sadly discontinued) [Spartan-3E Starter Kit](http://www.xilinx.com/products/boards-and-kits/hw-spar3e-sk-us-g.html).

# Step 2: Acquire ReWire Source

Currently the only way to acquire ReWire's source is via GitHub. (Stable releases in tarball form will be coming soon.)

    $ git clone git@github.com:mu-chaco/ReWire.git

# Step 3: Build ReWire

Note that depending on your system configuration, the `cabal install` steps below may require administrative privileges.

    $ cd ReWire
    $ cabal configure
    $ cabal install --only-dependencies
    $ cabal install

If everything works correctly, you should now have an `rwc` binary somewhere in your path.

    $ which rwc
    /Users/me/Library/Haskell/bin/rwc