# Introduction to Linux

## 1 - The Linux Foundation

### Introduction to the Linux Foundation

The Linux Foundation is a non-profit consortium that promotes, protects, and advances Linux and collaborative development. It provides a neutral forum for collaboration and education by hosting collaborative projects, organizing events, and providing training and certification programs.

![Linux Foundation](images/linux.jpeg)

### Linux Distribution Families

A Linux distribution is a collection of software that includes the Linux kernel and additional software such as system libraries, tools, and applications. There are many different Linux distributions, each with its own unique features and characteristics. Some of the most popular Linux distribution families include:

- Debian: Known for its stability and package management system (Ubuntu, Linux Mint)
- Red Hat: Known for its enterprise features and support (Fedora, CentOS)
- Arch: Known for its simplicity and customization options (Arch Linux, Manjaro)
- SUSE: Known for its focus on enterprise and open-source software (openSUSE, SUSE Linux Enterprise)

![Linux Distribution Families](images/linux-distros.png)

### The Red Hat Family

Red Hat Enterprise Linux (RHEL) heads the family that includes CentOS, CentOS Stream, Fedora and Oracle Linux.

Fedora has a close relationship with RHEL and contains significantly more software than Red Hat's enterprise version. One reason for this is that a diverse community is involved in building Fedora, with many contributors who do not work for Red Hat. Furthermore, it is used as a testing platform for future RHEL releases.

We will use CentOS Stream and CentOS more often for activities, demonstrations, and labs because there is no cost to the end user, and there is a longer release cycle than for Fedora (which releases a new version every six months or so).

The basic version of CentOS is also virtually identical to RHEL, the most popular Linux distribution in enterprise environments. However, CentOS 8 has no scheduled updates after 2021. The replacement is CentOS 8 Stream. The difference between the two versions is CentOS Stream gets updates before RHEL, while CentOS gets them after. For most purposes this matters very little and not at all for this course. While there are alternatives to CentOS Stream that look more like the older CentOS, for this course we find CentOS 8 Stream works just fine.

Some of the key facts about the Red Hat distribution family are:

- Fedora serves as an upstream testing platform for RHEL.
- CentOS is a close clone of RHEL; in fact, CentOS has been part of Red Hat since 2014.
- A heavily patched version 4.18 kernel is used in RHEL/CentOS 8 Stream, while version 5.14 is used in RHEL/CentOS 9 Stream.
- It supports multiple hardware platforms.
- It uses dnf, the RPM-based package manager (covered in detail later) to install, update, and remove packages in the system.
- RHEL is widely used by enterprises which host their own systems.

### The SUSE Family

The relationship between SUSE (SUSE Linux Enterprise Server, or SLES) and openSUSE is similar to the one described between RHEL, CentOS, and Fedora.

We use openSUSE as the reference distribution for the SUSE family, as it is available to end users at no cost. Because the two products are extremely similar, the material that covers openSUSE can typically be applied to SLES with few problems.

Some of the key facts about the SUSE distribution family are:

- SUSE Linux Enterprise Server (SLES) is upstream for openSUSE.
- Kernel version 5.14 is used in openSUSE Leap 15.4.
- It uses the RPM-based zypper package manager (we cover it in detail later) to install, update, and remove packages in the system.
- It includes the YaST (Yet Another Setup Tool) application for system administration purposes.
- SLES is widely used in retail and many other sectors.

### The Debian Family

The Debian distribution is upstream for several other distributions, including Ubuntu. In turn, Ubuntu is upstream for Linux Mint and a number of other distributions. It is commonly used on both servers and desktop computers. Debian is a pure open source community project (not owned by any corporation) and has a strong focus on stability.

Debian provides by far the largest and most complete software repository to its users of any Linux distribution.

Ubuntu aims at providing a good compromise between long term stability and ease of use. Since Ubuntu gets most of its packages from Debian’s stable branch, it also has access to a very large software repository. For those reasons, we will use Ubuntu LTS (Long Term Support) as the reference to Debian family distributions for this course.

Some key facts about the Debian family are listed below:

- The Debian family is upstream for Ubuntu, and Ubuntu is upstream for Linux Mint and others.
- Kernel version 5.19 is used in Ubuntu 22.04 LTS.
- It uses the DPKG-based APT package manager (using apt, apt-get, apt-cache, etc., which we cover in detail later) to install, update, and remove packages in the system.
- Ubuntu has been widely used for cloud deployments.
- While Ubuntu is built on top of Debian and is GNOME-based under the hood, it differs visually from the interface on standard Debian, as well as other distributions.

## 2 - Linux philosophy and concepts

### Linux History

Linux is an open source computer operating system, initially developed on and for Intel x86-based personal computers. It has been subsequently ported to an astoundingly long list of other hardware platforms, from tiny embedded appliances to the world's largest supercomputers.

In this section, we follow the surprising history of how Linux evolved from a project of one Finnish college student, into a massive effort with an enormous impact on today's world.

Linus Torvalds was a student in Helsinki, Finland, in 1991, when he started a project: writing his own operating system kernel. He also collected together and/or developed the other essential ingredients required to construct an entire operating system with his kernel at the center. It wasn't long before this became known as the Linux kernel.

In 1992, Linux was re-licensed using the General Public License (GPL) by GNU (a project of the Free Software Foundation or FSF, which promotes freely available software), which enabled it to build a worldwide community of developers. By combining the kernel with other system components from the GNU project, numerous other developers created complete systems called Linux Distributions, which first appeared in the mid-90s.

