package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f30a;

    /* JADX INFO: renamed from: b */
    private final int f31b;

    /* JADX INFO: renamed from: c */
    private final int f32c;

    /* JADX INFO: renamed from: d */
    private final int f33d;

    /* JADX INFO: renamed from: e */
    private final int f34e;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 5;
    }

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7, int i8) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f30a = i4;
        this.f31b = i5;
        this.f32c = i6;
        this.f33d = i7;
        this.f34e = i8;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f30a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f31b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f32c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f33d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getE() {
        return this.f34e;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f30a, this.f31b, this.f32c, this.f33d, this.f34e);
    }
}
