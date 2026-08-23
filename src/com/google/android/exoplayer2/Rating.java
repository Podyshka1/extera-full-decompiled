package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Rating implements Bundleable {
    static final String FIELD_RATING_TYPE = Util.intToStringMaxRadix(0);
    public static final Bundleable.Creator CREATOR = new Bundleable.Creator() { // from class: com.google.android.exoplayer2.Rating$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final Bundleable fromBundle(Bundle bundle) {
            return Rating.fromBundle(bundle);
        }
    };

    Rating() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Rating fromBundle(Bundle bundle) {
        int i = bundle.getInt(FIELD_RATING_TYPE, -1);
        if (i == 0) {
            return (Rating) HeartRating.CREATOR.fromBundle(bundle);
        }
        if (i == 1) {
            return (Rating) PercentageRating.CREATOR.fromBundle(bundle);
        }
        if (i == 2) {
            return (Rating) StarRating.CREATOR.fromBundle(bundle);
        }
        if (i == 3) {
            return (Rating) ThumbRating.CREATOR.fromBundle(bundle);
        }
        throw new IllegalArgumentException("Unknown RatingType: " + i);
    }
}
