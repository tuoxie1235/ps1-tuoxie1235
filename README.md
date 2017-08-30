# CSCI 1103 Computer Science I Honors

### Fall 2017

------

## Problem Set 1 : Getting Started

### (10 Points)

### Due Tuesday September 5, 2017, Midnight

This is a warm-up assignment that is intended to help you with your system setup and with breaking the ice with coding in OCaml. There are 3 parts: invitations, system setup and then 4 simple coding problems.



------

# Part 0: Invitations

You're going to receive a few invitations via email. 

1. To take a short [survey](https://www.surveymonkey.com/r/PDCBH8C);
2. To join the class [Piazza forum](https://piazza.com/class/j6pep61xju0m5); this is the best place to pose and answer class-related questions.  It's OK to publicly post short snippets of code but it's not OK to post too much code.
3. You'll need to create an account on [Github](https://github.com/). It's free. We'll be using Github Classroom for distribution and collection of material. When you create your account, be sure to fill in the **Name** field with the same version of your name recognized by BC (but omitting your middle initial). Once you've created your account, send your Github ID to the instructor via email, we'll tell Github to send you an email inviting you to join the class Gitbub organization [@BC-CSCI1103](https://github.com/BC-CSCI1103).

Please take care of these 3 items as soon as possible.

------

# Part 1: Configuring your Work Environment

In this course, we'll be developing code in a Unix environment. There will be a bit of a learning curve, but learning Unix (and git) early on will pay dividends down the road. There are two options for using the Unix operating system on your computer. You can use a pre-built virtual machine (VM) running the Ubuntu version of Unix or, if you're using a Mac, you can use the native MacOS, Apple's version of Unix. If you're a Windows user it will be a lot easier to use the pre-built VM. If you're a Mac user, you can choose between using the pre-built VM or you can use MacOS directly. This last option requires a fair bit of setup but once it's configured it's the simplest setup in terms of day-to-day work flow.

### Work Flow

The basic flow of work for the course will be the following:

1. You'll receive an email with a link to a git problem set repository, say **ps2**. The linked repository, the "master" repo for your project, will be hosted on Github and is shared between you and course staff. You'll clone the repository to your local computer either by selecting the link in the email or by using the `git clone` command in the Unix shell on your local machine, cloning the repository to an appropriately placed directory on your computer:

   ```
   > cd /pathto/cs1103/
   > git clone link-to-ps2-master-repo-on-github
   ...
   ```

   The repository will have a writeup in the form of a **README.md** file and it will usually have a Makefile as well as some OCaml "harness" code — code that isn't finished.

2. You'll use the [Atom](https://atom.io/) text editor to develop your solution and you'll usually use the Unix `make` command to test your solution. As you work on your code, you should use Unix's `git` commands `git add` and `git commit` to commit your work to your local git repository periodically.

3. When your work is ready to submit for grading, you'll transfer your local working repository to your master problem set repository on the Github course website. This upload is done easily with the `git push` command:

   ```
   > cd /pathto/cs1103/ps2
   > git push
   ...
   ```

   After reviewing your work, course staff will leave comments and record your problem set score in the local BC [gradebook on Canvas](https://bostoncollege.instructure.com/courses/1579254/gradebook).

###Programming Environment

If you have sufficient storage space available on your computer or you're using a Windows machine and want to avoid a lot of configuration hassle, you can simply use the pre-built Virtual Box virtual machine linked below. That VM has OCaml installed along with the Atom text editor and various helpful tools. See the steps below.

If you'd prefer not to install a large (~4GB VM) or experience VM apartheid, you can follow the steps below. Note that these particular steps are explained for MacOS. If you are a Windows user, you can probably translate these instructions to equivalent ones that work for your system. If you need help, let us know.

------

### Virtual Box Install for Windows or MacOS

We've pre-loaded an Ubuntu-based virtual machine image with all of the software you'll need in this course and several text editors and development environments. Download, install, and launch the virtual machine:

1. Download and install Oracle's [Virtual Box](https://www.virtualbox.org/wiki/Downloads) application for your operating system.

2. Download the pre-built virtual linux machine: [cs1103.ova](https://drive.google.com/file/d/0BxJFS_QTSzWtenNGUHp2Q3MtZWM/view?usp=sharing).

3. Import the VM into Virtual Box:

   1. Run VirtualBox.
   2. Select File => Import Appliance.
   3. Select **Open Appliance**, and choose the **.ova** file you just downloaded. Then select **continue** and then select **import**. This step takes some time.

4. Run the VM:

   1. Select the **cs1103** VM from the list.
   2. Click **Start**.

After a bit of startup activity, you should see a linux desktop window adorned with camels walking on a beach. If you do, you're good to go, this will be your programming environment for CS1103. Use the controls found in the lower left-hand corner of the screen to perform these tasks:

1. Launch a web browser.

2. Open a terminal window, type **ls -l**.

3. Open an **Atom** window and create a file with the `.ml` extension.

All done, scroll down to the subsection **Wrapping Up** below.

---

### MacOS Native Programming Environment Install (UNDER CONSTRUCTION)

You're welcome to use whatever text/code editor you'd like. Following the instructions here will leave you with a very serviceable Atom-based coding environment.

1. In the Finder, navigate to *Applications* -> *Utilities*. Drag the **Terminal** icon to your dock, you'll be using it all the time. Fire-up the Terminal app by double-clicking its icon. The window that you see is called a **unix shell** or **terminal shell**. Type `ls` to see the files in your home directory. You're going to need a number of different unix commands, especially **make** and **git**. You can simply type these commands in the unix shell to see if they're pre-installed. If these commands are already installed, press on. If not, you'll need to install them. 

   If you're running MacOS Sierra (or better), you'll be prompted to install these commands simply by typing them into the unix shell. If you're running an older version of MacOS, you may want to consider upgrading your OS. If you don't want to upgrade, you can install the unix command line tools by installing Xcode from the App Store.

   Before going any further, use the unix shell to make a folder to house your work for this course. Type:

   ```
   > cd
   > mkdir cs1103
   > cd cs1103
   > mkdir lib
   ```

Software is usually bundled and delivered in what are called **packages**. We're going to be using 3 different **package managers**: we'll use [Homebrew](https://brew.sh/) to install MacOS packages, we'll use OCaml's package manager [OPAM](https://opam.ocaml.org/) to install and manage OCaml packages and we'll use a package manager within the Atom text editor to customize Atom for working with OCaml code.

2. Download and install the [Homebrew](https://brew.sh/) package manager by cutting and pasting the following command:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

into the terminal shell.

3. OCaml's package manager, [OPAM](https://opam.ocaml.org/), simplifies the installation of various tools used in the OCaml ecosystem. Of course OPAM itself needs to be installed (!). This can be done using Homebrew simply by typing:

```
> brew install opam
...
```

In the ellipses above, we mean, follow (agree with) the script. This will install all of the OCaml resources, create a `.opam/` directory in your home directory and set appropriate MacOS environment variables. Installing OPAM also installs OCaml — the compilers, libraries and the interactive interpreter (REPL), etc. To finish the installation and configuration of OPAM type:

```
> opam init
> eval `opam config env`
```

**NB**: the backquotes.

4. Fire-up the OCaml REPL to confirm that OCaml is working and has been correctly placed in your PATH by running it from the unix shell:

```
> ocaml
```

You should see something like:

```
OCaml version 4.05.0

#
```

This is OCaml's Read-eval-print-loop (REPL). You can type in arithmetic expressions as you like, ending them with two consecutive semi-colons `;;`. Type `Ctrl-d` to exit the REPL.

6. Next, we'll use OPAM to install a custom graphics library, called [Universe](http://pllab.is.ocha.ac.jp/~asai/Universe/), that we'll be using in the course. Type:

```
> opam depext conf-gnomecanvas.2
...
> opam install universe
...
```

7. Next, we'll install three OPAM packages, two that will be used to customize the editor and one to support building our OCaml applications.

```
> opam install merlin
...
> opam install ocp-indent
...
> opam install ocaml-makefile
...
```

If you have trouble with any of the above, get in touch with course staff.

### Installing and Customizing the Atom Editor

Google "download atom" and follow the installation steps. If you're successful, you should be able to fire up the atom editor either by clicking the icon or better yet from the unix command shell by typing:

```
> atom .
```

If this doesn't work for you, see a course staffer. 



Atom has a fairly well developed package system. In atom type `Cmd-,` to open the **Settings** tab. Then select **Install**. From there, you're going to want to install at least 5 packages:

1. linter (you should see version 2.2.0 or better)
2. language-ocaml (1.9.5)
3. ocaml-merlin (0.14.4)
4. ocaml-indent (0.6.1)
5. Repl (0.5.0) (scroll down …)

### Customizing Merlin

Merlin is a package that supports editing of OCaml code.  The code below works

Place the following text in your .merlin file:

```
> cd
> touch .merlin
> echo "PKG universe" >> .merlin
> echo "B /Users/muller/lib/*" >> .merlin
```

### Setting up OCaml REPL for Atom

Now that the Repl package is installed you can run an OCaml REPL within Atom. Read the short writeup on the Repl package to learn the commands. Three useful ones are:

- `Ctrl-y Ctrl-o` fires up an OCaml REPL;
- `Ctrl-y Ctrl-s` transfers highlighted selection from a `.ml` tab to the Repl for evaluation;
- `Ctrl-y Ctrl-f` transfers an entire file to the Repl.

Atom's **Repl** package is a little rough around the edges. In Atom, open the Settings tab; select Packages, then search for the Repl package; select View Code

Once you have the code for the package open:

1. Replace the contents of your `Repls/replOcaml.js` with 

   ```ocaml
   module.exports =
   cmd = atom.config.get('Repl.ocaml')
   prompt = ""
   args = ["-I", "/Users/muller/lib/ocaml"]
   endSequence = ";;\n"
   ```

2. ​

3. the changes from [replOcaml.js](https://github.com/314eter/REPL-Nodejs/blob/master/Repls/replOcaml.js).

4. Then, replace the entirety of your `lib/Repl-View/ReplView.coffee` file from [ReplView.coffee](https://github.com/314eter/REPL-Nodejs/blob/master/lib/Repl-View/ReplView.coffee).

5. Close the window with the repl source code since you don't need it anymore.

6. Lastly, restart atom and launch repl and ocamlmerlin shouldn't lint repl anymore.


---

### Wrapping Up

Whether you did a native install or installed the VM, your workflow should be the same:

1. You'll use Atom to edit your code; remember to use `git add` and `git commit` periodically.
2. When you think your code is well-formed you'll use the unix `make` command to attempt to build an executable. If you have errors, head back into Atom.
3. When your code is working (and looks great!) you can submit your work for grading using `git push`.

**Notes**:

1. The packages installed in atom should make atom fairly savvy about OCaml code: syntax highlighting, linting, etc. Fire up the editor and open a tab containing the contents of an OCaml source file — a file ending with the suffix `.ml`. Make a deliberate type error as in

   ```
   let x = 2 +. 3
   ```

   Here you're attempting to combine two integers with a floating point operator. You should see red dots signaling a type error. Replace the bad operator `+.` with the integer flavor `+` and you should see green. Red means syntax or type error, yellow means warning, green means you're good to go. If atom isn't behaving this way, something is wrong — see a staffer.

2. The unix **make** command builds (i.e., compiles and links) executable code by following build instructions laid out in a local **Makefile**. All of the projects for this course will be distributed with working Makefiles. 

   ​

   ---

# Part 2: Coding Problems

Your **ps1** repository contains two items: this **README.md** file and a **harness** directory. The **harness** directory contains two files: **Makefile** and **problemset1.ml**. The former is used for building your application, the latter contains part of the OCaml program code making up your application. For now, your only concern is the **problemset1.ml** file, you won't need to modify the Makefile.

Use the unix **cd** command to change your working directory to the **harness** directory, then fire up the Atom editor:

```
> cd ps1/harness
> atom .
```

Open the **problemset1.ml** file by selecting it on the left. You'll see that it contains stub definitions for each of the names (i.e.,  `helloWorld`, `golden`, `hypotenuse` and `yellowCircle`). As you will eventually see, we'll specify these definitions along the lines of:

```ocaml
   val helloWorld : unit -> string
   val golden : unit -> float
   val hypotenuse : float -> float -> float
   
   val yellowCircle : unit -> unit            (* OPTIONAL *)
```

Your task in this problem set is to modify the stub definitions of these functions so that they work correctly. For example, scroll down to line 32 of **problemset1.ml**:

```ocaml
let helloWorld () : string = failwith "Problem 1 not implemented
```
Your job is to replace everything from `failwith` on to the right, to something that would yield the string "Hello World!". (It's super easy!)

Finally to some actual coding! There are three required problems and one optional problem. 



1. Implement the function

```ocaml
val helloWorld : unit -> string
```
The `helloWorld` function accepts no arguments and simply returns the string "Hello World!".



2. The golden ratio, aka *phi*, is computed by (1 + √ 5) / 2.0. Write an OCaml function

```ocaml
val golden : unit -> float
```
that accepts no arguments and returns the golden ratio. The pervasive library function `sqrt` can be used in computing the result.



3. Write an OCaml function

```ocaml
val hypotenuse : float -> float -> float
```
that accepts a two floating point numbers `base` and `height` giving the base and height of a right-triangle and uses the Pythagorean Theorem to return the length of the hypotenuse.



4. The function `yellowCircle` should use the **Universe** library to create picture with a large yellow circle in the display. The current definition is:

```ocaml
let width = 600
let height = width
let radius = width / 2

let draw ignore = Image.circle 300.0 Color.green

let yellowCircle() : unit =  big_bang ()
                  ~name: "Yellow Circle"
                  ~to_draw: draw
                  ~width: width
                  ~height: height`
```

Modify the definition to draw a yellow circle instead.


![img](http://www.cs.bc.edu/~muller/teaching/cs1103/f16/asst/1/yellow.jpg)

Try one function at a time. Once you've got the first one working you're going to want to try it out. If you retrieve the terminal window, you can type

```ocaml
> make
```

   to compile your code. If that produced no errors, you can then type:

```ocaml
> ./problemset1
```

 to try running it to see if it works. Once the first one is working, move on to the second one. Once you have all of your functions working, use the unix git commands to submit  your work as follows:

```
> git add problemset1.ml
> git commit -m "done with ps1"
> git push
```

Voila! You're done!