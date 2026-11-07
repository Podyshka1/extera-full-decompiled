package com.exteragram.messenger.config;

import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J,\u0010\f\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\u00030\u00030\u00022\u0006\u0010\u000e\u001a\u00020\u00032\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/config/StringSetPref;", "Lcom/exteragram/messenger/config/BasePref;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "def", "backupKey", "<init>", "(Ljava/util/Set;Ljava/lang/String;)V", "backupClass", "Ljava/lang/Class;", "getBackupClass", "()Ljava/lang/Class;", "fetch", "kotlin.jvm.PlatformType", PluginsConstants.Settings.KEY, PluginsConstants.Settings.DEFAULT, "save", _UrlKt.FRAGMENT_ENCODE_SET, "value", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class StringSetPref extends BasePref<Set<? extends String>> {
    private final Class<?> backupClass;

    public StringSetPref(Set<String> set, String str) {
        super(set, str);
        this.backupClass = Set.class;
    }

    public /* synthetic */ StringSetPref(Set set, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i & 2) != 0 ? null : str);
    }

    @Override // com.exteragram.messenger.config.BasePref
    public /* bridge */ /* synthetic */ Set<? extends String> fetch(String str, Set<? extends String> set) {
        return fetch2(str, (Set<String>) set);
    }

    @Override // com.exteragram.messenger.config.BasePref
    public /* bridge */ /* synthetic */ void save(String str, Set<? extends String> set) {
        save2(str, (Set<String>) set);
    }

    @Override // com.exteragram.messenger.config.BasePref
    public Class<?> getBackupClass() {
        return this.backupClass;
    }

    /* JADX INFO: renamed from: fetch, reason: avoid collision after fix types in other method */
    public Set<String> fetch2(String key, Set<String> set) {
        Set<String> stringSet = ExteraConfig.getPreferences().getStringSet(key, set);
        return stringSet == null ? set : stringSet;
    }

    /* JADX INFO: renamed from: save, reason: avoid collision after fix types in other method */
    public void save2(String key, Set<String> value) {
        ExteraConfig.getEditor().putStringSet(key, value).apply();
    }
}
