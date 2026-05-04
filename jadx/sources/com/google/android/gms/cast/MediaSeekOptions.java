package com.google.android.gms.cast;

import com.google.android.gms.common.internal.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaSeekOptions {
    private final long zza;
    private final int zzb;
    private final boolean zzc;
    private final JSONObject zzd;

    public static class Builder {
        private long zza;
        private int zzb = 0;
        private boolean zzc;
        private JSONObject zzd;

        public MediaSeekOptions build() {
            return new MediaSeekOptions(this.zza, this.zzb, this.zzc, this.zzd, null);
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzd = jSONObject;
            return this;
        }

        public Builder setPosition(long j) {
            this.zza = j;
            return this;
        }

        public Builder setResumeState(int i) {
            this.zzb = i;
            return this;
        }
    }

    /* synthetic */ MediaSeekOptions(long j, int i, boolean z, JSONObject jSONObject, zzcl zzclVar) {
        this.zza = j;
        this.zzb = i;
        this.zzc = z;
        this.zzd = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSeekOptions)) {
            return false;
        }
        MediaSeekOptions mediaSeekOptions = (MediaSeekOptions) obj;
        return this.zza == mediaSeekOptions.zza && this.zzb == mediaSeekOptions.zzb && this.zzc == mediaSeekOptions.zzc && Objects.equal(this.zzd, mediaSeekOptions.zzd);
    }

    public JSONObject getCustomData() {
        return this.zzd;
    }

    public long getPosition() {
        return this.zza;
    }

    public int getResumeState() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), Integer.valueOf(this.zzb), Boolean.valueOf(this.zzc), this.zzd);
    }

    public boolean isSeekToInfinite() {
        return this.zzc;
    }
}
