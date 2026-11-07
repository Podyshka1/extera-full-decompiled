package com.google.android.libraries.identity.googleid;

import android.net.Uri;
import android.os.Bundle;
import androidx.credentials.CustomCredential;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rBI\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "Landroidx/credentials/CustomCredential;", _UrlKt.FRAGMENT_ENCODE_SET, "id", "idToken", "displayName", "familyName", "givenName", "Landroid/net/Uri;", "profilePictureUri", "phoneNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V", "Companion", "Builder", "java.com.google.android.libraries.identity.googleid.granule_granule"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
public final class GoogleIdTokenCredential extends CustomCredential {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final Uri zzf;
    private final String zzg;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "displayName", _UrlKt.FRAGMENT_ENCODE_SET, "familyName", "givenName", "id", "idToken", "phoneNumber", "profilePictureUri", "Landroid/net/Uri;", "build", "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "setDisplayName", "setFamilyName", "setGivenName", "setId", "setIdToken", "setPhoneNumber", "setProfilePictureUri", "java.com.google.android.libraries.identity.googleid.granule_granule"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
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

        public final Builder setDisplayName(String displayName) {
            this.zzc = displayName;
            return this;
        }

        public final Builder setFamilyName(String familyName) {
            this.zzd = familyName;
            return this;
        }

        public final Builder setGivenName(String givenName) {
            this.zze = givenName;
            return this;
        }

        public final Builder setId(String id) {
            this.zza = id;
            return this;
        }

        public final Builder setIdToken(String idToken) {
            this.zzb = idToken;
            return this;
        }

        public final Builder setPhoneNumber(String phoneNumber) {
            this.zzg = phoneNumber;
            return this;
        }

        public final Builder setProfilePictureUri(Uri profilePictureUri) {
            this.zzf = profilePictureUri;
            return this;
        }
    }

    public GoogleIdTokenCredential(String str, String str2, String str3, String str4, String str5, Uri uri, String str6) {
        Bundle bundle = new Bundle();
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID", str);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_ID_TOKEN", str2);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_DISPLAY_NAME", str3);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_FAMILY_NAME", str4);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_GIVEN_NAME", str5);
        bundle.putString("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PHONE_NUMBER", str6);
        bundle.putParcelable("com.google.android.libraries.identity.googleid.BUNDLE_KEY_PROFILE_PICTURE_URI", uri);
        super("com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL", bundle);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = uri;
        this.zzg = str6;
        if (str.length() <= 0) {
            f$$ExternalSyntheticBUOutline1.m212m("id should not be empty");
            throw null;
        }
        if (str2.length() > 0) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m("idToken should not be empty");
        throw null;
    }
}
