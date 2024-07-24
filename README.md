# Introduction to Linux

## Chapter 1 - The Linux Foundation

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

## Chapter 2 - Linux philosophy and concepts

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

## Chapter 3 - Linux basics and system startup

### The Boot Process

### Kernel, init and Services

### Linux Filesystem Basics

### Linux Distribution Installation

## Chapter 4 - Graphical Interface