package com.google.android.gms.internal.mlkit_vision_label;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzap extends AbstractSet {
    final /* synthetic */ zzau zza;

    public zzap(zzau zzauVar) {
        this.zza = zzauVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iZzv = this.zza.zzv(entry.getKey());
            if (iZzv != -1 && zzo.zza(zzau.zzj(this.zza, iZzv), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzau zzauVar = this.zza;
        Map mapZzl = zzauVar.zzl();
        return mapZzl != null ? mapZzl.entrySet().iterator() : new zzan(zzauVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int iZzu;
        int iZzb;
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzau zzauVar = this.zza;
        if (zzauVar.zzq() || (iZzb = zzav.zzb(entry.getKey(), entry.getValue(), (iZzu = zzauVar.zzu()), zzau.zzk(this.zza), this.zza.zzz(), this.zza.zzA(), this.zza.zzB())) == -1) {
            return false;
        }
        this.zza.zzp(iZzb, iZzu);
        zzau.zzb(this.zza);
        this.zza.zzn();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
