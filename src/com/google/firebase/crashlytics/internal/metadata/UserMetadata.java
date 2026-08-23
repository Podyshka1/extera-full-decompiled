package com.google.firebase.crashlytics.internal.metadata;

import com.google.android.exoplayer2.mediacodec.AbstractC1272xa830b30;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class UserMetadata {
    private final CrashlyticsWorkers crashlyticsWorkers;
    private final MetaDataStore metaDataStore;
    private String sessionIdentifier;
    private final SerializeableKeysMap customKeys = new SerializeableKeysMap(false);
    private final SerializeableKeysMap internalKeys = new SerializeableKeysMap(true);
    private final RolloutAssignmentList rolloutsState = new RolloutAssignmentList(128);
    private final AtomicMarkableReference userId = new AtomicMarkableReference(null, false);

    public static String readUserId(String str, FileStore fileStore) {
        return new MetaDataStore(fileStore).readUserId(str);
    }

    public static UserMetadata loadFromExistingSession(String str, FileStore fileStore, CrashlyticsWorkers crashlyticsWorkers) {
        MetaDataStore metaDataStore = new MetaDataStore(fileStore);
        UserMetadata userMetadata = new UserMetadata(str, fileStore, crashlyticsWorkers);
        ((KeysMap) userMetadata.customKeys.map.getReference()).setKeys(metaDataStore.readKeyData(str, false));
        ((KeysMap) userMetadata.internalKeys.map.getReference()).setKeys(metaDataStore.readKeyData(str, true));
        userMetadata.userId.set(metaDataStore.readUserId(str), false);
        userMetadata.rolloutsState.updateRolloutAssignmentList(metaDataStore.readRolloutsState(str));
        return userMetadata;
    }

    public UserMetadata(String str, FileStore fileStore, CrashlyticsWorkers crashlyticsWorkers) {
        this.sessionIdentifier = str;
        this.metaDataStore = new MetaDataStore(fileStore);
        this.crashlyticsWorkers = crashlyticsWorkers;
    }

    public void setNewSession(final String str) {
        synchronized (this.sessionIdentifier) {
            this.sessionIdentifier = str;
            final Map keys = this.customKeys.getKeys();
            final List rolloutAssignmentList = this.rolloutsState.getRolloutAssignmentList();
            this.crashlyticsWorkers.diskWrite.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.metadata.UserMetadata$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    UserMetadata.m3530$r8$lambda$sua7MVTuuODCDLBTraqW_AyS1g(this.f$0, str, keys, rolloutAssignmentList);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$sua7MVTuuODCDLBTra-qW_AyS1g, reason: not valid java name */
    public static /* synthetic */ void m3530$r8$lambda$sua7MVTuuODCDLBTraqW_AyS1g(UserMetadata userMetadata, String str, Map map, List list) throws Throwable {
        if (userMetadata.getUserId() != null) {
            userMetadata.metaDataStore.writeUserData(str, userMetadata.getUserId());
        }
        if (!map.isEmpty()) {
            userMetadata.metaDataStore.writeKeyData(str, map);
        }
        if (list.isEmpty()) {
            return;
        }
        userMetadata.metaDataStore.writeRolloutState(str, list);
    }

    public String getUserId() {
        return (String) this.userId.getReference();
    }

    public Map getCustomKeys(Map map) {
        if (map.isEmpty()) {
            return this.customKeys.getKeys();
        }
        HashMap map2 = new HashMap(this.customKeys.getKeys());
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            String strSanitizeString = KeysMap.sanitizeString((String) entry.getKey(), 1024);
            if (map2.size() < 64 || map2.containsKey(strSanitizeString)) {
                map2.put(strSanitizeString, KeysMap.sanitizeString((String) entry.getValue(), 1024));
            } else {
                i++;
            }
        }
        if (i > 0) {
            Logger.getLogger().m509w("Ignored " + i + " keys when adding event specific keys. Maximum allowable: 1024");
        }
        return DesugarCollections.unmodifiableMap(map2);
    }

    public Map getInternalKeys() {
        return this.internalKeys.getKeys();
    }

    public boolean setInternalKey(String str, String str2) {
        return this.internalKeys.setKey(str, str2);
    }

    public List getRolloutsState() {
        return this.rolloutsState.getReportRolloutsState();
    }

    public boolean updateRolloutsState(List list) {
        synchronized (this.rolloutsState) {
            try {
                if (!this.rolloutsState.updateRolloutAssignmentList(list)) {
                    return false;
                }
                final List rolloutAssignmentList = this.rolloutsState.getRolloutAssignmentList();
                this.crashlyticsWorkers.diskWrite.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.metadata.UserMetadata$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        UserMetadata userMetadata = this.f$0;
                        userMetadata.metaDataStore.writeRolloutState(userMetadata.sessionIdentifier, rolloutAssignmentList);
                    }
                });
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class SerializeableKeysMap {
        private final boolean isInternal;
        final AtomicMarkableReference map;
        private final AtomicReference queuedSerializer = new AtomicReference(null);

        public SerializeableKeysMap(boolean z) {
            this.isInternal = z;
            this.map = new AtomicMarkableReference(new KeysMap(64, z ? 8192 : 1024), false);
        }

        public Map getKeys() {
            return ((KeysMap) this.map.getReference()).getKeys();
        }

        public boolean setKey(String str, String str2) {
            synchronized (this) {
                try {
                    if (!((KeysMap) this.map.getReference()).setKey(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference atomicMarkableReference = this.map;
                    atomicMarkableReference.set((KeysMap) atomicMarkableReference.getReference(), true);
                    scheduleSerializationTaskIfNeeded();
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private void scheduleSerializationTaskIfNeeded() {
            Runnable runnable = new Runnable() { // from class: com.google.firebase.crashlytics.internal.metadata.UserMetadata$SerializeableKeysMap$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    UserMetadata.SerializeableKeysMap.$r8$lambda$Tye6__azynwk5CtjZ7JFhmAJpog(this.f$0);
                }
            };
            if (AbstractC1272xa830b30.m315m(this.queuedSerializer, null, runnable)) {
                UserMetadata.this.crashlyticsWorkers.diskWrite.submit(runnable);
            }
        }

        public static /* synthetic */ void $r8$lambda$Tye6__azynwk5CtjZ7JFhmAJpog(SerializeableKeysMap serializeableKeysMap) throws Throwable {
            serializeableKeysMap.queuedSerializer.set(null);
            serializeableKeysMap.serializeIfMarked();
        }

        private void serializeIfMarked() throws Throwable {
            Map keys;
            synchronized (this) {
                try {
                    if (this.map.isMarked()) {
                        keys = ((KeysMap) this.map.getReference()).getKeys();
                        AtomicMarkableReference atomicMarkableReference = this.map;
                        atomicMarkableReference.set((KeysMap) atomicMarkableReference.getReference(), false);
                    } else {
                        keys = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (keys != null) {
                UserMetadata.this.metaDataStore.writeKeyData(UserMetadata.this.sessionIdentifier, keys, this.isInternal);
            }
        }
    }
}
