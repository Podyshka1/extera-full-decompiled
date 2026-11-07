package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzahg implements zzahf {

    @Deprecated
    public static final zzom zza;

    @Deprecated
    public static final zzom zzb;

    @Deprecated
    public static final zzom zzc;

    static {
        zzog zzogVarZzc = zzagr.zzc();
        zza = zzogVarZzc.zzd("45761323", _UrlKt.FRAGMENT_ENCODE_SET);
        zzb = zzogVarZzc.zzd("45762029", _UrlKt.FRAGMENT_ENCODE_SET);
        zzc = zzogVarZzc.zzd("45762030", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    @Override // com.google.android.gms.internal.measurement.zzahf
    public final String zza() {
        return (String) zza.get();
    }

    @Override // com.google.android.gms.internal.measurement.zzahf
    public final String zzb() {
        return (String) zzb.get();
    }

    @Override // com.google.android.gms.internal.measurement.zzahf
    public final String zzc() {
        return (String) zzc.get();
    }
}
