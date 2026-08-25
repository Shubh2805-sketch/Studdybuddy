const Map<String, Map<String, List<String>>> studyBuddyFormulas = {
  "Physics": {
    "Electric Charges and Fields": [
      "F = kq₁q₂/r²",
      "E = F/q",
      "E = kQ/r²",
      "F = qE",
      "Φ = EA cosθ",
      "Gauss Law: Φ = q/ε₀",
      "E = σ/ε₀",
      "p = q × 2a",
    ],

    "Electrostatic Potential and Capacitance": [
      "V = W/q",
      "V = kQ/r",
      "E = -dV/dr",
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
      "I = Q/t",
      "J = I/A",
      "V = E - Ir",
      "Series: R = R₁ + R₂ + R₃ + ...",
      "Parallel: 1/R = 1/R₁ + 1/R₂ + 1/R₃ + ...",
    ],

    "Moving Charges and Magnetism": [
      "F = q(v × B)",
      "F = qvB sinθ",
      "F = BIL sinθ",
      "B = μ₀I/2πr",
      "B = μ₀nI",
      "r = mv/qB",
      "ω = qB/m",
      "τ = nBIA sinθ",
    ],

    "Magnetism and Matter": [
      "τ = MB sinθ",
      "M = m × 2l",
      "B = μ₀(H + M)",
      "μᵣ = 1 + χ",
      "χ = M/H",
    ],

    "Electromagnetic Induction": [
      "ε = -dΦ/dt",
      "Φ = BA cosθ",
      "ε = Blv",
      "L = NΦ/I",
      "ε = -L(dI/dt)",
      "U = ½LI²",
    ],

    "Alternating Current": [
      "V = V₀ sinωt",
      "I = I₀ sinωt",
      "Vᵣₘₛ = V₀/√2",
      "Iᵣₘₛ = I₀/√2",
      "Xₗ = ωL",
      "Xc = 1/ωC",
      "Z = √(R² + (Xₗ - Xc)²)",
      "I = V/Z",
      "P = VI cosφ",
    ],

    "Electromagnetic Waves": [
      "c = λν",
      "c = 1/√(μ₀ε₀)",
      "E₀/B₀ = c",
      "Energy density = ½ε₀E²",
    ],

    "Ray Optics and Optical Instruments": [
      "1/f = 1/v - 1/u",
      "m = v/u",
      "Power = 1/f",
      "μ = sin i/sin r",
      "1/f = (μ - 1)(1/R₁ - 1/R₂)",
      "Lens combination: P = P₁ + P₂",
    ],

    "Wave Optics": [
      "β = λD/d",
      "Path difference = d sinθ",
      "Constructive: Δ = nλ",
      "Destructive: Δ = (2n+1)λ/2",
      "I = I₀ cos²θ",
    ],

    "Dual Nature of Radiation and Matter": [
      "E = hν",
      "E = hc/λ",
      "p = h/λ",
      "λ = h/p",
      "Kmax = hν - φ",
      "eV₀ = hν - φ",
    ],

    "Atoms": [
      "Eₙ = -13.6/n² eV",
      "rₙ = n²a₀",
      "mvr = nh/2π",
      "1/λ = R(1/n₁² - 1/n₂²)",
    ],

    "Nuclei": [
      "N = N₀e⁻λt",
      "A = λN",
      "T½ = 0.693/λ",
      "Mean life = 1/λ",
      "E = Δmc²",
      "R = R₀A¹ᐟ³",
    ],

    "Semiconductor Electronics": [
      "I = Iₑ - Iᵦ",
      "α = I꜀/Iₑ",
      "β = I꜀/Iᵦ",
      "β = α/(1-α)",
      "Logic Gates: AND, OR, NOT",
      "Universal Gates: NAND, NOR",
    ],
  },

  "Chemistry": {
    "Solutions": [
      "Molarity = moles of solute / volume of solution",
      "M = n/V",
      "Molality = moles of solute / mass of solvent in kg",
      "m = n/W",
      "χ = nᵢ/Σn",
      "π = CRT",
      "ΔTᵦ = Kᵦm",
      "ΔT𝒇 = K𝒇m",
      "P = X₁P₁°",
    ],

    "Electrochemistry": [
      "Ecell = Ecathode - Eanode",
      "ΔG = -nFE",
      "E = E° - (0.0591/n) log Q",
      "G = 1/R",
      "κ = G × l/A",
      "Λₘ = κ × 1000/M",
      "Q = It",
    ],

    "Chemical Kinetics": [
      "Rate = k[A]ⁿ",
      "k = Ae^(-Ea/RT)",
      "ln(k₂/k₁) = Ea/R(1/T₁ - 1/T₂)",
      "For first order: k = 2.303/t log(a/(a-x))",
      "t½ = 0.693/k",
      "Rate constant unit for first order = s⁻¹",
    ],

    "d and f Block Elements": [
      "Variable oxidation states",
      "Lanthanoid contraction",
      "Magnetic moment: μ = √n(n+2) BM",
      "Oxidation state depends on ns and (n-1)d electrons",
    ],

    "Coordination Compounds": [
      "Coordination Number = number of donor atoms attached to metal",
      "Oxidation state = charge balance equation",
      "EAN = atomic number - oxidation state + electrons donated by ligands",
      "Crystal Field Splitting: Δ₀",
      "Crystal Field Splitting: Δₜ",
    ],

    "Haloalkanes and Haloarenes": [
      "SN1 reaction",
      "SN2 reaction",
      "SN1: first-order reaction",
      "SN2: second-order reaction",
      "R-X + OH⁻ → R-OH + X⁻",
      "Wurtz reaction",
      "Finkelstein reaction",
      "Swarts reaction",
    ],

    "Alcohols, Phenols and Ethers": [
      "Williamson Ether Synthesis",
      "R-OH + Na → R-ONa + ½H₂",
      "Lucas Test",
      "Kolbe Reaction",
      "Reimer-Tiemann Reaction",
      "Dehydration: Alcohol → Alkene + H₂O",
    ],

    "Aldehydes, Ketones and Carboxylic Acids": [
      "Aldol condensation",
      "Cannizzaro reaction",
      "R-CHO + [O] → R-COOH",
      "R-CHO + H₂ → R-CH₂OH",
      "R-CO-R' + H₂ → R-CHOH-R'",
      "R-COOH + NaOH → R-COONa + H₂O",
    ],

    "Amines": [
      "Basicity order",
      "R-NH₂ + HCl → R-NH₃⁺Cl⁻",
      "Carbylamine reaction",
      "Hinsberg test",
      "Diazotisation",
      "Sandmeyer reaction",
    ],

    "Biomolecules": [
      "Protein peptide bond",
      "Amino acids contain -NH₂ and -COOH",
      "Glucose molecular formula = C₆H₁₂O₆",
      "Sucrose = glucose + fructose",
      "Starch and cellulose are polysaccharides",
    ],

    "Polymers": [
      "Addition polymerisation",
      "Condensation polymerisation",
      "Degree of polymerisation = molecular mass of polymer / molecular mass of monomer",
      "Natural polymers",
      "Synthetic polymers",
    ],

    "Chemistry in Everyday Life": [
      "Antacids",
      "Antihistamines",
      "Analgesics",
      "Antibiotics",
      "Antiseptics",
      "Disinfectants",
    ],
  },

  "Maths": {
    "Relations and Functions": [
      "f(g(x))",
      "g(f(x))",
      "(f ∘ g)(x) = f(g(x))",
      "f is one-one if f(x₁) = f(x₂) ⇒ x₁ = x₂",
      "f is onto if Range(f) = Codomain(f)",
    ],

    "Inverse Trigonometric Functions": [
      "sin⁻¹x + cos⁻¹x = π/2",
      "tan⁻¹x + cot⁻¹x = π/2",
      "sin⁻¹x + sin⁻¹y",
      "tan⁻¹x + tan⁻¹y",
      "tan⁻¹x - tan⁻¹y",
    ],

    "Matrices": [
      "A × B",
      "A⁻¹ = adj(A)/|A|",
      "AA⁻¹ = A⁻¹A = I",
      "(AB)ᵀ = BᵀAᵀ",
      "(AB)⁻¹ = B⁻¹A⁻¹",
    ],

    "Determinants": [
      "|AB| = |A||B|",
      "|Aᵀ| = |A|",
      "Area of triangle = ½|x₁(y₂-y₃)+x₂(y₃-y₁)+x₃(y₁-y₂)|",
      "If two rows are identical, determinant = 0",
    ],

    "Continuity and Differentiability": [
      "d(xⁿ)/dx = nxⁿ⁻¹",
      "d(sin x)/dx = cos x",
      "d(cos x)/dx = -sin x",
      "d(eˣ)/dx = eˣ",
      "d(ln x)/dx = 1/x",
    ],

    "Application of Derivatives": [
      "dy/dx = 0 at stationary points",
      "Increasing function: dy/dx > 0",
      "Decreasing function: dy/dx < 0",
      "Second derivative test",
      "Slope = dy/dx",
    ],

    "Integrals": [
      "∫xⁿ dx = xⁿ⁺¹/(n+1) + C",
      "∫1/x dx = ln|x| + C",
      "∫eˣ dx = eˣ + C",
      "∫sin x dx = -cos x + C",
      "∫cos x dx = sin x + C",
      "∫sec²x dx = tan x + C",
    ],

    "Application of Integrals": [
      "Area = ∫y dx",
      "Area between curves = ∫(upper - lower) dx",
      "Area under curve = ∫ᵃᵇ y dx",
    ],

    "Differential Equations": [
      "dy/dx = ky",
      "dy/y = k dx",
      "Variable separable form",
      "Order = highest derivative",
      "Degree = highest power of highest derivative",
    ],

    "Vector Algebra": [
      "a·b = |a||b|cosθ",
      "|a×b| = |a||b|sinθ",
      "a·a = |a|²",
      "a × b = -b × a",
      "a·(b×c) = scalar triple product",
    ],

    "Three Dimensional Geometry": [
      "Distance = √[(x₂-x₁)²+(y₂-y₁)²+(z₂-z₁)²]",
      "Direction cosines: l²+m²+n² = 1",
      "Line equation: r = a + λb",
      "Distance between parallel lines",
    ],

    "Linear Programming": [
      "Corner point method",
      "Objective function: Z = ax + by",
      "Feasible region",
      "Optimal value occurs at a corner point",
    ],

    "Probability": [
      "P(A|B) = P(A∩B)/P(B)",
      "P(A∩B) = P(A)P(B|A)",
      "P(A') = 1-P(A)",
      "Bayes Theorem",
      "P(A∪B) = P(A)+P(B)-P(A∩B)",
    ],
  },
};
