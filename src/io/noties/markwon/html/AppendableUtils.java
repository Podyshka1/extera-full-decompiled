package io.noties.markwon.html;

import java.io.IOException;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class AppendableUtils {
    public static void appendQuietly(Appendable appendable, char c2) {
        try {
            appendable.append(c2);
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }

    public static void appendQuietly(Appendable appendable, CharSequence charSequence) {
        try {
            appendable.append(charSequence);
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
        }
    }
}
