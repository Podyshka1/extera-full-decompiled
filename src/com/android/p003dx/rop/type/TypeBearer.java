package com.android.p003dx.rop.type;

import com.android.p003dx.util.ToHuman;

/* JADX INFO: loaded from: classes4.dex */
public interface TypeBearer extends ToHuman {
    int getBasicFrameType();

    int getBasicType();

    TypeBearer getFrameType();

    Type getType();

    boolean isConstant();
}
