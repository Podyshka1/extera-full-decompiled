package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.location.zzd;
import com.google.android.gms.internal.location.zzen;
import kotlin.jvm.internal.LongCompanionObject;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes5.dex */
public final class LastLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LastLocationRequest> CREATOR = new zzz();
    private final long zza;
    private final int zzb;
    private final boolean zzc;
    private final zzd zzd;

    public static final class Builder {
        private long zza = LongCompanionObject.MAX_VALUE;
        private int zzb = 0;
        private final boolean zzc = false;
        private final zzd zzd = null;

        public LastLocationRequest build() {
            return new LastLocationRequest(this.zza, this.zzb, this.zzc, this.zzd);
        }
    }

    public LastLocationRequest(long j, int i, boolean z, zzd zzdVar) {
        this.zza = j;
        this.zzb = i;
        this.zzc = z;
        this.zzd = zzdVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LastLocationRequest)) {
            return false;
        }
        LastLocationRequest lastLocationRequest = (LastLocationRequest) obj;
        return this.zza == lastLocationRequest.zza && this.zzb == lastLocationRequest.zzb && this.zzc == lastLocationRequest.zzc && Objects.equal(this.zzd, lastLocationRequest.zzd);
    }

    @Pure
    public int getGranularity() {
        return this.zzb;
    }

    @Pure
    public long getMaxUpdateAgeMillis() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), Integer.valueOf(this.zzb), Boolean.valueOf(this.zzc));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("LastLocationRequest[");
        long j = this.zza;
        if (j != LongCompanionObject.MAX_VALUE) {
            sb.append("maxAge=");
            zzen.zzc(j, sb);
        }
        int i = this.zzb;
        if (i != 0) {
            sb.append(", ");
            sb.append(zzp.zzb(i));
        }
        if (this.zzc) {
            sb.append(", bypass");
        }
        zzd zzdVar = this.zzd;
        if (zzdVar != null) {
            sb.append(", impersonation=");
            sb.append(zzdVar);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 2, getGranularity());
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
