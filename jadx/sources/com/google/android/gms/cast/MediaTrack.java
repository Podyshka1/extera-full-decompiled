package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaTrack> CREATOR = new zzcn();
    String zza;
    private final long zzb;
    private final int zzc;
    private String zzd;
    private String zze;
    private final String zzf;
    private final String zzg;
    private final int zzh;
    private final List zzi;
    private final JSONObject zzj;

    MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, List list, JSONObject jSONObject) {
        this.zzb = j;
        this.zzc = i;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = str4;
        this.zzh = i2;
        this.zzi = list;
        this.zzj = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        JSONObject jSONObject = this.zzj;
        boolean z = jSONObject == null;
        JSONObject jSONObject2 = mediaTrack.zzj;
        if (z != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.zzb == mediaTrack.zzb && this.zzc == mediaTrack.zzc && CastUtils.zze(this.zzd, mediaTrack.zzd) && CastUtils.zze(this.zze, mediaTrack.zze) && CastUtils.zze(this.zzf, mediaTrack.zzf) && CastUtils.zze(this.zzg, mediaTrack.zzg) && this.zzh == mediaTrack.zzh && CastUtils.zze(this.zzi, mediaTrack.zzi);
    }

    public String getContentId() {
        return this.zzd;
    }

    public String getContentType() {
        return this.zze;
    }

    public long getId() {
        return this.zzb;
    }

    public String getLanguage() {
        return this.zzg;
    }

    public String getName() {
        return this.zzf;
    }

    public List getRoles() {
        return this.zzi;
    }

    public int getSubtype() {
        return this.zzh;
    }

    public int getType() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd, this.zze, this.zzf, this.zzg, Integer.valueOf(this.zzh), this.zzi, String.valueOf(this.zzj));
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.zzb);
            int i = this.zzc;
            if (i == 1) {
                jSONObject.put("type", "TEXT");
            } else if (i == 2) {
                jSONObject.put("type", "AUDIO");
            } else if (i == 3) {
                jSONObject.put("type", "VIDEO");
            }
            String str = this.zzd;
            if (str != null) {
                jSONObject.put("trackContentId", str);
            }
            String str2 = this.zze;
            if (str2 != null) {
                jSONObject.put("trackContentType", str2);
            }
            String str3 = this.zzf;
            if (str3 != null) {
                jSONObject.put("name", str3);
            }
            if (!TextUtils.isEmpty(this.zzg)) {
                jSONObject.put("language", this.zzg);
            }
            int i2 = this.zzh;
            if (i2 == 1) {
                jSONObject.put("subtype", "SUBTITLES");
            } else if (i2 == 2) {
                jSONObject.put("subtype", "CAPTIONS");
            } else if (i2 == 3) {
                jSONObject.put("subtype", "DESCRIPTIONS");
            } else if (i2 == 4) {
                jSONObject.put("subtype", "CHAPTERS");
            } else if (i2 == 5) {
                jSONObject.put("subtype", "METADATA");
            }
            if (this.zzi != null) {
                jSONObject.put("roles", new JSONArray((Collection) this.zzi));
            }
            JSONObject jSONObject2 = this.zzj;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzj;
        this.zza = jSONObject == null ? null : jSONObject.toString();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getId());
        SafeParcelWriter.writeInt(parcel, 3, getType());
        SafeParcelWriter.writeString(parcel, 4, getContentId(), false);
        SafeParcelWriter.writeString(parcel, 5, getContentType(), false);
        SafeParcelWriter.writeString(parcel, 6, getName(), false);
        SafeParcelWriter.writeString(parcel, 7, getLanguage(), false);
        SafeParcelWriter.writeInt(parcel, 8, getSubtype());
        SafeParcelWriter.writeStringList(parcel, 9, getRoles(), false);
        SafeParcelWriter.writeString(parcel, 10, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
