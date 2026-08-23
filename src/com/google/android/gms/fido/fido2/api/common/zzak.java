package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzfv;
import com.google.android.gms.internal.fido.zzfx;
import com.google.android.gms.internal.fido.zzgj;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzak> CREATOR = new zzal();
    private static final byte[] zza = "WebAuthn PRF\u0000".getBytes(StandardCharsets.UTF_8);
    private final byte[][] zzb;

    public zzak(byte[][] bArr) {
        Preconditions.checkArgument(bArr != null);
        Preconditions.checkArgument(1 == ((bArr.length & 1) ^ 1));
        int i = 0;
        while (i < bArr.length) {
            Preconditions.checkArgument(i == 0 || bArr[i] != null);
            int i2 = i + 1;
            Preconditions.checkArgument(bArr[i2] != null);
            int length = bArr[i2].length;
            Preconditions.checkArgument(length == 32 || length == 64);
            i += 2;
        }
        this.zzb = bArr;
    }

    public static zzak zza(JSONObject jSONObject, boolean z) throws JSONException {
        ArrayList arrayList = new ArrayList();
        try {
            if (jSONObject.has("eval")) {
                arrayList.add(null);
                if (z) {
                    arrayList.add(zzd(jSONObject.getJSONObject("eval")));
                } else {
                    arrayList.add(zze(jSONObject.getJSONObject("eval")));
                }
            }
            if (jSONObject.has("evalByCredential")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("evalByCredential");
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    arrayList.add(Base64Utils.decodeUrlSafeNoPadding(next));
                    if (z) {
                        arrayList.add(zzd(jSONObject2.getJSONObject(next)));
                    } else {
                        arrayList.add(zze(jSONObject2.getJSONObject(next)));
                    }
                }
            }
            return new zzak((byte[][]) arrayList.toArray(new byte[0][]));
        } catch (IllegalArgumentException unused) {
            throw new JSONException("invalid base64url value");
        }
    }

    private static JSONObject zzb(byte[] bArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bArr.length == 32) {
            jSONObject.put("first", Base64Utils.encodeUrlSafeNoPadding(bArr));
            return jSONObject;
        }
        jSONObject.put("first", Base64.encodeToString(bArr, 0, 32, 11));
        jSONObject.put("second", Base64.encodeToString(bArr, 32, 32, 11));
        return jSONObject;
    }

    private static byte[] zzc(byte[] bArr) {
        zzfv zzfvVarZza = zzfx.zza().zza();
        zzfvVarZza.zza(zza);
        zzfvVarZza.zza(bArr);
        return zzfvVarZza.zzc().zzd();
    }

    private static byte[] zzd(JSONObject jSONObject) throws JSONException {
        byte[] bArrDecodeUrlSafeNoPadding = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("first"));
        if (bArrDecodeUrlSafeNoPadding.length != 32) {
            throw new JSONException("hashed PRF value with wrong length");
        }
        if (!jSONObject.has("second")) {
            return bArrDecodeUrlSafeNoPadding;
        }
        byte[] bArrDecodeUrlSafeNoPadding2 = Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("second"));
        if (bArrDecodeUrlSafeNoPadding2.length == 32) {
            return zzgj.zza(bArrDecodeUrlSafeNoPadding, bArrDecodeUrlSafeNoPadding2);
        }
        throw new JSONException("hashed PRF value with wrong length");
    }

    private static byte[] zze(JSONObject jSONObject) {
        byte[] bArrZzc = zzc(Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("first")));
        return !jSONObject.has("second") ? bArrZzc : zzgj.zza(bArrZzc, zzc(Base64Utils.decodeUrlSafeNoPadding(jSONObject.getString("second"))));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzak) {
            return Arrays.deepEquals(this.zzb, ((zzak) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (byte[] bArr : this.zzb) {
            if (bArr != null) {
                iHashCode ^= Objects.hashCode(bArr);
            }
        }
        return iHashCode;
    }

    public final String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            int i = 0;
            JSONObject jSONObject2 = null;
            while (true) {
                byte[][] bArr = this.zzb;
                if (i >= bArr.length) {
                    return "PrfExtension{" + jSONObject.toString() + "}";
                }
                if (bArr[i] == null) {
                    jSONObject.put("eval", zzb(bArr[i + 1]));
                } else {
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                        jSONObject.put("evalByCredential", jSONObject2);
                    }
                    jSONObject2.put(Base64Utils.encodeUrlSafeNoPadding(this.zzb[i]), zzb(this.zzb[i + 1]));
                }
                i += 2;
            }
        } catch (JSONException e) {
            return "PrfExtension{Exception:" + e.getMessage() + "}";
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        byte[][] bArr = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArrayArray(parcel, 1, bArr, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
