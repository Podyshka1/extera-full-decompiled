package androidx.media3.common.text;

import android.os.Bundle;
import android.text.Spannable;
import android.text.Spanned;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
abstract class CustomSpanBundler {
    private static final String FIELD_START_INDEX = Util.intToStringMaxRadix(0);
    private static final String FIELD_END_INDEX = Util.intToStringMaxRadix(1);
    private static final String FIELD_FLAGS = Util.intToStringMaxRadix(2);
    private static final String FIELD_TYPE = Util.intToStringMaxRadix(3);
    private static final String FIELD_PARAMS = Util.intToStringMaxRadix(4);

    public static ArrayList<Bundle> bundleCustomSpans(Spanned spanned) {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        for (RubySpan rubySpan : (RubySpan[]) spanned.getSpans(0, spanned.length(), RubySpan.class)) {
            arrayList.add(spanToBundle(spanned, rubySpan, 1, rubySpan.toBundle()));
        }
        for (TextEmphasisSpan textEmphasisSpan : (TextEmphasisSpan[]) spanned.getSpans(0, spanned.length(), TextEmphasisSpan.class)) {
            arrayList.add(spanToBundle(spanned, textEmphasisSpan, 2, textEmphasisSpan.toBundle()));
        }
        for (HorizontalTextInVerticalContextSpan horizontalTextInVerticalContextSpan : (HorizontalTextInVerticalContextSpan[]) spanned.getSpans(0, spanned.length(), HorizontalTextInVerticalContextSpan.class)) {
            arrayList.add(spanToBundle(spanned, horizontalTextInVerticalContextSpan, 3, null));
        }
        for (VoiceSpan voiceSpan : (VoiceSpan[]) spanned.getSpans(0, spanned.length(), VoiceSpan.class)) {
            arrayList.add(spanToBundle(spanned, voiceSpan, 4, voiceSpan.toBundle()));
        }
        return arrayList;
    }

    public static void unbundleAndApplyCustomSpan(Bundle bundle, Spannable spannable) {
        int i = bundle.getInt(FIELD_START_INDEX);
        int i2 = bundle.getInt(FIELD_END_INDEX);
        int i3 = bundle.getInt(FIELD_FLAGS);
        int i4 = bundle.getInt(FIELD_TYPE, -1);
        Bundle bundle2 = bundle.getBundle(FIELD_PARAMS);
        if (i4 == 1) {
            spannable.setSpan(RubySpan.fromBundle((Bundle) Assertions.checkNotNull(bundle2)), i, i2, i3);
            return;
        }
        if (i4 == 2) {
            spannable.setSpan(TextEmphasisSpan.fromBundle((Bundle) Assertions.checkNotNull(bundle2)), i, i2, i3);
        } else if (i4 == 3) {
            spannable.setSpan(new HorizontalTextInVerticalContextSpan(), i, i2, i3);
        } else {
            if (i4 != 4) {
                return;
            }
            spannable.setSpan(VoiceSpan.fromBundle((Bundle) Assertions.checkNotNull(bundle2)), i, i2, i3);
        }
    }

    private static Bundle spanToBundle(Spanned spanned, Object obj, int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(FIELD_START_INDEX, spanned.getSpanStart(obj));
        bundle2.putInt(FIELD_END_INDEX, spanned.getSpanEnd(obj));
        bundle2.putInt(FIELD_FLAGS, spanned.getSpanFlags(obj));
        bundle2.putInt(FIELD_TYPE, i);
        if (bundle != null) {
            bundle2.putBundle(FIELD_PARAMS, bundle);
        }
        return bundle2;
    }
}
