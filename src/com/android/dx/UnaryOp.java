package com.android.dx;

import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.Rops;

/* JADX INFO: loaded from: classes.dex */
public enum UnaryOp {
    NOT { // from class: com.android.dx.UnaryOp.1
        @Override // com.android.dx.UnaryOp
        public Rop rop(TypeId<?> typeId) {
            return Rops.opNot(typeId.ropType);
        }
    },
    NEGATE { // from class: com.android.dx.UnaryOp.2
        @Override // com.android.dx.UnaryOp
        public Rop rop(TypeId<?> typeId) {
            return Rops.opNeg(typeId.ropType);
        }
    };

    public abstract Rop rop(TypeId<?> typeId);
}
