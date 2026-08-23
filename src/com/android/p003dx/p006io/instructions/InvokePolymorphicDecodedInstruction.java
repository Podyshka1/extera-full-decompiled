package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public class InvokePolymorphicDecodedInstruction extends DecodedInstruction {
    private final int protoIndex;
    private final int[] registers;

    public InvokePolymorphicDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, int[] iArr) {
        super(instructionCodec, i, i2, indexType, 0, 0L);
        if (i3 != ((short) i3)) {
            throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i3);
        }
        this.protoIndex = i3;
        this.registers = iArr;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registers.length;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic");
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withProtoIndex(int i, int i2) {
        return new InvokePolymorphicDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), i2, this.registers);
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getC() {
        int[] iArr = this.registers;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return 0;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getD() {
        int[] iArr = this.registers;
        if (iArr.length > 1) {
            return iArr[1];
        }
        return 0;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getE() {
        int[] iArr = this.registers;
        if (iArr.length > 2) {
            return iArr[2];
        }
        return 0;
    }

    public int getF() {
        int[] iArr = this.registers;
        if (iArr.length > 3) {
            return iArr[3];
        }
        return 0;
    }

    public int getG() {
        int[] iArr = this.registers;
        if (iArr.length > 4) {
            return iArr[4];
        }
        return 0;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public short getProtoIndex() {
        return (short) this.protoIndex;
    }
}
