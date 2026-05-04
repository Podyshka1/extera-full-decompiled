package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ParcelUtils {
    public static Parcelable toParcelable(VersionedParcelable versionedParcelable) {
        return new ParcelImpl(versionedParcelable);
    }

    public static VersionedParcelable fromParcelable(Parcelable parcelable) {
        if (!(parcelable instanceof ParcelImpl)) {
            throw new IllegalArgumentException("Invalid parcel");
        }
        return ((ParcelImpl) parcelable).getVersionedParcel();
    }

    public static void putVersionedParcelable(Bundle bundle, String str, VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", toParcelable(versionedParcelable));
        bundle.putParcelable(str, bundle2);
    }

    public static VersionedParcelable getVersionedParcelable(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(ParcelUtils.class.getClassLoader());
            return fromParcelable(bundle2.getParcelable("a"));
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
