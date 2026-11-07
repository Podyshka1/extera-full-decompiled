package com.exteragram.messenger.config;

import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0086\u0002¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\r\u001a\u00028\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\tH\u0086\u0002¢\u0006\u0004\b\r\u0010\u000eJ.\u0010\u0011\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u000f\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00028\u0000H&¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00028\u0000H&¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00028\u00008\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010 R$\u0010!\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001b\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u001e\u001a\u0004\b(\u0010 \"\u0004\b)\u0010*R\u0018\u0010.\u001a\u0006\u0012\u0002\b\u00030+8$X¤\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/exteragram/messenger/config/BasePref;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "defaultValue", _UrlKt.FRAGMENT_ENCODE_SET, "backupKey", "<init>", "(Ljava/lang/Object;Ljava/lang/String;)V", "thisRef", "Lkotlin/reflect/KProperty;", "property", "provideDelegate", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/exteragram/messenger/config/BasePref;", "getValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "setValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "invalidate", "()V", PluginsConstants.Settings.KEY, PluginsConstants.Settings.DEFAULT, "fetch", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "save", "(Ljava/lang/String;Ljava/lang/Object;)V", "Ljava/lang/Object;", "getDefaultValue", "()Ljava/lang/Object;", "Ljava/lang/String;", "getBackupKey", "()Ljava/lang/String;", "cache", "getCache", "setCache", "(Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "loaded", "Z", "getKey", "setKey", "(Ljava/lang/String;)V", "Ljava/lang/Class;", "getBackupClass", "()Ljava/lang/Class;", "backupClass", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class BasePref<T> {
    private final String backupKey;
    private volatile T cache;
    private final T defaultValue;
    public String key;
    private volatile boolean loaded;

    public abstract T fetch(String key, T t);

    public abstract Class<?> getBackupClass();

    public abstract void save(String key, T value);

    public BasePref(T t, String str) {
        this.defaultValue = t;
        this.backupKey = str;
    }

    public final String getKey() {
        String str = this.key;
        if (str != null) {
            return str;
        }
        return null;
    }

    public final void setKey(String str) {
        this.key = str;
    }

    public final BasePref<T> provideDelegate(Object thisRef, KProperty<?> property) {
        String name = this.backupKey;
        if (name == null) {
            name = property.getName();
        }
        setKey(name);
        PrefClassesKt.getRegisteredKeys().add(new PreferencesUtils.BackupItem(getKey(), getBackupClass()));
        PrefClassesKt.getAllDelegates().add(this);
        return this;
    }

    public final T getValue(Object thisRef, KProperty<?> property) {
        if (!this.loaded) {
            this.cache = fetch(getKey(), this.defaultValue);
            this.loaded = true;
        }
        return this.cache;
    }

    public final void setValue(Object thisRef, KProperty<?> property, T value) {
        if (this.loaded && Intrinsics.areEqual(this.cache, value)) {
            return;
        }
        this.cache = value;
        this.loaded = true;
        save(getKey(), value);
    }

    public final void invalidate() {
        this.loaded = false;
        this.cache = null;
    }
}
