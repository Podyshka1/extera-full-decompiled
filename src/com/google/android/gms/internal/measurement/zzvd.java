package com.google.android.gms.internal.measurement;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzvd extends zzve {
    private final zzafc zza;
    private final zzadf zzb;

    public zzvd(zzafc zzafcVar, zzadf zzadfVar) {
        this.zza = zzafcVar;
        if (zzadfVar != null) {
            this.zzb = zzadfVar;
        } else {
            f$$ExternalSyntheticBUOutline2.m179m("Null extensionRegistryLite");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzve) {
            zzve zzveVar = (zzve) obj;
            if (this.zza.equals(zzveVar.zzb()) && this.zzb.equals(zzveVar.zzc())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        return this.zzb.hashCode() ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 53 + string2.length() + 1);
        sb.append("ProtoSerializer{defaultValue=");
        sb.append(string);
        sb.append(", extensionRegistryLite=");
        sb.append(string2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zztv
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzafc zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzve
    public final zzadf zzc() {
        return this.zzb;
    }
}
