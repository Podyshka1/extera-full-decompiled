package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzgq implements zzgs {
    zzgq() {
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
