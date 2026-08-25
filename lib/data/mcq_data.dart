class McqItem {
  final String question;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const McqItem({
    required this.question,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}

const Map<String, Map<String, List<McqItem>>> studyBuddyMcqs = {
  "Physics": {
    "Electric Charges and Fields": [
      McqItem(
        question:
            "According to Coulomb's law, electrostatic force is proportional to:",
        options: [
          "q₁q₂/r²",
          "q₁q₂r²",
          "r²/(q₁q₂)",
          "q₁/q₂",
        ],
        correctIndex: 0,
        explanation:
            "Coulomb's law gives F = kq₁q₂/r².",
      ),
      McqItem(
        question:
            "The SI unit of electric field intensity is:",
        options: [
          "N/C",
          "C/N",
          "J/C",
          "C²/N",
        ],
        correctIndex: 0,
        explanation:
            "Electric field is force per unit charge, so its SI unit is N/C.",
      ),
      McqItem(
        question:
            "If the distance between two charges is doubled, the electrostatic force becomes:",
        options: [
          "Four times",
          "Half",
          "One-fourth",
          "Twice",
        ],
        correctIndex: 2,
        explanation:
            "Force varies inversely as r². Therefore doubling r makes the force one-fourth.",
      ),
      McqItem(
        question:
            "Electric flux through a surface depends on:",
        options: [
          "Electric field and area",
          "Only charge",
          "Only area",
          "Only distance",
        ],
        correctIndex: 0,
        explanation:
            "For a uniform field, Φ = EA cosθ.",
      ),
      McqItem(
        question:
            "According to Gauss's law, total electric flux through a closed surface is:",
        options: [
          "qε₀",
          "q/ε₀",
          "ε₀/q",
          "Zero always",
        ],
        correctIndex: 1,
        explanation:
            "Gauss's law states Φ = q/ε₀.",
      ),
      McqItem(
        question:
            "The direction of electric field due to a positive point charge is:",
        options: [
          "Towards the charge",
          "Away from the charge",
          "Circular",
          "Random",
        ],
        correctIndex: 1,
        explanation:
            "Electric field lines originate from positive charges and point outward.",
      ),
      McqItem(
        question:
            "The electric field inside a conductor in electrostatic equilibrium is:",
        options: [
          "Maximum",
          "Infinite",
          "Zero",
          "Variable",
        ],
        correctIndex: 2,
        explanation:
            "Free charges rearrange until the internal electrostatic field becomes zero.",
      ),
      McqItem(
        question:
            "Electric dipole moment is directed from:",
        options: [
          "Positive to negative charge",
          "Negative to positive charge",
          "Centre outward only",
          "It has no direction",
        ],
        correctIndex: 1,
        explanation:
            "Dipole moment is conventionally directed from negative to positive charge.",
      ),
      McqItem(
        question:
            "Torque on an electric dipole in a uniform electric field is:",
        options: [
          "pE sinθ",
          "pE cosθ",
          "p/E",
          "E/p",
        ],
        correctIndex: 0,
        explanation:
            "The torque is τ = pE sinθ.",
      ),
      McqItem(
        question:
            "The electric field at a point is defined as:",
        options: [
          "Energy per unit charge",
          "Force per unit positive test charge",
          "Charge per unit force",
          "Work per unit distance",
        ],
        correctIndex: 1,
        explanation:
            "Electric field intensity is E = F/q.",
      ),
    ],

    "Electrostatic Potential and Capacitance": [
      McqItem(
        question:
            "Electric potential is defined as:",
        options: [
          "Work done per unit positive charge",
          "Force per unit charge",
          "Charge per unit work",
          "Energy multiplied by charge",
        ],
        correctIndex: 0,
        explanation:
            "Electric potential V = W/q.",
      ),
      McqItem(
        question:
            "The potential due to a point charge Q at distance r is:",
        options: [
          "kQ/r",
          "kQ/r²",
          "kr/Q",
          "Q/kr",
        ],
        correctIndex: 0,
        explanation:
            "For a point charge, V = kQ/r.",
      ),
      McqItem(
        question:
            "Capacitance is defined as:",
        options: [
          "V/Q",
          "Q/V",
          "QV",
          "Q + V",
        ],
        correctIndex: 1,
        explanation:
            "Capacitance C = Q/V.",
      ),
      McqItem(
        question:
            "Capacitance of a parallel plate capacitor in vacuum is:",
        options: [
          "ε₀A/d",
          "ε₀d/A",
          "Ad/ε₀",
          "A/(ε₀d)",
        ],
        correctIndex: 0,
        explanation:
            "C = ε₀A/d.",
      ),
      McqItem(
        question:
            "When a dielectric is inserted between capacitor plates, capacitance:",
        options: [
          "Decreases",
          "Becomes zero",
          "Increases",
          "Never changes",
        ],
        correctIndex: 2,
        explanation:
            "A dielectric increases capacitance by the dielectric constant.",
      ),
      McqItem(
        question:
            "Energy stored in a capacitor can be written as:",
        options: [
          "½CV²",
          "CV²",
          "2CV²",
          "C/V²",
        ],
        correctIndex: 0,
        explanation:
            "U = ½CV².",
      ),
      McqItem(
        question:
            "For capacitors in parallel, equivalent capacitance is:",
        options: [
          "C₁C₂/(C₁+C₂)",
          "C₁+C₂+...",
          "1/C₁+1/C₂",
          "Always zero",
        ],
        correctIndex: 1,
        explanation:
            "Parallel capacitances add directly.",
      ),
      McqItem(
        question:
            "For capacitors in series:",
        options: [
          "C = C₁+C₂",
          "1/C = 1/C₁+1/C₂+...",
          "C = C₁C₂",
          "C = C₁-C₂",
        ],
        correctIndex: 1,
        explanation:
            "Reciprocals of capacitances add in series.",
      ),
      McqItem(
        question:
            "Work done in moving a charge along an equipotential surface is:",
        options: [
          "Maximum",
          "Minimum but non-zero",
          "Zero",
          "Infinite",
        ],
        correctIndex: 2,
        explanation:
            "Potential difference along an equipotential surface is zero.",
      ),
      McqItem(
        question:
            "Electric field is perpendicular to an equipotential surface because:",
        options: [
          "Potential is always zero",
          "There is no potential change along the surface",
          "Charge is absent",
          "The surface is always spherical",
        ],
        correctIndex: 1,
        explanation:
            "The electric field is related to the potential gradient and is normal to an equipotential surface.",
      ),
    ],

    "Current Electricity": [
      McqItem(
        question: "Ohm's law is:",
        options: [
          "V = IR",
          "V = I/R",
          "R = VI",
          "I = VR",
        ],
        correctIndex: 0,
        explanation: "Ohm's law states V = IR at constant temperature.",
      ),
      McqItem(
        question: "Resistance of a wire is:",
        options: [
          "ρA/L",
          "ρL/A",
          "LA/ρ",
          "L/(ρA)",
        ],
        correctIndex: 1,
        explanation: "R = ρL/A.",
      ),
      McqItem(
        question: "Electrical power can be written as:",
        options: [
          "VI",
          "I²R",
          "V²/R",
          "All of these",
        ],
        correctIndex: 3,
        explanation: "P = VI = I²R = V²/R.",
      ),
      McqItem(
        question:
            "If the length of a wire is doubled, its resistance becomes:",
        options: [
          "Half",
          "Double",
          "Four times",
          "Unchanged",
        ],
        correctIndex: 1,
        explanation:
            "Resistance is directly proportional to length.",
      ),
      McqItem(
        question:
            "The SI unit of resistivity is:",
        options: [
          "Ω m",
          "Ω/m",
          "m/Ω",
          "Ω",
        ],
        correctIndex: 0,
        explanation: "Resistivity has SI unit Ω m.",
      ),
      McqItem(
        question:
            "In a series combination of resistors, the same quantity through every resistor is:",
        options: [
          "Voltage",
          "Current",
          "Power",
          "Resistance",
        ],
        correctIndex: 1,
        explanation:
            "Current is the same through resistors connected in series.",
      ),
      McqItem(
        question:
            "In a parallel combination, the same quantity across every branch is:",
        options: [
          "Current",
          "Voltage",
          "Resistance",
          "Power",
        ],
        correctIndex: 1,
        explanation:
            "Voltage is the same across parallel branches.",
      ),
      McqItem(
        question:
            "Kirchhoff's junction rule is based on conservation of:",
        options: [
          "Energy",
          "Charge",
          "Momentum",
          "Mass",
        ],
        correctIndex: 1,
        explanation:
            "The junction rule follows conservation of electric charge.",
      ),
      McqItem(
        question:
            "Kirchhoff's loop rule is based on conservation of:",
        options: [
          "Energy",
          "Charge",
          "Mass",
          "Current",
        ],
        correctIndex: 0,
        explanation:
            "The loop rule follows conservation of energy.",
      ),
      McqItem(
        question:
            "Drift velocity is the average velocity of:",
        options: [
          "Protons only",
          "Neutrons",
          "Free electrons due to an electric field",
          "Photons",
        ],
        correctIndex: 2,
        explanation:
            "Drift velocity describes the average directed motion of free electrons in a conductor.",
      ),
    ],

    "Moving Charges and Magnetism": [
      McqItem(
        question:
            "Magnetic force on a charged particle is:",
        options: [
          "qvB sinθ",
          "qvB cosθ",
          "qB/v",
          "qv/B",
        ],
        correctIndex: 0,
        explanation:
            "F = qvB sinθ.",
      ),
      McqItem(
        question:
            "A charged particle moving parallel to a magnetic field experiences:",
        options: [
          "Maximum force",
          "Zero force",
          "Infinite force",
          "Constant gravitational force",
        ],
        correctIndex: 1,
        explanation:
            "For θ = 0, sinθ = 0, so magnetic force is zero.",
      ),
      McqItem(
        question:
            "Force on a current carrying conductor is:",
        options: [
          "BIL sinθ",
          "BI/L",
          "BL/I",
          "IL/B",
        ],
        correctIndex: 0,
        explanation:
            "F = BIL sinθ.",
      ),
      McqItem(
        question:
            "Magnetic field due to a long straight conductor is:",
        options: [
          "μ₀I/(2πr)",
          "μ₀Ir",
          "2πr/(μ₀I)",
          "μ₀/(Ir)",
        ],
        correctIndex: 0,
        explanation:
            "B = μ₀I/(2πr).",
      ),
      McqItem(
        question:
            "A charged particle moving perpendicular to a uniform magnetic field follows:",
        options: [
          "Straight line",
          "Circular path",
          "Parabolic path",
          "Random path",
        ],
        correctIndex: 1,
        explanation:
            "The magnetic force acts as centripetal force.",
      ),
      McqItem(
        question:
            "Radius of circular motion in a magnetic field is:",
        options: [
          "mv/qB",
          "qB/mv",
          "m/qvB",
          "qv/mB",
        ],
        correctIndex: 0,
        explanation:
            "r = mv/(qB).",
      ),
      McqItem(
        question:
            "Cyclotron frequency is:",
        options: [
          "qB/(2πm)",
          "2πm/(qB)",
          "q/(2πmB)",
          "mB/q",
        ],
        correctIndex: 0,
        explanation:
            "f = qB/(2πm).",
      ),
      McqItem(
        question:
            "Torque on a current carrying coil is:",
        options: [
          "nBIA sinθ",
          "nBI/A",
          "BIA/n",
          "nA/(BI)",
        ],
        correctIndex: 0,
        explanation:
            "τ = nBIA sinθ.",
      ),
      McqItem(
        question:
            "The Biot-Savart law relates magnetic field to:",
        options: [
          "Current element",
          "Only electric charge",
          "Temperature",
          "Pressure",
        ],
        correctIndex: 0,
        explanation:
            "The Biot-Savart law determines the magnetic field produced by a current element.",
      ),
      McqItem(
        question:
            "The magnetic force on a charged particle does no work because:",
        options: [
          "It is always zero",
          "Force is perpendicular to velocity",
          "Charge is zero",
          "Velocity is zero",
        ],
        correctIndex: 1,
        explanation:
            "Magnetic force is perpendicular to velocity, so it does no work.",
      ),
    ],

    "Electromagnetic Induction": [
      McqItem(
        question:
            "Faraday's law gives induced emf as:",
        options: [
          "-dΦ/dt",
          "dΦ/dt",
          "Φt",
          "Φ/t²",
        ],
        correctIndex: 0,
        explanation:
            "ε = -dΦ/dt.",
      ),
      McqItem(
        question: "Lenz's law gives the:",
        options: [
          "Magnitude of resistance",
          "Direction of induced current",
          "Mass of conductor",
          "Temperature",
        ],
        correctIndex: 1,
        explanation:
            "Lenz's law determines the direction of induced current.",
      ),
      McqItem(
        question: "Magnetic flux is:",
        options: [
          "BA cosθ",
          "BA sinθ",
          "B/A",
          "A/B",
        ],
        correctIndex: 0,
        explanation:
            "Φ = BA cosθ.",
      ),
      McqItem(
        question: "Motional emf for perpendicular motion is:",
        options: [
          "Blv",
          "B/lv",
          "Bv/l",
          "lv/B",
        ],
        correctIndex: 0,
        explanation:
            "ε = Blv.",
      ),
      McqItem(
        question:
            "Self-inductance opposes changes in:",
        options: [
          "Voltage only",
          "Current",
          "Mass",
          "Temperature",
        ],
        correctIndex: 1,
        explanation:
            "A coil opposes changes in current through it.",
      ),
      McqItem(
        question:
            "Energy stored in an inductor is:",
        options: [
          "½LI²",
          "LI",
          "L/I²",
          "2LI²",
        ],
        correctIndex: 0,
        explanation:
            "U = ½LI².",
      ),
      McqItem(
        question:
            "SI unit of magnetic flux is:",
        options: [
          "Tesla",
          "Weber",
          "Henry",
          "Volt",
        ],
        correctIndex: 1,
        explanation:
            "Magnetic flux is measured in weber.",
      ),
      McqItem(
        question:
            "Mutual induction occurs when:",
        options: [
          "Changing current in one coil induces emf in another",
          "A resistor heats up",
          "A battery loses charge",
          "A capacitor discharges",
        ],
        correctIndex: 0,
        explanation:
            "Changing current in one coil changes magnetic flux through another coil.",
      ),
      McqItem(
        question:
            "Lenz's law is consistent with conservation of:",
        options: [
          "Energy",
          "Mass only",
          "Charge only",
          "Momentum only",
        ],
        correctIndex: 0,
        explanation:
            "The opposition described by Lenz's law ensures conservation of energy.",
      ),
      McqItem(
        question:
            "Induced emf increases when the magnetic flux changes:",
        options: [
          "More slowly",
          "More rapidly",
          "Not at all",
          "Only at night",
        ],
        correctIndex: 1,
        explanation:
            "Faraday's law shows emf depends on the rate of change of magnetic flux.",
      ),
    ],

    "Alternating Current": [
      McqItem(
        question: "RMS value of sinusoidal voltage is:",
        options: [
          "V₀",
          "V₀/√2",
          "√2V₀",
          "2V₀",
        ],
        correctIndex: 1,
        explanation:
            "Vrms = V₀/√2.",
      ),
      McqItem(
        question: "RMS value of sinusoidal current is:",
        options: [
          "I₀",
          "I₀/√2",
          "√2I₀",
          "2I₀",
        ],
        correctIndex: 1,
        explanation:
            "Irms = I₀/√2.",
      ),
      McqItem(
        question:
            "In a pure resistor, voltage and current are:",
        options: [
          "In phase",
          "180° apart",
          "90° apart",
          "Random",
        ],
        correctIndex: 0,
        explanation:
            "For a pure resistor, voltage and current are in phase.",
      ),
      McqItem(
        question:
            "In a pure inductor, current lags voltage by:",
        options: [
          "0°",
          "45°",
          "90°",
          "180°",
        ],
        correctIndex: 2,
        explanation:
            "Current lags voltage by 90° in a pure inductor.",
      ),
      McqItem(
        question:
            "In a pure capacitor, current leads voltage by:",
        options: [
          "90°",
          "45°",
          "0°",
          "180°",
        ],
        correctIndex: 0,
        explanation:
            "Current leads voltage by 90° in a pure capacitor.",
      ),
      McqItem(
        question:
            "The frequency of AC supplied in India is commonly:",
        options: [
          "25 Hz",
          "50 Hz",
          "60 Hz",
          "100 Hz",
        ],
        correctIndex: 1,
        explanation:
            "The standard AC frequency in India is 50 Hz.",
      ),
      McqItem(
        question:
            "Average value of a sinusoidal AC over a complete cycle is:",
        options: [
          "Maximum",
          "Zero",
          "Half maximum",
          "Infinite",
        ],
        correctIndex: 1,
        explanation:
            "Positive and negative halves cancel over one complete cycle.",
      ),
      McqItem(
        question:
            "Power factor in a purely resistive circuit is:",
        options: [
          "0",
          "0.5",
          "1",
          "2",
        ],
        correctIndex: 2,
        explanation:
            "Phase difference is zero, so cosφ = 1.",
      ),
      McqItem(
        question:
            "A transformer works on the principle of:",
        options: [
          "Mutual induction",
          "Electrolysis",
          "Photoelectric effect",
          "Thermionic emission",
        ],
        correctIndex: 0,
        explanation:
            "A transformer works through mutual electromagnetic induction.",
      ),
      McqItem(
        question:
            "An ideal transformer has:",
        options: [
          "No energy transfer",
          "100% efficiency",
          "Zero voltage",
          "Infinite resistance",
        ],
        correctIndex: 1,
        explanation:
            "An ideal transformer is assumed to have no energy losses.",
      ),
  ],
  },

  "Chemistry": {
    "Solutions": [
      McqItem(
        question: "Molarity is defined as:",
        options: [
          "Moles of solute per litre of solution",
          "Moles of solute per kg of solvent",
          "Mass per litre",
          "Volume per mole",
        ],
        correctIndex: 0,
        explanation:
            "Molarity M = moles of solute / volume of solution in litres.",
      ),
      McqItem(
        question: "Molality is based on:",
        options: [
          "Volume of solution",
          "Mass of solvent",
          "Mass of solution",
          "Volume of solvent",
        ],
        correctIndex: 1,
        explanation:
            "Molality is moles of solute per kilogram of solvent.",
      ),
      McqItem(
        question: "Osmotic pressure is represented by:",
        options: [
          "π = CRT",
          "π = C/R",
          "π = RT/C",
          "π = CR/T",
        ],
        correctIndex: 0,
        explanation:
            "For dilute solutions, π = CRT.",
      ),
      McqItem(
        question:
            "Colligative properties depend primarily on:",
        options: [
          "Nature of solute",
          "Number of solute particles",
          "Colour of solution",
          "Density only",
        ],
        correctIndex: 1,
        explanation:
            "Colligative properties depend on the number of solute particles.",
      ),
      McqItem(
        question:
            "Elevation in boiling point is:",
        options: [
          "ΔTb = Kb m",
          "ΔTb = Kf m",
          "ΔTb = m/Kb",
          "ΔTb = Kb/m",
        ],
        correctIndex: 0,
        explanation:
            "For dilute solutions, ΔTb = Kb m.",
      ),
      McqItem(
        question:
            "Depression in freezing point is:",
        options: [
          "ΔTf = Kf m",
          "ΔTf = Kb m",
          "ΔTf = m/Kf",
          "ΔTf = Kf/m",
        ],
        correctIndex: 0,
        explanation:
            "ΔTf = Kf m.",
      ),
      McqItem(
        question:
            "An ideal solution obeys Raoult's law:",
        options: [
          "Only at one concentration",
          "Over the entire concentration range",
          "Never",
          "Only at zero concentration",
        ],
        correctIndex: 1,
        explanation:
            "Ideal solutions obey Raoult's law over the entire concentration range.",
      ),
      McqItem(
        question:
            "Molality is independent of temperature because it depends on:",
        options: [
          "Volume",
          "Mass",
          "Pressure",
          "Density",
        ],
        correctIndex: 1,
        explanation:
            "Mass does not change appreciably with temperature, unlike volume.",
      ),
      McqItem(
        question:
            "Van't Hoff factor accounts for:",
        options: [
          "Association or dissociation",
          "Colour",
          "Temperature only",
          "Pressure only",
        ],
        correctIndex: 0,
        explanation:
            "The van't Hoff factor accounts for changes in the number of solute particles.",
      ),
      McqItem(
        question:
            "Raoult's law relates vapour pressure to:",
        options: [
          "Mole fraction",
          "Mass fraction only",
          "Temperature only",
          "Density only",
        ],
        correctIndex: 0,
        explanation:
            "For an ideal solution, partial vapour pressure is proportional to mole fraction.",
      ),
    ],

    "Electrochemistry": [
      McqItem(
        question:
            "The relation between Gibbs energy and cell potential is:",
        options: [
          "ΔG = nFE",
          "ΔG = -nFE",
          "ΔG = FE/n",
          "ΔG = -FE/n",
        ],
        correctIndex: 1,
        explanation:
            "ΔG = -nFE.",
      ),
      McqItem(
        question:
            "Conductance is the reciprocal of:",
        options: [
          "Voltage",
          "Resistance",
          "Current",
          "Charge",
        ],
        correctIndex: 1,
        explanation:
            "G = 1/R.",
      ),
      McqItem(
        question:
            "A galvanic cell converts:",
        options: [
          "Electrical energy into chemical energy",
          "Chemical energy into electrical energy",
          "Heat into mass",
          "Light into sound",
        ],
        correctIndex: 1,
        explanation:
            "A galvanic cell produces electrical energy from a spontaneous chemical reaction.",
      ),
      McqItem(
        question:
            "A salt bridge primarily helps maintain:",
        options: [
          "Electrical neutrality",
          "Temperature",
          "Pressure",
          "Mass",
        ],
        correctIndex: 0,
        explanation:
            "A salt bridge maintains electrical neutrality and completes the circuit.",
      ),
      McqItem(
        question:
            "The SI unit of conductivity is:",
        options: [
          "S m⁻¹",
          "Ω m",
          "V",
          "C",
        ],
        correctIndex: 0,
        explanation:
            "Conductivity has SI unit S m⁻¹.",
      ),
      McqItem(
        question:
            "Faraday's first law relates deposited mass to:",
        options: [
          "Quantity of electricity",
          "Temperature only",
          "Pressure",
          "Volume only",
        ],
        correctIndex: 0,
        explanation:
            "Deposited mass is proportional to the quantity of electricity passed.",
      ),
      McqItem(
        question:
            "The standard hydrogen electrode is used as a reference for:",
        options: [
          "Electrode potential",
          "Temperature",
          "Resistance",
          "Mass",
        ],
        correctIndex: 0,
        explanation:
            "Electrode potentials are measured relative to the standard hydrogen electrode.",
      ),
      McqItem(
        question:
            "For a spontaneous galvanic cell reaction, Ecell is:",
        options: [
          "Positive",
          "Negative",
          "Always zero",
          "Infinite",
        ],
        correctIndex: 0,
        explanation:
            "A spontaneous galvanic reaction has positive cell potential.",
      ),
      McqItem(
        question:
            "Molar conductivity generally increases on dilution because:",
        options: [
          "Ion mobility and/or dissociation increase",
          "Mass increases",
          "Temperature always becomes zero",
          "Electrolyte disappears",
        ],
        correctIndex: 0,
        explanation:
            "Dilution generally increases ionic mobility and dissociation.",
      ),
      McqItem(
        question:
            "The Nernst equation relates electrode potential to:",
        options: [
          "Reaction quotient",
          "Mass only",
          "Density only",
          "Volume only",
        ],
        correctIndex: 0,
        explanation:
            "The Nernst equation accounts for reaction conditions through Q.",
      ),
    ],

    "Chemical Kinetics": [
      McqItem(
        question: "Rate of reaction is the change in:",
        options: [
          "Concentration per unit time",
          "Mass per unit volume only",
          "Temperature",
          "Pressure only",
        ],
        correctIndex: 0,
        explanation:
            "Reaction rate measures concentration change per unit time.",
      ),
      McqItem(
        question: "The Arrhenius equation is:",
        options: [
          "k = Ae^(-Ea/RT)",
          "k = Ae^(Ea/RT)",
          "k = A + Ea/RT",
          "k = RT/Ea",
        ],
        correctIndex: 0,
        explanation:
            "The Arrhenius equation is k = Ae^(-Ea/RT).",
      ),
      McqItem(
        question:
            "Half-life of a first-order reaction is:",
        options: [
          "0.693/k",
          "k/0.693",
          "1/k²",
          "k²",
        ],
        correctIndex: 0,
        explanation:
            "For first-order reactions, t½ = 0.693/k.",
      ),
      McqItem(
        question:
            "Unit of first-order rate constant is:",
        options: [
          "s⁻¹",
          "mol L⁻¹ s⁻¹",
          "L mol⁻¹ s⁻¹",
          "s",
        ],
        correctIndex: 0,
        explanation:
            "First-order rate constant has unit s⁻¹.",
      ),
      McqItem(
        question:
            "A catalyst generally:",
        options: [
          "Raises activation energy",
          "Lowers activation energy",
          "Stops the reaction",
          "Changes equilibrium constant",
        ],
        correctIndex: 1,
        explanation:
            "A catalyst provides an alternative pathway with lower activation energy.",
      ),
      McqItem(
        question: "Molecularity applies to:",
        options: [
          "Elementary reactions",
          "Only equilibrium reactions",
          "Only zero-order reactions",
          "All solutions",
        ],
        correctIndex: 0,
        explanation:
            "Molecularity is defined for an elementary reaction.",
      ),
      McqItem(
        question:
            "Order of a reaction is determined from:",
        options: [
          "Experimentally determined rate law",
          "Balanced equation always",
          "Temperature only",
          "Pressure only",
        ],
        correctIndex: 0,
        explanation:
            "Reaction order is obtained experimentally from the rate law.",
      ),
      McqItem(
        question:
            "Increasing temperature generally:",
        options: [
          "Decreases rate",
          "Increases rate",
          "Makes rate zero",
          "Has no effect",
        ],
        correctIndex: 1,
        explanation:
            "More molecules acquire sufficient energy to cross the activation barrier.",
      ),
      McqItem(
        question: "Activation energy is:",
        options: [
          "Minimum energy required for reaction",
          "Energy of products only",
          "Heat of solution",
          "Electrical energy",
        ],
        correctIndex: 0,
        explanation:
            "Activation energy is the minimum energy required for effective reaction.",
      ),
      McqItem(
        question:
            "For a first-order reaction, the rate is proportional to:",
        options: [
          "[A]",
          "[A]²",
          "1/[A]",
          "A²",
        ],
        correctIndex: 0,
        explanation:
            "For a first-order reaction, rate = k[A].",
      ),
    ],

    "Aldehydes, Ketones and Carboxylic Acids": [
      McqItem(
        question:
            "Aldehydes are generally more reactive than ketones because they have:",
        options: [
          "More steric hindrance",
          "Less steric hindrance",
          "No carbonyl group",
          "More oxygen atoms",
        ],
        correctIndex: 1,
        explanation:
            "Aldehydes have less steric hindrance around the carbonyl carbon.",
      ),
      McqItem(
        question:
            "Benzaldehyde is less reactive than propenal mainly because of:",
        options: [
          "Resonance/conjugation",
          "Higher temperature",
          "Lack of oxygen",
          "Ionic bonding",
        ],
        correctIndex: 0,
        explanation:
            "Conjugation with the benzene ring reduces the electrophilic character of the carbonyl carbon.",
      ),
      McqItem(
        question:
            "Aldol condensation requires:",
        options: [
          "Alpha hydrogen",
          "No hydrogen",
          "Only tertiary carbon",
          "Only aromatic oxygen",
        ],
        correctIndex: 0,
        explanation:
            "Aldol condensation is shown by carbonyl compounds having alpha hydrogen.",
      ),
      McqItem(
        question:
            "Cannizzaro reaction is shown by aldehydes:",
        options: [
          "With alpha hydrogen",
          "Without alpha hydrogen",
          "Only ketones",
          "Only acids",
        ],
        correctIndex: 1,
        explanation:
            "Aldehydes without alpha hydrogen undergo Cannizzaro reaction.",
      ),
      McqItem(
        question:
            "Aldehydes are readily oxidised to:",
        options: [
          "Alcohols",
          "Carboxylic acids",
          "Alkanes",
          "Ethers",
        ],
        correctIndex: 1,
        explanation:
            "Aldehydes are readily oxidised to corresponding carboxylic acids.",
      ),
      McqItem(
        question:
            "Tollens' reagent gives a silver mirror with:",
        options: [
          "Aldehydes",
          "Alkanes",
          "Ethers",
          "Esters only",
        ],
        correctIndex: 0,
        explanation:
            "Aldehydes reduce Tollens' reagent to metallic silver.",
      ),
      McqItem(
        question:
            "Carboxylic acids are acidic mainly because:",
        options: [
          "Carboxylate ion is resonance stabilised",
          "They contain carbon",
          "They are always gases",
          "They have no oxygen",
        ],
        correctIndex: 0,
        explanation:
            "Resonance stabilisation of the carboxylate ion favours proton loss.",
      ),
      McqItem(
        question:
            "Esterification involves reaction of carboxylic acid with:",
        options: [
          "Alcohol",
          "Alkane",
          "Amine only",
          "Metal only",
        ],
        correctIndex: 0,
        explanation:
            "Carboxylic acid reacts with an alcohol in the presence of acid catalyst to form an ester.",
      ),
      McqItem(
        question:
            "Reduction of an aldehyde gives:",
        options: [
          "Primary alcohol",
          "Secondary alcohol",
          "Ketone",
          "Acid",
        ],
        correctIndex: 0,
        explanation:
            "Aldehydes reduce to primary alcohols.",
      ),
      McqItem(
        question:
            "Reduction of a ketone generally gives:",
        options: [
          "Primary alcohol",
          "Secondary alcohol",
          "Aldehyde",
          "Carboxylic acid",
        ],
        correctIndex: 1,
        explanation:
            "Ketones reduce to secondary alcohols.",
      ),
    ],

    "Amines": [
      McqItem(
        question: "Amines are basic because nitrogen has:",
        options: [
          "A lone pair",
          "No electrons",
          "Only positive charge",
          "No valence electrons",
        ],
        correctIndex: 0,
        explanation:
            "The nitrogen lone pair can accept a proton.",
      ),
      McqItem(
        question:
            "Aniline is less basic than ethylamine because:",
        options: [
          "Lone pair is delocalised",
          "It has no nitrogen",
          "It has no electrons",
          "It is an alkane",
        ],
        correctIndex: 0,
        explanation:
            "The lone pair in aniline is delocalised into the benzene ring.",
      ),
      McqItem(
        question:
            "Carbylamine reaction is given by:",
        options: [
          "Primary amines",
          "Secondary amines only",
          "Tertiary amines only",
          "Alkanes",
        ],
        correctIndex: 0,
        explanation:
            "Primary amines give isocyanides in the carbylamine reaction.",
      ),
      McqItem(
        question:
            "Hinsberg test is used to distinguish:",
        options: [
          "Primary, secondary and tertiary amines",
          "Alcohols only",
          "Aldehydes only",
          "Acids only",
        ],
        correctIndex: 0,
        explanation:
            "Hinsberg's test differentiates classes of amines.",
      ),
      McqItem(
        question: "Diazotisation of aniline is carried out at:",
        options: [
          "0-5°C",
          "50-60°C",
          "100°C",
          "200°C",
        ],
        correctIndex: 0,
        explanation:
            "Aromatic diazonium salts are prepared at low temperature, generally 0-5°C.",
      ),
      McqItem(
        question:
            "Sandmeyer reaction involves:",
        options: [
          "Diazonium salts and cuprous salts",
          "Alcohols only",
          "Alkanes only",
          "Ketones only",
        ],
        correctIndex: 0,
        explanation:
            "Aryl diazonium salts react with cuprous salts in Sandmeyer reactions.",
      ),
      McqItem(
        question: "A primary amine has the general formula:",
        options: [
          "RNH₂",
          "R₂NH",
          "R₃N",
          "RN₄",
        ],
        correctIndex: 0,
        explanation:
            "Primary amines have one carbon-containing group attached to nitrogen.",
      ),
      McqItem(
        question: "A secondary amine has the formula:",
        options: [
          "RNH₂",
          "R₂NH",
          "R₃N",
          "NH₄",
        ],
        correctIndex: 1,
        explanation:
            "Secondary amines have two carbon-containing groups attached to nitrogen.",
      ),
      McqItem(
        question: "A tertiary amine has the formula:",
        options: [
          "RNH₂",
          "R₂NH",
          "R₃N",
          "NH₃",
        ],
        correctIndex: 2,
        explanation:
            "Tertiary amines have three carbon-containing groups attached to nitrogen.",
      ),
      McqItem(
        question:
            "The diazonium group is represented as:",
        options: [
          "-N₂⁺",
          "-NO₂",
          "-NH₂",
          "-NH₃⁺",
        ],
        correctIndex: 0,
        explanation:
            "The diazonium group is represented by -N₂⁺.",
      ),
    ],
  },

  "Maths": {
    "Relations and Functions": [
      McqItem(
        question:
            "A relation from A to B is a subset of:",
        options: [
          "A × B",
          "A + B",
          "A - B",
          "A/B",
        ],
        correctIndex: 0,
        explanation:
            "A relation from A to B is a subset of the Cartesian product A × B.",
      ),
      McqItem(
        question:
            "A function assigns each element of its domain:",
        options: [
          "Exactly one image",
          "At least three images",
          "No image",
          "Only negative images",
        ],
        correctIndex: 0,
        explanation:
            "Each domain element must have exactly one image.",
      ),
      McqItem(
        question:
            "A one-one function has:",
        options: [
          "Different inputs with different images",
          "All images equal",
          "No domain",
          "No range",
        ],
        correctIndex: 0,
        explanation:
            "A one-one function maps distinct inputs to distinct outputs.",
      ),
      McqItem(
        question: "An onto function covers:",
        options: [
          "The entire codomain",
          "Only the domain",
          "No values",
          "Only one value",
        ],
        correctIndex: 0,
        explanation:
            "Every element of the codomain has at least one pre-image.",
      ),
      McqItem(
        question: "A bijective function is:",
        options: [
          "One-one and onto",
          "Only one-one",
          "Only onto",
          "Neither",
        ],
        correctIndex: 0,
        explanation:
            "A bijection is both one-one and onto.",
      ),
      McqItem(
        question:
            "(f ∘ g)(x) is equal to:",
        options: [
          "f(g(x))",
          "g(f(x)) always",
          "f(x)+g(x)",
          "f(x)g(x)",
        ],
        correctIndex: 0,
        explanation:
            "Composition is (f ∘ g)(x) = f(g(x)).",
      ),
      McqItem(
        question:
            "A function has an inverse when it is:",
        options: [
          "Bijective",
          "Only constant",
          "Only onto",
          "Only one-one",
        ],
        correctIndex: 0,
        explanation:
            "A function has an inverse function when it is bijective.",
      ),
      McqItem(
        question: "The domain represents:",
        options: [
          "Allowed input values",
          "Only output values",
          "Only zero",
          "The range only",
        ],
        correctIndex: 0,
        explanation:
            "The domain is the set of input values for which the function is defined.",
      ),
      McqItem(
        question: "The range represents:",
        options: [
          "Actual output values",
          "Only input values",
          "Only constants",
          "The domain",
        ],
        correctIndex: 0,
        explanation:
            "The range contains actual values obtained from the function.",
      ),
      McqItem(
        question:
            "If f and g are functions, f ∘ g means:",
        options: [
          "Apply g first, then f",
          "Apply f first, then g",
          "Add f and g",
          "Multiply f and g",
        ],
        correctIndex: 0,
        explanation:
            "In f(g(x)), g is applied first and then f.",
      ),
    ],

    "Inverse Trigonometric Functions": [
      McqItem(
        question:
            "sin⁻¹x + cos⁻¹x equals:",
        options: [
          "π/2",
          "π",
          "0",
          "2π",
        ],
        correctIndex: 0,
        explanation:
            "For valid x, sin⁻¹x + cos⁻¹x = π/2.",
      ),
      McqItem(
        question:
            "tan⁻¹x + cot⁻¹x equals:",
        options: [
          "π/2",
          "π",
          "0",
          "2π",
        ],
        correctIndex: 0,
        explanation:
            "Under the standard principal-value convention, the sum is π/2.",
      ),
      McqItem(
        question:
            "The principal value range of sin⁻¹x is:",
        options: [
          "[-π/2, π/2]",
          "[0, π]",
          "[-π, π]",
          "[0, 2π]",
        ],
        correctIndex: 0,
        explanation:
            "The principal value range of sin⁻¹x is [-π/2, π/2].",
      ),
      McqItem(
        question:
            "The domain of sin⁻¹x is:",
        options: [
          "[-1,1]",
          "All real numbers",
          "[0,∞)",
          "[-∞,0]",
        ],
        correctIndex: 0,
        explanation:
            "sin x can only have values between -1 and 1.",
      ),
      McqItem(
        question:
            "The domain of cos⁻¹x is:",
        options: [
          "[-1,1]",
          "All real numbers",
          "[0,∞)",
          "Only positive numbers",
        ],
        correctIndex: 0,
        explanation:
            "cos x lies between -1 and 1.",
      ),
      McqItem(
        question:
            "tan⁻¹(1) in principal values is:",
        options: [
          "π/4",
          "π/2",
          "π",
          "0",
        ],
        correctIndex: 0,
        explanation:
            "tan(π/4) = 1.",
      ),
      McqItem(
        question:
            "sin⁻¹(0) equals:",
        options: [
          "0",
          "π/2",
          "π",
          "1",
        ],
        correctIndex: 0,
        explanation:
            "sin⁻¹(0) = 0.",
      ),
      McqItem(
        question:
            "cos⁻¹(1) equals:",
        options: [
          "0",
          "π/2",
          "π",
          "1",
        ],
        correctIndex: 0,
        explanation:
            "cos(0) = 1, so cos⁻¹(1) = 0.",
      ),
      McqItem(
        question:
            "tan⁻¹(0) equals:",
        options: [
          "0",
          "π/4",
          "π/2",
          "π",
        ],
        correctIndex: 0,
        explanation:
            "tan(0) = 0.",
      ),
      McqItem(
        question:
            "The range of cos⁻¹x is:",
        options: [
          "[0,π]",
          "[-π/2,π/2]",
          "[0,2π]",
          "All real numbers",
        ],
        correctIndex: 0,
        explanation:
            "The principal range of cos⁻¹x is [0,π].",
      ),
    ],

    "Matrices": [
      McqItem(
        question:
            "A matrix with m rows and n columns has order:",
        options: [
          "m × n",
          "n × m only",
          "m + n",
          "m - n",
        ],
        correctIndex: 0,
        explanation:
            "Matrix order is rows × columns.",
      ),
      McqItem(
        question:
            "A square matrix has:",
        options: [
          "Equal number of rows and columns",
          "More rows than columns",
          "More columns than rows",
          "No rows",
        ],
        correctIndex: 0,
        explanation:
            "A square matrix has the same number of rows and columns.",
      ),
      McqItem(
        question:
            "The identity matrix has:",
        options: [
          "1 on principal diagonal and 0 elsewhere",
          "0 everywhere",
          "1 everywhere",
          "Only negative entries",
        ],
        correctIndex: 0,
        explanation:
            "An identity matrix has ones on the main diagonal and zeros elsewhere.",
      ),
      McqItem(
        question:
            "A matrix has an inverse if its determinant is:",
        options: [
          "Non-zero",
          "Zero",
          "Always one",
          "Negative only",
        ],
        correctIndex: 0,
        explanation:
            "A square matrix is invertible when |A| ≠ 0.",
      ),
      McqItem(
        question:
            "A⁻¹ is given by:",
        options: [
          "adj(A)/|A|",
          "|A|/adj(A)",
          "A/|A|",
          "A²",
        ],
        correctIndex: 0,
        explanation:
            "A⁻¹ = adj(A)/|A| when |A| ≠ 0.",
      ),
      McqItem(
        question:
            "Matrix multiplication AB is defined when:",
        options: [
          "Columns of A = rows of B",
          "Rows of A = rows of B",
          "Columns of A = columns of B",
          "Both are square only",
        ],
        correctIndex: 0,
        explanation:
            "The inner dimensions must match.",
      ),
      McqItem(
        question:
            "In general, matrix multiplication is:",
        options: [
          "Not commutative",
          "Always commutative",
          "Always zero",
          "Always equal",
        ],
        correctIndex: 0,
        explanation:
            "Generally AB ≠ BA.",
      ),
      McqItem(
        question:
            "The transpose of a matrix interchanges:",
        options: [
          "Rows and columns",
          "Only diagonal elements",
          "All signs",
          "Determinants",
        ],
        correctIndex: 0,
        explanation:
            "Transpose converts rows into columns.",
      ),
      McqItem(
        question:
            "The determinant of identity matrix is:",
        options: [
          "1",
          "0",
          "-1",
          "Depends on order",
        ],
        correctIndex: 0,
        explanation:
            "The determinant of any identity matrix is 1.",
      ),
      McqItem(
        question:
            "If |A| = 0, A is:",
        options: [
          "Singular",
          "Non-singular",
          "Identity",
          "Orthogonal always",
        ],
        correctIndex: 0,
        explanation:
            "A square matrix with determinant zero is singular.",
      ),
    ],

    "Determinants": [
      McqItem(
        question:
            "The determinant of a 2 × 2 matrix [[a,b],[c,d]] is:",
        options: [
          "ad - bc",
          "ab - cd",
          "ac - bd",
          "a+b-c-d",
        ],
        correctIndex: 0,
        explanation:
            "For a 2 × 2 matrix, determinant = ad - bc.",
      ),
      McqItem(
        question:
            "|AB| is equal to:",
        options: [
          "|A||B|",
          "|A|+|B|",
          "|A|-|B|",
          "|A|/|B| always",
        ],
        correctIndex: 0,
        explanation:
            "The determinant of a product is the product of determinants.",
      ),
      McqItem(
        question:
            "Interchanging two rows changes determinant by:",
        options: [
          "Changing its sign",
          "Doubling it",
          "Making it one",
          "No change always",
        ],
        correctIndex: 0,
        explanation:
            "Interchanging two rows changes the sign of the determinant.",
      ),
      McqItem(
        question:
            "If two rows of a determinant are identical, determinant is:",
        options: [
          "Zero",
          "One",
          "Two",
          "Infinite",
        ],
        correctIndex: 0,
        explanation:
            "A determinant with two identical rows is zero.",
      ),
      McqItem(
        question:
            "Multiplying one row by k multiplies determinant by:",
        options: [
          "k",
          "1/k",
          "k²",
          "No factor",
        ],
        correctIndex: 0,
        explanation:
            "The determinant is multiplied by k.",
      ),
      McqItem(
        question:
            "A determinant is associated with a:",
        options: [
          "Square matrix",
          "Only row matrix",
          "Only column matrix",
          "Scalar only",
        ],
        correctIndex: 0,
        explanation:
            "Determinants are defined for square matrices.",
      ),
      McqItem(
        question:
            "The determinant of an identity matrix is:",
        options: [
          "1",
          "0",
          "-1",
          "Depends",
        ],
        correctIndex: 0,
        explanation:
            "The determinant of identity matrix is 1.",
      ),
      McqItem(
        question:
            "If determinant of A is non-zero, A is:",
        options: [
          "Non-singular",
          "Singular",
          "Zero matrix",
          "Undefined",
        ],
        correctIndex: 0,
        explanation:
            "Non-zero determinant means the matrix is non-singular.",
      ),
      McqItem(
        question:
            "The area of a triangle can be calculated using:",
        options: [
          "A determinant",
          "Only integration",
          "Only differentiation",
          "Only probability",
        ],
        correctIndex: 0,
        explanation:
            "Coordinate geometry gives triangle area using a determinant.",
      ),
      McqItem(
        question:
            "Cramer's rule is used to solve:",
        options: [
          "Simultaneous linear equations",
          "Only trigonometric equations",
          "Only differential equations",
          "Only probability",
        ],
        correctIndex: 0,
        explanation:
            "Cramer's rule solves systems of linear equations using determinants.",
      ),
    ],

    "Continuity and Differentiability": [
      McqItem(
        question:
            "Derivative of xⁿ is:",
        options: [
          "nxⁿ⁻¹",
          "xⁿ⁺¹",
          "nxⁿ",
          "xⁿ/n",
        ],
        correctIndex: 0,
        explanation:
            "By the power rule, d(xⁿ)/dx = nxⁿ⁻¹.",
      ),
      McqItem(
        question:
            "A function is continuous at x=a if:",
        options: [
          "LHL = RHL = f(a)",
          "Only LHL exists",
          "Only RHL exists",
          "f(a)=0 always",
        ],
        correctIndex: 0,
        explanation:
            "Continuity requires the left limit, right limit and function value to be equal.",
      ),
      McqItem(
        question:
            "Differentiability generally implies:",
        options: [
          "Continuity",
          "Discontinuity",
          "No limit",
          "Infinite value",
        ],
        correctIndex: 0,
        explanation:
            "If a function is differentiable at a point, it is continuous there.",
      ),
      McqItem(
        question:
            "Derivative of sin x is:",
        options: [
          "cos x",
          "-cos x",
          "sin x",
          "-sin x",
        ],
        correctIndex: 0,
        explanation:
            "d(sin x)/dx = cos x.",
      ),
      McqItem(
        question:
            "Derivative of cos x is:",
        options: [
          "-sin x",
          "sin x",
          "cos x",
          "-cos x",
        ],
        correctIndex: 0,
        explanation:
            "d(cos x)/dx = -sin x.",
      ),
      McqItem(
        question:
            "Derivative of eˣ is:",
        options: [
          "eˣ",
          "xeˣ",
          "1/eˣ",
          "0",
        ],
        correctIndex: 0,
        explanation:
            "The derivative of eˣ is eˣ.",
      ),
      McqItem(
        question:
            "Derivative of ln x is:",
        options: [
          "1/x",
          "x",
          "ln x",
          "eˣ",
        ],
        correctIndex: 0,
        explanation:
            "d(ln x)/dx = 1/x.",
      ),
      McqItem(
        question:
            "If a function is differentiable at a point, it must be:",
        options: [
          "Continuous there",
          "Discontinuous there",
          "Zero there",
          "Infinite there",
        ],
        correctIndex: 0,
        explanation:
            "Differentiability implies continuity.",
      ),
      McqItem(
        question:
            "The derivative represents:",
        options: [
          "Instantaneous rate of change",
          "Only area",
          "Only volume",
          "Only probability",
        ],
        correctIndex: 0,
        explanation:
            "Derivative measures instantaneous rate of change.",
      ),
      McqItem(
        question:
            "d(c)/dx for constant c is:",
        options: [
          "0",
          "1",
          "c",
          "x",
        ],
        correctIndex: 0,
        explanation:
            "The derivative of a constant is zero.",
      ),
    ],

    "Application of Derivatives": [
      McqItem(
        question:
            "At an interior local extremum, derivative is generally:",
        options: [
          "0",
          "1",
          "∞",
          "-∞",
        ],
        correctIndex: 0,
        explanation:
            "At a differentiable interior extremum, f'(x)=0.",
      ),
      McqItem(
        question:
            "A function is increasing where:",
        options: [
          "f'(x) > 0",
          "f'(x) < 0",
          "f'(x) = 0 always",
          "f(x) = 0",
        ],
        correctIndex: 0,
        explanation:
            "Positive derivative indicates increasing behaviour.",
      ),
      McqItem(
        question:
            "A function is decreasing where:",
        options: [
          "f'(x) < 0",
          "f'(x) > 0",
          "f'(x) = 1",
          "f(x)=1",
        ],
        correctIndex: 0,
        explanation:
            "Negative derivative indicates decreasing behaviour.",
      ),
      McqItem(
        question:
            "A critical point may occur when:",
        options: [
          "f'(x)=0 or undefined",
          "f(x)=1 only",
          "x=0 only",
          "f(x)=∞",
        ],
        correctIndex: 0,
        explanation:
            "Critical points occur where derivative is zero or does not exist, within the domain.",
      ),
      McqItem(
        question:
            "Second derivative test helps determine:",
        options: [
          "Nature of stationary point",
          "Only domain",
          "Only range",
          "Only integration constant",
        ],
        correctIndex: 0,
        explanation:
            "The second derivative can help classify local maxima and minima.",
      ),
      McqItem(
        question:
            "Maximum value occurs when the function changes from:",
        options: [
          "Increasing to decreasing",
          "Decreasing to increasing",
          "Constant to constant",
          "Zero to zero",
        ],
        correctIndex: 0,
        explanation:
            "A local maximum occurs when increasing behaviour changes to decreasing.",
      ),
      McqItem(
        question:
            "Minimum value occurs when the function changes from:",
        options: [
          "Decreasing to increasing",
          "Increasing to decreasing",
          "Constant to decreasing",
          "Zero to one",
        ],
        correctIndex: 0,
        explanation:
            "A local minimum occurs when decreasing behaviour changes to increasing.",
      ),
      McqItem(
        question:
            "Derivative of x² is:",
        options: [
          "2x",
          "x",
          "x²",
          "2",
        ],
        correctIndex: 0,
        explanation:
            "d(x²)/dx = 2x.",
      ),
      McqItem(
        question:
            "The slope of a curve at a point is:",
        options: [
          "dy/dx",
          "dx/dy always",
          "x+y",
          "xy",
        ],
        correctIndex: 0,
        explanation:
            "The derivative dy/dx gives the slope.",
      ),
      McqItem(
        question:
            "If f'(x)>0 throughout an interval, f is:",
        options: [
          "Increasing",
          "Decreasing",
          "Constant",
          "Undefined",
        ],
        correctIndex: 0,
        explanation:
            "Positive derivative indicates an increasing function.",
      ),
    ],

    "Integrals": [
      McqItem(
        question:
            "∫xⁿ dx equals:",
        options: [
          "xⁿ⁺¹/(n+1)+C",
          "nxⁿ⁻¹+C",
          "xⁿ+C",
          "n/x+C",
        ],
        correctIndex: 0,
        explanation:
            "For n ≠ -1, ∫xⁿdx = xⁿ⁺¹/(n+1)+C.",
      ),
      McqItem(
        question:
            "∫1/x dx equals:",
        options: [
          "ln|x|+C",
          "x²+C",
          "1/x²+C",
          "eˣ+C",
        ],
        correctIndex: 0,
        explanation:
            "∫1/x dx = ln|x|+C.",
      ),
      McqItem(
        question:
            "Integral of cos x is:",
        options: [
          "sin x+C",
          "-sin x+C",
          "cos x+C",
          "-cos x+C",
        ],
        correctIndex: 0,
        explanation:
            "∫cos x dx = sin x+C.",
      ),
      McqItem(
        question:
            "Integral of sin x is:",
        options: [
          "-cos x+C",
          "cos x+C",
          "sin x+C",
          "-sin x+C",
        ],
        correctIndex: 0,
        explanation:
            "∫sin x dx = -cos x+C.",
      ),
      McqItem(
        question:
            "Integration is generally considered the inverse operation of:",
        options: [
          "Differentiation",
          "Multiplication",
          "Division",
          "Probability",
        ],
        correctIndex: 0,
        explanation:
            "Integration and differentiation are inverse operations under suitable conditions.",
      ),
      McqItem(
        question:
            "The constant of integration is represented by:",
        options: [
          "C",
          "K only",
          "X",
          "Y",
        ],
        correctIndex: 0,
        explanation:
            "An indefinite integral includes an arbitrary constant C.",
      ),
      McqItem(
        question:
            "∫eˣ dx equals:",
        options: [
          "eˣ+C",
          "xeˣ+C",
          "ln x+C",
          "0",
        ],
        correctIndex: 0,
        explanation:
            "The integral of eˣ is eˣ+C.",
      ),
      McqItem(
        question:
            "∫aˣ dx for a>0, a≠1 is:",
        options: [
          "aˣ/ln a + C",
          "xaˣ+C",
          "ln(aˣ)+C",
          "aˣln a+C",
        ],
        correctIndex: 0,
        explanation:
            "∫aˣdx = aˣ/ln(a)+C.",
      ),
      McqItem(
        question:
            "Definite integration can represent:",
        options: [
          "Area under a curve",
          "Only slope",
          "Only probability",
          "Only matrix",
        ],
        correctIndex: 0,
        explanation:
            "Definite integrals can be used to calculate areas under curves.",
      ),
      McqItem(
        question:
            "Integration by parts is based on the derivative of:",
        options: [
          "Product of two functions",
          "Only constants",
          "Only matrices",
          "Only trigonometric functions",
        ],
        correctIndex: 0,
        explanation:
            "Integration by parts follows from the product rule.",
      ),
    ],

    "Application of Integrals": [
      McqItem(
        question:
            "Area under y=f(x) between a and b is:",
        options: [
          "∫ₐᵇ f(x) dx",
          "f(b)-f(a)",
          "ab",
          "a+b",
        ],
        correctIndex: 0,
        explanation:
            "The definite integral gives signed area, with geometric interpretation when appropriate.",
      ),
      McqItem(
        question:
            "Area between two curves is obtained using:",
        options: [
          "Integral of upper minus lower function",
          "Only derivative",
          "Only matrix",
          "Only probability",
        ],
        correctIndex: 0,
        explanation:
            "Area = ∫(upper curve - lower curve) dx over the relevant interval.",
      ),
      McqItem(
        question:
            "A definite integral has:",
        options: [
          "Upper and lower limits",
          "No limits",
          "Only one limit",
          "Only a constant",
        ],
        correctIndex: 0,
        explanation:
            "A definite integral is evaluated between two limits.",
      ),
      McqItem(
        question:
            "The area is always positive when:",
        options: [
          "Geometric area is taken",
          "Function is negative only",
          "Limits are negative",
          "Derivative is zero",
        ],
        correctIndex: 0,
        explanation:
            "Geometric area is non-negative, although a definite integral can be signed.",
      ),
      McqItem(
        question:
            "If two curves intersect at x=a and x=b, these values can define:",
        options: [
          "Limits for area calculation",
          "Only derivative",
          "Only probability",
          "Only matrices",
        ],
        correctIndex: 0,
        explanation:
            "Intersection points often determine the limits for area between curves.",
      ),
      McqItem(
        question:
            "Area with respect to y may use:",
        options: [
          "∫(right-left)dy",
          "∫(upper-lower)dx only",
          "Only derivative",
          "Only multiplication",
        ],
        correctIndex: 0,
        explanation:
            "When integrating with respect to y, area is right minus left.",
      ),
      McqItem(
        question:
            "The unit of area is:",
        options: [
          "Square units",
          "Units",
          "Cubic units",
          "No units",
        ],
        correctIndex: 0,
        explanation:
            "Area is measured in square units.",
      ),
      McqItem(
        question:
            "A definite integral from a to a equals:",
        options: [
          "0",
          "1",
          "a",
          "∞",
        ],
        correctIndex: 0,
        explanation:
            "An integral over an interval of zero length is zero.",
      ),
      McqItem(
        question:
            "If f(x) is always positive, ∫ₐᵇ f(x)dx for a<b is:",
        options: [
          "Positive",
          "Negative",
          "Always zero",
          "Undefined",
        ],
        correctIndex: 0,
        explanation:
            "The integral of a positive function over a positive-length interval is positive.",
      ),
      McqItem(
        question:
            "Graphical area calculation is a common application of:",
        options: [
          "Definite integration",
          "Only matrices",
          "Only probability",
          "Only differentiation",
        ],
        correctIndex: 0,
        explanation:
            "Definite integration provides the mathematical basis for area calculation.",
      ),
    ],

    "Differential Equations": [
      McqItem(
        question:
            "A differential equation contains:",
        options: [
          "Derivatives",
          "Only constants",
          "Only matrices",
          "Only probabilities",
        ],
        correctIndex: 0,
        explanation:
            "Differential equations involve derivatives of unknown functions.",
      ),
      McqItem(
        question:
            "Order of a differential equation is the highest:",
        options: [
          "Order derivative present",
          "Power of x",
          "Constant",
          "Coefficient",
        ],
        correctIndex: 0,
        explanation:
            "Order is determined by the highest derivative appearing.",
      ),
      McqItem(
        question:
            "A first-order differential equation contains highest derivative:",
        options: [
          "First derivative",
          "Second derivative",
          "Third derivative",
          "No derivative",
        ],
        correctIndex: 0,
        explanation:
            "First-order means the highest derivative is the first derivative.",
      ),
      McqItem(
        question:
            "dy/dx = ky has solution of the form:",
        options: [
          "y = Ce^(kx)",
          "y = kx",
          "y = Cx²",
          "y = x/k",
        ],
        correctIndex: 0,
        explanation:
            "Separating variables gives ln|y| = kx+C, hence y=Ce^(kx).",
      ),
      McqItem(
        question:
            "A differential equation solution contains:",
        options: [
          "Arbitrary constants",
          "No constants ever",
          "Only matrices",
          "Only integers",
        ],
        correctIndex: 0,
        explanation:
            "General solutions contain arbitrary constants.",
      ),
      McqItem(
        question:
            "Separation of variables means:",
        options: [
          "Putting variables on opposite sides",
          "Adding all variables",
          "Removing derivatives",
          "Squaring everything",
        ],
        correctIndex: 0,
        explanation:
            "Variables are separated so each side contains one variable.",
      ),
      McqItem(
        question:
            "The order of d²y/dx² + y = 0 is:",
        options: [
          "2",
          "1",
          "0",
          "3",
        ],
        correctIndex: 0,
        explanation:
            "The highest derivative is the second derivative.",
      ),
      McqItem(
        question:
            "A solution satisfying a given initial condition is called:",
        options: [
          "Particular solution",
          "General equation",
          "Matrix",
          "Constant",
        ],
        correctIndex: 0,
        explanation:
            "Applying a condition determines the particular solution.",
      ),
      McqItem(
        question:
            "The general solution of a first-order differential equation usually contains:",
        options: [
          "One arbitrary constant",
          "No constants",
          "Two mandatory constants",
          "Ten constants",
        ],
        correctIndex: 0,
        explanation:
            "A first-order equation generally has one arbitrary constant in its general solution.",
      ),
      McqItem(
        question:
            "Differential equations are used to model:",
        options: [
          "Rates of change",
          "Only matrices",
          "Only static numbers",
          "Only colours",
        ],
        correctIndex: 0,
        explanation:
            "Differential equations are widely used to model changing quantities.",
      ),
    ],

    "Vector Algebra": [
      McqItem(
        question:
            "Dot product of vectors a and b is:",
        options: [
          "|a||b|cosθ",
          "|a||b|sinθ",
          "a+b",
          "a×b",
        ],
        correctIndex: 0,
        explanation:
            "a·b = |a||b|cosθ.",
      ),
      McqItem(
        question:
            "Magnitude of cross product is:",
        options: [
          "|a||b|sinθ",
          "|a||b|cosθ",
          "a·b",
          "a+b",
        ],
        correctIndex: 0,
        explanation:
            "|a×b| = |a||b|sinθ.",
      ),
      McqItem(
        question:
            "The dot product of perpendicular vectors is:",
        options: [
          "0",
          "1",
          "∞",
          "-1 always",
        ],
        correctIndex: 0,
        explanation:
            "For θ=90°, cosθ=0.",
      ),
      McqItem(
        question:
            "The cross product of parallel vectors is:",
        options: [
          "Zero vector",
          "Unit vector",
          "Maximum",
          "Infinite",
        ],
        correctIndex: 0,
        explanation:
            "For parallel vectors, sinθ=0.",
      ),
      McqItem(
        question:
            "Cross product produces a:",
        options: [
          "Vector",
          "Scalar",
          "Matrix only",
          "Number always",
        ],
        correctIndex: 0,
        explanation:
            "The cross product of two vectors is a vector.",
      ),
      McqItem(
        question:
            "Dot product produces a:",
        options: [
          "Scalar",
          "Vector",
          "Matrix",
          "Tensor",
        ],
        correctIndex: 0,
        explanation:
            "The dot product is a scalar quantity.",
      ),
      McqItem(
        question:
            "a × b is perpendicular to:",
        options: [
          "Both a and b",
          "Only a",
          "Only b",
          "Neither",
        ],
        correctIndex: 0,
        explanation:
            "The cross product vector is perpendicular to both input vectors.",
      ),
      McqItem(
        question:
            "a · a equals:",
        options: [
          "|a|²",
          "|a|",
          "0 always",
          "1 always",
        ],
        correctIndex: 0,
        explanation:
            "a·a = |a|².",
      ),
      McqItem(
        question:
            "Unit vector in direction of a is:",
        options: [
          "a/|a|",
          "|a|/a",
          "a²",
          "1/a",
        ],
        correctIndex: 0,
        explanation:
            "Divide the vector by its magnitude.",
      ),
      McqItem(
        question:
            "Scalar multiplication of a vector changes:",
        options: [
          "Magnitude and possibly direction",
          "Only dimension",
          "Only coordinates of space",
          "Nothing",
        ],
        correctIndex: 0,
        explanation:
            "Multiplying by a scalar changes magnitude and may reverse direction if the scalar is negative.",
      ),
    ],

    "Three Dimensional Geometry": [
      McqItem(
        question:
            "Distance between (x₁,y₁,z₁) and (x₂,y₂,z₂) is:",
        options: [
          "√[(x₂-x₁)²+(y₂-y₁)²+(z₂-z₁)²]",
          "x₂-x₁",
          "y₂-y₁",
          "z₂-z₁",
        ],
        correctIndex: 0,
        explanation:
            "The 3D distance formula is the square root of the sum of squared coordinate differences.",
      ),
      McqItem(
        question:
            "A line in 3D can be represented using:",
        options: [
          "Direction ratios",
          "Only one coordinate",
          "Only a scalar",
          "Only area",
        ],
        correctIndex: 0,
        explanation:
            "Direction ratios or direction cosines describe the direction of a line.",
      ),
      McqItem(
        question:
            "Direction cosines satisfy:",
        options: [
          "l²+m²+n²=1",
          "l+m+n=0 always",
          "lmn=1",
          "l²+m²+n²=0",
        ],
        correctIndex: 0,
        explanation:
            "For direction cosines, l²+m²+n²=1.",
      ),
      McqItem(
        question:
            "Distance from origin to (x,y,z) is:",
        options: [
          "√(x²+y²+z²)",
          "x+y+z",
          "xyz",
          "x²+y²-z²",
        ],
        correctIndex: 0,
        explanation:
            "Apply the 3D distance formula with one point as origin.",
      ),
      McqItem(
        question:
            "A plane in 3D can be written as:",
        options: [
          "ax+by+cz=d",
          "ax+b=d only",
          "x+y=d only",
          "xy=z only",
        ],
        correctIndex: 0,
        explanation:
            "The general Cartesian equation of a plane is ax+by+cz=d.",
      ),
      McqItem(
        question:
            "The angle between two lines depends on their:",
        options: [
          "Direction vectors",
          "Mass",
          "Temperature",
          "Area",
        ],
        correctIndex: 0,
        explanation:
            "The angle between lines is found from their direction vectors.",
      ),
      McqItem(
        question:
            "Two lines are perpendicular when their direction vectors have dot product:",
        options: [
          "0",
          "1",
          "∞",
          "-1 always",
        ],
        correctIndex: 0,
        explanation:
            "Perpendicular vectors have zero dot product.",
      ),
      McqItem(
        question:
            "Distance between two points is always:",
        options: [
          "Non-negative",
          "Always negative",
          "Always zero",
          "Always one",
        ],
        correctIndex: 0,
        explanation:
            "Distance is a non-negative quantity.",
      ),
      McqItem(
        question:
            "A point in 3D is specified by:",
        options: [
          "Three coordinates",
          "Two coordinates",
          "One coordinate",
          "Four mandatory coordinates",
        ],
        correctIndex: 0,
        explanation:
            "A point in three-dimensional Cartesian space has x, y and z coordinates.",
      ),
      McqItem(
        question:
            "Direction cosines are cosines of angles made with:",
        options: [
          "Positive coordinate axes",
          "Only xy-plane",
          "Only origin",
          "Only z-axis",
        ],
        correctIndex: 0,
        explanation:
            "Direction cosines are cosines of angles with the x, y and z axes.",
      ),
    ],

    "Linear Programming": [
      McqItem(
        question:
            "The feasible region satisfies:",
        options: [
          "All constraints",
          "Only one constraint",
          "No constraint",
          "Only objective function",
        ],
        correctIndex: 0,
        explanation:
            "A feasible solution satisfies all constraints.",
      ),
      McqItem(
        question:
            "The objective function is used to:",
        options: [
          "Maximise or minimise a quantity",
          "Find only domain",
          "Find only derivatives",
          "Find only matrices",
        ],
        correctIndex: 0,
        explanation:
            "Linear programming optimises an objective function.",
      ),
      McqItem(
        question:
            "Graphical method commonly examines:",
        options: [
          "Corner points",
          "Only origin",
          "Only axes",
          "Only slopes",
        ],
        correctIndex: 0,
        explanation:
            "The corner point method evaluates the objective function at feasible corner points.",
      ),
      McqItem(
        question:
            "Constraints in linear programming are usually:",
        options: [
          "Linear inequalities/equations",
          "Only quadratic equations",
          "Only trigonometric equations",
          "Only differential equations",
        ],
        correctIndex: 0,
        explanation:
            "Linear programming uses linear constraints.",
      ),
      McqItem(
        question:
            "The optimal solution occurs at a:",
        options: [
          "Corner point under standard conditions",
          "Random point",
          "Point outside feasible region",
          "Point with no constraints",
        ],
        correctIndex: 0,
        explanation:
            "For a linear objective over a suitable polygonal feasible region, an optimum occurs at a corner point.",
      ),
      McqItem(
        question:
            "The region satisfying all constraints is called:",
        options: [
          "Feasible region",
          "Impossible region",
          "Null region",
          "Derivative region",
        ],
        correctIndex: 0,
        explanation:
            "The common region satisfying all constraints is feasible.",
      ),
      McqItem(
        question:
            "An objective function may be:",
        options: [
          "Maximised or minimised",
          "Only maximised",
          "Only minimised",
          "Always zero",
        ],
        correctIndex: 0,
        explanation:
            "Linear programming can involve maximisation or minimisation.",
      ),
      McqItem(
        question:
            "Non-negativity constraints commonly state:",
        options: [
          "x≥0, y≥0",
          "x<0, y<0",
          "x=1, y=1",
          "x+y=0 always",
        ],
        correctIndex: 0,
        explanation:
            "Decision variables are often required to be non-negative.",
      ),
      McqItem(
        question:
            "A feasible solution must:",
        options: [
          "Satisfy every constraint",
          "Violate one constraint",
          "Ignore constraints",
          "Always be the origin",
        ],
        correctIndex: 0,
        explanation:
            "Feasibility means satisfying all constraints.",
      ),
      McqItem(
        question:
            "Linear programming deals with:",
        options: [
          "Optimisation",
          "Only differentiation",
          "Only integration",
          "Only probability",
        ],
        correctIndex: 0,
        explanation:
            "Linear programming is an optimisation technique.",
      ),
    ],

    "Probability": [
      McqItem(
        question:
            "Conditional probability P(A|B) is:",
        options: [
          "P(A∩B)/P(B)",
          "P(A)+P(B)",
          "P(A)-P(B)",
          "P(A)P(B) always",
        ],
        correctIndex: 0,
        explanation:
            "P(A|B) = P(A∩B)/P(B), provided P(B)>0.",
      ),
      McqItem(
        question:
            "If A and B are independent, then:",
        options: [
          "P(A∩B)=P(A)P(B)",
          "P(A∩B)=P(A)+P(B)",
          "P(A∩B)=0 always",
          "P(A)=P(B) always",
        ],
        correctIndex: 0,
        explanation:
            "Independent events satisfy P(A∩B)=P(A)P(B).",
      ),
      McqItem(
        question:
            "Bayes' theorem relates:",
        options: [
          "Conditional probabilities",
          "Only matrices",
          "Only derivatives",
          "Only integrals",
        ],
        correctIndex: 0,
        explanation:
            "Bayes' theorem relates posterior and prior conditional probabilities.",
      ),
      McqItem(
        question:
            "Probability of a certain event is:",
        options: [
          "1",
          "0",
          "2",
          "-1",
        ],
        correctIndex: 0,
        explanation:
            "A certain event has probability 1.",
      ),
      McqItem(
        question:
            "Probability of an impossible event is:",
        options: [
          "0",
          "1",
          "2",
          "-1",
        ],
        correctIndex: 0,
        explanation:
            "An impossible event has probability zero.",
      ),
      McqItem(
        question:
            "For any event A, P(A) lies between:",
        options: [
          "0 and 1",
          "-1 and 1",
          "1 and 2",
          "-∞ and ∞",
        ],
        correctIndex: 0,
        explanation:
            "Probability satisfies 0 ≤ P(A) ≤ 1.",
      ),
      McqItem(
        question:
            "P(A') equals:",
        options: [
          "1-P(A)",
          "P(A)",
          "P(A)+1",
          "P(A)-1",
        ],
        correctIndex: 0,
        explanation:
            "Complement probability is P(A')=1-P(A).",
      ),
      McqItem(
        question:
            "For mutually exclusive events A and B:",
        options: [
          "P(A∩B)=0",
          "P(A∩B)=1",
          "P(A)=P(B) always",
          "P(A)+P(B)=0 always",
        ],
        correctIndex: 0,
        explanation:
            "Mutually exclusive events cannot occur together.",
      ),
      McqItem(
        question:
            "The sample space contains:",
        options: [
          "All possible outcomes",
          "Only favourable outcomes",
          "Only impossible outcomes",
          "Only one outcome",
        ],
        correctIndex: 0,
        explanation:
            "The sample space is the set of all possible outcomes.",
      ),
      McqItem(
        question:
            "Expected value is also called:",
        options: [
          "Mean",
          "Median only",
          "Mode only",
          "Range",
        ],
        correctIndex: 0,
        explanation:
            "For a random variable, expected value is its probability-weighted mean.",
      ),
    ],
  },
};
