package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.internal.cast.zzhv;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaTrack> CREATOR = new zzca();
    public static final String ROLE_ALTERNATE = "alternate";
    public static final String ROLE_CAPTION = "caption";
    public static final String ROLE_COMMENTARY = "commentary";
    public static final String ROLE_DESCRIPTION = "description";
    public static final String ROLE_DUB = "dub";
    public static final String ROLE_EMERGENCY = "emergency";
    public static final String ROLE_FORCED_SUBTITLE = "forced_subtitle";
    public static final String ROLE_MAIN = "main";
    public static final String ROLE_SIGN = "sign";
    public static final String ROLE_SUBTITLE = "subtitle";
    public static final String ROLE_SUPPLEMENTARY = "supplementary";
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
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

    public static class Builder {
        private final long zza;
        private final int zzb;
        private String zzc;
        private String zzd;
        private String zze;
        private String zzf;
        private int zzg = 0;
        private List zzh;
        private JSONObject zzi;

        public Builder(long j, int i) {
            this.zza = j;
            this.zzb = i;
        }

        public MediaTrack build() {
            return new MediaTrack(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
        }

        public Builder setContentId(String str) {
            this.zzc = str;
            return this;
        }

        public Builder setContentType(String str) {
            this.zzd = str;
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzi = jSONObject;
            return this;
        }

        public Builder setLanguage(String str) {
            this.zzf = str;
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.zzf = CastUtils.zzd(locale);
            return this;
        }

        public Builder setName(String str) {
            this.zze = str;
            return this;
        }

        public Builder setRoles(List<String> list) {
            if (list != null) {
                list = zzhv.zzj(list);
            }
            this.zzh = list;
            return this;
        }

        public Builder setSubtype(int i) {
            if (i < -1 || i > 5) {
                zzar$$ExternalSyntheticBUOutline1.m292m(String.valueOf(i).length() + 16, "invalid subtype ", i);
                return null;
            }
            if (i == 0 || this.zzb == 1) {
                this.zzg = i;
                return this;
            }
            f$$ExternalSyntheticBUOutline1.m178m("subtypes are only valid for text tracks");
            return null;
        }
    }

    public MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, List list, JSONObject jSONObject) {
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
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.zzb == mediaTrack.zzb && this.zzc == mediaTrack.zzc && CastUtils.zza(this.zzd, mediaTrack.zzd) && CastUtils.zza(this.zze, mediaTrack.zze) && CastUtils.zza(this.zzf, mediaTrack.zzf) && CastUtils.zza(this.zzg, mediaTrack.zzg) && this.zzh == mediaTrack.zzh && CastUtils.zza(this.zzi, mediaTrack.zzi);
    }

    public String getContentId() {
        return this.zzd;
    }

    public String getContentType() {
        return this.zze;
    }

    public JSONObject getCustomData() {
        return this.zzj;
    }

    public long getId() {
        return this.zzb;
    }

    public String getLanguage() {
        return this.zzg;
    }

    public Locale getLanguageLocale() {
        String str = this.zzg;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Locale.forLanguageTag(str);
    }

    public String getName() {
        return this.zzf;
    }

    public List<String> getRoles() {
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

    public void setContentId(String str) {
        this.zzd = str;
    }

    public void setContentType(String str) {
        this.zze = str;
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.zzb);
            int i = this.zzc;
            if (i == 1) {
                jSONObject.put(TeXSymbolParser.TYPE_ATTR, "TEXT");
            } else if (i == 2) {
                jSONObject.put(TeXSymbolParser.TYPE_ATTR, "AUDIO");
            } else if (i == 3) {
                jSONObject.put(TeXSymbolParser.TYPE_ATTR, "VIDEO");
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
            String str4 = this.zzg;
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("language", str4);
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
            List list = this.zzi;
            if (list != null) {
                jSONObject.put("roles", new JSONArray((Collection) list));
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
