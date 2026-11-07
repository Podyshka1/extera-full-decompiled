package com.google.android.gms.vision;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Detector<T> {
    private final Object zza = new Object();

    public void release() {
        synchronized (this.zza) {
        }
    }
}
