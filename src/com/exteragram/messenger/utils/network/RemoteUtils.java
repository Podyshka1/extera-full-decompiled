package com.exteragram.messenger.utils.network;

import android.content.SharedPreferences;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.android.gms.cast.MediaError;
import j$.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public abstract class RemoteUtils {
    private static volatile long lastFailedFetchTime;
    private static int messagesRequestGeneration;
    private static Runnable messagesTimeoutRunnable;
    private static ArrayList<Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error>> pendingMessagesCallbacks;
    public static SharedPreferences sharedPreferences;
    private static final long CONFIG_REFRESH_INTERVAL = Duration.ofMinutes(10).toMillis();
    private static final long CONFIG_RETRY_INTERVAL = Duration.ofSeconds(30).toMillis();
    private static final long MESSAGES_REQUEST_TIMEOUT = Duration.ofSeconds(60).toMillis();
    private static final AtomicBoolean fetchInProgress = new AtomicBoolean();
    private static final Object messagesRequestLock = new Object();

    /* JADX INFO: renamed from: $r8$lambda$6r48Eh4Wsu_QezTRhT-68nEzoPU, reason: not valid java name */
    public static /* synthetic */ void m3372$r8$lambda$6r48Eh4Wsu_QezTRhT68nEzoPU() {
    }

    private static SharedPreferences getPrefs() {
        if (sharedPreferences == null) {
            initCached();
        }
        return sharedPreferences;
    }

    public static void initCached() {
        if (sharedPreferences == null) {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("exteraremoteconfig", 0);
        }
    }

    public static void init() {
        initCached();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - sharedPreferences.getLong("__last_fetch_attempt_time", 0L)) < CONFIG_REFRESH_INTERVAL) {
            return;
        }
        if (lastFailedFetchTime == 0 || Math.abs(jCurrentTimeMillis - lastFailedFetchTime) >= CONFIG_RETRY_INTERVAL) {
            loadConfig();
        }
    }

    public static void forceRefresh() {
        initCached();
        lastFailedFetchTime = 0L;
        loadConfig();
    }

    private static void loadConfig() {
        if (fetchInProgress.compareAndSet(false, true)) {
            getMessages(new Utilities.Callback2() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    RemoteUtils.$r8$lambda$LmfFRuJdEdEVAug9vbi59pl5km0((TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$LmfFRuJdEdEVAug9vbi59pl5km0(TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
        fetchInProgress.set(false);
        if (tL_error != null || messages_messages == null) {
            lastFailedFetchTime = System.currentTimeMillis();
            return;
        }
        HashSet hashSet = new HashSet();
        boolean z = false;
        for (int size = messages_messages.messages.size() - 1; size >= 0; size--) {
            TLRPC.Message message = messages_messages.messages.get(size);
            if ((message instanceof TLRPC.TL_message) && message.message.startsWith("remote_config")) {
                String[] strArrSplit = message.message.split("\n");
                if (strArrSplit.length > 1) {
                    for (String str : strArrSplit) {
                        String[] strArrSplit2 = str.split("=", 2);
                        if (strArrSplit2.length == 2) {
                            String strTrim = strArrSplit2[0].trim();
                            String strTrim2 = strArrSplit2[1].trim();
                            if (!strTrim2.equals("null")) {
                                updateValue(strTrim, strTrim2);
                                hashSet.add(strTrim);
                            }
                        }
                    }
                }
                z = true;
            }
        }
        if (!z || hashSet.isEmpty()) {
            lastFailedFetchTime = System.currentTimeMillis();
            return;
        }
        lastFailedFetchTime = 0L;
        sharedPreferences.edit().putLong("__last_fetch_attempt_time", System.currentTimeMillis()).apply();
        removeOldPreferences(hashSet);
    }

    private static void removeOldPreferences(Set<String> set) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            if (!set.contains(str) && !"__last_fetch_attempt_time".equals(str)) {
                editorEdit.remove(str);
            }
        }
        editorEdit.apply();
    }

    private static void updateValue(String str, String str2) {
        if (areValuesEqual(sharedPreferences.getAll().get(str), parseConfigValue(str2))) {
            return;
        }
        saveToPreferences(str, str2);
    }

    private static boolean areValuesEqual(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return obj == obj2;
        }
        return obj.equals(obj2);
    }

    private static void saveToPreferences(String str, String str2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        saveConfigValueToPreferences(editorEdit, str, parseConfigValue(str2));
        editorEdit.apply();
    }

    private static Object parseConfigValue(String str) {
        if (str.matches("-?\\d+")) {
            try {
                return Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                return Float.valueOf(Float.parseFloat(str));
            }
        }
        if (str.matches("-?\\d+(\\.\\d+)")) {
            return Float.valueOf(Float.parseFloat(str));
        }
        if (str.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (!str.startsWith("[") || !str.endsWith("]")) {
            return str;
        }
        String strSubstring = str.substring(1, str.length() - 1);
        if (strSubstring.isEmpty()) {
            return new HashSet();
        }
        return new HashSet(Arrays.asList(strSubstring.split(",\\s*")));
    }

    private static void saveConfigValueToPreferences(SharedPreferences.Editor editor, String str, Object obj) {
        if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            editor.putFloat(str, ((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Set) {
            editor.putStringSet(str, (Set) obj);
        } else if (obj instanceof String) {
            editor.putString(str, (String) obj);
        }
    }

    public static void getMessages(Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error> callback2) {
        synchronized (messagesRequestLock) {
            try {
                ArrayList<Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error>> arrayList = pendingMessagesCallbacks;
                if (arrayList != null) {
                    arrayList.add(callback2);
                    return;
                }
                final int i = messagesRequestGeneration + 1;
                messagesRequestGeneration = i;
                ArrayList<Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error>> arrayList2 = new ArrayList<>();
                pendingMessagesCallbacks = arrayList2;
                arrayList2.add(callback2);
                Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteUtils.$r8$lambda$OnWrYNguU3DJfMISnu8tl4pwRVk(i);
                    }
                };
                messagesTimeoutRunnable = runnable;
                AndroidUtilities.runOnUIThread(runnable, MESSAGES_REQUEST_TIMEOUT);
                if (ApplicationLoader.applicationHandler == null) {
                    TLRPC.TL_error tL_error = new TLRPC.TL_error();
                    tL_error.code = 503;
                    tL_error.text = "APP_NOT_READY";
                    deliverMessagesResult(i, null, tL_error);
                    return;
                }
                final AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
                final TLRPC.TL_messages_getHistory tL_messages_getHistory = new TLRPC.TL_messages_getHistory();
                tL_messages_getHistory.offset_id = 0;
                tL_messages_getHistory.limit = 100;
                final Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        accountInstance.getConnectionsManager().sendRequest(tL_messages_getHistory, new RequestDelegate() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda12
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject, TLRPC.TL_error tL_error2) {
                                RemoteUtils.m3376$r8$lambda$fbLQZhiW34Arj2DTfMUPETNMPM(i, tLObject, tL_error2);
                            }
                        });
                    }
                };
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemoteUtils.$r8$lambda$UEIegV2IjuUzBjubE_kaeXJS8OE(tL_messages_getHistory, accountInstance, runnable2, i);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$OnWrYNguU3DJfMISnu8tl4pwRVk(int i) {
        TLRPC.TL_error tL_error = new TLRPC.TL_error();
        tL_error.code = 408;
        tL_error.text = "REQUEST_TIMEOUT";
        deliverMessagesResult(i, null, tL_error);
    }

    /* JADX INFO: renamed from: $r8$lambda$fbLQZhiW34Arj2DTfMUPETN-MPM, reason: not valid java name */
    public static /* synthetic */ void m3376$r8$lambda$fbLQZhiW34Arj2DTfMUPETNMPM(int i, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null || tLObject == null) {
            deliverMessagesResult(i, null, tL_error);
        } else {
            deliverMessagesResult(i, (TLRPC.messages_Messages) tLObject, null);
        }
    }

    public static /* synthetic */ void $r8$lambda$UEIegV2IjuUzBjubE_kaeXJS8OE(final TLRPC.TL_messages_getHistory tL_messages_getHistory, AccountInstance accountInstance, final Runnable runnable, final int i) {
        TLRPC.InputPeer inputPeer = accountInstance.getMessagesController().getInputPeer(-2227431611L);
        tL_messages_getHistory.peer = inputPeer;
        if (inputPeer.access_hash != 0) {
            runnable.run();
        } else {
            ChatUtils.getInstance().resolveChannel("XS6GEcz5ZXMu82UvXQc", new Utilities.Callback() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    RemoteUtils.$r8$lambda$3SpRrpMm50vpRClqPPGUprUYYYw(tL_messages_getHistory, runnable, i, (TLRPC.Chat) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$3SpRrpMm50vpRClqPPGUprUYYYw(TLRPC.TL_messages_getHistory tL_messages_getHistory, Runnable runnable, int i, TLRPC.Chat chat) {
        if (chat != null && chat.id == 2227431611L) {
            TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
            tL_messages_getHistory.peer = tL_inputPeerChannel;
            tL_inputPeerChannel.channel_id = chat.id;
            tL_inputPeerChannel.access_hash = chat.access_hash;
            runnable.run();
            return;
        }
        TLRPC.TL_error tL_error = new TLRPC.TL_error();
        tL_error.code = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        tL_error.text = "CHANNEL_RESOLVE_FAILED";
        deliverMessagesResult(i, null, tL_error);
    }

    private static void deliverMessagesResult(int i, TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
        ArrayList<Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error>> arrayList;
        synchronized (messagesRequestLock) {
            if (i == messagesRequestGeneration && (arrayList = pendingMessagesCallbacks) != null) {
                Runnable runnable = messagesTimeoutRunnable;
                pendingMessagesCallbacks = null;
                messagesTimeoutRunnable = null;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error> callback2 = arrayList.get(i2);
                    i2++;
                    callback2.run(messages_messages, tL_error);
                }
            }
        }
    }

    public static void searchMessages(String str, TLRPC.MessagesFilter messagesFilter, Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error> callback2, int i) {
        searchMessages(50, str, messagesFilter, callback2, i);
    }

    public static void searchMessages(int i, String str, TLRPC.MessagesFilter messagesFilter, final Utilities.Callback2<TLRPC.messages_Messages, TLRPC.TL_error> callback2, final int i2) {
        final AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.f1032q = str;
        tL_messages_search.offset_id = 0;
        tL_messages_search.limit = i;
        tL_messages_search.filter = messagesFilter;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final AtomicInteger atomicInteger = new AtomicInteger();
        final AtomicInteger atomicInteger2 = new AtomicInteger();
        final AtomicReference atomicReference = new AtomicReference(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m3372$r8$lambda$6r48Eh4Wsu_QezTRhT68nEzoPU();
            }
        });
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m3371$r8$lambda$0p9UTAdmiW_DBagD4ppdMeLYUk(atomicBoolean, callback2);
            }
        };
        final Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m3375$r8$lambda$Zys4bse1bgzGUgsT0MB9ycKDLM(atomicBoolean, atomicInteger, atomicInteger2, accountInstance, tL_messages_search, atomicReference, callback2);
            }
        };
        atomicReference.set(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.$r8$lambda$4QYm8KFjMBfJJ4laGtinXysTpck(atomicBoolean, accountInstance, atomicInteger2, atomicInteger, runnable2, atomicReference, i2, runnable);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m3374$r8$lambda$Q2nxzL4QXDhawk8oMmFpxL7pOE(tL_messages_search, accountInstance, runnable2, atomicReference, i2, atomicBoolean, callback2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$0p9UTAdmiW_DBagD4pp-dMeLYUk, reason: not valid java name */
    public static /* synthetic */ void m3371$r8$lambda$0p9UTAdmiW_DBagD4ppdMeLYUk(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2) {
        if (atomicBoolean.compareAndSet(false, true)) {
            TLRPC.TL_error tL_error = new TLRPC.TL_error();
            tL_error.code = 408;
            tL_error.text = "REQUEST_TIMEOUT";
            callback2.run(null, tL_error);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Zys4bse1bgzGUgsT-0MB9ycKDLM, reason: not valid java name */
    public static /* synthetic */ void m3375$r8$lambda$Zys4bse1bgzGUgsT0MB9ycKDLM(final AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, AtomicInteger atomicInteger2, AccountInstance accountInstance, TLRPC.TL_messages_search tL_messages_search, final AtomicReference atomicReference, final Utilities.Callback2 callback2) {
        if (atomicBoolean.get()) {
            return;
        }
        atomicInteger.incrementAndGet();
        atomicInteger2.set(accountInstance.getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                RemoteUtils.$r8$lambda$VPbxsBgeVDZRlr6n6eb9kvQGVxM(atomicBoolean, atomicReference, callback2, tLObject, tL_error);
            }
        }));
    }

    public static /* synthetic */ void $r8$lambda$VPbxsBgeVDZRlr6n6eb9kvQGVxM(AtomicBoolean atomicBoolean, AtomicReference atomicReference, Utilities.Callback2 callback2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (atomicBoolean.compareAndSet(false, true)) {
            AndroidUtilities.cancelRunOnUIThread((Runnable) atomicReference.get());
            if (tL_error != null || tLObject == null) {
                callback2.run(null, tL_error);
            } else {
                callback2.run((TLRPC.messages_Messages) tLObject, null);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$4QYm8KFjMBfJJ4laGtinXysTpck(AtomicBoolean atomicBoolean, AccountInstance accountInstance, AtomicInteger atomicInteger, AtomicInteger atomicInteger2, Runnable runnable, AtomicReference atomicReference, int i, Runnable runnable2) {
        if (atomicBoolean.get()) {
            return;
        }
        accountInstance.getConnectionsManager().cancelRequest(atomicInteger.get(), false);
        if (atomicInteger2.get() < 3) {
            AndroidUtilities.runOnUIThread(runnable);
            AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i);
        } else {
            runnable2.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Q2nxzL4QXD-hawk8oMmFpxL7pOE, reason: not valid java name */
    public static /* synthetic */ void m3374$r8$lambda$Q2nxzL4QXDhawk8oMmFpxL7pOE(final TLRPC.TL_messages_search tL_messages_search, AccountInstance accountInstance, final Runnable runnable, final AtomicReference atomicReference, final int i, final AtomicBoolean atomicBoolean, final Utilities.Callback2 callback2) {
        TLRPC.InputPeer inputPeer = accountInstance.getMessagesController().getInputPeer(-2227431611L);
        tL_messages_search.peer = inputPeer;
        if (inputPeer.access_hash != 0) {
            runnable.run();
            AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i);
        } else {
            ChatUtils.getInstance().resolveChannel("XS6GEcz5ZXMu82UvXQc", new Utilities.Callback() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    RemoteUtils.$r8$lambda$84O1WLvUC3qDyZTPzn_dgZu6QAQ(tL_messages_search, runnable, atomicReference, i, atomicBoolean, callback2, (TLRPC.Chat) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$84O1WLvUC3qDyZTPzn_dgZu6QAQ(TLRPC.TL_messages_search tL_messages_search, Runnable runnable, AtomicReference atomicReference, int i, AtomicBoolean atomicBoolean, Utilities.Callback2 callback2, TLRPC.Chat chat) {
        if (chat != null && chat.id == 2227431611L) {
            TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
            tL_messages_search.peer = tL_inputPeerChannel;
            tL_inputPeerChannel.channel_id = chat.id;
            tL_inputPeerChannel.access_hash = chat.access_hash;
            runnable.run();
            AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i);
            return;
        }
        if (atomicBoolean.compareAndSet(false, true)) {
            TLRPC.TL_error tL_error = new TLRPC.TL_error();
            tL_error.code = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
            tL_error.text = "CHANNEL_RESOLVE_FAILED";
            callback2.run(null, tL_error);
        }
    }

    public static Integer getIntConfigValue(String str, int i) {
        SharedPreferences prefs;
        try {
            prefs = getPrefs();
        } catch (Exception e) {
            AppUtils.log("Error getting int config value for key: " + str, e);
        }
        if (prefs == null) {
            return Integer.valueOf(i);
        }
        Object obj = prefs.getAll().get(str);
        if (obj instanceof String) {
            return Integer.valueOf(Integer.parseInt((String) obj));
        }
        if (obj instanceof Long) {
            return Integer.valueOf(((Long) obj).intValue());
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        return Integer.valueOf(i);
    }

    public static Float getFloatConfigValue(String str, float f) {
        SharedPreferences prefs;
        try {
            prefs = getPrefs();
        } catch (Exception e) {
            AppUtils.log("Error getting value for key: " + str, e);
        }
        if (prefs == null) {
            return Float.valueOf(f);
        }
        Object obj = prefs.getAll().get(str);
        if (obj instanceof String) {
            return Float.valueOf(Float.parseFloat((String) obj));
        }
        if (obj instanceof Float) {
            return (Float) obj;
        }
        if (obj instanceof Long) {
            return Float.valueOf(((Long) obj).floatValue());
        }
        if (obj instanceof Integer) {
            return Float.valueOf(((Integer) obj).floatValue());
        }
        return Float.valueOf(f);
    }

    public static Boolean getBooleanConfigValue(String str, boolean z) {
        try {
            SharedPreferences prefs = getPrefs();
            if (prefs == null) {
                return Boolean.valueOf(z);
            }
            try {
                return Boolean.valueOf(prefs.getBoolean(str, z));
            } catch (ClassCastException unused) {
                Object obj = prefs.getAll().get(str);
                return Boolean.valueOf(obj instanceof String ? Boolean.parseBoolean((String) obj) : z);
            }
        } catch (Exception e) {
            AppUtils.log("Error getting value for key: " + str, e);
            return Boolean.valueOf(z);
        }
    }

    public static Set<String> getStringSetConfigValue(String str, Set<String> set) {
        try {
            SharedPreferences prefs = getPrefs();
            if (prefs != null) {
                Object obj = prefs.getAll().get(str);
                if (obj instanceof Set) {
                    return (Set) obj;
                }
                if (obj instanceof String) {
                    return new HashSet(Arrays.asList(((String) obj).split(",\\s*")));
                }
            }
            return set;
        } catch (Exception e) {
            AppUtils.log("Error getting value for key: " + str, e);
            return set;
        }
    }

    public static String getStringConfigValue(String str, String str2) {
        Object obj;
        try {
            SharedPreferences prefs = getPrefs();
            if (prefs != null && (obj = prefs.getAll().get(str)) != null) {
                return String.valueOf(obj);
            }
            return str2;
        } catch (Exception e) {
            AppUtils.log("Error getting value for key: " + str, e);
            return str2;
        }
    }
}
