package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.os.Build;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import com.exteragram.messenger.translators.DeepLTranslator$$ExternalSyntheticBackport0;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.datastorage.JavaDataStorageKt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;
import p022j$.time.ZoneOffset;
import p022j$.time.format.DateTimeFormatter;
import p022j$.util.DateRetargetClass;

/* JADX INFO: loaded from: classes.dex */
class HeartBeatInfoStorage {
    private static final Preferences.Key GLOBAL = PreferencesKeys.longKey("fire-global");
    private static final Preferences.Key HEART_BEAT_COUNT_TAG = PreferencesKeys.longKey("fire-count");
    private static final Preferences.Key LAST_STORED_DATE = PreferencesKeys.stringKey("last-used-date");
    private final JavaDataStorage firebaseDataStore;

    public HeartBeatInfoStorage(Context context, String str) {
        this.firebaseDataStore = new JavaDataStorage(context, "FirebaseHeartBeat" + str);
    }

    synchronized void deleteAllHeartBeats() {
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.HeartBeatInfoStorage$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.$r8$lambda$oWSjuxBuWFTEWQSHNy3S1bm6Uuw(this.f$0, (MutablePreferences) obj);
            }
        });
    }

    public static /* synthetic */ Unit $r8$lambda$oWSjuxBuWFTEWQSHNy3S1bm6Uuw(HeartBeatInfoStorage heartBeatInfoStorage, MutablePreferences mutablePreferences) {
        heartBeatInfoStorage.getClass();
        long j = 0;
        for (Map.Entry entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key key = (Preferences.Key) entry.getKey();
                Set set = (Set) entry.getValue();
                String formattedDate = heartBeatInfoStorage.getFormattedDate(System.currentTimeMillis());
                if (set.contains(formattedDate)) {
                    mutablePreferences.set(key, DeepLTranslator$$ExternalSyntheticBackport0.m283m(new Object[]{formattedDate}));
                    j++;
                } else {
                    mutablePreferences.remove(key);
                }
            }
        }
        if (j == 0) {
            mutablePreferences.remove(HEART_BEAT_COUNT_TAG);
            return null;
        }
        mutablePreferences.set(HEART_BEAT_COUNT_TAG, Long.valueOf(j));
        return null;
    }

    synchronized List getAllHeartBeats() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String formattedDate = getFormattedDate(System.currentTimeMillis());
            for (Map.Entry entry : this.firebaseDataStore.getAllSync().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(formattedDate);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(HeartBeatResult.create(((Preferences.Key) entry.getKey()).getName(), new ArrayList(hashSet)));
                    }
                }
            }
            updateGlobalHeartBeat(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    private synchronized Preferences.Key getStoredUserAgentString(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry entry : mutablePreferences.asMap().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return PreferencesKeys.stringSetKey(((Preferences.Key) entry.getKey()).getName());
                    }
                }
            }
        }
        return null;
    }

    private synchronized void updateStoredUserAgent(MutablePreferences mutablePreferences, Preferences.Key key, String str) {
        removeStoredDate(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
    }

    private synchronized void removeStoredDate(MutablePreferences mutablePreferences, String str) {
        try {
            Preferences.Key storedUserAgentString = getStoredUserAgentString(mutablePreferences, str);
            if (storedUserAgentString == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, storedUserAgentString, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.remove(storedUserAgentString);
            } else {
                mutablePreferences.set(storedUserAgentString, hashSet);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void postHeartBeatCleanUp() {
        final String formattedDate = getFormattedDate(System.currentTimeMillis());
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.HeartBeatInfoStorage$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.$r8$lambda$pOe2GViMywkzZWGROGoUTcj02Nw(this.f$0, formattedDate, (MutablePreferences) obj);
            }
        });
    }

    public static /* synthetic */ Unit $r8$lambda$pOe2GViMywkzZWGROGoUTcj02Nw(HeartBeatInfoStorage heartBeatInfoStorage, String str, MutablePreferences mutablePreferences) {
        heartBeatInfoStorage.getClass();
        mutablePreferences.set(LAST_STORED_DATE, str);
        heartBeatInfoStorage.removeStoredDate(mutablePreferences, str);
        return null;
    }

    private synchronized String getFormattedDate(long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return DateRetargetClass.toInstant(new Date(j)).atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j));
    }

    synchronized void storeHeartBeat(long j, final String str) {
        final String formattedDate = getFormattedDate(j);
        final Preferences.Key keyStringSetKey = PreferencesKeys.stringSetKey(str);
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.HeartBeatInfoStorage$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.$r8$lambda$HdDmHlus2RmE_6N0PPHuiT70IIc(this.f$0, formattedDate, str, keyStringSetKey, (MutablePreferences) obj);
            }
        });
    }

    public static /* synthetic */ Unit $r8$lambda$HdDmHlus2RmE_6N0PPHuiT70IIc(HeartBeatInfoStorage heartBeatInfoStorage, String str, String str2, Preferences.Key key, MutablePreferences mutablePreferences) {
        heartBeatInfoStorage.getClass();
        Preferences.Key key2 = LAST_STORED_DATE;
        if (((String) JavaDataStorageKt.getOrDefault(mutablePreferences, key2, _UrlKt.FRAGMENT_ENCODE_SET)).equals(str)) {
            Preferences.Key storedUserAgentString = heartBeatInfoStorage.getStoredUserAgentString(mutablePreferences, str);
            if (storedUserAgentString == null || storedUserAgentString.getName().equals(str2)) {
                return null;
            }
            heartBeatInfoStorage.updateStoredUserAgent(mutablePreferences, key, str);
            return null;
        }
        Preferences.Key key3 = HEART_BEAT_COUNT_TAG;
        long jLongValue = ((Long) JavaDataStorageKt.getOrDefault(mutablePreferences, key3, 0L)).longValue();
        if (jLongValue + 1 == 30) {
            jLongValue = heartBeatInfoStorage.cleanUpStoredHeartBeats(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.getOrDefault(mutablePreferences, key, new HashSet()));
        hashSet.add(str);
        mutablePreferences.set(key, hashSet);
        mutablePreferences.set(key3, Long.valueOf(jLongValue + 1));
        mutablePreferences.set(key2, str);
        return null;
    }

    private synchronized long cleanUpStoredHeartBeats(MutablePreferences mutablePreferences) {
        long j;
        try {
            long jLongValue = ((Long) JavaDataStorageKt.getOrDefault(mutablePreferences, HEART_BEAT_COUNT_TAG, 0L)).longValue();
            String name = _UrlKt.FRAGMENT_ENCODE_SET;
            Set hashSet = new HashSet();
            String str = null;
            for (Map.Entry entry : mutablePreferences.asMap().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str2 : set) {
                        if (str == null || str.compareTo(str2) > 0) {
                            name = ((Preferences.Key) entry.getKey()).getName();
                            hashSet = set;
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str);
            mutablePreferences.set(PreferencesKeys.stringSetKey(name), hashSet2);
            j = jLongValue - 1;
            mutablePreferences.set(HEART_BEAT_COUNT_TAG, Long.valueOf(j));
        } catch (Throwable th) {
            throw th;
        }
        return j;
    }

    synchronized void updateGlobalHeartBeat(final long j) {
        this.firebaseDataStore.editSync(new Function1() { // from class: com.google.firebase.heartbeatinfo.HeartBeatInfoStorage$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HeartBeatInfoStorage.$r8$lambda$5pvxTqvYzVSgjYLkNwY7V7Tywa4(j, (MutablePreferences) obj);
            }
        });
    }

    public static /* synthetic */ Unit $r8$lambda$5pvxTqvYzVSgjYLkNwY7V7Tywa4(long j, MutablePreferences mutablePreferences) {
        mutablePreferences.set(GLOBAL, Long.valueOf(j));
        return null;
    }

    synchronized boolean isSameDateUtc(long j, long j2) {
        return getFormattedDate(j).equals(getFormattedDate(j2));
    }

    synchronized boolean shouldSendSdkHeartBeat(Preferences.Key key, long j) {
        if (isSameDateUtc(((Long) this.firebaseDataStore.getSync(key, -1L)).longValue(), j)) {
            return false;
        }
        this.firebaseDataStore.putSync(key, Long.valueOf(j));
        return true;
    }

    synchronized boolean shouldSendGlobalHeartBeat(long j) {
        return shouldSendSdkHeartBeat(GLOBAL, j);
    }
}
