package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class TwoRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f45a;

    /* JADX INFO: renamed from: b */
    private final int f46b;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 2;
    }

    public TwoRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f45a = i4;
        this.f46b = i5;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f45a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f46b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new TwoRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f45a, this.f46b);
    }
}
