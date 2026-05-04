package com.google.android.exoplayer2.source;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class TrackGroupArray implements Bundleable {
    private int hashCode;
    public final int length;
    private final ImmutableList trackGroups;
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    private static final String FIELD_TRACK_GROUPS = Util.intToStringMaxRadix(0);
    public static final Bundleable.Creator CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.source.TrackGroupArray$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return TrackGroupArray.m3226$r8$lambda$1S9rBhP1Lx6SEltOcjGNddKmPg(bundle);
        }
    };

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.trackGroups = ImmutableList.copyOf(trackGroupArr);
        this.length = trackGroupArr.length;
        verifyCorrectness();
    }

    public TrackGroup get(int i) {
        return (TrackGroup) this.trackGroups.get(i);
    }

    public int indexOf(TrackGroup trackGroup) {
        int iIndexOf = this.trackGroups.indexOf(trackGroup);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.trackGroups.hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroupArray.class == obj.getClass()) {
            TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
            if (this.length == trackGroupArray.length && this.trackGroups.equals(trackGroupArray.trackGroups)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_TRACK_GROUPS, BundleableUtil.toBundleArrayList(this.trackGroups));
        return bundle;
    }

    /* JADX INFO: renamed from: $r8$lambda$1S9rBhP1-Lx6SEltOcjGNddKmPg, reason: not valid java name */
    public static /* synthetic */ TrackGroupArray m3226$r8$lambda$1S9rBhP1Lx6SEltOcjGNddKmPg(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_TRACK_GROUPS);
        if (parcelableArrayList == null) {
            return new TrackGroupArray(new TrackGroup[0]);
        }
        return new TrackGroupArray((TrackGroup[]) BundleableUtil.fromBundleList(TrackGroup.CREATOR, parcelableArrayList).toArray(new TrackGroup[0]));
    }

    private void verifyCorrectness() {
        int i = 0;
        while (i < this.trackGroups.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.trackGroups.size(); i3++) {
                if (((TrackGroup) this.trackGroups.get(i)).equals(this.trackGroups.get(i3))) {
                    Log.m326e("TrackGroupArray", _UrlKt.FRAGMENT_ENCODE_SET, new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }
}
