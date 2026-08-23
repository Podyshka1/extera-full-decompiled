package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.internal.cast.zzfn;
import com.google.android.gms.internal.cast.zzfq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class MediaInfo extends AbstractSafeParcelable implements ReflectedParcelable {
    String zzb;
    private String zzc;
    private int zzd;
    private String zze;
    private MediaMetadata zzf;
    private long zzg;
    private List zzh;
    private TextTrackStyle zzi;
    private List zzj;
    private List zzk;
    private String zzl;
    private VastAdsRequest zzm;
    private long zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private JSONObject zzs;
    private final Writer zzt;
    public static final long zza = CastUtils.secToMillisec(-1L);
    public static final Parcelable.Creator<MediaInfo> CREATOR = new zzby();

    public static class Builder {
        private String zza;
        private String zzc;
        private MediaMetadata zzd;
        private List zzf;
        private TextTrackStyle zzg;
        private String zzh;
        private List zzi;
        private List zzj;
        private String zzk;
        private VastAdsRequest zzl;
        private String zzm;
        private String zzn;
        private String zzo;
        private String zzp;
        private int zzb = -1;
        private long zze = -1;

        public Builder(String str) {
            this.zza = str;
        }

        public MediaInfo build() {
            return new MediaInfo(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, -1L, this.zzm, this.zzn, this.zzo, this.zzp);
        }

        public Builder setContentType(String str) {
            this.zzc = str;
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.zzd = mediaMetadata;
            return this;
        }

        public Builder setStreamType(int i) {
            if (i < -1 || i > 2) {
                throw new IllegalArgumentException("invalid stream type");
            }
            this.zzb = i;
            return this;
        }
    }

    public class Writer {
        public Writer() {
        }
    }

    MediaInfo(String str, int i, String str2, MediaMetadata mediaMetadata, long j, List list, TextTrackStyle textTrackStyle, String str3, List list2, List list3, String str4, VastAdsRequest vastAdsRequest, long j2, String str5, String str6, String str7, String str8) {
        this.zzt = new Writer();
        this.zzc = str;
        this.zzd = i;
        this.zze = str2;
        this.zzf = mediaMetadata;
        this.zzg = j;
        this.zzh = list;
        this.zzi = textTrackStyle;
        this.zzb = str3;
        if (str3 != null) {
            try {
                this.zzs = new JSONObject(this.zzb);
            } catch (JSONException unused) {
                this.zzs = null;
                this.zzb = null;
            }
        } else {
            this.zzs = null;
        }
        this.zzj = list2;
        this.zzk = list3;
        this.zzl = str4;
        this.zzm = vastAdsRequest;
        this.zzn = j2;
        this.zzo = str5;
        this.zzp = str6;
        this.zzq = str7;
        this.zzr = str8;
        if (this.zzc == null && str6 == null && str4 == null) {
            throw new IllegalArgumentException("Either contentID or contentUrl or entity should be set");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        JSONObject jSONObject = this.zzs;
        boolean z = jSONObject == null;
        JSONObject jSONObject2 = mediaInfo.zzs;
        if (z != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.zze(this.zzc, mediaInfo.zzc) && this.zzd == mediaInfo.zzd && CastUtils.zze(this.zze, mediaInfo.zze) && CastUtils.zze(this.zzf, mediaInfo.zzf) && this.zzg == mediaInfo.zzg && CastUtils.zze(this.zzh, mediaInfo.zzh) && CastUtils.zze(this.zzi, mediaInfo.zzi) && CastUtils.zze(this.zzj, mediaInfo.zzj) && CastUtils.zze(this.zzk, mediaInfo.zzk) && CastUtils.zze(this.zzl, mediaInfo.zzl) && CastUtils.zze(this.zzm, mediaInfo.zzm) && this.zzn == mediaInfo.zzn && CastUtils.zze(this.zzo, mediaInfo.zzo) && CastUtils.zze(this.zzp, mediaInfo.zzp) && CastUtils.zze(this.zzq, mediaInfo.zzq) && CastUtils.zze(this.zzr, mediaInfo.zzr);
    }

    public List getAdBreakClips() {
        List list = this.zzk;
        if (list == null) {
            return null;
        }
        return DesugarCollections.unmodifiableList(list);
    }

    public List getAdBreaks() {
        List list = this.zzj;
        if (list == null) {
            return null;
        }
        return DesugarCollections.unmodifiableList(list);
    }

    public String getContentId() {
        String str = this.zzc;
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    public String getContentType() {
        return this.zze;
    }

    public String getContentUrl() {
        return this.zzp;
    }

    public String getEntity() {
        return this.zzl;
    }

    public String getHlsSegmentFormat() {
        return this.zzq;
    }

    public String getHlsVideoSegmentFormat() {
        return this.zzr;
    }

    public List getMediaTracks() {
        return this.zzh;
    }

    public MediaMetadata getMetadata() {
        return this.zzf;
    }

    public long getStartAbsoluteTime() {
        return this.zzn;
    }

    public long getStreamDuration() {
        return this.zzg;
    }

    public int getStreamType() {
        return this.zzd;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.zzi;
    }

    public VastAdsRequest getVmapAdsRequest() {
        return this.zzm;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzc, Integer.valueOf(this.zzd), this.zze, this.zzf, Long.valueOf(this.zzg), String.valueOf(this.zzs), this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzm, Long.valueOf(this.zzn), this.zzo, this.zzq, this.zzr);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.zzc);
            jSONObject.putOpt("contentUrl", this.zzp);
            int i = this.zzd;
            jSONObject.put("streamType", i != 1 ? i != 2 ? "NONE" : "LIVE" : "BUFFERED");
            String str = this.zze;
            if (str != null) {
                jSONObject.put("contentType", str);
            }
            MediaMetadata mediaMetadata = this.zzf;
            if (mediaMetadata != null) {
                jSONObject.put("metadata", mediaMetadata.zza());
            }
            long j = this.zzg;
            if (j <= -1) {
                jSONObject.put("duration", JSONObject.NULL);
            } else {
                jSONObject.put("duration", CastUtils.millisecToSec(j));
            }
            if (this.zzh != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.zzh.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaTrack) it.next()).zza());
                }
                jSONObject.put("tracks", jSONArray);
            }
            TextTrackStyle textTrackStyle = this.zzi;
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.zza());
            }
            JSONObject jSONObject2 = this.zzs;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str2 = this.zzl;
            if (str2 != null) {
                jSONObject.put("entity", str2);
            }
            if (this.zzj != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator it2 = this.zzj.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(((AdBreakInfo) it2.next()).zza());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.zzk != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = this.zzk.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((AdBreakClipInfo) it3.next()).zza());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
            VastAdsRequest vastAdsRequest = this.zzm;
            if (vastAdsRequest != null) {
                jSONObject.put("vmapAdsRequest", vastAdsRequest.zza());
            }
            long j2 = this.zzn;
            if (j2 != -1) {
                jSONObject.put("startAbsoluteTime", CastUtils.millisecToSec(j2));
            }
            jSONObject.putOpt("atvEntity", this.zzo);
            String str3 = this.zzq;
            if (str3 != null) {
                jSONObject.put("hlsSegmentFormat", str3);
            }
            String str4 = this.zzr;
            if (str4 != null) {
                jSONObject.put("hlsVideoSegmentFormat", str4);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8 A[LOOP:0: B:5:0x0023->B:33:0x00b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01a0 A[LOOP:1: B:41:0x00e8->B:70:0x01a0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01a7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzr(JSONObject jSONObject) throws JSONException {
        int i;
        AdBreakClipInfo adBreakClipInfo;
        AdBreakInfo adBreakInfo;
        int i2 = 0;
        if (jSONObject.has("breaks")) {
            JSONArray jSONArray = jSONObject.getJSONArray("breaks");
            ArrayList arrayList = new ArrayList(jSONArray.length());
            int i3 = 0;
            while (true) {
                if (i3 >= jSONArray.length()) {
                    i = i2;
                    break;
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                Parcelable.Creator<AdBreakInfo> creator = AdBreakInfo.CREATOR;
                if (jSONObject2 != null && jSONObject2.has("id") && jSONObject2.has("position")) {
                    try {
                        String string = jSONObject2.getString("id");
                        long jSecToMillisec = CastUtils.secToMillisec(jSONObject2.getLong("position"));
                        boolean zOptBoolean = jSONObject2.optBoolean("isWatched");
                        long jSecToMillisec2 = CastUtils.secToMillisec(jSONObject2.optLong("duration"));
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("breakClipIds");
                        String[] strArr = new String[i2];
                        if (jSONArrayOptJSONArray != null) {
                            strArr = new String[jSONArrayOptJSONArray.length()];
                            int i4 = i2;
                            i = i4;
                            while (i4 < jSONArrayOptJSONArray.length()) {
                                try {
                                    strArr[i4] = jSONArrayOptJSONArray.getString(i4);
                                    i4++;
                                } catch (JSONException e) {
                                    e = e;
                                    Object[] objArr = new Object[1];
                                    objArr[i] = e.getMessage();
                                    Log.d("AdBreakInfo", String.format(Locale.ROOT, "Error while creating an AdBreakInfo from JSON: %s", objArr));
                                    adBreakInfo = null;
                                }
                            }
                        } else {
                            i = i2;
                        }
                        adBreakInfo = new AdBreakInfo(jSecToMillisec, string, jSecToMillisec2, zOptBoolean, strArr, jSONObject2.optBoolean("isEmbedded"), jSONObject2.optBoolean("expanded"));
                    } catch (JSONException e2) {
                        e = e2;
                        i = i2;
                    }
                    if (adBreakInfo != null) {
                        arrayList.clear();
                        break;
                    } else {
                        arrayList.add(adBreakInfo);
                        i3++;
                        i2 = i;
                    }
                } else {
                    i = i2;
                }
                adBreakInfo = null;
                if (adBreakInfo != null) {
                }
            }
            this.zzj = new ArrayList(arrayList);
        } else {
            i = 0;
        }
        if (jSONObject.has("breakClips")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("breakClips");
            ArrayList arrayList2 = new ArrayList(jSONArray2.length());
            int i5 = i;
            while (true) {
                if (i5 >= jSONArray2.length()) {
                    break;
                }
                JSONObject jSONObject3 = jSONArray2.getJSONObject(i5);
                Parcelable.Creator<AdBreakClipInfo> creator2 = AdBreakClipInfo.CREATOR;
                if (jSONObject3 != null && jSONObject3.has("id")) {
                    try {
                        String string2 = jSONObject3.getString("id");
                        long jSecToMillisec3 = CastUtils.secToMillisec(jSONObject3.optLong("duration"));
                        String strOptStringOrNull = CastUtils.optStringOrNull(jSONObject3, "clickThroughUrl");
                        String strOptStringOrNull2 = CastUtils.optStringOrNull(jSONObject3, "contentUrl");
                        String strOptStringOrNull3 = CastUtils.optStringOrNull(jSONObject3, "mimeType");
                        if (strOptStringOrNull3 == null) {
                            strOptStringOrNull3 = CastUtils.optStringOrNull(jSONObject3, "contentType");
                        }
                        String str = strOptStringOrNull3;
                        String strOptStringOrNull4 = CastUtils.optStringOrNull(jSONObject3, "title");
                        JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("customData");
                        adBreakClipInfo = new AdBreakClipInfo(string2, strOptStringOrNull4, jSecToMillisec3, strOptStringOrNull2, str, strOptStringOrNull, (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.length() == 0) ? null : jSONObjectOptJSONObject.toString(), CastUtils.optStringOrNull(jSONObject3, "contentId"), CastUtils.optStringOrNull(jSONObject3, "posterUrl"), jSONObject3.has("whenSkippable") ? CastUtils.secToMillisec(((Integer) jSONObject3.get("whenSkippable")).intValue()) : -1L, CastUtils.optStringOrNull(jSONObject3, "hlsSegmentFormat"), VastAdsRequest.fromJson(jSONObject3.optJSONObject("vastAdsRequest")));
                    } catch (JSONException e3) {
                        Object[] objArr2 = new Object[1];
                        objArr2[i] = e3.getMessage();
                        Log.d("AdBreakClipInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", objArr2));
                        adBreakClipInfo = null;
                    }
                    if (adBreakClipInfo != null) {
                        arrayList2.clear();
                        break;
                    } else {
                        arrayList2.add(adBreakClipInfo);
                        i5++;
                    }
                } else {
                    adBreakClipInfo = null;
                    if (adBreakClipInfo != null) {
                    }
                }
            }
            this.zzk = new ArrayList(arrayList2);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzs;
        this.zzb = jSONObject == null ? null : jSONObject.toString();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getContentId(), false);
        SafeParcelWriter.writeInt(parcel, 3, getStreamType());
        SafeParcelWriter.writeString(parcel, 4, getContentType(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getMetadata(), i, false);
        SafeParcelWriter.writeLong(parcel, 6, getStreamDuration());
        SafeParcelWriter.writeTypedList(parcel, 7, getMediaTracks(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getTextTrackStyle(), i, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzb, false);
        SafeParcelWriter.writeTypedList(parcel, 10, getAdBreaks(), false);
        SafeParcelWriter.writeTypedList(parcel, 11, getAdBreakClips(), false);
        SafeParcelWriter.writeString(parcel, 12, getEntity(), false);
        SafeParcelWriter.writeParcelable(parcel, 13, getVmapAdsRequest(), i, false);
        SafeParcelWriter.writeLong(parcel, 14, getStartAbsoluteTime());
        SafeParcelWriter.writeString(parcel, 15, this.zzo, false);
        SafeParcelWriter.writeString(parcel, 16, getContentUrl(), false);
        SafeParcelWriter.writeString(parcel, 17, getHlsSegmentFormat(), false);
        SafeParcelWriter.writeString(parcel, 18, getHlsVideoSegmentFormat(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    MediaInfo(JSONObject jSONObject) throws JSONException {
        int i;
        int i2;
        zzfq zzfqVarZzc;
        int i3;
        this(jSONObject.optString("contentId"), -1, null, null, -1L, null, null, null, null, null, null, null, -1L, null, null, null, null);
        String strOptString = jSONObject.optString("streamType", "NONE");
        int i4 = 2;
        if ("NONE".equals(strOptString)) {
            this.zzd = 0;
        } else if ("BUFFERED".equals(strOptString)) {
            this.zzd = 1;
        } else if ("LIVE".equals(strOptString)) {
            this.zzd = 2;
        } else {
            this.zzd = -1;
        }
        this.zze = CastUtils.optStringOrNull(jSONObject, "contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            MediaMetadata mediaMetadata = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.zzf = mediaMetadata;
            mediaMetadata.zzc(jSONObject2);
        }
        this.zzg = -1L;
        if (this.zzd != 2 && jSONObject.has("duration") && !jSONObject.isNull("duration")) {
            double dOptDouble = jSONObject.optDouble("duration", 0.0d);
            if (!Double.isNaN(dOptDouble) && !Double.isInfinite(dOptDouble) && dOptDouble >= 0.0d) {
                this.zzg = CastUtils.secToMillisec(dOptDouble);
            }
        }
        if (jSONObject.has("tracks")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("tracks");
            int i5 = 0;
            while (i5 < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i5);
                Parcelable.Creator<MediaTrack> creator = MediaTrack.CREATOR;
                long j = jSONObject3.getLong("trackId");
                String strOptString2 = jSONObject3.optString("type");
                int i6 = 3;
                if ("TEXT".equals(strOptString2)) {
                    i = 3;
                    i6 = 1;
                } else if ("AUDIO".equals(strOptString2)) {
                    i = 3;
                    i6 = i4;
                } else if ("VIDEO".equals(strOptString2)) {
                    i = 3;
                } else {
                    i = 3;
                    i6 = 0;
                }
                String strOptStringOrNull = CastUtils.optStringOrNull(jSONObject3, "trackContentId");
                String strOptStringOrNull2 = CastUtils.optStringOrNull(jSONObject3, "trackContentType");
                String strOptStringOrNull3 = CastUtils.optStringOrNull(jSONObject3, "name");
                String strOptStringOrNull4 = CastUtils.optStringOrNull(jSONObject3, "language");
                if (jSONObject3.has("subtype")) {
                    String string = jSONObject3.getString("subtype");
                    if ("SUBTITLES".equals(string)) {
                        i2 = 1;
                    } else if ("CAPTIONS".equals(string)) {
                        i2 = i4;
                    } else if ("DESCRIPTIONS".equals(string)) {
                        i2 = i;
                    } else {
                        if ("CHAPTERS".equals(string)) {
                            i3 = 4;
                        } else if ("METADATA".equals(string)) {
                            i3 = 5;
                        } else {
                            i2 = -1;
                        }
                        i2 = i3;
                    }
                } else {
                    i2 = 0;
                }
                if (jSONObject3.has("roles")) {
                    zzfn zzfnVar = new zzfn();
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("roles");
                    for (int i7 = 0; i7 < jSONArray2.length(); i7++) {
                        zzfnVar.zzb(jSONArray2.optString(i7));
                    }
                    zzfqVarZzc = zzfnVar.zzc();
                } else {
                    zzfqVarZzc = null;
                }
                arrayList.add(new MediaTrack(j, i6, strOptStringOrNull, strOptStringOrNull2, strOptStringOrNull3, strOptStringOrNull4, i2, zzfqVarZzc, jSONObject3.optJSONObject("customData")));
                i5++;
                i4 = 2;
            }
            this.zzh = new ArrayList(arrayList);
        } else {
            this.zzh = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject4 = jSONObject.getJSONObject("textTrackStyle");
            TextTrackStyle textTrackStyle = new TextTrackStyle();
            textTrackStyle.fromJson(jSONObject4);
            this.zzi = textTrackStyle;
        } else {
            this.zzi = null;
        }
        zzr(jSONObject);
        this.zzs = jSONObject.optJSONObject("customData");
        this.zzl = CastUtils.optStringOrNull(jSONObject, "entity");
        this.zzo = CastUtils.optStringOrNull(jSONObject, "atvEntity");
        this.zzm = VastAdsRequest.fromJson(jSONObject.optJSONObject("vmapAdsRequest"));
        if (jSONObject.has("startAbsoluteTime") && !jSONObject.isNull("startAbsoluteTime")) {
            double dOptDouble2 = jSONObject.optDouble("startAbsoluteTime");
            if (!Double.isNaN(dOptDouble2) && !Double.isInfinite(dOptDouble2) && dOptDouble2 >= 0.0d) {
                this.zzn = CastUtils.secToMillisec(dOptDouble2);
            }
        }
        if (jSONObject.has("contentUrl")) {
            this.zzp = jSONObject.optString("contentUrl");
        }
        this.zzq = CastUtils.optStringOrNull(jSONObject, "hlsSegmentFormat");
        this.zzr = CastUtils.optStringOrNull(jSONObject, "hlsVideoSegmentFormat");
    }
}
