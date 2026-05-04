package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjk extends Exception {
    public zzjk(String str) {
        super(str);
    }

    public zzjk(String str, Throwable th) {
        super("ContentProvider query failed", th);
    }
}