The Linux distributions created in the mid-90s provided the basis for fully free (in the sense of freedom, not zero cost) computing and became a driving force in the open source software movement. In 1998, major companies like IBM and Oracle announced their support for the Linux platform and began major development efforts as well.

Today, Linux powers more than half of the servers on the Internet, the majority of smartphones (via the Android system, which is built on top of Linux), more than 90 percent of the public cloud workload, and all of the world’s most powerful supercomputers.

![Linux History](images/linux-history.png)

### Linux Philosophy

Every successful project or organization needs an implicit or explicit philosophy that frames its objectives and projects its growth path. This section contains a description of the philosophy adopted by the Linux community and how it has impacted Linux's amazing evolution.

Linux is constantly enhanced and maintained by a network of developers from all over the world collaborating over the Internet, with Linus Torvalds at the head. Technical skills, a desire to contribute, and the ability to collaborate with others are the only qualifications for participating.

Linux borrows heavily from the well-established family of UNIX operating systems. It was written to be a free and open source alternative; at the time, UNIX was designed for computers much more powerful than PCs, and furthermore, it was quite expensive.

Files are stored in a hierarchical filesystem, with the top node of the system being the root or simply "/". Whenever possible, Linux makes its components available via files or objects that look like files. Processes, devices, and network sockets are all represented by file-like objects and can often be worked with using the same utilities used for regular files. Linux is a fully multitasking (i.e., multiple threads of execution are performed simultaneously), multiuser operating system with built-in networking and service processes known as daemons in the UNIX world.

### Linux Community

Suppose that, as part of your job, you need to configure a Linux file server, and you run into some difficulties. If you are not able to figure out the answer yourself or get help from a co-worker, the Linux community might just save the day!

There are many ways to engage with the Linux community, even if you are not a developer:

- Post queries on relevant discussion forums.
- Subscribe to discussion threads.
- Join local Linux groups that meet in your area.

The Linux community is a far-reaching ecosystem consisting of developers, system administrators, users, and vendors who use many different forums to connect with one another. Among the most popular are:

- Internet Relay Chat (IRC) software (such as WeeChat, HexChat, Pidgin, and XChat)
- Online communities and discussion boards including Linux User Groups (both local and online)
- Many collaborative projects hosted on services such as GitHub and GitLab
- Newsgroups and mailing lists, including the Linux Kernel Mailing List
- Community events, e.g., Hackathons, Install Fests, Open Source Summits Embedded Linux Conferences, and many other conferences and get-togethers.

A portal to one of the most powerful online user communities can be found at linux.com. This site is hosted by The Linux Foundation and serves over one million unique visitors every month.

### Linux Distributions

So, what is a Linux distribution, and how does it relate to the Linux kernel?

The Linux kernel is the core of the operating system. A full Linux distribution consists of the kernel plus a number of other software tools for file-related operations, user management, and software package management. Each of these tools provides a part of the complete system. Each tool is often its own separate project, with its own developers working to perfect that piece of the system.

While the most recent Linux kernel (and earlier versions) can always be found in the Linux Kernel Archives, Linux distributions may be based on different kernel versions. For example, the very popular RHEL 8 distribution is based on the 4.18 kernel, which is not new, but is extremely stable, while the newer RHEL 9 distribution is based on the much later 5.14 kernel. Other distributions may move more quickly in adopting the latest kernel releases. It is important to note that the kernel is not an all-or-nothing proposition. For example, RHEL/CentOS has incorporated many of the more recent kernel improvements into their customized older versions, as have Ubuntu, openSUSE, Fedora, etc.

Examples of other essential tools and ingredients provided by distributions include the C/C++ and Clang compilers, the gdb debugger, the core system libraries applications need to link with in order to run, the low-level interface for drawing graphics on the screen, as well as the higher-level desktop environment, and the system for installing and updating the various components, including the kernel itself. And all distributions come with a rather complete suite of applications already installed.

![Linux Distributions](images/linux-kernel-distros.png)

The vast variety of Linux distributions are designed to cater to many different audiences and organizations according to their specific needs and tastes. However, large organizations, such as companies and governmental institutions, and other entities, tend to choose the major commercially-supported distributions from Red Hat, SUSE, and Canonical (Ubuntu).

CentOS and CentOS Stream are popular free (as in no cost) alternatives to Red Hat Enterprise Linux (RHEL) and are often used by organizations that are comfortable operating without paid technical support. Note that new versions of CentOS disappeared at the end of 2021 in favor of CentOS Stream. However, at least two new RHEL-derived substitutes, Alma Linux and Rocky Linux, have established a healthy foothold.

The RHEL variants, such as CentOS and AlmaLinux, are designed to be binary-compatible with RHEL; i.e., in most cases, binary software packages will install properly across the distributions.

Ubuntu and Fedora are widely used by developers and are also popular in the educational realm. Many commercial distributors, including Red Hat, Ubuntu, SUSE, and Oracle, provide long-term fee-based support for their distributions, as well as hardware and software certification. All major distributors provide update services for keeping your system primed with the latest security and bug fixes and performance enhancements, as well as provide online support resources.

![Linux Support](images/linux-services.png)

## 3 - Linux basics and system startup

### The Boot Process

The Linux boot process is the procedure for initializing the system. It consists of everything that happens from when the computer power is first switched on until the user interface is fully operational.

