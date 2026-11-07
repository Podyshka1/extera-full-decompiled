package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zztd extends zztq {
    private Uri zza;
    private zzafc zzb;
    private Optional zzc = Optional.absent();
    private ImmutableList zzd;
    private zzuj zze;
    private boolean zzf;
    private byte zzg;

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zza(Uri uri) {
        if (uri != null) {
            this.zza = uri;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null uri");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzb(zzafc zzafcVar) {
        if (zzafcVar != null) {
            this.zzb = zzafcVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null schema");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzc(zztf zztfVar) {
        this.zzc = Optional.of(zztfVar);
        return this;
    }

    public final zztq zzd(zzuj zzujVar) {
        this.zze = zzujVar;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zze(boolean z) {
        this.zzf = true;
        this.zzg = (byte) (1 | this.zzg);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztq zzf(boolean z) {
        this.zzg = (byte) (this.zzg | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zztq
    public final zztr zzg() {
        Uri uri;
        zzafc zzafcVar;
        zzuj zzujVar;
        if (this.zzd == null) {
            this.zzd = ImmutableList.of();
        }
        if (this.zzg == 3 && (uri = this.zza) != null && (zzafcVar = this.zzb) != null && (zzujVar = this.zze) != null) {
            return new zzte(uri, zzafcVar, this.zzc, this.zzd, zzujVar, this.zzf, false, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" uri");
        }
        if (this.zzb == null) {
            sb.append(" schema");
        }
        if (this.zze == null) {
            sb.append(" variantConfig");
        }
        if ((this.zzg & 1) == 0) {
            sb.append(" useGeneratedExtensionRegistry");
        }
        if ((this.zzg & 2) == 0) {
            sb.append(" enableTracing");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
