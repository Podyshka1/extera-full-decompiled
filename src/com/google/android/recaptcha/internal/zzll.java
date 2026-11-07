package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzll {
    public /* synthetic */ zzll(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int zzc(String str) {
        return Integer.parseInt(StringsKt.substringBefore$default(StringsKt.replace$default("18.9.2", ".", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null), "-", (String) null, 2, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String zzd(String str) {
        return "cesdb".concat(String.valueOf(StringsKt.substringAfter("18.9.2", "-", _UrlKt.FRAGMENT_ENCODE_SET)));
    }
}