Having a good understanding of the steps in the boot process may help you with troubleshooting problems, as well as with tailoring the computer's performance to your needs.

On the other hand, the boot process can be rather technical, and you can start using Linux without knowing all the details.

![Linux Boot Process](images/TheBootProcess.png)

#### BIOS - First step

While Linux runs on many kinds of hardware, we will concentrate on the x86 family, which is the basis of almost all desktop and laptop PCs. Starting an x86-based Linux system involves a number of steps. When the computer is powered on, the Basic Input/Output System (BIOS) initializes the hardware, including the screen and keyboard, and tests the main memory. This process is also called POST (Power On Self Test).

The BIOS software is stored on a read-only memory (ROM) chip on the motherboard. After this, the remainder of the boot process is controlled by the operating system (OS).

![BIOS](images/bios.png)

#### Master Boot Record (MBR), EFI Partition and Boot Loader

Once the POST is completed, system control passes from the BIOS to the boot loader. The boot loader is usually stored on one of the system’s storage devices, such as a hard disk or SSD drive, either in the boot sector (for traditional BIOS/MBR systems) or the EFI partition (for more recent (Unified) Extensible Firmware Interface or EFI/UEFI systems). Up to this stage, the machine does not access any mass storage media. Then, information on the date, time, and the most important peripherals are loaded from the CMOS values (after a technology used for the battery-powered memory store, which allows the system to keep track of the date and time even when it is powered off).

A number of boot loaders exist for Linux; the most common ones are GRUB (for GRand Unified Boot loader), ISOLINUX (for booting from removable media), and DAS U-Boot (for booting on embedded devices/appliances). Most Linux boot loaders can present a user interface for choosing alternative options for booting Linux and even other operating systems that might be installed. When booting Linux, the boot loader is responsible for loading the kernel image and the initial RAM disk or filesystem (which contains some critical files and device drivers needed to start the system) into memory.

![Boot Loader](images/mbr.png)

#### Boot Loader in Action

The boot loader has two distinct stages:

For systems using the BIOS/MBR method, the boot loader resides at the first sector of the hard disk, also known as the Master Boot Record (MBR). The size of the MBR is just 512 bytes. In this stage, the boot loader examines the partition table and finds a bootable partition. Once it finds a bootable partition, it then searches for the second stage boot loader, for example GRUB, and loads it into RAM (Random Access Memory). For systems using the EFI/UEFI method, UEFI firmware reads its Boot Manager data to determine which UEFI application is to be launched and from where (i.e., from which disk and partition the EFI partition can be found). The firmware then launches the UEFI application, for example GRUB, as defined in the boot entry in the firmware's boot manager. This procedure is more complicated but more versatile than the older MBR methods.

The second stage boot loader resides under /boot. A splash screen is displayed, which allows us to choose which operating system (OS) and/or kernel to boot. After the OS and kernel are selected, the boot loader loads the kernel of the operating system into RAM and passes control to it. Kernels are almost always compressed, so the first job they have is to uncompress themself. After this, it will check and analyze the system hardware and initialize any hardware device drivers built into the kernel.

#### The initial RAM disk (initrd) or initial RAM filesystem (initramfs)

The initramfs filesystem image contains programs and binary files that perform all actions needed to mount the proper root filesystem, including providing the kernel functionality required for the specific filesystem that will be used, and loading the device drivers for mass storage controllers, by taking advantage of the udev system (for user device), which is responsible for figuring out which devices are present, locating the device drivers they need to operate properly, and loading them. After the root filesystem has been found, it is checked for errors and mounted.

The mount program instructs the operating system that a filesystem is ready for use and associates it with a particular point in the overall hierarchy of the filesystem (the mount point). If this is successful, the initramfs is cleared from RAM, and the init program on the root filesystem (/sbin/init) is executed.

init handles the mounting and pivoting over to the final real root filesystem. If special hardware drivers are needed before the mass storage can be accessed, they must be in the initramfs image.

![initramfs](images/initramfs.png)

#### Text Mode login

Near the end of the boot process, init starts a number of text-mode login prompts. These enable you to type your username, followed by your password, and to eventually get a command shell. However, if you are running a system with a graphical login interface, you will not see these at first.

The terminals which run the command shells can be accessed using the ALT key plus a function key. Most distributions start six text terminals and one graphics terminal starting with F1 or F2. Within a graphical environment, switching to a text console requires pressing CTRL-ALT + the appropriate function key (with F7 or F1 leading to the GUI).

Usually, the default command shell is bash (the GNU Bourne Again Shell), but there are a number of other advanced command shells available. The shell prints a text prompt, indicating it is ready to accept commands; after the user types the command and presses Enter, the command is executed, and another prompt is displayed after the command is done.

![Text Mode Login](images/text-mode-login.png)

### Kernel, init and Services

#### The Linux Kernel

The boot loader loads both the kernel and an initial RAM–based file system (initramfs) into memory, so it can be used directly by the kernel.

When the kernel is loaded in RAM, it immediately initializes and configures the computer’s memory and also configures all the hardware attached to the system. This includes all processors, I/O subsystems, storage devices, etc. The kernel also loads some necessary user space applications.

![Linux Kernel](images/kernel.png)

#### /sbin/init and Services

Once the kernel has set up all its hardware and mounted the root filesystem, the kernel runs /sbin/init. This then becomes the initial process, which then starts other processes to get the system running. Most other processes on the system trace their origin ultimately to init; exceptions include the so-called kernel processes. These are started by the kernel directly, and their job is to manage internal operating system details.

