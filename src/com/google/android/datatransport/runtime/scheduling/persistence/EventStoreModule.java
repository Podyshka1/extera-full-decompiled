package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventStoreModule {
    public static EventStoreConfig storeConfig() {
        return EventStoreConfig.DEFAULT;
    }

    public static int schemaVersion() {
        return SchemaManager.SCHEMA_VERSION;
    }

    public static String dbName() {
        return "com.google.android.datatransport.events";
    }

    public static String packageName(Context context) {
        return context.getPackageName();
    }
}
