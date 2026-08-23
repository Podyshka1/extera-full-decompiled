package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import javax.annotation.CheckForNull;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzcy implements zzdf {
    private final Iterator zza;
    private boolean zzb;

    @CheckForNull
    private Object zzc;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb || this.zza.hasNext();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdf, java.util.Iterator
    public final Object next() {
        if (!this.zzb) {
            return this.zza.next();
        }
        Object obj = this.zzc;
        this.zzb = false;
        this.zzc = null;
        return obj;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdf
    public final Object zza() {
        if (!this.zzb) {
            this.zzc = this.zza.next();
            this.zzb = true;
        }
        return this.zzc;
    }

    public zzcy(Iterator it) {
        it.getClass();
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.zzb) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Can't remove after you've peeked at next");
        } else {
            this.zza.remove();
        }
    }
}
