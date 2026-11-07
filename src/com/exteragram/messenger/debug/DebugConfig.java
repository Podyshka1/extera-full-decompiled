package com.exteragram.messenger.debug;

import com.exteragram.messenger.config.BasePref;
import com.exteragram.messenger.config.BooleanPref;
import com.exteragram.messenger.config.IntegerPref;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0017\"+\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"+\u0010\t\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\f\u0010\b\u001a\u0004\b\n\u0010\u0004\"\u0004\b\u000b\u0010\u0006\"+\u0010\r\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0010\u0010\b\u001a\u0004\b\u000e\u0010\u0004\"\u0004\b\u000f\u0010\u0006\"+\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0014\u0010\b\u001a\u0004\b\u0012\u0010\u0004\"\u0004\b\u0013\u0010\u0006\"+\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0018\u0010\b\u001a\u0004\b\u0016\u0010\u0004\"\u0004\b\u0017\u0010\u0006\"+\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u001c\u0010\b\u001a\u0004\b\u001a\u0010\u0004\"\u0004\b\u001b\u0010\u0006\"+\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0000\u001a\u00020\u001d8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b#\u0010\b\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"\"+\u0010$\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b'\u0010\b\u001a\u0004\b%\u0010\u0004\"\u0004\b&\u0010\u0006\"+\u0010(\u001a\u00020\u001d2\u0006\u0010\u0000\u001a\u00020\u001d8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b+\u0010\b\u001a\u0004\b)\u0010 \"\u0004\b*\u0010\"\"+\u0010,\u001a\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b/\u0010\b\u001a\u0004\b-\u0010\u0004\"\u0004\b.\u0010\u0006\"+\u00100\u001a\u00020\u001d2\u0006\u0010\u0000\u001a\u00020\u001d8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b3\u0010\b\u001a\u0004\b1\u0010 \"\u0004\b2\u0010\"¨\u00064"}, d2 = {"<set-?>", _UrlKt.FRAGMENT_ENCODE_SET, "debugCameraMetrics", "getDebugCameraMetrics", "()Z", "setDebugCameraMetrics", "(Z)V", "debugCameraMetrics$delegate", "Lcom/exteragram/messenger/config/BasePref;", "forceCompactSavedMusic", "getForceCompactSavedMusic", "setForceCompactSavedMusic", "forceCompactSavedMusic$delegate", "disableApiRequests", "getDisableApiRequests", "setDisableApiRequests", "disableApiRequests$delegate", "disableChatFadeWallpaperBlend", "getDisableChatFadeWallpaperBlend", "setDisableChatFadeWallpaperBlend", "disableChatFadeWallpaperBlend$delegate", "chatFadeUseWhiteBackground", "getChatFadeUseWhiteBackground", "setChatFadeUseWhiteBackground", "chatFadeUseWhiteBackground$delegate", "heapMonitorEnabled", "getHeapMonitorEnabled", "setHeapMonitorEnabled", "heapMonitorEnabled$delegate", _UrlKt.FRAGMENT_ENCODE_SET, "heapMonitorLimitMb", "getHeapMonitorLimitMb", "()I", "setHeapMonitorLimitMb", "(I)V", "heapMonitorLimitMb$delegate", "loadMonitorEnabled", "getLoadMonitorEnabled", "setLoadMonitorEnabled", "loadMonitorEnabled$delegate", "loadMonitorCpuPercent", "getLoadMonitorCpuPercent", "setLoadMonitorCpuPercent", "loadMonitorCpuPercent$delegate", "freezeMonitorEnabled", "getFreezeMonitorEnabled", "setFreezeMonitorEnabled", "freezeMonitorEnabled$delegate", "freezeMonitorThresholdMs", "getFreezeMonitorThresholdMs", "setFreezeMonitorThresholdMs", "freezeMonitorThresholdMs$delegate", "TMessagesProj"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "DebugConfig")
public abstract class DebugConfig {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties;
    private static final BasePref chatFadeUseWhiteBackground$delegate;
    private static final BasePref debugCameraMetrics$delegate;
    private static final BasePref disableApiRequests$delegate;
    private static final BasePref disableChatFadeWallpaperBlend$delegate;
    private static final BasePref forceCompactSavedMusic$delegate;
    private static final BasePref freezeMonitorEnabled$delegate;
    private static final BasePref freezeMonitorThresholdMs$delegate;
    private static final BasePref heapMonitorEnabled$delegate;
    private static final BasePref heapMonitorLimitMb$delegate;
    private static final BasePref loadMonitorCpuPercent$delegate;
    private static final BasePref loadMonitorEnabled$delegate;

