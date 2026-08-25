class PyqItem {
  final String question;
  final String answer;

  const PyqItem({
    required this.question,
    required this.answer,
  });
}

const Map<String, Map<String, List<PyqItem>>> studyBuddyPyqs = {
  // ============================================================
  // PHYSICS
  // ============================================================

  "Physics": {
    "Electric Charges and Fields": [
      PyqItem(
        question: "State Coulomb's law and write its mathematical expression.",
        answer:
            "The electrostatic force between two point charges is directly proportional to their product and inversely proportional to the square of their separation. F = kq₁q₂/r².",
      ),
      PyqItem(
        question: "Define electric field intensity at a point.",
        answer:
            "Electric field intensity is the force experienced by a unit positive test charge placed at that point. E = F/q.",
      ),
      PyqItem(
        question: "Write the expression for electric field due to a point charge.",
        answer:
            "For a point charge Q at distance r, E = kQ/r².",
      ),
      PyqItem(
        question: "What is electric flux?",
        answer:
            "Electric flux is the measure of the electric field passing through a surface. For a uniform field, Φ = EA cosθ.",
      ),
      PyqItem(
        question: "State Gauss's law.",
        answer:
            "The total electric flux through a closed surface is equal to the enclosed charge divided by ε₀. Φ = q/ε₀.",
      ),
      PyqItem(
        question:
            "Using Gauss's law, write the electric field due to an infinitely long straight charged wire.",
        answer:
            "For a wire with linear charge density λ, E = λ/(2πε₀r).",
      ),
      PyqItem(
        question:
            "What happens to the force between two charges if the distance is doubled?",
        answer:
            "Since force is proportional to 1/r², doubling the distance makes the force one-fourth of its original value.",
      ),
      PyqItem(
        question: "Define electric dipole and electric dipole moment.",
        answer:
            "An electric dipole consists of two equal and opposite charges separated by a small distance. Its dipole moment is p = q × 2a and is directed from negative to positive charge.",
      ),
      PyqItem(
        question:
            "Write the expression for torque on an electric dipole in a uniform electric field.",
        answer: "The torque is τ = pE sinθ.",
      ),
      PyqItem(
        question: "Why is the electric field inside a conductor zero in electrostatic equilibrium?",
        answer:
            "Free charges rearrange themselves until the electric field inside the conductor becomes zero.",
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
        question: "Define capacitance.",
        answer:
            "Capacitance is the charge stored per unit potential difference. C = Q/V.",
      ),
      PyqItem(
        question:
            "Write the expression for capacitance of a parallel plate capacitor.",
        answer: "For vacuum, C = ε₀A/d.",
      ),
      PyqItem(
        question:
            "What happens to capacitance when a dielectric is inserted between the plates?",
        answer:
            "The capacitance increases by the dielectric constant K. C = Kε₀A/d.",
      ),
      PyqItem(
        question: "Write the expressions for energy stored in a capacitor.",
        answer: "U = ½CV² = ½QV = Q²/(2C).",
      ),
      PyqItem(
        question:
            "Write the equivalent capacitance for capacitors connected in parallel.",
        answer: "C = C₁ + C₂ + C₃ + ...",
      ),
      PyqItem(
        question:
            "Write the equivalent capacitance for capacitors connected in series.",
        answer: "1/C = 1/C₁ + 1/C₂ + 1/C₃ + ...",
      ),
      PyqItem(
        question:
            "What is the work done in moving a charge along an equipotential surface?",
        answer:
            "The work done is zero because the potential difference between two points on an equipotential surface is zero.",
      ),
      PyqItem(
        question:
            "Why are electric field lines perpendicular to an equipotential surface?",
        answer:
            "There is no potential change along an equipotential surface, so the electric field must be perpendicular to it.",
      ),
    ],

    "Current Electricity": [
      PyqItem(
        question: "State Ohm's law.",
        answer:
            "At constant temperature, current through a conductor is directly proportional to the potential difference. V = IR.",
      ),
      PyqItem(
        question: "Define resistivity.",
        answer:
            "Resistivity is the resistance of a conductor having unit length and unit cross-sectional area. ρ = RA/L.",
      ),
      PyqItem(
        question: "Write the expression for resistance of a wire.",
        answer: "R = ρL/A.",
      ),
      PyqItem(
        question: "Write the expressions for electrical power.",
        answer: "P = VI = I²R = V²/R.",
      ),
      PyqItem(
        question: "How does resistance change when the length of a wire is doubled?",
        answer:
            "Resistance doubles because R is directly proportional to length.",
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
            "The total current entering a junction is equal to the total current leaving it.",
      ),
      PyqItem(
        question: "State Kirchhoff's loop rule.",
        answer:
            "The algebraic sum of potential differences around a closed loop is zero.",
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
            "Write the expression for magnetic force on a charged particle.",
        answer: "F = qvB sinθ.",
      ),
      PyqItem(
        question:
            "What is the force on a charged particle moving parallel to a magnetic field?",
        answer: "The force is zero because sin0° = 0.",
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
            "It moves in a circular path because the magnetic force provides the centripetal force.",
      ),
      PyqItem(
        question:
            "Write the radius of the circular path of a charged particle.",
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
        question: "State the principle of a cyclotron.",
        answer:
            "A charged particle is accelerated by an alternating electric field while a magnetic field makes it move in semicircular paths.",
      ),
    ],

    "Electromagnetic Induction": [
      PyqItem(
        question: "State Faraday's law of electromagnetic induction.",
        answer:
            "The induced emf is equal to the negative rate of change of magnetic flux. ε = -dΦ/dt.",
      ),
      PyqItem(
        question: "State Lenz's law.",
        answer:
            "The direction of induced current opposes the change in magnetic flux producing it.",
      ),
      PyqItem(
        question: "Define magnetic flux.",
        answer: "Magnetic flux is Φ = BA cosθ.",
      ),
      PyqItem(
        question: "Write the expression for motional emf.",
        answer: "For perpendicular motion, ε = Blv.",
      ),
      PyqItem(
        question: "What is self-inductance?",
        answer:
            "Self-inductance is the property of a coil by which it opposes changes in current. ε = -L(dI/dt).",
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
        question: "What is mutual induction?",
        answer:
            "Mutual induction is the phenomenon in which changing current in one coil induces emf in another nearby coil.",
      ),
      PyqItem(
        question: "What is the SI unit of magnetic flux?",
        answer: "The SI unit is weber (Wb).",
      ),
      PyqItem(
        question: "On what factors does induced emf depend?",
        answer:
            "It depends on the rate of change of magnetic flux and the number of turns of the coil.",
      ),
    ],
  },

  // ============================================================
  // CHEMISTRY
  // ============================================================

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
        question: "Why is molality independent of temperature?",
        answer:
            "Molality is based on the mass of solvent, which does not change with temperature.",
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
        question: "Write the Nernst equation at 298 K.",
        answer: "E = E° - (0.0591/n) log Q.",
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
        question: "What is the function of a salt bridge?",
        answer:
            "It completes the electrical circuit, maintains electrical neutrality and reduces liquid junction potential.",
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
            "Rate of reaction is the change in concentration of reactants or products per unit time.",
      ),
      PyqItem(
        question: "What is the order of a reaction?",
        answer:
            "It is the sum of powers of concentration terms in the experimentally determined rate law.",
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
            "It is a reaction whose rate is proportional to the first power of the concentration of a reactant.",
      ),
      PyqItem(
        question: "How does temperature affect reaction rate?",
        answer:
            "Increasing temperature generally increases reaction rate because more molecules acquire energy equal to or greater than activation energy.",
      ),
    ],

    "Aldehydes, Ketones and Carboxylic Acids": [
      PyqItem(
        question:
            "Why are aldehydes generally more reactive than ketones towards nucleophilic addition?",
        answer:
            "Aldehydes have less steric hindrance and fewer electron-releasing alkyl groups, so their carbonyl carbon is more electrophilic.",
      ),
      PyqItem(
        question: "Why is benzaldehyde less reactive than propenal?",
        answer:
            "Conjugation with the benzene ring allows delocalisation of electron density and reduces the electrophilic character of the carbonyl carbon.",
      ),
      PyqItem(
        question: "What is aldol condensation?",
        answer:
            "Aldehydes or ketones containing alpha hydrogen undergo condensation in the presence of a base to form beta-hydroxy carbonyl compounds.",
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
            "Tollens' reagent gives a silver mirror test with aldehydes because Ag⁺ is reduced to metallic silver.",
      ),
      PyqItem(
        question: "Why are carboxylic acids acidic?",
        answer:
            "The carboxylate ion formed after loss of H⁺ is resonance stabilised.",
      ),
      PyqItem(
        question: "What is esterification?",
        answer:
            "A carboxylic acid reacts with an alcohol in the presence of concentrated H₂SO₄ to form an ester and water.",
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
            "Amines are basic because nitrogen has a lone pair of electrons that can accept a proton.",
      ),
      PyqItem(
        question: "What is the carbylamine reaction?",
        answer:
            "Primary amines react with chloroform and alcoholic KOH to form isocyanides.",
      ),
      PyqItem(
        question: "What is the Hinsberg test?",
        answer:
            "The Hinsberg test distinguishes primary, secondary and tertiary amines using benzenesulphonyl chloride.",
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
            "In aniline, the nitrogen lone pair is delocalised into the benzene ring and is therefore less available for protonation.",
      ),
      PyqItem(
        question: "What is a primary amine?",
        answer:
            "A primary amine has one carbon-containing group attached to nitrogen and has the general formula RNH₂.",
      ),
      PyqItem(
        question: "What is a secondary amine?",
        answer:
            "A secondary amine has two carbon-containing groups attached to nitrogen and has the general formula R₂NH.",
      ),
      PyqItem(
        question: "What is a tertiary amine?",
        answer:
            "A tertiary amine has three carbon-containing groups attached to nitrogen and has the general formula R₃N.",
      ),
      PyqItem(
        question: "What is the diazonium group?",
        answer:
            "The diazonium group is represented as -N₂⁺ and is present in aromatic diazonium salts.",
      ),
    ],
  },

  // ============================================================
  // MATHEMATICS
  // ============================================================

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
        question: "What is the domain of a function?",
        answer:
            "The domain is the set of all input values for which the function is defined.",
      ),
      PyqItem(
        question: "What is the range of a function?",
        answer:
            "The range is the set of all actual output values obtained from the function.",
      ),
      PyqItem(
        question: "What is an identity function?",
        answer:
            "An identity function maps every element to itself, so f(x) = x.",
      ),
    ],

    "Inverse Trigonometric Functions": [
      PyqItem(
        question: "Write the principal value of sin⁻¹x.",
        answer:
            "The principal value of sin⁻¹x lies in the interval [-π/2, π/2].",
      ),
      PyqItem(
        question: "Write the principal value of cos⁻¹x.",
        answer:
            "The principal value of cos⁻¹x lies in the interval [0, π].",
      ),
      PyqItem(
        question: "Write the principal value of tan⁻¹x.",
        answer:
            "The principal value of tan⁻¹x lies in the interval (-π/2, π/2).",
      ),
      PyqItem(
        question: "Evaluate sin⁻¹x + cos⁻¹x.",
        answer: "For x in [-1,1], sin⁻¹x + cos⁻¹x = π/2.",
      ),
      PyqItem(
        question: "Write the relation between tan⁻¹x and cot⁻¹x.",
        answer: "tan⁻¹x + cot⁻¹x = π/2 for the standard principal values.",
      ),
      PyqItem(
        question: "Write the principal value range of cot⁻¹x.",
        answer:
            "Using the standard NCERT convention, cot⁻¹x lies in (0, π).",
      ),
      PyqItem(
        question: "Evaluate tan⁻¹1.",
        answer: "tan⁻¹1 = π/4.",
      ),
      PyqItem(
        question: "Evaluate sin⁻¹0.",
        answer: "sin⁻¹0 = 0.",
      ),
      PyqItem(
        question: "Evaluate cos⁻¹1.",
        answer: "cos⁻¹1 = 0.",
      ),
      PyqItem(
        question: "Evaluate cos⁻¹0.",
        answer: "cos⁻¹0 = π/2.",
      ),
    ],

    "Matrices": [
      PyqItem(
        question: "Define a matrix.",
        answer:
            "A matrix is a rectangular arrangement of numbers or elements in rows and columns.",
      ),
      PyqItem(
        question: "What is the order of a matrix?",
        answer:
            "The order of a matrix is the number of rows × number of columns.",
      ),
      PyqItem(
        question: "When are two matrices equal?",
        answer:
            "Two matrices are equal when they have the same order and corresponding elements are equal.",
      ),
      PyqItem(
        question: "Define a square matrix.",
        answer:
            "A matrix having equal numbers of rows and columns is called a square matrix.",
      ),
      PyqItem(
        question: "What is an identity matrix?",
        answer:
            "An identity matrix is a square matrix with 1 on the principal diagonal and 0 elsewhere.",
      ),
      PyqItem(
        question: "What is the transpose of a matrix?",
        answer:
            "The transpose is obtained by interchanging rows and columns.",
      ),
      PyqItem(
        question: "When is a matrix symmetric?",
        answer:
            "A square matrix A is symmetric if Aᵀ = A.",
      ),
      PyqItem(
        question: "Write the condition for a matrix to be invertible.",
        answer:
            "A square matrix is invertible if its determinant is non-zero.",
      ),
      PyqItem(
        question: "Write the formula for inverse of a matrix.",
        answer: "A⁻¹ = adj(A)/|A|, provided |A| ≠ 0.",
      ),
      PyqItem(
        question: "What is a zero matrix?",
        answer:
            "A matrix in which every element is zero is called a zero matrix.",
      ),
    ],

    "Determinants": [
      PyqItem(
        question: "What is a determinant?",
        answer:
            "A determinant is a scalar value associated with a square matrix.",
      ),
      PyqItem(
        question: "What happens to a determinant if two rows are interchanged?",
        answer:
            "The sign of the determinant changes.",
      ),
      PyqItem(
        question:
            "What is the determinant of a matrix having two identical rows?",
        answer: "Its determinant is zero.",
      ),
      PyqItem(
        question: "Write the determinant of a 2 × 2 matrix.",
        answer:
            "For [[a,b],[c,d]], the determinant is ad - bc.",
      ),
      PyqItem(
        question: "What is the determinant of an identity matrix?",
        answer: "The determinant of an identity matrix is 1.",
      ),
      PyqItem(
        question: "When is a square matrix singular?",
        answer:
            "A square matrix is singular when its determinant is zero.",
      ),
      PyqItem(
        question: "Write the relation between determinants of AB, A and B.",
        answer: "|AB| = |A||B|.",
      ),
      PyqItem(
        question: "What is the determinant of a triangular matrix?",
        answer:
            "It is equal to the product of the elements on the principal diagonal.",
      ),
      PyqItem(
        question: "What happens if one row of a determinant is multiplied by k?",
        answer:
            "The value of the determinant is multiplied by k.",
      ),
      PyqItem(
        question: "How can determinants be used to find area?",
        answer:
            "The area of a triangle can be obtained using the determinant formula involving the coordinates of its vertices.",
      ),
    ],

    "Continuity and Differentiability": [
      PyqItem(
        question: "Define continuity of a function at x = a.",
        answer:
            "A function is continuous at a if lim(x→a) f(x) = f(a).",
      ),
      PyqItem(
        question: "Write the derivative of xⁿ.",
        answer: "d(xⁿ)/dx = nxⁿ⁻¹.",
      ),
      PyqItem(
        question: "Write the derivative of sin x.",
        answer: "d(sin x)/dx = cos x.",
      ),
      PyqItem(
        question: "Write the derivative of cos x.",
        answer: "d(cos x)/dx = -sin x.",
      ),
      PyqItem(
        question: "Write the derivative of eˣ.",
        answer: "d(eˣ)/dx = eˣ.",
      ),
      PyqItem(
        question: "Write the derivative of ln x.",
        answer: "d(ln x)/dx = 1/x.",
      ),
      PyqItem(
        question: "State the product rule of differentiation.",
        answer:
            "d(uv)/dx = u(dv/dx) + v(du/dx).",
      ),
      PyqItem(
        question: "State the quotient rule of differentiation.",
        answer:
            "d(u/v)/dx = [v(du/dx) - u(dv/dx)]/v².",
      ),
      PyqItem(
        question: "State the chain rule.",
        answer:
            "If y = f(g(x)), then dy/dx = f'(g(x))g'(x).",
      ),
      PyqItem(
        question: "Is every differentiable function continuous?",
        answer: "Yes. Differentiability at a point implies continuity at that point.",
      ),
    ],

    "Application of Derivatives": [
      PyqItem(
        question: "What is a critical point?",
        answer:
            "A critical point occurs where f'(x) = 0 or f'(x) does not exist, subject to the function being defined.",
      ),
      PyqItem(
        question: "What is the condition for a local maximum?",
        answer:
            "A common condition is f'(a) = 0 and f' changes from positive to negative at a.",
      ),
      PyqItem(
        question: "What is the condition for a local minimum?",
        answer:
            "A common condition is f'(a) = 0 and f' changes from negative to positive at a.",
      ),
      PyqItem(
        question: "What does a positive derivative indicate?",
        answer: "The function is increasing on the relevant interval.",
      ),
      PyqItem(
        question: "What does a negative derivative indicate?",
        answer: "The function is decreasing on the relevant interval.",
      ),
      PyqItem(
        question: "What is the geometrical meaning of derivative?",
        answer:
            "The derivative represents the slope of the tangent to the curve at a point.",
      ),
      PyqItem(
        question: "What is the tangent to a curve?",
        answer:
            "The tangent is a straight line touching the curve at a point with the same instantaneous slope.",
      ),
      PyqItem(
        question: "What is the normal to a curve?",
        answer:
            "The normal is perpendicular to the tangent at the point of contact.",
      ),
      PyqItem(
        question: "What is meant by increasing function?",
        answer:
            "A function is increasing on an interval if its value increases as x increases.",
      ),
      PyqItem(
        question: "What is meant by decreasing function?",
        answer:
            "A function is decreasing on an interval if its value decreases as x increases.",
      ),
    ],

    "Integrals": [
      PyqItem(
        question: "Evaluate ∫xⁿ dx.",
        answer: "∫xⁿ dx = xⁿ⁺¹/(n+1) + C, for n ≠ -1.",
      ),
      PyqItem(
        question: "Evaluate ∫1/x dx.",
        answer: "∫1/x dx = ln|x| + C.",
      ),
      PyqItem(
        question: "Evaluate ∫eˣ dx.",
        answer: "∫eˣ dx = eˣ + C.",
      ),
      PyqItem(
        question: "Evaluate ∫sin x dx.",
        answer: "∫sin x dx = -cos x + C.",
      ),
      PyqItem(
        question: "Evaluate ∫cos x dx.",
        answer: "∫cos x dx = sin x + C.",
      ),
      PyqItem(
        question: "State integration by parts formula.",
        answer:
            "∫u dv = uv - ∫v du.",
      ),
      PyqItem(
        question: "What is an indefinite integral?",
        answer:
            "An indefinite integral represents a family of antiderivatives and contains an arbitrary constant C.",
      ),
      PyqItem(
        question: "What is a definite integral?",
        answer:
            "A definite integral has specified limits and gives a numerical value.",
      ),
      PyqItem(
        question: "State the fundamental relation between differentiation and integration.",
        answer:
            "Differentiation and integration are inverse operations under appropriate conditions.",
      ),
      PyqItem(
        question: "What is the constant of integration?",
        answer:
            "C is the arbitrary constant added to an indefinite integral.",
      ),
    ],

    "Application of Integrals": [
      PyqItem(
        question: "How is the area under a curve represented using integration?",
        answer: "The area can be represented by a definite integral.",
      ),
      PyqItem(
        question: "Write the area between a curve and the x-axis.",
        answer: "Area = ∫ y dx over the required limits when y is non-negative.",
      ),
      PyqItem(
        question: "How is area between two curves calculated?",
        answer:
            "Area is obtained by integrating the difference between the upper and lower curves.",
      ),
      PyqItem(
        question: "What is the significance of limits in area calculation?",
        answer:
            "The limits specify the interval over which the area is calculated.",
      ),
      PyqItem(
        question: "When should the area be split into separate integrals?",
        answer:
            "It should be split when the upper/lower curve changes or the graph crosses the axis.",
      ),
      PyqItem(
        question: "What does a definite integral geometrically represent?",
        answer:
            "It can represent the signed area between a curve and the axis over an interval.",
      ),
      PyqItem(
        question: "How can the area between y = f(x) and y = g(x) be found?",
        answer:
            "Integrate [f(x) - g(x)] between the points of intersection when f is above g.",
      ),
      PyqItem(
        question: "Why are points of intersection important?",
        answer:
            "They commonly provide the limits required for calculating the enclosed area.",
      ),
      PyqItem(
        question: "What happens if a curve lies below the x-axis?",
        answer:
            "Its definite integral is negative, so absolute value or appropriate splitting is used for geometrical area.",
      ),
      PyqItem(
        question: "What is an elementary area element in integration?",
        answer:
            "A small strip such as y dx can be used as an elementary area element.",
      ),
    ],

    "Differential Equations": [
      PyqItem(
        question: "What is a differential equation?",
        answer:
            "An equation involving derivatives or differentials of a dependent variable with respect to an independent variable.",
      ),
      PyqItem(
        question: "What is the order of a differential equation?",
        answer:
            "The order is the highest order derivative present in the equation.",
      ),
      PyqItem(
        question: "What is the degree of a differential equation?",
        answer:
            "The degree is the power of the highest order derivative after the equation is made polynomial in derivatives.",
      ),
      PyqItem(
        question: "What is a general solution?",
        answer:
            "A general solution contains arbitrary constants equal in number to the order of the differential equation.",
      ),
      PyqItem(
        question: "Solve dy/dx = ky conceptually.",
        answer:
            "Separating variables gives dy/y = k dx and hence ln|y| = kx + C, so y = Ceᵏˣ.",
      ),
      PyqItem(
        question: "What is a variable separable differential equation?",
        answer:
            "It is a differential equation in which variables can be separated so that each side contains only one variable.",
      ),
      PyqItem(
        question: "What is an initial condition?",
        answer:
            "An initial condition specifies the value of the dependent variable at a particular value of the independent variable.",
      ),
      PyqItem(
        question: "What is a particular solution?",
        answer:
            "A particular solution is obtained from the general solution after determining the arbitrary constants.",
      ),
      PyqItem(
        question: "What is the solution of dy/dx = 0?",
        answer: "y = C, where C is an arbitrary constant.",
      ),
      PyqItem(
        question: "Why are arbitrary constants present in general solutions?",
        answer:
            "They arise because differentiation removes constants and integration introduces them again.",
      ),
    ],

    "Vector Algebra": [
      PyqItem(
        question: "Define a vector.",
        answer:
            "A vector is a quantity having both magnitude and direction.",
      ),
      PyqItem(
        question: "Write the magnitude of vector a = a₁i + a₂j + a₃k.",
        answer:
            "|a| = √(a₁² + a₂² + a₃²).",
      ),
      PyqItem(
        question: "Write the formula for dot product.",
        answer:
            "a·b = |a||b|cosθ.",
      ),
      PyqItem(
        question: "Write the formula for cross product magnitude.",
        answer:
            "|a×b| = |a||b|sinθ.",
      ),
      PyqItem(
        question: "When are two vectors perpendicular?",
        answer:
            "Two non-zero vectors are perpendicular when their dot product is zero.",
      ),
      PyqItem(
        question: "When are two vectors parallel?",
        answer:
            "Two non-zero vectors are parallel when their cross product is zero.",
      ),
      PyqItem(
        question: "What is a unit vector?",
        answer:
            "A unit vector is a vector having magnitude one.",
      ),
      PyqItem(
        question: "Write the standard unit vectors.",
        answer: "The standard unit vectors are i, j and k.",
      ),
      PyqItem(
        question: "What is the scalar triple product?",
        answer:
            "The scalar triple product of a, b and c is a·(b×c).",
      ),
      PyqItem(
        question: "What is the vector triple product?",
        answer:
            "The vector triple product can be written as a×(b×c) = b(a·c) - c(a·b).",
      ),
    ],

    "Three Dimensional Geometry": [
      PyqItem(
        question: "Write the distance between two points in three dimensions.",
        answer:
            "For points (x₁,y₁,z₁) and (x₂,y₂,z₂), distance = √[(x₂-x₁)² + (y₂-y₁)² + (z₂-z₁)²].",
      ),
      PyqItem(
        question: "What are direction cosines?",
        answer:
            "Direction cosines are the cosines of the angles made by a line with the positive coordinate axes.",
      ),
      PyqItem(
        question: "Write the relation between direction cosines.",
        answer: "l² + m² + n² = 1.",
      ),
      PyqItem(
        question: "Write the equation of a line in vector form.",
        answer:
            "r = a + λb, where a is a position vector and b is a direction vector.",
      ),
      PyqItem(
        question: "What is the angle between two lines?",
        answer:
            "It can be found using the dot product of their direction vectors.",
      ),
      PyqItem(
        question: "When are two lines perpendicular?",
        answer:
            "Their direction vectors are perpendicular, so their dot product is zero.",
      ),
      PyqItem(
        question: "When are two lines parallel?",
        answer:
            "Their direction vectors are parallel or proportional.",
      ),
      PyqItem(
        question: "What is the shortest distance between skew lines?",
        answer:
            "It is the length of the common perpendicular between the two skew lines.",
      ),
      PyqItem(
        question: "What is a plane?",
        answer:
            "A plane is a flat two-dimensional surface extending in three-dimensional space.",
      ),
      PyqItem(
        question: "Write the general equation of a plane.",
        answer:
            "The general equation is ax + by + cz + d = 0.",
      ),
    ],

    "Linear Programming": [
      PyqItem(
        question: "What is a linear programming problem?",
        answer:
            "It is an optimisation problem involving a linear objective function and linear constraints.",
      ),
      PyqItem(
        question: "What is the objective function?",
        answer:
            "The objective function is the linear function that is maximised or minimised.",
      ),
      PyqItem(
        question: "What are constraints?",
        answer:
            "Constraints are the linear inequalities or equations restricting the variables.",
      ),
      PyqItem(
        question: "What is the feasible region?",
        answer:
            "The feasible region is the common region satisfying all constraints.",
      ),
      PyqItem(
        question: "What is an optimal solution?",
        answer:
            "It is a feasible solution giving the maximum or minimum value of the objective function.",
      ),
      PyqItem(
        question: "What is the corner point method?",
        answer:
            "The objective function is evaluated at the corner points of the feasible region to determine the optimum.",
      ),
      PyqItem(
        question: "What is a bounded feasible region?",
        answer:
            "A feasible region that is limited in all relevant directions is called bounded.",
      ),
      PyqItem(
        question: "What is an unbounded feasible region?",
        answer:
            "A feasible region that extends indefinitely in at least one direction is unbounded.",
      ),
      PyqItem(
        question: "What is a redundant constraint?",
        answer:
            "A constraint that does not affect the feasible region because it is already implied by other constraints.",
      ),
      PyqItem(
        question: "Can the optimum occur at more than one point?",
        answer:
            "Yes. In some cases every point on a line segment between two optimal corner points gives the same optimum.",
      ),
    ],

    "Probability": [
      PyqItem(
        question: "Define conditional probability.",
        answer:
            "P(A|B) = P(A ∩ B)/P(B), provided P(B) ≠ 0.",
      ),
      PyqItem(
        question: "State Bayes' theorem.",
        answer:
            "Bayes' theorem relates conditional probabilities and can be written as P(Aᵢ|B) = P(Aᵢ)P(B|Aᵢ) / ΣP(Aⱼ)P(B|Aⱼ).",
      ),
      PyqItem(
        question: "What are independent events?",
        answer:
            "Events A and B are independent if P(A ∩ B) = P(A)P(B).",
      ),
      PyqItem(
        question: "What are mutually exclusive events?",
        answer:
            "Two events are mutually exclusive if they cannot occur together, so P(A ∩ B) = 0.",
      ),
      PyqItem(
        question: "What is the probability of an impossible event?",
        answer: "The probability is 0.",
      ),
      PyqItem(
        question: "What is the probability of a sure event?",
        answer: "The probability is 1.",
      ),
      PyqItem(
        question: "Write the complement rule.",
        answer: "P(A') = 1 - P(A).",
      ),
      PyqItem(
        question: "Write the addition theorem of probability.",
        answer:
            "P(A ∪ B) = P(A) + P(B) - P(A ∩ B).",
      ),
      PyqItem(
        question: "Write the multiplication theorem.",
        answer:
            "P(A ∩ B) = P(A)P(B|A).",
      ),
      PyqItem(
        question: "What is a random variable?",
        answer:
            "A random variable assigns numerical values to outcomes of a random experiment.",
      ),
    ],
  },
};
