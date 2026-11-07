package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlh implements zzlg {
    private final Application zza;
    private final StandardIntegrityManager zzb;
    private final zzgp zzc;
    private final zzon zzd;
    private final zzdv zze;
    private final zzip zzf;
    private final zzhq zzg;
    private final zzmv zzh;
    private final zzhr zzi;
    private final zzgy zzj;
    private final zzhu zzk;

    public zzlh(Application application, zzii zziiVar, zzgy zzgyVar, zzhu zzhuVar, StandardIntegrityManager standardIntegrityManager, zzgp zzgpVar, zzon zzonVar, zzhr zzhrVar, zzdv zzdvVar, zzip zzipVar, zzhq zzhqVar, zzmv zzmvVar) {
        this.zza = application;
        this.zzj = zzgyVar;
        this.zzk = zzhuVar;
        this.zzb = standardIntegrityManager;
        this.zzc = zzgpVar;
        this.zzd = zzonVar;
        this.zzi = zzhrVar;
        this.zze = zzdvVar;
        this.zzf = zzipVar;
        this.zzg = zzhqVar;
        this.zzh = zzmvVar;
    }

    private final zzcx zzb(boolean z) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(zzc(z));
        zzha zzhaVar = new zzha();
        zzfw zzfwVar = new zzfw();
        zzgp zzgpVar = this.zzc;
        zzhr zzhrVar = this.zzi;
        zzmv zzmvVar = this.zzh;
        zzhq zzhqVar = this.zzg;
        listCreateListBuilder.add(new zzgo(this.zza, this.zzk, zzhaVar, this.zzj, zzfwVar, zzgpVar, zzhrVar, zzmvVar, zzhqVar));
        listCreateListBuilder.add(this.zzf.zza());
        return new zzcx(new zzct(CollectionsKt.build(listCreateListBuilder)));
    }

    private final zzeo zzc(boolean z) {
        Application application = this.zza;
        return zzei.zza(application, this.zzk, application.getContentResolver(), this.zzb, this.zzc, this.zzi, z);
    }

    @Override // com.google.android.recaptcha.internal.zzlg
    public final zzdp zza(boolean z) {
        if (!z) {
            return zzb(true);
        }
        zzcx zzcxVarZzb = zzb(false);
        zzct zzctVar = new zzct(CollectionsKt.listOf(zzc(true)));
        zzon zzonVar = this.zzd;
        return new zzdo(zzcxVarZzb, zzctVar, zzonVar.zzb(), this.zze, this.zzk);
    }
}
