package com.yandex.runtime.locale.internal;

import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes.dex */
public class LocaleUtils {
    public static String getSysLanguage() {
        return Runtime.getApplicationContext().getResources().getConfiguration().locale.getLanguage();
    }

    public static String getCountry() {
        return Runtime.getApplicationContext().getResources().getConfiguration().locale.getCountry();
    }
}