Besides starting the system, init is responsible for keeping the system running and for shutting it down cleanly. One of its responsibilities is to act when necessary as a manager for all non-kernel processes; it cleans up after them upon completion, and restarts user login services as needed when users log in and out, and does the same for other background system services.

Traditionally, this process startup was done using conventions that date back to the 1980s and the System V variety of UNIX. This serial process (called SysVinit) had the system pass through a sequence of runlevels containing collections of scripts that start and stop services. Each runlevel supported a different mode of running the system. Within each runlevel, individual services could be set to run, or to be shut down if running.

However, all major distributions have moved away from this sequential method of system initialization, although they usually can emulate many System V utilities for compatibility purposes. Next, we discuss the new methods, of which systemd has become dominant.

![init and Services](images/sbin.png)

#### Startup Alternatives

SysVinit viewed things as a serial process, divided into a series of sequential stages. Each stage required completion before the next could proceed. Thus, startup did not easily take advantage of the parallel processing that could be done with the multiple processors or cores found on modern systems.

Furthermore,  starting up and rebooting were seen as relatively rare events; exactly how long they took was not considered important. This is no longer true, especially with mobile devices and embedded Linux systems. Some modern methods, such as the use of containers, can require almost instantaneous startup times. Thus, systems now require methods with faster and enhanced capabilities. Finally, the older methods required rather complicated startup scripts, which were difficult to keep universal across distribution versions, kernel versions, architectures, and types of systems. The two main alternatives developed were:

**Upstart**

- Developed by Ubuntu and first included in 2006
- Adopted in Fedora 9 (in 2008) and in RHEL 6 and its clones

**systemd**

- Adopted by Fedora first (in 2011)
- Adopted by RHEL 7 and SUSE
- Replaced Upstart in Ubuntu 16.04

While the migration to systemd was rather controversial, it has been adopted by all major distributions, and so we will not discuss the older System V method or Upstart, which has become a dead end. Regardless of how one feels about the controversies or the technical methods of systemd, almost universal adoption has made learning how to work on Linux systems simpler, as there are fewer differences among distributions. We enumerate systemd features next.

#### systemd Features

Systems with systemd start up faster than those with earlier init methods. This is largely because it replaces a serialized set of steps with aggressive parallelization techniques, which permits multiple services to be initiated simultaneously.

Complicated startup shell scripts are replaced with simpler configuration files, which enumerate what has to be done before a service is started, how to execute service startup, and what conditions the service should indicate have been accomplished when startup is finished. One thing to note is that /sbin/init now just points to /lib/systemd/systemd; i.e. systemd takes over the init process.

One systemd command (systemctl) is used for most basic tasks. While we have not yet talked about working at the command line, here is a brief listing of its use:

- Starting, stopping, restarting a service (using httpd, the Apache web server, as an example) on a currently running system:

```bash
    sudo systemctl start|stop|restart httpd.service
```

- Enabling or disabling a system service from starting up at system boot:

```bash
    sudo systemctl enable|disable httpd.service
```

- Checking on the status of a service:

```bash
    sudo systemctl status httpd.service
```

In most cases, the .service can be omitted. There are many technical differences with older methods that lie beyond the scope of our discussion.

![systemd](images/systemd.png)

### Linux Filesystem Basics

#### Linux Filesystems

Libraries separate books and other media into multiple sections; this organization will depend on the subject matter, audience, media type, and frequency of retrieval. The same concept applies to a filesystem, which is the embodiment of a method of storing and organizing arbitrary collections of data in a human-usable form.

Different types of filesystems supported by Linux:

- Conventional disk filesystems: ext3, ext4, XFS, Btrfs, JFS, NTFS, vfat, exfat, etc.
- Flash storage filesystems: ubifs, jffs2, yaffs, etc.
- Database filesystems
- Special purpose filesystems: procfs, sysfs, tmpfs, squashfs, debugfs, fuse, etc.

#### Partitions and Filesystems

A partition is a  dedicated subsection of physical storage media.  Historically this meant a physically contiguous portion of a hard disk; today’s storage devices can be more complicated, but we still think of a partition as a fixed area to be treated as a whole.

A filesystem is just a method of storing and accessing files.

One can think of a partition as a container in which a filesystem resides. However, in some circumstances, a filesystem can span more than one partition if one uses symbolic links, which we will discuss much later.

Make a table comparison between filesystems in Windows and Linux.

|                              | WINDOWS                | LINUX                         |
|------------------------------|------------------------|-------------------------------|
| **Partition**                | Disk1, Disk2, etc.     | /dev/sda1, /dev/sdb1, etc.    |
| **Filesystem**               | NTFS, FAT32, exFAT     | ext3, ext4, XFS, Btrfs, etc.  |
| **Mount point**              | C:, D:, etc.           | /, /home, /var, etc.          |
| **Base folder**              | C:\                    | /                             |
| **Path separator**           | \                      | /                             |

#### Filesystem Hierarchy Standard (FHS)

Linux systems store their important files according to a standard layout called the Filesystem Hierarchy Standard (FHS), which has long been maintained by the Linux Foundation. For more information, take a look at the following document: "Filesystem Hierarchy Standard" created by LSB Workgroup. Having a standard is designed to ensure that users, administrators, and developers can move between distributions without having to re-learn how the system is organized.

