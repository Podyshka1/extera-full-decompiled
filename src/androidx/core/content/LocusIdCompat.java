package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class LocusIdCompat {
    private final String mId;
    private final LocusId mWrapped;

    public LocusIdCompat(String str) {
        this.mId = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.mWrapped = Api29Impl.create(str);
        } else {
            this.mWrapped = null;
        }
    }

    public String getId() {
        return this.mId;
    }

    public int hashCode() {
        String str = this.mId;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = this.mId;
        String str2 = ((LocusIdCompat) obj).mId;
        return str == null ? str2 == null : str.equals(str2);
    }

    public String toString() {
        return "LocusIdCompat[" + getSanitizedId() + "]";
    }

    public LocusId toLocusId() {
        return this.mWrapped;
    }

    public static LocusIdCompat toLocusIdCompat(LocusId locusId) {
        Preconditions.checkNotNull(locusId, "locusId cannot be null");
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(Api29Impl.getId(locusId), "id cannot be empty"));
    }

    private String getSanitizedId() {
        return this.mId.length() + "_chars";
    }

    public static class Api29Impl {
        public static LocusId create(String str) {
            return new LocusId(str);
        }

        public static String getId(LocusId locusId) {
            return locusId.getId();
        }
    }
}
