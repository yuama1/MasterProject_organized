module BiochemicalAlgorithms

include("core/types.jl")
include("core/element.jl")
include("core/amino_acid.jl")
include("core/atom.jl")
include("core/pdb_atom.jl")
include("core/bond.jl")
include("core/chain.jl")
include("core/molecule.jl")
include("core/pdb_molecule.jl")
include("core/residue.jl")
include("core/fragment.jl")
include("core/nucleotide.jl")
include("core/protein.jl")

module PubChem
include("fileformats/pubchem_json.jl")
end
include("fileformats/pdb.jl")

include("mappings/atom_bijection.jl")
include("mappings/rigid_mapping.jl")

using .PubChem

export load_pubchem_json

include("dockingscoring/sasa/atomic_radius.jl")
include("dockingscoring/sasa/hashbox.jl")
include("dockingscoring/sasa/sasa.jl")

include("dockingscoring/interface/interface.jl")
include("dockingscoring/interface/interface5A.jl")
include("dockingscoring/interface/residue_residue_pair.jl")
include("dockingscoring/interface/count_interface_residues.jl")
include("dockingscoring/interface/count_residue_areas.jl")
include("dockingscoring/interface/count_interface_residue_pairs.jl")

include("dockingscoring/scoring_function/extractResiduePairsFromPDB.jl")
include("dockingscoring/scoring_function/extractResidueCountsFromPDB.jl")
include("dockingscoring/scoring_function/extractResidueAreasFromPDB.jl")
end