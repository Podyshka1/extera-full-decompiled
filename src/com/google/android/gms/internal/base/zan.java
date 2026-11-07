package com.google.android.gms.internal.base;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zan {
    private static final zal zaa;
    private static volatile zal zab;

    static {
        zam zamVar = new zam(null);
        zaa = zamVar;
        zab = zamVar;
    }

    public static zal zaa() {
        return zab;
    }
}
