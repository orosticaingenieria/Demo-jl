# Demo.jl

[![CI](https://github.com/orosticaingenieria/Demo.jl/actions/workflows/ci.yml/badge.svg)](https://github.com/orosticaingenieria/Demo.jl/actions/workflows/ci.yml)
[![Docs](https://github.com/orosticaingenieria/Demo.jl/actions/workflows/pages/pages-build-deployment/badge.svg)](https://orosticaingenieria.github.io/Demo.jl/dev/)

## Install julia

There are many ways to install julia. Simply follow the steps that are out there. Just make sure to add julia to your PATH. In my case, I have a Windows machine and I just downloaded the windows executable at [https://julialang.org/downloads/](https://julialang.org/downloads/) and then followed the steps (I added julia to the PATH in one of their options).

## Clone this repo

First of, you need to have installed git in your computer. After that, to follow this repository and check it in your computer, go to a memorable directory and simple clone it:
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial
$ git clone git@github.com:orosticaingenieria/Demo.jl.git

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial
$ cd Demo.jl/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (master)
$
```

It is a good idea to make changes in a different branch:
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (master)
$ git branch temp

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (master)
$ git branch temp

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (master)
$ git checkout temp

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$
```

## Install the project environment

First time, you need to install the dependencies in the local project environment (instantiate the Manifest.toml from the Project.toml). This step should be done once since it installs packages used by this project in your host system (in the ~/.julia folder). In this example, I also tested the Demo module en the julia REPL with the `using` keyword and then calling the greet() function:
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia

julia> (press the "]" key)

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`

(Demo) pkg> instantiate
    Updating registry at `C:\Users\beorostica\.julia\registries\General.toml`
  No Changes to `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\Project.toml`
    Updating `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\Manifest.toml`
  [2a0f44e3] + Base64
  [b77e0a4c] + InteractiveUtils
  [56ddb016] + Logging
  [d6f4376e] + Markdown
  [9a3f8284] + Random
  [ea8e919c] + SHA
  [9e88b42a] + Serialization
  [8dfed614] + Test

(Demo) pkg> (press the "backspace" key)

julia> using Demo
[ Info: Precompiling Demo [404971aa-0953-443d-a936-a3c215e4f3ef]

julia> Demo.greet()
Hello World!

julia> exit()
```

For running examples and tests, you need to perform the previous steps (that is, now you have the Manifest.toml and installed the packages in your system for this julia project). For documentation ... (I still have to figure out if it is better to use the environment from the docs folder or install a )


## Julia project environment note

Instead of doing the following steps to activate the local julia environment:
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia

julia> (press the "]" key)

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`

(Demo) pkg> (press the "backspace" key)

julia>
```

You can activate the environment immediately while calling the julia REPL:
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.

julia> (press the "]" key)

(Demo) pkg> (press the "backspace" key)

julia>
```

## How to run examples

### Using Julia REPL

``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia

julia> (press the "]" key)

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`

(Demo) pkg> (press the "backspace" key)

julia> include("examples/main.jl")
Hello World!

julia> exit()
```

### Using your SHELL

```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=. examples/main.jl
Hello World!

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ cd examples/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/examples (temp)
$ julia --project=.. main.jl
Hello World!
```

## How to run tests

### Using Julia REPL

``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.

julia> (press the "]" key)

(Demo) pkg> test
     Testing Demo
      Status `C:\Users\beorostica\AppData\Local\Temp\jl_E6cORy\Project.toml`
  [404971aa] Demo v0.1.0 `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`
  [8dfed614] Test `@stdlib/Test`
      Status `C:\Users\beorostica\AppData\Local\Temp\jl_E6cORy\Manifest.toml`
  [404971aa] Demo v0.1.0 `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`
  [2a0f44e3] Base64 `@stdlib/Base64`
  [b77e0a4c] InteractiveUtils `@stdlib/InteractiveUtils`
  [56ddb016] Logging `@stdlib/Logging`
  [d6f4376e] Markdown `@stdlib/Markdown`
  [9a3f8284] Random `@stdlib/Random`
  [ea8e919c] SHA `@stdlib/SHA`
  [9e88b42a] Serialization `@stdlib/Serialization`
  [8dfed614] Test `@stdlib/Test`
     Testing Running tests...
Hello World!     Testing Demo tests passed 

(Demo) pkg> (press the "backspace" key)

julia> include("test/runtests.jl")
Hello World!Test Passed
  Expression: Demo.greet() === nothing
   Evaluated: nothing === nothing

julia> exit()
```

### Using your SHELL

In this case you don't receive many output information:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=. test/runtests.jl
Hello World!

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ cd test/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/test (temp)
$ julia --project=.. runtests.jl
Hello World!
```

## How to run docs

This step should be done once. It instantiates the docs julia project (creates the Manifest.toml from the Project.toml and installs all the necessary packages in the ~/.julia folder):
``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia

julia> (press the "]" key)

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs`

(docs) pkg> instantiate
    Updating registry at `C:\Users\beorostica\.julia\registries\General.toml`
    Updating `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs\Project.toml`
  [e30172f5] + Documenter v0.27.22
    Updating `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs\Manifest.toml`
  [a4c015fc] + ANSIColoredPrinters v0.0.1
  [ffbed154] + DocStringExtensions v0.9.1
  [e30172f5] + Documenter v0.27.22
  [b5f81e59] + IOCapture v0.2.2
  [682c06a0] + JSON v0.21.3
  [69de0a69] + Parsers v2.3.2
  [2a0f44e3] + Base64
  [ade2ca70] + Dates
  [b77e0a4c] + InteractiveUtils
  [76f85450] + LibGit2
  [56ddb016] + Logging
  [d6f4376e] + Markdown
  [a63ad114] + Mmap
  [ca575930] + NetworkOptions
  [de0858da] + Printf
  [3fa0cd96] + REPL
  [9a3f8284] + Random
  [ea8e919c] + SHA
  [9e88b42a] + Serialization
  [6462fe0b] + Sockets
  [8dfed614] + Test
  [4ec0a83e] + Unicode

(Demo) pkg> (press the "backspace" key)

julia> exit()
```

### Using Julia REPL

``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia --project=.

julia> include("make.jl")
┌ Warning: Unable to determine HTML(edit_link = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: Doctest: running doctests.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75

julia> exit()
```

### Using your SHELL

``` shell
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia --project=. make.jl
┌ Warning: Unable to determine HTML(edit_link = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: Doctest: running doctests.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
```


---
## Draft

### status

Note that for the environment:

* (@1.7): there is no project at all
* (Demo): there is a project, but the package Dash is not present (the Test package is required but is not necessary to be downloaded)
* (docs): there is a project, but the package Documenter is not present

```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> status
      Status `C:\Users\beorostica\.julia\environments\v1.7\Project.toml` (empty project)
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`

(Demo) pkg> status
     Project Demo v0.1.0
      Status `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\Project.toml`
→ [1b08a953] Dash v1.1.2
  [8dfed614] Test
        Info packages marked with → not downloaded, use `instantiate` to download

julia> exit()
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ cd docs/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs`

(docs) pkg> status
      Status `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs\Project.toml`
→ [e30172f5] Documenter v0.27.22
        Info packages marked with → not downloaded, use `instantiate` to download

julia> exit()
```

### using

Note that for the environment:

* (@1.7): suggest to install the global julia modules Dash and Documenter, but nothing for the local module Demo which is not found in the current path
* (Demo): suggest to issue instantiate for the global module Dash, to install the global Documenter and for the local Demo it uses a pre-compilation
* (docs): suggest to install the global Dash, to issue instantiate for the global module Documenter, but nothing for the local module Demo which is not found in the current path 

```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg>

julia> using Demo
ERROR: ArgumentError: Package Demo not found in current path:
- Run `import Pkg; Pkg.add("Demo")` to install the Demo package.

Stacktrace:
 [1] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:967

julia> using Documenter
 Γöé Package Documenter not found, but a package named Documenter is available
 Γöé from a registry.
 Γöé Install package?
 Γöé   (@v1.7) pkg> add Documenter
 Γöö (y/n) [y]: n
ERROR: ArgumentError: Package Documenter not found in current path:
- Run `import Pkg; Pkg.add("Documenter")` to install the Documenter package.

Stacktrace:
 [1] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:967

julia> using Dash
 Γöé Package Dash not found, but a package named Dash is available from a
 Γöé registry.
 Γöé Install package?
 Γöé   (@v1.7) pkg> add Dash
 Γöö (y/n) [y]: n
ERROR: ArgumentError: Package Dash not found in current path:
- Run `import Pkg; Pkg.add("Dash")` to install the Dash package.

Stacktrace:
 [1] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:967

julia> 
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl`

julia> using Dash
ERROR: ArgumentError: Package Dash [1b08a953-4be3-4667-9a23-3db579824955] is required but does not seem to be installed:
 - Run `Pkg.instantiate()` to install all recorded dependencies.

Stacktrace:
 [1] _require(pkg::Base.PkgId)
   @ Base .\loading.jl:1089
 [2] require(uuidkey::Base.PkgId)
   @ Base .\loading.jl:1013
 [3] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:997

julia> using Documenter
 │ Package Documenter not found, but a package named Documenter is available from a registry.
 │ Install package?
 │   (Demo) pkg> add Documenter
 └ (y/n) [y]: n
ERROR: ArgumentError: Package Documenter not found in current path:
- Run `import Pkg; Pkg.add("Documenter")` to install the Documenter package.

Stacktrace:
 [1] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:967

julia> using Demo
[ Info: Precompiling Demo [404971aa-0953-443d-a936-a3c215e4f3ef]

julia> 
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> activate .
  Activating project at `C:\Users\beorostica\Nextcloud2\ihealth\julia-tutorial\Demo.jl\docs`

julia> using Documenter
ERROR: ArgumentError: Package Documenter [e30172f5-a6a5-5a46-863b-614d45cd2de4] is required but does not seem to be installed:
 - Run `Pkg.instantiate()` to install all recorded dependencies.

Stacktrace:
 [1] _require(pkg::Base.PkgId)
   @ Base .\loading.jl:1089
 [2] require(uuidkey::Base.PkgId)
   @ Base .\loading.jl:1013
 [3] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:997

julia> using Demo
ERROR: ArgumentError: Package Demo not found in current path:
- Run `import Pkg; Pkg.add("Demo")` to install the Demo package.

Stacktrace:
 [1] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:967

julia> using Documenter
ERROR: ArgumentError: Package Documenter [e30172f5-a6a5-5a46-863b-614d45cd2de4] is required but does not seem to be installed:
 - Run `Pkg.instantiate()` to install all recorded dependencies.

Stacktrace:
 [1] _require(pkg::Base.PkgId)
   @ Base .\loading.jl:1089
 [2] require(uuidkey::Base.PkgId)
   @ Base .\loading.jl:1013
 [3] require(into::Module, mod::Symbol)
   @ Base .\loading.jl:997

julia> exit()
```

### Conclusions

Apparently you need to keep in mind:

* Never use the environment (@1.7)
* All the global packages (in the julia registries) are installed globally in the ~/.julia folder
* To install a package from an existing project always use `instantiate` in the environment of the project
* During development of a package, to install a package globally issue `add` in the environment which also adds the new package in the Project.toml file.


### In the Demo project then ...

```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(Demo) pkg> instantiate
   ...
   Installed OrderedCollections ── v1.4.1
   Installed URIs ──────────────── v1.4.0
   Installed TranscodingStreams ── v0.9.6
   Installed LaTeXStrings ──────── v1.3.0
   Installed DashTable ─────────── v5.0.0
   Installed Reexport ──────────── v1.2.2
   Installed Colors ────────────── v0.12.8
   Installed HTTP ──────────────── v0.9.17
   Installed MbedTLS ───────────── v1.1.3
   Installed LogExpFunctions ───── v0.3.17
   Installed DataStructures ────── v0.18.13
   Installed Requires ──────────── v1.3.0
   Installed ChainRulesCore ────── v1.15.3
   Installed ColorSchemes ──────── v3.19.0
   Installed Compat ────────────── v4.1.0
   Installed Parameters ────────── v0.12.3
   Installed CodecZlib ─────────── v0.7.0
   Installed UnPack ────────────── v1.0.2
   Installed OpenSpecFun_jll ───── v0.5.5+0
   Installed InverseFunctions ──── v0.1.7
   Installed ChangesOfVariables ── v0.1.4
   Installed Dash ──────────────── v1.1.2
   Installed StructTypes ───────── v1.9.0
   Installed YAML ──────────────── v0.4.7
  Downloaded artifact: OpenSpecFun
Precompiling project...
  53 dependencies successfully precompiled in 26 seconds

julia> 
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(docs) pkg> instantiate
   Installed IOCapture ─────────── v0.2.2
   Installed ANSIColoredPrinters ─ v0.0.1
   Installed DocStringExtensions ─ v0.9.1
   Installed Documenter ────────── v0.27.22
Precompiling project...
  4 dependencies successfully precompiled in 3 seconds (2 already precompiled)

(docs) pkg>
```

and to run the examples, tests and documentation:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/examples (temp)
$ julia --project=.. main.jl 
Hello World!

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/examples (temp)
$ julia --project=.. dash-example.jl 
[ Info: Listening on: 0.0.0.0:8050
Segmentation fault
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.

julia> include("test/runtests.jl")
Hello World!Test Passed
  Expression: Demo.greet() === nothing
   Evaluated: nothing === nothing
```
```
Didn't worked
```

Apparently, it's necessary to install documenter in the (@1.7) environment:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> add Documenter
```

Then:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(Demo) pkg> 

julia> using Documenter
[ Info: Precompiling Documenter [e30172f5-a6a5-5a46-863b-614d45cd2de4]

julia> include("docs/make.jl")
┌ Warning: Unable to determine HTML(edit_link = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: Doctest: running doctests.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
```

or:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ cd docs/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia --project=.. make.jl
┌ Warning: Unable to determine HTML(edit_link = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: Doctest: running doctests.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
```


For KomaMRI documentation generation:
```
$ julia --project=.

(KomaMRI) pkg> instantiate

julia> using KomaMRI

julia> KomaUI()
[ Info: Loading Phantom (default)
Phantom object "brain2D_axial" successfully loaded!
[ Info: Loading Scanner (default)
B0 = 1.5 T
Gmax = 60.0 mT/m
Smax = 500 mT/m/ms
[ Info: Loading Sequence (default)
EPI successfully loaded! (TE = 31.7 ms)
  Downloaded artifact: CUDA
[ Info: Loading GPUs
1 CUDA capable device(s).
  (0*) NVIDIA GeForce GTX 1650
[ Info: Currently using KomaMRI v0.6.5

julia>
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl/docs (docs)
$ julia --project=.. make.jl 
```

or if you rather use live server:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(@v1.7) pkg> add LiveServer
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl (docs)
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> using LiveServer
[ Info: Precompiling LiveServer [16fef848-5104-11e9-1b77-fb7a48bbb589]

julia> servedocs()
...
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
ERROR: UndefVarError: streamhandler not defined
Stacktrace:
 [1] getproperty
   @ .\Base.jl:35 [inlined]
 [2] serve(fw::LiveServer.SimpleWatcher; host::String, port::Int64, dir::String, verbose::Bool, coreloopfun::LiveServer.var"#17#21", preprocess_request::typeof(identity), inject_browser_reload_script::Bool, launch_browser::Bool, allow_cors::Bool)        
   @ LiveServer C:\Users\beorostica\.julia\packages\LiveServer\PrIqc\src\server.jl:459
 [3] servedocs(; verbose::Bool, literate::Nothing, doc_env::Bool, skip_dir::String, skip_dirs::Vector{String}, skip_files::Vector{String}, foldername::String, buildfoldername::String, makejl::String, host::String, port::Int64, launch_browser::Bool)      
   @ LiveServer C:\Users\beorostica\.julia\packages\LiveServer\PrIqc\src\utils.jl:231
 [4] servedocs()
   @ LiveServer C:\Users\beorostica\.julia\packages\LiveServer\PrIqc\src\utils.jl:199
 [5] top-level scope
   @ REPL[2]:1
```

:(. So I decided to install everything from the (KomaMRI) environment in the (@1.7) environment.
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~
$ cd Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl/

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl (docs)
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> 

(@v1.7) pkg> add .
     Cloning git-repo `C:\Users\beorostica\Nextcloud2\ihealth\koma-shared-readonly\KomaMRI.jl`
    Updating git-repo `C:\Users\beorostica\Nextcloud2\ihealth\koma-shared-readonly\KomaMRI.jl`
    Updating registry at `C:\Users\beorostica\.julia\registries\General.toml`
   Resolving package versions...
   Installed StaticArrays ─ v1.5.3
   Installed LiveServer ─── v0.8.3
    Updating `C:\Users\beorostica\.julia\environments\v1.7\Project.toml`
  [6a340f8b] + KomaMRI v0.6.5 `..\..\..\Nextcloud2\ihealth\koma-shared-readonly\KomaMRI.jl#docs`
  [16fef848] ↓ LiveServer v0.9.1 ⇒ v0.8.3
    Updating `C:\Users\beorostica\.julia\environments\v1.7\Manifest.toml`
  [14f7f29c] + AMD v0.4.0
  [621f4979] + AbstractFFTs v1.2.1
  [7f219486] + AbstractNFFTs v0.5.2
  [79e6a3ab] + Adapt v3.4.0
  [dce04be8] + ArgCheck v2.3.0
  [4fba245c] + ArrayInterface v6.0.22
  [30b0a656] + ArrayInterfaceCore v0.1.17
  [015c0d05] + ArrayInterfaceOffsetArrays v0.1.6
  [b0d46f97] + ArrayInterfaceStaticArrays v0.1.4
  [dd5226c6] + ArrayInterfaceStaticArraysCore v0.1.0
  [bf4720bc] + AssetRegistry v0.1.0
  [13072b0f] + AxisAlgorithms v1.0.1
  [39de3d68] + AxisArrays v0.4.6
  [ab4f0b2a] + BFloat16s v0.2.0
  [198e06fe] + BangBang v0.3.36
  [9718e550] + Baselet v0.1.1
  [6e4b80f9] + BenchmarkTools v1.3.1
  [9e28174c] + BinDeps v1.0.2
  [62783981] + BitTwiddlingConvenienceFunctions v0.1.4
  [ad839575] + Blink v0.12.5
  [e1450e63] + BufferedStreams v1.1.0
  [fa961155] + CEnum v0.4.2
  [2a0fbf3d] + CPUSummary v0.1.25
  [70588ee8] + CSSUtil v0.1.1
  [052768ef] + CUDA v3.12.0
  [49dc2e85] + Calculus v0.5.1
  [aafaddc9] + CatIndices v0.2.2
  [d360d2e6] + ChainRulesCore v1.15.3
  [9e997f8a] + ChangesOfVariables v0.1.4
  [fb6a15b2] + CloseOpenIntervals v0.1.10
  [523fee87] + CodecBzip2 v0.7.2
  [35d6a980] + ColorSchemes v3.19.0
  [3da002f7] + ColorTypes v0.11.4
  [c3611d14] + ColorVectorSpace v0.9.9
  [5ae59095] + Colors v0.12.8
  [38540f10] + CommonSolve v0.2.1
  [bbf7d656] + CommonSubexpressions v0.3.0
  [34da2185] + Compat v3.45.0
  [a33af91c] + CompositionsBase v0.1.1
  [ed09eef8] + ComputationalResources v0.3.2
  [187b0558] + ConstructionBase v1.4.0
  [6add18c4] + ContextVariablesX v0.1.2
  [150eb455] + CoordinateTransformations v0.6.2
  [adafc99b] + CpuId v0.3.1
  [dc8bdbbb] + CustomUnitRanges v1.0.2
  [717857b8] + DSP v0.7.6
  [9a962f9c] + DataAPI v1.10.0
  [864edb3b] + DataStructures v0.18.13
  [e2d170a0] + DataValueInterfaces v1.0.0
  [244e2a9f] + DefineSingletons v0.1.2
  [b429d917] + DensityInterface v0.4.0
  [163ba53b] + DiffResults v1.0.3
  [b552c78f] + DiffRules v1.11.0
  [b4f34e82] + Distances v0.10.7
  [31c24e10] + Distributions v0.25.66
  [ffbed154] ↓ DocStringExtensions v0.9.1 ⇒ v0.8.6
  [fa6b7ba4] + DualNumbers v0.6.8
  [e2ba6199] + ExprTools v0.1.8
  [4f61f5a4] + FFTViews v0.3.2
  [7a1cc6ca] + FFTW v1.5.0
  [cc61a311] + FLoops v0.2.0
  [b9860ae5] + FLoopsBase v0.1.1
  [9aa1b823] + FastClosures v0.3.2
  [5789e2e9] + FileIO v1.15.0
  [1a297f60] + FillArrays v0.13.2
  [53c48c17] + FixedPointNumbers v0.8.4
  [f6369f11] + ForwardDiff v0.10.32
  [de31a74c] + FunctionalCollections v0.5.0
  [0c68f7d7] + GPUArrays v8.4.2
  [46192b85] + GPUArraysCore v0.1.1
  [61eb1bfa] + GPUCompiler v0.16.3
  [a2bd30eb] + Graphics v1.1.2
  [f67ccb44] + HDF5 v0.16.10
  [cd3eb016] ↓ HTTP v1.2.1 ⇒ v0.9.17
  [9fb69e20] + Hiccup v0.2.2
  [3e5b6fbb] + HostCPUFeatures v0.1.8
  [0e44f5e4] + Hwloc v2.0.0
  [34004b35] + HypergeometricFunctions v0.3.11
  [bbac6d45] + IdentityRanges v0.3.1
  [615f187c] + IfElse v0.1.1
  [2803e5a7] + ImageAxes v0.6.9
  [f332f351] + ImageContrastAdjustment v0.3.7
  [a09fc81d] + ImageCore v0.8.22
  [51556ac3] + ImageDistances v0.2.13
  [6a3955dd] + ImageFiltering v0.6.21
  [82e4d734] + ImageIO v0.5.9
  [6218d12a] + ImageMagick v1.2.1
  [bc367c6b] + ImageMetadata v0.9.5
  [787d08f9] + ImageMorphology v0.2.11
  [2996bd0c] + ImageQualityIndexes v0.2.2
  [4e3cecfd] + ImageShow v0.3.1
  [02fcd773] + ImageTransformations v0.8.13
  [8ad4436d] + ImageUtils v0.2.7
  [916415d5] + Images v0.24.1
  [9b13fd28] + IndirectArrays v0.5.1
  [d25df0c9] + Inflate v0.1.2
  [22cec73e] + InitialValues v0.3.1
  [c601a237] + Interact v0.10.4
  [d3863d7c] + InteractBase v0.10.8
  [a98d9a8b] + Interpolations v0.13.6
  [8197267c] + IntervalSets v0.7.1
  [3587e190] + InverseFunctions v0.1.7
  [b6b21f68] + Ipopt v1.0.3
  [92d709cd] + IrrationalConstants v0.1.1
  [c8e1da08] + IterTools v1.4.0
  [42fd0dbc] + IterativeSolvers v0.9.2
  [82899510] + IteratorInterfaceExtensions v1.0.0
  [033835bb] + JLD2 v0.4.22
  [692b3bcd] + JLLWrappers v1.4.1
  [97c1335a] + JSExpr v0.5.4
  [4076af6c] + JuMP v1.1.1
  [b14d175d] + JuliaVariables v0.2.4
  [bcebb21b] + Knockout v0.2.5
  [6a340f8b] + KomaMRI v0.6.5 `..\..\..\Nextcloud2\ihealth\koma-shared-readonly\KomaMRI.jl#docs`
  [40e66cde] + LDLFactorizations v0.8.2
  [929cbde3] + LLVM v4.14.0
  [b964fa9f] + LaTeXStrings v1.3.0
  [10f19ff3] + LayoutPointers v0.1.10
  [50d2b5c4] + Lazy v0.15.1
  [9c8b4983] + LightXML v0.9.0
  [5c8ed15e] + LinearOperators v2.3.2
  [16fef848] ↓ LiveServer v0.9.1 ⇒ v0.8.3
  [2ab3a3ac] + LogExpFunctions v0.3.17
  [e6f89c97] - LoggingExtras v0.4.9
  [898213cb] + LowRankApprox v0.5.2
  [23992714] + MAT v0.10.3
  [d8e11817] + MLStyle v0.4.13
  [bdf86e05] + MRIReco v0.4.2
  [1914dd2f] + MacroTools v0.5.9
  [d125e4d3] + ManualMemory v0.1.8
  [dbb5928d] + MappedArrays v0.3.0
  [b8f27783] + MathOptInterface v1.6.1
  [442fdcdd] + Measures v0.3.1
  [128add7d] + MicroCollections v0.1.2
  [e1d29d7a] + Missings v1.0.2
  [e94cdb99] + MosaicViews v0.3.3
  [ffc61752] + Mustache v1.0.14
  [d8a4904e] + MutableArithmetics v1.0.4
  [a975b10e] + Mux v0.7.6
  [efe261a4] + NFFT v0.10.5
  [7424e34d] + NFFTTools v0.2.0
  [a3a9e032] + NIfTI v0.5.7
  [77ba4419] + NaNMath v1.0.1
  [71a1bf82] + NameResolution v0.1.5
  [f09324ee] + Netpbm v1.0.1
  [4d1e1d77] + Nullables v1.0.0
  [510215fc] + Observables v0.4.0
  [6fe1bfb0] + OffsetArrays v1.12.7
  [52e1d378] + OpenEXR v0.3.2
  [bac558e1] + OrderedCollections v1.4.1
  [90014a1f] + PDMats v0.11.16
  [f57f5aa1] + PNGFiles v0.3.16
  [9b87118b] + PackageCompiler v2.0.9
  [5432bcbf] + PaddedViews v0.5.11
  [d96e819e] + Parameters v0.12.3
  [fa939f87] + Pidfile v1.3.0
  [eebad327] + PkgVersion v0.1.1
  [a03496cd] + PlotlyBase v0.8.18
  [f0f68f2c] + PlotlyJS v0.18.8
  [f517fe37] + Polyester v0.6.14
  [1d0040c9] + PolyesterWeave v0.1.8
  [f27b6e38] + Polynomials v3.1.7
  [21216c6a] + Preferences v1.3.0
  [8162dcfd] + PrettyPrint v0.2.0
  [92933f4c] + ProgressMeter v1.7.2
  [1fd47b50] + QuadGK v2.4.2
  [94ee1d12] + Quaternions v0.5.6
  [74087812] + Random123 v1.6.0
  [e6cf234a] + RandomNumbers v1.5.3
  [b3c3ace0] + RangeArrays v0.3.2
  [c84ed2f1] + Ratios v0.4.3
  [3cdcf5f2] + RecipesBase v1.2.1
  [189a3867] + Reexport v1.2.2
  [1e9c538a] + RegularizedLeastSquares v0.8.6
  [05181044] + RelocatableFolders v0.1.3
  [ae029012] + Requires v1.3.0
  [79098fc4] + Rmath v0.7.0
  [f2b01f46] + Roots v1.4.1
  [6038ab10] + Rotations v1.3.1
  [94e857df] + SIMDTypes v0.1.0
  [6ef1bc8b] + Scanf v0.5.4
  [6c6a2e73] + Scratch v1.1.1
  [efcf1570] + Setfield v0.8.2
  [777ac1f9] - SimpleBufferStream v1.1.0
  [699a6c99] + SimpleTraits v0.9.4
  [a2af1166] + SortingAlgorithms v1.0.1
  [a5ff1dd3] + SparsityOperators v0.4.1
  [276daf66] + SpecialFunctions v2.1.7
  [171d559e] + SplittablesBase v0.1.14
  [cae243ae] + StackViews v0.1.1
  [aedffcd0] + Static v0.7.6
  [90137ffa] + StaticArrays v1.5.3
  [1e83bf80] + StaticArraysCore v1.0.1
  [82ae8749] + StatsAPI v1.5.0
  [2913bbd2] + StatsBase v0.33.21
  [4c63d2b9] + StatsFuns v1.0.1
  [7792a7ef] + StrideArraysCore v0.3.15
  [88034a9c] + StringDistances v0.11.2
  [fd094767] + Suppressor v0.2.1
  [3783bdb8] + TableTraits v1.0.1
  [bd369af6] + Tables v1.7.0
  [62fd8b95] + TensorCore v0.1.1
  [5e47fb64] + TestImages v1.7.0
  [b189fb0b] + ThreadPools v2.1.1
  [8290d209] + ThreadingUtilities v0.5.0
  [731e570b] + TiffImages v0.5.5
  [06e1c1a7] + TiledIteration v0.3.1
  [a759f4b9] + TimerOutputs v0.5.20
  [28d57a85] + Transducers v0.4.73
  [30578b45] + URIParser v0.4.1
  [3a884ed6] + UnPack v1.0.2
  [1986cc42] + Unitful v1.11.0
  [3d5dd08c] + VectorizationBase v0.21.46
  [29a6e085] + Wavelets v0.9.4
  [0f1e0344] + WebIO v0.8.18
  [104b5d7c] + WebSockets v1.5.9
  [cc8bc4a8] + Widgets v0.6.6
  [efce3f68] + WoodburyMatrices v0.5.5
  [700de1a5] + ZygoteRules v0.2.2
  [ae81ac8f] + ASL_jll v0.1.3+0
  [6e34b625] + Bzip2_jll v1.0.8+0
  [f5851436] + FFTW_jll v3.3.10+0
  [61579ee1] + Ghostscript_jll v9.55.0+0
  [0234f1f7] + HDF5_jll v1.12.2+1
  [e33a78d0] + Hwloc_jll v2.7.1+0
  [c73af94c] + ImageMagick_jll v6.9.12+2
  [905a6f67] + Imath_jll v3.1.2+0
  [1d5cc7b8] + IntelOpenMP_jll v2018.0.3+2
  [9cc047cb] + Ipopt_jll v300.1400.400+0
  [aacddb02] + JpegTurbo_jll v2.1.2+0
  [f7e6163d] + Kaleido_jll v0.2.1+0
  [88015f11] + LERC_jll v3.0.0+1
  [dad2f222] + LLVMExtra_jll v0.0.16+0
  [94ce4f54] + Libiconv_jll v1.16.1+1
  [89763e89] + Libtiff_jll v4.4.0+0
  [d00139f3] + METIS_jll v5.1.1+0
  [856f044c] + MKL_jll v2022.0.0+0
  [d7ed1dd3] + MUMPS_seq_jll v5.4.1+0
  [656ef2d0] + OpenBLAS32_jll v0.3.17+0
  [18a262bb] + OpenEXR_jll v3.1.1+0
  [458c3c95] + OpenSSL_jll v1.1.17+0
  [efe28fd5] + OpenSpecFun_jll v0.5.5+0
  [f50d1b31] + Rmath_jll v0.3.0+0
  [02c8fc9c] + XML2_jll v2.9.14+0
  [3161d3a3] + Zstd_jll v1.5.2+0
  [b53b4c65] + libpng_jll v1.6.38+0
  [8bb1440f] + DelimitedFiles
  [8ba89e20] + Distributed
  [9fa8497b] + Future
  [4af54fe1] + LazyArtifacts
  [37e2e46d] + LinearAlgebra
  [9abbd945] + Profile
  [1a1011a3] + SharedArrays
  [2f01184e] + SparseArrays
  [10745b16] + Statistics
  [4607b0f0] + SuiteSparse
  [e66e0078] + CompilerSupportLibraries_jll
  [4536629a] + OpenBLAS_jll
  [05823500] + OpenLibm_jll
  [8e850b90] + libblastrampoline_jll
Precompiling project...
  24 dependencies successfully precompiled in 114 seconds (239 already precompiled)

(@v1.7) pkg> 

julia> exit()
```

Finally:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl (docs)
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.7.3 (2022-05-06)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> using LiveServer

julia> servedocs()
...
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
✓ LiveServer listening on http://localhost:8000/ ...
  (use CTRL+C to shut down)
```

:).

Apparentlly Julia is not the best tool yet for managing environments :/.


add LiveServer@0.8.3


## summary

Install the packages of the local project environment:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.

(Demo) pkg> instantiate
```

Install Documenter and LiveServer in the (@1.7) environment:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia

(@v1.7) pkg> add Documenter

(@v1.7) pkg> add LiveServer@0.8.3
```

and to run the examples, tests and documentation:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/examples (temp)
$ julia --project=.. main.jl 
Hello World!

beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/examples (temp)
$ julia --project=.. dash-example.jl 
[ Info: Listening on: 0.0.0.0:8050
Segmentation fault
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/test (temp)
$ julia --project=..

julia> include("runtests.jl")
Hello World!Test Passed
  Expression: Demo.greet() === nothing
   Evaluated: nothing === nothing
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl/docs (temp)
$ julia --project=.. make.jl
┌ Warning: Unable to determine HTML(edit_link = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: Doctest: running doctests.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.
┌ Warning: Unable to determine deploydocs(devbranch = ...) from remote HEAD branch, defaulting to "master".
│ Calling `git remote` failed with an exception. Set JULIA_DEBUG=Documenter to see the error.
│ Unless this is due to a configuration error, the relevant variable should be set explicitly.
└ @ Documenter.Utilities C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\Utilities\Utilities.jl:822
┌ Warning: Documenter could not auto-detect the building environment Skipping deployment.
└ @ Documenter C:\Users\beorostica\.julia\packages\Documenter\1bI4T\src\deployconfig.jl:75
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/julia-tutorial/Demo.jl (temp)
$ julia --project=.

julia> using LiveServer

julia> servedocs()
...
✓ LiveServer listening on http://localhost:8000/ ...
  (use CTRL+C to shut down)
```

For KomaMRI:
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl (docs)
$ julia --project=.

(KomaMRI) pkg> instantiate

julia> using KomaMRI

julia> KomaUI()
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl/docs (docs)
$ julia --project=.. make.jl
```
```
beorostica@LAPTOP-QS1DUE5R MINGW64 ~/Nextcloud2/ihealth/koma-shared-readonly/KomaMRI.jl (docs)
$ julia --project=.

julia> using LiveServer

julia> servedocs()
...
✓ LiveServer listening on http://localhost:8000/ ...
  (use CTRL+C to shut down)
```

Wiii!!! Apparently it was a problem of LiveServer version (not the environment). :)