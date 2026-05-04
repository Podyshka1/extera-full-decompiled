package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class RegisterRangeDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f102a;
    private final int registerCount;

    public RegisterRangeDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f102a = i4;
        this.registerCount = i5;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f102a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new RegisterRangeDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f102a, this.registerCount);
    }
}
