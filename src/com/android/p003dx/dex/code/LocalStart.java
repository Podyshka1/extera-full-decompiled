package com.android.p003dx.dex.code;

import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.code.SourcePosition;
import com.android.p003dx.ssa.RegisterMapper;

/* JADX INFO: loaded from: classes4.dex */
public final class LocalStart extends ZeroSizeInsn {
    private final RegisterSpec local;

    public static String localString(RegisterSpec registerSpec) {
        return registerSpec.regString() + ' ' + registerSpec.getLocalItem().toString() + ": " + registerSpec.getTypeBearer().toHuman();
    }

    public LocalStart(SourcePosition sourcePosition, RegisterSpec registerSpec) {
        super(sourcePosition);
        if (registerSpec == null) {
            throw new NullPointerException("local == null");
        }
        this.local = registerSpec;
    }

    @Override // com.android.p003dx.dex.code.ZeroSizeInsn, com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i) {
        return new LocalStart(getPosition(), this.local.withOffset(i));
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new LocalStart(getPosition(), this.local);
    }

    public RegisterSpec getLocal() {
        return this.local;
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String argString() {
        return this.local.toString();
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    protected String listingString0(boolean z) {
        return "local-start " + localString(this.local);
    }

    @Override // com.android.p003dx.dex.code.DalvInsn
    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return new LocalStart(getPosition(), registerMapper.map(this.local));
    }
}
