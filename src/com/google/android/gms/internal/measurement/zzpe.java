package com.google.android.gms.internal.measurement;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpe {
    private final ConcurrentMap zza = new ConcurrentHashMap();

    private final void zzd(zzlk zzlkVar, zzon zzonVar) {
        zzql.zza(zzlkVar.zzc(), new zzqk() { // from class: com.google.android.gms.internal.measurement.zzoz
            @Override // com.google.android.gms.internal.measurement.zzqk
            public final /* synthetic */ void zza(String str) {
                this.zza.zza(str);
            }
        }, new zzqj(this) { // from class: com.google.android.gms.internal.measurement.zzpa
        });
    }

    public final /* synthetic */ void zza(String str) {
        zzoo zzooVar = (zzoo) this.zza.get(str);
        if (zzooVar != null) {
            zzooVar.zzc(zzpc.zza);
        }
    }

    public final /* synthetic */ boolean zzb(Collection collection) {
        boolean zZzb = false;
        if (collection != null) {
            if (collection.isEmpty()) {
                return false;
            }
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                zzoo zzooVar = (zzoo) this.zza.get((String) it.next());
                if (zzooVar != null) {
                    zZzb |= zzooVar.zzb();
                }
            }
        }
        return zZzb;
    }

    public final zzoo zzc(final zzlk zzlkVar, final zzon zzonVar, String str) {
        final zzpd zzpdVar = new zzpd(null);
        ConcurrentMap concurrentMap = this.zza;
        String strZza = zzonVar.zza(zzlkVar.zzc());
        final String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        zzoo zzooVar = (zzoo) concurrentMap.computeIfAbsent(strZza, new Function(zzonVar, str2, zzpdVar) { // from class: com.google.android.gms.internal.measurement.zzpb
            private final /* synthetic */ zzon zzb;
            private final /* synthetic */ zzpd zzc;

            {
                this.zzc = zzpdVar;
            }

            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                zzoo zzooVar2 = new zzoo(new zzpg(this.zza, this.zzb, _UrlKt.FRAGMENT_ENCODE_SET, null), null);
                this.zzc.zzb(true);
                return zzooVar2;
            }
        });
        if (zzpdVar.zza()) {
            zzd(zzlkVar, zzonVar);
        }
        return zzooVar;
    }

    public /* synthetic */ zzpe(byte[] bArr) {
    }
}
