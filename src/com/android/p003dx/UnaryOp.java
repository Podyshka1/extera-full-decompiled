package com.android.p003dx;

import com.android.p003dx.rop.code.Rop;
import com.android.p003dx.rop.code.Rops;

/* JADX INFO: loaded from: classes4.dex */
public enum UnaryOp {
    NOT { // from class: com.android.dx.UnaryOp.1
        @Override // com.android.p003dx.UnaryOp
        Rop rop(TypeId<?> typeId) {
            return Rops.opNot(typeId.ropType);
        }
    },
    NEGATE { // from class: com.android.dx.UnaryOp.2
        @Override // com.android.p003dx.UnaryOp
        Rop rop(TypeId<?> typeId) {
            return Rops.opNeg(typeId.ropType);
        }
    };

    abstract Rop rop(TypeId<?> typeId);
}
