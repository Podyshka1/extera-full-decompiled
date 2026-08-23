package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaLiveSeekableRange extends AbstractSafeParcelable {
    private final long zzb;
    private final long zzc;
    private final boolean zzd;
    private final boolean zze;
    private static final Logger zza = new Logger("MediaLiveSeekableRange");
    public static final Parcelable.Creator<MediaLiveSeekableRange> CREATOR = new zzbz();

    MediaLiveSeekableRange(long j, long j2, boolean z, boolean z2) {
        this.zzb = Math.max(j, 0L);
        this.zzc = Math.max(j2, 0L);
        this.zzd = z;
        this.zze = z2;
    }

    static MediaLiveSeekableRange zza(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("start") && jSONObject.has("end")) {
            try {
                return new MediaLiveSeekableRange(CastUtils.secToMillisec(jSONObject.getDouble("start")), CastUtils.secToMillisec(jSONObject.getDouble("end")), jSONObject.optBoolean("isMovingWindow"), jSONObject.optBoolean("isLiveDone"));
            } catch (JSONException unused) {
                zza.m338e("Ignoring Malformed MediaLiveSeekableRange: ".concat(jSONObject.toString()), new Object[0]);
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLiveSeekableRange)) {
            return false;
        }
        MediaLiveSeekableRange mediaLiveSeekableRange = (MediaLiveSeekableRange) obj;
        return this.zzb == mediaLiveSeekableRange.zzb && this.zzc == mediaLiveSeekableRange.zzc && this.zzd == mediaLiveSeekableRange.zzd && this.zze == mediaLiveSeekableRange.zze;
    }

    public long getEndTime() {
        return this.zzc;
    }

    public long getStartTime() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zzb), Long.valueOf(this.zzc), Boolean.valueOf(this.zzd), Boolean.valueOf(this.zze));
    }

    public boolean isLiveDone() {
        return this.zze;
    }

    public boolean isMovingWindow() {
        return this.zzd;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getStartTime());
        SafeParcelWriter.writeLong(parcel, 3, getEndTime());
        SafeParcelWriter.writeBoolean(parcel, 4, isMovingWindow());
        SafeParcelWriter.writeBoolean(parcel, 5, isLiveDone());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
