package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Response<T extends Result> {
    private Result zza;

    public Response(T t) {
        this.zza = t;
    }

    public T getResult() {
        return (T) this.zza;
    }
}
