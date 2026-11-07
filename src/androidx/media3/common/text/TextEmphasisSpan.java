package androidx.media3.common.text;

import android.os.Bundle;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes3.dex */
public final class TextEmphasisSpan {
    public int markFill;
    public int markShape;
    public final int position;
    private static final String FIELD_MARK_SHAPE = Util.intToStringMaxRadix(0);
    private static final String FIELD_MARK_FILL = Util.intToStringMaxRadix(1);
    private static final String FIELD_POSITION = Util.intToStringMaxRadix(2);

    public TextEmphasisSpan(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_MARK_SHAPE, this.markShape);
        bundle.putInt(FIELD_MARK_FILL, this.markFill);
        bundle.putInt(FIELD_POSITION, this.position);
        return bundle;
    }

    public static TextEmphasisSpan fromBundle(Bundle bundle) {
        return new TextEmphasisSpan(bundle.getInt(FIELD_MARK_SHAPE), bundle.getInt(FIELD_MARK_FILL), bundle.getInt(FIELD_POSITION));
    }
}