    static {
        KProperty<?>[] kPropertyArr = {Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "debugCameraMetrics", "getDebugCameraMetrics()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "forceCompactSavedMusic", "getForceCompactSavedMusic()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "disableApiRequests", "getDisableApiRequests()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "disableChatFadeWallpaperBlend", "getDisableChatFadeWallpaperBlend()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "chatFadeUseWhiteBackground", "getChatFadeUseWhiteBackground()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "heapMonitorEnabled", "getHeapMonitorEnabled()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "heapMonitorLimitMb", "getHeapMonitorLimitMb()I", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "loadMonitorEnabled", "getLoadMonitorEnabled()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "loadMonitorCpuPercent", "getLoadMonitorCpuPercent()I", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "freezeMonitorEnabled", "getFreezeMonitorEnabled()Z", 1)), Reflection.mutableProperty0(new MutablePropertyReference0Impl(DebugConfig.class, "freezeMonitorThresholdMs", "getFreezeMonitorThresholdMs()I", 1))};
        $$delegatedProperties = kPropertyArr;
        debugCameraMetrics$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[0]);
        forceCompactSavedMusic$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[1]);
        disableApiRequests$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[2]);
        disableChatFadeWallpaperBlend$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[3]);
        chatFadeUseWhiteBackground$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[4]);
        heapMonitorEnabled$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[5]);
        heapMonitorLimitMb$delegate = new IntegerPref(256, null, 2, null).provideDelegate(null, kPropertyArr[6]);
        loadMonitorEnabled$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[7]);
        loadMonitorCpuPercent$delegate = new IntegerPref(5, null, 2, null).provideDelegate(null, kPropertyArr[8]);
        freezeMonitorEnabled$delegate = new BooleanPref(false, null, 2, null).provideDelegate(null, kPropertyArr[9]);
        freezeMonitorThresholdMs$delegate = new IntegerPref(700, null, 2, null).provideDelegate(null, kPropertyArr[10]);
    }

    public static final boolean getDebugCameraMetrics() {
        return ((Boolean) debugCameraMetrics$delegate.getValue(null, $$delegatedProperties[0])).booleanValue();
    }

    public static final void setDebugCameraMetrics(boolean z) {
        debugCameraMetrics$delegate.setValue(null, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    public static final boolean getForceCompactSavedMusic() {
        return ((Boolean) forceCompactSavedMusic$delegate.getValue(null, $$delegatedProperties[1])).booleanValue();
    }

    public static final void setForceCompactSavedMusic(boolean z) {
        forceCompactSavedMusic$delegate.setValue(null, $$delegatedProperties[1], Boolean.valueOf(z));
    }

    public static final boolean getDisableApiRequests() {
        return ((Boolean) disableApiRequests$delegate.getValue(null, $$delegatedProperties[2])).booleanValue();
    }

    public static final void setDisableApiRequests(boolean z) {
        disableApiRequests$delegate.setValue(null, $$delegatedProperties[2], Boolean.valueOf(z));
    }

    public static final boolean getDisableChatFadeWallpaperBlend() {
        return ((Boolean) disableChatFadeWallpaperBlend$delegate.getValue(null, $$delegatedProperties[3])).booleanValue();
    }

    public static final void setDisableChatFadeWallpaperBlend(boolean z) {
        disableChatFadeWallpaperBlend$delegate.setValue(null, $$delegatedProperties[3], Boolean.valueOf(z));
    }

    public static final boolean getChatFadeUseWhiteBackground() {
        return ((Boolean) chatFadeUseWhiteBackground$delegate.getValue(null, $$delegatedProperties[4])).booleanValue();
    }

    public static final void setChatFadeUseWhiteBackground(boolean z) {
        chatFadeUseWhiteBackground$delegate.setValue(null, $$delegatedProperties[4], Boolean.valueOf(z));
    }

    public static final boolean getHeapMonitorEnabled() {
        return ((Boolean) heapMonitorEnabled$delegate.getValue(null, $$delegatedProperties[5])).booleanValue();
    }

    public static final void setHeapMonitorEnabled(boolean z) {
        heapMonitorEnabled$delegate.setValue(null, $$delegatedProperties[5], Boolean.valueOf(z));
    }

    public static final int getHeapMonitorLimitMb() {
        return ((Number) heapMonitorLimitMb$delegate.getValue(null, $$delegatedProperties[6])).intValue();
    }

    public static final void setHeapMonitorLimitMb(int i) {
        heapMonitorLimitMb$delegate.setValue(null, $$delegatedProperties[6], Integer.valueOf(i));
    }

    public static final boolean getLoadMonitorEnabled() {
        return ((Boolean) loadMonitorEnabled$delegate.getValue(null, $$delegatedProperties[7])).booleanValue();
    }

    public static final void setLoadMonitorEnabled(boolean z) {
        loadMonitorEnabled$delegate.setValue(null, $$delegatedProperties[7], Boolean.valueOf(z));
    }

    public static final int getLoadMonitorCpuPercent() {
        return ((Number) loadMonitorCpuPercent$delegate.getValue(null, $$delegatedProperties[8])).intValue();
    }

    public static final void setLoadMonitorCpuPercent(int i) {
        loadMonitorCpuPercent$delegate.setValue(null, $$delegatedProperties[8], Integer.valueOf(i));
    }

    public static final boolean getFreezeMonitorEnabled() {
        return ((Boolean) freezeMonitorEnabled$delegate.getValue(null, $$delegatedProperties[9])).booleanValue();
    }

    public static final void setFreezeMonitorEnabled(boolean z) {
        freezeMonitorEnabled$delegate.setValue(null, $$delegatedProperties[9], Boolean.valueOf(z));
    }

    public static final int getFreezeMonitorThresholdMs() {
        return ((Number) freezeMonitorThresholdMs$delegate.getValue(null, $$delegatedProperties[10])).intValue();
    }

    public static final void setFreezeMonitorThresholdMs(int i) {
        freezeMonitorThresholdMs$delegate.setValue(null, $$delegatedProperties[10], Integer.valueOf(i));
    }
}
