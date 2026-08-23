package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
final class zzuh extends zzul {
    private static final Class zza = DesugarCollections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    /* synthetic */ zzuh(zzug zzugVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.cast.zzul
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzwj.zzf(obj, j);
        if (list instanceof zzuf) {
            objUnmodifiableList = ((zzuf) list).zzd();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzve) && (list instanceof zztx)) {
                zztx zztxVar = (zztx) list;
                if (zztxVar.zzc()) {
                    zztxVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = DesugarCollections.unmodifiableList(list);
        }
        zzwj.zzs(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.cast.zzul
    final void zzb(Object obj, Object obj2, long j) {
        List list;
        List list2;
        List list3 = (List) zzwj.zzf(obj2, j);
        int size = list3.size();
        List list4 = (List) zzwj.zzf(obj, j);
        if (list4.isEmpty()) {
            List zzueVar = list4 instanceof zzuf ? new zzue(size) : ((list4 instanceof zzve) && (list4 instanceof zztx)) ? ((zztx) list4).zzg(size) : new ArrayList(size);
            zzwj.zzs(obj, j, zzueVar);
            list2 = zzueVar;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzwj.zzs(obj, j, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzwe) {
                zzue zzueVar2 = new zzue(list4.size() + size);
                zzueVar2.addAll(zzueVar2.size(), (zzwe) list4);
                zzwj.zzs(obj, j, zzueVar2);
                list = zzueVar2;
            } else {
                boolean z = list4 instanceof zzve;
                list2 = list4;
                if (z) {
                    boolean z2 = list4 instanceof zztx;
                    list2 = list4;
                    if (z2) {
                        zztx zztxVar = (zztx) list4;
                        list2 = list4;
                        if (!zztxVar.zzc()) {
                            zztx zztxVarZzg = zztxVar.zzg(list4.size() + size);
                            zzwj.zzs(obj, j, zztxVarZzg);
                            list2 = zztxVarZzg;
                        }
                    }
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzwj.zzs(obj, j, list3);
    }
}
