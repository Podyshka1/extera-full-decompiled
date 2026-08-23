package com.yandex.runtime.i18n.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.i18n.CanonicalUnit;
import com.yandex.runtime.i18n.I18nManager;
import com.yandex.runtime.i18n.I18nPrefs;
import com.yandex.runtime.i18n.SystemOfMeasurement;
import com.yandex.runtime.i18n.TimeFormat;

/* JADX INFO: loaded from: classes5.dex */
public class I18nManagerBinding implements I18nManager {
    private final NativeObject nativeObject;

    @Override // com.yandex.runtime.i18n.I18nManager
    public native CanonicalUnit canonicalSpeed(double d);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native I18nPrefs getPrefs();

    @Override // com.yandex.runtime.i18n.I18nManager
    public native SystemOfMeasurement getSom();

    @Override // com.yandex.runtime.i18n.I18nManager
    public native TimeFormat getTimeFormat();

    @Override // com.yandex.runtime.i18n.I18nManager
    public native boolean isValid();

    @Override // com.yandex.runtime.i18n.I18nManager
    public native String localizeCanonicalUnit(CanonicalUnit canonicalUnit);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native String localizeDataSize(long j);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native String localizeDistance(int i);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native String localizeDuration(int i);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native String localizeSpeed(double d);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native void setPrefs(I18nPrefs i18nPrefs);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native void setSom(SystemOfMeasurement systemOfMeasurement);

    @Override // com.yandex.runtime.i18n.I18nManager
    public native void setTimeFormat(TimeFormat timeFormat);

    public I18nManagerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
