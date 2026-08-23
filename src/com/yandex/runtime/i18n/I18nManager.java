package com.yandex.runtime.i18n;

/* JADX INFO: loaded from: classes5.dex */
public interface I18nManager {
    CanonicalUnit canonicalSpeed(double d);

    I18nPrefs getPrefs();

    SystemOfMeasurement getSom();

    TimeFormat getTimeFormat();

    boolean isValid();

    String localizeCanonicalUnit(CanonicalUnit canonicalUnit);

    String localizeDataSize(long j);

    String localizeDistance(int i);

    String localizeDuration(int i);

    String localizeSpeed(double d);

    void setPrefs(I18nPrefs i18nPrefs);

    void setSom(SystemOfMeasurement systemOfMeasurement);

    void setTimeFormat(TimeFormat timeFormat);
}
