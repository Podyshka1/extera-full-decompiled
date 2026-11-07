package com.google.mlkit.common.sdkinternal;

import com.google.mlkit.common.sdkinternal.MLTaskInput;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MLTask<T, S extends MLTaskInput> extends ModelResource {
    public abstract T run(S s);
}
