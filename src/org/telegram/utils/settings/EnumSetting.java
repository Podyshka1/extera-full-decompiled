package org.telegram.utils.settings;

import java.lang.Enum;

/* JADX INFO: loaded from: classes6.dex */
public final class EnumSetting<T extends Enum<T>> {
    private final T defaultValue;
    private volatile boolean loaded;
    private final String name;
    private volatile T value;

    private EnumSetting(String str, T t) {
        this.name = str;
        this.defaultValue = t;
    }

    public static <T extends Enum<T>> EnumSetting<T> of(String str, T t) {
        return new EnumSetting<>(str, t);
    }

    public T get() {
        if (!this.loaded) {
            synchronized (this) {
                try {
                    if (!this.loaded) {
                        this.value = (T) readValue();
                        this.loaded = true;
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    public synchronized void set(T t) {
        this.value = t;
        this.loaded = true;
        SettingsPreferences.get().edit().putString(this.name, t.name()).apply();
    }

    private T readValue() {
        String string = SettingsPreferences.get().getString(this.name, this.defaultValue.name());
        if (string != null) {
            try {
                return (T) Enum.valueOf(this.defaultValue.getDeclaringClass(), string);
            } catch (IllegalArgumentException unused) {
            }
        }
        return this.defaultValue;
    }
}
