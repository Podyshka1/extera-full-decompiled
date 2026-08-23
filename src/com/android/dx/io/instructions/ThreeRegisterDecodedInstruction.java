package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class ThreeRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f42a;

    /* JADX INFO: renamed from: b */
    private final int f43b;

    /* JADX INFO: renamed from: c */
    private final int f44c;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 3;
    }

    public ThreeRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f42a = i4;
        this.f43b = i5;
        this.f44c = i6;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f42a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f43b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f44c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new ThreeRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f42a, this.f43b, this.f44c);
    }
}