Linux uses the ‘/’ character to separate paths (as sis UNIX unlike Windows, which uses ‘\’) and does not have drive letters. Multiple drives and/or partitions are mounted as directories in the single filesystem. Removable media such as USB drives and CDs, and DVDs will show up as mounted at /run/media/yourusername/disklabel for recent Linux systems or under /media for older distributions. For example, if your username is student, a USB pen drive labeled FEDORA might end up being found at /run/media/student/FEDORA, and a file README.txt on that disc would be at /run/media/student/FEDORA/README.txt.

![FHS](images/dirtree.jpg)

All Linux filesystem names are case-sensitive, so /boot, /Boot, and /BOOT represent three different directories (or folders). Many distributions distinguish between core utilities needed for proper system operation and other programs, and place the latter in directories under /usr (think user). To get a sense for how the other programs are organized, find the /usr directory in the diagram from the previous page and compare the subdirectories with those that exist directly under the system root directory (/).

### Linux Distribution Installation

Determining which Linux distribution to deploy requires thoughtful planning. The figure shows some, but not all, choices. Note that many embedded Linux systems use custom-crafted contents rather than Android or Yocto.

![Linux Distribution Installation](images/choose-distros.png)

The partition layout is best decided at the time of installation; it can be difficult to change later. While Linux systems handle multiple partitions by mounting them at specific points in the filesystem, and you can always modify the design later, it is always easier to try and get it right to begin with.

![Partition Layout](images/partitions-planning.png)

Nearly all Linux distribution installers provide a reasonable default layout, with either all space dedicated to normal files on one big partition and a smaller swap partition or with separate partitions for some space-sensitive areas like /home and /var. You may need to override the defaults and do something different if you have special needs or if you want to use more than one disk.

All installations include the bare minimum software for running a Linux distribution.

Distributions also provide options for adding categories of software. Common applications (such as the Firefox web browser and LibreOffice office suite), developer tools (like the vi and emacs text editors, which we will explore later in this course), and other popular services (such as the Apache web server tools or MySQL database) are usually included. In addition, for any system with a graphical desktop, a chosen desktop (such as GNOME or KDE) is installed by default.

Modern distributions tend to do a simple and quick install first and then let you make these choices once the system is running in at least some basic fashion. In earlier times, there were a lot of choices to make during first installation, which could be intimidating and confusing to a new user, and also make the install take a much longer time.

All installers set up some initial security features on the new system. One basic step consists of setting the password for the superuser (root) and setting up an initial user. In some cases (such as with Fedora and Ubuntu), only an initial user is set up; direct root login is not configured, and root access requires logging in first as a normal user and then using sudo, as we will describe later. Some distributions will also install more advanced security frameworks, such as SELinux or AppArmor. For example, all Red Hat-based systems, including Fedora and CentOS, always use SELinux by default, and Ubuntu comes with AppArmor up and running.

## 4 - Graphical Interface

- GNOME is a popular desktop environment and graphical user interface that runs on top of the Linux operating system.
- The default display manager for GNOME is called gdm.
- The gdm display manager presents the user with the login screen, which prompts for the login username and password.
- Logging out through the desktop environment kills all processes in your current X session and returns to the display manager login screen.
- Linux enables users to switch between logged-in sessions.
- Suspending puts the computer into sleep mode.
- For each key task, there is generally a default application installed.
- Every user created in the system will have a home directory.
- The Places menu contains entries that allow you to access different parts of the computer and the network.
- Nautilus gives three formats to view files.
- Most text editors are located in the Accessories submenu.
- Each Linux distribution comes with its own set of desktop backgrounds.
- GNOME comes with a set of different themes which can change the way your applications look.

## 5 - System Configuration

### Installing and Updating Software

Each package in a Linux distribution provides one piece of the system, such as the Linux kernel, the C compiler, utilities for manipulating text or configuring the network, or for your favorite web browsers and email clients.

Packages often depend on each other. For example, because your email client can communicate using SSL/TLS, it will depend on a package that provides the ability to encrypt and decrypt SSL and TLS communication and will not install unless that package is also installed at the same time.

All systems have a lower-level utility that handles the details of unpacking a package and putting the pieces in the right places. However, most of the time, you will be working with a higher-level utility that knows how to download and install packages directly from the Internet and can manage dependencies and groups for you.

In this section, you will learn how to install and update software in Linux using the Debian packaging system (used by systems such as Ubuntu as well) and RPM packaging systems (which are used by both Red Hat and SUSE family systems). These are the main ones in use, although others work well for other distributions which have a smaller user base, such as Archlinux and Gentoo.

![Package Management](images/package-managemer.png)

**Debian Package Management**

Let’s look at the package management for the Debian family system.

dpkg is the underlying package manager for these systems. It can install, remove, and build packages. Unlike higher-level package management systems, it does not automatically download and install packages and satisfy their dependencies.

For Debian-based systems, the higher-level package management system is the Advanced Package Tool (APT) system of utilities. Generally, while each distribution within the Debian family uses APT, it creates its own user interface on top of it (for example, apt and apt-get, synaptic, gnome-software, Ubuntu Software Center, etc). Although apt repositories are generally compatible with each other, the software they contain generally is not. Therefore, most repositories target a particular distribution (like Ubuntu), and often software distributors ship with multiple repositories to support multiple distributions. Demonstrations are shown later in this section.

![Debian Package Management](images/debian-packaging.png)

**Red Hat Package Manager**

