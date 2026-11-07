package org.telegram.utils.settings;

/* JADX INFO: loaded from: classes8.dex */
public final class IntSetting {
    private final int defaultValue;
    private volatile boolean loaded;
    private final String name;
    private volatile int value;

    private IntSetting(String str, int i) {
        this.name = str;
        this.defaultValue = i;
    }

    public static IntSetting of(String str, int i) {
        return new IntSetting(str, i);
    }

    public int get() {
        if (!this.loaded) {
            synchronized (this) {
                try {
                    if (!this.loaded) {
                        this.value = SettingsPreferences.get().getInt(this.name, this.defaultValue);
                        this.loaded = true;
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    public synchronized void set(int i) {
        this.value = i;
        this.loaded = true;
        SettingsPreferences.get().edit().putInt(this.name, i).apply();
    }
}
