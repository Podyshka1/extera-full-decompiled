package androidx.media3.session.legacy;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LegacyParcelableUtil {
    private static <T> T maybeApplyMediaDescriptionParcelableBugWorkaround(T t) {
        return t;
    }

    public static <T extends Parcelable, U extends Parcelable> T convert(U u, Parcelable.Creator<T> creator) {
        if (u == null) {
            return null;
        }
        Parcelable parcelable = (Parcelable) maybeApplyMediaDescriptionParcelableBugWorkaround(u);
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            parcelObtain.setDataPosition(0);
            return (T) maybeApplyMediaDescriptionParcelableBugWorkaround(creator.createFromParcel(parcelObtain));
        } finally {
            parcelObtain.recycle();
        }
    }
}
