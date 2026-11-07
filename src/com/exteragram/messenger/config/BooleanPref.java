package com.exteragram.messenger.config;

import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0002\u0010\u000fJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0016R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/config/BooleanPref;", "Lcom/exteragram/messenger/config/BasePref;", _UrlKt.FRAGMENT_ENCODE_SET, "def", "backupKey", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ZLjava/lang/String;)V", "backupClass", "Ljava/lang/Class;", "getBackupClass", "()Ljava/lang/Class;", "fetch", PluginsConstants.Settings.KEY, PluginsConstants.Settings.DEFAULT, "(Ljava/lang/String;Z)Ljava/lang/Boolean;", "save", _UrlKt.FRAGMENT_ENCODE_SET, "value", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class BooleanPref extends BasePref<Boolean> {
    private final Class<?> backupClass;

    public BooleanPref(boolean z, String str) {
        super(Boolean.valueOf(z), str);
        this.backupClass = Boolean.class;
    }

    public /* synthetic */ BooleanPref(boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i & 2) != 0 ? null : str);
    }

    @Override // com.exteragram.messenger.config.BasePref
    public /* bridge */ /* synthetic */ Boolean fetch(String str, Boolean bool) {
        return fetch(str, bool.booleanValue());
    }

    @Override // com.exteragram.messenger.config.BasePref
    public /* bridge */ /* synthetic */ void save(String str, Boolean bool) {
        save(str, bool.booleanValue());
    }

    @Override // com.exteragram.messenger.config.BasePref
    public Class<?> getBackupClass() {
        return this.backupClass;
    }

    public Boolean fetch(String key, boolean z) {
        return Boolean.valueOf(ExteraConfig.getPreferences().getBoolean(key, z));
    }

    public void save(String key, boolean value) {
        ExteraConfig.getEditor().putBoolean(key, value).apply();
    }
}
