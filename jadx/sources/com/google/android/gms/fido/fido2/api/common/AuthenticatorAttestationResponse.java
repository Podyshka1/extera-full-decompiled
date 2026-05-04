package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import com.google.android.gms.internal.fido.zzgj;
import com.google.android.gms.internal.fido.zzgx;
import com.google.android.gms.internal.fido.zzhj;
import com.google.android.gms.internal.fido.zzhm;
import com.google.android.gms.internal.fido.zzho;
import com.google.android.gms.internal.fido.zzhp;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorAttestationResponse extends AuthenticatorResponse {
    public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new zzk();
    private final zzgx zza;
    private final zzgx zzb;
    private final zzgx zzc;
    private final String[] zzd;

    AuthenticatorAttestationResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
        byte[] bArr4 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.zzb;
        zzgx zzgxVarZzl = zzgx.zzl(bArr4, 0, bArr4.length);
        byte[] bArr5 = (byte[]) Preconditions.checkNotNull(bArr2);
        zzgx zzgxVarZzl2 = zzgx.zzl(bArr5, 0, bArr5.length);
        byte[] bArr6 = (byte[]) Preconditions.checkNotNull(bArr3);
        zzgx zzgxVarZzl3 = zzgx.zzl(bArr6, 0, bArr6.length);
        this.zza = (zzgx) Preconditions.checkNotNull(zzgxVarZzl);
        this.zzb = (zzgx) Preconditions.checkNotNull(zzgxVarZzl2);
        this.zzc = (zzgx) Preconditions.checkNotNull(zzgxVarZzl3);
        this.zzd = (String[]) Preconditions.checkNotNull(strArr);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorAttestationResponse)) {
            return false;
        }
        AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
        return Objects.equal(this.zza, authenticatorAttestationResponse.zza) && Objects.equal(this.zzb, authenticatorAttestationResponse.zzb) && Objects.equal(this.zzc, authenticatorAttestationResponse.zzc);
    }

    public byte[] getAttestationObject() {
        return this.zzc.zzm();
    }

    public byte[] getClientDataJSON() {
        return this.zzb.zzm();
    }

    public byte[] getKeyHandle() {
        return this.zza.zzm();
    }

    public String[] getTransports() {
        return this.zzd;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Objects.hashCode(this.zza)), Integer.valueOf(Objects.hashCode(this.zzb)), Integer.valueOf(Objects.hashCode(this.zzc)));
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
        byte[] attestationObject = getAttestationObject();
        zzbiVarZza.zzb("attestationObject", zzgfVarZzf3.zzg(attestationObject, 0, attestationObject.length));
        zzbiVarZza.zzb("transports", Arrays.toString(this.zzd));
        return zzbiVarZza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getAttestationObject(), false);
        SafeParcelWriter.writeStringArray(parcel, 5, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0125 A[Catch: JSONException -> 0x0019, zzho -> 0x0197, TRY_LEAVE, TryCatch #6 {zzho -> 0x0197, blocks: (B:33:0x00f4, B:39:0x0113, B:41:0x0125, B:46:0x013d, B:49:0x015f, B:51:0x0175, B:53:0x017b, B:56:0x019a, B:57:0x019f, B:58:0x01a0, B:59:0x01a5, B:64:0x01b0, B:66:0x01c0, B:68:0x01ce, B:69:0x01e3, B:70:0x01e8, B:71:0x01e9, B:72:0x01ee, B:77:0x020d, B:78:0x0212), top: B:110:0x00f4, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x020d A[Catch: JSONException -> 0x0019, zzho -> 0x0197, TRY_ENTER, TryCatch #6 {zzho -> 0x0197, blocks: (B:33:0x00f4, B:39:0x0113, B:41:0x0125, B:46:0x013d, B:49:0x015f, B:51:0x0175, B:53:0x017b, B:56:0x019a, B:57:0x019f, B:58:0x01a0, B:59:0x01a5, B:64:0x01b0, B:66:0x01c0, B:68:0x01ce, B:69:0x01e3, B:70:0x01e8, B:71:0x01e9, B:72:0x01ee, B:77:0x020d, B:78:0x0212), top: B:110:0x00f4, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final JSONObject zza() {
        zzhp zzhpVar;
        byte[] bArrZza;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.zzb != null) {
                jSONObject.put("clientDataJSON", Base64Utils.encodeUrlSafeNoPadding(getClientDataJSON()));
            }
            if (this.zzc != null) {
                jSONObject.put("attestationObject", Base64Utils.encodeUrlSafeNoPadding(getAttestationObject()));
            }
            JSONArray jSONArray = new JSONArray();
            int i = 0;
            while (true) {
                String[] strArr = this.zzd;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i].equals(Transport.HYBRID.toString())) {
                    jSONArray.put(i, "hybrid");
                } else {
                    jSONArray.put(i, this.zzd[i]);
                }
                i++;
            }
            jSONObject.put("transports", jSONArray);
            try {
                try {
                    zzhp zzhpVar2 = (zzhp) zzhp.zzj(getAttestationObject()).zzh().zzc().get(zzhp.zzi("authData"));
                    if (zzhpVar2 == null) {
                        throw new IllegalArgumentException("attestation object missing authData");
                    }
                    zzgx zzgxVarZzc = zzhpVar2.zze().zzc();
                    ByteBuffer byteBufferZzi = zzgxVarZzc.zzi();
                    try {
                        byteBufferZzi.position(byteBufferZzi.position() + 32);
                        if ((byteBufferZzi.get() & 64) == 0) {
                            throw new IllegalArgumentException("authData does not include credential data");
                        }
                        byteBufferZzi.position(byteBufferZzi.position() + 4);
                        byteBufferZzi.position(byteBufferZzi.position() + 16);
                        byteBufferZzi.position(byteBufferZzi.position() + byteBufferZzi.getShort());
                        try {
                            zzhm zzhmVarZzh = zzhp.zzk(zzgxVarZzc.zzg(byteBufferZzi.position(), zzgxVarZzc.zzd()).zzh()).zzh();
                            zzhp zzhpVar3 = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(3L));
                            zzhp zzhpVar4 = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(1L));
                            if (zzhpVar3 == null || zzhpVar4 == null) {
                                throw new IllegalArgumentException("COSE key missing required fields");
                            }
                            try {
                                long jZzc = zzhpVar3.zzf().zzc();
                                long jZzc2 = zzhpVar4.zzf().zzc();
                                if (jZzc2 == 1) {
                                    zzhpVar = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(-1L));
                                    if (zzhpVar != null) {
                                        throw new IllegalArgumentException("COSE key missing required fields");
                                    }
                                    long jZzc3 = zzhpVar.zzf().zzc();
                                    if (jZzc2 == 2 && jZzc3 == 1) {
                                        zzhp zzhpVar5 = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(-2L));
                                        zzhp zzhpVar6 = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(-3L));
                                        if (zzhpVar5 == null || zzhpVar6 == null) {
                                            throw new IllegalArgumentException("COSE key missing required fields");
                                        }
                                        zzgx zzgxVarZzc2 = zzhpVar5.zze().zzc();
                                        zzgx zzgxVarZzc3 = zzhpVar6.zze().zzc();
                                        if (zzgxVarZzc2.zzd() != 32 || zzgxVarZzc3.zzd() != 32) {
                                            throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                        }
                                        bArrZza = zzgj.zza(Base64.decode("MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE", 0), zzgxVarZzc2.zzm(), zzgxVarZzc3.zzm());
                                    } else if (jZzc2 == 1 && jZzc3 == 6) {
                                        zzhp zzhpVar7 = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(-2L));
                                        if (zzhpVar7 == null) {
                                            throw new IllegalArgumentException("COSE key missing required fields");
                                        }
                                        zzgx zzgxVarZzc4 = zzhpVar7.zze().zzc();
                                        if (zzgxVarZzc4.zzd() != 32) {
                                            throw new IllegalArgumentException("COSE coordinates are the wrong size");
                                        }
                                        bArrZza = zzgj.zza(Base64.decode("MCowBQYDK2VwAyEA", 0), zzgxVarZzc4.zzm());
                                    } else {
                                        bArrZza = null;
                                    }
                                } else {
                                    if (jZzc2 == 2) {
                                        jZzc2 = 2;
                                        zzhpVar = (zzhp) zzhmVarZzh.zzc().get(zzhp.zzg(-1L));
                                        if (zzhpVar != null) {
                                        }
                                    }
                                    bArrZza = null;
                                }
                                jSONObject.put("authenticatorData", Base64Utils.encodeUrlSafeNoPadding(zzgxVarZzc.zzm()));
                                jSONObject.put("publicKeyAlgorithm", jZzc);
                                if (bArrZza != null) {
                                    jSONObject.put("publicKey", Base64Utils.encodeUrlSafeNoPadding(bArrZza));
                                }
                                return jSONObject;
                            } catch (zzho e) {
                                throw new IllegalArgumentException("COSE key ill-formed", e);
                            }
                        } catch (zzhj e2) {
                            e = e2;
                            throw new IllegalArgumentException("failed to parse COSE key", e);
                        } catch (zzho e3) {
                            e = e3;
                            throw new IllegalArgumentException("failed to parse COSE key", e);
                        }
                    } catch (IllegalArgumentException e4) {
                        throw new IllegalArgumentException("ill-formed authenticator data", e4);
                    }
                } catch (zzho e5) {
                    throw new IllegalArgumentException("authData value has wrong type", e5);
                }
            } catch (zzhj e6) {
                e = e6;
                throw new IllegalArgumentException("failed to parse attestation object", e);
            } catch (zzho e7) {
                e = e7;
                throw new IllegalArgumentException("failed to parse attestation object", e);
            }
        } catch (JSONException e8) {
            throw new RuntimeException("Error encoding AuthenticatorAttestationResponse to JSON object", e8);
        }
    }
}
