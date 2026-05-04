package com.android.p003dx.ssa;

import com.android.p003dx.p004cf.code.Merger;
import com.android.p003dx.rop.code.LocalItem;
import com.android.p003dx.rop.code.RegisterSpec;
import com.android.p003dx.rop.code.RegisterSpecList;
import com.android.p003dx.rop.type.TypeBearer;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PhiTypeResolver {
    SsaMethod ssaMeth;
    private final BitSet worklist;

    public static void process(SsaMethod ssaMethod) {
        new PhiTypeResolver(ssaMethod).run();
    }

    private PhiTypeResolver(SsaMethod ssaMethod) {
        this.ssaMeth = ssaMethod;
        this.worklist = new BitSet(ssaMethod.getRegCount());
    }

    private void run() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i = 0; i < regCount; i++) {
            SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i);
            if (definitionForRegister != null && definitionForRegister.getResult().getBasicType() == 0) {
                this.worklist.set(i);
            }
        }
        while (true) {
            int iNextSetBit = this.worklist.nextSetBit(0);
            if (iNextSetBit < 0) {
                return;
            }
            this.worklist.clear(iNextSetBit);
            if (resolveResultType((PhiInsn) this.ssaMeth.getDefinitionForRegister(iNextSetBit))) {
                List<SsaInsn> useListForRegister = this.ssaMeth.getUseListForRegister(iNextSetBit);
                int size = useListForRegister.size();
                for (int i2 = 0; i2 < size; i2++) {
                    SsaInsn ssaInsn = useListForRegister.get(i2);
                    RegisterSpec result = ssaInsn.getResult();
                    if (result != null && (ssaInsn instanceof PhiInsn)) {
                        this.worklist.set(result.getReg());
                    }
                }
            }
        }
    }

    private static boolean equalsHandlesNulls(LocalItem localItem, LocalItem localItem2) {
        if (localItem != localItem2) {
            return localItem != null && localItem.equals(localItem2);
        }
        return true;
    }

    boolean resolveResultType(PhiInsn phiInsn) {
        phiInsn.updateSourcesToDefinitions(this.ssaMeth);
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        int i = -1;
        RegisterSpec registerSpec = null;
        for (int i2 = 0; i2 < size; i2++) {
            RegisterSpec registerSpec2 = sources.get(i2);
            if (registerSpec2.getBasicType() != 0) {
                i = i2;
                registerSpec = registerSpec2;
            }
        }
        if (registerSpec == null) {
            return false;
        }
        LocalItem localItem = registerSpec.getLocalItem();
        TypeBearer type = registerSpec.getType();
        boolean z = true;
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 != i) {
                RegisterSpec registerSpec3 = sources.get(i3);
                if (registerSpec3.getBasicType() != 0) {
                    z = z && equalsHandlesNulls(localItem, registerSpec3.getLocalItem());
                    type = Merger.mergeType(type, registerSpec3.getType());
                }
            }
        }
        if (type == null) {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < size; i4++) {
                sb.append(sources.get(i4).toString());
                sb.append(' ');
            }
            throw new RuntimeException("Couldn't map types in phi insn:" + ((Object) sb));
        }
        LocalItem localItem2 = z ? localItem : null;
        RegisterSpec result = phiInsn.getResult();
        if (result.getTypeBearer() == type && equalsHandlesNulls(localItem2, result.getLocalItem())) {
            return false;
        }
        phiInsn.changeResultType(type, localItem2);
        return true;
    }
}
