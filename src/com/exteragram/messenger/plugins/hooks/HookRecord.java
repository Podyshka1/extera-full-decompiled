package com.exteragram.messenger.plugins.hooks;

/* JADX INFO: loaded from: classes.dex */
public interface HookRecord {
    void cleanup();

    boolean matches(Object obj);
}
