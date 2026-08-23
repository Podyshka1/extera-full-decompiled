package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.Preferences;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class JavaDataStorageKt {
    public static final Object getOrDefault(Preferences preferences, Preferences.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(preferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj2 = preferences.get(key);
        return obj2 == null ? obj : obj2;
    }
}
