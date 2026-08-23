package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.util.AnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FixedSizeInsn extends DalvInsn {
    public FixedSizeInsn(Dop dop, SourcePosition sourcePosition, RegisterSpecList registerSpecList) {
        super(dop, sourcePosition, registerSpecList);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public final int codeSize() {
        return getOpcode().getFormat().codeSize();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public final void writeTo(AnnotatedOutput annotatedOutput) {
        getOpcode().getFormat().writeTo(annotatedOutput, this);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public final DalvInsn withRegisterOffset(int i) {
        return withRegisters(getRegisters().withOffset(i));
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected final String listingString0(boolean z) {
        return getOpcode().getFormat().listingString(this, z);
    }
}
