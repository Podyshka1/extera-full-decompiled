package com.android.dx.io.instructions;

import com.android.dex.DexException;
import com.android.dx.io.IndexType;
import com.android.dx.io.OpcodeInfo;
import com.android.dx.io.Opcodes;
import com.android.dx.merge.DexMerger$$ExternalSyntheticBUOutline0;
import com.android.dx.util.Hex;
import java.io.EOFException;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

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
            f$$ExternalSyntheticBUOutline2.m179m("format == null");
            throw null;
        }
        if (!Opcodes.isValidShape(i)) {
            f$$ExternalSyntheticBUOutline1.m178m("invalid opcode");
            throw null;
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
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Target out of range: ", Hex.s4(target));
        return (short) 0;
    }

    public final int getTargetByte(int i) {
        int target = getTarget(i);
        if (target == ((byte) target)) {
            return target & 255;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Target out of range: ", Hex.s4(target));
        return 0;
    }

    public final long getLiteral() {
        return this.literal;
    }

    public final int getLiteralInt() {
        long j = this.literal;
        if (j == ((int) j)) {
            return (int) j;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Literal out of range: ", Hex.u8(this.literal));
        return 0;
    }

    public final short getLiteralUnit() {
        long j = this.literal;
        if (j == ((short) j)) {
            return (short) j;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Literal out of range: ", Hex.u8(this.literal));
        return (short) 0;
    }

    public final int getLiteralByte() {
        long j = this.literal;
        if (j == ((byte) j)) {
            return ((int) j) & 255;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Literal out of range: ", Hex.u8(this.literal));
        return 0;
    }

    public final int getLiteralNibble() {
        long j = this.literal;
        if (j >= -8 && j <= 7) {
            return ((int) j) & 15;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Literal out of range: ", Hex.u8(this.literal));
        return 0;
    }

    public final short getRegisterCountUnit() {
        int registerCount = getRegisterCount();
        if (((-65536) & registerCount) == 0) {
            return (short) registerCount;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register count out of range: ", Hex.u8(registerCount));
        return (short) 0;
    }

    public final short getAUnit() {
        int a2 = getA();
        if (((-65536) & a2) == 0) {
            return (short) a2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register A out of range: ", Hex.u8(a2));
        return (short) 0;
    }

    public final short getAByte() {
        int a2 = getA();
        if ((a2 & (-256)) == 0) {
            return (short) a2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register A out of range: ", Hex.u8(a2));
        return (short) 0;
    }

    public final short getANibble() {
        int a2 = getA();
        if ((a2 & (-16)) == 0) {
            return (short) a2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register A out of range: ", Hex.u8(a2));
        return (short) 0;
    }

    public final short getBUnit() {
        int b2 = getB();
        if (((-65536) & b2) == 0) {
            return (short) b2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register B out of range: ", Hex.u8(b2));
        return (short) 0;
    }

    public final short getBByte() {
        int b2 = getB();
        if ((b2 & (-256)) == 0) {
            return (short) b2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register B out of range: ", Hex.u8(b2));
        return (short) 0;
    }

    public final short getBNibble() {
        int b2 = getB();
        if ((b2 & (-16)) == 0) {
            return (short) b2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register B out of range: ", Hex.u8(b2));
        return (short) 0;
    }

    public final short getCUnit() {
        int c2 = getC();
        if (((-65536) & c2) == 0) {
            return (short) c2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register C out of range: ", Hex.u8(c2));
        return (short) 0;
    }

    public final short getCByte() {
        int c2 = getC();
        if ((c2 & (-256)) == 0) {
            return (short) c2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register C out of range: ", Hex.u8(c2));
        return (short) 0;
    }

    public final short getCNibble() {
        int c2 = getC();
        if ((c2 & (-16)) == 0) {
            return (short) c2;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register C out of range: ", Hex.u8(c2));
        return (short) 0;
    }

    public final short getDUnit() {
        int d = getD();
        if (((-65536) & d) == 0) {
            return (short) d;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register D out of range: ", Hex.u8(d));
        return (short) 0;
    }

    public final short getDByte() {
        int d = getD();
        if ((d & (-256)) == 0) {
            return (short) d;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register D out of range: ", Hex.u8(d));
        return (short) 0;
    }

    public final short getDNibble() {
        int d = getD();
        if ((d & (-16)) == 0) {
            return (short) d;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register D out of range: ", Hex.u8(d));
        return (short) 0;
    }

    public final short getENibble() {
        int e = getE();
        if ((e & (-16)) == 0) {
            return (short) e;
        }
        DexMerger$$ExternalSyntheticBUOutline0.m192m("Register E out of range: ", Hex.u8(e));
        return (short) 0;
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
