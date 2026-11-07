package com.exteragram.messenger.utils.chats;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.exteragram.messenger.utils.network.BotCloudStorage;
import com.google.android.gms.cast.HlsSegmentFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 ,2\u00020\u0001:\u0002+,B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003J\u0006\u0010\u0011\u001a\u00020\tJ\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003J\u0006\u0010\u0019\u001a\u00020\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0002J\u0006\u0010\u001b\u001a\u00020\u0016JG\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u001dj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030 2\b\u0010!\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\tH\u0002J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u0007H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010'\u001a\u00020\u0007H\u0002J\u0014\u0010*\u001a\u0004\u0018\u00010\u00072\b\u0010'\u001a\u0004\u0018\u00010)H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006-"}, d2 = {"Lcom/exteragram/messenger/utils/chats/FolderRoles;", _UrlKt.FRAGMENT_ENCODE_SET, "account", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "snapshot", "Lcom/exteragram/messenger/utils/chats/FolderRoles$Snapshot;", "syncing", _UrlKt.FRAGMENT_ENCODE_SET, "synced", "preferences", "Landroid/content/SharedPreferences;", "getPreferences", "()Landroid/content/SharedPreferences;", "getMode", "filterId", "hasAny", "allows", "chat", "Lorg/telegram/tgnet/TLRPC$Chat;", "setMode", _UrlKt.FRAGMENT_ENCODE_SET, "filterFlags", "requestedMode", "onFiltersChanged", "sync", "clear", "pruned", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "modes", _UrlKt.FRAGMENT_ENCODE_SET, "keepId", "(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/HashMap;", "commit", "newSnapshot", "upload", "push", "value", "encode", _UrlKt.FRAGMENT_ENCODE_SET, "decode", "Snapshot", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFolderRoles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRoles.kt\ncom/exteragram/messenger/utils/chats/FolderRoles\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n41#2,12:236\n41#2,12:248\n1#3:260\n*S KotlinDebug\n*F\n+ 1 FolderRoles.kt\ncom/exteragram/messenger/utils/chats/FolderRoles\n*L\n102#1:236,12\n118#1:248,12\n*E\n"})
public final class FolderRoles {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Snapshot EMPTY = new Snapshot(MapsKt.emptyMap(), 0);
    private static final FolderRoles[] instances = new FolderRoles[16];
    private final int account;
    private volatile Snapshot snapshot;
    private boolean synced;
    private boolean syncing;

