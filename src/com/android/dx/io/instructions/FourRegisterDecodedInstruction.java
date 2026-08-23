package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f35a;

    /* JADX INFO: renamed from: b */
    private final int f36b;

    /* JADX INFO: renamed from: c */
    private final int f37c;

    /* JADX INFO: renamed from: d */
    private final int f38d;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 4;
    }

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f35a = i4;
        this.f36b = i5;
        this.f37c = i6;
        this.f38d = i7;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f35a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f36b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f37c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f38d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f35a, this.f36b, this.f37c, this.f38d);
    }
}
