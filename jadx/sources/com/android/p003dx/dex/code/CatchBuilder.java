package com.android.p003dx.dex.code;

import com.android.p003dx.rop.type.Type;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public interface CatchBuilder {
    CatchTable build();

    HashSet<Type> getCatchTypes();

    boolean hasAnyCatches();
}
