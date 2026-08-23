package com.android.p003dx.ssa.back;

import com.android.p003dx.rop.code.CstInsn;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.ssa.BasicRegisterMapper;
import com.android.p003dx.ssa.NormalSsaInsn;
import com.android.p003dx.ssa.RegisterMapper;
import com.android.p003dx.ssa.SsaMethod;
import com.android.p003dx.util.BitIntSet;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public class FirstFitAllocator extends RegisterAllocator {
    private static final boolean PRESLOT_PARAMS = true;
    private final BitSet mapped;

    @Override // com.android.p003dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }

    public FirstFitAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph) {
        super(ssaMethod, interferenceGraph);
        this.mapped = new BitSet(ssaMethod.getRegCount());
    }

    @Override // com.android.p003dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        int iParamNumberFromMoveParam;
        boolean z;
        int regCount = this.ssaMeth.getRegCount();
        BasicRegisterMapper basicRegisterMapper = new BasicRegisterMapper(regCount);
        int paramWidth = this.ssaMeth.getParamWidth();
        for (int i = 0; i < regCount; i++) {
            if (!this.mapped.get(i)) {
                int categoryForSsaReg = getCategoryForSsaReg(i);
                BitIntSet bitIntSet = new BitIntSet(regCount);
                this.interference.mergeInterferenceSet(i, bitIntSet);
                if (isDefinitionMoveParam(i)) {
                    iParamNumberFromMoveParam = paramNumberFromMoveParam((NormalSsaInsn) this.ssaMeth.getDefinitionForRegister(i));
                    basicRegisterMapper.addMapping(i, iParamNumberFromMoveParam, categoryForSsaReg);
                    z = true;
                } else {
                    basicRegisterMapper.addMapping(i, paramWidth, categoryForSsaReg);
                    iParamNumberFromMoveParam = paramWidth;
                    z = false;
                }
                for (int i2 = i + 1; i2 < regCount; i2++) {
                    if (!this.mapped.get(i2) && !isDefinitionMoveParam(i2) && !bitIntSet.has(i2) && (!z || categoryForSsaReg >= getCategoryForSsaReg(i2))) {
                        this.interference.mergeInterferenceSet(i2, bitIntSet);
                        categoryForSsaReg = Math.max(categoryForSsaReg, getCategoryForSsaReg(i2));
                        basicRegisterMapper.addMapping(i2, iParamNumberFromMoveParam, categoryForSsaReg);
                        this.mapped.set(i2);
                    }
                }
                this.mapped.set(i);
                if (!z) {
                    paramWidth += categoryForSsaReg;
                }
            }
        }
        return basicRegisterMapper;
    }

    private int paramNumberFromMoveParam(NormalSsaInsn normalSsaInsn) {
        return ((CstInteger) ((CstInsn) normalSsaInsn.getOriginalRopInsn()).getConstant()).getValue();
    }
}
