package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueueContainerMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueContainerMetadata> CREATOR = new zzbw();
    public static final int MEDIA_QUEUE_CONTAINER_TYPE_AUDIO_BOOK = 1;
    public static final int MEDIA_QUEUE_CONTAINER_TYPE_GENERIC = 0;
    private int zza;
    private String zzb;
    private List zzc;
    private List zzd;
    private double zze;

    public static class Builder {
        private final MediaQueueContainerMetadata zza = new MediaQueueContainerMetadata(null);

        public MediaQueueContainerMetadata build() {
            return new MediaQueueContainerMetadata(this.zza, null);
        }

        public Builder setContainerDuration(double d) {
            this.zza.zzf(d);
            return this;
        }

        public Builder setContainerImages(List<WebImage> list) {
            this.zza.zze(list);
            return this;
        }

        public Builder setContainerType(int i) {
            this.zza.zzc(i);
            return this;
        }

        public Builder setSections(List<MediaMetadata> list) {
            this.zza.zza(list);
            return this;
        }

        public Builder setTitle(String str) {
            this.zza.zzd(str);
            return this;
        }

        public final Builder zza(JSONObject jSONObject) {
            this.zza.zzg(jSONObject);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaQueueContainerType {
    }

    private MediaQueueContainerMetadata() {
        throw null;
    }

    public MediaQueueContainerMetadata(int i, String str, List list, List list2, double d) {
        this.zza = i;
        this.zzb = str;
        this.zzc = list;
        this.zzd = list2;
        this.zze = d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh() {
        this.zza = 0;
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = 0.0d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueContainerMetadata)) {
            return false;
        }
        MediaQueueContainerMetadata mediaQueueContainerMetadata = (MediaQueueContainerMetadata) obj;
        return this.zza == mediaQueueContainerMetadata.zza && TextUtils.equals(this.zzb, mediaQueueContainerMetadata.zzb) && Objects.equal(this.zzc, mediaQueueContainerMetadata.zzc) && Objects.equal(this.zzd, mediaQueueContainerMetadata.zzd) && this.zze == mediaQueueContainerMetadata.zze;
    }

    public double getContainerDuration() {
        return this.zze;
    }

    public List<WebImage> getContainerImages() {
        List list = this.zzd;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public int getContainerType() {
        return this.zza;
    }

    public List<MediaMetadata> getSections() {
        List list = this.zzc;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public String getTitle() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), this.zzb, this.zzc, this.zzd, Double.valueOf(this.zze));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getContainerType());
        SafeParcelWriter.writeString(parcel, 3, getTitle(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getSections(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getContainerImages(), false);
        SafeParcelWriter.writeDouble(parcel, 6, getContainerDuration());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final void zza(List list) {
        this.zzc = list == null ? null : new ArrayList(list);
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i = this.zza;
            if (i == 0) {
                jSONObject.put("containerType", "GENERIC_CONTAINER");
            } else if (i == 1) {
                jSONObject.put("containerType", "AUDIOBOOK_CONTAINER");
            }
            if (!TextUtils.isEmpty(this.zzb)) {
                jSONObject.put("title", this.zzb);
            }
            List list = this.zzc;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaMetadata) it.next()).zza());
                }
                jSONObject.put("sections", jSONArray);
            }
            List list2 = this.zzd;
            if (list2 != null && !list2.isEmpty()) {
                jSONObject.put("containerImages", com.google.android.gms.cast.internal.media.zza.zzb(this.zzd));
            }
            jSONObject.put("containerDuration", this.zze);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final /* synthetic */ void zzc(int i) {
        this.zza = i;
    }

    public final /* synthetic */ void zzd(String str) {
        this.zzb = str;
    }

    public final /* synthetic */ void zze(List list) {
        this.zzd = list == null ? null : new ArrayList(list);
    }

    public final /* synthetic */ void zzf(double d) {
        this.zze = d;
    }

    public final /* synthetic */ void zzg(JSONObject jSONObject) {
        zzh();
        String strOptString = jSONObject.optString("containerType", _UrlKt.FRAGMENT_ENCODE_SET);
        int iHashCode = strOptString.hashCode();
        if (iHashCode != 6924225) {
            if (iHashCode == 828666841 && strOptString.equals("GENERIC_CONTAINER")) {
                this.zza = 0;
            }
        } else if (strOptString.equals("AUDIOBOOK_CONTAINER")) {
            this.zza = 1;
        }
        this.zzb = CastUtils.optStringOrNull(jSONObject, "title");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sections");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            this.zzc = arrayList;
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    MediaMetadata mediaMetadata = new MediaMetadata();
                    mediaMetadata.zzb(jSONObjectOptJSONObject);
                    arrayList.add(mediaMetadata);
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("containerImages");
        if (jSONArrayOptJSONArray2 != null) {
            ArrayList arrayList2 = new ArrayList();
            this.zzd = arrayList2;
            com.google.android.gms.cast.internal.media.zza.zza(arrayList2, jSONArrayOptJSONArray2);
        }
        this.zze = jSONObject.optDouble("containerDuration", this.zze);
    }

    public /* synthetic */ MediaQueueContainerMetadata(MediaQueueContainerMetadata mediaQueueContainerMetadata, byte[] bArr) {
        this.zza = mediaQueueContainerMetadata.zza;
        this.zzb = mediaQueueContainerMetadata.zzb;
        this.zzc = mediaQueueContainerMetadata.zzc;
        this.zzd = mediaQueueContainerMetadata.zzd;
        this.zze = mediaQueueContainerMetadata.zze;
    }

    public /* synthetic */ MediaQueueContainerMetadata(byte[] bArr) {
        zzh();
    }
}
