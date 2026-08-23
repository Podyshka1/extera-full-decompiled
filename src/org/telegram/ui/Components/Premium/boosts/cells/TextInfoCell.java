package org.telegram.ui.Components.Premium.boosts.cells;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import org.telegram.messenger.C2573R;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.CombinedDrawable;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class TextInfoCell extends TextInfoPrivacyCell {
    private final Theme.ResourcesProvider resourcesProvider;

    public TextInfoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.resourcesProvider = resourcesProvider;
    }

    public void setBackground(boolean z) {
        CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)), Theme.getThemedDrawable(getContext(), z ? C2573R.drawable.greydivider_bottom : C2573R.drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, this.resourcesProvider)), 0, 0);
        combinedDrawable.setFullsize(true);
        setBackground(combinedDrawable);
    }
}
