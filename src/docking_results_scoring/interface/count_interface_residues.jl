export count_interface_residues

function count_interface_residues(interface::DataFrame)
        ala::Int = 0
        cys::Int = 0
        asp::Int = 0
        glu::Int = 0
        phe::Int = 0
        gly::Int = 0
        his::Int = 0
        ile::Int = 0
        lys::Int = 0
        leu::Int = 0
        met::Int = 0
        asn::Int = 0
        pro::Int = 0
        gln::Int = 0
        arg::Int = 0
        ser::Int = 0
        thr::Int = 0
        val::Int = 0
        trp::Int = 0
        tyr::Int = 0

        for i in eachrow(interface)
                if i[:residue_name] == "ALA"
                        ala += 1
                elseif i[:residue_name] == "CYS"
                        cys += 1
                elseif i[:residue_name] == "ASP"
                        asp += 1
                elseif i[:residue_name] == "GLU"
                        glu += 1
                elseif i[:residue_name] == "PHE"
                        phe += 1
                elseif i[:residue_name] == "GLY"
                        gly += 1
                elseif i[:residue_name] == "HIS"
                        his += 1
                elseif i[:residue_name] == "ILE"
                        ile += 1
                elseif i[:residue_name] == "LYS"
                        lys += 1
                elseif i[:residue_name] == "LEU"
                        leu += 1
                elseif i[:residue_name] == "MET"
                        met += 1
                elseif i[:residue_name] == "ASN"
                        asn += 1
                elseif i[:residue_name] == "PRO"
                        pro += 1
                elseif i[:residue_name] == "GLN"
                        gln += 1
                elseif i[:residue_name] == "ARG"
                        arg += 1
                elseif i[:residue_name] == "SER"
                        ser += 1
                elseif i[:residue_name] == "THR"
                        thr += 1
                elseif i[:residue_name] == "VAL"
                        val += 1
                elseif i[:residue_name] == "TRP"
                        trp += 1
                elseif i[:residue_name] == "TYR"
                        tyr += 1
                end
        end
        s = [ala cys asp  glu phe gly his ile lys leu met asn pro gln arg ser thr val trp tyr]
        return s
end

count_interface_residues(interface::Interface) = count_interface_residues(interface.residues)