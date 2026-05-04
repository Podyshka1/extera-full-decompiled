package com.yandex.runtime.i18n;

/* JADX INFO: loaded from: classes.dex */
public class I18nManagerFactory {
    public static native I18nManager getI18nManagerInstance();

    public static native String getLocale();

    public static native void setLocale(String str);
}
