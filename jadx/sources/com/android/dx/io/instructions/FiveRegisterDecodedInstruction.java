package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f20a;

    /* JADX INFO: renamed from: b */
    private final int f21b;

    /* JADX INFO: renamed from: c */
    private final int f22c;

    /* JADX INFO: renamed from: d */
    private final int f23d;

    /* JADX INFO: renamed from: e */
    private final int f24e;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 5;
    }

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7, int i8) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f20a = i4;
        this.f21b = i5;
        this.f22c = i6;
        this.f23d = i7;
        this.f24e = i8;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f20a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f21b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f22c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f23d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getE() {
        return this.f24e;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f20a, this.f21b, this.f22c, this.f23d, this.f24e);
    }
}
