package org.telegram.p029ui.Stories;

import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.GradientTools;

/* JADX INFO: loaded from: classes7.dex */
public class StoriesGradientTools extends GradientTools {
    int colorKey1;
    int colorKey2;

    public StoriesGradientTools() {
        int i = Theme.key_voipgroup_overlayGreen1;
        this.colorKey1 = i;
        this.colorKey2 = Theme.key_voipgroup_overlayBlue1;
        this.isDiagonal = true;
        setColors(Theme.getColor(i), Theme.getColor(this.colorKey2));
    }

    @Override // org.telegram.p029ui.Components.GradientTools
    protected void updateBounds() {
        setColors(Theme.getColor(this.colorKey1), Theme.getColor(this.colorKey2));
        super.updateBounds();
    }
}
