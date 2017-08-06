module fma_4x4(out_0, in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7);
input [3:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
output [11:0] out_0;
wire [287:0] wires;
assign wires[0] = in_0[0];
assign wires[1] = in_0[1];
assign wires[2] = in_0[2];
assign wires[3] = in_0[3];
assign wires[4] = in_1[0];
assign wires[5] = in_1[1];
assign wires[6] = in_1[2];
assign wires[7] = in_1[3];
assign wires[32] = in_2[0];
assign wires[33] = in_2[1];
assign wires[34] = in_2[2];
assign wires[35] = in_2[3];
assign wires[36] = in_3[0];
assign wires[37] = in_3[1];
assign wires[38] = in_3[2];
assign wires[39] = in_3[3];
assign wires[64] = in_4[0];
assign wires[65] = in_4[1];
assign wires[66] = in_4[2];
assign wires[67] = in_4[3];
assign wires[68] = in_5[0];
assign wires[69] = in_5[1];
assign wires[70] = in_5[2];
assign wires[71] = in_5[3];
assign wires[96] = in_6[0];
assign wires[97] = in_6[1];
assign wires[98] = in_6[2];
assign wires[99] = in_6[3];
assign wires[100] = in_7[0];
assign wires[101] = in_7[1];
assign wires[102] = in_7[2];
assign wires[103] = in_7[3];
assign out_0[0] = wires[174];
assign out_0[1] = wires[208];
assign out_0[2] = wires[232];
assign out_0[3] = wires[250];
assign out_0[4] = wires[264];
assign out_0[5] = wires[276];
assign out_0[6] = wires[278];
assign out_0[7] = wires[280];
assign out_0[8] = wires[282];
assign out_0[9] = wires[284];
assign out_0[10] = wires[286];
assign out_0[11] = wires[287];
and(wires[8], wires[4], wires[0]);
and(wires[9], wires[5], wires[0]);
and(wires[10], wires[6], wires[0]);
and(wires[11], wires[7], wires[0]);
not(wires[12], wires[11]);
and(wires[13], wires[4], wires[1]);
and(wires[14], wires[5], wires[1]);
and(wires[15], wires[6], wires[1]);
and(wires[16], wires[7], wires[1]);
not(wires[17], wires[16]);
and(wires[18], wires[4], wires[2]);
and(wires[19], wires[5], wires[2]);
and(wires[20], wires[6], wires[2]);
and(wires[21], wires[7], wires[2]);
not(wires[22], wires[21]);
and(wires[24], wires[4], wires[3]);
not(wires[25], wires[24]);
and(wires[26], wires[5], wires[3]);
not(wires[27], wires[26]);
and(wires[28], wires[6], wires[3]);
not(wires[29], wires[28]);
and(wires[30], wires[7], wires[3]);
and(wires[40], wires[36], wires[32]);
and(wires[41], wires[37], wires[32]);
and(wires[42], wires[38], wires[32]);
and(wires[43], wires[39], wires[32]);
not(wires[44], wires[43]);
and(wires[45], wires[36], wires[33]);
and(wires[46], wires[37], wires[33]);
and(wires[47], wires[38], wires[33]);
and(wires[48], wires[39], wires[33]);
not(wires[49], wires[48]);
and(wires[50], wires[36], wires[34]);
and(wires[51], wires[37], wires[34]);
and(wires[52], wires[38], wires[34]);
and(wires[53], wires[39], wires[34]);
not(wires[54], wires[53]);
and(wires[56], wires[36], wires[35]);
not(wires[57], wires[56]);
and(wires[58], wires[37], wires[35]);
not(wires[59], wires[58]);
and(wires[60], wires[38], wires[35]);
not(wires[61], wires[60]);
and(wires[62], wires[39], wires[35]);
and(wires[72], wires[68], wires[64]);
and(wires[73], wires[69], wires[64]);
and(wires[74], wires[70], wires[64]);
and(wires[75], wires[71], wires[64]);
not(wires[76], wires[75]);
and(wires[77], wires[68], wires[65]);
and(wires[78], wires[69], wires[65]);
and(wires[79], wires[70], wires[65]);
and(wires[80], wires[71], wires[65]);
not(wires[81], wires[80]);
and(wires[82], wires[68], wires[66]);
and(wires[83], wires[69], wires[66]);
and(wires[84], wires[70], wires[66]);
and(wires[85], wires[71], wires[66]);
not(wires[86], wires[85]);
and(wires[88], wires[68], wires[67]);
not(wires[89], wires[88]);
and(wires[90], wires[69], wires[67]);
not(wires[91], wires[90]);
and(wires[92], wires[70], wires[67]);
not(wires[93], wires[92]);
and(wires[94], wires[71], wires[67]);
and(wires[104], wires[100], wires[96]);
and(wires[105], wires[101], wires[96]);
and(wires[106], wires[102], wires[96]);
and(wires[107], wires[103], wires[96]);
not(wires[108], wires[107]);
and(wires[109], wires[100], wires[97]);
and(wires[110], wires[101], wires[97]);
and(wires[111], wires[102], wires[97]);
and(wires[112], wires[103], wires[97]);
not(wires[113], wires[112]);
and(wires[114], wires[100], wires[98]);
and(wires[115], wires[101], wires[98]);
and(wires[116], wires[102], wires[98]);
and(wires[117], wires[103], wires[98]);
not(wires[118], wires[117]);
and(wires[120], wires[100], wires[99]);
not(wires[121], wires[120]);
and(wires[122], wires[101], wires[99]);
not(wires[123], wires[122]);
and(wires[124], wires[102], wires[99]);
not(wires[125], wires[124]);
and(wires[126], wires[103], wires[99]);
full_adder fa_0(wires[128], wires[129], wires[8], wires[40], wires[72]);
full_adder fa_1(wires[130], wires[131], wires[9], wires[13], wires[41]);
full_adder fa_2(wires[132], wires[133], wires[45], wires[73], wires[77]);
half_adder ha_0(wires[134], wires[135], wires[105], wires[109]);
full_adder fa_3(wires[136], wires[137], wires[10], wires[14], wires[18]);
full_adder fa_4(wires[138], wires[139], wires[42], wires[46], wires[50]);
full_adder fa_5(wires[140], wires[141], wires[74], wires[78], wires[82]);
full_adder fa_6(wires[142], wires[143], wires[106], wires[110], wires[114]);
full_adder fa_7(wires[144], wires[145], wires[12], wires[15], wires[19]);
full_adder fa_8(wires[146], wires[147], wires[25], wires[44], wires[47]);
full_adder fa_9(wires[148], wires[149], wires[51], wires[57], wires[76]);
full_adder fa_10(wires[150], wires[151], wires[79], wires[83], wires[89]);
full_adder fa_11(wires[152], wires[153], wires[108], wires[111], wires[115]);
full_adder fa_12(wires[154], wires[155], 1'b1, wires[17], wires[20]);
full_adder fa_13(wires[156], wires[157], wires[27], 1'b1, wires[49]);
full_adder fa_14(wires[158], wires[159], wires[52], wires[59], 1'b1);
full_adder fa_15(wires[160], wires[161], wires[81], wires[84], wires[91]);
full_adder fa_16(wires[162], wires[163], 1'b1, wires[113], wires[116]);
full_adder fa_17(wires[164], wires[165], wires[22], wires[29], wires[54]);
full_adder fa_18(wires[166], wires[167], wires[61], wires[86], wires[93]);
half_adder ha_1(wires[168], wires[169], wires[118], wires[125]);
full_adder fa_19(wires[170], wires[171], wires[30], wires[62], wires[94]);
full_adder fa_20(wires[172], wires[173], 1'b1, 1'b1, 1'b1);
half_adder ha_2(wires[174], wires[175], wires[128], wires[104]);
full_adder fa_21(wires[176], wires[177], wires[129], wires[130], wires[132]);
full_adder fa_22(wires[178], wires[179], wires[131], wires[133], wires[135]);
full_adder fa_23(wires[180], wires[181], wires[136], wires[138], wires[140]);
full_adder fa_24(wires[182], wires[183], wires[137], wires[139], wires[141]);
full_adder fa_25(wires[184], wires[185], wires[143], wires[144], wires[146]);
full_adder fa_26(wires[186], wires[187], wires[148], wires[150], wires[152]);
full_adder fa_27(wires[188], wires[189], wires[145], wires[147], wires[149]);
full_adder fa_28(wires[190], wires[191], wires[151], wires[153], wires[154]);
full_adder fa_29(wires[192], wires[193], wires[156], wires[158], wires[160]);
half_adder ha_3(wires[194], wires[195], wires[162], wires[123]);
full_adder fa_30(wires[196], wires[197], wires[155], wires[157], wires[159]);
full_adder fa_31(wires[198], wires[199], wires[161], wires[163], wires[164]);
half_adder ha_4(wires[200], wires[201], wires[166], wires[168]);
full_adder fa_32(wires[202], wires[203], wires[165], wires[167], wires[169]);
half_adder ha_5(wires[204], wires[205], wires[170], wires[126]);
full_adder fa_33(wires[206], wires[207], wires[171], wires[172], 1'b1);
full_adder fa_34(wires[208], wires[209], wires[175], wires[176], wires[134]);
full_adder fa_35(wires[210], wires[211], wires[177], wires[178], wires[180]);
full_adder fa_36(wires[212], wires[213], wires[179], wires[181], wires[182]);
full_adder fa_37(wires[214], wires[215], wires[184], wires[186], wires[121]);
full_adder fa_38(wires[216], wires[217], wires[183], wires[185], wires[187]);
full_adder fa_39(wires[218], wires[219], wires[188], wires[190], wires[192]);
full_adder fa_40(wires[220], wires[221], wires[189], wires[191], wires[193]);
full_adder fa_41(wires[222], wires[223], wires[195], wires[196], wires[198]);
full_adder fa_42(wires[224], wires[225], wires[197], wires[199], wires[201]);
half_adder ha_6(wires[226], wires[227], wires[202], wires[204]);
full_adder fa_43(wires[228], wires[229], wires[203], wires[205], wires[206]);
half_adder ha_7(wires[230], wires[231], wires[207], wires[173]);
full_adder fa_44(wires[232], wires[233], wires[209], wires[210], wires[142]);
full_adder fa_45(wires[234], wires[235], wires[211], wires[212], wires[214]);
full_adder fa_46(wires[236], wires[237], wires[213], wires[215], wires[216]);
half_adder ha_8(wires[238], wires[239], wires[218], wires[194]);
full_adder fa_47(wires[240], wires[241], wires[217], wires[219], wires[220]);
half_adder ha_9(wires[242], wires[243], wires[222], wires[200]);
full_adder fa_48(wires[244], wires[245], wires[221], wires[223], wires[224]);
full_adder fa_49(wires[246], wires[247], wires[225], wires[227], wires[228]);
half_adder ha_10(wires[248], wires[249], wires[229], wires[230]);
half_adder ha_11(wires[250], wires[251], wires[233], wires[234]);
full_adder fa_50(wires[252], wires[253], wires[235], wires[236], wires[238]);
full_adder fa_51(wires[254], wires[255], wires[237], wires[239], wires[240]);
full_adder fa_52(wires[256], wires[257], wires[241], wires[243], wires[244]);
half_adder ha_12(wires[258], wires[259], wires[245], wires[246]);
half_adder ha_13(wires[260], wires[261], wires[247], wires[248]);
half_adder ha_14(wires[262], wires[263], wires[249], wires[231]);
half_adder ha_15(wires[264], wires[265], wires[251], wires[252]);
full_adder fa_53(wires[266], wires[267], wires[253], wires[254], wires[242]);
full_adder fa_54(wires[268], wires[269], wires[255], wires[256], wires[226]);
half_adder ha_16(wires[270], wires[271], wires[257], wires[258]);
half_adder ha_17(wires[272], wires[273], wires[259], wires[260]);
half_adder ha_18(wires[274], wires[275], wires[261], wires[262]);
half_adder ha_19(wires[276], wires[277], wires[265], wires[266]);
full_adder fa_55(wires[278], wires[279], wires[267], wires[268], wires[277]);
full_adder fa_56(wires[280], wires[281], wires[269], wires[270], wires[279]);
full_adder fa_57(wires[282], wires[283], wires[271], wires[272], wires[281]);
full_adder fa_58(wires[284], wires[285], wires[273], wires[274], wires[283]);
full_adder fa_59(wires[286], wires[287], wires[275], wires[263], wires[285]);
endmodule