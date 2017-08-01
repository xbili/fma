module multiplier_8x8(out_0, in_0, in_1);
input [7:0] in_0, in_1;
output [18:0] out_0;
wire [247:0] wires;
assign wires[0] = in_0[0];
assign wires[1] = in_0[1];
assign wires[2] = in_0[2];
assign wires[3] = in_0[3];
assign wires[4] = in_0[4];
assign wires[5] = in_0[5];
assign wires[6] = in_0[6];
assign wires[7] = in_0[7];
assign wires[8] = in_1[0];
assign wires[9] = in_1[1];
assign wires[10] = in_1[2];
assign wires[11] = in_1[3];
assign wires[12] = in_1[4];
assign wires[13] = in_1[5];
assign wires[14] = in_1[6];
assign wires[15] = in_1[7];
assign out_0[0] = wires[16];
assign out_0[1] = wires[96];
assign out_0[2] = wires[140];
assign out_0[3] = wires[174];
assign out_0[4] = wires[200];
assign out_0[5] = wires[224];
assign out_0[6] = wires[226];
assign out_0[7] = wires[228];
assign out_0[8] = wires[230];
assign out_0[9] = wires[232];
assign out_0[10] = wires[234];
assign out_0[11] = wires[236];
assign out_0[12] = wires[238];
assign out_0[13] = wires[240];
assign out_0[14] = wires[242];
assign out_0[15] = wires[244];
assign out_0[16] = wires[246];
assign out_0[17] = wires[247];
assign out_0[18] = wires[247];
and(wires[16], wires[8], wires[0]);
and(wires[17], wires[9], wires[0]);
and(wires[18], wires[10], wires[0]);
and(wires[19], wires[11], wires[0]);
and(wires[20], wires[12], wires[0]);
and(wires[21], wires[13], wires[0]);
and(wires[22], wires[14], wires[0]);
and(wires[23], wires[15], wires[0]);
not(wires[24], wires[23]);
and(wires[25], wires[8], wires[1]);
and(wires[26], wires[9], wires[1]);
and(wires[27], wires[10], wires[1]);
and(wires[28], wires[11], wires[1]);
and(wires[29], wires[12], wires[1]);
and(wires[30], wires[13], wires[1]);
and(wires[31], wires[14], wires[1]);
and(wires[32], wires[15], wires[1]);
not(wires[33], wires[32]);
and(wires[34], wires[8], wires[2]);
and(wires[35], wires[9], wires[2]);
and(wires[36], wires[10], wires[2]);
and(wires[37], wires[11], wires[2]);
and(wires[38], wires[12], wires[2]);
and(wires[39], wires[13], wires[2]);
and(wires[40], wires[14], wires[2]);
and(wires[41], wires[15], wires[2]);
not(wires[42], wires[41]);
and(wires[43], wires[8], wires[3]);
and(wires[44], wires[9], wires[3]);
and(wires[45], wires[10], wires[3]);
and(wires[46], wires[11], wires[3]);
and(wires[47], wires[12], wires[3]);
and(wires[48], wires[13], wires[3]);
and(wires[49], wires[14], wires[3]);
and(wires[50], wires[15], wires[3]);
not(wires[51], wires[50]);
and(wires[52], wires[8], wires[4]);
and(wires[53], wires[9], wires[4]);
and(wires[54], wires[10], wires[4]);
and(wires[55], wires[11], wires[4]);
and(wires[56], wires[12], wires[4]);
and(wires[57], wires[13], wires[4]);
and(wires[58], wires[14], wires[4]);
and(wires[59], wires[15], wires[4]);
not(wires[60], wires[59]);
and(wires[61], wires[8], wires[5]);
and(wires[62], wires[9], wires[5]);
and(wires[63], wires[10], wires[5]);
and(wires[64], wires[11], wires[5]);
and(wires[65], wires[12], wires[5]);
and(wires[66], wires[13], wires[5]);
and(wires[67], wires[14], wires[5]);
and(wires[68], wires[15], wires[5]);
not(wires[69], wires[68]);
and(wires[70], wires[8], wires[6]);
and(wires[71], wires[9], wires[6]);
and(wires[72], wires[10], wires[6]);
and(wires[73], wires[11], wires[6]);
and(wires[74], wires[12], wires[6]);
and(wires[75], wires[13], wires[6]);
and(wires[76], wires[14], wires[6]);
and(wires[77], wires[15], wires[6]);
not(wires[78], wires[77]);
and(wires[80], wires[8], wires[7]);
not(wires[81], wires[80]);
and(wires[82], wires[9], wires[7]);
not(wires[83], wires[82]);
and(wires[84], wires[10], wires[7]);
not(wires[85], wires[84]);
and(wires[86], wires[11], wires[7]);
not(wires[87], wires[86]);
and(wires[88], wires[12], wires[7]);
not(wires[89], wires[88]);
and(wires[90], wires[13], wires[7]);
not(wires[91], wires[90]);
and(wires[92], wires[14], wires[7]);
not(wires[93], wires[92]);
and(wires[94], wires[15], wires[7]);
half_adder ha_0(wires[96], wires[97], wires[17], wires[25]);
full_adder fa_0(wires[98], wires[99], wires[18], wires[26], wires[34]);
full_adder fa_1(wires[100], wires[101], wires[19], wires[27], wires[35]);
full_adder fa_2(wires[102], wires[103], wires[20], wires[28], wires[36]);
half_adder ha_1(wires[104], wires[105], wires[44], wires[52]);
full_adder fa_3(wires[106], wires[107], wires[21], wires[29], wires[37]);
full_adder fa_4(wires[108], wires[109], wires[45], wires[53], wires[61]);
full_adder fa_5(wires[110], wires[111], wires[22], wires[30], wires[38]);
full_adder fa_6(wires[112], wires[113], wires[46], wires[54], wires[62]);
full_adder fa_7(wires[114], wires[115], wires[24], wires[31], wires[39]);
full_adder fa_8(wires[116], wires[117], wires[47], wires[55], wires[63]);
half_adder ha_2(wires[118], wires[119], wires[71], wires[81]);
full_adder fa_9(wires[120], wires[121], 1'b1, wires[33], wires[40]);
full_adder fa_10(wires[122], wires[123], wires[48], wires[56], wires[64]);
half_adder ha_3(wires[124], wires[125], wires[72], wires[83]);
full_adder fa_11(wires[126], wires[127], wires[42], wires[49], wires[57]);
full_adder fa_12(wires[128], wires[129], wires[65], wires[73], wires[85]);
full_adder fa_13(wires[130], wires[131], wires[51], wires[58], wires[66]);
half_adder ha_4(wires[132], wires[133], wires[74], wires[87]);
full_adder fa_14(wires[134], wires[135], wires[60], wires[67], wires[75]);
full_adder fa_15(wires[136], wires[137], wires[69], wires[76], wires[91]);
half_adder ha_5(wires[138], wires[139], wires[78], wires[93]);
half_adder ha_6(wires[140], wires[141], wires[97], wires[98]);
full_adder fa_16(wires[142], wires[143], wires[99], wires[100], wires[43]);
full_adder fa_17(wires[144], wires[145], wires[101], wires[102], wires[104]);
full_adder fa_18(wires[146], wires[147], wires[103], wires[105], wires[106]);
full_adder fa_19(wires[148], wires[149], wires[107], wires[109], wires[110]);
half_adder ha_7(wires[150], wires[151], wires[112], wires[70]);
full_adder fa_20(wires[152], wires[153], wires[111], wires[113], wires[114]);
half_adder ha_8(wires[154], wires[155], wires[116], wires[118]);
full_adder fa_21(wires[156], wires[157], wires[115], wires[117], wires[119]);
full_adder fa_22(wires[158], wires[159], wires[120], wires[122], wires[124]);
full_adder fa_23(wires[160], wires[161], wires[121], wires[123], wires[125]);
half_adder ha_9(wires[162], wires[163], wires[126], wires[128]);
full_adder fa_24(wires[164], wires[165], wires[127], wires[129], wires[130]);
full_adder fa_25(wires[166], wires[167], wires[131], wires[133], wires[134]);
half_adder ha_10(wires[168], wires[169], wires[135], wires[136]);
half_adder ha_11(wires[170], wires[171], wires[137], wires[138]);
half_adder ha_12(wires[172], wires[173], wires[139], wires[94]);
half_adder ha_13(wires[174], wires[175], wires[141], wires[142]);
half_adder ha_14(wires[176], wires[177], wires[143], wires[144]);
full_adder fa_26(wires[178], wires[179], wires[145], wires[146], wires[108]);
full_adder fa_27(wires[180], wires[181], wires[147], wires[148], wires[150]);
full_adder fa_28(wires[182], wires[183], wires[149], wires[151], wires[152]);
full_adder fa_29(wires[184], wires[185], wires[153], wires[155], wires[156]);
full_adder fa_30(wires[186], wires[187], wires[157], wires[159], wires[160]);
full_adder fa_31(wires[188], wires[189], wires[161], wires[163], wires[164]);
full_adder fa_32(wires[190], wires[191], wires[165], wires[166], wires[89]);
half_adder ha_15(wires[192], wires[193], wires[167], wires[168]);
half_adder ha_16(wires[194], wires[195], wires[169], wires[170]);
half_adder ha_17(wires[196], wires[197], wires[171], wires[172]);
half_adder ha_18(wires[198], wires[199], wires[173], 1'b1);
half_adder ha_19(wires[200], wires[201], wires[175], wires[176]);
half_adder ha_20(wires[202], wires[203], wires[177], wires[178]);
half_adder ha_21(wires[204], wires[205], wires[179], wires[180]);
full_adder fa_33(wires[206], wires[207], wires[181], wires[182], wires[154]);
full_adder fa_34(wires[208], wires[209], wires[183], wires[184], wires[158]);
full_adder fa_35(wires[210], wires[211], wires[185], wires[186], wires[162]);
full_adder fa_36(wires[212], wires[213], wires[187], wires[188], wires[132]);
half_adder ha_22(wires[214], wires[215], wires[189], wires[190]);
half_adder ha_23(wires[216], wires[217], wires[191], wires[192]);
half_adder ha_24(wires[218], wires[219], wires[193], wires[194]);
half_adder ha_25(wires[220], wires[221], wires[195], wires[196]);
half_adder ha_26(wires[222], wires[223], wires[197], wires[198]);
half_adder ha_27(wires[224], wires[225], wires[201], wires[202]);
full_adder fa_37(wires[226], wires[227], wires[203], wires[204], wires[225]);
full_adder fa_38(wires[228], wires[229], wires[205], wires[206], wires[227]);
full_adder fa_39(wires[230], wires[231], wires[207], wires[208], wires[229]);
full_adder fa_40(wires[232], wires[233], wires[209], wires[210], wires[231]);
full_adder fa_41(wires[234], wires[235], wires[211], wires[212], wires[233]);
full_adder fa_42(wires[236], wires[237], wires[213], wires[214], wires[235]);
full_adder fa_43(wires[238], wires[239], wires[215], wires[216], wires[237]);
full_adder fa_44(wires[240], wires[241], wires[217], wires[218], wires[239]);
full_adder fa_45(wires[242], wires[243], wires[219], wires[220], wires[241]);
full_adder fa_46(wires[244], wires[245], wires[221], wires[222], wires[243]);
full_adder fa_47(wires[246], wires[247], wires[223], wires[199], wires[245]);
endmodule