package com.exteragram.messenger.export.output.json;

import android.util.Base64;
import android.util.Pair;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.exteragram.messenger.export.api.ApiWrap$ActionChatEditPhoto;
import com.exteragram.messenger.export.api.ApiWrap$ActionSuggestProfilePhoto;
import com.exteragram.messenger.export.api.ApiWrap$DialogInfo;
import com.exteragram.messenger.export.api.ApiWrap$Document;
import com.exteragram.messenger.export.api.ApiWrap$File;
import com.exteragram.messenger.export.api.ApiWrap$Game;
import com.exteragram.messenger.export.api.ApiWrap$GeoPoint;
import com.exteragram.messenger.export.api.ApiWrap$GiveawayResults;
import com.exteragram.messenger.export.api.ApiWrap$GiveawayStart;
import com.exteragram.messenger.export.api.ApiWrap$HistoryMessageMarkupButton;
import com.exteragram.messenger.export.api.ApiWrap$Image;
import com.exteragram.messenger.export.api.ApiWrap$Invoice;
import com.exteragram.messenger.export.api.ApiWrap$Media;
import com.exteragram.messenger.export.api.ApiWrap$Message;
import com.exteragram.messenger.export.api.ApiWrap$PaidMedia;
import com.exteragram.messenger.export.api.ApiWrap$Peer;
import com.exteragram.messenger.export.api.ApiWrap$Poll;
import com.exteragram.messenger.export.api.ApiWrap$Reaction;
import com.exteragram.messenger.export.api.ApiWrap$SharedContact;
import com.exteragram.messenger.export.api.ApiWrap$TextPart;
import com.exteragram.messenger.export.api.ApiWrap$UnsupportedMedia;
import com.exteragram.messenger.export.api.ApiWrap$User;
import com.exteragram.messenger.export.api.ApiWrap$Venue;
import com.exteragram.messenger.export.api.DataTypesUtils;
import com.exteragram.messenger.export.output.AbstractWriter;
import com.exteragram.messenger.export.output.OutputFile;
import com.exteragram.messenger.export.output.html.HtmlContext$$ExternalSyntheticBackport0;
import com.exteragram.messenger.export.output.html.HtmlWriter;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.function.Function;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Collection;
import p022j$.util.function.Function$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes4.dex */
public class JsonContext {
    protected OutputFile _file;
    public boolean _currentNestingHadItem = false;
    public ArrayList nesting = new ArrayList();

    public JsonContext(OutputFile outputFile) {
        this._file = outputFile;
    }

