package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaError extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaError> CREATOR = new zzbx();
    String zza;
    private String zzb;
    private long zzc;
    private final Integer zzd;
    private final String zze;
    private final JSONObject zzf;

    public MediaError(String str, long j, Integer num, String str2, JSONObject jSONObject) {
        this.zzb = str;
        this.zzc = j;
        this.zzd = num;
        this.zze = str2;
        this.zzf = jSONObject;
    }

    public static MediaError zza(JSONObject jSONObject) {
        return new MediaError(jSONObject.optString("type", "ERROR"), jSONObject.optLong("requestId"), jSONObject.has("detailedErrorCode") ? Integer.valueOf(jSONObject.optInt("detailedErrorCode")) : null, CastUtils.optStringOrNull(jSONObject, "reason"), jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null);
    }

    public Integer getDetailedErrorCode() {
        return this.zzd;
    }

    public String getReason() {
        return this.zze;
    }

    public long getRequestId() {
        return this.zzc;
    }

    public String getType() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzf;
        this.zza = jSONObject == null ? null : jSONObject.toString();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getType(), false);
        SafeParcelWriter.writeLong(parcel, 3, getRequestId());
        SafeParcelWriter.writeIntegerObject(parcel, 4, getDetailedErrorCode(), false);
        SafeParcelWriter.writeString(parcel, 5, getReason(), false);
        SafeParcelWriter.writeString(parcel, 6, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
