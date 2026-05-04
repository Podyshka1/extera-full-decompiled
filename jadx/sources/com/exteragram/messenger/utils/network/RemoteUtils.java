package com.exteragram.messenger.utils.network;

import android.content.SharedPreferences;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
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
    private static long lastInitTime;
    public static SharedPreferences sharedPreferences;

    public static /* synthetic */ void $r8$lambda$eNTNmIzDWEebkWIkwoFUzANQvM8() {
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
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastInitTime < 5000) {
            return;
        }
        lastInitTime = jCurrentTimeMillis;
        initCached();
        loadConfig();
    }

    private static void loadConfig() {
        getMessages(new Utilities.Callback2() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                RemoteUtils.$r8$lambda$LmfFRuJdEdEVAug9vbi59pl5km0((TLRPC.messages_Messages) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$LmfFRuJdEdEVAug9vbi59pl5km0(TLRPC.messages_Messages messages_messages, TLRPC.TL_error tL_error) {
        if (tL_error != null || messages_messages == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = messages_messages.messages;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.Message message = (TLRPC.Message) obj;
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
            }
        }
        removeOldPreferences(hashSet);
    }

    private static void removeOldPreferences(Set set) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            if (!set.contains(str)) {
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

    public static void getMessages(final Utilities.Callback2 callback2) {
        final AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        final TLRPC.TL_messages_getHistory tL_messages_getHistory = new TLRPC.TL_messages_getHistory();
        tL_messages_getHistory.peer = accountInstance.getMessagesController().getInputPeer(-2227431611L);
        tL_messages_getHistory.offset_id = 0;
        tL_messages_getHistory.limit = 75;
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                accountInstance.getConnectionsManager().sendRequest(tL_messages_getHistory, new RequestDelegate() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda8
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        RemoteUtils.$r8$lambda$fPDFOdPnDYda3xZkxkhL3nt1vrQ(callback2, tLObject, tL_error);
                    }
                });
            }
        };
        if (tL_messages_getHistory.peer.access_hash != 0) {
            AndroidUtilities.runOnUIThread(runnable);
        } else {
            ChatUtils.getInstance().resolveChannel("XS6GEcz5ZXMu82UvXQc", new Utilities.Callback() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    RemoteUtils.m2799$r8$lambda$wpFmLdCTd4P2BQcJG8DkR6gPJ8(tL_messages_getHistory, runnable, (TLRPC.Chat) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$fPDFOdPnDYda3xZkxkhL3nt1vrQ(Utilities.Callback2 callback2, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null || tLObject == null) {
            callback2.run(null, tL_error);
        } else {
            callback2.run((TLRPC.messages_Messages) tLObject, null);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$wpFmLdCTd4P2-BQcJG8DkR6gPJ8, reason: not valid java name */
    public static /* synthetic */ void m2799$r8$lambda$wpFmLdCTd4P2BQcJG8DkR6gPJ8(TLRPC.TL_messages_getHistory tL_messages_getHistory, Runnable runnable, TLRPC.Chat chat) {
        if (chat == null || chat.f1660id != -2227431611L) {
            return;
        }
        TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
        tL_messages_getHistory.peer = tL_inputPeerChannel;
        tL_inputPeerChannel.channel_id = chat.f1660id;
        tL_inputPeerChannel.access_hash = chat.access_hash;
        AndroidUtilities.runOnUIThread(runnable);
    }

    public static void searchMessages(String str, TLRPC.MessagesFilter messagesFilter, Utilities.Callback2 callback2, int i) {
        searchMessages(50, str, messagesFilter, callback2, i);
    }

    public static void searchMessages(int i, String str, TLRPC.MessagesFilter messagesFilter, final Utilities.Callback2 callback2, final int i2) {
        final AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
        final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.peer = accountInstance.getMessagesController().getInputPeer(-2227431611L);
        tL_messages_search.f1776q = str;
        tL_messages_search.offset_id = 0;
        tL_messages_search.limit = i;
        tL_messages_search.filter = messagesFilter;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final AtomicInteger atomicInteger = new AtomicInteger();
        final AtomicReference atomicReference = new AtomicReference(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.$r8$lambda$eNTNmIzDWEebkWIkwoFUzANQvM8();
            }
        });
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                atomicInteger.set(accountInstance.getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda5
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        RemoteUtils.$r8$lambda$46mUGun92abcfiukauq4x97j_ek(atomicBoolean, callback2, tLObject, tL_error);
                    }
                }));
            }
        };
        atomicReference.set(new Runnable() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RemoteUtils.m2797$r8$lambda$1KIDgrfkvDk217GUe3ky74ajpk(atomicBoolean, accountInstance, atomicInteger, runnable, atomicReference, i2);
            }
        });
        if (tL_messages_search.peer.access_hash != 0) {
            AndroidUtilities.runOnUIThread(runnable);
            AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i2);
        } else {
            ChatUtils.getInstance().resolveChannel("XS6GEcz5ZXMu82UvXQc", new Utilities.Callback() { // from class: com.exteragram.messenger.utils.network.RemoteUtils$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    RemoteUtils.$r8$lambda$AIZtPRC5Vxz46P873cr5PQfu3is(tL_messages_search, runnable, atomicReference, i2, (TLRPC.Chat) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$46mUGun92abcfiukauq4x97j_ek(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2, TLObject tLObject, TLRPC.TL_error tL_error) {
        atomicBoolean.set(true);
        if (tL_error != null || tLObject == null) {
            callback2.run(null, tL_error);
        } else {
            callback2.run((TLRPC.messages_Messages) tLObject, null);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$1KIDgrfkvDk217GUe3k-y74ajpk, reason: not valid java name */
    public static /* synthetic */ void m2797$r8$lambda$1KIDgrfkvDk217GUe3ky74ajpk(AtomicBoolean atomicBoolean, AccountInstance accountInstance, AtomicInteger atomicInteger, Runnable runnable, AtomicReference atomicReference, int i) {
        if (atomicBoolean.get()) {
            return;
        }
        accountInstance.getConnectionsManager().cancelRequest(atomicInteger.get(), false);
        AndroidUtilities.runOnUIThread(runnable);
        AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i);
    }

    public static /* synthetic */ void $r8$lambda$AIZtPRC5Vxz46P873cr5PQfu3is(TLRPC.TL_messages_search tL_messages_search, Runnable runnable, AtomicReference atomicReference, int i, TLRPC.Chat chat) {
        if (chat == null || chat.f1660id != -2227431611L) {
            return;
        }
        TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
        tL_messages_search.peer = tL_inputPeerChannel;
        tL_inputPeerChannel.channel_id = chat.f1660id;
        tL_inputPeerChannel.access_hash = chat.access_hash;
        AndroidUtilities.runOnUIThread(runnable);
        AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), i);
    }

    public static Integer getIntConfigValue(String str, int i) {
        Object obj;
        try {
            obj = sharedPreferences.getAll().get(str);
        } catch (Exception e) {
            AppUtils.log("Error getting int config value for key: " + str, e);
        }
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
        SharedPreferences prefs;
        try {
            prefs = getPrefs();
        } catch (Exception e) {
            AppUtils.log("Error getting value for key: " + str, e);
        }
        if (prefs == null) {
            return Boolean.valueOf(z);
        }
        Object obj = prefs.getAll().get(str);
        if (obj instanceof String) {
            return Boolean.valueOf(Boolean.parseBoolean((String) obj));
        }
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return Boolean.valueOf(z);
    }

    public static Set getStringSetConfigValue(String str, Set set) {
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
