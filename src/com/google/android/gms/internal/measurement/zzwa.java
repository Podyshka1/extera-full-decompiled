package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.UUID;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzwa extends zzwb {
    public zzwa() {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzwb
    public final zzwi zza(String str, zzxd zzxdVar) {
        boolean z;
        zzwq zzwqVar;
        zzws zzwsVarZzg;
        zzwl zzwlVar = zzwk.zza;
        Preconditions.checkNotNull(zzxdVar);
        zzwq zzwqVarZzd = zzvy.zzd();
        zzws zzwsVar = zzwqVarZzd.zzb;
        final Exception exc = null;
        if (zzwsVar == zzwg.zza) {
            zzvy.zzc(zzwqVarZzd, null);
            z = true;
            zzwsVar = null;
        } else {
            z = false;
        }
        if (zzwsVar == null) {
            final UUID uuidZzc = zzvz.zza().zzc();
            String strZzcL = zzvn.zzcL(uuidZzc);
            zzvq zzvqVar = zzwd.zza;
            ImmutableSet immutableSetZza = zzvy.zza();
            if (!immutableSetZza.isEmpty()) {
                immutableSetZza.forEach(new Consumer(uuidZzc, exc) { // from class: com.google.android.gms.internal.measurement.zzwe
                    @Override // java.util.function.Consumer
                    public final /* synthetic */ void accept(Object obj) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                        throw null;
                    }
                });
            }
            zzwqVar = zzwqVarZzd;
            zzwsVarZzg = new zzwf(uuidZzc, strZzcL, str, zzwlVar, zzvqVar, false, false, zzwqVar);
        } else {
            zzwqVar = zzwqVarZzd;
            zzwsVarZzg = zzwsVar instanceof zzvs ? ((zzvs) zzwsVar).zzg(str, zzwlVar, false, zzwqVar) : zzwsVar.zzj(str, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, 0, zzwlVar, zzwqVar);
        }
        zzvy.zzc(zzwqVar, zzwsVarZzg);
        return new zzwi(zzwsVarZzg, z);
    }
}
