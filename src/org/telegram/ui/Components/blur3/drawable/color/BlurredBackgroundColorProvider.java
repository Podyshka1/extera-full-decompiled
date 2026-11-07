package org.telegram.ui.Components.blur3.drawable.color;

import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public interface BlurredBackgroundColorProvider {
    int getBackgroundColor();

    int getShadowColor();

    int getStrokeColorBottom();

    int getStrokeColorTop();

    default int getStrokeColorFull() {
        return Theme.getDividerColor(null);
    }
}
