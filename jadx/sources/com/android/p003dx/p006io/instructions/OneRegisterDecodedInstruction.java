package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class OneRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f101a;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 1;
    }

    public OneRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f101a = i4;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f101a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new OneRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f101a);
    }
}
