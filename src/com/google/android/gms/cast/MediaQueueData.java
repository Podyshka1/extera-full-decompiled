package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaQueueContainerMetadata;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueueData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueData> CREATOR = new zzbx();
    public static final int MEDIA_QUEUE_TYPE_ALBUM = 1;
    public static final int MEDIA_QUEUE_TYPE_AUDIO_BOOK = 3;
    public static final int MEDIA_QUEUE_TYPE_GENERIC = 0;
    public static final int MEDIA_QUEUE_TYPE_LIVE_TV = 8;
    public static final int MEDIA_QUEUE_TYPE_MOVIE = 9;
    public static final int MEDIA_QUEUE_TYPE_PLAYLIST = 2;
    public static final int MEDIA_QUEUE_TYPE_PODCAST_SERIES = 5;
    public static final int MEDIA_QUEUE_TYPE_RADIO_STATION = 4;
    public static final int MEDIA_QUEUE_TYPE_TV_SERIES = 6;
    public static final int MEDIA_QUEUE_TYPE_VIDEO_PLAYLIST = 7;
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private MediaQueueContainerMetadata zze;
    private int zzf;
    private List zzg;
    private int zzh;
    private long zzi;
    private boolean zzj;

    public static class Builder {
        private final MediaQueueData zza;

        public Builder() {
            this.zza = new MediaQueueData(null);
        }

        public MediaQueueData build() {
            return new MediaQueueData(this.zza, null);
        }

        public Builder setContainerMetadata(MediaQueueContainerMetadata mediaQueueContainerMetadata) {
            this.zza.zzg(mediaQueueContainerMetadata);
            return this;
        }

        public Builder setEntity(String str) {
            this.zza.zzd(str);
            return this;
        }

        public Builder setItems(List<MediaQueueItem> list) {
            this.zza.zzh(list);
            return this;
        }

        public Builder setName(String str) {
            this.zza.zzf(str);
            return this;
        }

        public Builder setQueueId(String str) {
            this.zza.zzc(str);
            return this;
        }

        public Builder setQueueType(int i) {
            this.zza.zze(i);
            return this;
        }

        public Builder setRepeatMode(int i) {
            this.zza.setRepeatMode(i);
            return this;
        }

        public Builder setStartIndex(int i) {
            this.zza.zzi(i);
            return this;
        }

        public Builder setStartTime(long j) {
            this.zza.zzj(j);
            return this;
        }

        public final Builder zza(JSONObject jSONObject) {
            this.zza.zzk(jSONObject);
            return this;
        }

        public Builder(MediaQueueData mediaQueueData) {
            this.zza = new MediaQueueData(mediaQueueData, null);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaQueueType {
    }

    private MediaQueueData() {
        throw null;
    }

    public /* synthetic */ MediaQueueData(MediaQueueData mediaQueueData, byte[] bArr) {
        this.zza = mediaQueueData.zza;
        this.zzb = mediaQueueData.zzb;
        this.zzc = mediaQueueData.zzc;
        this.zzd = mediaQueueData.zzd;
        this.zze = mediaQueueData.zze;
        this.zzf = mediaQueueData.zzf;
        this.zzg = mediaQueueData.zzg;
        this.zzh = mediaQueueData.zzh;
        this.zzi = mediaQueueData.zzi;
        this.zzj = mediaQueueData.zzj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzl() {
        this.zza = null;
        this.zzb = null;
        this.zzc = 0;
        this.zzd = null;
        this.zzf = 0;
        this.zzg = null;
        this.zzh = 0;
        this.zzi = -1L;
        this.zzj = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueData)) {
            return false;
        }
        MediaQueueData mediaQueueData = (MediaQueueData) obj;
        return TextUtils.equals(this.zza, mediaQueueData.zza) && TextUtils.equals(this.zzb, mediaQueueData.zzb) && this.zzc == mediaQueueData.zzc && TextUtils.equals(this.zzd, mediaQueueData.zzd) && Objects.equal(this.zze, mediaQueueData.zze) && this.zzf == mediaQueueData.zzf && Objects.equal(this.zzg, mediaQueueData.zzg) && this.zzh == mediaQueueData.zzh && this.zzi == mediaQueueData.zzi && this.zzj == mediaQueueData.zzj;
    }

    public MediaQueueContainerMetadata getContainerMetadata() {
        return this.zze;
    }

    public String getEntity() {
        return this.zzb;
    }

    public List<MediaQueueItem> getItems() {
        List list = this.zzg;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public String getName() {
        return this.zzd;
    }

    public String getQueueId() {
        return this.zza;
    }

    public int getQueueType() {
        return this.zzc;
    }

    public int getRepeatMode() {
        return this.zzf;
    }

    public int getStartIndex() {
        return this.zzh;
    }

    public long getStartTime() {
        return this.zzi;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, Integer.valueOf(this.zzc), this.zzd, this.zze, Integer.valueOf(this.zzf), this.zzg, Integer.valueOf(this.zzh), Long.valueOf(this.zzi), Boolean.valueOf(this.zzj));
    }

    public void setRepeatMode(int i) {
        this.zzf = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getQueueId(), false);
        SafeParcelWriter.writeString(parcel, 3, getEntity(), false);
        SafeParcelWriter.writeInt(parcel, 4, getQueueType());
        SafeParcelWriter.writeString(parcel, 5, getName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getContainerMetadata(), i, false);
        SafeParcelWriter.writeInt(parcel, 7, getRepeatMode());
        SafeParcelWriter.writeTypedList(parcel, 8, getItems(), false);
        SafeParcelWriter.writeInt(parcel, 9, getStartIndex());
        SafeParcelWriter.writeLong(parcel, 10, getStartTime());
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzj);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final boolean zza() {
        return this.zzj;
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.zza)) {
                jSONObject.put("id", this.zza);
            }
            if (!TextUtils.isEmpty(this.zzb)) {
                jSONObject.put("entity", this.zzb);
            }
            switch (this.zzc) {
                case 1:
                    jSONObject.put("queueType", "ALBUM");
                    break;
                case 2:
                    jSONObject.put("queueType", "PLAYLIST");
                    break;
                case 3:
                    jSONObject.put("queueType", "AUDIOBOOK");
                    break;
                case 4:
                    jSONObject.put("queueType", "RADIO_STATION");
                    break;
                case 5:
                    jSONObject.put("queueType", "PODCAST_SERIES");
                    break;
                case 6:
                    jSONObject.put("queueType", "TV_SERIES");
                    break;
                case 7:
                    jSONObject.put("queueType", "VIDEO_PLAYLIST");
                    break;
                case 8:
                    jSONObject.put("queueType", "LIVE_TV");
                    break;
                case 9:
                    jSONObject.put("queueType", "MOVIE");
                    break;
            }
            if (!TextUtils.isEmpty(this.zzd)) {
                jSONObject.put("name", this.zzd);
            }
            MediaQueueContainerMetadata mediaQueueContainerMetadata = this.zze;
            if (mediaQueueContainerMetadata != null) {
                jSONObject.put("containerMetadata", mediaQueueContainerMetadata.zzb());
            }
            String strZza = MediaCommon.zza(Integer.valueOf(this.zzf));
            if (strZza != null) {
                jSONObject.put("repeatMode", strZza);
            }
            List list = this.zzg;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.zzg.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaQueueItem) it.next()).toJson());
                }
                jSONObject.put(PluginsConstants.Settings.ITEMS, jSONArray);
            }
            jSONObject.put("startIndex", this.zzh);
            long j = this.zzi;
            if (j != -1) {
                jSONObject.put("startTime", CastUtils.millisecToSec(j));
            }
            jSONObject.put("shuffle", this.zzj);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final /* synthetic */ void zzc(String str) {
        this.zza = str;
    }

    public final /* synthetic */ void zzd(String str) {
        this.zzb = str;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzc = i;
    }

    public final /* synthetic */ void zzf(String str) {
        this.zzd = str;
    }

    public final /* synthetic */ void zzg(MediaQueueContainerMetadata mediaQueueContainerMetadata) {
        this.zze = mediaQueueContainerMetadata;
    }

    public final /* synthetic */ void zzh(List list) {
        this.zzg = list == null ? null : new ArrayList(list);
    }

    public final /* synthetic */ void zzi(int i) {
        this.zzh = i;
    }

    public final /* synthetic */ void zzj(long j) {
        this.zzi = j;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final /* synthetic */ void zzk(JSONObject jSONObject) {
        int i;
        zzl();
        if (jSONObject == null) {
            return;
        }
        this.zza = CastUtils.optStringOrNull(jSONObject, "id");
        this.zzb = CastUtils.optStringOrNull(jSONObject, "entity");
        String strOptString = jSONObject.optString("queueType");
        switch (strOptString.hashCode()) {
            case -1803151310:
                if (strOptString.equals("PODCAST_SERIES")) {
                    i = 5;
                    this.zzc = i;
                }
                break;
            case -1758903120:
                if (strOptString.equals("RADIO_STATION")) {
                    i = 4;
                    this.zzc = i;
                }
                break;
            case -1632865838:
                if (strOptString.equals("PLAYLIST")) {
                    i = 2;
                    this.zzc = i;
                }
                break;
            case -1319760993:
                if (strOptString.equals("AUDIOBOOK")) {
                    i = 3;
                    this.zzc = i;
                }
                break;
            case -1088524588:
                if (strOptString.equals("TV_SERIES")) {
                    i = 6;
                    this.zzc = i;
                }
                break;
            case 62359119:
                if (strOptString.equals("ALBUM")) {
                    i = 1;
                    this.zzc = i;
                }
                break;
            case 73549584:
                if (strOptString.equals("MOVIE")) {
                    i = 9;
                    this.zzc = i;
                }
                break;
            case 393100598:
                if (strOptString.equals("VIDEO_PLAYLIST")) {
                    i = 7;
                    this.zzc = i;
                }
                break;
            case 902303413:
                if (strOptString.equals("LIVE_TV")) {
                    i = 8;
                    this.zzc = i;
                }
                break;
        }
        this.zzd = CastUtils.optStringOrNull(jSONObject, "name");
        JSONObject jSONObjectOptJSONObject = jSONObject.has("containerMetadata") ? jSONObject.optJSONObject("containerMetadata") : null;
        if (jSONObjectOptJSONObject != null) {
            MediaQueueContainerMetadata.Builder builder = new MediaQueueContainerMetadata.Builder();
            builder.zza(jSONObjectOptJSONObject);
            this.zze = builder.build();
        }
        Integer numMediaRepeatModeFromString = MediaCommon.mediaRepeatModeFromString(jSONObject.optString("repeatMode"));
        if (numMediaRepeatModeFromString != null) {
            this.zzf = numMediaRepeatModeFromString.intValue();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(PluginsConstants.Settings.ITEMS);
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            this.zzg = arrayList;
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject2 != null) {
                    try {
                        arrayList.add(new MediaQueueItem(jSONObjectOptJSONObject2));
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        this.zzh = jSONObject.optInt("startIndex", this.zzh);
        if (jSONObject.has("startTime")) {
            this.zzi = CastUtils.secToMillisec(jSONObject.optDouble("startTime", this.zzi));
        }
        this.zzj = jSONObject.optBoolean("shuffle");
    }

    public MediaQueueData(String str, String str2, int i, String str3, MediaQueueContainerMetadata mediaQueueContainerMetadata, int i2, List list, int i3, long j, boolean z) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = str3;
        this.zze = mediaQueueContainerMetadata;
        this.zzf = i2;
        this.zzg = list;
        this.zzh = i3;
        this.zzi = j;
        this.zzj = z;
    }

    public /* synthetic */ MediaQueueData(byte[] bArr) {
        zzl();
    }
}
