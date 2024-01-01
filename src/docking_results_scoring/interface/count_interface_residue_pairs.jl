export count_interface_residue_pairs

function count_interface_residue_pairs(interface::DataFrame)
        s = zeros(Int64,1,210)

        for i in eachrow(interface)
                if i[:part1_residue_name] == "ALA"
                        if i[:residue_name] == "ALA"
                                # ala_ala 
                                s[1,1] += 1
                        elseif i[:residue_name] == "CYS"
                                # ala_cys 
                                s[1,2] += 1
                        elseif i[:residue_name] == "ASP"
                                # ala_asp
                                s[1,3] += 1
                        elseif i[:residue_name] == "GLU"
                                # ala_glu
                                s[1,4] += 1
                        elseif i[:residue_name] == "PHE"
                                # ala_phe 
                                s[1,5] += 1
                        elseif i[:residue_name] == "GLY"
                                # ala_gly
                                s[1,6] += 1
                        elseif i[:residue_name] == "HIS"
                                # ala_his
                                s[1,7] += 1
                        elseif i[:residue_name] == "ILE"
                                # ala_ile
                                s[1,8] += 1
                        elseif i[:residue_name] == "LYS"
                                # ala_lys
                                s[1,9] += 1
                        elseif i[:residue_name] == "LEU"
                                # ala_leu
                                s[1,10] += 1
                        elseif i[:residue_name] == "MET"
                                # ala_met
                                s[1,11] += 1
                        elseif i[:residue_name] == "ASN"
                                # ala_asn
                                s[1,12] += 1
                        elseif i[:residue_name] == "PRO"
                                # ala_pro
                                s[1,13] += 1
                        elseif i[:residue_name] == "GLN"
                                # ala_gln
                                s[1,14] += 1
                        elseif i[:residue_name] == "ARG"
                                # ala_arg
                                s[1,15] += 1
                        elseif i[:residue_name] == "SER"
                                # ala_ser
                                s[1,16] += 1
                        elseif i[:residue_name] == "THR"
                                # ala_thr
                                s[1,17] += 1
                        elseif i[:residue_name] == "VAL"
                                # ala_val
                                s[1,18] += 1
                        elseif i[:residue_name] == "TRP"
                                # ala_trp
                                s[1,19] += 1
                        elseif i[:residue_name] == "TYR"
                                # ala_tyr
                                s[1,20] += 1
                        end

                elseif i[:part1_residue_name] == "CYS"
                        if i[:residue_name] == "ALA"
                                # ala_cys 
                                s[1,2] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_cys
                                s[1,21] += 1
                        elseif i[:residue_name] == "ASP"
                                # cys_asp
                                s[1,22] += 1
                        elseif i[:residue_name] == "GLU"
                                # cys_glu
                                s[1,23] += 1
                        elseif i[:residue_name] == "PHE"
                                # cys_phe
                                s[1,24] += 1
                        elseif i[:residue_name] == "GLY"
                                # cys_gly
                                s[1,25] += 1
                        elseif i[:residue_name] == "HIS"
                                # cys_his
                                s[1,26] += 1
                        elseif i[:residue_name] == "ILE"
                                # cys_ile
                                s[1,27] += 1
                        elseif i[:residue_name] == "LYS"
                                # cys_lys
                                s[1,28] += 1
                        elseif i[:residue_name] == "LEU"
                                # cys_leu
                                s[1,29] += 1
                        elseif i[:residue_name] == "MET"
                                # cys_met
                                s[1,30] += 1
                        elseif i[:residue_name] == "ASN"
                                # cys_asn
                                s[1,31] += 1
                        elseif i[:residue_name] == "PRO"
                                # cys_pro
                                s[1,32] += 1
                        elseif i[:residue_name] == "GLN"
                                # cys_gln
                                s[1,33] += 1
                        elseif i[:residue_name] == "ARG"
                                # cys_arg
                                s[1,34] += 1
                        elseif i[:residue_name] == "SER"
                                # cys_ser
                                s[1,35] += 1
                        elseif i[:residue_name] == "THR"
                                # cys_thr
                                s[1,36] += 1
                        elseif i[:residue_name] == "VAL"
                                # cys_val
                                s[1,37] += 1
                        elseif i[:residue_name] == "TRP"
                                # cys_trp
                                s[1,38] += 1
                        elseif i[:residue_name] == "TYR"
                                # cys_tyr
                                s[1,39] += 1
                        end

                elseif i[:part1_residue_name] == "ASP"
                        if i[:residue_name] == "ALA"
                                # ala_asp
                                s[1,3] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_asp
                                s[1,22] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_asp
                                s[1,40] += 1
                        elseif i[:residue_name] == "GLU"
                                # asp_glu
                                s[1,41] += 1
                        elseif i[:residue_name] == "PHE"
                                # asp_phe
                                s[1,42] += 1
                        elseif i[:residue_name] == "GLY"
                                # asp_gly
                                s[1,43] += 1
                        elseif i[:residue_name] == "HIS"
                                # asp_his
                                s[1,44] += 1
                        elseif i[:residue_name] == "ILE"
                                # asp_ile
                                s[1,45] += 1
                        elseif i[:residue_name] == "LYS"
                                # asp_lys
                                s[1,46] += 1
                        elseif i[:residue_name] == "LEU"
                                # asp_leu
                                s[1,47] += 1
                        elseif i[:residue_name] == "MET"
                                # asp_met
                                s[1,48] += 1
                        elseif i[:residue_name] == "ASN"
                                # asp_asn
                                s[1,49] += 1
                        elseif i[:residue_name] == "PRO"
                                # asp_pro
                                s[1,50] += 1
                        elseif i[:residue_name] == "GLN"
                                # asp_gln
                                s[1,51] += 1
                        elseif i[:residue_name] == "ARG"
                                # asp_arg
                                s[1,52] += 1
                        elseif i[:residue_name] == "SER"
                                # asp_ser
                                s[1,53] += 1
                        elseif i[:residue_name] == "THR"
                                # asp_thr
                                s[1,54] += 1
                        elseif i[:residue_name] == "VAL"
                                # asp_val
                                s[1,55] += 1
                        elseif i[:residue_name] == "TRP"
                                # asp_trp
                                s[1,56] += 1
                        elseif i[:residue_name] == "TYR"
                                # asp_tyr
                                s[1,57] += 1
                        end

                elseif i[:part1_residue_name] == "GLU"
                        if i[:residue_name] == "ALA"
                                # ala_glu
                                s[1,4] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_glu
                                s[1,23] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_glu
                                s[1,41] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_glu
                                s[1,58] += 1
                        elseif i[:residue_name] == "PHE"
                                # glu_phe
                                s[1,59] += 1
                        elseif i[:residue_name] == "GLY"
                                # glu_gly
                                s[1,60] += 1
                        elseif i[:residue_name] == "HIS"
                                # glu_his
                                s[1,61] += 1
                        elseif i[:residue_name] == "ILE"
                                # glu_ile
                                s[1,62] += 1
                        elseif i[:residue_name] == "LYS"
                                # glu_lys
                                s[1,63] += 1
                        elseif i[:residue_name] == "LEU"
                                # glu_leu
                                s[1,64] += 1
                        elseif i[:residue_name] == "MET"
                                # glu_met
                                s[1,65] += 1
                        elseif i[:residue_name] == "ASN"
                                # glu_asn
                                s[1,66] += 1
                        elseif i[:residue_name] == "PRO"
                                # glu_pro
                                s[1,67] += 1
                        elseif i[:residue_name] == "GLN"
                                # glu_gln
                                s[1,68] += 1
                        elseif i[:residue_name] == "ARG"
                                # glu_arg
                                s[1,69] += 1
                        elseif i[:residue_name] == "SER"
                                # glu_ser
                                s[1,70] += 1
                        elseif i[:residue_name] == "THR"
                                # glu_thr
                                s[1,71] += 1
                        elseif i[:residue_name] == "VAL"
                                # glu_val
                                s[1,72] += 1
                        elseif i[:residue_name] == "TRP"
                                # glu_trp
                                s[1,73] += 1
                        elseif i[:residue_name] == "TYR"
                                # glu_tyr
                                s[1,74] += 1
                        end

                elseif i[:part1_residue_name] == "PHE"
                        if i[:residue_name] == "ALA"
                                # ala_phe
                                s[1,5] += 1
                        elseif i[:residue_name] == "CYS"      
                                # cys_phe
                                s[1,24] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_phe
                                s[1,42] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_phe
                                s[1,59] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_phe
                                s[1,75] += 1
                        elseif i[:residue_name] == "GLY"
                                # phe_gly
                                s[1,76] += 1
                        elseif i[:residue_name] == "HIS"
                                # phe_his
                                s[1,77] += 1
                        elseif i[:residue_name] == "ILE"
                                # phe_ile
                                s[1,78] += 1
                        elseif i[:residue_name] == "LYS"
                                # phe_lys
                                s[1,79] += 1
                        elseif i[:residue_name] == "LEU"
                                # phe_leu
                                s[1,80] += 1
                        elseif i[:residue_name] == "MET"
                                # phe_met
                                s[1,81] += 1
                        elseif i[:residue_name] == "ASN"
                                # phe_asn
                                s[1,82] += 1
                        elseif i[:residue_name] == "PRO"
                                # phe_pro
                                s[1,83] += 1
                        elseif i[:residue_name] == "GLN"
                                # phe_gln
                                s[1,84] += 1
                        elseif i[:residue_name] == "ARG"
                                # phe_arg
                                s[1,85] += 1
                        elseif i[:residue_name] == "SER"
                                # phe_ser
                                s[1,86] += 1
                        elseif i[:residue_name] == "THR"
                                # phe_thr
                                s[1,87] += 1
                        elseif i[:residue_name] == "VAL"
                                # phe_val
                                s[1,88] += 1
                        elseif i[:residue_name] == "TRP"
                                # phe_trp
                                s[1,89] += 1
                        elseif i[:residue_name] == "TYR"
                                # phe_tyr
                                s[1,90] += 1
                        end

                elseif i[:part1_residue_name] == "GLY"
                        if i[:residue_name] == "ALA"
                                # ala_gly
                                s[1,6] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_gly
                                s[1,25] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_gly
                                s[1,43] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_gly
                                s[1,60] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_gly
                                s[1,76] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_gly
                                s[1,91] += 1
                        elseif i[:residue_name] == "HIS"
                                # gly_his
                                s[1,92] += 1
                        elseif i[:residue_name] == "ILE"
                                # gly_ile
                                s[1,93] += 1
                        elseif i[:residue_name] == "LYS"
                                # gly_lys
                                s[1,94] += 1
                        elseif i[:residue_name] == "LEU"
                                # gly_leu
                                s[1,95] += 1
                        elseif i[:residue_name] == "MET"
                                # gly_met
                                s[1,96] += 1
                        elseif i[:residue_name] == "ASN"
                                # gly_asn
                                s[1,97] += 1
                        elseif i[:residue_name] == "PRO"
                                # gly_pro
                                s[1,98] += 1
                        elseif i[:residue_name] == "GLN"
                                # gly_gln
                                s[1,99] += 1
                        elseif i[:residue_name] == "ARG"
                                # gly_arg
                                s[1,100] += 1
                        elseif i[:residue_name] == "SER"
                                # gly_ser
                                s[1,101] += 1
                        elseif i[:residue_name] == "THR"
                                # gly_thr
                                s[1,102] += 1
                        elseif i[:residue_name] == "VAL"
                                # gly_val
                                s[1,103] += 1
                        elseif i[:residue_name] == "TRP"
                                # gly_trp
                                s[1,104] += 1
                        elseif i[:residue_name] == "TYR"
                                # gly_tyr
                                s[1,105] += 1
                        end

                elseif i[:part1_residue_name] == "HIS"
                        if i[:residue_name] == "ALA"
                                # ala_his
                                s[1,7] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_his
                                s[1,26] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_his
                                s[1,44] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_his
                                s[1,61] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_his
                                s[1,77] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_his
                                s[1,92] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_his
                                s[1,106] += 1
                        elseif i[:residue_name] == "ILE"
                                # his_ile
                                s[1,107] += 1
                        elseif i[:residue_name] == "LYS"
                                # his_lys
                                s[1,108] += 1
                        elseif i[:residue_name] == "LEU"
                                # his_leu
                                s[1,109] += 1
                        elseif i[:residue_name] == "MET"
                                # his_met
                                s[1,110] += 1
                        elseif i[:residue_name] == "ASN"
                                # his_asn
                                s[1,111] += 1
                        elseif i[:residue_name] == "PRO"
                                # his_pro
                                s[1,112] += 1
                        elseif i[:residue_name] == "GLN"
                                # his_gln
                                s[1,113] += 1
                        elseif i[:residue_name] == "ARG"
                                # his_arg
                                s[1,114] += 1
                        elseif i[:residue_name] == "SER"
                                # his_ser
                                s[1,115] += 1
                        elseif i[:residue_name] == "THR"
                                # his_thr
                                s[1,116] += 1
                        elseif i[:residue_name] == "VAL"
                                # his_val
                                s[1,117] += 1
                        elseif i[:residue_name] == "TRP"
                                # his_trp
                                s[1,118] += 1
                        elseif i[:residue_name] == "TYR"
                                # his_tyr
                                s[1,119] += 1
                        end

                elseif i[:part1_residue_name] == "ILE"
                        if i[:residue_name] == "ALA"
                                # ala_ile
                                s[1,8] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ile
                                s[1,27] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ile
                                s[1,45] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ile
                                s[1,62] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ile
                                s[1,78] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ile
                                s[1,93] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ile
                                s[1,107] += 1 
                        elseif i[:residue_name] == "ILE"
                                # ile_ile
                                s[1,120] += 1
                        elseif i[:residue_name] == "LYS"
                                # ile_lys
                                s[1,121] += 1
                        elseif i[:residue_name] == "LEU"
                                # ile_leu
                                s[1,122] += 1
                        elseif i[:residue_name] == "MET"
                                # ile_met
                                s[1,123] += 1
                        elseif i[:residue_name] == "ASN"
                                # ile_asn
                                s[1,124] += 1
                        elseif i[:residue_name] == "PRO"
                                # ile_pro
                                s[1,125] += 1
                        elseif i[:residue_name] == "GLN"
                                # ile_gln
                                s[1,126] += 1
                        elseif i[:residue_name] == "ARG"
                                # ile_arg
                                s[1,127] += 1
                        elseif i[:residue_name] == "SER"
                                # ile_ser
                                s[1,128] += 1
                        elseif i[:residue_name] == "THR"
                                # ile_thr
                                s[1,129] += 1
                        elseif i[:residue_name] == "VAL"
                                # ile_val
                                s[1,130] += 1
                        elseif i[:residue_name] == "TRP"
                                # ile_trp
                                s[1,131] += 1
                        elseif i[:residue_name] == "TYR"
                                # ile_tyr
                                s[1,132] += 1
                        end

                elseif i[:part1_residue_name] == "LYS"
                        if i[:residue_name] == "ALA"
                                # ala_lys
                                s[1,9] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_lys
                                s[1,28] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_lys
                                s[1,46] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_lys
                                s[1,63] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_lys
                                s[1,79] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_lys
                                s[1,94] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_lys
                                s[1,108] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_lys
                                s[1,121] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_lys
                                s[1,133] += 1
                        elseif i[:residue_name] == "LEU"
                                # lys_leu
                                s[1,134] += 1
                        elseif i[:residue_name] == "MET"
                                # lys_met
                                s[1,135] += 1
                        elseif i[:residue_name] == "ASN"
                                # lys_asn
                                s[1,136] += 1
                        elseif i[:residue_name] == "PRO"
                                # lys_pro
                                s[1,137] += 1
                        elseif i[:residue_name] == "GLN"
                                # lys_gln
                                s[1,138] += 1
                        elseif i[:residue_name] == "ARG"
                                # lys_arg
                                s[1,139] += 1
                        elseif i[:residue_name] == "SER"
                                # lys_ser
                                s[1,140] += 1
                        elseif i[:residue_name] == "THR"
                                # lys_thr
                                s[1,141] += 1
                        elseif i[:residue_name] == "VAL"
                                # lys_val
                                s[1,142] += 1
                        elseif i[:residue_name] == "TRP"
                                # lys_trp
                                s[1,143] += 1
                        elseif i[:residue_name] == "TYR"
                                # lys_tyr
                                s[1,144] += 1
                        end

                elseif i[:part1_residue_name] == "LEU"
                        if i[:residue_name] == "ALA"
                                # ala_leu
                                s[1,10] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_leu
                                s[1,29] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_leu
                                s[1,47] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_leu
                                s[1,64] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_leu
                                s[1,80] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_leu
                                s[1,95] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_leu
                                s[1,109] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_leu
                                s[1,122] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_leu
                                s[1,134] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_leu
                                s[1,145] += 1
                        elseif i[:residue_name] == "MET"
                                # leu_met
                                s[1,146] += 1
                        elseif i[:residue_name] == "ASN"
                                # leu_asn
                                s[1,147] += 1
                        elseif i[:residue_name] == "PRO"
                                # leu_pro
                                s[1,148] += 1
                        elseif i[:residue_name] == "GLN"
                                # leu_gln
                                s[1,149] += 1
                        elseif i[:residue_name] == "ARG"
                                # leu_arg
                                s[1,150] += 1
                        elseif i[:residue_name] == "SER"
                                # leu_ser
                                s[1,151] += 1
                        elseif i[:residue_name] == "THR"
                                # leu_thr
                                s[1,152] += 1
                        elseif i[:residue_name] == "VAL"
                                # leu_val
                                s[1,153] += 1
                        elseif i[:residue_name] == "TRP"
                                # leu_trp
                                s[1,154] += 1
                        elseif i[:residue_name] == "TYR"
                                # leu_tyr
                                s[1,155] += 1
                        end

                elseif i[:part1_residue_name] == "MET"
                        if i[:residue_name] == "ALA"
                                # ala_met
                                s[1,11] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_met
                                s[1,30] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_met
                                s[1,48] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_met
                                s[1,65] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_met
                                s[1,81] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_met
                                s[1,96] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_met
                                s[1,110] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_met
                                s[1,123] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_met
                                s[1,135] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_met
                                s[1,146] += 1
                        elseif i[:residue_name] == "MET"
                                # met_met
                                s[1,156] += 1
                        elseif i[:residue_name] == "ASN"
                                # met_asn
                                s[1,157] += 1
                        elseif i[:residue_name] == "PRO"
                                # met_pro
                                s[1,158] += 1
                        elseif i[:residue_name] == "GLN"
                                # met_gln
                                s[1,159] += 1
                        elseif i[:residue_name] == "ARG"
                                # met_arg
                                s[1,160] += 1
                        elseif i[:residue_name] == "SER"
                                # met_ser
                                s[1,161] += 1
                        elseif i[:residue_name] == "THR"
                                # met_thr
                                s[1,162] += 1
                        elseif i[:residue_name] == "VAL"
                                # met_val
                                s[1,163] += 1
                        elseif i[:residue_name] == "TRP"
                                # met_trp
                                s[1,164] += 1
                        elseif i[:residue_name] == "TYR"
                                # met_tyr
                                s[1,165] += 1
                        end

                elseif i[:part1_residue_name] == "ASN"
                        if i[:residue_name] == "ALA"
                                # ala_asn
                                s[1,12] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_asn
                                s[1,31] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_asn
                                s[1,49] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_asn
                                s[1,66] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_asn
                                s[1,82] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_asn
                                s[1,97] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_asn
                                s[1,111] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_asn
                                s[1,124] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_asn
                                s[1,136] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_asn
                                s[1,147] += 1
                        elseif i[:residue_name] == "MET"
                                # met_asn
                                s[1,157] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_asn
                                s[1,166] += 1
                        elseif i[:residue_name] == "PRO"
                                # asn_pro
                                s[1,167] += 1
                        elseif i[:residue_name] == "GLN"
                                # asn_gln
                                s[1,168] += 1
                        elseif i[:residue_name] == "ARG"
                                # asn_arg
                                s[1,169] += 1
                        elseif i[:residue_name] == "SER"
                                # asn_ser
                                s[1,170] += 1
                        elseif i[:residue_name] == "THR"
                                # asn_thr
                                s[1,171] += 1
                        elseif i[:residue_name] == "VAL"
                                # asn_val
                                s[1,172] += 1
                        elseif i[:residue_name] == "TRP"
                                # asn_trp
                                s[1,173] += 1
                        elseif i[:residue_name] == "TYR"
                                # asn_tyr
                                s[1,174] += 1
                        end

                elseif i[:part1_residue_name] == "PRO"
                        if i[:residue_name] == "ALA"
                                # ala_pro
                                s[1,13] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_pro
                                s[1,32] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_pro
                                s[1,50] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_pro
                                s[1,67] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_pro
                                s[1,83] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_pro
                                s[1,98] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_pro
                                s[1,112] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_pro
                                s[1,125] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_pro
                                s[1,137] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_pro
                                s[1,148] += 1
                        elseif i[:residue_name] == "MET"
                                # met_pro
                                s[1,158] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_pro
                                s[1,167] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_pro
                                s[1,175] += 1
                        elseif i[:residue_name] == "GLN"
                                # pro_gln
                                s[1,176] += 1
                        elseif i[:residue_name] == "ARG"
                                # pro_arg
                                s[1,177] += 1
                        elseif i[:residue_name] == "SER"
                                # pro_ser
                                s[1,178] += 1
                        elseif i[:residue_name] == "THR"
                                # pro_thr
                                s[1,179] += 1
                        elseif i[:residue_name] == "VAL"
                                # pro_val
                                s[1,180] += 1
                        elseif i[:residue_name] == "TRP"
                                # pro_trp
                                s[1,181] += 1
                        elseif i[:residue_name] == "TYR"
                                # pro_tyr
                                s[1,182] += 1
                        end

                elseif i[:part1_residue_name] == "GLN"
                        if i[:residue_name] == "ALA"
                                # ala_gln
                                s[1,14] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_gln
                                s[1,33] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_gln
                                s[1,51] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_gln
                                s[1,68] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_gln
                                s[1,84] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_gln
                                s[1,99] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_gln
                                s[1,113] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_gln
                                s[1,126] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_gln
                                s[1,138] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_gln
                                s[1,149] += 1
                        elseif i[:residue_name] == "MET"
                                # met_gln
                                s[1,159] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_gln
                                s[1,168] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_gln
                                s[1,176] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_gln
                                s[1,183] += 1
                        elseif i[:residue_name] == "ARG"
                                # gln_arg
                                s[1,184] += 1
                        elseif i[:residue_name] == "SER"
                                # gln_ser
                                s[1,185] += 1
                        elseif i[:residue_name] == "THR"
                                # gln_thr
                                s[1,186] += 1
                        elseif i[:residue_name] == "VAL"
                                # gln_val
                                s[1,187] += 1
                        elseif i[:residue_name] == "TRP"
                                # gln_trp
                                s[1,188] += 1
                        elseif i[:residue_name] == "TYR"
                                # gln_tyr
                                s[1,189] += 1
                        end

                elseif i[:part1_residue_name] == "ARG"
                        if i[:residue_name] == "ALA"
                                # ala_arg
                                s[1,15] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_arg
                                s[1,34] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_arg
                                s[1,52] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_arg
                                s[1,69] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_arg
                                s[1,85] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_arg
                                s[1,100] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_arg
                                s[1,114] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_arg
                                s[1,127] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_arg
                                s[1,139] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_arg
                                s[1,150] += 1
                        elseif i[:residue_name] == "MET"
                                # met_arg
                                s[1,160] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_arg
                                s[1,169] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_arg
                                s[1,177] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_arg
                                s[1,184] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_arg
                                s[1,190] += 1
                        elseif i[:residue_name] == "SER"
                                # arg_ser
                                s[1,191] += 1
                        elseif i[:residue_name] == "THR"
                                # arg_thr
                                s[1,192] += 1
                        elseif i[:residue_name] == "VAL"
                                # arg_val
                                s[1,193] += 1
                        elseif i[:residue_name] == "TRP"
                                # arg_trp
                                s[1,194] += 1
                        elseif i[:residue_name] == "TYR"
                                # arg_tyr
                                s[1,195] += 1
                        end

                elseif i[:part1_residue_name] == "SER"
                        if i[:residue_name] == "ALA"
                                # ala_ser
                                s[1,16] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_ser
                                s[1,35] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_ser
                                s[1,53] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_ser
                                s[1,70] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_ser
                                s[1,86] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_ser
                                s[1,101] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_ser
                                s[1,115] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_ser
                                s[1,128] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_ser
                                s[1,140] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_ser
                                s[1,151] += 1
                        elseif i[:residue_name] == "MET"
                                # met_ser
                                s[1,161] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_ser
                                s[1,170] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_ser
                                s[1,178] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_ser
                                s[1,185] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_ser
                                s[1,191] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_ser
                                s[1,196] += 1
                        elseif i[:residue_name] == "THR"
                                # ser_thr
                                s[1,197] += 1
                        elseif i[:residue_name] == "VAL"
                                # ser_val
                                s[1,198] += 1
                        elseif i[:residue_name] == "TRP"
                                # ser_trp
                                s[1,199] += 1
                        elseif i[:residue_name] == "TYR"
                                # ser_tyr
                                s[1,200] += 1
                        end

                elseif i[:part1_residue_name] == "THR"
                        if i[:residue_name] == "ALA"
                                # ala_thr
                                s[1,17] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_thr
                                s[1,36] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_thr
                                s[1,54] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_thr
                                s[1,71] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_thr
                                s[1,87] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_thr
                                s[1,102] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_thr
                                s[1,116] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_thr
                                s[1,129] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_thr
                                s[1,141] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_thr
                                s[1,152] += 1
                        elseif i[:residue_name] == "MET"
                                # met_thr
                                s[1,162] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_thr
                                s[1,171] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_thr
                                s[1,179] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_thr
                                s[1,186] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_thr
                                s[1,192] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_thr
                                s[1,197] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_thr
                                s[1,201] += 1
                        elseif i[:residue_name] == "VAL"
                                # thr_val
                                s[1,202] += 1
                        elseif i[:residue_name] == "TRP"
                                # thr_trp
                                s[1,203] += 1
                        elseif i[:residue_name] == "TYR"
                                # thr_tyr
                                s[1,204] += 1
                        end

                elseif i[:part1_residue_name] == "VAL" 
                        if i[:residue_name] == "ALA"
                                # ala_val
                                s[1,18] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_val
                                s[1,37] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_val
                                s[1,55] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_val
                                s[1,72] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_val
                                s[1,88] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_val
                                s[1,103] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_val
                                s[1,117] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_val
                                s[1,130] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_val
                                s[1,142] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_val
                                s[1,153] += 1
                        elseif i[:residue_name] == "MET"
                                # met_val
                                s[1,163] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_val
                                s[1,172] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_val
                                s[1,180] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_val
                                s[1,187] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_val
                                s[1,193] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_val
                                s[1,198] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_val
                                s[1,202] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_val
                                s[1,205] += 1
                        elseif i[:residue_name] == "TRP"
                                # val_trp
                                s[1,206] += 1
                        elseif i[:residue_name] == "TYR"
                                # val_tyr
                                s[1,207] += 1
                        end

                elseif i[:part1_residue_name] == "TRP"
                        if i[:residue_name] == "ALA"
                                # ala_trp
                                s[1,19] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_trp
                                s[1,38] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_trp
                                s[1,56] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_trp
                                s[1,73] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_trp
                                s[1,89] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_trp
                                s[1,104] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_trp
                                s[1,118] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_trp
                                s[1,131] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_trp
                                s[1,143] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_trp
                                s[1,154] += 1
                        elseif i[:residue_name] == "MET"
                                # met_trp
                                s[1,164] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_trp
                                s[1,173] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_trp
                                s[1,181] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_trp
                                s[1,188] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_trp
                                s[1,194] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_trp
                                s[1,199] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_trp
                                s[1,203] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_trp
                                s[1,206] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_trp
                                s[1,208] += 1
                        elseif i[:residue_name] == "TYR"
                                # trp_tyr
                                s[1,209] += 1
                        end

                elseif i[:part1_residue_name] == "TYR"
                        if i[:residue_name] == "ALA"
                                # ala_tyr
                                s[1,20] += 1
                        elseif i[:residue_name] == "CYS"
                                # cys_tyr
                                s[1,39] += 1
                        elseif i[:residue_name] == "ASP"
                                # asp_tyr
                                s[1,57] += 1
                        elseif i[:residue_name] == "GLU"
                                # glu_tyr
                                s[1,74] += 1
                        elseif i[:residue_name] == "PHE"
                                # phe_tyr
                                s[1,90] += 1
                        elseif i[:residue_name] == "GLY"
                                # gly_tyr
                                s[1,105] += 1
                        elseif i[:residue_name] == "HIS"
                                # his_tyr
                                s[1,119] += 1
                        elseif i[:residue_name] == "ILE"
                                # ile_tyr
                                s[1,132] += 1
                        elseif i[:residue_name] == "LYS"
                                # lys_tyr
                                s[1,144] += 1
                        elseif i[:residue_name] == "LEU"
                                # leu_tyr
                                s[1,155] += 1
                        elseif i[:residue_name] == "MET"
                                # met_tyr
                                s[1,165] += 1
                        elseif i[:residue_name] == "ASN"
                                # asn_tyr
                                s[1,174] += 1
                        elseif i[:residue_name] == "PRO"
                                # pro_tyr
                                s[1,182] += 1
                        elseif i[:residue_name] == "GLN"
                                # gln_tyr
                                s[1,189] += 1
                        elseif i[:residue_name] == "ARG"
                                # arg_tyr
                                s[1,195] += 1
                        elseif i[:residue_name] == "SER"
                                # ser_tyr
                                s[1,200] += 1
                        elseif i[:residue_name] == "THR"
                                # thr_tyr
                                s[1,204] += 1
                        elseif i[:residue_name] == "VAL"
                                # val_tyr
                                s[1,207] += 1
                        elseif i[:residue_name] == "TRP"
                                # trp_tyr
                                s[1,209] += 1
                        elseif i[:residue_name] == "TYR"
                                # tyr_tyr
                                s[1,210] += 1
                        end
                end
        end
        return s
end


