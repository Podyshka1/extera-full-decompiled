package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzw extends zzbm {
    final /* synthetic */ zzy zza;

    public zzw(zzy zzyVar) {
        this.zza = zzyVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbm, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Set setEntrySet = this.zza.zza.entrySet();
        setEntrySet.getClass();
        try {
            return setEntrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzx(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        zzag.zzm(this.zza.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbm
    public final Map zza() {
        return this.zza;
    }
}
