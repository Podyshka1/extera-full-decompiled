package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgx;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorAssertionResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAssertionResponse> CREATOR = new zzj();
    private final zzgx zza;
    private final zzgx zzb;
    private final zzgx zzc;
    private final zzgx zzd;
    private final zzgx zze;

    AuthenticatorAssertionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.zzb;
        zzgx zzgxVarZzl = zzgx.zzl(bArr6, 0, bArr6.length);
        byte[] bArr7 = (byte[]) Preconditions.checkNotNull(bArr2);
        zzgx zzgxVarZzl2 = zzgx.zzl(bArr7, 0, bArr7.length);
        byte[] bArr8 = (byte[]) Preconditions.checkNotNull(bArr3);
        zzgx zzgxVarZzl3 = zzgx.zzl(bArr8, 0, bArr8.length);
        byte[] bArr9 = (byte[]) Preconditions.checkNotNull(bArr4);
        zzgx zzgxVarZzl4 = zzgx.zzl(bArr9, 0, bArr9.length);
        zzgx zzgxVarZzl5 = bArr5 == null ? null : zzgx.zzl(bArr5, 0, bArr5.length);
        this.zza = (zzgx) Preconditions.checkNotNull(zzgxVarZzl);
        this.zzb = (zzgx) Preconditions.checkNotNull(zzgxVarZzl2);
        this.zzc = (zzgx) Preconditions.checkNotNull(zzgxVarZzl3);
        this.zzd = (zzgx) Preconditions.checkNotNull(zzgxVarZzl4);
        this.zze = zzgxVarZzl5;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAssertionResponse)) {
            return false;
        }
        AuthenticatorAssertionResponse authenticatorAssertionResponse = (AuthenticatorAssertionResponse) obj;
        return Objects.equal(this.zza, authenticatorAssertionResponse.zza) && Objects.equal(this.zzb, authenticatorAssertionResponse.zzb) && Objects.equal(this.zzc, authenticatorAssertionResponse.zzc) && Objects.equal(this.zzd, authenticatorAssertionResponse.zzd) && Objects.equal(this.zze, authenticatorAssertionResponse.zze);
    }

    public byte[] getAuthenticatorData() {
        return this.zzc.zzm();
    }

    public byte[] getClientDataJSON() {
        return this.zzb.zzm();
    }

    public byte[] getKeyHandle() {
        return this.zza.zzm();
    }

    public byte[] getSignature() {
        return this.zzd.zzm();
    }

    public byte[] getUserHandle() {
        zzgx zzgxVar = this.zze;
        if (zzgxVar == null) {
            return null;
        }
        return zzgxVar.zzm();
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.zza)), Integer.valueOf(Objects.hashCode(this.zzb)), Integer.valueOf(Objects.hashCode(this.zzc)), Integer.valueOf(Objects.hashCode(this.zzd)), Integer.valueOf(Objects.hashCode(this.zze)));
    }

    public String toString() {
        zzbi zzbiVarZza = zzbj.zza(this);
        zzgf zzgfVarZzf = zzgf.zzf();
        byte[] keyHandle = getKeyHandle();
        zzbiVarZza.zzb("keyHandle", zzgfVarZzf.zzg(keyHandle, 0, keyHandle.length));
        zzgf zzgfVarZzf2 = zzgf.zzf();
        byte[] clientDataJSON = getClientDataJSON();
        zzbiVarZza.zzb("clientDataJSON", zzgfVarZzf2.zzg(clientDataJSON, 0, clientDataJSON.length));
        zzgf zzgfVarZzf3 = zzgf.zzf();
        byte[] authenticatorData = getAuthenticatorData();
        zzbiVarZza.zzb("authenticatorData", zzgfVarZzf3.zzg(authenticatorData, 0, authenticatorData.length));
        zzgf zzgfVarZzf4 = zzgf.zzf();
        byte[] signature = getSignature();
        zzbiVarZza.zzb("signature", zzgfVarZzf4.zzg(signature, 0, signature.length));
        byte[] userHandle = getUserHandle();
        if (userHandle != null) {
            zzbiVarZza.zzb("userHandle", zzgf.zzf().zzg(userHandle, 0, userHandle.length));
        }
        return zzbiVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getAuthenticatorData(), false);
        SafeParcelWriter.writeByteArray(parcel, 5, getSignature(), false);
        SafeParcelWriter.writeByteArray(parcel, 6, getUserHandle(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONObject zza() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("clientDataJSON", Base64Utils.encodeUrlSafeNoPadding(getClientDataJSON()));
            jSONObject.put("authenticatorData", Base64Utils.encodeUrlSafeNoPadding(getAuthenticatorData()));
            jSONObject.put("signature", Base64Utils.encodeUrlSafeNoPadding(getSignature()));
            if (this.zze == null) {
                return jSONObject;
            }
            jSONObject.put("userHandle", Base64Utils.encodeUrlSafeNoPadding(getUserHandle()));
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException("Error encoding AuthenticatorAssertionResponse to JSON object", e);
        }
    }
}
