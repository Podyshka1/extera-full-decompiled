package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorErrorResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorErrorResponse> CREATOR = new zzl();
    private final ErrorCode zza;
    private final String zzb;
    private final int zzc;

    AuthenticatorErrorResponse(int i, String str, int i2) {
        try {
            this.zza = ErrorCode.toErrorCode(i);
            this.zzb = str;
            this.zzc = i2;
        } catch (ErrorCode.UnsupportedErrorCodeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorErrorResponse)) {
            return false;
        }
        AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
        return Objects.equal(this.zza, authenticatorErrorResponse.zza) && Objects.equal(this.zzb, authenticatorErrorResponse.zzb) && Objects.equal(Integer.valueOf(this.zzc), Integer.valueOf(authenticatorErrorResponse.zzc));
    }

    public ErrorCode getErrorCode() {
        return this.zza;
    }

    public int getErrorCodeAsInt() {
        return this.zza.getCode();
    }

    public String getErrorMessage() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, Integer.valueOf(this.zzc));
    }

    public String toString() {
        zzbi zzbiVarZza = zzbj.zza(this);
        zzbiVarZza.zza("errorCode", this.zza.getCode());
        String str = this.zzb;
        if (str != null) {
            zzbiVarZza.zzb("errorMessage", str);
        }
        return zzbiVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getErrorCodeAsInt());
        SafeParcelWriter.writeString(parcel, 3, getErrorMessage(), false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONObject zza() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", this.zza.getCode());
            String str = this.zzb;
            if (str == null) {
                return jSONObject;
            }
            jSONObject.put("message", str);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException("Error encoding AuthenticatorErrorResponse to JSON object", e);
        }
    }
}
