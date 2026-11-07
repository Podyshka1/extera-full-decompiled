package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableList;
import java.util.UUID;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzvo extends zzwv {
    private ImmutableList zza;
    private ImmutableList zzb;
    private UUID zzc;
    private long zzd;
    private byte zze;

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zza(ImmutableList immutableList) {
        if (immutableList != null) {
            this.zza = immutableList;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null spansNames");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzb(ImmutableList immutableList) {
        if (immutableList != null) {
            this.zzb = immutableList;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null extras");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzc(UUID uuid) {
        if (uuid != null) {
            this.zzc = uuid;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null rootTraceId");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzwv zzd(long j) {
        this.zzd = -1L;
        this.zze = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzwv
    public final zzww zze() {
        ImmutableList immutableList;
        ImmutableList immutableList2;
        UUID uuid;
        if (this.zze == 1 && (immutableList = this.zza) != null && (immutableList2 = this.zzb) != null && (uuid = this.zzc) != null) {
            return new zzvp(immutableList, immutableList2, uuid, this.zzd, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" spansNames");
        }
        if (this.zzb == null) {
            sb.append(" extras");
        }
        if (this.zzc == null) {
            sb.append(" rootTraceId");
        }
        if (this.zze == 0) {
            sb.append(" rootDurationMs");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
