package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzsn implements zzsp {
    zzsn() {
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(zza());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
