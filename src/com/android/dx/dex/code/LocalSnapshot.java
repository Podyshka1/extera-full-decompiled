package com.android.dx.dex.code;

import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.RegisterSpecSet;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.ssa.RegisterMapper;

/* JADX INFO: loaded from: classes4.dex */
public final class LocalSnapshot extends ZeroSizeInsn {
    private final RegisterSpecSet locals;

    public LocalSnapshot(SourcePosition sourcePosition, RegisterSpecSet registerSpecSet) {
        super(sourcePosition);
        if (registerSpecSet == null) {
            throw new NullPointerException("locals == null");
        }
        this.locals = registerSpecSet;
    }

    @Override // com.android.dx.dex.code.ZeroSizeInsn, com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisterOffset(int i) {
        return new LocalSnapshot(getPosition(), this.locals.withOffset(i));
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withRegisters(RegisterSpecList registerSpecList) {
        return new LocalSnapshot(getPosition(), this.locals);
    }

    public RegisterSpecSet getLocals() {
        return this.locals;
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String argString() {
        return this.locals.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    protected String listingString0(boolean z) {
        int size = this.locals.size();
        int maxSize = this.locals.getMaxSize();
        StringBuilder sb = new StringBuilder((size * 40) + 100);
        sb.append("local-snapshot");
        for (int i = 0; i < maxSize; i++) {
            RegisterSpec registerSpec = this.locals.get(i);
            if (registerSpec != null) {
                sb.append("\n  ");
                sb.append(LocalStart.localString(registerSpec));
            }
        }
        return sb.toString();
    }

    @Override // com.android.dx.dex.code.DalvInsn
    public DalvInsn withMapper(RegisterMapper registerMapper) {
        return new LocalSnapshot(getPosition(), registerMapper.map(this.locals));
    }
}
