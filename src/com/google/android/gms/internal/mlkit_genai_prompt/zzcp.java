package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcp extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzcp> CREATOR = new zzcq();
    private final int zza;
    private final String zzb;
    private final String zzc;
    private final Boolean zzd;
    private final List zze;
    private final zzcp zzf;
    private final Long zzg;
    private final Long zzh;
    private final List zzi;
    private final Long zzj;
    private final Long zzk;
    private final Double zzl;
    private final Double zzm;
    private final Long zzn;
    private final Long zzo;
    private final String zzp;
    private final List zzq;
    private final List zzr;
    private final String zzs;
    private final Bundle zzt;

    public zzcp(int i, String str, String str2, Boolean bool, List list, zzcp zzcpVar, Long l, Long l2, List list2, Long l3, Long l4, Double d, Double d2, Long l5, Long l6, String str3, List list3, List list4, String str4, Bundle bundle) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = bool;
        this.zze = list;
        this.zzf = zzcpVar;
        this.zzg = l;
        this.zzh = l2;
        this.zzi = list2;
        this.zzj = l3;
        this.zzk = l4;
        this.zzl = d;
        this.zzm = d2;
        this.zzn = l5;
        this.zzo = l6;
        this.zzp = str3;
        this.zzq = list3;
        this.zzr = list4;
        this.zzs = str4;
        this.zzt = bundle;
    }

    public static zzco zzu() {
        zzu zzuVar = new zzu();
        zzuVar.zza(0);
        return zzuVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzcq.zza(this, parcel, i);
    }

    public final int zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }

    public final Boolean zzd() {
        return this.zzd;
    }

    public final List zze() {
        return this.zze;
    }

    public final zzcp zzf() {
        return this.zzf;
    }

    public final Long zzg() {
        return this.zzg;
    }

    public final Long zzh() {
        return this.zzh;
    }

    public final List zzi() {
        return this.zzi;
    }

    public final Long zzj() {
        return this.zzj;
    }

    public final Long zzk() {
        return this.zzk;
    }

    public final Double zzl() {
        return this.zzl;
    }

    public final Double zzm() {
        return this.zzm;
    }

    public final Long zzn() {
        return this.zzn;
    }

    public final Long zzo() {
        return this.zzo;
    }

    public final String zzp() {
        return this.zzp;
    }

    public final List zzq() {
        return this.zzq;
    }

    public final List zzr() {
        return this.zzr;
    }

    public final String zzs() {
        return this.zzs;
    }

    public final Bundle zzt() {
        return this.zzt;
    }
}