    public /* synthetic */ FolderRoles(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    @JvmStatic
    public static final String chatTypeOf(int i) {
        return INSTANCE.chatTypeOf(i);
    }

    @JvmStatic
    public static final int effectiveMode(int i, int i2) {
        return INSTANCE.effectiveMode(i, i2);
    }

    @JvmStatic
    public static final int fromPickerFlags(int i) {
        return INSTANCE.fromPickerFlags(i);
    }

    @JvmStatic
    public static final FolderRoles getInstance(int i) {
        return INSTANCE.getInstance(i);
    }

    @JvmStatic
    public static final boolean isRoleSpanUid(long j) {
        return INSTANCE.isRoleSpanUid(j);
    }

    @JvmStatic
    public static final int modeOf(String str) {
        return INSTANCE.modeOf(str);
    }

    @JvmStatic
    public static final long spanUidOf(int i) {
        return INSTANCE.spanUidOf(i);
    }

    @JvmStatic
    public static final boolean supportsFlags(int i) {
        return INSTANCE.supportsFlags(i);
    }

    @JvmStatic
    public static final int withPickerMode(int i, int i2) {
        return INSTANCE.withPickerMode(i, i2);
    }

    private FolderRoles(int i) {
        this.account = i;
        Snapshot snapshotDecode = decode(getPreferences().getString("folder_roles", null));
        this.snapshot = snapshotDecode == null ? EMPTY : snapshotDecode;
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/exteragram/messenger/utils/chats/FolderRoles$Snapshot;", _UrlKt.FRAGMENT_ENCODE_SET, "modes", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "updatedAt", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/util/Map;J)V", "getModes", "()Ljava/util/Map;", "getUpdatedAt", "()J", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Snapshot {
        private final Map<Integer, Integer> modes;
        private final long updatedAt;

        public Snapshot(Map<Integer, Integer> map, long j) {
            this.modes = map;
            this.updatedAt = j;
        }

        public final Map<Integer, Integer> getModes() {
            return this.modes;
        }

        public final long getUpdatedAt() {
            return this.updatedAt;
        }
    }

    private final SharedPreferences getPreferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences("folder_roles" + this.account, 0);
    }

    public final int getMode(int filterId) {
        Integer num = this.snapshot.getModes().get(Integer.valueOf(filterId));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final boolean hasAny() {
        return !this.snapshot.getModes().isEmpty();
    }

    public final boolean allows(int filterId, TLRPC.Chat chat) {
        int mode = getMode(filterId);
        if (mode == 1) {
            return chat.creator;
        }
        if (mode != 2) {
            return true;
        }
        return ChatObject.hasAdminRights(chat);
    }

    public final void setMode(int filterId, int filterFlags, int requestedMode) {
        int iEffectiveMode = INSTANCE.effectiveMode(filterFlags, requestedMode);
        if (getMode(filterId) == iEffectiveMode) {
            return;
        }
        HashMap<Integer, Integer> mapPruned = pruned(this.snapshot.getModes(), Integer.valueOf(filterId));
        if (iEffectiveMode == 0) {
            mapPruned.remove(Integer.valueOf(filterId));
        } else {
            mapPruned.put(Integer.valueOf(filterId), Integer.valueOf(iEffectiveMode));
        }
        commit(new Snapshot(mapPruned, System.currentTimeMillis()), true);
    }

    public final void onFiltersChanged() {
        UserConfig userConfig = UserConfig.getInstance(this.account);
        if (userConfig.isClientActivated() && userConfig.filtersLoaded) {
            if (!this.synced) {
                sync();
                return;
            }
            HashMap<Integer, Integer> mapPruned = pruned(this.snapshot.getModes(), null);
            if (mapPruned.size() != this.snapshot.getModes().size()) {
                commit(new Snapshot(mapPruned, System.currentTimeMillis()), true);
            }
        }
    }

    private final void sync() {
        if (this.syncing) {
            return;
        }
        this.syncing = true;
        BotCloudStorage.INSTANCE.getInstance(this.account).get(CollectionsKt.listOf("folder_roles"), new Function1() { // from class: com.exteragram.messenger.utils.chats.FolderRoles$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FolderRoles.m3349$r8$lambda$OEPe7SLT3Pk7b3RZjApyI5cmKs(this.f$0, (Map) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$OEPe7SLT3Pk7b3RZjApyI5cmK-s, reason: not valid java name */
    public static Unit m3349$r8$lambda$OEPe7SLT3Pk7b3RZjApyI5cmKs(FolderRoles folderRoles, Map map) throws JSONException {
        folderRoles.syncing = false;
        if (map == null) {
            return Unit.INSTANCE;
        }
        folderRoles.synced = true;
        String str = (String) map.get("folder_roles");
        Snapshot snapshotDecode = str != null ? folderRoles.decode(str) : null;
        Snapshot snapshot = folderRoles.snapshot;
        Snapshot snapshot2 = (snapshotDecode == null || snapshotDecode.getUpdatedAt() <= snapshot.getUpdatedAt()) ? snapshot : snapshotDecode;
        HashMap<Integer, Integer> mapPruned = folderRoles.pruned(snapshot2.getModes(), null);
        if (mapPruned.size() != snapshot2.getModes().size()) {
            folderRoles.commit(new Snapshot(mapPruned, System.currentTimeMillis()), true);
        } else if (snapshot2 != snapshot) {
            folderRoles.commit(snapshot2, false);
        } else if ((snapshotDecode != null || snapshot.getUpdatedAt() != 0) && (snapshotDecode == null || snapshotDecode.getUpdatedAt() < snapshot.getUpdatedAt())) {
            folderRoles.push(snapshot);
        }
        return Unit.INSTANCE;
    }

    public final void clear() {
        this.snapshot = EMPTY;
        this.synced = false;
        SharedPreferences.Editor editorEdit = getPreferences().edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    private final HashMap<Integer, Integer> pruned(Map<Integer, Integer> modes, Integer keepId) {
        SparseArray<MessagesController.DialogFilter> sparseArray = MessagesController.getInstance(this.account).dialogFiltersById;
        HashMap<Integer, Integer> map = new HashMap<>();
        for (Map.Entry<Integer, Integer> entry : modes.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            int iIntValue2 = entry.getValue().intValue();
            if ((keepId != null && iIntValue == keepId.intValue()) || sparseArray.get(iIntValue) != null) {
                map.put(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2));
            }
        }
        return map;
    }

    private final void commit(Snapshot newSnapshot, boolean upload) throws JSONException {
        this.snapshot = newSnapshot;
        SharedPreferences.Editor editorEdit = getPreferences().edit();
        editorEdit.putString("folder_roles", encode(newSnapshot));
        editorEdit.apply();
        if (upload) {
            push(newSnapshot);
        }
        MessagesController.getInstance(this.account).sortDialogs(null);
        NotificationCenter.getInstance(this.account).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.account);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: com.exteragram.messenger.utils.chats.FolderRoles$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                messagesStorage.resetAllUnreadCounters(false);
            }
        });
    }

    private final void push(Snapshot value) throws JSONException {
        String strEncode = encode(value);
        if (strEncode.length() > 4096) {
            FileLog.m1038e("FolderRoles: snapshot too large (" + strEncode.length() + ")");
            return;
        }
        BotCloudStorage.set$default(BotCloudStorage.INSTANCE.getInstance(this.account), "folder_roles", strEncode, null, 4, null);
    }

    private final String encode(Snapshot value) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<Integer, Integer> entry : value.getModes().entrySet()) {
            int iIntValue = entry.getKey().intValue();
            jSONObject.put(String.valueOf(iIntValue), entry.getValue().intValue());
        }
        return new JSONObject().put(HlsSegmentFormat.TS, value.getUpdatedAt()).put("f", jSONObject).toString();
    }

    private final Snapshot decode(String value) {
        if (value != null && value.length() != 0) {
            try {
                JSONObject jSONObject = new JSONObject(value);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("f");
                HashMap map = new HashMap();
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        int iOptInt = jSONObjectOptJSONObject.optInt(next, 0);
                        if (iOptInt == 1 || iOptInt == 2) {
                            map.put(Integer.valueOf(Integer.parseInt(next)), Integer.valueOf(iOptInt));
                        }
                    }
                }
                return new Snapshot(map, jSONObject.optLong(HlsSegmentFormat.TS));
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
        return null;
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0007J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0007J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001b\u001a\u00020\u0005H\u0007J\u0012\u0010\u001d\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u0005H\u0007J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\fH\u0007J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0007J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u0007J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0007J\u0010\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016¨\u0006("}, d2 = {"Lcom/exteragram/messenger/utils/chats/FolderRoles$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "MODE_NONE", _UrlKt.FRAGMENT_ENCODE_SET, "MODE_OWNER", "MODE_ADMIN", "TYPE_OWNER", _UrlKt.FRAGMENT_ENCODE_SET, "TYPE_ADMIN", "SPAN_UID_OWNER", _UrlKt.FRAGMENT_ENCODE_SET, "SPAN_UID_ADMIN", "PICKER_FLAG_OWNER", "PICKER_FLAG_ADMIN", "KEY", "EMPTY", "Lcom/exteragram/messenger/utils/chats/FolderRoles$Snapshot;", "instances", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/utils/chats/FolderRoles;", "[Lcom/exteragram/messenger/utils/chats/FolderRoles;", "supportsFlags", _UrlKt.FRAGMENT_ENCODE_SET, "filterFlags", "effectiveMode", "mode", "chatTypeOf", "modeOf", "chatType", "spanUidOf", "isRoleSpanUid", "uid", "toPickerFlags", "fromPickerFlags", "flags", "withPickerMode", "getInstance", "account", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFolderRoles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRoles.kt\ncom/exteragram/messenger/utils/chats/FolderRoles$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int fromPickerFlags(int flags) {
            if ((536870912 & flags) != 0) {
                return 1;
            }
            return (1073741824 & flags) != 0 ? 2 : 0;
        }

        @JvmStatic
        public final boolean isRoleSpanUid(long uid) {
            return uid == -9223372036854775798L || uid == -9223372036854775797L;
        }

        @JvmStatic
        public final long spanUidOf(int mode) {
            return mode == 1 ? -9223372036854775798L : -9223372036854775797L;
        }

        @JvmStatic
        public final int toPickerFlags(int mode) {
            if (mode == 1) {
                return 536870912;
            }
            if (mode != 2) {
                return 0;
            }
            return TLObject.FLAG_30;
        }

        private Companion() {
        }

        @JvmStatic
        public final boolean supportsFlags(int filterFlags) {
            return ((MessagesController.DIALOG_FILTER_FLAG_GROUPS | MessagesController.DIALOG_FILTER_FLAG_CHANNELS) & filterFlags) != 0;
        }

        @JvmStatic
        public final int effectiveMode(int filterFlags, int mode) {
            if (supportsFlags(filterFlags)) {
                return mode;
            }
            return 0;
        }

        @JvmStatic
        public final String chatTypeOf(int mode) {
            if (mode == 1) {
                return "folder_role_owner";
            }
            if (mode != 2) {
                return null;
            }
            return "folder_role_admin";
        }

        @JvmStatic
        public final int modeOf(String chatType) {
            if (Intrinsics.areEqual(chatType, "folder_role_owner")) {
                return 1;
            }
            return Intrinsics.areEqual(chatType, "folder_role_admin") ? 2 : 0;
        }

        @JvmStatic
        public final int withPickerMode(int flags, int mode) {
            return toPickerFlags(mode) | (flags & (-1610612737));
        }

        @JvmStatic
        public final FolderRoles getInstance(int account) {
            FolderRoles folderRoles;
            synchronized (FolderRoles.instances) {
                folderRoles = FolderRoles.instances[account];
                if (folderRoles == null) {
                    folderRoles = new FolderRoles(account, null);
                    FolderRoles.instances[account] = folderRoles;
                }
            }
            return folderRoles;
        }
    }
}
