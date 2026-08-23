package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzbc implements Iterator {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzbb zzfl;

    public zzbc(zzbb zzbbVar) {
        this.zzfl = zzbbVar;
        this.limit = zzbbVar.size();
    }

    private final byte nextByte() {
        try {
            zzbb zzbbVar = this.zzfl;
            int i = this.position;
            this.position = i + 1;
            return zzbbVar.zzj(i);
        } catch (IndexOutOfBoundsException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m761m(e.getMessage());
            return (byte) 0;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
