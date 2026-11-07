package com.exteragram.messenger.export.output.html;

import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.telegram.ui.Wallet.WalletActivity$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class HtmlContext$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ String m257m(String str, int i) {
        if (i < 0) {
            CharCodeKt$$ExternalSyntheticBUOutline0.m908m("count is negative: ", i);
            return null;
        }
        int length = str.length();
        if (i == 0 || length == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (i == 1) {
            return str;
        }
        if (str.length() > Integer.MAX_VALUE / i) {
            WalletActivity$$ExternalSyntheticBUOutline0.m1101m(str.length(), i);
            return null;
        }
        StringBuilder sb = new StringBuilder(length * i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(str);
        }
        return sb.toString();
    }
}
