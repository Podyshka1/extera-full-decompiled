package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class TwoRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f106a;

    /* JADX INFO: renamed from: b */
    private final int f107b;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 2;
    }

    public TwoRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f106a = i4;
        this.f107b = i5;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f106a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getB() {
        return this.f107b;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new TwoRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f106a, this.f107b);
    }
}
