package org.telegram.utils.settings;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes8.dex */
public final class BooleanSetting {
    private final boolean defaultValue;
    private volatile boolean loaded;
    private final String name;
    private volatile boolean present;
    private volatile boolean value;

    private BooleanSetting(String str, boolean z) {
        this.name = str;
        this.defaultValue = z;
    }

    public static BooleanSetting of(String str, boolean z) {
        return new BooleanSetting(str, z);
    }

    public boolean get() {
        ensureLoaded();
        return this.value;
    }

    public boolean isSet() {
        ensureLoaded();
        return this.present;
    }

    public synchronized void set(boolean z) {
        setLocked(z);
    }

    public synchronized boolean toggle() {
        boolean z;
        loadLocked();
        z = !this.value;
        setLocked(z);
        return z;
    }

    private void ensureLoaded() {
        if (this.loaded) {
            return;
        }
        synchronized (this) {
            loadLocked();
        }
    }

    private void loadLocked() {
        if (this.loaded) {
            return;
        }
        SharedPreferences sharedPreferences = SettingsPreferences.get();
        this.present = sharedPreferences.contains(this.name);
        this.value = sharedPreferences.getBoolean(this.name, this.defaultValue);
        this.loaded = true;
    }

    private void setLocked(boolean z) {
        this.value = z;
        this.present = true;
        this.loaded = true;
        SettingsPreferences.get().edit().putBoolean(this.name, z).apply();
    }
}
