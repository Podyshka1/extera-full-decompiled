package androidx.media3.common;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.TranslateController;

/* JADX INFO: loaded from: classes3.dex */
public final class TrackGroup {
    private static final String FIELD_FORMATS = Util.intToStringMaxRadix(0);
    private static final String FIELD_ID = Util.intToStringMaxRadix(1);
    private final Format[] formats;
    private int hashCode;
    public final String id;
    public final int length;
    public final int type;

    private static int normalizeRoleFlags(int i) {
        return i | 16384;
    }

    public TrackGroup(Format... formatArr) {
        this(_UrlKt.FRAGMENT_ENCODE_SET, formatArr);
    }

    public TrackGroup(String str, Format... formatArr) {
        Assertions.checkArgument(formatArr.length > 0);
        this.id = str;
        this.formats = formatArr;
        this.length = formatArr.length;
        int trackType = MimeTypes.getTrackType(formatArr[0].sampleMimeType);
        this.type = trackType == -1 ? MimeTypes.getTrackType(formatArr[0].containerMimeType) : trackType;
        verifyCorrectness();
    }

    public TrackGroup copyWithId(String str) {
        return new TrackGroup(str, this.formats);
    }

    public Format getFormat(int i) {
        return this.formats[i];
    }

    public int indexOf(Format format) {
        int i = 0;
        while (true) {
            Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i]) {
                return i;
            }
            i++;
        }
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((527 + this.id.hashCode()) * 31) + Arrays.hashCode(this.formats);
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroup.class == obj.getClass()) {
            TrackGroup trackGroup = (TrackGroup) obj;
            if (this.id.equals(trackGroup.id) && Arrays.equals(this.formats, trackGroup.formats)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return this.id + ": " + Arrays.toString(this.formats);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.formats.length);
        for (Format format : this.formats) {
            arrayList.add(format.toBundle());
        }
        bundle.putParcelableArrayList(FIELD_FORMATS, arrayList);
        bundle.putString(FIELD_ID, this.id);
        return bundle;
    }

    public static TrackGroup fromBundle(Bundle bundle) {
        ImmutableList immutableListFromBundleList;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_FORMATS);
        if (parcelableArrayList == null) {
            immutableListFromBundleList = ImmutableList.of();
        } else {
            immutableListFromBundleList = BundleCollectionUtil.fromBundleList(new Function() { // from class: androidx.media3.common.TrackGroup$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Format.fromBundle((Bundle) obj);
                }
            }, parcelableArrayList);
        }
        return new TrackGroup(bundle.getString(FIELD_ID, _UrlKt.FRAGMENT_ENCODE_SET), (Format[]) immutableListFromBundleList.toArray(new Format[0]));
    }

    private void verifyCorrectness() {
        String strNormalizeLanguage = normalizeLanguage(this.formats[0].language);
        int iNormalizeRoleFlags = normalizeRoleFlags(this.formats[0].roleFlags);
        int i = 1;
        while (true) {
            Format[] formatArr = this.formats;
            if (i >= formatArr.length) {
                return;
            }
            boolean zEquals = strNormalizeLanguage.equals(normalizeLanguage(formatArr[i].language));
            Format[] formatArr2 = this.formats;
            if (!zEquals) {
                logErrorMessage("languages", formatArr2[0].language, formatArr2[i].language, i);
                return;
            } else {
                if (iNormalizeRoleFlags != normalizeRoleFlags(formatArr2[i].roleFlags)) {
                    logErrorMessage("role flags", Integer.toBinaryString(this.formats[0].roleFlags), Integer.toBinaryString(this.formats[i].roleFlags), i);
                    return;
                }
                i++;
            }
        }
    }

    private static String normalizeLanguage(String str) {
        return (str == null || str.equals(TranslateController.UNKNOWN_LANGUAGE)) ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    private static void logErrorMessage(String str, String str2, String str3, int i) {
        Log.m161e("TrackGroup", _UrlKt.FRAGMENT_ENCODE_SET, new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }
}
