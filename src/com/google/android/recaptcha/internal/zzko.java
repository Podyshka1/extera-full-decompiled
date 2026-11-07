package com.google.android.recaptcha.internal;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzko {
    private final Application zza;
    private final zzlg zzb;
    private final zzhl zzc;
    private final zzlj zzd;
    private final zzht zze;
    private final zzon zzf;
    private final zzkx zzg;
    private final zzkp zzh;
    private final zzif zzi;
    private final zzhq zzj;
    private final zzgy zzk;
    private final zzhu zzl;

    public zzko(Application application, zzhu zzhuVar, zzlg zzlgVar, zzhl zzhlVar, zzlj zzljVar, zzht zzhtVar, zzgy zzgyVar, zzon zzonVar, zzkx zzkxVar, zzkp zzkpVar, zzif zzifVar, zzid zzidVar, zzhq zzhqVar) {
        this.zza = application;
        this.zzl = zzhuVar;
        this.zzb = zzlgVar;
        this.zzc = zzhlVar;
        this.zzd = zzljVar;
        this.zze = zzhtVar;
        this.zzk = zzgyVar;
        this.zzf = zzonVar;
        this.zzg = zzkxVar;
        this.zzh = zzkpVar;
        this.zzi = zzifVar;
        this.zzj = zzhqVar;
    }

    private final zziz zzf(String str) {
        zzbi zzbiVar = new zzbi();
        Application application = this.zza;
        zzhu zzhuVar = this.zzl;
        zzby zzbyVar = new zzby(str, zzhuVar, this.zzj, zzbiVar, application, null, 32, null);
        return new zziz(new zziv(this.zzi, this.zzg, zzhuVar, zzbyVar), new zzio(this.zzf, this.zzh, new zzbh(zzbyVar, zzhuVar, application)), this.zzb);
    }

    public final zzlj zza() {
        return this.zzd;
    }

    public final zzht zzb() {
        return this.zze;
    }

    public final zzkn zzc(String str, zziw zziwVar) {
        return Intrinsics.areEqual(zziwVar, zziw.zza) ? new zzkh(zzf(str)) : new zzke(this.zzl, zzf(str), this.zzc);
    }

    public final zzgy zzd() {
        return this.zzk;
    }

    public final zzhu zze() {
        return this.zzl;
    }
}
