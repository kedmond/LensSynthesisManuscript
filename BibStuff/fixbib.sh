cp kedmond.bib kedmond0.bib

rm kedmond.bib

cat kedmond0.bib | sed '
    s/Mckenna/McKenna/
    s/stokes/{S}tokes/g
    s/Newtonian/{N}ewtonian/g
    s/einstein/{E}instein/g
    s/{E}instein1905/einstein1905/
    s/debye/{D}ebye/g
    s/{D}ebye1929/debye1929/
    s/Mcmillan/McMillan/
    s/Mcnaughton/McNaughton/
    s/Mcnerny/McNerny/
	s/DiSchinol/Di Schinol/
	s/Garciadelatorre/Garcia de la Torre/
	s/Vidalrussel/Vidal Russel/
    s/Applied Optics/App. Optics/
    s/Journal of Applied Physics/J. App. Phys./
	s/Journal of Colloid and Interface Science/J. Colloid Interf.  Sci./
    s/Journal of Noncrystalline Solids/J. Noncryst. Solids/
    s/Journal of Non-Crystalline Solids/J. Non-Cryst. Solids/
	s/Journal of Physical Chemistry/J. Phys. Chem./
    s/Journal of Physics: Condensed Matter/J. Phys.: Cond. Matt./
	s/Journal of Rheology/J. Rheo./
	s/Philosophical Magazine/Phil. Mag./
	s/Physics of Fluids\}/Phys. Fluids\}/
    s/Physical Review Letters/Phys. Rev. Lett./
    s/Physical Review/Phys. Rev./
	s/Proceedings of the National Academy of Sciences/Proc. Nat. Acad. Sci./
	s/Proceedings of the Royal Society of/Proc. Roy. Soc./
    s/Reports on Progress in Physics/Rep. Prog. Phys./
	s/Solid State Communications/Solid State Comm./
    s/The Journal of Chemical Physics/J. Chem. Phys./
	s/Chemical Physics/Chem. Phys./
	s/\\\$/\$/g
	s/\\\_/\_/g
' | grep -v "issn =" | grep -v URL | grep -v "url =" > kedmond.bib
