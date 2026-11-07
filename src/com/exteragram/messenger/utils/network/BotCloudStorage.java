package com.exteragram.messenger.utils.network;

import android.util.Pair;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.sun.jna.Callback;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J6\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2 \u0010\u000b\u001a\u001c\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r\u0012\u0004\u0012\u00020\u00070\fJ.\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0018\u00010\fJ.\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00070\fH\u0002J6\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00070\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/exteragram/messenger/utils/network/BotCloudStorage;", _UrlKt.FRAGMENT_ENCODE_SET, "account", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "get", _UrlKt.FRAGMENT_ENCODE_SET, "keys", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "set", PluginsConstants.Settings.KEY, "value", _UrlKt.FRAGMENT_ENCODE_SET, "invoke", "method", PluginsConstants.PARAMS, "Lorg/json/JSONObject;", "send", "bot", "Lorg/telegram/tgnet/TLRPC$User;", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class BotCloudStorage {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final BotCloudStorage[] instances = new BotCloudStorage[16];
    private final int account;

    public /* synthetic */ BotCloudStorage(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private BotCloudStorage(int i) {
        this.account = i;
    }

    public final void get(Collection<String> keys, final Function1<? super Map<String, String>, Unit> callback) {
        invoke("getStorageValues", new JSONObject().put("keys", new JSONArray((Collection) keys)), new Function1() { // from class: com.exteragram.messenger.utils.network.BotCloudStorage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BotCloudStorage.$r8$lambda$VlwNOMF0bIcAJbKahTGfjoKIafo(callback, (String) obj);
            }
        });
    }

    public static Unit $r8$lambda$VlwNOMF0bIcAJbKahTGfjoKIafo(Function1 function1, String str) {
        if (str == null) {
            function1.invoke(null);
            return Unit.INSTANCE;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                if (strOptString.length() > 0) {
                    map.put(next, strOptString);
                }
            }
            function1.invoke(map);
        } catch (Exception e) {
            FileLog.m1040e(e);
            function1.invoke(null);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void set$default(BotCloudStorage botCloudStorage, String str, String str2, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        botCloudStorage.set(str, str2, function1);
    }

    public final void set(String key, String value, final Function1<? super Boolean, Unit> callback) {
        invoke("saveStorageValue", new JSONObject().put(PluginsConstants.Settings.KEY, key).put("value", value), new Function1() { // from class: com.exteragram.messenger.utils.network.BotCloudStorage$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BotCloudStorage.m3362$r8$lambda$Ng_aCCggWTvvh0mYOre4cSCHUA(callback, (String) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Ng_aCCg-gWTvvh0mYOre4cSCHUA, reason: not valid java name */
    public static Unit m3362$r8$lambda$Ng_aCCggWTvvh0mYOre4cSCHUA(Function1 function1, String str) {
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(str != null));
        }
        return Unit.INSTANCE;
    }

    private final void invoke(final String method, final JSONObject params, final Function1<? super String, Unit> callback) {
        Pair<Long, String> apiBotInfo = ExteraConfig.getApiBotInfo();
        TLRPC.User user = MessagesController.getInstance(this.account).getUser((Long) apiBotInfo.first);
        if (user != null) {
            send(user, method, params, callback);
        } else {
            ChatUtils.getInstance(this.account).resolveUser((String) apiBotInfo.second, ((Number) apiBotInfo.first).longValue(), new Utilities.Callback() { // from class: com.exteragram.messenger.utils.network.BotCloudStorage$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    BotCloudStorage.$r8$lambda$nQJNz2LDtSAP5PKvSILcvUEEIjU(this.f$0, method, params, callback, (TLRPC.User) obj);
                }
            });
        }
    }

    public static void $r8$lambda$nQJNz2LDtSAP5PKvSILcvUEEIjU(BotCloudStorage botCloudStorage, String str, JSONObject jSONObject, Function1 function1, TLRPC.User user) {
        if (user != null) {
            botCloudStorage.send(user, str, jSONObject, function1);
        } else {
            function1.invoke(null);
        }
    }

    private final void send(TLRPC.User bot, final String method, JSONObject params, final Function1<? super String, Unit> callback) {
        TL_bots.invokeWebViewCustomMethod invokewebviewcustommethod = new TL_bots.invokeWebViewCustomMethod();
        invokewebviewcustommethod.bot = MessagesController.getInstance(this.account).getInputUser(bot);
        invokewebviewcustommethod.custom_method = method;
        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
        invokewebviewcustommethod.params = tL_dataJSON;
        tL_dataJSON.data = params.toString();
        ConnectionsManager.getInstance(this.account).sendRequest(invokewebviewcustommethod, new RequestDelegate() { // from class: com.exteragram.messenger.utils.network.BotCloudStorage$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.network.BotCloudStorage$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotCloudStorage.$r8$lambda$Uahq5WBKDmi1lgCKe09YHcvUHxo(tLObject, function1, tL_error, str);
                    }
                });
            }
        });
    }

    public static void $r8$lambda$Uahq5WBKDmi1lgCKe09YHcvUHxo(TLObject tLObject, Function1 function1, TLRPC.TL_error tL_error, String str) {
        if (tLObject instanceof TLRPC.TL_dataJSON) {
            function1.invoke(((TLRPC.TL_dataJSON) tLObject).data);
            return;
        }
        if (tL_error != null) {
            FileLog.m1038e("BotCloudStorage " + str + ": " + tL_error.code + " " + tL_error.text);
        }
        function1.invoke(null);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/utils/network/BotCloudStorage$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "MAX_VALUE_LENGTH", _UrlKt.FRAGMENT_ENCODE_SET, "instances", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/utils/network/BotCloudStorage;", "[Lcom/exteragram/messenger/utils/network/BotCloudStorage;", "getInstance", "account", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBotCloudStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotCloudStorage.kt\ncom/exteragram/messenger/utils/network/BotCloudStorage$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final BotCloudStorage getInstance(int account) {
            BotCloudStorage botCloudStorage;
            synchronized (BotCloudStorage.instances) {
                botCloudStorage = BotCloudStorage.instances[account];
                if (botCloudStorage == null) {
                    botCloudStorage = new BotCloudStorage(account, null);
                    BotCloudStorage.instances[account] = botCloudStorage;
                }
            }
            return botCloudStorage;
        }
    }
}
