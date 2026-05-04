package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueueItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new zzck();
    String zza;
    private MediaInfo zzb;
    private int zzc;
    private boolean zzd;
    private double zze;
    private double zzf;
    private double zzg;
    private long[] zzh;
    private JSONObject zzi;
    private final Writer zzj;

    public class Writer {
        public Writer() {
        }
    }

    MediaQueueItem(MediaInfo mediaInfo, int i, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.zze = Double.NaN;
        this.zzj = new Writer();
        this.zzb = mediaInfo;
        this.zzc = i;
        this.zzd = z;
        this.zze = d;
        this.zzf = d2;
        this.zzg = d3;
        this.zzh = jArr;
        this.zza = str;
        if (str == null) {
            this.zzi = null;
            return;
        }
        try {
            this.zzi = new JSONObject(this.zza);
        } catch (JSONException unused) {
            this.zzi = null;
            this.zza = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        JSONObject jSONObject = this.zzi;
        boolean z = jSONObject == null;
        JSONObject jSONObject2 = mediaQueueItem.zzi;
        if (z != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.zze(this.zzb, mediaQueueItem.zzb) && this.zzc == mediaQueueItem.zzc && this.zzd == mediaQueueItem.zzd && ((Double.isNaN(this.zze) && Double.isNaN(mediaQueueItem.zze)) || this.zze == mediaQueueItem.zze) && this.zzf == mediaQueueItem.zzf && this.zzg == mediaQueueItem.zzg && Arrays.equals(this.zzh, mediaQueueItem.zzh);
    }

    public boolean fromJson(JSONObject jSONObject) throws JSONException {
        boolean z;
        long[] jArr;
        boolean z2;
        int i;
        boolean z3 = false;
        if (jSONObject.has("media")) {
            this.zzb = new MediaInfo(jSONObject.getJSONObject("media"));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId") && this.zzc != (i = jSONObject.getInt("itemId"))) {
            this.zzc = i;
            z = true;
        }
        if (jSONObject.has("autoplay") && this.zzd != (z2 = jSONObject.getBoolean("autoplay"))) {
            this.zzd = z2;
            z = true;
        }
        double dOptDouble = jSONObject.optDouble("startTime");
        if (Double.isNaN(dOptDouble) != Double.isNaN(this.zze) || (!Double.isNaN(dOptDouble) && Math.abs(dOptDouble - this.zze) > 1.0E-7d)) {
            this.zze = dOptDouble;
            z = true;
        }
        if (jSONObject.has("playbackDuration")) {
            double d = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d - this.zzf) > 1.0E-7d) {
                this.zzf = d;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d2 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d2 - this.zzg) > 1.0E-7d) {
                this.zzg = d2;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr[i2] = jSONArray.getLong(i2);
            }
            long[] jArr2 = this.zzh;
            if (jArr2 == null || jArr2.length != length) {
                z3 = true;
                break;
            }
            for (int i3 = 0; i3 < length; i3++) {
                if (this.zzh[i3] != jArr[i3]) {
                    z3 = true;
                    break;
                }
            }
        } else {
            jArr = null;
        }
        if (z3) {
            this.zzh = jArr;
            z = true;
        }
        if (!jSONObject.has("customData")) {
            return z;
        }
        this.zzi = jSONObject.getJSONObject("customData");
        return true;
    }

    public long[] getActiveTrackIds() {
        return this.zzh;
    }

    public boolean getAutoplay() {
        return this.zzd;
    }

    public int getItemId() {
        return this.zzc;
    }

    public MediaInfo getMedia() {
        return this.zzb;
    }

    public double getPlaybackDuration() {
        return this.zzf;
    }

    public double getPreloadTime() {
        return this.zzg;
    }

    public double getStartTime() {
        return this.zze;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzb, Integer.valueOf(this.zzc), Boolean.valueOf(this.zzd), Double.valueOf(this.zze), Double.valueOf(this.zzf), Double.valueOf(this.zzg), Integer.valueOf(Arrays.hashCode(this.zzh)), String.valueOf(this.zzi));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo = this.zzb;
            if (mediaInfo != null) {
                jSONObject.put("media", mediaInfo.zza());
            }
            int i = this.zzc;
            if (i != 0) {
                jSONObject.put("itemId", i);
            }
            jSONObject.put("autoplay", this.zzd);
            if (!Double.isNaN(this.zze)) {
                jSONObject.put("startTime", this.zze);
            }
            double d = this.zzf;
            if (d != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", d);
            }
            jSONObject.put("preloadTime", this.zzg);
            if (this.zzh != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j : this.zzh) {
                    jSONArray.put(j);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject jSONObject2 = this.zzi;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    final void zzi() {
        if (this.zzb == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        if (!Double.isNaN(this.zze) && this.zze < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        if (Double.isNaN(this.zzf)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        if (Double.isNaN(this.zzg) || this.zzg < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
    }

    public static class Builder {
        private final MediaQueueItem zza;

        public Builder(MediaInfo mediaInfo) {
            this.zza = new MediaQueueItem(mediaInfo, null);
        }

        public MediaQueueItem build() {
            this.zza.zzi();
            return this.zza;
        }

        public Builder(JSONObject jSONObject) {
            this.zza = new MediaQueueItem(jSONObject);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        JSONObject jSONObject = this.zzi;
        this.zza = jSONObject == null ? null : jSONObject.toString();
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMedia(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getItemId());
        SafeParcelWriter.writeBoolean(parcel, 4, getAutoplay());
        SafeParcelWriter.writeDouble(parcel, 5, getStartTime());
        SafeParcelWriter.writeDouble(parcel, 6, getPlaybackDuration());
        SafeParcelWriter.writeDouble(parcel, 7, getPreloadTime());
        SafeParcelWriter.writeLongArray(parcel, 8, getActiveTrackIds(), false);
        SafeParcelWriter.writeString(parcel, 9, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    /* synthetic */ MediaQueueItem(MediaInfo mediaInfo, zzcj zzcjVar) {
        this(mediaInfo, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    public MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        fromJson(jSONObject);
    }
}
