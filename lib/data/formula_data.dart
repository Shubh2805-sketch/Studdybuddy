const Map<String, Map<String, List<String>>> studyBuddyFormulas = {
  "Physics": {
    "Electric Charges and Fields": [
      "F = kq₁q₂/r²",
      "E = F/q",
      "E = kQ/r²",
      "Φ = q/ε₀",
    ],

    "Electrostatic Potential and Capacitance": [
      "V = W/q",
      "V = kQ/r",
      "C = Q/V",
      "C = ε₀A/d",
      "U = ½CV²",
      "U = ½QV",
      "U = Q²/2C",
      "Parallel: C = C₁ + C₂ + C₃ + ...",
      "Series: 1/C = 1/C₁ + 1/C₂ + 1/C₃ + ...",
    ],

    "Current Electricity": [
      "V = IR",
      "R = ρL/A",
      "P = VI",
      "P = I²R",
      "P = V²/R",
    ],

    "Moving Charges and Magnetism": [
      "F = q(v × B)",
      "F = BIL",
      "B = μ₀I/2πr",
    ],

    "Magnetism and Matter": [
      "τ = MB sinθ",
    ],

    "Electromagnetic Induction": [
      "ε = -dΦ/dt",
      "Φ = BA cosθ",
    ],

    "Alternating Current": [
      "Vrms = V₀/√2",
      "Irms = I₀/√2",
    ],

    "Electromagnetic Waves": [
      "c = λν",
      "c = 1/√(μ₀ε₀)",
      "E₀/B₀ = c",
    ],

    "Ray Optics and Optical Instruments": [
      "1/f = 1/v - 1/u",
      "m = v/u",
    ],

    "Wave Optics": [
      "β = λD/d",
    ],

    "Dual Nature of Radiation and Matter": [
      "E = hν",
      "λ = h/p",
      "Kmax = hν - φ",
    ],

    "Atoms": [
      "Eₙ = -13.6/n² eV",
    ],

    "Nuclei": [
      "N = N₀e⁻λt",
      "T½ = 0.693/λ",
    ],

    "Semiconductor Electronics": [
      "I = I₀(e^(eV/kT) - 1)",
      "Logic Gates: AND, OR, NOT",
    ],
  },

  "Chemistry": {
    "Solutions": [
      "Molarity = moles of solute / volume of solution",
      "M = n/V",
      "Molality = moles of solute / mass of solvent in kg",
      "π = CRT",
    ],

    "Electrochemistry": [
      "Ecell = Ecathode - Eanode",
      "ΔG = -nFE",
      "E = E° - (0.0591/n) log Q",
    ],

    "Chemical Kinetics": [
      "Rate = k[A]ⁿ",
      "k = Ae^(-Ea/RT)",
    ],

    "d and f Block Elements": [
      "Common oxidation states vary across transition elements",
      "Magnetic moment: μ = √[n(n + 2)] BM",
    ],

    "Coordination Compounds": [
      "Coordination number = number of donor atoms directly bonded to metal",
      "Oxidation state of metal can be calculated from ligand charges",
    ],

    "Haloalkanes and Haloarenes": [
      "SN1",
      "SN2",
    ],

    "Alcohols, Phenols and Ethers": [
      "Williamson Ether Synthesis",
      "R-OH + Na → R-ONa + ½H₂",
    ],

    "Aldehydes, Ketones and Carboxylic Acids": [
      "Aldol Condensation",
      "Cannizzaro Reaction",
    ],

    "Amines": [
      "Basicity order depends on structure and medium",
      "RNH₂ + HNO₂ → ROH + N₂ + H₂O",
    ],

    "Biomolecules": [
      "Peptide bond: -CO-NH-",
      "Glucose molecular formula: C₆H₁₂O₆",
    ],

    "Polymers": [
      "Addition polymerisation",
      "Condensation polymerisation",
    ],

    "Chemistry in Everyday Life": [
      "Antacids",
      "Antihistamines",
      "Analgesics",
      "Antiseptics",
    ],
  },

  "Maths": {
    "Relations and Functions": [
      "f(g(x))",
      "g(f(x))",
    ],

    "Inverse Trigonometric Functions": [
      "sin⁻¹x + cos⁻¹x = π/2",
      "tan⁻¹x + cot⁻¹x = π/2",
    ],

    "Matrices": [
      "A⁻¹ = adj(A)/|A|",
      "AA⁻¹ = A⁻¹A = I",
    ],

    "Determinants": [
      "|AB| = |A||B|",
    ],

    "Continuity and Differentiability": [
      "d(xⁿ)/dx = nxⁿ⁻¹",
      "d(sin x)/dx = cos x",
      "d(cos x)/dx = -sin x",
    ],

    "Application of Derivatives": [
      "dy/dx = 0 at stationary points",
      "For local maximum: f′(x) changes + to -",
      "For local minimum: f′(x) changes - to +",
    ],

    "Integrals": [
      "∫xⁿ dx = xⁿ⁺¹/(n+1) + C",
      "∫1/x dx = ln|x| + C",
      "∫sin x dx = -cos x + C",
      "∫cos x dx = sin x + C",
    ],

    "Application of Integrals": [
      "Area = ∫ y dx",
      "Area between curves = ∫(upper curve - lower curve) dx",
    ],

    "Differential Equations": [
      "dy/dx = ky",
    ],

    "Vector Algebra": [
      "a·b = |a||b|cosθ",
      "|a × b| = |a||b|sinθ",
    ],

    "Three Dimensional Geometry": [
      "Distance between two points = √[(x₂-x₁)² + (y₂-y₁)² + (z₂-z₁)²]",
    ],

    "Linear Programming": [
      "Corner point method",
      "Optimal value occurs at a feasible corner point",
    ],

    "Probability": [
      "P(A|B) = P(A∩B)/P(B)",
      "P(A∩B) = P(A|B)P(B)",
      "Bayes Theorem",
    ],
  },
};
