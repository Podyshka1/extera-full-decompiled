package com.google.firebase.platforminfo;

import java.util.HashSet;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class GlobalLibraryVersionRegistrar {
    private static volatile GlobalLibraryVersionRegistrar INSTANCE;
    private final Set infos = new HashSet();

    GlobalLibraryVersionRegistrar() {
    }

    Set getRegisteredVersions() {
        Set setUnmodifiableSet;
        synchronized (this.infos) {
            setUnmodifiableSet = DesugarCollections.unmodifiableSet(this.infos);
        }
        return setUnmodifiableSet;
    }

    public static GlobalLibraryVersionRegistrar getInstance() {
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar;
        GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar2 = INSTANCE;
        if (globalLibraryVersionRegistrar2 != null) {
            return globalLibraryVersionRegistrar2;
        }
        synchronized (GlobalLibraryVersionRegistrar.class) {
            try {
                globalLibraryVersionRegistrar = INSTANCE;
                if (globalLibraryVersionRegistrar == null) {
                    globalLibraryVersionRegistrar = new GlobalLibraryVersionRegistrar();
                    INSTANCE = globalLibraryVersionRegistrar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return globalLibraryVersionRegistrar;
    }
}
