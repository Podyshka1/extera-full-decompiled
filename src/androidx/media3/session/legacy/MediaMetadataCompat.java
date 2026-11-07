package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import androidx.mediarouter.media.MediaItemMetadata;
import com.google.common.base.Preconditions;
import com.sun.jna.Native$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"BanParcelableUsage"})
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
    static final ArrayMap<String, Integer> METADATA_KEYS_TYPE;
    public static final String[] PREFERRED_DESCRIPTION_ORDER;
    private final Bundle bundle;
    private MediaMetadata metadataFwk;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    static {
        ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
        METADATA_KEYS_TYPE = arrayMap;
        arrayMap.put(MediaItemMetadata.KEY_TITLE, 1);
        arrayMap.put(MediaItemMetadata.KEY_ARTIST, 1);
        arrayMap.put(MediaItemMetadata.KEY_DURATION, 0);
        arrayMap.put("android.media.metadata.ALBUM", 1);
        arrayMap.put(MediaItemMetadata.KEY_AUTHOR, 1);
        arrayMap.put("android.media.metadata.WRITER", 1);
        arrayMap.put(MediaItemMetadata.KEY_COMPOSER, 1);
        arrayMap.put("android.media.metadata.COMPILATION", 1);
        arrayMap.put("android.media.metadata.DATE", 1);
        arrayMap.put(MediaItemMetadata.KEY_YEAR, 0);
        arrayMap.put("android.media.metadata.GENRE", 1);
        arrayMap.put(MediaItemMetadata.KEY_TRACK_NUMBER, 0);
        arrayMap.put("android.media.metadata.NUM_TRACKS", 0);
        arrayMap.put(MediaItemMetadata.KEY_DISC_NUMBER, 0);
        arrayMap.put(MediaItemMetadata.KEY_ALBUM_ARTIST, 1);
        arrayMap.put("android.media.metadata.ART", 2);
        arrayMap.put("android.media.metadata.ART_URI", 1);
        arrayMap.put("android.media.metadata.ALBUM_ART", 2);
        arrayMap.put("android.media.metadata.ALBUM_ART_URI", 1);
        arrayMap.put("android.media.metadata.USER_RATING", 3);
        arrayMap.put("android.media.metadata.RATING", 3);
        arrayMap.put("android.media.metadata.DISPLAY_TITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        arrayMap.put("android.media.metadata.DISPLAY_ICON", 2);
        arrayMap.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        arrayMap.put("android.media.metadata.MEDIA_ID", 1);
        arrayMap.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        arrayMap.put("android.media.metadata.MEDIA_URI", 1);
        arrayMap.put("android.media.metadata.ADVERTISEMENT", 0);
        arrayMap.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        PREFERRED_DESCRIPTION_ORDER = new String[]{MediaItemMetadata.KEY_TITLE, MediaItemMetadata.KEY_ARTIST, "android.media.metadata.ALBUM", MediaItemMetadata.KEY_ALBUM_ARTIST, "android.media.metadata.WRITER", MediaItemMetadata.KEY_AUTHOR, MediaItemMetadata.KEY_COMPOSER, "android.media.metadata.DISPLAY_SUBTITLE", "android.media.metadata.DISPLAY_DESCRIPTION"};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: androidx.media3.session.legacy.MediaMetadataCompat.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaMetadataCompat createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaMetadataCompat[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }
        };
    }

    public MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.bundle = bundle2;
        MediaSessionCompat.ensureClassLoader(bundle2);
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.bundle = (Bundle) Preconditions.checkNotNull(parcel.readBundle(MediaSessionCompat.class.getClassLoader()));
    }

    public boolean containsKey(String str) {
        return this.bundle.containsKey(str);
    }

    public long getLong(String str) {
        return this.bundle.getLong(str, 0L);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.bundle);
    }

    public MediaMetadata getMediaMetadata() {
        if (this.metadataFwk == null) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            for (String str : this.bundle.keySet()) {
                Integer num = METADATA_KEYS_TYPE.get(str);
                if (num == null) {
                    num = -1;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 0) {
                    builder.putLong(str, this.bundle.getLong(str));
                } else if (iIntValue == 1) {
                    builder.putText(str, this.bundle.getCharSequence(str));
                } else if (iIntValue == 2) {
                    builder.putBitmap(str, (Bitmap) this.bundle.getParcelable(str));
                } else {
                    Bundle bundle = this.bundle;
                    if (iIntValue == 3) {
                        builder.putRating(str, (Rating) bundle.getParcelable(str));
                    } else {
                        Object obj = bundle.get(str);
                        if (obj == null || (obj instanceof CharSequence)) {
                            builder.putText(str, (CharSequence) obj);
                        } else if (obj instanceof Long) {
                            builder.putLong(str, ((Long) obj).longValue());
                        }
                    }
                }
            }
            this.metadataFwk = builder.build();
        }
        return this.metadataFwk;
    }

    public static final class Builder {
        private final Bundle bundle = new Bundle();

        public Builder putText(String str, CharSequence charSequence) {
            Integer num = MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
            if (num != null && num.intValue() != 1) {
                Native$$ExternalSyntheticBUOutline0.m512m("The ", str, " key cannot be used to put a CharSequence");
                return null;
            }
            this.bundle.putCharSequence(str, charSequence);
            return this;
        }

        public Builder putString(String str, String str2) {
            Integer num = MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
            if (num != null && num.intValue() != 1) {
                Native$$ExternalSyntheticBUOutline0.m512m("The ", str, " key cannot be used to put a String");
                return null;
            }
            this.bundle.putCharSequence(str, str2);
            return this;
        }

        public Builder putLong(String str, long j) {
            Integer num = MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
            if (num != null && num.intValue() != 0) {
                Native$$ExternalSyntheticBUOutline0.m512m("The ", str, " key cannot be used to put a long");
                return null;
            }
            this.bundle.putLong(str, j);
            return this;
        }

        public Builder putRating(String str, RatingCompat ratingCompat) {
            Integer num = MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
            if (num != null && num.intValue() != 3) {
                Native$$ExternalSyntheticBUOutline0.m512m("The ", str, " key cannot be used to put a Rating");
                return null;
            }
            this.bundle.putParcelable(str, (Parcelable) ratingCompat.getRating());
            return this;
        }

        public Builder putBitmap(String str, Bitmap bitmap) {
            Integer num = MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
            if (num != null && num.intValue() != 2) {
                Native$$ExternalSyntheticBUOutline0.m512m("The ", str, " key cannot be used to put a Bitmap");
                return null;
            }
            this.bundle.putParcelable(str, bitmap);
            return this;
        }

        public MediaMetadataCompat build() {
            return new MediaMetadataCompat(this.bundle);
        }
    }
}
