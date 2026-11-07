package com.google.android.gms.recaptchabase;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class ExecuteRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ExecuteRequest> CREATOR = new zzb();
    private String zza;
    private String zzb;

    public static final class Builder {
        private final ExecuteRequest zza = new ExecuteRequest(null);

        public ExecuteRequest build() {
            return this.zza;
        }

        public Builder setExecuteId(String str) {
            this.zza.zzb = str;
            return this;
        }

        public Builder setNonce(String str) {
            this.zza.zza = str;
            return this;
        }
    }

    public /* synthetic */ ExecuteRequest(zza zzaVar) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExecuteRequest) {
            ExecuteRequest executeRequest = (ExecuteRequest) obj;
            if (Objects.equal(this.zza, executeRequest.zza) && Objects.equal(this.zzb, executeRequest.zzb)) {
                return true;
            }
        }
        return false;
    }

    public String getExecuteId() {
        return this.zzb;
    }

    public String getNonce() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getNonce(), false);
        SafeParcelWriter.writeString(parcel, 2, getExecuteId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public ExecuteRequest(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
