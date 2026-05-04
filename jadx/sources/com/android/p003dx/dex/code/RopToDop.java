package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.Insn;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.Rops;
import com.android.p003dx.rop.code.ThrowingCstInsn;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class RopToDop {
    private static final HashMap<Rop, Dop> MAP;

    private RopToDop() {
    }

    static {
        HashMap<Rop, Dop> map = new HashMap<>(400);
        MAP = map;
        map.put(Rops.NOP, Dops.NOP);
        Rop rop = Rops.MOVE_INT;
        Dop dop = Dops.MOVE;
        map.put(rop, dop);
        Rop rop2 = Rops.MOVE_LONG;
        Dop dop2 = Dops.MOVE_WIDE;
        map.put(rop2, dop2);
        map.put(Rops.MOVE_FLOAT, dop);
        map.put(Rops.MOVE_DOUBLE, dop2);
        Rop rop3 = Rops.MOVE_OBJECT;
        Dop dop3 = Dops.MOVE_OBJECT;
        map.put(rop3, dop3);
        map.put(Rops.MOVE_PARAM_INT, dop);
        map.put(Rops.MOVE_PARAM_LONG, dop2);
        map.put(Rops.MOVE_PARAM_FLOAT, dop);
        map.put(Rops.MOVE_PARAM_DOUBLE, dop2);
        map.put(Rops.MOVE_PARAM_OBJECT, dop3);
        Rop rop4 = Rops.CONST_INT;
        Dop dop4 = Dops.CONST_4;
        map.put(rop4, dop4);
        Rop rop5 = Rops.CONST_LONG;
        Dop dop5 = Dops.CONST_WIDE_16;
        map.put(rop5, dop5);
        map.put(Rops.CONST_FLOAT, dop4);
        map.put(Rops.CONST_DOUBLE, dop5);
        map.put(Rops.CONST_OBJECT_NOTHROW, dop4);
        map.put(Rops.GOTO, Dops.GOTO);
        Rop rop6 = Rops.IF_EQZ_INT;
        Dop dop6 = Dops.IF_EQZ;
        map.put(rop6, dop6);
        Rop rop7 = Rops.IF_NEZ_INT;
        Dop dop7 = Dops.IF_NEZ;
        map.put(rop7, dop7);
        map.put(Rops.IF_LTZ_INT, Dops.IF_LTZ);
        map.put(Rops.IF_GEZ_INT, Dops.IF_GEZ);
        map.put(Rops.IF_LEZ_INT, Dops.IF_LEZ);
        map.put(Rops.IF_GTZ_INT, Dops.IF_GTZ);
        map.put(Rops.IF_EQZ_OBJECT, dop6);
        map.put(Rops.IF_NEZ_OBJECT, dop7);
        Rop rop8 = Rops.IF_EQ_INT;
        Dop dop8 = Dops.IF_EQ;
        map.put(rop8, dop8);
        Rop rop9 = Rops.IF_NE_INT;
        Dop dop9 = Dops.IF_NE;
        map.put(rop9, dop9);
        map.put(Rops.IF_LT_INT, Dops.IF_LT);
        map.put(Rops.IF_GE_INT, Dops.IF_GE);
        map.put(Rops.IF_LE_INT, Dops.IF_LE);
        map.put(Rops.IF_GT_INT, Dops.IF_GT);
        map.put(Rops.IF_EQ_OBJECT, dop8);
        map.put(Rops.IF_NE_OBJECT, dop9);
        map.put(Rops.SWITCH, Dops.SPARSE_SWITCH);
        map.put(Rops.ADD_INT, Dops.ADD_INT_2ADDR);
        map.put(Rops.ADD_LONG, Dops.ADD_LONG_2ADDR);
        map.put(Rops.ADD_FLOAT, Dops.ADD_FLOAT_2ADDR);
        map.put(Rops.ADD_DOUBLE, Dops.ADD_DOUBLE_2ADDR);
        map.put(Rops.SUB_INT, Dops.SUB_INT_2ADDR);
        map.put(Rops.SUB_LONG, Dops.SUB_LONG_2ADDR);
        map.put(Rops.SUB_FLOAT, Dops.SUB_FLOAT_2ADDR);
        map.put(Rops.SUB_DOUBLE, Dops.SUB_DOUBLE_2ADDR);
        map.put(Rops.MUL_INT, Dops.MUL_INT_2ADDR);
        map.put(Rops.MUL_LONG, Dops.MUL_LONG_2ADDR);
        map.put(Rops.MUL_FLOAT, Dops.MUL_FLOAT_2ADDR);
        map.put(Rops.MUL_DOUBLE, Dops.MUL_DOUBLE_2ADDR);
        map.put(Rops.DIV_INT, Dops.DIV_INT_2ADDR);
        map.put(Rops.DIV_LONG, Dops.DIV_LONG_2ADDR);
        map.put(Rops.DIV_FLOAT, Dops.DIV_FLOAT_2ADDR);
        map.put(Rops.DIV_DOUBLE, Dops.DIV_DOUBLE_2ADDR);
        map.put(Rops.REM_INT, Dops.REM_INT_2ADDR);
        map.put(Rops.REM_LONG, Dops.REM_LONG_2ADDR);
        map.put(Rops.REM_FLOAT, Dops.REM_FLOAT_2ADDR);
        map.put(Rops.REM_DOUBLE, Dops.REM_DOUBLE_2ADDR);
        map.put(Rops.NEG_INT, Dops.NEG_INT);
        map.put(Rops.NEG_LONG, Dops.NEG_LONG);
        map.put(Rops.NEG_FLOAT, Dops.NEG_FLOAT);
        map.put(Rops.NEG_DOUBLE, Dops.NEG_DOUBLE);
        map.put(Rops.AND_INT, Dops.AND_INT_2ADDR);
        map.put(Rops.AND_LONG, Dops.AND_LONG_2ADDR);
        map.put(Rops.OR_INT, Dops.OR_INT_2ADDR);
        map.put(Rops.OR_LONG, Dops.OR_LONG_2ADDR);
        map.put(Rops.XOR_INT, Dops.XOR_INT_2ADDR);
        map.put(Rops.XOR_LONG, Dops.XOR_LONG_2ADDR);
        map.put(Rops.SHL_INT, Dops.SHL_INT_2ADDR);
        map.put(Rops.SHL_LONG, Dops.SHL_LONG_2ADDR);
        map.put(Rops.SHR_INT, Dops.SHR_INT_2ADDR);
        map.put(Rops.SHR_LONG, Dops.SHR_LONG_2ADDR);
        map.put(Rops.USHR_INT, Dops.USHR_INT_2ADDR);
        map.put(Rops.USHR_LONG, Dops.USHR_LONG_2ADDR);
        map.put(Rops.NOT_INT, Dops.NOT_INT);
        map.put(Rops.NOT_LONG, Dops.NOT_LONG);
        map.put(Rops.ADD_CONST_INT, Dops.ADD_INT_LIT8);
        map.put(Rops.SUB_CONST_INT, Dops.RSUB_INT_LIT8);
        map.put(Rops.MUL_CONST_INT, Dops.MUL_INT_LIT8);
        map.put(Rops.DIV_CONST_INT, Dops.DIV_INT_LIT8);
        map.put(Rops.REM_CONST_INT, Dops.REM_INT_LIT8);
        map.put(Rops.AND_CONST_INT, Dops.AND_INT_LIT8);
        map.put(Rops.OR_CONST_INT, Dops.OR_INT_LIT8);
        map.put(Rops.XOR_CONST_INT, Dops.XOR_INT_LIT8);
        map.put(Rops.SHL_CONST_INT, Dops.SHL_INT_LIT8);
        map.put(Rops.SHR_CONST_INT, Dops.SHR_INT_LIT8);
        map.put(Rops.USHR_CONST_INT, Dops.USHR_INT_LIT8);
        map.put(Rops.CMPL_LONG, Dops.CMP_LONG);
        map.put(Rops.CMPL_FLOAT, Dops.CMPL_FLOAT);
        map.put(Rops.CMPL_DOUBLE, Dops.CMPL_DOUBLE);
        map.put(Rops.CMPG_FLOAT, Dops.CMPG_FLOAT);
        map.put(Rops.CMPG_DOUBLE, Dops.CMPG_DOUBLE);
        map.put(Rops.CONV_L2I, Dops.LONG_TO_INT);
        map.put(Rops.CONV_F2I, Dops.FLOAT_TO_INT);
        map.put(Rops.CONV_D2I, Dops.DOUBLE_TO_INT);
        map.put(Rops.CONV_I2L, Dops.INT_TO_LONG);
        map.put(Rops.CONV_F2L, Dops.FLOAT_TO_LONG);
        map.put(Rops.CONV_D2L, Dops.DOUBLE_TO_LONG);
        map.put(Rops.CONV_I2F, Dops.INT_TO_FLOAT);
        map.put(Rops.CONV_L2F, Dops.LONG_TO_FLOAT);
        map.put(Rops.CONV_D2F, Dops.DOUBLE_TO_FLOAT);
        map.put(Rops.CONV_I2D, Dops.INT_TO_DOUBLE);
        map.put(Rops.CONV_L2D, Dops.LONG_TO_DOUBLE);
        map.put(Rops.CONV_F2D, Dops.FLOAT_TO_DOUBLE);
        map.put(Rops.TO_BYTE, Dops.INT_TO_BYTE);
        map.put(Rops.TO_CHAR, Dops.INT_TO_CHAR);
        map.put(Rops.TO_SHORT, Dops.INT_TO_SHORT);
        map.put(Rops.RETURN_VOID, Dops.RETURN_VOID);
        Rop rop10 = Rops.RETURN_INT;
        Dop dop10 = Dops.RETURN;
        map.put(rop10, dop10);
        Rop rop11 = Rops.RETURN_LONG;
        Dop dop11 = Dops.RETURN_WIDE;
        map.put(rop11, dop11);
        map.put(Rops.RETURN_FLOAT, dop10);
        map.put(Rops.RETURN_DOUBLE, dop11);
        map.put(Rops.RETURN_OBJECT, Dops.RETURN_OBJECT);
        map.put(Rops.ARRAY_LENGTH, Dops.ARRAY_LENGTH);
        map.put(Rops.THROW, Dops.THROW);
        map.put(Rops.MONITOR_ENTER, Dops.MONITOR_ENTER);
        map.put(Rops.MONITOR_EXIT, Dops.MONITOR_EXIT);
        Rop rop12 = Rops.AGET_INT;
        Dop dop12 = Dops.AGET;
        map.put(rop12, dop12);
        Rop rop13 = Rops.AGET_LONG;
        Dop dop13 = Dops.AGET_WIDE;
        map.put(rop13, dop13);
        map.put(Rops.AGET_FLOAT, dop12);
        map.put(Rops.AGET_DOUBLE, dop13);
        map.put(Rops.AGET_OBJECT, Dops.AGET_OBJECT);
        map.put(Rops.AGET_BOOLEAN, Dops.AGET_BOOLEAN);
        map.put(Rops.AGET_BYTE, Dops.AGET_BYTE);
        map.put(Rops.AGET_CHAR, Dops.AGET_CHAR);
        map.put(Rops.AGET_SHORT, Dops.AGET_SHORT);
        Rop rop14 = Rops.APUT_INT;
        Dop dop14 = Dops.APUT;
        map.put(rop14, dop14);
        Rop rop15 = Rops.APUT_LONG;
        Dop dop15 = Dops.APUT_WIDE;
        map.put(rop15, dop15);
        map.put(Rops.APUT_FLOAT, dop14);
        map.put(Rops.APUT_DOUBLE, dop15);
        map.put(Rops.APUT_OBJECT, Dops.APUT_OBJECT);
        map.put(Rops.APUT_BOOLEAN, Dops.APUT_BOOLEAN);
        map.put(Rops.APUT_BYTE, Dops.APUT_BYTE);
        map.put(Rops.APUT_CHAR, Dops.APUT_CHAR);
        map.put(Rops.APUT_SHORT, Dops.APUT_SHORT);
        map.put(Rops.NEW_INSTANCE, Dops.NEW_INSTANCE);
        map.put(Rops.CHECK_CAST, Dops.CHECK_CAST);
        map.put(Rops.INSTANCE_OF, Dops.INSTANCE_OF);
        Rop rop16 = Rops.GET_FIELD_LONG;
        Dop dop16 = Dops.IGET_WIDE;
        map.put(rop16, dop16);
        map.put(Rops.GET_FIELD_FLOAT, Dops.IGET);
        map.put(Rops.GET_FIELD_DOUBLE, dop16);
        map.put(Rops.GET_FIELD_OBJECT, Dops.IGET_OBJECT);
        Rop rop17 = Rops.GET_STATIC_LONG;
        Dop dop17 = Dops.SGET_WIDE;
        map.put(rop17, dop17);
        map.put(Rops.GET_STATIC_FLOAT, Dops.SGET);
        map.put(Rops.GET_STATIC_DOUBLE, dop17);
        map.put(Rops.GET_STATIC_OBJECT, Dops.SGET_OBJECT);
        Rop rop18 = Rops.PUT_FIELD_LONG;
        Dop dop18 = Dops.IPUT_WIDE;
        map.put(rop18, dop18);
        map.put(Rops.PUT_FIELD_FLOAT, Dops.IPUT);
        map.put(Rops.PUT_FIELD_DOUBLE, dop18);
        map.put(Rops.PUT_FIELD_OBJECT, Dops.IPUT_OBJECT);
        Rop rop19 = Rops.PUT_STATIC_LONG;
        Dop dop19 = Dops.SPUT_WIDE;
        map.put(rop19, dop19);
        map.put(Rops.PUT_STATIC_FLOAT, Dops.SPUT);
        map.put(Rops.PUT_STATIC_DOUBLE, dop19);
        map.put(Rops.PUT_STATIC_OBJECT, Dops.SPUT_OBJECT);
    }

    public static Dop dopFor(Insn insn) {
        Rop opcode = insn.getOpcode();
        Dop dop = MAP.get(opcode);
        if (dop != null) {
            return dop;
        }
        int opcode2 = opcode.getOpcode();
        if (opcode2 == 4) {
            return Dops.MOVE_EXCEPTION;
        }
        if (opcode2 == 5) {
            Constant constant = ((ThrowingCstInsn) insn).getConstant();
            if (constant instanceof CstType) {
                return Dops.CONST_CLASS;
            }
            if (constant instanceof CstString) {
                return Dops.CONST_STRING;
            }
            if (constant instanceof CstMethodHandle) {
                return Dops.CONST_METHOD_HANDLE;
            }
            if (constant instanceof CstProtoRef) {
                return Dops.CONST_METHOD_TYPE;
            }
            throw new RuntimeException("Unexpected constant type");
        }
        if (opcode2 == 41) {
            return Dops.NEW_ARRAY;
        }
        if (opcode2 == 42) {
            return Dops.FILLED_NEW_ARRAY;
        }
        if (opcode2 == 55) {
            RegisterSpec result = insn.getResult();
            if (result == null) {
                return Dops.NOP;
            }
            switch (result.getBasicType()) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                    return Dops.MOVE_RESULT;
                case 4:
                case 7:
                    return Dops.MOVE_RESULT_WIDE;
                case 9:
                    return Dops.MOVE_RESULT_OBJECT;
                default:
                    throw new RuntimeException("Unexpected basic type");
            }
        }
        switch (opcode2) {
            case 45:
                int basicType = ((CstFieldRef) ((ThrowingCstInsn) insn).getConstant()).getBasicType();
                if (basicType == 1) {
                    return Dops.IGET_BOOLEAN;
                }
                if (basicType == 2) {
                    return Dops.IGET_BYTE;
                }
                if (basicType == 3) {
                    return Dops.IGET_CHAR;
                }
                if (basicType == 6) {
                    return Dops.IGET;
                }
                if (basicType == 8) {
                    return Dops.IGET_SHORT;
                }
                break;
            case 46:
                int basicType2 = ((CstFieldRef) ((ThrowingCstInsn) insn).getConstant()).getBasicType();
                if (basicType2 == 1) {
                    return Dops.SGET_BOOLEAN;
                }
                if (basicType2 == 2) {
                    return Dops.SGET_BYTE;
                }
                if (basicType2 == 3) {
                    return Dops.SGET_CHAR;
                }
                if (basicType2 == 6) {
                    return Dops.SGET;
                }
                if (basicType2 == 8) {
                    return Dops.SGET_SHORT;
                }
                break;
            case 47:
                int basicType3 = ((CstFieldRef) ((ThrowingCstInsn) insn).getConstant()).getBasicType();
                if (basicType3 == 1) {
                    return Dops.IPUT_BOOLEAN;
                }
                if (basicType3 == 2) {
                    return Dops.IPUT_BYTE;
                }
                if (basicType3 == 3) {
                    return Dops.IPUT_CHAR;
                }
                if (basicType3 == 6) {
                    return Dops.IPUT;
                }
                if (basicType3 == 8) {
                    return Dops.IPUT_SHORT;
                }
                break;
            case 48:
                int basicType4 = ((CstFieldRef) ((ThrowingCstInsn) insn).getConstant()).getBasicType();
                if (basicType4 == 1) {
                    return Dops.SPUT_BOOLEAN;
                }
                if (basicType4 == 2) {
                    return Dops.SPUT_BYTE;
                }
                if (basicType4 == 3) {
                    return Dops.SPUT_CHAR;
                }
                if (basicType4 == 6) {
                    return Dops.SPUT;
                }
                if (basicType4 == 8) {
                    return Dops.SPUT_SHORT;
                }
                break;
            case 49:
                return Dops.INVOKE_STATIC;
            case 50:
                return Dops.INVOKE_VIRTUAL;
            case 51:
                return Dops.INVOKE_SUPER;
            case 52:
                return Dops.INVOKE_DIRECT;
            case 53:
                return Dops.INVOKE_INTERFACE;
            default:
                switch (opcode2) {
                    case 57:
                        return Dops.FILL_ARRAY_DATA;
                    case 58:
                        return Dops.INVOKE_POLYMORPHIC;
                    case 59:
                        return Dops.INVOKE_CUSTOM;
                }
        }
        throw new RuntimeException("unknown rop: " + opcode);
    }
}
