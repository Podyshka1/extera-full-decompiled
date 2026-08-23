package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MediaMetadata extends AbstractSafeParcelable {
    private static final zzcd zzc;
    final Bundle zza;
    private final List zzd;
    private int zze;
    private final Writer zzf;
    private static final String[] zzb = {"none", "String", "int", "double", "ISO-8601 date String", "Time in milliseconds as long"};
    public static final Parcelable.Creator<MediaMetadata> CREATOR = new zzce();

    public class Writer {
        public Writer() {
        }
    }

    static {
        zzcd zzcdVar = new zzcd();
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.TITLE", "title", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SUBTITLE", "subtitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ARTIST", "artist", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.COMPOSER", "composer", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SEASON_NUMBER", "season", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.EPISODE_NUMBER", "episode", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.STUDIO", "studio", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.WIDTH", "width", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.HEIGHT", "height", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_NAME", "location", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude", 3);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude", 3);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_DURATION", "sectionDuration", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "sectionStartTimeInMedia", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "sectionStartAbsoluteTime", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "sectionStartTimeInContainer", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.QUEUE_ITEM_ID", "queueItemId", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.BOOK_TITLE", "bookTitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "chapterNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CHAPTER_TITLE", "chapterTitle", 1);
        zzc = zzcdVar;
    }

    public MediaMetadata() {
        this(0);
    }

    public static void throwIfWrongType(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        int iZza = zzc.zza(str);
        if (iZza == i || iZza == 0) {
            return;
        }
        throw new IllegalArgumentException("Value for " + str + " must be a " + zzb[i]);
    }

    private final boolean zzd(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !zzd((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public void addImage(WebImage webImage) {
        this.zzd.add(webImage);
    }

    public void clear() {
        this.zza.clear();
        this.zzd.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return zzd(this.zza, mediaMetadata.zza) && this.zzd.equals(mediaMetadata.zzd);
    }

    public List getImages() {
        return this.zzd;
    }

    public int getMediaType() {
        return this.zze;
    }

    public String getString(String str) {
        throwIfWrongType(str, 1);
        return this.zza.getString(str);
    }

    public boolean hasImages() {
        List list = this.zzd;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public int hashCode() {
        Bundle bundle = this.zza;
        int iHashCode = 17;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = this.zza.get(it.next());
                iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
            }
        }
        return (iHashCode * 31) + this.zzd.hashCode();
    }

    public void putInt(String str, int i) {
        throwIfWrongType(str, 2);
        this.zza.putInt(str, i);
    }

    public void putString(String str, String str2) {
        throwIfWrongType(str, 1);
        this.zza.putString(str, str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, getImages(), false);
        SafeParcelWriter.writeBundle(parcel, 3, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 4, getMediaType());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final JSONObject zza() {
        zzcd zzcdVar;
        String strZzc;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.zze);
        } catch (JSONException unused) {
        }
        JSONArray jSONArrayZzc = com.google.android.gms.cast.internal.media.zza.zzc(this.zzd);
        if (jSONArrayZzc.length() != 0) {
            try {
                jSONObject.put("images", jSONArrayZzc);
            } catch (JSONException unused2) {
            }
        }
        ArrayList arrayList = new ArrayList();
        int i = this.zze;
        if (i == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        try {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                String str = (String) obj;
                if (str != null && this.zza.containsKey(str) && (strZzc = (zzcdVar = zzc).zzc(str)) != null) {
                    int iZza = zzcdVar.zza(str);
                    if (iZza != 1) {
                        if (iZza == 2) {
                            jSONObject.put(strZzc, this.zza.getInt(str));
                        } else if (iZza == 3) {
                            jSONObject.put(strZzc, this.zza.getDouble(str));
                        } else if (iZza != 4) {
                            if (iZza == 5) {
                                jSONObject.put(strZzc, CastUtils.millisecToSec(this.zza.getLong(str)));
                            }
                        }
                    }
                    jSONObject.put(strZzc, this.zza.getString(str));
                }
            }
            for (String str2 : this.zza.keySet()) {
                if (!str2.startsWith("com.google.")) {
                    Object obj2 = this.zza.get(str2);
                    if (obj2 instanceof String) {
                        jSONObject.put(str2, obj2);
                    } else if (obj2 instanceof Integer) {
                        jSONObject.put(str2, obj2);
                    } else if (obj2 instanceof Double) {
                        jSONObject.put(str2, obj2);
                    }
                }
            }
        } catch (JSONException unused3) {
        }
        return jSONObject;
    }

    public final void zzc(JSONObject jSONObject) {
        clear();
        this.zze = 0;
        try {
            this.zze = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray != null) {
            com.google.android.gms.cast.internal.media.zza.zzd(this.zzd, jSONArrayOptJSONArray);
        }
        ArrayList arrayList = new ArrayList();
        int i = this.zze;
        if (i == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        HashSet hashSet = new HashSet(arrayList);
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && !"metadataType".equals(next)) {
                    zzcd zzcdVar = zzc;
                    String strZzd = zzcdVar.zzd(next);
                    if (strZzd == null) {
                        Object obj = jSONObject.get(next);
                        if (obj instanceof String) {
                            this.zza.putString(next, (String) obj);
                        } else if (obj instanceof Integer) {
                            this.zza.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            this.zza.putDouble(next, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet.contains(strZzd)) {
                        try {
                            Object obj2 = jSONObject.get(next);
                            if (obj2 != null) {
                                int iZza = zzcdVar.zza(strZzd);
                                if (iZza != 1) {
                                    if (iZza != 2) {
                                        if (iZza == 3) {
                                            double dOptDouble = jSONObject.optDouble(next);
                                            if (!Double.isNaN(dOptDouble)) {
                                                this.zza.putDouble(strZzd, dOptDouble);
                                            }
                                        } else if (iZza != 4) {
                                            if (iZza == 5) {
                                                this.zza.putLong(strZzd, CastUtils.secToMillisec(jSONObject.optLong(next)));
                                            }
                                        } else if (obj2 instanceof String) {
                                            String str = (String) obj2;
                                            if (com.google.android.gms.cast.internal.media.zza.zzb(str) != null) {
                                                this.zza.putString(strZzd, str);
                                            }
                                        }
                                    } else if (obj2 instanceof Integer) {
                                        this.zza.putInt(strZzd, ((Integer) obj2).intValue());
                                    }
                                } else if (obj2 instanceof String) {
                                    this.zza.putString(strZzd, (String) obj2);
                                }
                            }
                        } catch (JSONException unused2) {
                        }
                    }
                }
            }
        } catch (JSONException unused3) {
        }
    }

    public MediaMetadata(int i) {
        this(new ArrayList(), new Bundle(), i);
    }

    MediaMetadata(List list, Bundle bundle, int i) {
        this.zzf = new Writer();
        this.zzd = list;
        this.zza = bundle;
        this.zze = i;
    }
}
