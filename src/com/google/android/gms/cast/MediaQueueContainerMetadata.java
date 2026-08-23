package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class MediaQueueContainerMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueContainerMetadata> CREATOR = new zzcg();
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

        public final Builder zza(JSONObject jSONObject) {
            MediaQueueContainerMetadata.zzb(this.zza, jSONObject);
            return this;
        }
    }

    static /* bridge */ /* synthetic */ void zzb(MediaQueueContainerMetadata mediaQueueContainerMetadata, JSONObject jSONObject) {
        mediaQueueContainerMetadata.zzh();
        String strOptString = jSONObject.optString("containerType", _UrlKt.FRAGMENT_ENCODE_SET);
        int iHashCode = strOptString.hashCode();
        if (iHashCode != 6924225) {
            if (iHashCode == 828666841 && strOptString.equals("GENERIC_CONTAINER")) {
                mediaQueueContainerMetadata.zza = 0;
            }
        } else if (strOptString.equals("AUDIOBOOK_CONTAINER")) {
            mediaQueueContainerMetadata.zza = 1;
        }
        mediaQueueContainerMetadata.zzb = CastUtils.optStringOrNull(jSONObject, "title");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("sections");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            mediaQueueContainerMetadata.zzc = arrayList;
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    MediaMetadata mediaMetadata = new MediaMetadata();
                    mediaMetadata.zzc(jSONObjectOptJSONObject);
                    arrayList.add(mediaMetadata);
                }
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("containerImages");
        if (jSONArrayOptJSONArray2 != null) {
            ArrayList arrayList2 = new ArrayList();
            mediaQueueContainerMetadata.zzd = arrayList2;
            com.google.android.gms.cast.internal.media.zza.zzd(arrayList2, jSONArrayOptJSONArray2);
        }
        mediaQueueContainerMetadata.zze = jSONObject.optDouble("containerDuration", mediaQueueContainerMetadata.zze);
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

    public List getContainerImages() {
        List list = this.zzd;
        if (list == null) {
            return null;
        }
        return DesugarCollections.unmodifiableList(list);
    }

    public int getContainerType() {
        return this.zza;
    }

    public List getSections() {
        List list = this.zzc;
        if (list == null) {
            return null;
        }
        return DesugarCollections.unmodifiableList(list);
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

    public final JSONObject zza() {
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
                jSONObject.put("containerImages", com.google.android.gms.cast.internal.media.zza.zzc(this.zzd));
            }
            jSONObject.put("containerDuration", this.zze);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    MediaQueueContainerMetadata(int i, String str, List list, List list2, double d) {
        this.zza = i;
        this.zzb = str;
        this.zzc = list;
        this.zzd = list2;
        this.zze = d;
    }

    /* synthetic */ MediaQueueContainerMetadata(zzcf zzcfVar) {
        zzh();
    }

    /* synthetic */ MediaQueueContainerMetadata(MediaQueueContainerMetadata mediaQueueContainerMetadata, zzcf zzcfVar) {
        this.zza = mediaQueueContainerMetadata.zza;
        this.zzb = mediaQueueContainerMetadata.zzb;
        this.zzc = mediaQueueContainerMetadata.zzc;
        this.zzd = mediaQueueContainerMetadata.zzd;
        this.zze = mediaQueueContainerMetadata.zze;
    }
}
