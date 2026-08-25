class PyqItem {
  final String question;
  final String answer;

  const PyqItem({
    required this.question,
    required this.answer,
  });
}

const Map<String, Map<String, List<PyqItem>>> studyBuddyPyqs = {
  "Physics": {
    "Electric Charges and Fields": [
      PyqItem(
        question: "State Coulomb's law and write its mathematical expression.",
        answer:
            "Coulomb's law states that the electrostatic force between two point charges is directly proportional to the product of their charges and inversely proportional to the square of the distance between them. F = kq₁q₂/r².",
      ),
      PyqItem(
        question: "Define electric field intensity at a point.",
        answer:
            "Electric field intensity is the force experienced by a unit positive test charge placed at that point. E = F/q.",
      ),
      PyqItem(
        question: "Derive the expression for electric field due to a point charge.",
        answer:
            "For a point charge Q at distance r, the force on test charge q is F = kQq/r². Therefore E = F/q = kQ/r².",
      ),
      PyqItem(
        question: "What is electric flux? Write its expression.",
        answer:
            "Electric flux is the measure of the electric field passing through a surface. For a uniform field, Φ = EA cosθ.",
      ),
      PyqItem(
        question: "State Gauss's law.",
        answer:
            "The total electric flux through a closed surface is equal to 1/ε₀ times the total charge enclosed by the surface. Φ = q/ε₀.",
      ),
      PyqItem(
        question:
            "Using Gauss's law, write the electric field due to an infinitely long straight charged wire.",
        answer:
            "For a wire with linear charge density λ, the electric field at distance r is E = λ/(2πε₀r).",
      ),
      PyqItem(
        question:
            "What happens to the force between two charges if the distance between them is doubled?",
        answer:
            "Since F is proportional to 1/r², doubling the distance makes the force one-fourth of its original value.",
      ),
      PyqItem(
        question: "Define electric dipole and electric dipole moment.",
        answer:
            "An electric dipole consists of two equal and opposite charges separated by a small distance. Its dipole moment is p = q × 2a and is directed from negative to positive charge.",
      ),
      PyqItem(
        question:
            "Write the expression for torque on an electric dipole placed in a uniform electric field.",
        answer: "The torque is τ = pE sinθ.",
      ),
      PyqItem(
        question:
            "Why is the electric field inside a conductor zero under electrostatic conditions?",
        answer:
            "If an electric field existed inside a conductor, its free charges would move. In electrostatic equilibrium, charges rearrange themselves until the internal electric field becomes zero.",
      ),
    ],

    "Electrostatic Potential and Capacitance": [
      PyqItem(
        question: "Define electric potential at a point.",
        answer:
            "Electric potential is the work done per unit positive test charge in bringing it from infinity to that point. V = W/q.",
      ),
      PyqItem(
        question: "Write the potential due to a point charge.",
        answer: "The potential at distance r is V = kQ/r.",
      ),
      PyqItem(
        question: "Define capacitance of a conductor.",
        answer:
            "Capacitance is the charge stored per unit potential. C = Q/V.",
      ),
      PyqItem(
        question:
            "Derive the expression for capacitance of a parallel plate capacitor.",
        answer:
            "For plates of area A separated by distance d in vacuum, capacitance is C = ε₀A/d.",
      ),
      PyqItem(
        question:
            "What happens to the capacitance when a dielectric is inserted between the plates?",
        answer:
            "The capacitance increases by the dielectric constant K. The new capacitance is C = Kε₀A/d.",
      ),
      PyqItem(
        question: "Write the expression for energy stored in a capacitor.",
        answer:
            "The energy stored is U = ½CV² = ½QV = Q²/(2C).",
      ),
      PyqItem(
        question:
            "Write the equivalent capacitance of capacitors connected in parallel.",
        answer:
            "For parallel capacitors, C = C₁ + C₂ + C₃ + ...",
      ),
      PyqItem(
        question:
            "Write the equivalent capacitance of capacitors connected in series.",
        answer:
            "For series capacitors, 1/C = 1/C₁ + 1/C₂ + 1/C₃ + ...",
      ),
      PyqItem(
        question:
            "What is the work done in moving a charge along an equipotential surface?",
        answer:
            "The work done is zero because the potential difference between any two points on an equipotential surface is zero.",
      ),
      PyqItem(
        question:
            "Why are electric field lines perpendicular to an equipotential surface?",
        answer:
            "There is no potential change along an equipotential surface. Therefore the electric field, which is related to the potential gradient, must be perpendicular to the surface.",
      ),
    ],

    "Current Electricity": [
      PyqItem(
        question: "State Ohm's law.",
        answer:
            "At constant temperature, the current through a conductor is directly proportional to the potential difference across it. V = IR.",
      ),
      PyqItem(
        question: "Define resistivity.",
        answer:
            "Resistivity is the resistance of a conductor of unit length and unit cross-sectional area. ρ = RA/L.",
      ),
      PyqItem(
        question: "Write the expression for resistance of a wire.",
        answer: "R = ρL/A.",
      ),
      PyqItem(
        question: "Write the expression for electrical power.",
        answer: "P = VI = I²R = V²/R.",
      ),
      PyqItem(
        question:
            "How does resistance change when the length of a wire is doubled?",
        answer:
            "Since R is directly proportional to length, doubling the length doubles the resistance, assuming other factors remain unchanged.",
      ),
      PyqItem(
        question:
            "Write the equivalent resistance of resistors connected in series.",
        answer: "R = R₁ + R₂ + R₃ + ...",
      ),
      PyqItem(
        question:
            "Write the equivalent resistance of resistors connected in parallel.",
        answer: "1/R = 1/R₁ + 1/R₂ + 1/R₃ + ...",
      ),
      PyqItem(
        question: "State Kirchhoff's junction rule.",
        answer:
            "The algebraic sum of currents at a junction is zero. The total current entering a junction equals the total current leaving it.",
      ),
      PyqItem(
        question: "State Kirchhoff's loop rule.",
        answer:
            "The algebraic sum of potential differences around any closed loop is zero.",
      ),
      PyqItem(
        question: "Define drift velocity.",
        answer:
            "Drift velocity is the average velocity acquired by free electrons in a conductor due to an applied electric field.",
      ),
    ],

    "Moving Charges and Magnetism": [
      PyqItem(
        question:
            "Write the expression for magnetic force on a charged particle moving in a magnetic field.",
        answer: "F = qvB sinθ.",
      ),
      PyqItem(
        question:
            "What is the force on a charged particle when it moves parallel to a magnetic field?",
        answer:
            "The force is zero because θ = 0 and sin0 = 0.",
      ),
      PyqItem(
        question:
            "Write the force acting on a current-carrying conductor in a magnetic field.",
        answer: "F = BIL sinθ.",
      ),
      PyqItem(
        question:
            "Write the magnetic field due to a long straight current-carrying conductor.",
        answer: "B = μ₀I/(2πr).",
      ),
      PyqItem(
        question: "State the Biot-Savart law.",
        answer:
            "The magnetic field due to a current element is proportional to I dl sinθ and inversely proportional to r².",
      ),
      PyqItem(
        question:
            "What is the path of a charged particle moving perpendicular to a uniform magnetic field?",
        answer:
            "It moves in a circular path because the magnetic force continuously provides the centripetal force.",
      ),
      PyqItem(
        question:
            "Write the radius of the circular path of a charged particle in a magnetic field.",
        answer: "r = mv/(qB).",
      ),
      PyqItem(
        question: "Write the expression for cyclotron frequency.",
        answer: "f = qB/(2πm).",
      ),
      PyqItem(
        question:
            "Write the torque acting on a current-carrying coil in a magnetic field.",
        answer: "τ = nBIA sinθ.",
      ),
      PyqItem(
        question: "What is the principle of a cyclotron?",
        answer:
            "A charged particle can be accelerated by an alternating electric field while a magnetic field makes it move in a semicircular path.",
      ),
    ],

    "Electromagnetic Induction": [
      PyqItem(
        question: "State Faraday's law of electromagnetic induction.",
        answer:
            "The induced emf in a circuit is equal to the negative rate of change of magnetic flux linked with the circuit. ε = -dΦ/dt.",
      ),
      PyqItem(
        question: "State Lenz's law.",
        answer:
            "The direction of induced current is such that it opposes the change in magnetic flux that produces it.",
      ),
      PyqItem(
        question: "Define magnetic flux.",
        answer: "Magnetic flux is Φ = BA cosθ.",
      ),
      PyqItem(
        question: "Write the expression for motional emf.",
        answer: "For a conductor moving perpendicular to a magnetic field, ε = Blv.",
      ),
      PyqItem(
        question: "What is self-inductance?",
        answer:
            "Self-inductance is the property of a coil by which it opposes changes in current through it. ε = -L(dI/dt).",
      ),
      PyqItem(
        question: "Write the energy stored in an inductor.",
        answer: "U = ½LI².",
      ),
      PyqItem(
        question: "Why is Lenz's law consistent with conservation of energy?",
        answer:
            "The induced current opposes the change producing it, so external work is required to change the magnetic flux.",
      ),
      PyqItem(
        question:
            "What is mutual induction?",
        answer:
            "Mutual induction is the phenomenon in which a changing current in one coil induces an emf in another nearby coil.",
      ),
      PyqItem(
        question: "What is the SI unit of magnetic flux?",
        answer: "The SI unit of magnetic flux is weber (Wb).",
      ),
      PyqItem(
        question:
            "On what factors does the induced emf depend?",
        answer:
            "It depends on the rate of change of magnetic flux and the number of turns of the coil.",
      ),
    ],
  },

  "Chemistry": {
    "Solutions": [
      PyqItem(
        question: "Define molarity.",
        answer:
            "Molarity is the number of moles of solute present in one litre of solution. M = n/V.",
      ),
      PyqItem(
        question: "Define molality.",
        answer:
            "Molality is the number of moles of solute present in one kilogram of solvent.",
      ),
      PyqItem(
        question: "State Raoult's law.",
        answer:
            "For an ideal solution, the partial vapour pressure of a component equals its mole fraction multiplied by its vapour pressure in the pure state.",
      ),
      PyqItem(
        question: "Write the expression for osmotic pressure.",
        answer: "π = CRT.",
      ),
      PyqItem(
        question: "What are colligative properties?",
        answer:
            "They are properties that depend on the number of solute particles rather than their nature.",
      ),
      PyqItem(
        question: "Write the expression for elevation in boiling point.",
        answer: "ΔTb = Kb m.",
      ),
      PyqItem(
        question: "Write the expression for depression in freezing point.",
        answer: "ΔTf = Kf m.",
      ),
      PyqItem(
        question: "What is an ideal solution?",
        answer:
            "An ideal solution obeys Raoult's law over the entire range of concentration and has ΔHmix = 0 and ΔVmix = 0.",
      ),
      PyqItem(
        question: "What is van't Hoff factor?",
        answer:
            "The van't Hoff factor accounts for association or dissociation of solute particles and is represented by i.",
      ),
      PyqItem(
        question: "Why is molality preferred over molarity in some calculations?",
        answer:
            "Molality is independent of temperature because it is based on mass of solvent, whereas molarity depends on volume.",
      ),
    ],

    "Electrochemistry": [
      PyqItem(
        question: "Define standard electrode potential.",
        answer:
            "It is the electrode potential measured under standard conditions relative to the standard hydrogen electrode.",
      ),
      PyqItem(
        question: "Write the relation between Gibbs energy and cell potential.",
        answer: "ΔG = -nFE.",
      ),
      PyqItem(
        question: "Write the Nernst equation.",
        answer:
            "At 298 K, E = E° - (0.0591/n) log Q.",
      ),
      PyqItem(
        question: "Define conductance.",
        answer: "Conductance is the reciprocal of resistance. G = 1/R.",
      ),
      PyqItem(
        question: "Define molar conductivity.",
        answer:
            "Molar conductivity is the conductance of the volume of solution containing one mole of electrolyte.",
      ),
      PyqItem(
        question: "State Faraday's first law of electrolysis.",
        answer:
            "The mass of substance deposited is directly proportional to the quantity of electricity passed through the electrolyte.",
      ),
      PyqItem(
        question: "What is a galvanic cell?",
        answer:
            "A galvanic cell converts chemical energy of a spontaneous redox reaction into electrical energy.",
      ),
      PyqItem(
        question:
            "What is the function of a salt bridge?",
        answer:
            "It completes the electrical circuit, maintains electrical neutrality and minimises liquid junction potential.",
      ),
      PyqItem(
        question:
            "What happens to molar conductivity on dilution of a strong electrolyte?",
        answer:
            "Molar conductivity increases on dilution and approaches a limiting value at infinite dilution.",
      ),
      PyqItem(
        question: "What is the SI unit of conductivity?",
        answer: "The SI unit is siemens per metre (S m⁻¹).",
      ),
    ],

    "Chemical Kinetics": [
      PyqItem(
        question: "Define rate of reaction.",
        answer:
            "The rate of reaction is the change in concentration of reactants or products per unit time.",
      ),
      PyqItem(
        question: "What is order of a reaction?",
        answer:
            "The order is the sum of the powers of concentration terms in the experimentally determined rate law.",
      ),
      PyqItem(
        question: "What is molecularity?",
        answer:
            "Molecularity is the number of reacting species involved in an elementary reaction.",
      ),
      PyqItem(
        question: "Write the Arrhenius equation.",
        answer: "k = Ae^(-Ea/RT).",
      ),
      PyqItem(
        question: "Write the half-life expression for a first-order reaction.",
        answer: "t½ = 0.693/k.",
      ),
      PyqItem(
        question:
            "What is the unit of rate constant for a first-order reaction?",
        answer: "The unit is s⁻¹.",
      ),
      PyqItem(
        question: "How does a catalyst affect activation energy?",
        answer:
            "A catalyst provides an alternative reaction pathway with lower activation energy.",
      ),
      PyqItem(
        question: "What is activation energy?",
        answer:
            "Activation energy is the minimum energy required for reactant molecules to undergo the reaction.",
      ),
      PyqItem(
        question: "What is a first-order reaction?",
        answer:
            "A reaction whose rate is proportional to the first power of the concentration of one reactant is called a first-order reaction.",
      ),
      PyqItem(
        question: "How does temperature affect reaction rate?",
        answer:
            "Increasing temperature generally increases the reaction rate because more molecules acquire energy equal to or greater than activation energy.",
      ),
    ],

    "Aldehydes, Ketones and Carboxylic Acids": [
      PyqItem(
        question:
            "Why are aldehydes generally more reactive than ketones towards nucleophilic addition?",
        answer:
            "Aldehydes have less steric hindrance and fewer electron-releasing alkyl groups than ketones, so their carbonyl carbon is more electrophilic.",
      ),
      PyqItem(
        question: "Why is benzaldehyde less reactive than propenal?",
        answer:
            "Conjugation with the benzene ring allows delocalisation of electron density and reduces the electrophilic character of the carbonyl carbon.",
      ),
      PyqItem(
        question: "What is aldol condensation?",
        answer:
            "Aldehydes or ketones containing alpha hydrogen undergo condensation in the presence of a base to form beta-hydroxy carbonyl compounds, which may dehydrate.",
      ),
      PyqItem(
        question: "What is Cannizzaro reaction?",
        answer:
            "Aldehydes without alpha hydrogen undergo self oxidation-reduction in concentrated alkali to give an alcohol and a carboxylate salt.",
      ),
      PyqItem(
        question: "How are aldehydes oxidised?",
        answer:
            "Aldehydes are readily oxidised to the corresponding carboxylic acids.",
      ),
      PyqItem(
        question: "How are aldehydes and ketones reduced?",
        answer:
            "Aldehydes are reduced to primary alcohols and ketones to secondary alcohols.",
      ),
      PyqItem(
        question: "What is the role of Tollens' reagent?",
        answer:
            "Tollens' reagent gives a silver mirror test with aldehydes because aldehydes are oxidised while Ag+ is reduced to metallic silver.",
      ),
      PyqItem(
        question: "Why are carboxylic acids acidic?",
        answer:
            "The carboxylate ion formed after loss of H+ is resonance stabilised, making proton loss favourable.",
      ),
      PyqItem(
        question: "What is esterification?",
        answer:
            "Carboxylic acids react with alcohols in the presence of concentrated H₂SO₄ to form esters and water.",
      ),
      PyqItem(
        question: "What is decarboxylation?",
        answer:
            "Decarboxylation is the removal of CO₂ from a carboxylic acid or its salt under suitable conditions.",
      ),
    ],

    "Amines": [
      PyqItem(
        question: "Why are amines basic?",
        answer:
            "Amines are basic because the nitrogen atom has a lone pair of electrons that can accept a proton.",
      ),
      PyqItem(
        question: "What is the carbylamine reaction?",
        answer:
            "Primary amines react with chloroform and alcoholic KOH to form isocyanides with an unpleasant smell.",
      ),
      PyqItem(
        question: "What is the Hinsberg test?",
        answer:
            "The Hinsberg test is used to distinguish primary, secondary and tertiary amines using benzenesulphonyl chloride.",
      ),
      PyqItem(
        question: "What is diazotisation?",
        answer:
            "Primary aromatic amines react with nitrous acid at low temperature to form diazonium salts.",
      ),
      PyqItem(
        question: "What is the Sandmeyer reaction?",
        answer:
            "Aryl diazonium salts react with cuprous salts to replace the diazonium group by Cl, Br or CN.",
      ),
      PyqItem(
        question: "Why is aniline less basic than ethylamine?",
        answer:
            "In aniline, the nitrogen lone pair is delocalised into the benzene ring, making it less available for protonation.",
      ),
      PyqItem(
        question: "What is a primary amine?",
        answer:
            "A primary amine has one alkyl or aryl group attached to nitrogen, with formula RNH₂.",
      ),
      PyqItem(
        question: "What is a secondary amine?",
        answer:
            "A secondary amine has two carbon-containing groups attached to nitrogen, with general formula R₂NH.",
      ),
      PyqItem(
        question: "What is a tertiary amine?",
        answer:
            "A tertiary amine has three carbon-containing groups attached to nitrogen, with general formula R₃N.",
      ),
      PyqItem(
        question: "What is the diazonium group?",
        answer:
            "The diazonium group is represented as -N₂⁺ and is present in aromatic diazonium salts.",
      ),
    ],
  },

  "Maths": {
    "Relations and Functions": [
      PyqItem(
        question: "Define a relation between two sets.",
        answer:
            "A relation from set A to set B is a subset of the Cartesian product A × B.",
      ),
      PyqItem(
        question: "Define a function.",
        answer:
            "A function from A to B assigns exactly one element of B to every element of A.",
      ),
      PyqItem(
        question: "What is a one-one function?",
        answer:
            "A function is one-one if different elements of the domain have different images.",
      ),
      PyqItem(
        question: "What is an onto function?",
        answer:
            "A function is onto if every element of its codomain has at least one pre-image.",
      ),
      PyqItem(
        question: "What is a bijective function?",
        answer:
            "A function that is both one-one and onto is called bijective.",
      ),
      PyqItem(
        question: "Define composition of functions.",
        answer:
            "The composition of f and g is (f ∘ g)(x) = f(g(x)).",
      ),
      PyqItem(
        question: "When does a function have an inverse?",
        answer:
            "A function has an inverse when it is bijective.",
      ),
      PyqItem(
        question: "Find the composition (f ∘ g)(x).",
        answer:
            "Substitute g(x) into f(x). Therefore (f ∘ g)(x) = f(g(x)).",
      ),
      PyqItem(
        question: "What is the domain of a function?",
        answer:
            "The domain is the set of all input values for which the function is defined.",
      ),
      PyqItem(
        question: "What is the range of a function?",
        answer:
            "The range is the set of all actual output values obtained from the function.",
      ),
    ],

    "Inverse Trigonometric Functions": [
      PyqItem(
        question: "Write the principal value of sin
