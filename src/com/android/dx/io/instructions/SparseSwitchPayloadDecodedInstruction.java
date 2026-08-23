package com.android.dx.io.instructions;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class SparseSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int[] keys;
    private final int[] targets;

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    public SparseSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i, int[] iArr, int[] iArr2) {
        super(instructionCodec, i, 0, null, 0, 0L);
        if (iArr.length != iArr2.length) {
            f$$ExternalSyntheticBUOutline1.m178m("keys/targets length mismatch");
            throw null;
        }
        this.keys = iArr;
        this.targets = iArr2;
    }

    public int[] getKeys() {
        return this.keys;
    }

    public int[] getTargets() {
        return this.targets;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        throw new UnsupportedOperationException("no index in instruction");
    }
}
