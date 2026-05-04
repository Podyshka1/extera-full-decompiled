package org.telegram.p029ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Components.CombinedDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class TextInfoCell extends TextInfoPrivacyCell {
    private final Theme.ResourcesProvider resourcesProvider;

    public TextInfoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.resourcesProvider = resourcesProvider;
    }

    public void setBackground(boolean z) {
        CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)), Theme.getThemedDrawable(getContext(), z ? C2888R.drawable.greydivider_bottom : C2888R.drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, this.resourcesProvider)), 0, 0);
        combinedDrawable.setFullsize(true);
        setBackground(combinedDrawable);
    }
}
