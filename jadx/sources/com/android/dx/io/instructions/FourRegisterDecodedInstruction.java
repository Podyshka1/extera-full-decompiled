package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f25a;

    /* JADX INFO: renamed from: b */
    private final int f26b;

    /* JADX INFO: renamed from: c */
    private final int f27c;

    /* JADX INFO: renamed from: d */
    private final int f28d;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 4;
    }

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f25a = i4;
        this.f26b = i5;
        this.f27c = i6;
        this.f28d = i7;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f25a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f26b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f27c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f28d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f25a, this.f26b, this.f27c, this.f28d);
    }
}
