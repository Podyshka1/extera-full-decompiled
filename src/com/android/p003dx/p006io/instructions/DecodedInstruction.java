package com.android.p003dx.p006io.instructions;

import com.android.dex.DexException;
import com.android.p003dx.p006io.IndexType;
import com.android.p003dx.p006io.OpcodeInfo;
import com.android.p003dx.p006io.Opcodes;
import com.android.p003dx.util.Hex;
import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DecodedInstruction {
    private final InstructionCodec format;
    private final int index;
    private final IndexType indexType;
    private final long literal;
    private final int opcode;
    private final int target;

    public int getA() {
        return 0;
    }

    public int getB() {
        return 0;
    }

    public int getC() {
        return 0;
    }

    public int getD() {
        return 0;
    }

    public int getE() {
        return 0;
    }

    public abstract int getRegisterCount();

    public abstract DecodedInstruction withIndex(int i);

    public static DecodedInstruction decode(CodeInput codeInput) {
        int i = codeInput.read();
        return OpcodeInfo.getFormat(Opcodes.extractOpcodeFromUnit(i)).decode(i, codeInput);
    }

    public static DecodedInstruction[] decodeAll(short[] sArr) {
        DecodedInstruction[] decodedInstructionArr = new DecodedInstruction[sArr.length];
        ShortArrayCodeInput shortArrayCodeInput = new ShortArrayCodeInput(sArr);
        while (shortArrayCodeInput.hasMore()) {
            try {
                decodedInstructionArr[shortArrayCodeInput.cursor()] = decode(shortArrayCodeInput);
            } catch (EOFException e) {
                throw new DexException(e);
            }
        }
        return decodedInstructionArr;
    }

    public DecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j) {
        if (instructionCodec == null) {
            throw new NullPointerException("format == null");
        }
        if (!Opcodes.isValidShape(i)) {
            throw new IllegalArgumentException("invalid opcode");
        }
        this.format = instructionCodec;
        this.opcode = i;
        this.index = i2;
        this.indexType = indexType;
        this.target = i3;
        this.literal = j;
    }

    public final InstructionCodec getFormat() {
        return this.format;
    }

    public final int getOpcode() {
        return this.opcode;
    }

    public final short getOpcodeUnit() {
        return (short) this.opcode;
    }

    public final int getIndex() {
        return this.index;
    }

    public final short getIndexUnit() {
        return (short) this.index;
    }

    public final IndexType getIndexType() {
        return this.indexType;
    }

    public final int getTarget() {
        return this.target;
    }

    public final int getTarget(int i) {
        return this.target - i;
    }

    public final short getTargetUnit(int i) {
        int target = getTarget(i);
        short s = (short) target;
        if (target == s) {
            return s;
        }
        throw new DexException("Target out of range: " + Hex.m209s4(target));
    }

    public final int getTargetByte(int i) {
        int target = getTarget(i);
        if (target == ((byte) target)) {
            return target & 255;
        }
        throw new DexException("Target out of range: " + Hex.m209s4(target));
    }

    public final long getLiteral() {
        return this.literal;
    }

    public final int getLiteralInt() {
        long j = this.literal;
        if (j == ((int) j)) {
            return (int) j;
        }
        throw new DexException("Literal out of range: " + Hex.m215u8(this.literal));
    }

    public final short getLiteralUnit() {
        long j = this.literal;
        if (j == ((short) j)) {
            return (short) j;
        }
        throw new DexException("Literal out of range: " + Hex.m215u8(this.literal));
    }

    public final int getLiteralByte() {
        long j = this.literal;
        if (j == ((byte) j)) {
            return ((int) j) & 255;
        }
        throw new DexException("Literal out of range: " + Hex.m215u8(this.literal));
    }

    public final int getLiteralNibble() {
        long j = this.literal;
        if (j >= -8 && j <= 7) {
            return ((int) j) & 15;
        }
        throw new DexException("Literal out of range: " + Hex.m215u8(this.literal));
    }

    public final short getRegisterCountUnit() {
        int registerCount = getRegisterCount();
        if (((-65536) & registerCount) == 0) {
            return (short) registerCount;
        }
        throw new DexException("Register count out of range: " + Hex.m215u8(registerCount));
    }

    public final short getAUnit() {
        int a = getA();
        if (((-65536) & a) == 0) {
            return (short) a;
        }
        throw new DexException("Register A out of range: " + Hex.m215u8(a));
    }

    public final short getAByte() {
        int a = getA();
        if ((a & (-256)) == 0) {
            return (short) a;
        }
        throw new DexException("Register A out of range: " + Hex.m215u8(a));
    }

    public final short getANibble() {
        int a = getA();
        if ((a & (-16)) == 0) {
            return (short) a;
        }
        throw new DexException("Register A out of range: " + Hex.m215u8(a));
    }

    public final short getBUnit() {
        int b = getB();
        if (((-65536) & b) == 0) {
            return (short) b;
        }
        throw new DexException("Register B out of range: " + Hex.m215u8(b));
    }

    public final short getBByte() {
        int b = getB();
        if ((b & (-256)) == 0) {
            return (short) b;
        }
        throw new DexException("Register B out of range: " + Hex.m215u8(b));
    }

    public final short getBNibble() {
        int b = getB();
        if ((b & (-16)) == 0) {
            return (short) b;
        }
        throw new DexException("Register B out of range: " + Hex.m215u8(b));
    }

    public final short getCUnit() {
        int c = getC();
        if (((-65536) & c) == 0) {
            return (short) c;
        }
        throw new DexException("Register C out of range: " + Hex.m215u8(c));
    }

    public final short getCByte() {
        int c = getC();
        if ((c & (-256)) == 0) {
            return (short) c;
        }
        throw new DexException("Register C out of range: " + Hex.m215u8(c));
    }

    public final short getCNibble() {
        int c = getC();
        if ((c & (-16)) == 0) {
            return (short) c;
        }
        throw new DexException("Register C out of range: " + Hex.m215u8(c));
    }

    public final short getDUnit() {
        int d = getD();
        if (((-65536) & d) == 0) {
            return (short) d;
        }
        throw new DexException("Register D out of range: " + Hex.m215u8(d));
    }

    public final short getDByte() {
        int d = getD();
        if ((d & (-256)) == 0) {
            return (short) d;
        }
        throw new DexException("Register D out of range: " + Hex.m215u8(d));
    }

    public final short getDNibble() {
        int d = getD();
        if ((d & (-16)) == 0) {
            return (short) d;
        }
        throw new DexException("Register D out of range: " + Hex.m215u8(d));
    }

    public final short getENibble() {
        int e = getE();
        if ((e & (-16)) == 0) {
            return (short) e;
        }
        throw new DexException("Register E out of range: " + Hex.m215u8(e));
    }

    public final void encode(CodeOutput codeOutput) {
        this.format.encode(this, codeOutput);
    }

    public DecodedInstruction withProtoIndex(int i, int i2) {
        throw new IllegalStateException(getClass().toString());
    }

    public short getProtoIndex() {
        throw new IllegalStateException(getClass().toString());
    }
}
