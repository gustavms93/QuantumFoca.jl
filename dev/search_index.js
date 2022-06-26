var documenterSearchIndex = {"docs":
[{"location":"input/#The-input-system","page":"Input","title":"The input system","text":"","category":"section"},{"location":"input/","page":"Input","title":"Input","text":"Molecule","category":"page"},{"location":"input/#Foca.Molecule","page":"Input","title":"Foca.Molecule","text":"ChemicalEntity is an abstract type that englobes Molecule, Atom, AtomicOrbital and MolecularOrbital structures. Molecule is a subtype of ChemicalEntity that stores coordinates, atomic symbols and atomic numbers as objects. \n\n\n\n\n\n","category":"type"},{"location":"input/","page":"Input","title":"Input","text":"molecule(xyzfile::String)","category":"page"},{"location":"input/#Foca.molecule-Tuple{String}","page":"Input","title":"Foca.molecule","text":"This method takes an .xyz file (with cartesian coordinates of atoms in a molecule) and returns a Molecule. The .xyz file should be formatted as follows\n\n2 \n\nH      -1.788131055      0.000000000     -4.028513155\nH      -1.331928651      0.434077746     -3.639854078\n\nIn the first line, the file should contain the numer of atoms that are in the molecule. In the second line, there is a comment, which can be the name of the compound,  molecular formula, etc. To further information about .xyz files, click here. For example, if we take the  example file h2.xyz, it is possible to give it as an input by calling molecule method.\n\nmolecule(\"h2.xyz\")\n\nThe example above works if the file is in the current directory that you are working on. In other case, you can just give the path to the file of interest.\n\nmolecule(PATH)\n\n\n\n\n\n","category":"method"},{"location":"basis/#Gaussian-Basis-Sets","page":"Basis Sets","title":"Gaussian Basis Sets","text":"","category":"section"},{"location":"basis/","page":"Basis Sets","title":"Basis Sets","text":"GaussianBasis","category":"page"},{"location":"basis/#Foca.GaussianBasis","page":"Basis Sets","title":"Foca.GaussianBasis","text":"GaussianBasis is a subtype of Basis that stores the coefficients, exponents and angular momenta of the atomic orbital. A basis set in theoretical and computational chemistry is a set of functions (called basis functions) that is used to represent the  electronic wave function in the Hartree–Fock method or density-functional theory in order to turn the partial differential equations  of the model into algebraic equations suitable for efficient implementation on a computer. The use of basis sets is equivalent to the  use of an approximate resolution of the identity: the orbitals vert psi_i rangle are expanded within the basis set as a linear combination of the basis functions vert psi_i rangle approx sum_mu  c_mu i vert mu rangle,  where the expansion coefficients c_mu i are given by c_mu i = sum_nu  langle mu vert nu rangle^-1  langle nu vert psi_i rangle. The basis set can either be composed of atomic orbitals (yielding the linear combination of  atomic orbitals approach), which is the usual choice within the quantum chemistry community; plane waves which are typically used within  the solid state community, or real-space approaches. Several types of atomic orbitals can be used: Gaussian-type orbitals, Slater-type  orbitals, or numerical atomic orbitals. Out of the three, Gaussian-type orbitals are by far the most often used, as they allow efficient  implementations of Post-Hartree–Fock methods. \n\n\n\n\n\n","category":"type"},{"location":"basis/","page":"Basis Sets","title":"Basis Sets","text":"buildbasis(molecule::Molecule)","category":"page"},{"location":"basis/#Foca.buildbasis-Tuple{Molecule}","page":"Basis Sets","title":"Foca.buildbasis","text":"The buildbasis method takes a Molecule as input and return for us an array of GaussianBasis types. For example, let's open the same  h2.xyz example. As a standard basis set, we use STO-3G data.\n\n2 \n\nH      -1.788131055      0.000000000     -4.028513155\nH      -1.331928651      0.434077746     -3.639854078\n\nWe give the file as an input:\n\nhydrogen = molecule(\"h2.xyz\")\nsto3g = buildbasis(hydrogen)\n\n\n\n\n\n","category":"method"},{"location":"#Foca.jl:-An-application-for-Computational-Chemists","page":"Home","title":"Foca.jl: An application for Computational Chemists","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"(Image: HartreeFoca jl)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: Issues) (Image: Build Status) (Image: Commit Activity) (Image: DOI)","category":"page"},{"location":"#Overview","page":"Home","title":"Overview","text":"","category":"section"},{"location":"#Installation","page":"Home","title":"Installation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"To install the package, you will call the Julia Package Manager on your REPL:","category":"page"},{"location":"","page":"Home","title":"Home","text":"]add Foca","category":"page"},{"location":"","page":"Home","title":"Home","text":"Done! Now it is ready to use","category":"page"},{"location":"#Package-Features","page":"Home","title":"Package Features","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Calculates overlap integrals\nCalculate kinetic integrals\nCalculate electron-nuclear attraction integrals\nCalculate electron-electron repulsion integrals","category":"page"},{"location":"#Quick-Example","page":"Home","title":"Quick Example","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Consider that you want to calculate the electronic energy of a methane molecule. First, you will need the cartesian coordinates of the molecule of interest. This information is stored in our methane.xyz file, formatted as follows:","category":"page"},{"location":"","page":"Home","title":"Home","text":"5\n\nC  0.00001021434087  0.00001532972083 -0.00001493500137\nH -0.19951695340554  0.87894179053067 -0.62713882127936\nH  0.76712229809243  0.24863902907755  0.74526241504934\nH  0.35580334399536 -0.82601803138729 -0.62993342769733\nH -0.92343260142312 -0.30159515034176  0.51179839372872","category":"page"},{"location":"","page":"Home","title":"Home","text":"methane = molecule(\"methane.xyz\")","category":"page"},{"location":"","page":"Home","title":"Home","text":"For any molecular calculations, you will need a basis set.","category":"page"},{"location":"","page":"Home","title":"Home","text":"sto3g = buildbasis(methane)","category":"page"},{"location":"","page":"Home","title":"Home","text":"With this information, we can build the molecular integrals.","category":"page"},{"location":"","page":"Home","title":"Home","text":"S = overlap(sto3g, methane)\nT = kinetic(sto3g, methane)\nV = attraction(sto3g, methane)\nG = repulsion(sto3g, methane)","category":"page"},{"location":"#Citation","page":"Home","title":"Citation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"A paper of this application is being prepared, but we already have a register in Zenodo.","category":"page"},{"location":"","page":"Home","title":"Home","text":"@misc{foca2022,\n  howpublished = {\\url{https://github.com/Leticia-maria/Foca.jl}}\n  year = {2022},\n  author = {Madureira, Leticia M. P. and Caramori, G. F.},\n  title = {\n    \\textbf{Foca.jl}: a Julia library for calculating Molecular Integrals, v0.1.0\n  },\n  doi = {10.5281/zenodo.419452183},\n  url = {https://zenodo.org/record/419452183},\n  publisher = {Zenodo},\n  copyright = {Open Access}\n}","category":"page"}]
}
