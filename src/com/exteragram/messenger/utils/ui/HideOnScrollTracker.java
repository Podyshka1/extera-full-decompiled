package com.exteragram.messenger.utils.ui;

import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
public final class HideOnScrollTracker {
    private int distance;

    public Boolean onScrolled(int i, boolean z) {
        if (i == 0) {
            return null;
        }
        if (z) {
            this.distance = 0;
            return Boolean.FALSE;
        }
        int i2 = this.distance;
        if (i2 != 0) {
            if ((i > 0) != (i2 > 0)) {
                this.distance = 0;
            }
        }
        int i3 = this.distance + i;
        this.distance = i3;
        if (i3 >= AndroidUtilities.dp(16.0f)) {
            return Boolean.TRUE;
        }
        if (this.distance <= (-AndroidUtilities.dp(48.0f))) {
            return Boolean.FALSE;
        }
        return null;
    }

    public void reset() {
        this.distance = 0;
    }
}
