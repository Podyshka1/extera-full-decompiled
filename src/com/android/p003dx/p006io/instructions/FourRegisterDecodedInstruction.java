package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f96a;

    /* JADX INFO: renamed from: b */
    private final int f97b;

    /* JADX INFO: renamed from: c */
    private final int f98c;

    /* JADX INFO: renamed from: d */
    private final int f99d;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 4;
    }

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f96a = i4;
        this.f97b = i5;
        this.f98c = i6;
        this.f99d = i7;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f96a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getB() {
        return this.f97b;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getC() {
        return this.f98c;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getD() {
        return this.f99d;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f96a, this.f97b, this.f98c, this.f99d);
    }
}
