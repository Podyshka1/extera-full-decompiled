package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.MediaQueueContainerMetadata;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueueData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueData> CREATOR = new zzci();
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
        private final MediaQueueData zza = new MediaQueueData(null);

        public MediaQueueData build() {
            return new MediaQueueData(this.zza, null);
        }

        public final Builder zza(JSONObject jSONObject) {
            MediaQueueData.zzb(this.zza, jSONObject);
            return this;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    static /* bridge */ /* synthetic */ void zzb(MediaQueueData mediaQueueData, JSONObject jSONObject) {
        int i;
        mediaQueueData.zzl();
        if (jSONObject == null) {
            return;
        }
        mediaQueueData.zza = CastUtils.optStringOrNull(jSONObject, "id");
        mediaQueueData.zzb = CastUtils.optStringOrNull(jSONObject, "entity");
        String strOptString = jSONObject.optString("queueType");
        switch (strOptString.hashCode()) {
            case -1803151310:
                if (strOptString.equals("PODCAST_SERIES")) {
                    i = 5;
                    mediaQueueData.zzc = i;
                }
                break;
            case -1758903120:
                if (strOptString.equals("RADIO_STATION")) {
                    i = 4;
                    mediaQueueData.zzc = i;
                }
                break;
            case -1632865838:
                if (strOptString.equals("PLAYLIST")) {
                    i = 2;
                    mediaQueueData.zzc = i;
                }
                break;
            case -1319760993:
                if (strOptString.equals("AUDIOBOOK")) {
                    i = 3;
                    mediaQueueData.zzc = i;
                }
                break;
            case -1088524588:
                if (strOptString.equals("TV_SERIES")) {
                    i = 6;
                    mediaQueueData.zzc = i;
                }
                break;
            case 62359119:
                if (strOptString.equals("ALBUM")) {
                    i = 1;
                    mediaQueueData.zzc = i;
                }
                break;
            case 73549584:
                if (strOptString.equals("MOVIE")) {
                    i = 9;
                    mediaQueueData.zzc = i;
                }
                break;
            case 393100598:
                if (strOptString.equals("VIDEO_PLAYLIST")) {
                    i = 7;
                    mediaQueueData.zzc = i;
                }
                break;
            case 902303413:
                if (strOptString.equals("LIVE_TV")) {
                    i = 8;
                    mediaQueueData.zzc = i;
                }
                break;
        }
        mediaQueueData.zzd = CastUtils.optStringOrNull(jSONObject, "name");
        JSONObject jSONObjectOptJSONObject = jSONObject.has("containerMetadata") ? jSONObject.optJSONObject("containerMetadata") : null;
        if (jSONObjectOptJSONObject != null) {
            MediaQueueContainerMetadata.Builder builder = new MediaQueueContainerMetadata.Builder();
            builder.zza(jSONObjectOptJSONObject);
            mediaQueueData.zze = builder.build();
        }
        Integer numMediaRepeatModeFromString = MediaCommon.mediaRepeatModeFromString(jSONObject.optString("repeatMode"));
        if (numMediaRepeatModeFromString != null) {
            mediaQueueData.zzf = numMediaRepeatModeFromString.intValue();
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("items");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            mediaQueueData.zzg = arrayList;
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
        mediaQueueData.zzh = jSONObject.optInt("startIndex", mediaQueueData.zzh);
        if (jSONObject.has("startTime")) {
            mediaQueueData.zzi = CastUtils.secToMillisec(jSONObject.optDouble("startTime", mediaQueueData.zzi));
        }
        mediaQueueData.zzj = jSONObject.optBoolean("shuffle");
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

    public List getItems() {
        List list = this.zzg;
        if (list == null) {
            return null;
        }
        return DesugarCollections.unmodifiableList(list);
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

    public final JSONObject zza() {
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
                jSONObject.put("containerMetadata", mediaQueueContainerMetadata.zza());
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
                jSONObject.put("items", jSONArray);
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

    public final boolean zzk() {
        return this.zzj;
    }

    /* synthetic */ MediaQueueData(zzch zzchVar) {
        zzl();
    }

    /* synthetic */ MediaQueueData(MediaQueueData mediaQueueData, zzch zzchVar) {
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

    MediaQueueData(String str, String str2, int i, String str3, MediaQueueContainerMetadata mediaQueueContainerMetadata, int i2, List list, int i3, long j, boolean z) {
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
}
