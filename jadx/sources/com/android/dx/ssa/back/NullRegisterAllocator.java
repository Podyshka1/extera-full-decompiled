package com.android.dx.ssa.back;

import com.android.dx.ssa.BasicRegisterMapper;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaMethod;

/* JADX INFO: loaded from: classes4.dex */
public class NullRegisterAllocator extends RegisterAllocator {
    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return false;
    }

    public NullRegisterAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        for (int i = 0; i < regCount; i++) {
            basicRegisterMapper.addMapping(i, i * 2, 2);
        }
        return basicRegisterMapper;
    }
}
