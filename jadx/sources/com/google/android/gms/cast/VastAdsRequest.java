package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class VastAdsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<VastAdsRequest> CREATOR = new zzdt();
    private final String zza;
    private final String zzb;

    VastAdsRequest(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public static VastAdsRequest fromJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new VastAdsRequest(CastUtils.optStringOrNull(jSONObject, "adTagUrl"), CastUtils.optStringOrNull(jSONObject, "adsResponse"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastAdsRequest)) {
            return false;
        }
        VastAdsRequest vastAdsRequest = (VastAdsRequest) obj;
        return CastUtils.zze(this.zza, vastAdsRequest.zza) && CastUtils.zze(this.zzb, vastAdsRequest.zzb);
    }

    public String getAdTagUrl() {
        return this.zza;
    }

    public String getAdsResponse() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAdTagUrl(), false);
        SafeParcelWriter.writeString(parcel, 3, getAdsResponse(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.zza;
            if (str != null) {
                jSONObject.put("adTagUrl", str);
            }
            String str2 = this.zzb;
            if (str2 != null) {
                jSONObject.put("adsResponse", str2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