Red Hat Package Manager (RPM) is the other package management system popular on Linux distributions. It was developed by Red Hat and adopted by a number of other distributions, including Fedora, CentOS, SUSE/openSUSE, Oracle Linux, and others.

The higher-level package manager differs between distributions. Red Hat family distributions historically use RHEL/CentOS, and Fedora uses dnf, while SUSE family distributions such as openSUSE also use RPM but use the zypper interface.

![RPM Package Management](images/rhpm.png)

**OpenSUSE YaST Software Management**

The Yet another Setup Tool (YaST) software manager is similar to other graphical package managers. It is an RPM-based application. You can add, remove, or update packages using this application very easily. To access the YaST software manager:

1. Click Activities
2. In the Search box, type "YaST"
3. Click the YaST icon
4. Click Software Management

You can also find YaST by clicking on Applications > Other-YaST, which is a strange place to put it.

openSUSE’s YaST software management application is similar to the graphical package managers in other distributions. A demonstration of the YaST software manager is shown later in this section.

## 6 - Command Line

The UNIX operating system provides a set of basic commands used for performing system administration tasks. These commands are used to manage files and directories on the system and to carry out system administration tasks.

Basic commands are used to perform tasks such as:

- Navigating the file system.
- Creating, modifying, and deleting files and directories.
- Changing file and directory permissions.
- Viewing file contents.
- Compressing and decompressing files.
- Copying, moving, and renaming files and directories.
- Searching for files and directories.
- Displaying system information.

### Navigating the File System

The `pwd` command is used to display the current working directory. The working directory is the directory where the user is located when they log into the system.

```bash
pwd
```

The `cd` command is used to change directories. The `cd` command is used to move around the file system. To change to the system's root directory, use the `cd` command followed by a slash (/).

```bash
# Change to the system's root directory
cd /
```

The `ls` command is used to display the contents of a directory. The `ls` command lists the files and directories within a directory. To show hidden files and directories, use the `ls` command followed by the `-a` option.

```bash
# Display the contents of the current directory
ls
# Display the contents of the current directory, including hidden files and directories
ls -a
```

![Navigating the File System](images/root-directories.png)

### Creating, Modifying, and Deleting Files and Directories

The `touch` command is used to create an empty file. The `touch` command creates an empty file in the current directory. If the file already exists, it updates the file's modification date.

```bash
touch file
```

The `mkdir` command is used to create a directory. The `mkdir` command creates a directory in the current directory. If the directory already exists, an error message is displayed.

```bash
mkdir directory
```

The `rm` command is used to delete a file or directory. The `rm` command deletes a file or directory in the current directory. If the file or directory does not exist, an error message is displayed.

```bash
# Delete a file
rm file
# Delete a directory
rm -r directory
```

### Changing File and Directory Permissions

The `chmod` command is used to change the permissions of a file or directory. The `chmod` command changes the permissions of a file or directory in the current directory. Permissions are specified using an octal number.

The octal number is composed of three digits, representing the permissions of the owner, the group, and other users. Each digit consists of three bits, representing read, write, and execute permissions.

```bash
# Change the permissions of a file to read and write for the owner, and read-only for the group and other users
chmod 644 file
# Change the permissions of a directory to read, write, and execute for the owner, and read and execute for the group and other users
chmod 755 directory
```

### Viewing File Contents

The `cat` command is used to display the contents of a file. The `cat` command shows the contents of a file on the standard output. If the file is very large, the `cat` command will display the file contents on the screen.

```bash
cat file
```

The `more` command is used to display file contents page by page. The `more` command shows the contents of a file page by page on the standard output. If the file is very large, the `more` command will display the file contents page by page.

```bash
more file
```

The `less` command is used to display file contents page by page. The `less` command shows the contents of a file page by page on the standard output. If the file is very large, the `less` command will display the file contents page by page.

```bash
less file
```

### Compressing and Decompressing Files

The `gzip` command is used to compress a file. The `gzip` command compresses a file in the current directory. The `gzip` command creates a compressed file with the `.gz` extension.

```bash
gzip file
```

The `gunzip` command is used to decompress a file. The `gunzip` command decompresses a file in the current directory. The `gunzip` command creates an uncompressed file without the `.gz` extension.

```bash
gunzip file.gz
```

The `tar` command is used to create a tar archive. The `tar` command creates a tar archive in the current directory. The `tar` command creates a tar archive with the specified files and directories.

```bash
tar -cvf archive.tar file1 file2 directory
```

The `tar` command is also used to extract a tar archive. The `tar` command extracts a tar archive in the current directory. The `tar` command extracts a tar archive with the specified files and directories.

```bash
tar -xvf archive.tar
```

### Copying, Moving, and Renaming Files and Directories

The `cp` command is used to copy a file or directory. The `cp` command copies a file or directory in the current directory. The `cp` command creates a copy of the file or directory with the specified name.

```bash
# Copy a file
cp file1 file2
# Copy a directory
cp -r directory1 directory2
```

The `mv` command is used to move a file or directory. The `mv` command moves a file or directory in the current directory. The `mv` command moves the file or directory with the specified name.

```bash
# Move a file
mv file1 file2
# Move a directory
mv directory1 directory2
```

The `mv` command is also used to rename a file or directory. The `mv` command renames a file or directory in the current directory. The `mv` command renames the file or directory with the specified name.

```bash
# Rename a file
mv file1 file2
# Rename a directory
mv directory1 directory2
```

### Searching for Files and Directories

The `find` command is used to search for files and directories. The `find` command searches for files and directories in the file system. The `find` command searches for files and directories that match the specified criteria.

