package org.telegram.utils.settings;

/* JADX INFO: loaded from: classes6.dex */
public final class BooleanSetting {
    private final boolean defaultValue;
    private volatile boolean loaded;
    private final String name;
    private volatile boolean value;

    private BooleanSetting(String str, boolean z) {
        this.name = str;
        this.defaultValue = z;
    }

    public static BooleanSetting of(String str, boolean z) {
        return new BooleanSetting(str, z);
    }

    public boolean get() {
        if (!this.loaded) {
            synchronized (this) {
                try {
                    if (!this.loaded) {
                        this.value = SettingsPreferences.get().getBoolean(this.name, this.defaultValue);
                        this.loaded = true;
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    public synchronized void set(boolean z) {
        setLocked(z);
    }

    public synchronized boolean toggle() {
        boolean z;
        try {
            if (!this.loaded) {
                this.value = SettingsPreferences.get().getBoolean(this.name, this.defaultValue);
                this.loaded = true;
            }
            z = !this.value;
            setLocked(z);
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    private void setLocked(boolean z) {
        this.value = z;
        this.loaded = true;
        SettingsPreferences.get().edit().putBoolean(this.name, z).apply();
    }
}
