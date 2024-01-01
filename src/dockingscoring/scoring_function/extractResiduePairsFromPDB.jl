## This function is adjusted for benchmark 4.0 files, which are named complex.1.pdb to complex.2000.pdb 
using DataFrames, CSV, XLSX

export extractResiduePairsFromPDB

"""
        extractResidePairsFromPDB(path::String,a::String, b::String) -> DataFrame

Convert PDB files in the given directory to a DataFrame suitable for machine learning models using 
interface residue-residue pairs as input. For each PDB file it may take up to several seconds(depends
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
data = extractResiduePairsFromPDB("project/docking_results/2BBK_JM_2RAC_A", "JM", "A")
"""
function extractResiduePairsFromPDB(path::String,a::String, b::String)
        a = uppercase(a)
        b = uppercase(b)
        failed_file = []
        pdb_codes = Vector{String}()
        file_names = Vector{String}()
        molecule1s = Vector{String}()
        molecule2s = Vector{String}()
        n_res = Vector{Int}()
        counts = Array{Int64}(undef,0,210)
        
        pdb = splitpath(path)[end]
        for f in readdir(path, join = true)
                try
                        m = load_pdb(f)
                        intface = residue_residue_pairs(m.atoms, a, b)
                        residues = count_interface_residue_pairs(intface)
                        counts = [counts; residues]
                        push!(pdb_codes,pdb)
                        push!(file_names, basename(f))
                        push!(molecule1s,a)
                        push!(molecule2s,b)
                        push!(n_res, nrow(intface))
                catch e
                        push!(failed_file, basename(f))
                        push!(failed_file, e)
                end

        end

        df = DataFrame(
                pdb_code = pdb_codes,
                interface_id = file_names,
                molecule_1 =  molecule1s,
                molecule_2 =  molecule2s,
                n_res = n_res,
                ala_ala = counts[:, 1],
                ala_cys = counts[:, 2],
                ala_asp = counts[:, 3],
                ala_glu = counts[:, 4],
                ala_phe = counts[:, 5],
                ala_gly = counts[:, 6],
                ala_his = counts[:, 7],
                ala_ile = counts[:, 8],
                ala_lys = counts[:, 9],
                ala_leu = counts[:, 10],
                ala_met = counts[:, 11],
                ala_asn = counts[:, 12],
                ala_pro = counts[:, 13],
                ala_gln = counts[:, 14],
                ala_arg = counts[:, 15],
                ala_ser = counts[:, 16],
                ala_thr = counts[:, 17],
                ala_val = counts[:, 18],
                ala_trp = counts[:, 19],
                ala_tyr = counts[:, 20],
                cys_cys = counts[:, 21],
                cys_asp = counts[:, 22],
                cys_glu = counts[:, 23],
                cys_phe = counts[:, 24],
                cys_gly = counts[:, 25],
                cys_his = counts[:, 26],
                cys_ile = counts[:, 27],
                cys_lys = counts[:, 28],
                cys_leu = counts[:, 29],
                cys_met = counts[:, 30],
                cys_asn = counts[:, 31],
                cys_pro = counts[:, 32],
                cys_gln = counts[:, 33],
                cys_arg = counts[:, 34],
                cys_ser = counts[:, 35],
                cys_thr = counts[:, 36],
                cys_val = counts[:, 37],
                cys_trp = counts[:, 38],
                cys_tyr = counts[:, 39],
                asp_asp = counts[:, 40],
                asp_glu = counts[:, 41],
                asp_phe = counts[:, 42],
                asp_gly = counts[:, 43],
                asp_his = counts[:, 44],
                asp_ile = counts[:, 45],
                asp_lys = counts[:, 46],
                asp_leu = counts[:, 47],
                asp_met = counts[:, 48],
                asp_asn = counts[:, 49],
                asp_pro = counts[:, 50],
                asp_gln = counts[:, 51],
                asp_arg = counts[:, 52],
                asp_ser = counts[:, 53],
                asp_thr = counts[:, 54],
                asp_val = counts[:, 55],
                asp_trp = counts[:, 56],
                asp_tyr = counts[:, 57],
                glu_glu = counts[:, 58],
                glu_phe = counts[:, 59],
                glu_gly = counts[:, 60],
                glu_his = counts[:, 61],
                glu_ile = counts[:, 62],
                glu_lys = counts[:, 63],
                glu_leu = counts[:, 64],
                glu_met = counts[:, 65],
                glu_asn = counts[:, 66],
                glu_pro = counts[:, 67],
                glu_gln = counts[:, 68],
                glu_arg = counts[:, 69],
                glu_ser = counts[:, 70],
                glu_thr = counts[:, 71],
                glu_val = counts[:, 72],
                glu_trp = counts[:, 73],
                glu_tyr = counts[:, 74],
                phe_phe = counts[:, 75],
                phe_gly = counts[:, 76],
                phe_his = counts[:, 77],
                phe_ile = counts[:, 78],
                phe_lys = counts[:, 79],
                phe_leu = counts[:, 80],
                phe_met = counts[:, 81],
                phe_asn = counts[:, 82],
                phe_pro = counts[:, 83],
                phe_gln = counts[:, 84],
                phe_arg = counts[:, 85],
                phe_ser = counts[:, 86],
                phe_thr = counts[:, 87],
                phe_val = counts[:, 88],
                phe_trp = counts[:, 89],
                phe_tyr = counts[:, 90],
                gly_gly = counts[:, 91],
                gly_his = counts[:, 92],
                gly_ile = counts[:, 93],
                gly_lys = counts[:, 94],
                gly_leu = counts[:, 95],
                gly_met = counts[:, 96],
                gly_asn = counts[:, 97],
                gly_pro = counts[:, 98],
                gly_gln = counts[:, 99],
                gly_arg = counts[:, 100],
                gly_ser = counts[:, 101],
                gly_thr = counts[:, 102],
                gly_val = counts[:, 103],
                gly_trp = counts[:, 104],
                gly_tyr = counts[:, 105],
                his_his = counts[:, 106],
                his_ile = counts[:, 107],
                his_lys = counts[:, 108],
                his_leu = counts[:, 109],
                his_met = counts[:, 110],
                his_asn = counts[:, 111],
                his_pro = counts[:, 112],
                his_gln = counts[:, 113],
                his_arg = counts[:, 114],
                his_ser = counts[:, 115],
                his_thr = counts[:, 116],
                his_val = counts[:, 117],
                his_trp = counts[:, 118],
                his_tyr = counts[:, 119],
                ile_ile = counts[:, 120],
                ile_lys = counts[:, 121],
                ile_leu = counts[:, 122],
                ile_met = counts[:, 123],
                ile_asn = counts[:, 124],
                ile_pro = counts[:, 125],
                ile_gln = counts[:, 126],
                ile_arg = counts[:, 127],
                ile_ser = counts[:, 128],
                ile_thr = counts[:, 129],
                ile_val = counts[:, 130],
                ile_trp = counts[:, 131],
                ile_tyr = counts[:, 132],
                lys_lys = counts[:, 133],
                lys_leu = counts[:, 134],
                lys_met = counts[:, 135],
                lys_asn = counts[:, 136],
                lys_pro = counts[:, 137],
                lys_gln = counts[:, 138],
                lys_arg = counts[:, 139],
                lys_ser = counts[:, 140],
                lys_thr = counts[:, 141],
                lys_val = counts[:, 142],
                lys_trp = counts[:, 143],
                lys_tyr = counts[:, 144],
                leu_leu = counts[:, 145],
                leu_met = counts[:, 146],
                leu_asn = counts[:, 147],
                leu_pro = counts[:, 148],
                leu_gln = counts[:, 149],
                leu_arg = counts[:, 150],
                leu_ser = counts[:, 151],
                leu_thr = counts[:, 152],
                leu_val = counts[:, 153],
                leu_trp = counts[:, 154],
                leu_tyr = counts[:, 155],
                met_met = counts[:, 156],
                met_asn = counts[:, 157],
                met_pro = counts[:, 158],
                met_gln = counts[:, 159],
                met_arg = counts[:, 160],
                met_ser = counts[:, 161],
                met_thr = counts[:, 162],
                met_val = counts[:, 163],
                met_trp = counts[:, 164],
                met_tyr = counts[:, 165],
                asn_asn = counts[:, 166],
                asn_pro = counts[:, 167],
                asn_gln = counts[:, 168],
                asn_arg = counts[:, 169],
                asn_ser = counts[:, 170],
                asn_thr = counts[:, 171],
                asn_val = counts[:, 172],
                asn_trp = counts[:, 173],
                asn_tyr = counts[:, 174],
                pro_pro = counts[:, 175],
                pro_gln = counts[:, 176],
                pro_arg = counts[:, 177],
                pro_ser = counts[:, 178],
                pro_thr = counts[:, 179],
                pro_val = counts[:, 180],
                pro_trp = counts[:, 181],
                pro_tyr = counts[:, 182],
                gln_gln = counts[:, 183],
                gln_arg = counts[:, 184],
                gln_ser = counts[:, 185],
                gln_thr = counts[:, 186],
                gln_val = counts[:, 187],
                gln_trp = counts[:, 188],
                gln_tyr = counts[:, 189],
                arg_arg = counts[:, 190],
                arg_ser = counts[:, 191],
                arg_thr = counts[:, 192],
                arg_val = counts[:, 193],
                arg_trp = counts[:, 194],
                arg_tyr = counts[:, 195],
                ser_ser = counts[:, 196],
                ser_thr = counts[:, 197],
                ser_val = counts[:, 198],
                ser_trp = counts[:, 199],
                ser_tyr = counts[:, 200],
                thr_thr = counts[:, 201],
                thr_val = counts[:, 202],
                thr_trp = counts[:, 203],
                thr_tyr = counts[:, 204],
                val_val = counts[:, 205],
                val_trp = counts[:, 206],
                val_tyr = counts[:, 207],
                trp_trp = counts[:, 208],
                trp_tyr = counts[:, 209],
                tyr_tyr = counts[:, 210]
        )
        
        CSV.write(joinpath(path, pdb * "_reside_pairs.csv"), df)

        if length(failed_file) != 0
                open(joinpath(path, pdb * "residue_pairs_failed_log.txt"),"w") do io
                        for line in failed_file
                        println(io, line)
                        end
                end
        end
        return df
end