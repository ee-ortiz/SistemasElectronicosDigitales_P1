/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniandes.edu.co
//# 
//# This program is free software: you can redistribute it and/or modify
//# it under the terms of the GNU General Public License as published by
//# the Free Software Foundation, version 3 of the License.
//#
//# This program is distributed in the hope that it will be useful,
//# but WITHOUT ANY WARRANTY; without even the implied warranty of
//# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//# GNU General Public License for more details.
//#
//# You should have received a copy of the GNU General Public License
//# along with this program.  If not, see <http://www.gnu.org/licenses/>
//####################################################################*/
//=======================================================
//  MODULE Definition
//=======================================================
module CC_COMPARATOR (
//////////// OUTPUTS //////////
	CC_COMPARATOR_greaterthan_Out,
	CC_COMPARATOR_lessthan_Out,
	CC_COMPARATOR_equal_Out,
//////////// INPUTS //////////
	CC_COMPARATOR_dataA_InBUS,
	CC_COMPARATOR_dataB_InBUS
);
//=======================================================
//  PARAMETER declarations
//=======================================================
parameter NUMBER_DATAWIDTH = 8;
//=======================================================
//  PORT declarations
//=======================================================
output 	CC_COMPARATOR_greaterthan_Out;
output 	CC_COMPARATOR_lessthan_Out;
output 	CC_COMPARATOR_equal_Out;
input 	[NUMBER_DATAWIDTH-1:0] CC_COMPARATOR_dataA_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_COMPARATOR_dataB_InBUS;
//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================
//STRUCTURAL
CC_GREATERTHAN CC_GREATERTHAN_u0 (
// port map - connection between master ports and signals/registers   
	.CC_GREATERTHAN_greaterthan_Out(CC_COMPARATOR_greaterthan_Out),
	.CC_GREATERTHAN_dataA_InBUS(CC_COMPARATOR_dataA_InBUS),
	.CC_GREATERTHAN_dataB_InBUS(CC_COMPARATOR_dataB_InBUS)
);
CC_LESSTHAN CC_LESSTHAN_u0 (
// port map - connection between master ports and signals/registers   
	.CC_LESSTHAN_lessthan_Out(CC_COMPARATOR_lessthan_Out),
	.CC_LESSTHAN_dataA_InBUS(CC_COMPARATOR_dataA_InBUS),
	.CC_LESSTHAN_dataB_InBUS(CC_COMPARATOR_dataB_InBUS)
);
CC_EQUAL CC_EQUAL_u0 (
// port map - connection between master ports and signals/registers   
	.CC_EQUAL_equal_Out(CC_COMPARATOR_equal_Out),
	.CC_EQUAL_dataA_InBUS(CC_COMPARATOR_dataA_InBUS),
	.CC_EQUAL_dataB_InBUS(CC_COMPARATOR_dataB_InBUS)
);
endmodule

