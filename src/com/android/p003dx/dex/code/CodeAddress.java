package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;

/* JADX INFO: loaded from: classes4.dex */
public final class CodeAddress extends ZeroSizeInsn {
    private final boolean bindsClosely;

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        return null;
    }

    public CodeAddress(SourcePosition sourcePosition) {
        this(sourcePosition, false);
    }

    public CodeAddress(SourcePosition sourcePosition, boolean z) {
        super(sourcePosition);
        this.bindsClosely = z;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public final DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new CodeAddress(getPosition());
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String listingString0(boolean z) {
        return "code-address";
    }

    public boolean getBindsClosely() {
        return this.bindsClosely;
    }
}
