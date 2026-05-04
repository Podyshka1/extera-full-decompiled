package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes7.dex */
public class SubtitleWithCounterCell extends HeaderCell {
    private final AnimatedTextView counterTextView;

    public SubtitleWithCounterCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.counterTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.45f, 0L, 240L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextView.setGravity(LocaleController.isRTL ? 3 : 5);
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(15.0f));
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
        addView(animatedTextView, LayoutHelper.createFrame(-2, 24.0f, (LocaleController.isRTL ? 3 : 5) | 80, 24.0f, 0.0f, 24.0f, 0.0f));
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
    }

    public void updateCounter(boolean z, int i) {
        String pluralString = i <= 0 ? _UrlKt.FRAGMENT_ENCODE_SET : LocaleController.formatPluralString("BoostingBoostsCountTitle", i, Integer.valueOf(i));
        this.counterTextView.cancelAnimation();
        this.counterTextView.setText(pluralString, z);
    }
}
