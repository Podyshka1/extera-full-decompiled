package org.telegram.messenger.utils.tlutils;

/* JADX INFO: loaded from: classes6.dex */
abstract /* synthetic */ class AmountUtils$1 {

    /* JADX INFO: renamed from: $SwitchMap$org$telegram$messenger$utils$tlutils$AmountUtils$Currency */
    static final /* synthetic */ int[] f1002xdde0284e;

    static {
        int[] iArr = new int[AmountUtils$Currency.values().length];
        f1002xdde0284e = iArr;
        try {
            iArr[AmountUtils$Currency.STARS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f1002xdde0284e[AmountUtils$Currency.TON.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
