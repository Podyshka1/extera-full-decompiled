package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.util.AnnotatedOutput;

/* JADX INFO: loaded from: classes4.dex */
public final class OddSpacer extends VariableSizeInsn {
    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        return null;
    }

    public OddSpacer(SourcePosition sourcePosition) {
        super(sourcePosition, RegisterSpecList.EMPTY);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public int codeSize() {
        return getAddress() & 1;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public void writeTo(AnnotatedOutput annotatedOutput) {
        if (codeSize() != 0) {
            annotatedOutput.writeShort(InsnFormat.codeUnit(0, 0));
        }
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new OddSpacer(getPosition());
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String listingString0(boolean z) {
        if (codeSize() == 0) {
            return null;
        }
        return "nop // spacer";
    }
}
