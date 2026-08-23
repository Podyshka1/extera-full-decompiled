package com.exteragram.messenger.badges;

import android.content.SharedPreferences;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.telegram.messenger.FileLog;
import p022j$.util.DesugarCollections;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class CachedRemoteSet {
    private volatile Set cachedValues;
    private SharedPreferences.OnSharedPreferenceChangeListener changeListener;
    private final Set defaultSet;
    private volatile boolean listenerInitialized = false;
    private final String remoteKey;

    public CachedRemoteSet(String str, Set set) {
        this.remoteKey = str;
        this.defaultSet = CachedRemoteSet$$ExternalSyntheticBackport0.m227m(set);
        initializeListener();
    }

    private void initializeListener() {
        if (this.listenerInitialized) {
            return;
        }
        RemoteUtils.initCached();
        if (RemoteUtils.sharedPreferences != null) {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.exteragram.messenger.badges.CachedRemoteSet$$ExternalSyntheticLambda1
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    this.f$0.lambda$initializeListener$0(sharedPreferences, str);
                }
            };
            this.changeListener = onSharedPreferenceChangeListener;
            RemoteUtils.sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            this.listenerInitialized = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeListener$0(SharedPreferences sharedPreferences, String str) {
        if (this.remoteKey.equals(str)) {
            this.cachedValues = null;
        }
    }

    private Set getSet() {
        Set hashSet;
        if (!this.listenerInitialized) {
            initializeListener();
        }
        Set setNewKeySet = this.cachedValues;
        if (setNewKeySet == null) {
            SharedPreferences sharedPreferences = RemoteUtils.sharedPreferences;
            if (sharedPreferences != null && sharedPreferences.contains(this.remoteKey)) {
                Set<String> stringSet = sharedPreferences.getStringSet(this.remoteKey, Collections.EMPTY_SET);
                hashSet = new HashSet(stringSet.size());
                for (String str : stringSet) {
                    try {
                        hashSet.add(Long.valueOf(Long.parseLong(str)));
                    } catch (NumberFormatException e) {
                        FileLog.m1135e("Failed to parse long from remote config for key " + this.remoteKey + ": " + str, e);
                    }
                }
            } else {
                hashSet = this.defaultSet;
            }
            setNewKeySet = ConcurrentHashMap.newKeySet(hashSet.size());
            setNewKeySet.addAll(hashSet);
            this.cachedValues = setNewKeySet;
        }
        return DesugarCollections.unmodifiableSet(setNewKeySet);
    }

    public boolean contains(long j) {
        return getSet().contains(Long.valueOf(j));
    }
}
