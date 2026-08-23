package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApiMetadata> CREATOR = zza.zza();
    private static final ApiMetadata zza = newBuilder().build();
    private final ComplianceOptions zzb;

    public static final class Builder {
        private ComplianceOptions zza;

        public ApiMetadata build() {
            return new ApiMetadata(this.zza);
        }

        public Builder setComplianceOptions(ComplianceOptions complianceOptions) {
            this.zza = complianceOptions;
            return this;
        }
    }

    ApiMetadata(ComplianceOptions complianceOptions) {
        this.zzb = complianceOptions;
    }

    public static final ApiMetadata fromComplianceOptions(ComplianceOptions complianceOptions) {
        Builder builderNewBuilder = newBuilder();
        builderNewBuilder.setComplianceOptions(complianceOptions);
        return builderNewBuilder.build();
    }

    public static final ApiMetadata getEmptyInstance() {
        return zza;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ApiMetadata) {
            return Objects.equals(this.zzb, ((ApiMetadata) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzb);
    }

    public final String toString() {
        return "ApiMetadata(complianceOptions=" + String.valueOf(this.zzb) + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(-204102970);
        ComplianceOptions complianceOptions = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, complianceOptions, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
