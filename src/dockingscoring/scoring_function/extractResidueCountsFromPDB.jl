using DataFrames, CSV

export extractResidueCountsFromPDB

"""
        extractResidueCountsFromPDB(path::String,a::String, b::String) -> DataFrame

Convert PDB files in the given directory to a DataFrame suitable for machine learning models using 
interface residue counts as input. For each PDB file it may take up to several seconds(depends
on complex size). If file amount is high, it may take hours to days. The end results will also
be stored stored on disk in the give directory.

# Arguments
- `path::String`: The file path to the directory containing PDB files. The function
  expects this directory to contain only PDB files.
- `a::String`, `b::String`: Chain ids of the two biological docking units.

# Returns
- `DataFrame`: A DataFrame where each row represents data extracted from a PDB file.
  The exact structure of the DataFrame (i.e., columns and types) depends on the
  specifics of the data extraction and transformation process.

# Example
```julia
# this is a path that containing docking results of chain J and M from Protein Data Bank entry 2BBK
# and chain A from Protein Data Bank entry 2RAC
data = extractResidueCountsFromPDB("project/docking_results/2BBK_JM_2RAC_A", "JM", "A")
"""
function extractResidueCountsFromPDB(path::String,a::String, b::String)
        a = uppercase(a)
        b = uppercase(b)
        failed_file = []
        pdb_codes = Vector{String}()
        file_names = Vector{String}()
        int_area = Vector{Float32}()
        molecule1s = Vector{String}()
        molecule2s = Vector{String}()
        n_res = Vector{Int}()
        counts = Array{Float32}(undef,0,20)

        pdb = splitpath(path)[end]
        for f in readdir(path, join = true)
                try
                        m = load_pdb(f)
                        intface = interface(m.atoms, a, b)
                        residues = count_interface_residues(intface.residues)
                        counts = [counts; residues]
                        push!(pdb_codes,pdb)
                        push!(file_names, basename(f))
                        push!(int_area, intface.area)
                        push!(molecule1s,a)
                        push!(molecule2s,b)
                        push!(n_res, nrow(intface.residues))
                catch e
                        push!(failed_file, basename(f))
                        push!(failed_file, e)
                end
        end

        df = DataFrame(
                        pdb_code = pdb_codes,
                        interface_id = file_names,
                        inte_area =  int_area,
                        molecule_1 =  molecule1s,
                        molecule_2 =  molecule2s,
                        n_res = n_res,
                        ala = counts[:,1],
                        cys = counts[:,2],
                        asp = counts[:,3],
                        glu = counts[:,4],
                        phe = counts[:,5],
                        gly = counts[:,6],
                        his = counts[:,7],
                        ile = counts[:,8],
                        lys = counts[:,9],
                        leu = counts[:,10],
                        met = counts[:,11],
                        asn = counts[:,12],
                        pro = counts[:,13],
                        gln = counts[:,14],
                        arg = counts[:,15],
                        ser = counts[:,16],
                        thr = counts[:,17],
                        val = counts[:,18],
                        trp = counts[:,19],
                        tyr = counts[:,20],
                        # mse = counts[:,21],
                        # cme = counts[:,22],
                        # sep = counts[:,23],
                        # nh2 = counts[:,24],
                        # tpo = counts[:,25],
                        # cso = counts[:,26],
                        # pca = counts[:,27],
                        # ptr = counts[:,28],
                        # cme = counts[:,29],
                        # kcx = counts[:,30]
                )

        
        CSV.write(joinpath(path, pdb * "_reside_counts.csv"), df)
        
        if length(failed_file) != 0
                open(joinpath(path, pdb * "residue_counts_failed_log.txt"),"w") do io
                        for line in failed_file
                        println(io, line)
                        end
                end
        end
        return df
end