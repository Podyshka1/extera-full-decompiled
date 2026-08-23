package com.android.p003dx.p006io.instructions;

/* JADX INFO: loaded from: classes4.dex */
public final class SparseSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int[] keys;
    private final int[] targets;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    public SparseSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i, int[] iArr, int[] iArr2) {
        super(instructionCodec, i, 0, null, 0, 0L);
        if (iArr.length != iArr2.length) {
            throw new IllegalArgumentException("keys/targets length mismatch");
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

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        throw new UnsupportedOperationException("no index in instruction");
    }
}
