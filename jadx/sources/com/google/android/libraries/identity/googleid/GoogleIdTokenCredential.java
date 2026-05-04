package com.google.android.libraries.identity.googleid;

import android.net.Uri;
import android.os.Bundle;
import androidx.credentials.CustomCredential;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class GoogleIdTokenCredential extends CustomCredential {
    public static final Companion Companion = new Companion(null);
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final Uri zzf;
    private final String zzg;

    public static final class Builder {
        private String zza = _UrlKt.FRAGMENT_ENCODE_SET;
        private String zzb = _UrlKt.FRAGMENT_ENCODE_SET;
        private String zzc;
        private String zzd;
        private String zze;
        private Uri zzf;
        private String zzg;

        public final GoogleIdTokenCredential build() {
            return new GoogleIdTokenCredential(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg);
        }

        public final Builder setDisplayName(String str) {
            this.zzc = str;
            return this;
        }

        public final Builder setFamilyName(String str) {
            this.zzd = str;
            return this;
        }

        public final Builder setGivenName(String str) {
            this.zze = str;
            return this;
        }

        public final Builder setId(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.zza = id;
            return this;
        }

        public final Builder setIdToken(String idToken) {
            Intrinsics.checkNotNullParameter(idToken, "idToken");
            this.zzb = idToken;
            return this;
        }

        public final Builder setPhoneNumber(String str) {
            this.zzg = str;
            return this;
        }

        public final Builder setProfilePictureUri(Uri uri) {
            this.zzf = uri;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public GoogleIdTokenCredential(String id, String idToken, String str, String str2, String str3, Uri uri, String str4) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Bundle bundle = new Bundle();
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID", id);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN", idToken);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME", str);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME", str2);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME", str3);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER", str4);
        bundle.putParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI", uri);
        super("com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL", bundle);
        this.zza = id;
        this.zzb = idToken;
        this.zzc = str;
        this.zzd = str2;
        this.zze = str3;
        this.zzf = uri;
        this.zzg = str4;
        if (id.length() <= 0) {
            throw new IllegalArgumentException("id should not be empty");
        }
        if (idToken.length() <= 0) {
            throw new IllegalArgumentException("idToken should not be empty");
        }
    }
}
