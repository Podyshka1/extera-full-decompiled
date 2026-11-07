package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Rating {
    static final String FIELD_RATING_TYPE = Util.intToStringMaxRadix(0);

    public abstract boolean isRated();

    public abstract Bundle toBundle();

    public static Rating fromBundle(Bundle bundle) {
        int i = bundle.getInt(FIELD_RATING_TYPE, -1);
        if (i == 0) {
            return HeartRating.fromBundle(bundle);
        }
        if (i == 1) {
            return PercentageRating.fromBundle(bundle);
        }
        if (i == 2) {
            return StarRating.fromBundle(bundle);
        }
        if (i == 3) {
            return ThumbRating.fromBundle(bundle);
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Unknown RatingType: ", i);
        return null;
    }
}
