package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public class InvokePolymorphicRangeDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: c */
    private final int f100c;
    private final int protoIndex;
    private final int registerCount;

    public InvokePolymorphicRangeDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, int i4, int i5) {
        super(instructionCodec, i, i2, indexType, 0, 0L);
        if (i5 != ((short) i5)) {
            throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i5);
        }
        this.f100c = i3;
        this.registerCount = i4;
        this.protoIndex = i5;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getC() {
        return this.f100c;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withProtoIndex(int i, int i2) {
        return new InvokePolymorphicRangeDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), this.f100c, this.registerCount, i2);
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range");
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public short getProtoIndex() {
        return (short) this.protoIndex;
    }
}
