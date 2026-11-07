package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"BanParcelableUsage"})
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: androidx.media3.session.legacy.MediaDescriptionCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.fromMediaDescription((MediaDescription) MediaDescription.CREATOR.createFromParcel(parcel));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };
    private final CharSequence description;
    private MediaDescription descriptionFwk;
    private final Bundle extras;
    private final Bitmap icon;
    private final Uri iconUri;
    private final String mediaId;
    private final Uri mediaUri;
    private final CharSequence subtitle;
    private final CharSequence title;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mediaId = str;
        this.title = charSequence;
        this.subtitle = charSequence2;
        this.description = charSequence3;
        this.icon = bitmap;
        this.iconUri = uri;
        this.extras = bundle;
        this.mediaUri = uri2;
    }

    public String getMediaId() {
        return this.mediaId;
    }

    public CharSequence getTitle() {
        return this.title;
    }

    public CharSequence getSubtitle() {
        return this.subtitle;
    }

    public CharSequence getDescription() {
        return this.description;
    }

    public Bitmap getIconBitmap() {
        return this.icon;
    }

    public Uri getIconUri() {
        return this.iconUri;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public Uri getMediaUri() {
        return this.mediaUri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        getMediaDescription().writeToParcel(parcel, i);
    }

    public String toString() {
        return ((Object) this.title) + ", " + ((Object) this.subtitle) + ", " + ((Object) this.description);
    }

    public MediaDescription getMediaDescription() {
        MediaDescription mediaDescription = this.descriptionFwk;
        if (mediaDescription != null) {
            return mediaDescription;
        }
        MediaDescription.Builder builder = new MediaDescription.Builder();
        builder.setMediaId(this.mediaId);
        builder.setTitle(this.title);
        builder.setSubtitle(this.subtitle);
        builder.setDescription(this.description);
        builder.setIconBitmap(this.icon);
        builder.setIconUri(this.iconUri);
        builder.setExtras(this.extras);
        Api23Impl.setMediaUri(builder, this.mediaUri);
        MediaDescription mediaDescriptionBuild = builder.build();
        this.descriptionFwk = mediaDescriptionBuild;
        return mediaDescriptionBuild;
    }

    public static MediaDescriptionCompat fromMediaDescription(MediaDescription mediaDescription) {
        Builder builder = new Builder();
        builder.setMediaId(mediaDescription.getMediaId());
        builder.setTitle(mediaDescription.getTitle());
        builder.setSubtitle(mediaDescription.getSubtitle());
        builder.setDescription(mediaDescription.getDescription());
        builder.setIconBitmap(mediaDescription.getIconBitmap());
        builder.setIconUri(mediaDescription.getIconUri());
        Bundle bundleUnparcelWithClassLoader = MediaSessionCompat.unparcelWithClassLoader(mediaDescription.getExtras());
        if (bundleUnparcelWithClassLoader != null) {
            bundleUnparcelWithClassLoader = new Bundle(bundleUnparcelWithClassLoader);
        }
        Uri uri = null;
        if (bundleUnparcelWithClassLoader != null) {
            Uri uri2 = (Uri) bundleUnparcelWithClassLoader.getParcelable("android.support.v4.media.description.MEDIA_URI");
            if (uri2 != null) {
                if (bundleUnparcelWithClassLoader.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundleUnparcelWithClassLoader.size() == 2) {
                    bundleUnparcelWithClassLoader = null;
                } else {
                    bundleUnparcelWithClassLoader.remove("android.support.v4.media.description.MEDIA_URI");
                    bundleUnparcelWithClassLoader.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
                }
            }
            uri = uri2;
        }
        builder.setExtras(bundleUnparcelWithClassLoader);
        if (uri != null) {
            builder.setMediaUri(uri);
        } else {
            builder.setMediaUri(Api23Impl.getMediaUri(mediaDescription));
        }
        MediaDescriptionCompat mediaDescriptionCompatBuild = builder.build();
        mediaDescriptionCompatBuild.descriptionFwk = mediaDescription;
        return mediaDescriptionCompatBuild;
    }

    public static final class Builder {
        private CharSequence description;
        private Bundle extras;
        private Bitmap icon;
        private Uri iconUri;
        private String mediaId;
        private Uri mediaUri;
        private CharSequence subtitle;
        private CharSequence title;

        public Builder setMediaId(String str) {
            this.mediaId = str;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public Builder setSubtitle(CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        public Builder setDescription(CharSequence charSequence) {
            this.description = charSequence;
            return this;
        }

        public Builder setIconBitmap(Bitmap bitmap) {
            this.icon = bitmap;
            return this;
        }

        public Builder setIconUri(Uri uri) {
            this.iconUri = uri;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setMediaUri(Uri uri) {
            this.mediaUri = uri;
            return this;
        }

        public MediaDescriptionCompat build() {
            return new MediaDescriptionCompat(this.mediaId, this.title, this.subtitle, this.description, this.icon, this.iconUri, this.extras, this.mediaUri);
        }
    }

    public static class Api23Impl {
        public static void setMediaUri(MediaDescription.Builder builder, Uri uri) {
            builder.setMediaUri(uri);
        }

        public static Uri getMediaUri(MediaDescription mediaDescription) {
            return mediaDescription.getMediaUri();
        }
    }
}
