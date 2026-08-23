package com.android.p003dx.p006io.instructions;

import com.android.p003dx.p006io.IndexType;

/* JADX INFO: loaded from: classes4.dex */
public final class ThreeRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a */
    private final int f103a;

    /* JADX INFO: renamed from: b */
    private final int f104b;

    /* JADX INFO: renamed from: c */
    private final int f105c;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 3;
    }

    public ThreeRegisterDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, IndexType indexType, int i3, long j, int i4, int i5, int i6) {
        super(instructionCodec, i, i2, indexType, i3, j);
        this.f103a = i4;
        this.f104b = i5;
        this.f105c = i6;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getA() {
        return this.f103a;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getB() {
        return this.f104b;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getC() {
        return this.f105c;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        return new ThreeRegisterDecodedInstruction(getFormat(), getOpcode(), i, getIndexType(), getTarget(), getLiteral(), this.f103a, this.f104b, this.f105c);
    }
}