```bash
# Search for files and directories in the current directory
find . -name file
# Search for files and directories in the current directory and subdirectories
find . -name file -type f
```

Virtual terminals (VT) in Linux are consoles, or command line terminals that use the connected monitor and keyboard.
Different Linux distributions start and stop the graphical desktop in different ways.
A terminal emulator program on the graphical desktop works by emulating a terminal within a window on the desktop.
The Linux system allows you to either log in via text terminal or remotely via the console.
When typing your password, nothing is printed to the terminal, not even a generic symbol to indicate that you typed.
The preferred method to shut down or reboot the system is to use the shutdown command.
There are two types of pathnames: absolute and relative.
An absolute pathname begins with the root directory and follows the tree, branch by branch, until it reaches the desired directory or file.
A relative pathname starts from the present working directory.
Using hard and soft (symbolic) links is extremely useful in Linux.
cd remembers where you were last, and lets you get back there with cd -.
locate performs a database search to find all file names that match a given pattern.
find locates files recursively from a given directory or set of directories.
find is able to run commands on the files that it lists, when used with the -exec option.
touch is used to set the access, change, and edit times of files, as well as to create empty files.
The Advanced Packaging Tool (apt) package management system is used to manage installed software on Debian-based systems.
You can use the dnf command-line package management utility for the RPM-based Red Hat Family Linux distributions.
The zypper package management system is based on RPM and used for openSUSE.

```bash
# Search for text within files in the current directory
grep text file
# Search for text within files in the current directory and subdirectories
grep -r text directory
```

### System Information

The `date` command is used to display the system date and time. The `date` command shows the system date and time on the standard output. The `date` command displays the date and time in the specified format.

```bash
date
```

The `who` command is used to display the users logged into the system. The `who` command shows the users logged into the system on the standard output. The `who` command displays the users logged into the system with the specified information.

```bash
who
```

The `ps` command is used to display the processes running on the system. The `ps` command shows the processes running on the system on the standard output. The `ps` command displays the processes running on the system with the specified information.

```bash
ps
```

### Redirection and Pipelines

Redirection is used to change the input and output of commands. Redirection is used to send the output of a command to a file and to send the input of a command from a file.

```bash
# Redirect the output of a command to a file
command > file
# Redirect the input of a command from a file
command < file
```

Pipelines are used to combine the output of one command with the input of another command. Pipelines are used to send the output of one command to the input of another command.

```bash
# Combine the output of one command with the input of another command
command1 | command2
```

### Locating applications

Depending on the specifics of your particular distribution's policy, programs and software packages can be installed in various directories. In general, executable programs and scripts should live in the /bin, /usr/bin, /sbin, /usr/sbin directories, or somewhere under /opt. They can also appear in /usr/local/bin and /usr/local/sbin, or in a directory in a user's account space, such as /home/student/bin.

One way to locate programs is to employ the which utility. For example, to find out exactly where the diff program resides on the filesystem:

```bash
which application
```

If which does not find the program, whereis is a good alternative because it looks for packages in a broader range of system directories:

```bash
whereis application
```

### Environment Variables

Environment variables are used to store information about the system environment. Environment variables are used to store information about the system, such as the username, working directory, and system configuration.

```bash
# Display the value of an environment variable
echo $variable
# Assign a value to an environment variable
variable=value
```

### Steps for Setting Up and Running sudo

If your system does not already have sudo set up and enabled, you need to do the following steps:

You will need to make modifications as the administrative, or superuser, root. While sudo will become the preferred method of doing this, we do not have it set up yet, so we will need to use su instead. At the command line prompt, type su and press Enter. You will then be prompted for the root password, so enter it and press Enter. You will notice that nothing is printed; this is so others cannot see the password on the screen. You should end up with a different looking prompt, often ending with ‘#’. For example:

```bash
su Password:
# 
```

Now, you need to create a configuration file to enable your user account to use sudo. Typically, this file is created in the /etc/sudoers.d/ directory with the name of the file the same as your username. For example, for this demo, let’s say your username is student. After doing step 1, you would then create the configuration file for student by doing this:

```bash
echo "student ALL=(ALL) ALL" > /etc/sudoers.d/student
```

Finally, some Linux distributions will complain if you do not also change permissions on the file by doing:

```bash
chmod 440 /etc/sudoers.d/student
```

That should be it. For the rest of this course, if you use sudo you should be properly set up. When using sudo, by default you will be prompted to give a password (your own user password) at least the first time you do it within a specified time interval. It is possible (though very insecure) to configure sudo to not require a password or change the time window in which the password does not have to be repeated with every sudo command.

### Turning off the graphical interface

If you are running a graphical interface and want to turn it off, you can do so by running the following command:

```bash
sudo systemctl stop gdm
```

This will stop the graphical interface and return you to the command line. To start the graphical interface again, run the following command:

```bash
sudo systemctl start gdm
```

### Wildcards and matching filenames

Wildcards are used to match filenames. Wildcards are used to match filenames in the file system. Wildcards are used to match filenames that contain a specified pattern.

| Wildcard | Description |
|----------|-------------|
| *        | Matches zero or more characters |
| ?        | Matches a single character |
| [ ]      | Matches a range of characters |
| [! ]     | Matches a character not in the range |

### To find and locate files

find is an extremely useful and often-used utility program in the daily life of a Linux system administrator. It recurses down the filesystem tree from any particular directory (or set of directories) and locates files that match specified conditions. The default pathname is always the present working directory.