    public static String SerializeMessage(final JsonContext jsonContext, final ApiWrap$Message apiWrap$Message, final HashMap map, String str) {
        String str2;
        if (apiWrap$Message.media.content instanceof ApiWrap$UnsupportedMedia) {
            return SerializeObject(jsonContext, new Pair("id", Integer.valueOf(apiWrap$Message.f273id)), new Pair("type", SerializeString("unsupported")));
        }
        final Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.$r8$lambda$_82XuOS42idlN6YRygYUGxZazmU(map, (Long) obj);
            }
        };
        Utilities.CallbackReturn callbackReturn2 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.m2429$r8$lambda$Lb75cXPDJ068NTmfGbGV7wsayQ(callbackReturn, (Long) obj);
            }
        };
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("id", Integer.valueOf(apiWrap$Message.f273id)));
        arrayList.add(new Pair("type", SerializeString(apiWrap$Message.action != null ? "service" : "message")));
        arrayList.add(new Pair("date", SerializeString(String.valueOf(apiWrap$Message.date))));
        jsonContext.nesting.add(Boolean.TRUE);
        Utilities.CallbackVoidReturn callbackVoidReturn = new Utilities.CallbackVoidReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.CallbackVoidReturn
            public final Object run() {
                return JsonContext.$r8$lambda$5FFhJI72fHDyOjZRMyMtJGXGYXw(this.f$0, arrayList);
            }
        };
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$Yw3sshGVvjPkXNdtDtvTvKbj2BM(arrayList, (String) obj, (String) obj2);
            }
        };
        int i = apiWrap$Message.edited;
        if (i != 0) {
            callback2.run("edited", String.valueOf(i));
        }
        final Utilities.CallbackReturn callbackReturn3 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.$r8$lambda$nuaLfrTKf9UaHQJH7HeIdHHHYPs((Long) obj);
            }
        };
        final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$E9u9TYVlppS2vBxijZACzBTyoIE(callback2, callbackReturn3, (String) obj, obj2);
            }
        };
        final Utilities.CallbackReturn callbackReturn4 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.StringAllowNull(((ApiWrap$Peer) callbackReturn.run((Long) obj)).name());
            }
        };
        Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda10
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.$r8$lambda$oOh1TbUsZyqtWEJs5VUnyheqEho(apiWrap$Message, callback2, callbackReturn4, callback22, (String) obj);
            }
        };
        Utilities.Callback callback3 = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.$r8$lambda$6HhGPqLT_zAglGl3BSE0SMSNzeo(apiWrap$Message, callback22, (String) obj);
            }
        };
        ApiWrap$Media apiWrap$Media = apiWrap$Message.media;
        if (apiWrap$Media != null && apiWrap$Media.content != null) {
            arrayList.add(new Pair("media", SerializeMessageMedia(apiWrap$Message, jsonContext, map, str)));
        }
        if (apiWrap$Message.action != null) {
            arrayList.add(new Pair("action", SerializeMessageAction(jsonContext, apiWrap$Message.action, apiWrap$Message, map)));
        }
        if (apiWrap$Message.action == null) {
            callback.run("from");
            callback22.run("author", apiWrap$Message.signature);
            long j = apiWrap$Message.forwardedFromId;
            if (j != 0) {
                callback2.run("forwarded_from", (String) callbackReturn4.run(Long.valueOf(j)));
            } else {
                String str3 = apiWrap$Message.forwardedFromName;
                if (str3 != null && !str3.isEmpty()) {
                    callback2.run("forwarded_from", StringAllowNull(apiWrap$Message.forwardedFromName));
                }
            }
            long j2 = apiWrap$Message.savedFromChatId;
            if (j2 != 0) {
                callback2.run("saved_from", (String) callbackReturn4.run(Long.valueOf(j2)));
            }
            callback3.run("reply_to_message_id");
            long j3 = apiWrap$Message.viaBotId;
            if (j3 != 0 && (str2 = ((ApiWrap$User) callbackReturn2.run(Long.valueOf(j3))).username) != null && !str2.isEmpty()) {
                callback22.run("via_bot", str2);
            }
        }
        callback2.run("text_entities", SerializeText(jsonContext, apiWrap$Message.text, true));
        ArrayList arrayList2 = apiWrap$Message.inlineButtonRows;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            final Utilities.CallbackReturn callbackReturn5 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return JsonContext.$r8$lambda$lKrxcF5Xyg1WzKTSgzvku1TscPg(this.f$0, (ArrayList) obj);
                }
            };
            jsonContext.nesting.add(Boolean.FALSE);
            List list = (List) Collection.EL.stream(apiWrap$Message.inlineButtonRows).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda1
                public /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return JsonContext.m2430$r8$lambda$hmtII8_x5IKMyyqN62IoDyQTf4(callbackReturn5, (ArrayList) obj);
                }

                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            }).collect(Collectors.toList());
            ArrayList arrayList3 = jsonContext.nesting;
            arrayList3.remove(arrayList3.size() - 1);
            callback2.run("inline_bot_buttons", SerializeArray(jsonContext, new ArrayList(list)));
        }
        if (!apiWrap$Message.reactions.isEmpty()) {
            final Utilities.CallbackReturn callbackReturn6 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    JsonContext jsonContext2 = this.f$0;
                    Utilities.CallbackReturn callbackReturn7 = callbackReturn4;
                    Utilities.CallbackReturn callbackReturn8 = callbackReturn3;
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
                    return JsonContext.$r8$lambda$JSGl0gcx13Gm7REM9tQp0tkWgrM(jsonContext2, callbackReturn7, callbackReturn8, null);
                }
            };
            jsonContext.nesting.add(Boolean.FALSE);
            callback2.run("reactions", SerializeArray(jsonContext, new ArrayList((List) Collection.EL.stream(apiWrap$Message.reactions).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda3
                public /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Utilities.CallbackReturn callbackReturn7 = callbackReturn6;
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
                    return JsonContext.$r8$lambda$pklfCh8IPhV8pOoKh1sadePkqzY(callbackReturn7, null);
                }

                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            }).collect(Collectors.toList()))));
            ArrayList arrayList4 = jsonContext.nesting;
            arrayList4.remove(arrayList4.size() - 1);
        }
        return (String) callbackVoidReturn.run();
    }

    public static /* synthetic */ ApiWrap$Peer $r8$lambda$_82XuOS42idlN6YRygYUGxZazmU(HashMap map, Long l) {
        ApiWrap$Peer apiWrap$Peer = (ApiWrap$Peer) map.get(l);
        return apiWrap$Peer != null ? apiWrap$Peer : new ApiWrap$Peer(new ApiWrap$User());
    }

    /* JADX INFO: renamed from: $r8$lambda$Lb75cXPDJ068NTmfGbGV7wsa-yQ, reason: not valid java name */
    public static /* synthetic */ ApiWrap$User m2429$r8$lambda$Lb75cXPDJ068NTmfGbGV7wsayQ(Utilities.CallbackReturn callbackReturn, Long l) {
        ApiWrap$User apiWrap$User = ((ApiWrap$Peer) callbackReturn.run(l)).user;
        return apiWrap$User != null ? apiWrap$User : new ApiWrap$User();
    }

    public static /* synthetic */ String $r8$lambda$5FFhJI72fHDyOjZRMyMtJGXGYXw(JsonContext jsonContext, ArrayList arrayList) {
        jsonContext.nesting.remove(r0.size() - 1);
        return SerializeObject(jsonContext, (Pair[]) arrayList.toArray(new Pair[arrayList.size()]));
    }

    public static /* synthetic */ void $r8$lambda$Yw3sshGVvjPkXNdtDtvTvKbj2BM(ArrayList arrayList, String str, String str2) {
        if (str2.isEmpty()) {
            return;
        }
        arrayList.add(new Pair(str, str2));
    }

    public static /* synthetic */ String $r8$lambda$nuaLfrTKf9UaHQJH7HeIdHHHYPs(Long l) {
        if (l.longValue() < 0) {
            return SerializeString("chat" + l);
        }
        return SerializeString("user" + l);
    }

    public static /* synthetic */ void $r8$lambda$E9u9TYVlppS2vBxijZACzBTyoIE(Utilities.Callback2 callback2, Utilities.CallbackReturn callbackReturn, String str, Object obj) {
        if (obj instanceof Boolean) {
            callback2.run(str, String.valueOf((Boolean) obj));
            return;
        }
        if (obj instanceof Integer) {
            callback2.run(str, String.valueOf((Integer) obj));
            return;
        }
        if (obj instanceof Long) {
            callback2.run(str, (String) callbackReturn.run((Long) obj));
        } else if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.isEmpty()) {
                return;
            }
            callback2.run(str, SerializeString(str2));
        }
    }

    public static /* synthetic */ void $r8$lambda$oOh1TbUsZyqtWEJs5VUnyheqEho(ApiWrap$Message apiWrap$Message, Utilities.Callback2 callback2, Utilities.CallbackReturn callbackReturn, Utilities.Callback2 callback22, String str) {
        if (str == null) {
            str = "from";
        }
        long j = apiWrap$Message.fromId;
        if (j != 0) {
            callback2.run(str, (String) callbackReturn.run(Long.valueOf(j)));
            callback22.run(str + "_id", Long.valueOf(apiWrap$Message.fromId));
        }
    }

    public static /* synthetic */ void $r8$lambda$6HhGPqLT_zAglGl3BSE0SMSNzeo(ApiWrap$Message apiWrap$Message, Utilities.Callback2 callback2, String str) {
        int i = apiWrap$Message.replyToMsgId;
        if (i != 0) {
            callback2.run(str, Integer.valueOf(i));
            long j = apiWrap$Message.replyToPeerId;
            if (j != 0) {
                callback2.run("reply_to_peer_id", Long.valueOf(j));
            }
        }
    }

    public static /* synthetic */ String $r8$lambda$lKrxcF5Xyg1WzKTSgzvku1TscPg(final JsonContext jsonContext, ArrayList arrayList) {
        jsonContext.nesting.add(Boolean.FALSE);
        List list = (List) Collection.EL.stream(arrayList).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda13
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return JsonContext.m2434$r8$lambda$z_7ew4tZrjahCzTlJ65jxaK0v0(this.f$0, (ApiWrap$HistoryMessageMarkupButton) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).collect(Collectors.toList());
        jsonContext.nesting.remove(r0.size() - 1);
        return SerializeArray(jsonContext, new ArrayList(list));
    }

    /* JADX INFO: renamed from: $r8$lambda$z_7ew4t-ZrjahCzTlJ65jxaK0v0, reason: not valid java name */
    public static /* synthetic */ String m2434$r8$lambda$z_7ew4tZrjahCzTlJ65jxaK0v0(JsonContext jsonContext, ApiWrap$HistoryMessageMarkupButton apiWrap$HistoryMessageMarkupButton) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("type", SerializeString(ApiWrap$HistoryMessageMarkupButton.TypeToString(apiWrap$HistoryMessageMarkupButton))));
        if (!apiWrap$HistoryMessageMarkupButton.text().isEmpty()) {
            arrayList.add(new Pair("text", SerializeString(apiWrap$HistoryMessageMarkupButton.text())));
        }
        if (apiWrap$HistoryMessageMarkupButton.data() != null && apiWrap$HistoryMessageMarkupButton.data().length != 0) {
            if (apiWrap$HistoryMessageMarkupButton.type() == ApiWrap$HistoryMessageMarkupButton.Type.Callback || apiWrap$HistoryMessageMarkupButton.type() == ApiWrap$HistoryMessageMarkupButton.Type.CallbackWithPassword) {
                arrayList.add(new Pair("dataBase64", SerializeString(ChatUtils.getInstance().getTextFromCallback(apiWrap$HistoryMessageMarkupButton.data()))));
                arrayList.add(new Pair("data", SerializeString(_UrlKt.FRAGMENT_ENCODE_SET)));
            } else {
                arrayList.add(new Pair("data", SerializeString(ChatUtils.getInstance().getTextFromCallback(apiWrap$HistoryMessageMarkupButton.data()))));
            }
        }
        if (apiWrap$HistoryMessageMarkupButton.forwardText() != null && !apiWrap$HistoryMessageMarkupButton.forwardText().isEmpty()) {
            arrayList.add(new Pair("forward_text", SerializeString(apiWrap$HistoryMessageMarkupButton.forwardText())));
        }
        if (apiWrap$HistoryMessageMarkupButton.buttonId() != 0) {
            arrayList.add(new Pair("button_id", DataTypesUtils.NumberToString(apiWrap$HistoryMessageMarkupButton.buttonId())));
        }
        return SerializeObject(jsonContext, (Pair[]) arrayList.toArray(new Pair[arrayList.size()]));
    }

    /* JADX INFO: renamed from: $r8$lambda$hmtII8_x5IKMyy-qN62IoDyQTf4, reason: not valid java name */
    public static /* synthetic */ String m2430$r8$lambda$hmtII8_x5IKMyyqN62IoDyQTf4(Utilities.CallbackReturn callbackReturn, ArrayList arrayList) {
        return (String) callbackReturn.run(arrayList);
    }

    public static /* synthetic */ String $r8$lambda$JSGl0gcx13Gm7REM9tQp0tkWgrM(JsonContext jsonContext, Utilities.CallbackReturn callbackReturn, Utilities.CallbackReturn callbackReturn2, ApiWrap$Reaction apiWrap$Reaction) {
        jsonContext.nesting.add(Boolean.TRUE);
        try {
            new ArrayList().add(new Pair("type", SerializeString(ApiWrap$Reaction.TypeToString(apiWrap$Reaction))));
            throw null;
        } catch (Throwable th) {
            jsonContext.nesting.remove(r1.size() - 1);
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.export.output.json.JsonContext$1 */
    static /* synthetic */ class C10951 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$File$SkipReason */
        static final /* synthetic */ int[] f288xd696c439;

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$Reaction$Type */
        static final /* synthetic */ int[] f289x894b9bc3;

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$TextPart$Type */
        static final /* synthetic */ int[] f290x9004fd8c;

        static {
            int[] iArr = new int[ApiWrap$Reaction.Type.values().length];
            f289x894b9bc3 = iArr;
            try {
                iArr[ApiWrap$Reaction.Type.Emoji.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f289x894b9bc3[ApiWrap$Reaction.Type.CustomEmoji.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ApiWrap$File.SkipReason.values().length];
            f288xd696c439 = iArr2;
            try {
                iArr2[ApiWrap$File.SkipReason.Unavailable.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f288xd696c439[ApiWrap$File.SkipReason.FileSize.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f288xd696c439[ApiWrap$File.SkipReason.FileType.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f288xd696c439[ApiWrap$File.SkipReason.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[ApiWrap$TextPart.Type.values().length];
            f290x9004fd8c = iArr3;
            try {
                iArr3[ApiWrap$TextPart.Type.Unknown.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Mention.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Hashtag.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.BotCommand.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Url.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Email.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Bold.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Italic.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Code.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Pre.ordinal()] = 10;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Text.ordinal()] = 11;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.TextUrl.ordinal()] = 12;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.MentionName.ordinal()] = 13;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Phone.ordinal()] = 14;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Cashtag.ordinal()] = 15;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Underline.ordinal()] = 16;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Strike.ordinal()] = 17;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Blockquote.ordinal()] = 18;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.BankCard.ordinal()] = 19;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.Spoiler.ordinal()] = 20;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f290x9004fd8c[ApiWrap$TextPart.Type.CustomEmoji.ordinal()] = 21;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public static /* synthetic */ String $r8$lambda$pklfCh8IPhV8pOoKh1sadePkqzY(Utilities.CallbackReturn callbackReturn, ApiWrap$Reaction apiWrap$Reaction) {
        return (String) callbackReturn.run(apiWrap$Reaction);
    }

    private static String SerializeMessageMedia(ApiWrap$Message apiWrap$Message, final JsonContext jsonContext, final HashMap map, String str) {
        String strSerializeObject;
        final ArrayList arrayList = new ArrayList();
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda27
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$fua3ETEVNn_xpfDnppx9CUbOjao(arrayList, (String) obj, (String) obj2);
            }
        };
        final Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda29
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.m2424$r8$lambda$0G3AK7RwrqIoB5h65Np1ClK9s((Long) obj);
            }
        };
        final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$pU0v_mdGOesT5IrtmWsJdviQKos(callback2, callbackReturn, (String) obj, obj2);
            }
        };
        final Utilities.CallbackReturn callbackReturn2 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.m2427$r8$lambda$A7SAhkqqvPMMCDUVzfseNfek48(map, (Long) obj);
            }
        };
        Utilities.CallbackReturn callbackReturn3 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.$r8$lambda$D7Q2WtzEt_GXKZraWikmhxU1gTk(callbackReturn2, (Long) obj);
            }
        };
        final Utilities.Callback3 callback3 = new Utilities.Callback3() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                JsonContext.m2426$r8$lambda$5ZTMoi45tFEPX66k7pRMwqlwpI(callback22, (ApiWrap$File) obj, (String) obj2, (String) obj3);
            }
        };
        Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.$r8$lambda$LPKh2UoSVjmlAI8IwxLCjW6wJuA(callback3, callback22, (ApiWrap$Image) obj);
            }
        };
        Object obj = apiWrap$Message.media.content;
        if (obj instanceof HtmlWriter.Photo) {
            HtmlWriter.Photo photo = (HtmlWriter.Photo) obj;
            callback22.run("media_type", "photo");
            callback.run(photo.image);
            if (photo.spoilered) {
                callback22.run("media_spoiler", Boolean.TRUE);
            }
            int i = apiWrap$Message.media.ttl;
            if (i != 0) {
                callback22.run("ttl", Integer.valueOf(i));
            }
        } else {
            boolean z = obj instanceof ApiWrap$Document;
            String strNumberToString = _UrlKt.FRAGMENT_ENCODE_SET;
            if (z) {
                ApiWrap$Document apiWrap$Document = (ApiWrap$Document) obj;
                callback3.run(apiWrap$Document.file, "file", _UrlKt.FRAGMENT_ENCODE_SET);
                callback22.run("file_name", apiWrap$Document.name);
                if (apiWrap$Document.isSticker) {
                    callback22.run("media_type", "sticker");
                    try {
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(apiWrap$Document.sticker.getObjectSize());
                        apiWrap$Document.sticker.serializeToStream(nativeByteBuffer);
                        nativeByteBuffer.reuse();
                        nativeByteBuffer.buffer.rewind();
                        byte[] bArr = new byte[nativeByteBuffer.buffer.remaining()];
                        nativeByteBuffer.buffer.get(bArr);
                        callback2.run("serializedSticker", SerializeString(Base64.encodeToString(bArr, 0)));
                    } catch (Exception unused) {
                    }
                } else if (apiWrap$Document.isVideoMessage) {
                    callback22.run("media_type", "video_message");
                } else if (apiWrap$Document.isVoiceMessage) {
                    callback22.run("media_type", "voice_message");
                } else if (apiWrap$Document.isAnimated) {
                    callback22.run("media_type", "animation");
                } else if (apiWrap$Document.isVideoFile) {
                    callback22.run("media_type", "video_file");
                } else if (apiWrap$Document.isAudioFile) {
                    callback22.run("media_type", "audio_file");
                    callback22.run("performer", apiWrap$Document.songPerformer);
                    callback22.run("title", apiWrap$Document.songTitle);
                }
                callback2.run("mimeType", SerializeString(apiWrap$Document.mime));
                int i2 = apiWrap$Document.duration;
                if (i2 != 0) {
                    callback22.run("duration", Integer.valueOf(i2));
                }
                int i3 = apiWrap$Document.width;
                if (i3 != 0 && apiWrap$Document.height != 0) {
                    callback22.run("width", Integer.valueOf(i3));
                    callback22.run("height", Integer.valueOf(apiWrap$Document.height));
                }
                if (apiWrap$Document.spoilered) {
                    callback22.run("media_spoiler", Boolean.TRUE);
                }
                int i4 = apiWrap$Message.media.ttl;
                if (i4 != 0) {
                    callback22.run("ttl", Integer.valueOf(i4));
                }
            } else if (obj instanceof ApiWrap$SharedContact) {
                ApiWrap$SharedContact apiWrap$SharedContact = (ApiWrap$SharedContact) obj;
                callback2.run("mediaType", SerializeString("contact"));
                callback2.run("contact_information", SerializeObject(jsonContext, new Pair("first_name", SerializeString(apiWrap$SharedContact.info.firstName)), new Pair("last_name", SerializeString(apiWrap$SharedContact.info.lastName)), new Pair("phone_number", SerializeString(apiWrap$SharedContact.info.phoneNumber))));
                ApiWrap$File apiWrap$File = apiWrap$SharedContact.vcard;
                byte[] bArr2 = apiWrap$File.content;
                if (bArr2 != null && bArr2.length != 0) {
                    if (apiWrap$File.skipReason == ApiWrap$File.SkipReason.None) {
                        callback3.run(apiWrap$File, "contact_vcard", _UrlKt.FRAGMENT_ENCODE_SET);
                    } else {
                        callback3.run(apiWrap$File, "skipReason", _UrlKt.FRAGMENT_ENCODE_SET);
                    }
                    callback22.run("size", Long.valueOf(apiWrap$SharedContact.vcard.size));
                }
            } else if (obj instanceof ApiWrap$GeoPoint) {
                ApiWrap$GeoPoint apiWrap$GeoPoint = (ApiWrap$GeoPoint) obj;
                callback2.run("mediaType", SerializeString("geopoint"));
                if (apiWrap$GeoPoint.valid) {
                    strSerializeObject = SerializeObject(jsonContext, new Pair("latitude", DataTypesUtils.NumberToString((int) apiWrap$GeoPoint.latitude)), new Pair("longitude", DataTypesUtils.NumberToString((int) apiWrap$GeoPoint.longitude)));
                } else {
                    strSerializeObject = "null";
                }
                callback2.run("location_information", strSerializeObject);
                int i5 = apiWrap$Message.media.ttl;
                if (i5 != 0) {
                    callback22.run("ttl", Integer.valueOf(i5));
                }
            } else if (obj instanceof ApiWrap$Venue) {
                ApiWrap$Venue apiWrap$Venue = (ApiWrap$Venue) obj;
                callback2.run("mediaType", SerializeString("venue"));
                callback22.run("place_name", apiWrap$Venue.title);
                callback22.run("address", apiWrap$Venue.address);
                if (apiWrap$Venue.point.valid) {
                    callback2.run("location_information", SerializeObject(jsonContext, new Pair("latitude", DataTypesUtils.NumberToString((int) apiWrap$Venue.point.latitude)), new Pair("longitude", DataTypesUtils.NumberToString((int) apiWrap$Venue.point.longitude))));
                }
            } else if (obj instanceof ApiWrap$Game) {
                ApiWrap$Game apiWrap$Game = (ApiWrap$Game) obj;
                callback2.run("mediaType", SerializeString("game"));
                callback22.run("game_title", apiWrap$Game.title);
                callback22.run("game_description", apiWrap$Game.description);
                if (apiWrap$Game.botId != 0 && !apiWrap$Game.shortName.isEmpty()) {
                    ApiWrap$User apiWrap$User = (ApiWrap$User) callbackReturn3.run(Long.valueOf(apiWrap$Game.botId));
                    if (apiWrap$User.isBot && !apiWrap$User.username.isEmpty()) {
                        callback22.run("game_short_name", apiWrap$Game.shortName);
                    }
                }
            } else if (obj instanceof ApiWrap$Invoice) {
                ApiWrap$Invoice apiWrap$Invoice = (ApiWrap$Invoice) obj;
                callback2.run("mediaType", SerializeString("invoice"));
                Pair pair = new Pair("title", SerializeString(apiWrap$Invoice.title));
                Pair pair2 = new Pair("description", SerializeString(apiWrap$Invoice.description));
                Pair pair3 = new Pair("amount", DataTypesUtils.NumberToString(apiWrap$Invoice.amount));
                Pair pair4 = new Pair("currency", SerializeString(apiWrap$Invoice.currency));
                int i6 = apiWrap$Invoice.receiptMsgId;
                if (i6 != 0) {
                    strNumberToString = DataTypesUtils.NumberToString(i6);
                }
                callback2.run("invoice_information", SerializeObject(jsonContext, pair, pair2, pair3, pair4, new Pair("receipt_message_id", strNumberToString)));
            } else if (obj instanceof ApiWrap$Poll) {
                ApiWrap$Poll apiWrap$Poll = (ApiWrap$Poll) obj;
                callback2.run("mediaType", SerializeString("poll"));
                jsonContext.nesting.add(Boolean.TRUE);
                String strSerializeArray = SerializeArray(jsonContext, new ArrayList((List) Collection.EL.stream(apiWrap$Poll.answers).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda35
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return JsonContext.$r8$lambda$DZvvVfxINNbQgeVwZHbS0Lp0an4(this.f$0, (ApiWrap$Poll.Answer) obj2);
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(Collectors.toList())));
                jsonContext.nesting.remove(r6.size() - 1);
                callback2.run("poll", SerializeObject(jsonContext, new Pair("question", SerializeString(apiWrap$Poll.question)), new Pair("closed", String.valueOf(apiWrap$Poll.closed)), new Pair("total_voters", DataTypesUtils.NumberToString(apiWrap$Poll.totalVotes)), new Pair("answers", strSerializeArray)));
            } else if (obj instanceof ApiWrap$GiveawayStart) {
                ApiWrap$GiveawayStart apiWrap$GiveawayStart = (ApiWrap$GiveawayStart) obj;
                callback2.run("mediaType", SerializeString("giveawayStart"));
                ArrayList arrayList2 = jsonContext.nesting;
                Boolean bool = Boolean.FALSE;
                arrayList2.add(bool);
                String strSerializeArray2 = SerializeArray(jsonContext, new ArrayList((List) Collection.EL.stream(apiWrap$GiveawayStart.channels).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda36
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return DataTypesUtils.NumberToString(((Long) obj2).longValue());
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(Collectors.toList())));
                jsonContext.nesting.remove(r9.size() - 1);
                jsonContext.nesting.add(bool);
                String strSerializeArray3 = SerializeArray(jsonContext, new ArrayList((List) Collection.EL.stream(apiWrap$GiveawayStart.countries).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda37
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return JsonContext.SerializeString((String) obj2);
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(Collectors.toList())));
                jsonContext.nesting.remove(r9.size() - 1);
                callback2.run("giveaway_information", SerializeObject(jsonContext, new Pair("quantity", DataTypesUtils.NumberToString(apiWrap$GiveawayStart.quantity)), new Pair("months", DataTypesUtils.NumberToString(apiWrap$GiveawayStart.months)), new Pair("until_date", DataTypesUtils.NumberToString(apiWrap$GiveawayStart.untilDate)), new Pair("channels", strSerializeArray2), new Pair("countries", strSerializeArray3), new Pair("additional_prize", SerializeString(apiWrap$GiveawayStart.additionalPrize)), new Pair("stars", DataTypesUtils.NumberToString(apiWrap$GiveawayStart.credits)), new Pair("is_only_new_subscribers", String.valueOf(!apiWrap$GiveawayStart.all))));
            } else if (obj instanceof ApiWrap$GiveawayResults) {
                ApiWrap$GiveawayResults apiWrap$GiveawayResults = (ApiWrap$GiveawayResults) obj;
                callback2.run("mediaType", SerializeString("giveawayResults"));
                jsonContext.nesting.add(Boolean.FALSE);
                String strSerializeArray4 = SerializeArray(jsonContext, new ArrayList((List) Collection.EL.stream(apiWrap$GiveawayResults.winners).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda28
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return DataTypesUtils.NumberToString(((Long) obj2).longValue());
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(Collectors.toList())));
                jsonContext.nesting.remove(r5.size() - 1);
                callback2.run("giveaway_results", SerializeObject(jsonContext, new Pair("channel", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.channel)), new Pair("winners", strSerializeArray4), new Pair("additional_prize", SerializeString(apiWrap$GiveawayResults.additionalPrize)), new Pair("until_date", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.untilDate)), new Pair("launch_message_id", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.launchId)), new Pair("additional_peers_count", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.additionalPeersCount)), new Pair("winners_count", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.winnersCount)), new Pair("unclaimed_count", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.unclaimedCount)), new Pair("months", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.months)), new Pair("stars", DataTypesUtils.NumberToString(apiWrap$GiveawayResults.credits)), new Pair("is_refunded", String.valueOf(apiWrap$GiveawayResults.refunded)), new Pair("is_only_new_subscribers", String.valueOf(!apiWrap$GiveawayResults.all))));
            } else if (obj instanceof ApiWrap$PaidMedia) {
                callback2.run("mediaType", SerializeString("paidMedia"));
                callback22.run("paid_stars_amount", Long.valueOf(((ApiWrap$PaidMedia) obj).stars));
            } else if (obj instanceof ApiWrap$UnsupportedMedia) {
                FileLog.m1134e("Export: Unsupported message");
            }
        }
        ApiWrap$File.SkipReason skipReason = apiWrap$Message.getFile().skipReason;
        ApiWrap$File.SkipReason skipReason2 = ApiWrap$File.SkipReason.None;
        return SerializeObject(jsonContext, (Pair[]) arrayList.toArray(new Pair[arrayList.size()]));
    }

    public static /* synthetic */ void $r8$lambda$fua3ETEVNn_xpfDnppx9CUbOjao(ArrayList arrayList, String str, String str2) {
        if (str2.isEmpty()) {
            return;
        }
        arrayList.add(new Pair(str, str2));
    }

    /* JADX INFO: renamed from: $r8$lambda$0G3A-K7RwrqIoB5h6-5Np1ClK9s, reason: not valid java name */
    public static /* synthetic */ String m2424$r8$lambda$0G3AK7RwrqIoB5h65Np1ClK9s(Long l) {
        if (l.longValue() < 0) {
            return SerializeString("chat" + l);
        }
        return SerializeString("user" + l);
    }

    public static /* synthetic */ void $r8$lambda$pU0v_mdGOesT5IrtmWsJdviQKos(Utilities.Callback2 callback2, Utilities.CallbackReturn callbackReturn, String str, Object obj) {
        if (obj instanceof Boolean) {
            callback2.run(str, String.valueOf((Boolean) obj));
            return;
        }
        if (obj instanceof Integer) {
            callback2.run(str, String.valueOf((Integer) obj));
            return;
        }
        if (obj instanceof Long) {
            callback2.run(str, String.valueOf((Long) obj));
            return;
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (!str2.isEmpty()) {
                callback2.run(str, SerializeString(str2));
                return;
            }
        }
        if (obj instanceof TLRPC.Peer) {
            callback2.run(str, (String) callbackReturn.run(Long.valueOf(MessageObject.getPeerId((TLRPC.Peer) obj))));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$A7SAhk-qqvPMMCDUVzfseNfek48, reason: not valid java name */
    public static /* synthetic */ ApiWrap$Peer m2427$r8$lambda$A7SAhkqqvPMMCDUVzfseNfek48(HashMap map, Long l) {
        ApiWrap$Peer apiWrap$Peer = (ApiWrap$Peer) map.get(l);
        return apiWrap$Peer != null ? apiWrap$Peer : new ApiWrap$Peer(new ApiWrap$User());
    }

    public static /* synthetic */ ApiWrap$User $r8$lambda$D7Q2WtzEt_GXKZraWikmhxU1gTk(Utilities.CallbackReturn callbackReturn, Long l) {
        ApiWrap$User apiWrap$User = ((ApiWrap$Peer) callbackReturn.run(l)).user;
        return apiWrap$User != null ? apiWrap$User : new ApiWrap$User();
    }

    /* JADX INFO: renamed from: $r8$lambda$5ZTMoi45tFE-PX66k7pRMwqlwpI, reason: not valid java name */
    public static /* synthetic */ void m2426$r8$lambda$5ZTMoi45tFEPX66k7pRMwqlwpI(Utilities.Callback2 callback2, ApiWrap$File apiWrap$File, String str, String str2) {
        String str3;
        String str4;
        if (str2.isEmpty()) {
            str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str3 = str2 + ' ';
        }
        int i = C10951.f288xd696c439[apiWrap$File.skipReason.ordinal()];
        if (i == 1) {
            str4 = str3 + "(File unavailable, please try again later)";
        } else if (i == 2) {
            str4 = str3 + "(File exceeds maximum size. Change data exporting settings to download.)";
        } else if (i != 3) {
            str4 = null;
        } else {
            str4 = str3 + "(File not included. Change data exporting settings to download.)";
        }
        if (str4 != null) {
            callback2.run("skipReason", str4);
            callback2.run("size", Long.valueOf(apiWrap$File.size));
        } else {
            callback2.run(str, apiWrap$File.relativePath);
        }
    }

    public static /* synthetic */ void $r8$lambda$LPKh2UoSVjmlAI8IwxLCjW6wJuA(Utilities.Callback3 callback3, Utilities.Callback2 callback2, ApiWrap$Image apiWrap$Image) {
        callback3.run(apiWrap$Image.file, "photo", _UrlKt.FRAGMENT_ENCODE_SET);
        callback2.run("size", Long.valueOf(apiWrap$Image.file.size));
        int i = apiWrap$Image.width;
        if (i == 0 || apiWrap$Image.height == 0) {
            return;
        }
        callback2.run("width", Integer.valueOf(i));
        callback2.run("height", Integer.valueOf(apiWrap$Image.height));
    }

    public static /* synthetic */ String $r8$lambda$DZvvVfxINNbQgeVwZHbS0Lp0an4(JsonContext jsonContext, ApiWrap$Poll.Answer answer) {
        jsonContext.nesting.add(Boolean.FALSE);
        String strSerializeObject = SerializeObject(jsonContext, new Pair("text", SerializeString(answer.text())), new Pair("voters", DataTypesUtils.NumberToString(answer.votes())), new Pair("chosen", answer.m238my() ? "true" : "false"));
        ArrayList arrayList = jsonContext.nesting;
        arrayList.remove(arrayList.size() - 1);
        return strSerializeObject;
    }

    private static String SerializeMessageAction(final JsonContext jsonContext, TLRPC.MessageAction messageAction, final ApiWrap$Message apiWrap$Message, final HashMap map) {
        String str;
        TLRPC.TL_chatTheme tL_chatTheme;
        String str2;
        String str3;
        String str4;
        final ArrayList arrayList = new ArrayList();
        final Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.$r8$lambda$HcPXe2yaCyXRahCOHGZF0WKJQiM(map, (Long) obj);
            }
        };
        final Utilities.CallbackReturn callbackReturn2 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.m2431$r8$lambda$l3kw5Q6evJjim0J_zsiqvwknVk(callbackReturn, (Long) obj);
            }
        };
        final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$DJcpDpppJ9SASMoVONnleTMyrRE(arrayList, (String) obj, (String) obj2);
            }
        };
        final Utilities.CallbackReturn callbackReturn3 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.$r8$lambda$zTj1WpUulSBk65CIRhljeFYUJSk((Long) obj);
            }
        };
        final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.$r8$lambda$ITtAik57S_FX3F_idDa0ObsjTEY(callback2, callbackReturn3, (String) obj, obj2);
            }
        };
        final Utilities.CallbackReturn callbackReturn4 = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return JsonContext.StringAllowNull(((ApiWrap$Peer) callbackReturn.run((Long) obj)).name());
            }
        };
        Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.$r8$lambda$hw2aHHYioc0DYTvaVxxcyJjnUJs(apiWrap$Message, callback2, callbackReturn4, callback22, (String) obj);
            }
        };
        Utilities.Callback callback3 = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.$r8$lambda$V1GPUI3Ji8IitWs016dE88zBqRg(apiWrap$Message, callback22, (String) obj);
            }
        };
        Utilities.Callback2 callback23 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                JsonContext.m2433$r8$lambda$qketphKXD6umlaSqbPSIjrbZ8c(callbackReturn2, callback2, jsonContext, (ArrayList) obj, (String) obj2);
            }
        };
        final Utilities.Callback3 callback32 = new Utilities.Callback3() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                JsonContext.$r8$lambda$j7sKj_P7pujVBJlz8XEZE23lUvo(callback22, (ApiWrap$File) obj, (String) obj2, (String) obj3);
            }
        };
        Utilities.Callback callback4 = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                JsonContext.m2425$r8$lambda$0JEATGwgrDcrUlHLnU4tlxdjgY(callback32, callback22, (ApiWrap$Image) obj);
            }
        };
        Utilities.Callback callback5 = new Utilities.Callback() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                callback22.run("action", (String) obj);
            }
        };
        if (messageAction instanceof TLRPC.TL_messageActionChatCreate) {
            TLRPC.TL_messageActionChatCreate tL_messageActionChatCreate = (TLRPC.TL_messageActionChatCreate) messageAction;
            callback.run("actor");
            callback5.run("create_group");
            callback22.run("title", tL_messageActionChatCreate.title);
            callback23.run(tL_messageActionChatCreate.users, "members");
        } else if (messageAction instanceof TLRPC.TL_messageActionChatEditTitle) {
            callback.run("actor");
            callback5.run("edit_group_title");
            callback22.run("title", ((TLRPC.TL_messageActionChatEditTitle) messageAction).title);
        } else if (messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) {
            callback.run("actor");
            callback5.run("edit_group_photo");
            callback4.run(((ApiWrap$ActionChatEditPhoto) apiWrap$Message.parsedAction).photo().image);
            if (((ApiWrap$ActionChatEditPhoto) apiWrap$Message.parsedAction).photo().spoilered) {
                callback22.run("media_spoiler", Boolean.TRUE);
            }
        } else {
            if (messageAction instanceof TLRPC.TL_messageActionChatDeletePhoto) {
                callback.run("actor");
                callback5.run("delete_group_photo");
            } else if (messageAction instanceof TLRPC.TL_messageActionChatAddUser) {
                callback.run("actor");
                callback5.run("invite_members");
                callback23.run(((TLRPC.TL_messageActionChatAddUser) messageAction).users, "members");
            } else if (messageAction instanceof TLRPC.TL_messageActionChatDeleteUser) {
                callback.run("actor");
                callback5.run("remove_members");
                callback23.run(new ArrayList(Collections.singletonList(Long.valueOf(((TLRPC.TL_messageActionChatDeleteUser) messageAction).user_id))), "members");
            } else if (messageAction instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                callback.run("actor");
                callback5.run("join_group_by_link");
                callback2.run("inviter_id", _UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.TL_messageActionChatJoinedByLink) messageAction).inviter_id);
            } else if (messageAction instanceof TLRPC.TL_messageActionChannelCreate) {
                callback.run("actor");
                callback5.run("create_channel");
                callback22.run("title", ((TLRPC.TL_messageActionChannelCreate) messageAction).title);
            } else if (messageAction instanceof TLRPC.TL_messageActionChatMigrateTo) {
                callback.run("actor");
                callback5.run("migrate_to_supergroup");
            } else if (messageAction instanceof TLRPC.TL_messageActionChannelMigrateFrom) {
                callback.run("actor");
                callback5.run("migrate_from_group");
                callback22.run("title", ((TLRPC.TL_messageActionChannelMigrateFrom) messageAction).title);
            } else if (messageAction instanceof TLRPC.TL_messageActionPinMessage) {
                callback.run("actor");
                callback5.run("pin_message");
                callback3.run("message_id");
            } else if (messageAction instanceof TLRPC.TL_messageActionHistoryClear) {
                callback.run("actor");
                callback5.run("clear_history");
            } else if (messageAction instanceof TLRPC.TL_messageActionGameScore) {
                callback.run("actor");
                callback5.run("score_in_game");
                callback3.run("game_message_id");
                callback22.run("score", Integer.valueOf(((TLRPC.TL_messageActionGameScore) messageAction).score));
            } else if (messageAction instanceof TLRPC.TL_messageActionPaymentSent) {
                TLRPC.TL_messageActionPaymentSent tL_messageActionPaymentSent = (TLRPC.TL_messageActionPaymentSent) messageAction;
                callback5.run("send_payment");
                callback22.run("amount", Long.valueOf(tL_messageActionPaymentSent.total_amount));
                callback22.run("currency", tL_messageActionPaymentSent.currency);
                callback3.run("invoice_message_id");
                if (tL_messageActionPaymentSent.recurring_used) {
                    callback22.run("recurring", "used");
                } else if (tL_messageActionPaymentSent.recurring_init) {
                    callback22.run("recurring", "init");
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionPhoneCall) {
                TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction;
                callback.run("actor");
                callback5.run("phone_call");
                int i = tL_messageActionPhoneCall.duration;
                if (i != 0) {
                    callback22.run("duration_seconds", Integer.valueOf(i));
                }
                TLRPC.PhoneCallDiscardReason phoneCallDiscardReason = tL_messageActionPhoneCall.reason;
                if (phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonHangup) {
                    str4 = "hangup";
                } else if (phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonBusy) {
                    str4 = "busy";
                } else if (phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonMissed) {
                    str4 = "missed";
                } else {
                    str4 = phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonDisconnect ? "disconnect" : _UrlKt.FRAGMENT_ENCODE_SET;
                }
                callback22.run("discard_reason", str4);
            } else if (messageAction instanceof TLRPC.TL_messageActionScreenshotTaken) {
                callback.run("actor");
                callback5.run("take_screenshot");
            } else if (messageAction instanceof TLRPC.TL_messageActionCustomAction) {
                callback.run("actor");
                callback22.run("information_text", ((TLRPC.TL_messageActionCustomAction) messageAction).message);
            } else if (messageAction instanceof TLRPC.TL_messageActionBotAllowed) {
                TLRPC.TL_messageActionBotAllowed tL_messageActionBotAllowed = (TLRPC.TL_messageActionBotAllowed) messageAction;
                if (tL_messageActionBotAllowed.attach_menu) {
                    callback5.run("attach_menu_bot_allowed");
                } else if (tL_messageActionBotAllowed.from_request) {
                    callback5.run("web_app_bot_allowed");
                } else if (tL_messageActionBotAllowed.app.f1657id != 0) {
                    callback5.run("allow_sending_messages");
                    callback22.run("reason_app_id", Long.valueOf(tL_messageActionBotAllowed.app.f1657id));
                    callback22.run("reason_app_name", tL_messageActionBotAllowed.app.title);
                } else {
                    callback5.run("allow_sending_messages");
                    callback22.run("reason_domain", tL_messageActionBotAllowed.domain);
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionSecureValuesSent) {
                callback5.run("send_passport_values");
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = ((TLRPC.TL_messageActionSecureValuesSent) messageAction).types;
                int size = arrayList3.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList3.get(i2);
                    i2++;
                    TLRPC.SecureValueType secureValueType = (TLRPC.SecureValueType) obj;
                    if (secureValueType instanceof TLRPC.TL_secureValueTypeAddress) {
                        str3 = "address_information";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassportRegistration) {
                        str3 = "passport_registration";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeIdentityCard) {
                        str3 = "identity_card";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeUtilityBill) {
                        str3 = "utility_bill";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeBankStatement) {
                        str3 = "bank_statement";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeEmail) {
                        str3 = "email";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePersonalDetails) {
                        str3 = "personal_details";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeTemporaryRegistration) {
                        str3 = "temporary_registration";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassport) {
                        str3 = "passport";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeRentalAgreement) {
                        str3 = "rental_agreement";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypeDriverLicense) {
                        str3 = "driver_license";
                    } else if (secureValueType instanceof TLRPC.TL_secureValueTypePhone) {
                        str3 = "phone_number";
                    } else {
                        str3 = secureValueType instanceof TLRPC.TL_secureValueTypeInternalPassport ? "internal_passport" : _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    arrayList2.add(SerializeString(str3));
                }
                callback2.run("values", SerializeArray(jsonContext, arrayList2));
            } else if (messageAction instanceof TLRPC.TL_messageActionContactSignUp) {
                callback.run("actor");
                callback5.run("joined_telegram");
            } else if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                TLRPC.TL_messageActionGeoProximityReached tL_messageActionGeoProximityReached = (TLRPC.TL_messageActionGeoProximityReached) messageAction;
                callback5.run("proximity_reached");
                if (MessageObject.getPeerId(tL_messageActionGeoProximityReached.from_id) != 0) {
                    callback2.run("from", (String) callbackReturn4.run(Long.valueOf(MessageObject.getPeerId(tL_messageActionGeoProximityReached.from_id))));
                    callback22.run("from_id", Long.valueOf(MessageObject.getPeerId(tL_messageActionGeoProximityReached.from_id)));
                }
                if (MessageObject.getPeerId(tL_messageActionGeoProximityReached.to_id) != 0) {
                    callback2.run("to", (String) callbackReturn4.run(Long.valueOf(MessageObject.getPeerId(tL_messageActionGeoProximityReached.to_id))));
                    callback22.run("to_id", Long.valueOf(MessageObject.getPeerId(tL_messageActionGeoProximityReached.to_id)));
                }
                callback22.run("distance", Integer.valueOf(tL_messageActionGeoProximityReached.distance));
            } else if (messageAction instanceof TLRPC.TL_messageActionPhoneNumberRequest) {
                callback.run("actor");
                callback5.run("requested_phone_number");
            } else if (messageAction instanceof TLRPC.TL_messageActionGroupCall) {
                callback.run("actor");
                callback5.run("group_call");
                int i3 = ((TLRPC.TL_messageActionGroupCall) messageAction).duration;
                if (i3 != 0) {
                    callback22.run("duration", Integer.valueOf(i3));
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                TLRPC.TL_messageActionInviteToGroupCall tL_messageActionInviteToGroupCall = (TLRPC.TL_messageActionInviteToGroupCall) messageAction;
                callback.run("actor");
                callback5.run("invite_to_group_call");
                callback23.run(tL_messageActionInviteToGroupCall.users, "members");
                callback2.run("values", SerializeArray(jsonContext, new ArrayList((java.util.Collection) Collection.EL.stream(tL_messageActionInviteToGroupCall.users).map(new Function() { // from class: com.exteragram.messenger.export.output.json.JsonContext$$ExternalSyntheticLambda17
                    public /* synthetic */ Function andThen(Function function) {
                        return Function$CC.$default$andThen(this, function);
                    }

                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        return String.valueOf((Long) obj2);
                    }

                    public /* synthetic */ Function compose(Function function) {
                        return Function$CC.$default$compose(this, function);
                    }
                }).collect(Collectors.toList()))));
            } else if (messageAction instanceof TLRPC.TL_messageActionSetMessagesTTL) {
                callback.run("actor");
                callback5.run("set_messages_ttl");
                callback22.run("period", Integer.valueOf(((TLRPC.TL_messageActionSetMessagesTTL) messageAction).period));
            } else if (messageAction instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                callback.run("actor");
                callback5.run("group_call_scheduled");
                callback22.run("schedule_date", Integer.valueOf(((TLRPC.TL_messageActionGroupCallScheduled) messageAction).schedule_date));
            } else if (messageAction instanceof TLRPC.TL_messageActionSetChatTheme) {
                callback.run("actor");
                callback5.run("edit_chat_theme");
                TLRPC.ChatTheme chatTheme = ((TLRPC.TL_messageActionSetChatTheme) messageAction).theme;
                if ((chatTheme instanceof TLRPC.TL_chatTheme) && (str2 = (tL_chatTheme = (TLRPC.TL_chatTheme) chatTheme).emoticon) != null && !str2.isEmpty()) {
                    callback22.run("emoticon", tL_chatTheme.emoticon);
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                callback.run("actor");
                callback5.run("join_group_by_request");
            } else if (messageAction instanceof TLRPC.TL_messageActionWebViewDataSent) {
                callback5.run("send_webview_data");
                callback22.run("text", ((TLRPC.TL_messageActionWebViewDataSent) messageAction).text);
            } else if (messageAction instanceof TLRPC.TL_messageActionGiftPremium) {
                TLRPC.TL_messageActionGiftPremium tL_messageActionGiftPremium = (TLRPC.TL_messageActionGiftPremium) messageAction;
                callback.run("actor");
                callback5.run("send_premium_gift");
                String str5 = tL_messageActionGiftPremium.currency;
                if (str5 != null && !str5.isEmpty()) {
                    callback22.run("amount", Long.valueOf(tL_messageActionGiftPremium.amount));
                    callback22.run("currency", tL_messageActionGiftPremium.currency);
                }
                int i4 = tL_messageActionGiftPremium.months;
                if (i4 != 0) {
                    callback22.run("months", Integer.valueOf(i4));
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionTopicCreate) {
                callback.run("actor");
                callback5.run("topic_created");
                callback22.run("title", ((TLRPC.TL_messageActionTopicCreate) messageAction).title);
            } else if (messageAction instanceof TLRPC.TL_messageActionTopicEdit) {
                TLRPC.TL_messageActionTopicEdit tL_messageActionTopicEdit = (TLRPC.TL_messageActionTopicEdit) messageAction;
                callback.run("actor");
                callback5.run("topic_edit");
                if (!tL_messageActionTopicEdit.title.isEmpty()) {
                    callback22.run("title", tL_messageActionTopicEdit.title);
                }
                long j = tL_messageActionTopicEdit.icon_emoji_id;
                if (j != 0) {
                    callback22.run("new_icon_emoji_id", Long.valueOf(j));
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                callback.run("actor");
                callback5.run("suggest_profile_photo");
                callback4.run(((ApiWrap$ActionSuggestProfilePhoto) apiWrap$Message.parsedAction).photo().image);
                if (((ApiWrap$ActionSuggestProfilePhoto) apiWrap$Message.parsedAction).photo().spoilered) {
                    callback22.run("media_spoiler", Boolean.TRUE);
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionRequestedPeer) {
                TLRPC.TL_messageActionRequestedPeer tL_messageActionRequestedPeer = (TLRPC.TL_messageActionRequestedPeer) messageAction;
                callback.run("actor");
                callback5.run("requested_peer");
                callback22.run("button_id", Integer.valueOf(tL_messageActionRequestedPeer.button_id));
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = tL_messageActionRequestedPeer.peers;
                int size2 = arrayList5.size();
                int i5 = 0;
                while (i5 < size2) {
                    Object obj2 = arrayList5.get(i5);
                    i5++;
                    arrayList4.add(String.valueOf(MessageObject.getPeerId((TLRPC.Peer) obj2)));
                }
                callback22.run("peers", SerializeArray(jsonContext, arrayList4));
            } else if (messageAction instanceof TLRPC.TL_messageActionGiftCode) {
                TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) messageAction;
                callback5.run("gift_code_prize");
                callback22.run("gift_code", tL_messageActionGiftCode.slug);
                if (MessageObject.getPeerId(tL_messageActionGiftCode.boost_peer) != 0) {
                    callback22.run("boost_peer_id", Long.valueOf(MessageObject.getPeerId(tL_messageActionGiftCode.boost_peer)));
                }
                callback22.run("months", Integer.valueOf(tL_messageActionGiftCode.months));
                callback22.run("is_unclaimed", Boolean.valueOf(tL_messageActionGiftCode.unclaimed));
                callback22.run("via_giveaway", Boolean.valueOf(tL_messageActionGiftCode.via_giveaway));
            } else if (messageAction instanceof TLRPC.TL_messageActionGiveawayLaunch) {
                callback5.run("giveaway_launch");
            } else if (messageAction instanceof TLRPC.TL_messageActionGiveawayResults) {
                TLRPC.TL_messageActionGiveawayResults tL_messageActionGiveawayResults = (TLRPC.TL_messageActionGiveawayResults) messageAction;
                callback5.run("giveaway_results");
                callback22.run("winners", Integer.valueOf(tL_messageActionGiveawayResults.winners_count));
                callback22.run("unclaimed", Integer.valueOf(tL_messageActionGiveawayResults.unclaimed_count));
                callback22.run("stars_boolean", Boolean.valueOf(tL_messageActionGiveawayResults.stars));
            } else if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                callback.run("actor");
                if (((TLRPC.TL_messageActionSetChatWallPaper) messageAction).same) {
                    str = "set_same_chat_wallpaper";
                } else {
                    str = "set_chat_wallpaper";
                }
                callback5.run(str);
                callback3.run("message_id");
            } else if (messageAction instanceof TLRPC.TL_messageActionBoostApply) {
                callback.run("actor");
                callback5.run("boost_apply");
                callback22.run("boosts", Integer.valueOf(((TLRPC.TL_messageActionBoostApply) messageAction).boosts));
            } else if (messageAction instanceof TLRPC.TL_messageActionPaymentRefunded) {
                TLRPC.TL_messageActionPaymentRefunded tL_messageActionPaymentRefunded = (TLRPC.TL_messageActionPaymentRefunded) messageAction;
                callback5.run("refunded_payment");
                callback22.run("amount", Long.valueOf(tL_messageActionPaymentRefunded.total_amount));
                callback22.run("currency", tL_messageActionPaymentRefunded.currency);
                callback2.run("peer_name", (String) callbackReturn4.run(Long.valueOf(MessageObject.getPeerId(tL_messageActionPaymentRefunded.peer))));
                callback22.run("peer", tL_messageActionPaymentRefunded.peer);
                callback22.run("charge_id", tL_messageActionPaymentRefunded.charge.f1798id);
            } else if (messageAction instanceof TLRPC.TL_messageActionGiftStars) {
                TLRPC.TL_messageActionGiftStars tL_messageActionGiftStars = (TLRPC.TL_messageActionGiftStars) messageAction;
                callback.run("actor");
                callback5.run("send_stars_gift");
                callback22.run("amount", Long.valueOf(tL_messageActionGiftStars.amount));
                callback22.run("currency", tL_messageActionGiftStars.currency);
                long j2 = tL_messageActionGiftStars.stars;
                if (j2 != 0) {
                    callback22.run("stars", Long.valueOf(j2));
                }
            } else if (messageAction instanceof TLRPC.TL_messageActionPrizeStars) {
                TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars = (TLRPC.TL_messageActionPrizeStars) messageAction;
                callback.run("actor");
                callback5.run("stars_prize");
                callback22.run("boost_peer_id", Long.valueOf(MessageObject.getPeerId(tL_messageActionPrizeStars.peer)));
                callback2.run("boost_peer_name", (String) callbackReturn4.run(Long.valueOf(MessageObject.getPeerId(tL_messageActionPrizeStars.peer))));
                callback22.run("stars", Long.valueOf(tL_messageActionPrizeStars.amount));
                callback22.run("is_unclaimed", Boolean.valueOf(tL_messageActionPrizeStars.unclaimed));
                callback22.run("giveaway_msg_id", Integer.valueOf(tL_messageActionPrizeStars.giveaway_msg_id));
                callback22.run("transaction_id", tL_messageActionPrizeStars.transaction_id);
            } else if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction;
                callback.run("actor");
                callback5.run("send_star_gift");
                arrayList = arrayList;
                arrayList.add(new Pair("gift_id", Long.valueOf(tL_messageActionStarGift.gift.f1846id)));
                arrayList.add(new Pair("stars", Long.valueOf(tL_messageActionStarGift.convert_stars)));
                callback22.run("is_limited", Boolean.valueOf(tL_messageActionStarGift.gift.limited));
                callback22.run("is_anonymous", Boolean.valueOf(tL_messageActionStarGift.name_hidden));
                if ((tL_messageActionStarGift.flags & 2) != 0) {
                    TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageActionStarGift.message;
                    callback2.run("gift_text", SerializeText(jsonContext, DataTypesUtils.ParseText(tL_textWithEntities.text, tL_textWithEntities.entities), true));
                }
            }
            arrayList = arrayList;
        }
        return SerializeObject(jsonContext, (Pair[]) arrayList.toArray(new Pair[arrayList.size()]));
    }

    public static /* synthetic */ ApiWrap$Peer $r8$lambda$HcPXe2yaCyXRahCOHGZF0WKJQiM(HashMap map, Long l) {
        ApiWrap$Peer apiWrap$Peer = (ApiWrap$Peer) map.get(l);
        return apiWrap$Peer != null ? apiWrap$Peer : new ApiWrap$Peer(new ApiWrap$User());
    }

    /* JADX INFO: renamed from: $r8$lambda$l3kw5Q-6evJjim0J_zsiqvwknVk, reason: not valid java name */
    public static /* synthetic */ ApiWrap$User m2431$r8$lambda$l3kw5Q6evJjim0J_zsiqvwknVk(Utilities.CallbackReturn callbackReturn, Long l) {
        ApiWrap$User apiWrap$User = ((ApiWrap$Peer) callbackReturn.run(l)).user;
        return apiWrap$User != null ? apiWrap$User : new ApiWrap$User();
    }

    public static /* synthetic */ void $r8$lambda$DJcpDpppJ9SASMoVONnleTMyrRE(ArrayList arrayList, String str, String str2) {
        if (str2.isEmpty()) {
            return;
        }
        arrayList.add(new Pair(str, str2));
    }

    public static /* synthetic */ String $r8$lambda$zTj1WpUulSBk65CIRhljeFYUJSk(Long l) {
        if (l.longValue() < 0) {
            return SerializeString("chat" + l);
        }
        return SerializeString("user" + l);
    }

    public static /* synthetic */ void $r8$lambda$ITtAik57S_FX3F_idDa0ObsjTEY(Utilities.Callback2 callback2, Utilities.CallbackReturn callbackReturn, String str, Object obj) {
        if (obj instanceof Boolean) {
            callback2.run(str, String.valueOf((Boolean) obj));
            return;
        }
        if (obj instanceof Integer) {
            callback2.run(str, String.valueOf((Integer) obj));
            return;
        }
        if (obj instanceof Long) {
            callback2.run(str, String.valueOf((Long) obj));
            return;
        }
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (!str2.isEmpty()) {
                callback2.run(str, SerializeString(str2));
                return;
            }
        }
        if (obj instanceof TLRPC.Peer) {
            callback2.run(str, (String) callbackReturn.run(Long.valueOf(MessageObject.getPeerId((TLRPC.Peer) obj))));
        }
    }

    public static /* synthetic */ void $r8$lambda$hw2aHHYioc0DYTvaVxxcyJjnUJs(ApiWrap$Message apiWrap$Message, Utilities.Callback2 callback2, Utilities.CallbackReturn callbackReturn, Utilities.Callback2 callback22, String str) {
        if (str == null) {
            str = "from";
        }
        long j = apiWrap$Message.fromId;
        if (j != 0) {
            callback2.run(str, (String) callbackReturn.run(Long.valueOf(j)));
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_peerUser.user_id = apiWrap$Message.fromId;
            callback22.run(str + "_id", tL_peerUser);
        }
    }

    public static /* synthetic */ void $r8$lambda$V1GPUI3Ji8IitWs016dE88zBqRg(ApiWrap$Message apiWrap$Message, Utilities.Callback2 callback2, String str) {
        int i = apiWrap$Message.replyToMsgId;
        if (i != 0) {
            callback2.run(str, Integer.valueOf(i));
            long j = apiWrap$Message.replyToPeerId;
            if (j != 0) {
                callback2.run("reply_to_peer_id", Long.valueOf(j));
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$qketphKXD6umlaSqbPSIj-rbZ8c, reason: not valid java name */
    public static /* synthetic */ void m2433$r8$lambda$qketphKXD6umlaSqbPSIjrbZ8c(Utilities.CallbackReturn callbackReturn, Utilities.Callback2 callback2, JsonContext jsonContext, ArrayList arrayList, String str) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            arrayList2.add(StringAllowNull(((ApiWrap$User) callbackReturn.run((Long) obj)).name()));
        }
        callback2.run(str, SerializeArray(jsonContext, arrayList2));
    }

    public static /* synthetic */ void $r8$lambda$j7sKj_P7pujVBJlz8XEZE23lUvo(Utilities.Callback2 callback2, ApiWrap$File apiWrap$File, String str, String str2) {
        String str3;
        boolean zIsEmpty = str2.isEmpty();
        String str4 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (zIsEmpty) {
            str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str3 = str2 + ' ';
        }
        int i = C10951.f288xd696c439[apiWrap$File.skipReason.ordinal()];
        if (i == 1) {
            str4 = str3 + "(File unavailable, please try again later)";
        } else if (i == 2) {
            str4 = str3 + "(File exceeds maximum size. Change data exporting settings to download.)";
        } else if (i == 3) {
            str4 = str3 + "(File not included. Change data exporting settings to download.)";
        } else if (i == 4) {
            str4 = apiWrap$File.relativePath;
        }
        callback2.run(str, str4);
    }

    /* JADX INFO: renamed from: $r8$lambda$0JEATGwgrDcrUlHLn-U4tlxdjgY, reason: not valid java name */
    public static /* synthetic */ void m2425$r8$lambda$0JEATGwgrDcrUlHLnU4tlxdjgY(Utilities.Callback3 callback3, Utilities.Callback2 callback2, ApiWrap$Image apiWrap$Image) {
        callback3.run(apiWrap$Image.file, "photo", _UrlKt.FRAGMENT_ENCODE_SET);
        int i = apiWrap$Image.width;
        if (i == 0 || apiWrap$Image.height == 0) {
            return;
        }
        callback2.run("width", Integer.valueOf(i));
        callback2.run("height", Integer.valueOf(apiWrap$Image.height));
    }

    public static String SerializeObject(JsonContext jsonContext, Pair... pairArr) {
        String strIndentation = Indentation(jsonContext);
        jsonContext.nesting.add(Boolean.TRUE);
        String str = '\n' + Indentation(jsonContext);
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        boolean z = true;
        for (Pair pair : pairArr) {
            String str2 = (String) pair.first;
            String strValueOf = String.valueOf(pair.second);
            if (!strValueOf.isEmpty()) {
                if (z) {
                    z = false;
                } else {
                    sb.append(',');
                }
                sb.append(str);
                sb.append(SerializeString(str2));
                sb.append(": ");
                sb.append(strValueOf);
            }
        }
        sb.append('\n');
        sb.append(strIndentation);
        sb.append("}");
        try {
            String string = sb.toString();
            ArrayList arrayList = jsonContext.nesting;
            arrayList.remove(arrayList.size() - 1);
            return string;
        } catch (Throwable th) {
            jsonContext.nesting.remove(jsonContext.nesting.size() - 1);
            throw th;
        }
    }

    public static String SerializeString(String str) {
        int i;
        String str2 = str + str.length();
        ArrayList arrayList = new ArrayList();
        for (char c : str.toCharArray()) {
            arrayList.add(Character.valueOf(c));
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Character ch = (Character) arrayList.get(i2);
            if (ch.charValue() == '\n') {
                sb.append("\\n");
            } else if (ch.charValue() == '\r') {
                sb.append("\\r");
            } else if (ch.charValue() == '\t') {
                sb.append("\\t");
            } else if (ch.charValue() == '\"') {
                sb.append("\\\"");
            } else if (ch.charValue() == '\\') {
                sb.append("\\\\");
            } else if (ch.charValue() >= 0 && ch.charValue() < ' ') {
                sb.append("\\x");
                sb.append((ch.charValue() >> 4) + 48);
                int iCharValue = ch.charValue() & 15;
                if (iCharValue >= 10) {
                    sb.append(iCharValue + 55);
                } else {
                    sb.append(iCharValue + 48);
                }
            } else if (ch.charValue() != 226 || (i = i2 + 2) >= str2.length() || i2 + 1 != 128) {
                sb.append(ch);
            } else if (i == 168) {
                sb.append("\\u2028");
            } else if (i == 169) {
                sb.append("\\u2029");
            } else {
                sb.append(ch);
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static String Indentation(JsonContext jsonContext) {
        return Indentation(jsonContext.nesting.size());
    }

    public static String Indentation(int i) {
        return HtmlContext$$ExternalSyntheticBackport0.m243m(" ", i);
    }

    public static String SerializeArray(JsonContext jsonContext, ArrayList arrayList) {
        String strIndentation = Indentation(jsonContext.nesting.size());
        StringBuilder sb = new StringBuilder();
        sb.append('\n');
        boolean z = true;
        sb.append(Indentation(jsonContext.nesting.size() + 1));
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            if (z) {
                z = false;
            } else {
                sb2.append(',');
            }
            sb2.append(string);
            sb2.append(str);
        }
        sb2.append('\n');
        sb2.append(strIndentation);
        sb2.append("]");
        return sb2.toString();
    }

    public static String StringAllowNull(String str) {
        return (str == null || str.isEmpty()) ? "null" : SerializeString(str);
    }

    public static String SerializeText(JsonContext jsonContext, ArrayList arrayList, boolean z) {
        String str;
        String strSerializeString;
        if (arrayList.isEmpty()) {
            return z ? _UrlKt.PATH_SEGMENT_ENCODE_SET_URI : SerializeString(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        jsonContext.nesting.add(Boolean.FALSE);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ApiWrap$TextPart apiWrap$TextPart = (ApiWrap$TextPart) obj;
            ApiWrap$TextPart.Type type = apiWrap$TextPart.type;
            if (type == ApiWrap$TextPart.Type.Text && !z) {
                arrayList2.add(SerializeString(apiWrap$TextPart.text));
            } else {
                switch (C10951.f290x9004fd8c[type.ordinal()]) {
                    case 1:
                        str = "unknown";
                        break;
                    case 2:
                        str = "mention";
                        break;
                    case 3:
                        str = "hashtag";
                        break;
                    case 4:
                        str = "bot_command";
                        break;
                    case 5:
                        str = "link";
                        break;
                    case 6:
                        str = "email";
                        break;
                    case 7:
                        str = "bold";
                        break;
                    case 8:
                        str = "italic";
                        break;
                    case 9:
                        str = "code";
                        break;
                    case 10:
                        str = "pre";
                        break;
                    case 11:
                        str = "plain";
                        break;
                    case 12:
                        str = "text_link";
                        break;
                    case 13:
                        str = "mention_name";
                        break;
                    case 14:
                        str = "phone";
                        break;
                    case 15:
                        str = "cashtag";
                        break;
                    case 16:
                        str = "underline";
                        break;
                    case 17:
                        str = "strikethrough";
                        break;
                    case 18:
                        str = "blockquote";
                        break;
                    case 19:
                        str = "bank_card";
                        break;
                    case 20:
                        str = "spoiler";
                        break;
                    case 21:
                        str = "custom_emoji";
                        break;
                    default:
                        throw new IllegalStateException("wtf is it? " + apiWrap$TextPart.text);
                }
                ApiWrap$TextPart.Type type2 = apiWrap$TextPart.type;
                if (type2 == ApiWrap$TextPart.Type.MentionName) {
                    strSerializeString = apiWrap$TextPart.additional;
                } else if (type2 == ApiWrap$TextPart.Type.Pre || type2 == ApiWrap$TextPart.Type.TextUrl || type2 == ApiWrap$TextPart.Type.CustomEmoji) {
                    strSerializeString = SerializeString(apiWrap$TextPart.additional);
                } else if (type2 == ApiWrap$TextPart.Type.Blockquote) {
                    strSerializeString = apiWrap$TextPart.additional.isEmpty() ? "false" : "true";
                } else {
                    strSerializeString = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                arrayList2.add(SerializeObject(jsonContext, new Pair("type", SerializeString(str)), new Pair("text", SerializeString(apiWrap$TextPart.text)), new Pair("additional", strSerializeString)));
            }
        }
        ArrayList arrayList3 = jsonContext.nesting;
        arrayList3.remove(arrayList3.size() - 1);
        if (!z && arrayList.size() == 1 && ((ApiWrap$TextPart) arrayList.get(0)).type == ApiWrap$TextPart.Type.Text) {
            return (String) arrayList2.get(0);
        }
        return SerializeArray(jsonContext, arrayList2);
    }

    public AbstractWriter.Result writeBlock(String str) {
        return this._file.writeBlock(str);
    }

    public String SerializeDialog(ApiWrap$DialogInfo apiWrap$DialogInfo, boolean z) {
        return Indentation(this) + SerializeObject(this, new Pair("name", SerializeString(apiWrap$DialogInfo.name)), new Pair("id", Long.valueOf(apiWrap$DialogInfo.peerId)), new Pair("relativePath", SerializeString(apiWrap$DialogInfo.relativePath)), new Pair("left", Boolean.valueOf(z)));
    }
}
