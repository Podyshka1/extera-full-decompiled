package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ParcelUtils {
    public static Parcelable toParcelable(VersionedParcelable versionedParcelable) {
        return new ParcelImpl(versionedParcelable);
    }

    public static <T extends VersionedParcelable> T fromParcelable(Parcelable parcelable) {
        if (!(parcelable instanceof ParcelImpl)) {
            f$$ExternalSyntheticBUOutline1.m178m("Invalid parcel");
            return null;
        }
        return (T) ((ParcelImpl) parcelable).getVersionedParcel();
    }

    public static void putVersionedParcelable(Bundle bundle, String str, VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", toParcelable(versionedParcelable));
        bundle.putParcelable(str, bundle2);
    }

    public static <T extends VersionedParcelable> T getVersionedParcelable(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(ParcelUtils.class.getClassLoader());
            return (T) fromParcelable(bundle2.getParcelable("a"));
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
