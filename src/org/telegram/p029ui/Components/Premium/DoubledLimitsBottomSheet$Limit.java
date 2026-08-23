package org.telegram.p029ui.Components.Premium;

/* JADX INFO: loaded from: classes7.dex */
class DoubledLimitsBottomSheet$Limit {
    final int current;
    final int defaultLimit;
    final int premiumLimit;
    final String subtitle;
    final String title;
    public int yOffset;

    private DoubledLimitsBottomSheet$Limit(String str, String str2, int i, int i2) {
        this.current = -1;
        this.title = str;
        this.subtitle = str2;
        this.defaultLimit = i;
        this.premiumLimit = i2;
    }
}
