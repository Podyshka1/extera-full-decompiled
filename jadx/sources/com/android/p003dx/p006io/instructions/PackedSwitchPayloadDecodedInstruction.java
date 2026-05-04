package com.android.p003dx.p006io.instructions;

/* JADX INFO: loaded from: classes4.dex */
public final class PackedSwitchPayloadDecodedInstruction extends DecodedInstruction {
    private final int firstKey;
    private final int[] targets;

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 0;
    }

    public PackedSwitchPayloadDecodedInstruction(InstructionCodec instructionCodec, int i, int i2, int[] iArr) {
        super(instructionCodec, i, 0, null, 0, 0L);
        this.firstKey = i2;
        this.targets = iArr;
    }

    public int getFirstKey() {
        return this.firstKey;
    }

    public int[] getTargets() {
        return this.targets;
    }

    @Override // com.android.p003dx.p006io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i) {
        throw new UnsupportedOperationException("no index in instruction");
    }
}