For example, administrators sometimes scan for potentially large core files (which contain diagnostic information after a program fails) that are more than several weeks old in order to remove them.

It is also common to remove files non-essential or outdated files in /tmp (and other volatile directories, such as those under /var/cache/ containing dispensable cached files) that have not been accessed recently. Many Linux distributions use shell scripts that run periodically (through cron usually) to perform such house cleaning.

```bash
# Search for files and directories in the current directory
find . -name file
# Search for files and directories in the current directory and subdirectories
find . -name file -type f
```

The `locate` command is used to search for files and directories in the file system. The `locate` command searches for files and directories that match the specified criteria.

```bash
# Search for files and directories in the file system
locate file
```

The {} (squiggly brackets) is a placeholder that will be filled with all the file names that result from the find expression, and the preceding command will be run on each one individually.

Please note that you have to end the command with either ‘;’ (including the single-quotes) or \;. Both forms are fine.

One can also use the -ok option, which behaves the same as -exec, except that find will prompt you for permission before executing the command. This makes it a good way to test your results before blindly executing any potentially dangerous commands.

![Locate Files](images/find-command.png)

### Basic package management

The Advanced Packaging Tool (apt) is the underlying package management system that manages software on Debian-based systems. While it forms the backend for graphical package managers, such as the Ubuntu Software Center and synaptic, its native user interface is at the command line, with programs that include apt (or apt-get) and apt-cache.

dnf is the open source command-line package-management utility for the RPM-compatible Linux systems that belong to the Red Hat family.

zypper is the package management system for the SUSE/openSUSE family and is also based on RPM. zypper also allows you to manage repositories from the command line. zypper is fairly straightforward to use and closely resembles dnf.

![Package Management](images/package-management-system.png)

|Operation | Debian-based | Red Hat-based | SUSE-based |
|----------|---------------|---------------|------------|
|Install package | sudo apt install package | sudo dnf install package | sudo zypper install package |
|Remove package | sudo apt remove package | sudo dnf remove package | sudo zypper remove package |
|Update package | sudo apt update package | sudo dnf update package | sudo zypper update package |
|Search package | sudo apt search package | sudo dnf search package | sudo zypper search package |
|List installed packages | dpkg -l | rpm -qa | zypper se --installed-only |
|Update entire system | sudo apt update && sudo apt upgrade | sudo dnf update | sudo zypper update |
|Show package information | apt show package | dnf info package | zypper info package |

### Summary

- Virtual terminals (VT) in Linux are consoles, or command line terminals that use the connected monitor and keyboard.
- Different Linux distributions start and stop the graphical desktop in different ways.
- A terminal emulator program on the graphical desktop works by emulating a terminal within a window on the desktop.
- The Linux system allows you to either log in via text terminal or remotely via the console.
- When typing your password, nothing is printed to the terminal, not even a generic symbol to indicate that you typed.
- The preferred method to shut down or reboot the system is to use the shutdown command.
- There are two types of pathnames: absolute and relative.
  - An absolute pathname begins with the root directory and follows the tree, branch by branch, until it reaches the desired directory or file.
  - A relative pathname starts from the present working directory.
- Using hard and soft (symbolic) links is extremely useful in Linux.
- `cd` remembers where you were last, and lets you get back there with cd -.
- `locate` performs a database search to find all file names that match a given pattern.
- `find` locates files recursively from a given directory or set of directories.
- `find` is able to run commands on the files that it lists, when used with the -exec option.
- `touch` is used to set the access, change, and edit times of files, as well as to create empty files.
- The Advanced Packaging Tool (apt) package management system is used to manage installed software on Debian-based systems.
- You can use the dnf command-line package management utility for the RPM-based Red Hat Family Linux distributions.
The zypper package management system is based on RPM and used for openSUSE.

|Command | Description | Example |
|--------|-------------|---------|
|`pwd` | Display the current working directory | `pwd` |
|`cd` | Change directories | `cd /` |
|`ls` | List files and directories | `ls` |
|`touch` | Create an empty file | `touch file` |
|`mkdir` | Create a directory | `mkdir directory` |
|`rm` | Remove a file or directory | `rm file` |
|`chmod` | Change the permissions of a file or directory | `chmod 644 file` |
|`cat` | Display the contents of a file | `cat file` |
|`more` | Display file contents page by page | `more file` |
|`less` | Display file contents page by page | `less file` |
|`gzip` | Compress a file | `gzip file` |
|`gunzip` | Decompress a file | `gunzip file.gz` |
|`tar` | Create a tar archive | `tar -cvf archive.tar file1 file2 directory` |
|`tar` | Extract a tar archive | `tar -xvf archive.tar` |
|`cp` | Copy a file or directory | `cp file1 file2` |
|`mv` | Move a file or directory | `mv file1 file2` |
|`mv` | Rename a file or directory | `mv file1 file2` |
|`find` | Search for files and directories from a directory | `find . -name file` |
|`locate` | Search for files and directories throughout a prebuilt database | `locate file` |
|`grep` | Search for text within files | `grep text file` |
|`date` | Display the system date and time | `date` |
|`who` | Display the users logged into the system | `who` |
|`ps` | Display the processes running on the system | `ps` |
|`echo` | Display the value of an environment variable | `echo $variable` |
|`variable=value` | Assign a value to an environment variable | `variable=value` |

## 7 - Linux documentation