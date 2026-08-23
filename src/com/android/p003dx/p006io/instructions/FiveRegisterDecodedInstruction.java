package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f91a;

    /* JADX INFO: renamed from: b */
    private final int f92b;

    /* JADX INFO: renamed from: c */
    private final int f93c;

    /* JADX INFO: renamed from: d */
    private final int f94d;

    /* JADX INFO: renamed from: e */
    private final int f95e;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 5;
    }

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6, int i7, int i8) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f91a = i4;
        this.f92b = i5;
        this.f93c = i6;
        this.f94d = i7;
        this.f95e = i8;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f91a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getB() {
        return this.f92b;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getC() {
        return this.f93c;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getD() {
        return this.f94d;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getE() {
        return this.f95e;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f91a, this.f92b, this.f93c, this.f94d, this.f95e);
    }
}
