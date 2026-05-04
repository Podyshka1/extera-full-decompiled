package com.exteragram.messenger.export.api;

import android.text.TextUtils;
import android.util.Base64;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.ExportSettings;
import com.exteragram.messenger.export.api.ApiWrap$DialogInfo;
import com.exteragram.messenger.export.api.ApiWrap$File;
import com.exteragram.messenger.export.api.ApiWrap$HistoryMessageMarkupButton;
import com.exteragram.messenger.export.api.ApiWrap$Poll;
import com.exteragram.messenger.export.api.ApiWrap$TextPart;
import com.exteragram.messenger.export.output.FileManager;
import com.exteragram.messenger.export.output.html.HtmlContext;
import com.exteragram.messenger.export.output.html.HtmlWriter;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.function.Function;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_stories;
import org.webrtc.MediaStreamTrack;
import p022j$.util.Collection;
import p022j$.util.Comparator;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DataTypesUtils {
    public static ApiWrap$DialogInfo.Type DialogTypeFromChat(ApiWrap$Chat apiWrap$Chat) {
        if (apiWrap$Chat == null) {
            return ApiWrap$DialogInfo.Type.Unknown;
        }
        if (apiWrap$Chat.isMonoforum && !apiWrap$Chat.isMonoforumAdmin) {
            return ApiWrap$DialogInfo.Type.Personal;
        }
        boolean z = apiWrap$Chat.isMonoforumAdmin;
        if (z && apiWrap$Chat.isMonoforumOfPublicBroadcast) {
            return ApiWrap$DialogInfo.Type.PublicSupergroup;
        }
        if (z) {
            return ApiWrap$DialogInfo.Type.PrivateSupergroup;
        }
        if (apiWrap$Chat.username.isEmpty()) {
            if (apiWrap$Chat.isBroadcast) {
                return ApiWrap$DialogInfo.Type.PrivateChannel;
            }
            if (apiWrap$Chat.isSupergroup) {
                return ApiWrap$DialogInfo.Type.PrivateSupergroup;
            }
            return ApiWrap$DialogInfo.Type.PrivateGroup;
        }
        if (apiWrap$Chat.isBroadcast) {
            return ApiWrap$DialogInfo.Type.PublicChannel;
        }
        return ApiWrap$DialogInfo.Type.PublicSupergroup;
    }

    public static ApiWrap$DialogInfo.Type DialogTypeFromUser(ApiWrap$User apiWrap$User) {
        if (apiWrap$User.isSelf) {
            return ApiWrap$DialogInfo.Type.Self;
        }
        if (apiWrap$User.isReplies) {
            return ApiWrap$DialogInfo.Type.Replies;
        }
        if (apiWrap$User.isVerifyCodes) {
            return ApiWrap$DialogInfo.Type.VerifyCodes;
        }
        if (apiWrap$User.isBot) {
            return ApiWrap$DialogInfo.Type.Bot;
        }
        return ApiWrap$DialogInfo.Type.Personal;
    }

    public static ArrayList ParseText(String str, ArrayList arrayList) {
        int i;
        String strValueOf;
        int length = str.length();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) obj;
            int i4 = messageEntity.offset;
            int i5 = messageEntity.length;
            if (i4 >= i2 && i5 > 0 && (i = i5 + i4) <= length) {
                addTextPart(i4, i2, str, arrayList2);
                ApiWrap$TextPart apiWrap$TextPart = new ApiWrap$TextPart();
                ApiWrap$TextPart.Type type = ApiWrap$TextPart.Type.Unknown;
                if (messageEntity instanceof TLRPC.TL_messageEntityMention) {
                    type = ApiWrap$TextPart.Type.Mention;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityHashtag) {
                    type = ApiWrap$TextPart.Type.Hashtag;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityBotCommand) {
                    type = ApiWrap$TextPart.Type.BotCommand;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityUrl) {
                    type = ApiWrap$TextPart.Type.Url;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityEmail) {
                    type = ApiWrap$TextPart.Type.Email;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                    type = ApiWrap$TextPart.Type.Bold;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                    type = ApiWrap$TextPart.Type.Italic;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityCode) {
                    type = ApiWrap$TextPart.Type.Code;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityPre) {
                    type = ApiWrap$TextPart.Type.Pre;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                    type = ApiWrap$TextPart.Type.TextUrl;
                } else if ((messageEntity instanceof TLRPC.TL_messageEntityMentionName) || (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName)) {
                    type = ApiWrap$TextPart.Type.MentionName;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityPhone) {
                    type = ApiWrap$TextPart.Type.Phone;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityCashtag) {
                    type = ApiWrap$TextPart.Type.Cashtag;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                    type = ApiWrap$TextPart.Type.Underline;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                    type = ApiWrap$TextPart.Type.Strike;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityBlockquote) {
                    type = ApiWrap$TextPart.Type.Blockquote;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityBankCard) {
                    type = ApiWrap$TextPart.Type.BankCard;
                } else if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                    type = ApiWrap$TextPart.Type.Spoiler;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                    type = ApiWrap$TextPart.Type.CustomEmoji;
                }
                apiWrap$TextPart.type = type;
                apiWrap$TextPart.text = str.substring(i4, i);
                if (messageEntity instanceof TLRPC.TL_messageEntityPre) {
                    strValueOf = ((TLRPC.TL_messageEntityPre) messageEntity).language;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                    strValueOf = ((TLRPC.TL_messageEntityTextUrl) messageEntity).url;
                } else if (messageEntity instanceof TLRPC.TL_messageEntityMentionName) {
                    strValueOf = String.valueOf(((TLRPC.TL_messageEntityMentionName) messageEntity).user_id);
                } else if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                    strValueOf = String.valueOf(((TLRPC.TL_messageEntityCustomEmoji) messageEntity).document_id);
                } else {
                    strValueOf = ((messageEntity instanceof TLRPC.TL_messageEntityBlockquote) && ((TLRPC.TL_messageEntityBlockquote) messageEntity).collapsed) ? "1" : _UrlKt.FRAGMENT_ENCODE_SET;
                }
                apiWrap$TextPart.additional = strValueOf;
                arrayList2.add(apiWrap$TextPart);
                i2 = i;
            }
        }
        addTextPart(length, i2, str, arrayList2);
        return arrayList2;
    }

    private static void addTextPart(int i, int i2, String str, ArrayList arrayList) {
        if (i > i2) {
            ApiWrap$TextPart apiWrap$TextPart = new ApiWrap$TextPart();
            apiWrap$TextPart.text = str.substring(i2, i);
            arrayList.add(apiWrap$TextPart);
        }
    }

    public static int SettingsFromDialogsType(ApiWrap$DialogInfo.Type type) {
        switch (C10882.f279x410af476[type.ordinal()]) {
            case 1:
            case 2:
                return 32;
            case 3:
                return 64;
            case 4:
            case 5:
                return 128;
            case 6:
                return 256;
            case 7:
                return 512;
            case 8:
                return 1024;
            default:
                return 0;
        }
    }

    public static boolean AddMigrateFromSlice(ApiWrap$DialogInfo apiWrap$DialogInfo, ApiWrap$DialogInfo apiWrap$DialogInfo2, int i, int i2) {
        TLRPC.InputPeer inputPeer = apiWrap$DialogInfo.migratedFromInput;
        if (!(inputPeer instanceof TLRPC.TL_inputPeerEmpty) && (!(inputPeer instanceof TLRPC.TL_inputPeerChat) || apiWrap$DialogInfo2.peerId != ((TLRPC.TL_inputPeerChat) inputPeer).chat_id)) {
            return false;
        }
        for (int i3 = 0; i3 != apiWrap$DialogInfo2.splits.size(); i3++) {
            apiWrap$DialogInfo.splits.add(Integer.valueOf(((Integer) apiWrap$DialogInfo2.splits.get(i3)).intValue() - i2));
            apiWrap$DialogInfo.messagesCountPerSplit.add((Integer) apiWrap$DialogInfo2.messagesCountPerSplit.get(i3));
        }
        apiWrap$DialogInfo.migratedFromInput = apiWrap$DialogInfo2.input;
        apiWrap$DialogInfo.splits.add(Integer.valueOf(i - i2));
        apiWrap$DialogInfo.messagesCountPerSplit.add(0);
        return true;
    }

    public static ApiWrap$ExportPersonalInfo ParsePersonalInfo(TLRPC.TL_users_userFull tL_users_userFull) {
        String str;
        ApiWrap$ExportPersonalInfo apiWrap$ExportPersonalInfo = new ApiWrap$ExportPersonalInfo();
        apiWrap$ExportPersonalInfo.user = ParseUser((TLRPC.User) tL_users_userFull.users.get(0));
        TLRPC.UserFull userFull = tL_users_userFull.full_user;
        if ((userFull instanceof TLRPC.TL_userFull) && (str = ((TLRPC.TL_userFull) userFull).about) != null) {
            apiWrap$ExportPersonalInfo.bio = str;
        }
        return apiWrap$ExportPersonalInfo;
    }

    public static ApiWrap$DialogsInfo ParseLeftChannelsInfo(TLRPC.messages_Chats messages_chats) {
        ApiWrap$DialogsInfo apiWrap$DialogsInfo = new ApiWrap$DialogsInfo();
        ArrayList arrayList = messages_chats.chats;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ApiWrap$DialogInfo apiWrap$DialogInfoDialogInfoFromChat = DialogInfoFromChat(ParseChat((TLRPC.Chat) obj));
            apiWrap$DialogInfoDialogInfoFromChat.isLeftChannel = true;
            apiWrap$DialogsInfo.left.add(apiWrap$DialogInfoDialogInfoFromChat);
        }
        return apiWrap$DialogsInfo;
    }

    public static ApiWrap$DialogInfo DialogInfoFromUser(ApiWrap$User apiWrap$User) {
        ApiWrap$DialogInfo apiWrap$DialogInfo = new ApiWrap$DialogInfo();
        TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
        apiWrap$DialogInfo.input = tL_inputPeerUser;
        TLRPC.InputUser inputUser = apiWrap$User.input;
        tL_inputPeerUser.user_id = inputUser.user_id;
        tL_inputPeerUser.access_hash = inputUser.access_hash;
        ApiWrap$ContactInfo apiWrap$ContactInfo = apiWrap$User.info;
        apiWrap$DialogInfo.name = apiWrap$ContactInfo.firstName;
        apiWrap$DialogInfo.lastName = apiWrap$ContactInfo.lastName;
        apiWrap$DialogInfo.peerId = apiWrap$User.f277id.longValue();
        apiWrap$DialogInfo.topMessageDate = 0;
        apiWrap$DialogInfo.topMessageId = 0;
        apiWrap$DialogInfo.type = DialogTypeFromUser(apiWrap$User);
        apiWrap$DialogInfo.isLeftChannel = false;
        return apiWrap$DialogInfo;
    }

    public static ApiWrap$DialogInfo DialogInfoFromChat(ApiWrap$Chat apiWrap$Chat) {
        ApiWrap$DialogInfo apiWrap$DialogInfo = new ApiWrap$DialogInfo();
        apiWrap$DialogInfo.input = apiWrap$Chat.input;
        apiWrap$DialogInfo.name = apiWrap$Chat.title;
        apiWrap$DialogInfo.peerId = apiWrap$Chat.bareId;
        apiWrap$DialogInfo.topMessageDate = 0;
        apiWrap$DialogInfo.topMessageId = 0;
        apiWrap$DialogInfo.type = DialogTypeFromChat(apiWrap$Chat);
        apiWrap$DialogInfo.migratedToChannelId = apiWrap$Chat.migratedToChannelId;
        apiWrap$DialogInfo.isMonoforum = apiWrap$Chat.isMonoforum;
        if (apiWrap$Chat.isMonoforumAdmin) {
            apiWrap$DialogInfo.monoforumBroadcastInput = apiWrap$Chat.monoforumBroadcastInput;
        }
        return apiWrap$DialogInfo;
    }

    public static ApiWrap$Chat ParseChat(TLRPC.Chat chat) {
        int iPeerColorIndex;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        ApiWrap$Chat apiWrap$Chat = new ApiWrap$Chat();
        if (chat instanceof TLRPC.TL_chat) {
            TLRPC.TL_chat tL_chat = (TLRPC.TL_chat) chat;
            apiWrap$Chat.bareId = tL_chat.f1660id;
            apiWrap$Chat.title = tL_chat.title;
            TLRPC.TL_inputPeerChat tL_inputPeerChat = new TLRPC.TL_inputPeerChat();
            apiWrap$Chat.input = tL_inputPeerChat;
            tL_inputPeerChat.chat_id = apiWrap$Chat.bareId;
            TLRPC.InputChannel inputChannel = tL_chat.migrated_to;
            if (inputChannel instanceof TLRPC.TL_inputChannel) {
                apiWrap$Chat.migratedToChannelId = ((TLRPC.TL_inputChannel) inputChannel).channel_id;
                return apiWrap$Chat;
            }
        } else {
            if (chat instanceof TLRPC.TL_chatEmpty) {
                TLRPC.TL_chatEmpty tL_chatEmpty = (TLRPC.TL_chatEmpty) chat;
                apiWrap$Chat.bareId = tL_chatEmpty.f1660id;
                TLRPC.TL_inputPeerChat tL_inputPeerChat2 = new TLRPC.TL_inputPeerChat();
                apiWrap$Chat.input = tL_inputPeerChat2;
                tL_inputPeerChat2.chat_id = tL_chatEmpty.f1660id;
                return apiWrap$Chat;
            }
            if (chat instanceof TLRPC.TL_chatForbidden) {
                TLRPC.TL_chatForbidden tL_chatForbidden = (TLRPC.TL_chatForbidden) chat;
                apiWrap$Chat.bareId = tL_chatForbidden.f1660id;
                apiWrap$Chat.title = tL_chatForbidden.title;
                TLRPC.TL_inputPeerChat tL_inputPeerChat3 = new TLRPC.TL_inputPeerChat();
                apiWrap$Chat.input = tL_inputPeerChat3;
                tL_inputPeerChat3.chat_id = tL_chatForbidden.f1660id;
                return apiWrap$Chat;
            }
            if (chat instanceof TLRPC.TL_channel) {
                TLRPC.TL_channel tL_channel = (TLRPC.TL_channel) chat;
                long j = tL_channel.f1660id;
                apiWrap$Chat.bareId = j;
                TLRPC.PeerColor peerColor = tL_channel.color;
                if (peerColor == null || (iPeerColorIndex = peerColor.color) == 0) {
                    iPeerColorIndex = PeerColorIndex(j);
                }
                apiWrap$Chat.colorIndex = iPeerColorIndex;
                apiWrap$Chat.isMonoforum = tL_channel.monoforum;
                boolean z = tL_channel.broadcast;
                apiWrap$Chat.isBroadcast = z;
                apiWrap$Chat.isSupergroup = tL_channel.megagroup;
                apiWrap$Chat.hasMonoforumAdminRights = z && (chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.manage_direct_messages));
                apiWrap$Chat.monoforumLinkId = chat.linked_monoforum_id;
                apiWrap$Chat.title = tL_channel.title;
                String str = tL_channel.username;
                if (str != null && !str.isEmpty()) {
                    apiWrap$Chat.username = tL_channel.username;
                }
                TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
                apiWrap$Chat.input = tL_inputPeerChannel;
                tL_inputPeerChannel.channel_id = tL_channel.f1660id;
                tL_inputPeerChannel.access_hash = tL_channel.access_hash;
                return apiWrap$Chat;
            }
            if (chat instanceof TLRPC.TL_channelForbidden) {
                TLRPC.TL_channelForbidden tL_channelForbidden = (TLRPC.TL_channelForbidden) chat;
                apiWrap$Chat.bareId = tL_channelForbidden.f1660id;
                apiWrap$Chat.isBroadcast = tL_channelForbidden.broadcast;
                apiWrap$Chat.isSupergroup = tL_channelForbidden.megagroup;
                apiWrap$Chat.title = tL_channelForbidden.title;
                TLRPC.TL_inputPeerChannel tL_inputPeerChannel2 = new TLRPC.TL_inputPeerChannel();
                apiWrap$Chat.input = tL_inputPeerChannel2;
                tL_inputPeerChannel2.channel_id = tL_channelForbidden.f1660id;
                tL_inputPeerChannel2.access_hash = tL_channelForbidden.access_hash;
            }
        }
        return apiWrap$Chat;
    }

    public static int PeerColorIndex(long j) {
        return ((int) j) % 7;
    }

    public static long StringBarePeerId(String str) {
        Long lValueOf = 255L;
        for (int i = 0; i < str.length(); i++) {
            lValueOf = Long.valueOf(((lValueOf.longValue() * 239) + ((long) str.charAt(i))) & 255);
        }
        return lValueOf.longValue();
    }

    public static void FinalizeDialogsInfo(ApiWrap$DialogsInfo apiWrap$DialogsInfo, ExportSettings exportSettings) {
        String str;
        ArrayList arrayList = apiWrap$DialogsInfo.chats;
        ArrayList arrayList2 = apiWrap$DialogsInfo.left;
        int i = 0;
        int length = NumberToString(String.valueOf((arrayList.size() + arrayList2.size()) - 1), 0, '0').length();
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ApiWrap$DialogInfo apiWrap$DialogInfo = (ApiWrap$DialogInfo) obj;
            i2++;
            String strNumberToString = NumberToString(String.valueOf(i2), length, '0');
            if (exportSettings.onlySinglePeer()) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str = "chats/chat_" + strNumberToString + '/';
            }
            apiWrap$DialogInfo.relativePath = str;
            ApiWrap$DialogInfo.Type type = apiWrap$DialogInfo.type;
            apiWrap$DialogInfo.onlyMyMessages = (type == ApiWrap$DialogInfo.Type.Personal || (SettingsFromDialogsType(type) & 96) == SettingsFromDialogsType(apiWrap$DialogInfo.type)) ? false : true;
            Collections.sort(apiWrap$DialogInfo.splits);
        }
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj2 = arrayList2.get(i);
            i++;
            ApiWrap$DialogInfo apiWrap$DialogInfo2 = (ApiWrap$DialogInfo) obj2;
            i2++;
            apiWrap$DialogInfo2.relativePath = "chats/chat_" + NumberToString(String.valueOf(i2), length, '0') + "/";
            apiWrap$DialogInfo2.onlyMyMessages = true;
        }
    }

    public static String NumberToString(long j) {
        return NumberToString(j + _UrlKt.FRAGMENT_ENCODE_SET, 0, '0');
    }

    public static String NumberToString(int i) {
        return NumberToString(i + _UrlKt.FRAGMENT_ENCODE_SET, 0, '0');
    }

    public static String NumberToString(String str, int i, char c) {
        return FillLeft(str, i, c).replace(',', '.');
    }

    private static String FillLeft(String str, int i, char c) {
        if (i <= str.length()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int length = i - str.length();
        for (int i2 = 0; i2 != length; i2++) {
            sb.append(c);
        }
        sb.append(str);
        return sb.toString();
    }

    public static String TypeString(ApiWrap$DialogInfo.Type type) {
        switch (C10882.f279x410af476[type.ordinal()]) {
            case 1:
            case 2:
            case 10:
            case 11:
                return "private";
            case 3:
                return "bot";
            case 4:
            case 5:
            case 6:
                return "group";
            case 7:
            case 8:
                return "channel";
            case 9:
                return "unknown";
            default:
                throw new IncompatibleClassChangeError();
        }
    }

    public static String DeletedString(ApiWrap$DialogInfo.Type type) {
        switch (C10882.f279x410af476[type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 9:
            case 10:
            case 11:
                return "Deleted Account";
            case 4:
            case 5:
            case 6:
                return "Deleted Group";
            case 7:
            case 8:
                return "Deleted Channel";
            default:
                throw new IncompatibleClassChangeError();
        }
    }

    public static String CountString(int i, boolean z) {
        if (i == 1) {
            return z ? "1 outgoing message" : "1 message";
        }
        if (i == 0) {
            return z ? "No outgoing messages" : "No messages";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(NumberToString(String.valueOf(i), 0, ' '));
        sb.append(z ? " outgoing messages" : " messages");
        return sb.toString();
    }

    public static boolean SingleMessageAfter(TLRPC.messages_Messages messages_messages, int i) {
        int iSingleMessageDate = SingleMessageDate(messages_messages);
        return iSingleMessageDate > 0 && iSingleMessageDate > i;
    }

    public static int SingleMessageDate(TLRPC.messages_Messages messages_messages) {
        if (messages_messages instanceof TLRPC.TL_messages_messagesNotModified) {
            return 0;
        }
        ArrayList arrayList = messages_messages.messages;
        if (arrayList.isEmpty() || (arrayList.get(0) instanceof TLRPC.TL_messageEmpty)) {
            return 0;
        }
        return ((TLRPC.Message) arrayList.get(0)).date;
    }

    public static ApiWrap$Message ParseMessage(ApiWrap$ParseMediaContext apiWrap$ParseMediaContext, TLRPC.Message message, String str) {
        TLRPC.TL_messageReplyHeader tL_messageReplyHeader;
        int i;
        TLRPC.TL_messageReplyHeader tL_messageReplyHeader2;
        int i2;
        ApiWrap$Message apiWrap$Message = new ApiWrap$Message();
        apiWrap$Message.f273id = message.f1686id;
        if (!(message instanceof TLRPC.TL_messageEmpty)) {
            apiWrap$Message.date = message.date;
            apiWrap$Message.out = message.out;
            apiWrap$Message.selfId = apiWrap$ParseMediaContext.selfPeerId;
            long peerId = MessageObject.getPeerId(message.peer_id);
            apiWrap$Message.peerId = peerId;
            TLRPC.Peer peer = message.from_id;
            if (peer != null) {
                apiWrap$Message.fromId = MessageObject.getPeerId(peer);
            } else {
                apiWrap$Message.fromId = peerId;
            }
            TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
            if (messageReplyHeader != null && (messageReplyHeader instanceof TLRPC.TL_messageReplyHeader) && (i2 = (tL_messageReplyHeader2 = (TLRPC.TL_messageReplyHeader) messageReplyHeader).reply_to_msg_id) != 0) {
                apiWrap$Message.replyToMsgId = i2;
                TLRPC.Peer peer2 = tL_messageReplyHeader2.reply_to_peer_id;
                long peerId2 = peer2 != null ? MessageObject.getPeerId(peer2) : 0L;
                apiWrap$Message.replyToPeerId = peerId2;
                if (peerId2 == apiWrap$Message.peerId) {
                    apiWrap$Message.replyToPeerId = 0L;
                }
            }
        }
        if (message instanceof TLRPC.TL_message) {
            TLRPC.TL_message tL_message = (TLRPC.TL_message) message;
            TLRPC.MessageFwdHeader messageFwdHeader = tL_message.fwd_from;
            if (messageFwdHeader instanceof TLRPC.TL_messageFwdHeader) {
                TLRPC.TL_messageFwdHeader tL_messageFwdHeader = (TLRPC.TL_messageFwdHeader) messageFwdHeader;
                String str2 = tL_messageFwdHeader.from_name;
                String str3 = (str2 == null || str2.isEmpty()) ? _UrlKt.FRAGMENT_ENCODE_SET : tL_messageFwdHeader.from_name;
                boolean z = (MessageObject.getPeerId(tL_messageFwdHeader.from_id) == 0 && str3.isEmpty()) ? false : true;
                apiWrap$Message.forwarded = z;
                apiWrap$Message.forwardedDate = tL_messageFwdHeader.date;
                apiWrap$Message.showForwardedAsOriginal = z && MessageObject.getPeerId(tL_messageFwdHeader.saved_from_id) != 0;
                apiWrap$Message.savedFromChatId = MessageObject.getPeerId(tL_messageFwdHeader.saved_from_id);
                apiWrap$Message.forwardedFromName = str3;
            }
            String str4 = message.post_author;
            if (str4 != null) {
                apiWrap$Message.signature = str4;
            }
            TLRPC.MessageReplyHeader messageReplyHeader2 = message.reply_to;
            if (messageReplyHeader2 != null && (messageReplyHeader2 instanceof TLRPC.TL_messageReplyHeader) && (i = (tL_messageReplyHeader = (TLRPC.TL_messageReplyHeader) messageReplyHeader2).reply_to_msg_id) != 0) {
                apiWrap$Message.replyToMsgId = i;
                TLRPC.Peer peer3 = tL_messageReplyHeader.reply_to_peer_id;
                apiWrap$Message.replyToPeerId = peer3 != null ? MessageObject.getPeerId(peer3) : 0L;
            }
            long j = tL_message.via_bot_id;
            if (j != 0) {
                apiWrap$Message.viaBotId = j;
            }
            TLRPC.MessageMedia messageMedia = tL_message.media;
            if (messageMedia != null) {
                apiWrap$Message.media = ParseMedia(apiWrap$ParseMediaContext, messageMedia, str, apiWrap$Message.date);
            }
            TLRPC.ReplyMarkup replyMarkup = tL_message.reply_markup;
            if (replyMarkup != null && (replyMarkup instanceof TLRPC.TL_replyKeyboardMarkup)) {
                apiWrap$Message.inlineButtonRows = ButtonRowsFromTL((TLRPC.TL_replyKeyboardMarkup) replyMarkup);
            }
            apiWrap$Message.text = ParseText(tL_message.message, tL_message.entities);
            return apiWrap$Message;
        }
        if (message instanceof TLRPC.TL_messageService) {
            TLRPC.TL_messageService tL_messageService = (TLRPC.TL_messageService) message;
            TLRPC.MessageAction messageAction = tL_messageService.action;
            if (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                TLRPC.Photo photo = ((TLRPC.TL_messageActionSuggestProfilePhoto) messageAction).photo;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("photos/");
                int i3 = apiWrap$ParseMediaContext.photos + 1;
                apiWrap$ParseMediaContext.photos = i3;
                sb.append(PreparePhotoFileName(i3, message.date));
                apiWrap$Message.parsedAction = new ApiWrap$ActionSuggestProfilePhoto(ParsePhoto(photo, sb.toString()));
            } else if (messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) {
                TLRPC.Photo photo2 = ((TLRPC.TL_messageActionChatEditPhoto) messageAction).photo;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("photos/");
                int i4 = apiWrap$ParseMediaContext.photos + 1;
                apiWrap$ParseMediaContext.photos = i4;
                sb2.append(PreparePhotoFileName(i4, message.date));
                apiWrap$Message.parsedAction = new ApiWrap$ActionChatEditPhoto(ParsePhoto(photo2, sb2.toString()));
            }
            TLRPC.MessageAction messageAction2 = tL_messageService.action;
            if (messageAction2 != null) {
                apiWrap$Message.action = messageAction2;
            }
        }
        return apiWrap$Message;
    }

    private static ApiWrap$Media ParseMedia(ApiWrap$ParseMediaContext apiWrap$ParseMediaContext, TLRPC.MessageMedia messageMedia, String str, int i) {
        boolean z;
        int i2;
        TLRPC.TL_pollResults tL_pollResults;
        ArrayList arrayList;
        ApiWrap$Document apiWrap$Document;
        HtmlWriter.Photo photo;
        ApiWrap$Media apiWrap$Media = new ApiWrap$Media();
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            TLRPC.Photo photo2 = ((TLRPC.TL_messageMediaPhoto) messageMedia).photo;
            if (photo2 != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("photos/");
                int i3 = apiWrap$ParseMediaContext.photos + 1;
                apiWrap$ParseMediaContext.photos = i3;
                sb.append(PreparePhotoFileName(i3, i));
                photo = ParsePhoto(photo2, sb.toString());
            } else {
                photo = new HtmlWriter.Photo();
            }
            photo.spoilered = messageMedia.spoiler;
            int i4 = messageMedia.ttl_seconds;
            if (i4 != 0) {
                apiWrap$Media.ttl = i4;
                photo.image.file = new ApiWrap$File();
            }
            apiWrap$Media.content = photo;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGeo) {
            apiWrap$Media.content = parseGeoPoint(((TLRPC.TL_messageMediaGeo) messageMedia).geo);
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
            TLRPC.TL_messageMediaContact tL_messageMediaContact = (TLRPC.TL_messageMediaContact) messageMedia;
            ApiWrap$SharedContact apiWrap$SharedContact = new ApiWrap$SharedContact();
            apiWrap$SharedContact.info.userId = Long.valueOf(tL_messageMediaContact.user_id);
            ApiWrap$ContactInfo apiWrap$ContactInfo = apiWrap$SharedContact.info;
            apiWrap$ContactInfo.firstName = messageMedia.first_name;
            apiWrap$ContactInfo.lastName = messageMedia.last_name;
            apiWrap$ContactInfo.phoneNumber = messageMedia.phone_number;
            String str2 = tL_messageMediaContact.vcard;
            if (str2 != null && !str2.isEmpty()) {
                ApiWrap$File apiWrap$File = new ApiWrap$File();
                apiWrap$SharedContact.vcard = apiWrap$File;
                apiWrap$File.content = tL_messageMediaContact.vcard.getBytes(StandardCharsets.UTF_8);
                apiWrap$SharedContact.vcard.size = tL_messageMediaContact.vcard.length();
                ApiWrap$File apiWrap$File2 = apiWrap$SharedContact.vcard;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("contacts/contact_");
                int i5 = apiWrap$ParseMediaContext.contacts + 1;
                apiWrap$ParseMediaContext.contacts = i5;
                sb2.append(i5);
                sb2.append(".vcard");
                apiWrap$File2.suggestedPath = sb2.toString();
            }
            apiWrap$Media.content = apiWrap$SharedContact;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaUnsupported) {
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.TL_messageMediaDocument tL_messageMediaDocument = (TLRPC.TL_messageMediaDocument) messageMedia;
            TLRPC.Document document = tL_messageMediaDocument.document;
            if (document != null) {
                apiWrap$Document = ParseDocument(apiWrap$ParseMediaContext, document, str, i);
            } else {
                apiWrap$Document = new ApiWrap$Document();
            }
            int i6 = tL_messageMediaDocument.ttl_seconds;
            if (i6 != 0) {
                apiWrap$Media.ttl = i6;
                apiWrap$Document.file = new ApiWrap$File();
            }
            apiWrap$Document.spoilered = tL_messageMediaDocument.spoiler;
            apiWrap$Media.content = apiWrap$Document;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaVenue) {
            TLRPC.TL_messageMediaVenue tL_messageMediaVenue = (TLRPC.TL_messageMediaVenue) messageMedia;
            ApiWrap$Venue apiWrap$Venue = new ApiWrap$Venue();
            apiWrap$Venue.point = parseGeoPoint(tL_messageMediaVenue.geo);
            apiWrap$Venue.title = tL_messageMediaVenue.title;
            apiWrap$Venue.address = tL_messageMediaVenue.address;
            apiWrap$Media.content = apiWrap$Venue;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
            ApiWrap$Game apiWrap$Game = new ApiWrap$Game();
            TLRPC.TL_game tL_game = ((TLRPC.TL_messageMediaGame) messageMedia).game;
            if (tL_game != null) {
                apiWrap$Game.f272id = tL_game.f1722id;
                apiWrap$Game.title = tL_game.title;
                apiWrap$Game.description = tL_game.description;
                apiWrap$Game.shortName = tL_game.short_name;
                apiWrap$Game.botId = apiWrap$ParseMediaContext.botId;
            }
            apiWrap$Media.content = apiWrap$Game;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
            TLRPC.TL_messageMediaInvoice tL_messageMediaInvoice = (TLRPC.TL_messageMediaInvoice) messageMedia;
            ApiWrap$Invoice apiWrap$Invoice = new ApiWrap$Invoice();
            apiWrap$Invoice.title = tL_messageMediaInvoice.title;
            apiWrap$Invoice.description = tL_messageMediaInvoice.description;
            apiWrap$Invoice.currency = tL_messageMediaInvoice.currency;
            apiWrap$Invoice.amount = tL_messageMediaInvoice.total_amount;
            int i7 = tL_messageMediaInvoice.receipt_msg_id;
            if (i7 != 0) {
                apiWrap$Invoice.receiptMsgId = i7;
            }
            apiWrap$Media.content = apiWrap$Invoice;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
            TLRPC.TL_messageMediaGeoLive tL_messageMediaGeoLive = (TLRPC.TL_messageMediaGeoLive) messageMedia;
            apiWrap$Media.content = parseGeoPoint(tL_messageMediaGeoLive.geo);
            apiWrap$Media.ttl = tL_messageMediaGeoLive.period;
            return apiWrap$Media;
        }
        int i8 = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
            TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
            ApiWrap$Poll apiWrap$Poll = new ApiWrap$Poll();
            TLRPC.Poll poll = tL_messageMediaPoll.poll;
            if (poll instanceof TLRPC.TL_poll) {
                TLRPC.TL_poll tL_poll = (TLRPC.TL_poll) poll;
                apiWrap$Poll.f274id = tL_poll.f1695id;
                apiWrap$Poll.question = tL_poll.question.text;
                apiWrap$Poll.closed = tL_poll.closed;
                HashMap map = new HashMap();
                TLRPC.PollResults pollResults = tL_messageMediaPoll.results;
                if ((pollResults instanceof TLRPC.TL_pollResults) && (arrayList = (tL_pollResults = (TLRPC.TL_pollResults) pollResults).results) != null) {
                    apiWrap$Poll.totalVotes = tL_pollResults.total_voters;
                    int size = arrayList.size();
                    int i9 = 0;
                    while (i9 < size) {
                        Object obj = arrayList.get(i9);
                        i9++;
                        TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters = (TLRPC.TL_pollAnswerVoters) obj;
                        map.put(Base64.encodeToString(tL_pollAnswerVoters.option, 0), tL_pollAnswerVoters);
                    }
                }
                ArrayList arrayList2 = tL_poll.answers;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj2 = arrayList2.get(i10);
                    i10++;
                    TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) obj2;
                    if (pollAnswer instanceof TLRPC.TL_pollAnswer) {
                        TLRPC.TL_pollAnswer tL_pollAnswer = (TLRPC.TL_pollAnswer) pollAnswer;
                        String str3 = tL_pollAnswer.text.text;
                        byte[] bArr = tL_pollAnswer.option;
                        TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters2 = (TLRPC.TL_pollAnswerVoters) map.get(Base64.encodeToString(bArr, 0));
                        if (tL_pollAnswerVoters2 != null) {
                            i2 = tL_pollAnswerVoters2.voters;
                            z = tL_pollAnswerVoters2.chosen;
                        } else {
                            z = false;
                            i2 = 0;
                        }
                        apiWrap$Poll.answers.add(new ApiWrap$Poll.Answer(str3, bArr, i2, z));
                    }
                }
            }
            apiWrap$Media.content = apiWrap$Poll;
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
            apiWrap$Media.content = parseGiveaway((TLRPC.TL_messageMediaGiveaway) messageMedia);
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            apiWrap$Media.content = parseGiveaway((TLRPC.TL_messageMediaGiveawayResults) messageMedia);
            return apiWrap$Media;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            ApiWrap$PaidMedia apiWrap$PaidMedia = new ApiWrap$PaidMedia();
            apiWrap$PaidMedia.stars = tL_messageMediaPaidMedia.stars_amount;
            ArrayList<TLRPC.MessageExtendedMedia> arrayList3 = tL_messageMediaPaidMedia.extended_media;
            int size3 = arrayList3.size();
            while (i8 < size3) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = arrayList3.get(i8);
                i8++;
                TLRPC.MessageExtendedMedia messageExtendedMedia2 = messageExtendedMedia;
                if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMediaPreview) {
                    apiWrap$PaidMedia.extended.add(new ApiWrap$Media());
                } else if (messageExtendedMedia2 instanceof TLRPC.TL_messageExtendedMedia) {
                    apiWrap$PaidMedia.extended.add(ParseMedia(apiWrap$ParseMediaContext, ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia2).media, str, i));
                }
            }
            apiWrap$Media.content = apiWrap$PaidMedia;
        }
        return apiWrap$Media;
    }

    private static ApiWrap$GiveawayStart parseGiveaway(TLRPC.TL_messageMediaGiveaway tL_messageMediaGiveaway) {
        ApiWrap$GiveawayStart apiWrap$GiveawayStart = new ApiWrap$GiveawayStart(tL_messageMediaGiveaway.until_date, tL_messageMediaGiveaway.stars, tL_messageMediaGiveaway.quantity, tL_messageMediaGiveaway.months, !tL_messageMediaGiveaway.only_new_subscribers);
        apiWrap$GiveawayStart.channels.addAll(tL_messageMediaGiveaway.channels);
        if (!tL_messageMediaGiveaway.countries_iso2.isEmpty()) {
            apiWrap$GiveawayStart.countries.addAll(tL_messageMediaGiveaway.countries_iso2);
        }
        String str = tL_messageMediaGiveaway.prize_description;
        if (str != null && !str.isEmpty()) {
            apiWrap$GiveawayStart.additionalPrize = tL_messageMediaGiveaway.prize_description;
        }
        return apiWrap$GiveawayStart;
    }

    private static ApiWrap$GiveawayResults parseGiveaway(TLRPC.TL_messageMediaGiveawayResults tL_messageMediaGiveawayResults) {
        ApiWrap$GiveawayResults apiWrap$GiveawayResults = new ApiWrap$GiveawayResults(tL_messageMediaGiveawayResults.channel_id, tL_messageMediaGiveawayResults.until_date, tL_messageMediaGiveawayResults.launch_msg_id, tL_messageMediaGiveawayResults.additional_peers_count, tL_messageMediaGiveawayResults.winners_count, tL_messageMediaGiveawayResults.unclaimed_count, tL_messageMediaGiveawayResults.months, tL_messageMediaGiveawayResults.stars, tL_messageMediaGiveawayResults.refunded, tL_messageMediaGiveawayResults.only_new_subscribers);
        apiWrap$GiveawayResults.winners.addAll(tL_messageMediaGiveawayResults.winners);
        String str = tL_messageMediaGiveawayResults.prize_description;
        if (str != null && !str.isEmpty()) {
            apiWrap$GiveawayResults.additionalPrize = tL_messageMediaGiveawayResults.prize_description;
        }
        return apiWrap$GiveawayResults;
    }

    private static ApiWrap$GeoPoint parseGeoPoint(TLRPC.GeoPoint geoPoint) {
        ApiWrap$GeoPoint apiWrap$GeoPoint = new ApiWrap$GeoPoint();
        if (geoPoint instanceof TLRPC.TL_geoPoint) {
            TLRPC.TL_geoPoint tL_geoPoint = (TLRPC.TL_geoPoint) geoPoint;
            apiWrap$GeoPoint.latitude = tL_geoPoint.lat;
            apiWrap$GeoPoint.longitude = tL_geoPoint._long;
            apiWrap$GeoPoint.valid = true;
        }
        return apiWrap$GeoPoint;
    }

    public static ApiWrap$User EmptyUser(long j) {
        TLRPC.TL_userEmpty tL_userEmpty = new TLRPC.TL_userEmpty();
        tL_userEmpty.f1825id = j;
        return ParseUser(tL_userEmpty);
    }

    public static ApiWrap$Chat EmptyChat(long j) {
        TLRPC.TL_chatEmpty tL_chatEmpty = new TLRPC.TL_chatEmpty();
        tL_chatEmpty.f1660id = j;
        return ParseChat(tL_chatEmpty);
    }

    public static ApiWrap$Peer EmptyPeer(TLRPC.Peer peer) {
        long j = peer.user_id;
        if (j != 0) {
            return new ApiWrap$Peer(EmptyUser(j));
        }
        long j2 = peer.chat_id;
        if (j2 != 0) {
            return new ApiWrap$Peer(EmptyChat(j2));
        }
        long j3 = peer.channel_id;
        if (j3 != 0) {
            return new ApiWrap$Peer(EmptyChat(j3));
        }
        throw new IllegalArgumentException("PeerId in EmptyPeer: " + ExteraConfig.GSON.toJson(peer));
    }

    public static HashMap ParsePeersLists(ArrayList arrayList, ArrayList arrayList2) {
        ApiWrap$Peer apiWrap$Peer;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ApiWrap$User apiWrap$UserParseUser = ParseUser((TLRPC.User) obj);
            linkedHashMap.put(apiWrap$UserParseUser.info.userId, new ApiWrap$Peer(apiWrap$UserParseUser));
        }
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj2 = arrayList2.get(i);
            i++;
            ApiWrap$Chat apiWrap$ChatParseChat = ParseChat((TLRPC.Chat) obj2);
            linkedHashMap.put(Long.valueOf(apiWrap$ChatParseChat.bareId), new ApiWrap$Peer(apiWrap$ChatParseChat));
        }
        for (ApiWrap$Peer apiWrap$Peer2 : linkedHashMap.values()) {
            ApiWrap$Chat apiWrap$Chat = apiWrap$Peer2.chat;
            if (apiWrap$Chat != null && apiWrap$Chat.isMonoforum && (apiWrap$Peer = (ApiWrap$Peer) linkedHashMap.get(Long.valueOf(apiWrap$Chat.monoforumLinkId))) != null) {
                ApiWrap$Chat apiWrap$Chat2 = apiWrap$Peer2.chat;
                apiWrap$Chat2.isMonoforumAdmin = apiWrap$Peer.chat.hasMonoforumAdminRights;
                apiWrap$Chat2.isMonoforumOfPublicBroadcast = !TextUtils.isEmpty(r1.username);
            }
        }
        return linkedHashMap;
    }

    public static HashMap ParseUsersList(ArrayList arrayList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ApiWrap$User apiWrap$UserParseUser = ParseUser((TLRPC.User) obj);
            linkedHashMap.put(apiWrap$UserParseUser.info.userId, apiWrap$UserParseUser);
        }
        return linkedHashMap;
    }

    public static ApiWrap$WebSession ParseWebSession(TLRPC.TL_webAuthorization tL_webAuthorization, HashMap map) {
        String str;
        ApiWrap$User apiWrap$User;
        if (map == null || (apiWrap$User = (ApiWrap$User) map.get(Long.valueOf(tL_webAuthorization.bot_id))) == null || (str = apiWrap$User.username) == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new ApiWrap$WebSession(str, tL_webAuthorization.domain, tL_webAuthorization.browser, tL_webAuthorization.platform, tL_webAuthorization.date_created, tL_webAuthorization.date_active, tL_webAuthorization.f1820ip, tL_webAuthorization.region);
    }

    public static ApiWrap$SessionsList ParseSessionsList(TL_account.authorizations authorizationsVar) {
        ApiWrap$SessionsList apiWrap$SessionsList = new ApiWrap$SessionsList();
        apiWrap$SessionsList.list.addAll(authorizationsVar.authorizations);
        return apiWrap$SessionsList;
    }

    public static ApiWrap$SessionsList ParseWebSessionsList(TL_account.webAuthorizations webauthorizations) {
        ApiWrap$SessionsList apiWrap$SessionsList = new ApiWrap$SessionsList();
        HashMap mapParseUsersList = ParseUsersList(webauthorizations.users);
        ArrayList<TLRPC.TL_webAuthorization> arrayList = webauthorizations.authorizations;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_webAuthorization tL_webAuthorization = arrayList.get(i);
            i++;
            apiWrap$SessionsList.webList.add(ParseWebSession(tL_webAuthorization, mapParseUsersList));
        }
        return apiWrap$SessionsList;
    }

    public static ApiWrap$MessagesSlice ParseMessagesSlice(ApiWrap$ParseMediaContext apiWrap$ParseMediaContext, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str) {
        ApiWrap$MessagesSlice apiWrap$MessagesSlice = new ApiWrap$MessagesSlice();
        int size = arrayList.size();
        while (size != 0) {
            size--;
            apiWrap$MessagesSlice.list.add(ParseMessage(apiWrap$ParseMediaContext, (TLRPC.Message) arrayList.get(size), str));
        }
        apiWrap$MessagesSlice.peers = ParsePeersLists(arrayList2, arrayList3);
        return apiWrap$MessagesSlice;
    }

    public static ApiWrap$Document ParseDocument(ApiWrap$ParseMediaContext apiWrap$ParseMediaContext, TLRPC.Document document, String str, int i) {
        ApiWrap$Document apiWrap$Document = new ApiWrap$Document();
        if (document instanceof TLRPC.TL_document) {
            TLRPC.TL_document tL_document = (TLRPC.TL_document) document;
            apiWrap$Document.f271id = tL_document.f1668id;
            apiWrap$Document.date = tL_document.date;
            apiWrap$Document.mime = tL_document.mime_type;
            ParseAttributes(apiWrap$Document, tL_document.attributes);
            ApiWrap$File apiWrap$File = new ApiWrap$File();
            apiWrap$Document.file = apiWrap$File;
            apiWrap$File.size = tL_document.size;
            apiWrap$File.dcId = tL_document.dc_id;
            TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
            tL_inputDocumentFileLocation.f1680id = tL_document.f1668id;
            tL_inputDocumentFileLocation.access_hash = tL_document.access_hash;
            tL_inputDocumentFileLocation.file_reference = tL_document.file_reference;
            tL_inputDocumentFileLocation.thumb_size = _UrlKt.FRAGMENT_ENCODE_SET;
            apiWrap$Document.file.location = new ApiWrap$FileLocation();
            ApiWrap$File apiWrap$File2 = apiWrap$Document.file;
            ApiWrap$FileLocation apiWrap$FileLocation = apiWrap$File2.location;
            apiWrap$FileLocation.data = tL_inputDocumentFileLocation;
            apiWrap$FileLocation.dcId = tL_document.dc_id;
            apiWrap$File2.suggestedPath = str + DocumentFolder(apiWrap$Document) + "/" + FileManager.fileNameFromUserString(ComputeDocumentName(apiWrap$ParseMediaContext, tL_document, i, apiWrap$Document.name));
            apiWrap$Document.thumb = ParseDocumentThumb(tL_document, apiWrap$Document.file.suggestedPath);
            if (MessageObject.isStickerDocument(tL_document)) {
                apiWrap$Document.sticker = tL_document;
                return apiWrap$Document;
            }
        } else if (document instanceof TLRPC.TL_documentEmpty) {
            apiWrap$Document.f271id = ((TLRPC.TL_documentEmpty) document).f1668id;
        }
        return apiWrap$Document;
    }

    public static boolean RefreshFileReference(TLRPC.InputFileLocation inputFileLocation, TLRPC.InputFileLocation inputFileLocation2) {
        if (inputFileLocation.getClass() != inputFileLocation2.getClass()) {
            return false;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPhotoFileLocation) {
            if (inputFileLocation.f1680id != inputFileLocation2.f1680id || !Objects.equals(inputFileLocation.thumb_size, inputFileLocation2.thumb_size)) {
                return false;
            }
            inputFileLocation.file_reference = inputFileLocation2.file_reference;
            return true;
        }
        if (!(inputFileLocation instanceof TLRPC.TL_inputDocumentFileLocation) || inputFileLocation.f1680id != inputFileLocation2.f1680id || !Objects.equals(inputFileLocation.thumb_size, inputFileLocation2.thumb_size)) {
            return false;
        }
        inputFileLocation.file_reference = inputFileLocation2.file_reference;
        return true;
    }

    public static void ParseAttributes(ApiWrap$Document apiWrap$Document, ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.DocumentAttribute documentAttribute = (TLRPC.DocumentAttribute) obj;
            if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = (TLRPC.TL_documentAttributeImageSize) documentAttribute;
                apiWrap$Document.width = tL_documentAttributeImageSize.f1671w;
                apiWrap$Document.height = tL_documentAttributeImageSize.f1670h;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                apiWrap$Document.isAnimated = true;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                apiWrap$Document.isSticker = true;
                apiWrap$Document.stickerEmoji = ((TLRPC.TL_documentAttributeSticker) documentAttribute).alt;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                apiWrap$Document.isSticker = true;
                apiWrap$Document.stickerEmoji = ((TLRPC.TL_documentAttributeCustomEmoji) documentAttribute).alt;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) documentAttribute;
                if (tL_documentAttributeVideo.round_message) {
                    apiWrap$Document.isVideoMessage = true;
                } else {
                    apiWrap$Document.isVideoFile = true;
                }
                apiWrap$Document.width = tL_documentAttributeVideo.f1671w;
                apiWrap$Document.height = tL_documentAttributeVideo.f1670h;
                apiWrap$Document.duration = (int) tL_documentAttributeVideo.duration;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = (TLRPC.TL_documentAttributeAudio) documentAttribute;
                if (tL_documentAttributeAudio.voice) {
                    apiWrap$Document.isVoiceMessage = true;
                } else {
                    apiWrap$Document.isAudioFile = true;
                }
                String str = tL_documentAttributeAudio.performer;
                if (str != null && !str.isEmpty()) {
                    apiWrap$Document.songPerformer = str;
                }
                String str2 = tL_documentAttributeAudio.title;
                if (str2 != null && !str2.isEmpty()) {
                    apiWrap$Document.songTitle = str2;
                }
                apiWrap$Document.duration = (int) tL_documentAttributeAudio.duration;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeFilename) {
                apiWrap$Document.name = ((TLRPC.TL_documentAttributeFilename) documentAttribute).file_name;
            }
        }
    }

    public static String ComputeDocumentName(ApiWrap$ParseMediaContext apiWrap$ParseMediaContext, final TLRPC.Document document, int i, String str) {
        if (document == null) {
            throw new IllegalArgumentException("trying to pass null document!!!");
        }
        if (str != null && !str.isEmpty()) {
            return str;
        }
        String extensionFromMime = getExtensionFromMime(document.mime_type, document);
        new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.api.DataTypesUtils$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                TLRPC.Document document2 = document;
                String str2 = (String) obj;
                return Boolean.valueOf(!document2.mime_type.equalsIgnoreCase(str2));
            }
        };
        if (MessageObject.isVoiceDocument(document)) {
            boolean zEqualsIgnoreCase = document.mime_type.equalsIgnoreCase("audio/mp3");
            StringBuilder sb = new StringBuilder();
            sb.append(MediaStreamTrack.AUDIO_TRACK_KIND);
            int i2 = apiWrap$ParseMediaContext.audios + 1;
            apiWrap$ParseMediaContext.audios = i2;
            sb.append(i2);
            sb.append(PrepareFileNameDatePart(i));
            sb.append(!zEqualsIgnoreCase ? ".mp3" : ".ogg");
            return sb.toString();
        }
        if (MessageObject.isVideoDocument(document)) {
            if (extensionFromMime.isEmpty()) {
                extensionFromMime = ".mov";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("video_");
            int i3 = apiWrap$ParseMediaContext.videos + 1;
            apiWrap$ParseMediaContext.videos = i3;
            sb2.append(i3);
            sb2.append(PrepareFileNameDatePart(i));
            sb2.append(extensionFromMime);
            return sb2.toString();
        }
        if (extensionFromMime.isEmpty()) {
            extensionFromMime = ".unknown";
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("file_");
        int i4 = apiWrap$ParseMediaContext.files + 1;
        apiWrap$ParseMediaContext.files = i4;
        sb3.append(i4);
        sb3.append(PrepareFileNameDatePart(i));
        sb3.append(extensionFromMime);
        return sb3.toString();
    }

    private static String getExtensionFromMime(String str, TLRPC.Document document) {
        if (Objects.equals(str, "image/webp")) {
            return ".webp";
        }
        if (Objects.equals(str, "application/x-tgsticker")) {
            return ".tgs";
        }
        if (Objects.equals(str, "application/x-tgwallpattern")) {
            return ".tgv";
        }
        if (Objects.equals(str, "application/x-tdesktop-theme") || Objects.equals(str, "application/x-tgtheme-tdesktop")) {
            return ".tdesktop-theme";
        }
        if (Objects.equals(str, "application/x-tdesktop-palette")) {
            return ".tdesktop-palette";
        }
        if (Objects.equals(str, "video/mp4")) {
            return ".mp4";
        }
        if (Objects.equals(str, "audio/ogg")) {
            return ".ogg";
        }
        return ".unknown";
    }

    private static String DocumentFolder(ApiWrap$Document apiWrap$Document) {
        if (apiWrap$Document.isVideoFile) {
            return "video_files";
        }
        if (apiWrap$Document.isAnimated) {
            return "animations";
        }
        if (apiWrap$Document.isSticker) {
            return "stickers";
        }
        if (apiWrap$Document.isVoiceMessage) {
            return "voice_messages";
        }
        if (apiWrap$Document.isVideoMessage) {
            return "round_video_messages";
        }
        return "files";
    }

    private static long getArea(TLRPC.PhotoSize photoSize) {
        if ((photoSize instanceof TLRPC.TL_photoSizeEmpty) || (photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
            return 0L;
        }
        return ((long) photoSize.f1694w) * ((long) photoSize.f1693h);
    }

    private static ApiWrap$Image ParseDocumentThumb(TLRPC.Document document, String str) {
        ArrayList<TLRPC.PhotoSize> arrayList = document.thumbs;
        if (arrayList.isEmpty()) {
            return new ApiWrap$Image();
        }
        int size = arrayList.size();
        TLRPC.PhotoSize photoSize = null;
        long area = Long.MIN_VALUE;
        int i = 0;
        while (i < size) {
            TLRPC.PhotoSize photoSize2 = arrayList.get(i);
            i++;
            TLRPC.PhotoSize photoSize3 = photoSize2;
            if (getArea(photoSize3) > area) {
                area = getArea(photoSize3);
                photoSize = photoSize3;
            }
        }
        if (photoSize == null) {
            return new ApiWrap$Image();
        }
        if ((photoSize instanceof TLRPC.TL_photoSizeEmpty) || (photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
            return new ApiWrap$Image();
        }
        ApiWrap$Image apiWrap$Image = new ApiWrap$Image();
        apiWrap$Image.width = photoSize.f1694w;
        apiWrap$Image.height = photoSize.f1693h;
        TLRPC.TL_inputDocumentFileLocation tL_inputDocumentFileLocation = new TLRPC.TL_inputDocumentFileLocation();
        tL_inputDocumentFileLocation.f1680id = document.f1668id;
        tL_inputDocumentFileLocation.access_hash = document.access_hash;
        tL_inputDocumentFileLocation.file_reference = document.file_reference;
        tL_inputDocumentFileLocation.thumb_size = photoSize.type;
        apiWrap$Image.file.location = new ApiWrap$FileLocation();
        ApiWrap$File apiWrap$File = apiWrap$Image.file;
        ApiWrap$FileLocation apiWrap$FileLocation = apiWrap$File.location;
        apiWrap$FileLocation.data = tL_inputDocumentFileLocation;
        apiWrap$FileLocation.dcId = document.dc_id;
        if (photoSize instanceof TLRPC.TL_photoCachedSize) {
            apiWrap$File.content = ((TLRPC.TL_photoCachedSize) photoSize).bytes;
            apiWrap$File.size = r3.size;
        } else if (photoSize instanceof TLRPC.TL_photoSizeProgressive) {
            TLRPC.TL_photoSizeProgressive tL_photoSizeProgressive = (TLRPC.TL_photoSizeProgressive) photoSize;
            if (tL_photoSizeProgressive.sizes.isEmpty()) {
                return new ApiWrap$Image();
            }
            ApiWrap$File apiWrap$File2 = apiWrap$Image.file;
            apiWrap$File2.content = new byte[0];
            ArrayList arrayList2 = tL_photoSizeProgressive.sizes;
            apiWrap$File2.size = ((Integer) arrayList2.get(arrayList2.size() - 1)).intValue();
        } else {
            apiWrap$File.content = new byte[0];
            apiWrap$File.size = document.size;
        }
        apiWrap$Image.file.suggestedPath = str + "_thumb.jpg";
        return apiWrap$Image;
    }

    public static boolean SkipMessageByDate(ApiWrap$Message apiWrap$Message, ExportSettings exportSettings) {
        int i = exportSettings.singlePeerFrom;
        boolean z = i <= 0 || i <= apiWrap$Message.date;
        int i2 = exportSettings.singlePeerTill;
        return (z && (i2 <= 0 || apiWrap$Message.date < i2)) ? false : true;
    }

    public static boolean SingleMessageBefore(TLRPC.messages_Messages messages_messages, int i) {
        int iSingleMessageDate = SingleMessageDate(messages_messages);
        return iSingleMessageDate > 0 && iSingleMessageDate < i;
    }

    public static ApiWrap$MessagesSlice AdjustMigrateMessageIds(ApiWrap$MessagesSlice apiWrap$MessagesSlice) {
        ArrayList arrayList = apiWrap$MessagesSlice.list;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ApiWrap$Message apiWrap$Message = (ApiWrap$Message) obj;
            apiWrap$Message.f273id -= 1000000000;
            int i2 = apiWrap$Message.replyToMsgId;
            if (i2 != 0 && apiWrap$Message.replyToPeerId == 0) {
                apiWrap$Message.replyToMsgId = i2 - 1000000000;
            }
        }
        return apiWrap$MessagesSlice;
    }

    public static String ComposeName(HtmlWriter.UserpicData userpicData, String str) {
        if (userpicData.firstName.isEmpty() && userpicData.lastName.isEmpty()) {
            return str;
        }
        return userpicData.firstName + ' ' + userpicData.lastName;
    }

    public static int ApplicationColorIndex(int i) {
        Integer num = (Integer) new HashMap() { // from class: com.exteragram.messenger.export.api.DataTypesUtils.1
            {
                put(1, 0);
                put(7, 0);
                put(6, 1);
                put(21724, 1);
                put(2834, 2);
                put(2496, 3);
                put(2040, 4);
                put(1429, 5);
            }
        }.get(Integer.valueOf(i));
        if (num != null) {
            return num.intValue();
        }
        return PeerColorIndex(i);
    }

    public static ApiWrap$User ParseUser(TLRPC.User user) {
        int iPeerColorIndex;
        ApiWrap$User apiWrap$User = new ApiWrap$User();
        apiWrap$User.info = ParseContactInfo(user);
        if (user instanceof TLRPC.TL_user) {
            TLRPC.TL_user tL_user = (TLRPC.TL_user) user;
            Long lValueOf = Long.valueOf(tL_user.f1825id);
            apiWrap$User.bareId = lValueOf;
            TLRPC.PeerColor peerColor = tL_user.color;
            if (peerColor == null || (iPeerColorIndex = peerColor.color) == 0) {
                iPeerColorIndex = PeerColorIndex(lValueOf.longValue());
            }
            apiWrap$User.colorIndex = iPeerColorIndex;
            apiWrap$User.username = tL_user.username;
            apiWrap$User.isBot = tL_user.bot;
            apiWrap$User.isSelf = tL_user.self;
            long j = tL_user.f1825id;
            apiWrap$User.isReplies = j == UserObject.REPLY_BOT;
            apiWrap$User.isVerifyCodes = j == UserObject.VERIFY;
            TLRPC.TL_inputUser tL_inputUser = new TLRPC.TL_inputUser();
            tL_inputUser.user_id = tL_user.f1825id;
            tL_inputUser.access_hash = tL_user.access_hash;
            apiWrap$User.input = tL_inputUser;
            return apiWrap$User;
        }
        if (user instanceof TLRPC.TL_userEmpty) {
            TLRPC.TL_inputUser tL_inputUser2 = new TLRPC.TL_inputUser();
            tL_inputUser2.user_id = ((TLRPC.TL_userEmpty) user).f1825id;
            tL_inputUser2.access_hash = 0L;
            apiWrap$User.input = tL_inputUser2;
        }
        return apiWrap$User;
    }

    public static ApiWrap$ContactInfo ParseContactInfo(TLRPC.User user) {
        int iPeerColorIndex;
        ApiWrap$ContactInfo apiWrap$ContactInfo = new ApiWrap$ContactInfo();
        if (user instanceof TLRPC.TL_user) {
            TLRPC.TL_user tL_user = (TLRPC.TL_user) user;
            Long lValueOf = Long.valueOf(tL_user.f1825id);
            apiWrap$ContactInfo.userId = lValueOf;
            TLRPC.PeerColor peerColor = tL_user.color;
            if (peerColor == null || (iPeerColorIndex = peerColor.color) == 0) {
                iPeerColorIndex = PeerColorIndex(lValueOf.longValue());
            }
            apiWrap$ContactInfo.colorIndex = iPeerColorIndex;
            String str = tL_user.first_name;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            apiWrap$ContactInfo.firstName = str;
            String str3 = tL_user.last_name;
            if (str3 == null) {
                str3 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            apiWrap$ContactInfo.lastName = str3;
            String str4 = tL_user.phone;
            if (str4 != null) {
                str2 = str4;
            }
            apiWrap$ContactInfo.phoneNumber = str2;
            return apiWrap$ContactInfo;
        }
        if (user instanceof TLRPC.TL_userEmpty) {
            Long lValueOf2 = Long.valueOf(((TLRPC.TL_userEmpty) user).f1825id);
            apiWrap$ContactInfo.userId = lValueOf2;
            apiWrap$ContactInfo.colorIndex = PeerColorIndex(lValueOf2.longValue());
        }
        return apiWrap$ContactInfo;
    }

    public static boolean messageNeedsWrap(ApiWrap$Message apiWrap$Message, HtmlWriter.MessageInfo messageInfo) {
        if (messageInfo == null || messageInfo.type != HtmlWriter.MessageInfo.Type.Default) {
            return true;
        }
        long j = apiWrap$Message.fromId;
        if (j != 0 && messageInfo.fromId == j && apiWrap$Message.viaBotId == messageInfo.viaBotId && LocaleController.getInstance().getFormatterYear().format(((long) messageInfo.date) * 1000).trim().equals(LocaleController.getInstance().getFormatterYear().format(((long) apiWrap$Message.date) * 1000).trim()) && apiWrap$Message.forwarded == messageInfo.forwarded && apiWrap$Message.showForwardedAsOriginal == messageInfo.showForwardedAsOriginal && apiWrap$Message.forwardedFromId == messageInfo.forwardedFromId && Objects.equals(apiWrap$Message.forwardedFromName, messageInfo.forwardedFromName)) {
            return Math.abs(apiWrap$Message.date - messageInfo.date) > (((apiWrap$Message.forwardedFromId > 0L ? 1 : (apiWrap$Message.forwardedFromId == 0L ? 0 : -1)) != 0 || !apiWrap$Message.forwardedFromName.isEmpty()) ? 1 : 900);
        }
        return true;
    }

    public static boolean forwardedNeedsWrap(ApiWrap$Message apiWrap$Message, HtmlWriter.MessageInfo messageInfo) {
        if (messageNeedsWrap(apiWrap$Message, messageInfo)) {
            return true;
        }
        long j = apiWrap$Message.forwardedFromId;
        return j == 0 || j != messageInfo.forwardedFromId || ChatUtils.getInstance().getMessageStorage().getUser(apiWrap$Message.forwardedFromId) == null || Math.abs(apiWrap$Message.forwardedDate - messageInfo.forwardedDate) > 900;
    }

    public static String FormatText(ArrayList arrayList, final String str, final String str2) {
        return (String) Collection.EL.stream(arrayList).map(new Function() { // from class: com.exteragram.messenger.export.api.DataTypesUtils$$ExternalSyntheticLambda2
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DataTypesUtils.$r8$lambda$YnixTTMCGZSy3zr12T7r1r9bYeo(str, str2, (ApiWrap$TextPart) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).collect(Collectors.joining());
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.export.api.DataTypesUtils$2 */
    static /* synthetic */ class C10882 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$DialogInfo$Type */
        static final /* synthetic */ int[] f279x410af476;

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$File$SkipReason */
        static final /* synthetic */ int[] f280xd696c439;

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$TextPart$Type */
        static final /* synthetic */ int[] f281x9004fd8c;

        static {
            int[] iArr = new int[ApiWrap$TextPart.Type.values().length];
            f281x9004fd8c = iArr;
            try {
                iArr[ApiWrap$TextPart.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Unknown.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.BankCard.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Mention.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Hashtag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.BotCommand.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Url.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Email.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Bold.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Italic.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Code.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Pre.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.TextUrl.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.MentionName.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Phone.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Cashtag.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Underline.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Strike.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Blockquote.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.Spoiler.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f281x9004fd8c[ApiWrap$TextPart.Type.CustomEmoji.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            int[] iArr2 = new int[ApiWrap$File.SkipReason.values().length];
            f280xd696c439 = iArr2;
            try {
                iArr2[ApiWrap$File.SkipReason.Unavailable.ordinal()] = 1;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f280xd696c439[ApiWrap$File.SkipReason.FileSize.ordinal()] = 2;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f280xd696c439[ApiWrap$File.SkipReason.FileType.ordinal()] = 3;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f280xd696c439[ApiWrap$File.SkipReason.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused25) {
            }
            int[] iArr3 = new int[ApiWrap$DialogInfo.Type.values().length];
            f279x410af476 = iArr3;
            try {
                iArr3[ApiWrap$DialogInfo.Type.Self.ordinal()] = 1;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.Personal.ordinal()] = 2;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.Bot.ordinal()] = 3;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.PrivateGroup.ordinal()] = 4;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.PrivateSupergroup.ordinal()] = 5;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.PublicSupergroup.ordinal()] = 6;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.PrivateChannel.ordinal()] = 7;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.PublicChannel.ordinal()] = 8;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.Unknown.ordinal()] = 9;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.Replies.ordinal()] = 10;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f279x410af476[ApiWrap$DialogInfo.Type.VerifyCodes.ordinal()] = 11;
            } catch (NoSuchFieldError unused36) {
            }
        }
    }

    public static /* synthetic */ String $r8$lambda$YnixTTMCGZSy3zr12T7r1r9bYeo(String str, String str2, ApiWrap$TextPart apiWrap$TextPart) {
        String strSerializeString = HtmlContext.SerializeString(apiWrap$TextPart.text);
        switch (C10882.f281x9004fd8c[apiWrap$TextPart.type.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return strSerializeString;
            case 4:
                return "<a href=\"" + str + strSerializeString.substring(1) + "\">" + strSerializeString + "</a>";
            case 5:
                return "<a href=\"\" onclick=\"return ShowHashtag(" + HtmlContext.SerializeString('\"' + strSerializeString.substring(1) + '\"') + ")\">" + strSerializeString + "</a>";
            case 6:
                return "<a href=\"\" onclick=\"return ShowBotCommand(" + HtmlContext.SerializeString('\"' + strSerializeString.substring(1) + '\"') + ")\">" + strSerializeString + "</a>";
            case 7:
                return "<a href=\"" + strSerializeString + "\">" + strSerializeString + "</a>";
            case 8:
                return "<a href=\"mailto:" + strSerializeString + "\">" + strSerializeString + "</a>";
            case 9:
                return "<strong>" + strSerializeString + "</strong>";
            case 10:
                return "<em>" + strSerializeString + "</em>";
            case 11:
                return "<code>" + strSerializeString + "</code>";
            case 12:
                return "<pre>" + strSerializeString + "</pre>";
            case 13:
                return "<a href=\"" + HtmlContext.SerializeString(apiWrap$TextPart.additional) + "\">" + strSerializeString + "</a>";
            case 14:
                return "<a href=\"\" onclick=\"return ShowMentionName()\">" + strSerializeString + "</a>";
            case 15:
                return "<a href=\"tel:" + strSerializeString + "\">" + strSerializeString + "</a>";
            case 16:
                return "<a href=\"\" onclick=\"return ShowCashtag(" + HtmlContext.SerializeString('\"' + strSerializeString.substring(1) + '\"') + ")\">" + strSerializeString + "</a>";
            case 17:
                return "<u>" + strSerializeString + "</u>";
            case 18:
                return "<s>" + strSerializeString + "</s>";
            case 19:
                return "<blockquote>" + strSerializeString + "</blockquote>";
            case 20:
                return "<span class=\"spoiler hidden\" onclick=\"ShowSpoiler(this)\"><span aria-hidden=\"true\">" + strSerializeString + "</span></span>";
            case 21:
                return FormatCustomEmoji(apiWrap$TextPart.additional, strSerializeString, str2);
            default:
                throw new IncompatibleClassChangeError();
        }
    }

    public static String FormatCustomEmoji(String str, String str2, String str3) {
        String str4;
        StringBuilder sb = new StringBuilder();
        if (str.isEmpty()) {
            str4 = "<a href=\"\" onclick=\"return ShowNotLoadedEmoji();\">";
        } else if (str.equals(ApiWrap$TextPart.UnavailableEmoji())) {
            str4 = "<a href=\"\" onclick=\"return ShowNotAvailableEmoji();\">";
        } else {
            str4 = "<a href = \"" + str3 + str + "\">";
        }
        sb.append(str4);
        sb.append(str2);
        sb.append("</a>");
        return sb.toString();
    }

    public static ApiWrap$StoriesSlice ParseStoriesSlice(ArrayList arrayList, int i) {
        ApiWrap$Document apiWrap$Document;
        ApiWrap$StoriesSlice apiWrap$StoriesSlice = new ApiWrap$StoriesSlice();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj;
            apiWrap$StoriesSlice.lastId = storyItem.f1857id;
            apiWrap$StoriesSlice.skipped++;
            int i3 = storyItem.date;
            ApiWrap$Media apiWrap$Media = new ApiWrap$Media();
            TLRPC.MessageMedia messageMedia = storyItem.media;
            String extensionFromMime = ".jpg";
            if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = (TLRPC.TL_messageMediaPhoto) messageMedia;
                StringBuilder sb = new StringBuilder();
                sb.append("stories/");
                i++;
                sb.append(PrepareStoryFileName(i, i3, ".jpg"));
                String string = sb.toString();
                TLRPC.Photo photo = tL_messageMediaPhoto.photo;
                HtmlWriter.Photo photoParsePhoto = photo != null ? ParsePhoto(photo, string) : new HtmlWriter.Photo();
                photoParsePhoto.spoilered = tL_messageMediaPhoto.spoiler;
                apiWrap$Media.content = photoParsePhoto;
            } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = (TLRPC.TL_messageMediaDocument) messageMedia;
                TLRPC.Document document = tL_messageMediaDocument.document;
                ApiWrap$ParseMediaContext apiWrap$ParseMediaContext = new ApiWrap$ParseMediaContext();
                if (document != null) {
                    apiWrap$Document = ParseDocument(apiWrap$ParseMediaContext, document, "stories", i3);
                } else {
                    apiWrap$Document = new ApiWrap$Document();
                }
                if (!apiWrap$Document.mime.equals("image/jpeg")) {
                    if (apiWrap$Document.mime.equals("image/png")) {
                        extensionFromMime = ".png";
                    } else {
                        extensionFromMime = getExtensionFromMime(apiWrap$Document.mime, null);
                    }
                }
                ApiWrap$File apiWrap$File = apiWrap$Document.file;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("stories/");
                i++;
                sb2.append(PrepareStoryFileName(i, i3, extensionFromMime));
                String string2 = sb2.toString();
                apiWrap$File.suggestedPath = string2;
                apiWrap$Document.thumb.file.suggestedPath = string2 + "_thumb.jpg";
                apiWrap$Document.spoilered = tL_messageMediaDocument.spoiler;
                apiWrap$Media.content = apiWrap$Document;
            } else {
                apiWrap$Media.content = new Object() { // from class: com.exteragram.messenger.export.api.ApiWrap$UnsupportedMedia
                };
            }
            if (!(apiWrap$Media.content instanceof ApiWrap$UnsupportedMedia)) {
                ApiWrap$Story apiWrap$Story = new ApiWrap$Story();
                apiWrap$Story.f276id = storyItem.f1857id;
                apiWrap$Story.date = i3;
                apiWrap$Story.expires = storyItem.expire_date;
                apiWrap$Story.media = apiWrap$Media;
                apiWrap$Story.pinned = storyItem.pinned;
                String str = storyItem.caption;
                apiWrap$Story.caption = str != null ? ParseText(str, storyItem.entities) : new ArrayList();
                apiWrap$StoriesSlice.list.add(apiWrap$Story);
                apiWrap$StoriesSlice.skipped--;
            }
        }
        return apiWrap$StoriesSlice;
    }

    private static ArrayList ButtonRowsFromTL(TLRPC.TL_replyKeyboardMarkup tL_replyKeyboardMarkup) {
        ApiWrap$HistoryMessageMarkupButton.Type type;
        ApiWrap$HistoryMessageMarkupButton.Type type2;
        byte[] bArr;
        ArrayList arrayList = tL_replyKeyboardMarkup.rows;
        if (arrayList.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.ensureCapacity(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.TL_keyboardButtonRow tL_keyboardButtonRow = (TLRPC.TL_keyboardButtonRow) obj;
            ArrayList arrayList3 = new ArrayList();
            arrayList3.ensureCapacity(tL_keyboardButtonRow.buttons.size());
            ArrayList arrayList4 = tL_keyboardButtonRow.buttons;
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                TLRPC.KeyboardButton keyboardButton = (TLRPC.KeyboardButton) obj2;
                if (keyboardButton instanceof TLRPC.TL_keyboardButton) {
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.Default, ((TLRPC.TL_keyboardButton) keyboardButton).text));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonCallback) {
                    TLRPC.TL_keyboardButtonCallback tL_keyboardButtonCallback = (TLRPC.TL_keyboardButtonCallback) keyboardButton;
                    if (tL_keyboardButtonCallback.requires_password) {
                        type = ApiWrap$HistoryMessageMarkupButton.Type.CallbackWithPassword;
                    } else {
                        type = ApiWrap$HistoryMessageMarkupButton.Type.Callback;
                    }
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(type, tL_keyboardButtonCallback.text, tL_keyboardButtonCallback.data));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestGeoLocation) {
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.RequestLocation, ((TLRPC.TL_keyboardButtonRequestGeoLocation) keyboardButton).text));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPhone) {
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.RequestPhone, ((TLRPC.TL_keyboardButtonRequestPhone) keyboardButton).text));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPeer) {
                    TLRPC.TL_keyboardButtonRequestPeer tL_keyboardButtonRequestPeer = (TLRPC.TL_keyboardButtonRequestPeer) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.RequestPeer, tL_keyboardButtonRequestPeer.text, "unsupported".getBytes(StandardCharsets.UTF_8), _UrlKt.FRAGMENT_ENCODE_SET, tL_keyboardButtonRequestPeer.button_id));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrl) {
                    TLRPC.TL_keyboardButtonUrl tL_keyboardButtonUrl = (TLRPC.TL_keyboardButtonUrl) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.Url, tL_keyboardButtonUrl.text, tL_keyboardButtonUrl.url.getBytes(StandardCharsets.UTF_8)));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonSwitchInline) {
                    TLRPC.TL_keyboardButtonSwitchInline tL_keyboardButtonSwitchInline = (TLRPC.TL_keyboardButtonSwitchInline) keyboardButton;
                    if (tL_keyboardButtonSwitchInline.same_peer) {
                        type2 = ApiWrap$HistoryMessageMarkupButton.Type.SwitchInlineSame;
                    } else {
                        type2 = ApiWrap$HistoryMessageMarkupButton.Type.SwitchInline;
                    }
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(type2, tL_keyboardButtonSwitchInline.text, tL_keyboardButtonSwitchInline.query.getBytes(StandardCharsets.UTF_8)));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonGame) {
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.Game, ((TLRPC.TL_keyboardButtonGame) keyboardButton).text));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonBuy) {
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.Buy, ((TLRPC.TL_keyboardButtonBuy) keyboardButton).text));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonUrlAuth) {
                    TLRPC.TL_keyboardButtonUrlAuth tL_keyboardButtonUrlAuth = (TLRPC.TL_keyboardButtonUrlAuth) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.Auth, tL_keyboardButtonUrlAuth.text, tL_keyboardButtonUrlAuth.url.getBytes(StandardCharsets.UTF_8), tL_keyboardButtonUrlAuth.fwd_text, tL_keyboardButtonUrlAuth.button_id));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonRequestPoll) {
                    TLRPC.TL_keyboardButtonRequestPoll tL_keyboardButtonRequestPoll = (TLRPC.TL_keyboardButtonRequestPoll) keyboardButton;
                    if (tL_keyboardButtonRequestPoll.quiz) {
                        bArr = new byte[1];
                    } else {
                        bArr = new byte[0];
                    }
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.RequestPoll, tL_keyboardButtonRequestPoll.text, bArr));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonUserProfile) {
                    TLRPC.TL_keyboardButtonUserProfile tL_keyboardButtonUserProfile = (TLRPC.TL_keyboardButtonUserProfile) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.UserProfile, tL_keyboardButtonUserProfile.text, String.valueOf(tL_keyboardButtonUserProfile.user_id).getBytes(StandardCharsets.UTF_8)));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonWebView) {
                    TLRPC.TL_keyboardButtonWebView tL_keyboardButtonWebView = (TLRPC.TL_keyboardButtonWebView) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.WebView, tL_keyboardButtonWebView.text, tL_keyboardButtonWebView.url.getBytes(StandardCharsets.UTF_8)));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonSimpleWebView) {
                    TLRPC.TL_keyboardButtonSimpleWebView tL_keyboardButtonSimpleWebView = (TLRPC.TL_keyboardButtonSimpleWebView) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.SimpleWebView, tL_keyboardButtonSimpleWebView.text, tL_keyboardButtonSimpleWebView.url.getBytes(StandardCharsets.UTF_8)));
                } else if (keyboardButton instanceof TLRPC.TL_keyboardButtonCopy) {
                    TLRPC.TL_keyboardButtonCopy tL_keyboardButtonCopy = (TLRPC.TL_keyboardButtonCopy) keyboardButton;
                    arrayList3.add(new ApiWrap$HistoryMessageMarkupButton(ApiWrap$HistoryMessageMarkupButton.Type.CopyText, tL_keyboardButtonCopy.text, tL_keyboardButtonCopy.copy_text.getBytes(StandardCharsets.UTF_8)));
                }
            }
            if (!arrayList3.isEmpty()) {
                arrayList2.add(arrayList3);
            }
        }
        return arrayList2;
    }

    public static HtmlWriter.Photo ParsePhoto(TLRPC.Photo photo, String str) {
        HtmlWriter.Photo photo2 = new HtmlWriter.Photo();
        if (photo instanceof TLRPC.TL_photoEmpty) {
            photo2.f287id = ((TLRPC.TL_photoEmpty) photo).f1692id;
            return photo2;
        }
        if (photo instanceof TLRPC.TL_photo) {
            TLRPC.TL_photo tL_photo = (TLRPC.TL_photo) photo;
            photo2.f287id = tL_photo.f1692id;
            photo2.date = tL_photo.date;
            photo2.image = ParseMaxImage(tL_photo, str);
        }
        return photo2;
    }

    private static ApiWrap$Image ParseMaxImage(TLRPC.Photo photo, String str) {
        if (photo == null) {
            return null;
        }
        ApiWrap$Image apiWrap$Image = new ApiWrap$Image();
        apiWrap$Image.file.suggestedPath = str;
        ArrayList arrayList = photo.sizes;
        int size = arrayList.size();
        long j = 0;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) obj;
            if (!(photoSize instanceof TLRPC.TL_photoSizeEmpty) && !(photoSize instanceof TLRPC.TL_photoStrippedSize) && !(photoSize instanceof TLRPC.TL_photoPathSize)) {
                int i2 = photoSize.f1694w;
                int i3 = photoSize.f1693h;
                long j2 = i2 * i3;
                if (j2 > j) {
                    apiWrap$Image.width = i2;
                    apiWrap$Image.height = i3;
                    TLRPC.TL_inputPhotoFileLocation tL_inputPhotoFileLocation = new TLRPC.TL_inputPhotoFileLocation();
                    tL_inputPhotoFileLocation.f1680id = photo.f1692id;
                    tL_inputPhotoFileLocation.access_hash = photo.access_hash;
                    tL_inputPhotoFileLocation.file_reference = photo.file_reference;
                    tL_inputPhotoFileLocation.thumb_size = photoSize.type;
                    apiWrap$Image.file.location = new ApiWrap$FileLocation();
                    ApiWrap$File apiWrap$File = apiWrap$Image.file;
                    ApiWrap$FileLocation apiWrap$FileLocation = apiWrap$File.location;
                    apiWrap$FileLocation.data = tL_inputPhotoFileLocation;
                    apiWrap$FileLocation.dcId = photo.dc_id;
                    if (photoSize instanceof TLRPC.TL_photoCachedSize) {
                        apiWrap$File.content = ((TLRPC.TL_photoCachedSize) photoSize).bytes;
                        apiWrap$File.size = r3.length;
                    } else if (photoSize instanceof TLRPC.TL_photoSizeProgressive) {
                        TLRPC.TL_photoSizeProgressive tL_photoSizeProgressive = (TLRPC.TL_photoSizeProgressive) photoSize;
                        if (!tL_photoSizeProgressive.sizes.isEmpty()) {
                            ApiWrap$File apiWrap$File2 = apiWrap$Image.file;
                            apiWrap$File2.content = new byte[0];
                            ArrayList arrayList2 = tL_photoSizeProgressive.sizes;
                            apiWrap$File2.size = ((Integer) arrayList2.get(arrayList2.size() - 1)).intValue();
                        }
                    } else {
                        apiWrap$File.content = new byte[0];
                        apiWrap$File.size = photoSize.size;
                    }
                    j = j2;
                }
            }
        }
        return apiWrap$Image;
    }

    private static String PrepareStoryFileName(int i, int i2, String str) {
        return "story_" + i + PrepareFileNameDatePart(i2) + str;
    }

    private static String PreparePhotoFileName(int i, int i2) {
        return "photo_" + i + PrepareFileNameDatePart(i2) + ".jpg";
    }

    private static String PrepareFileNameDatePart(int i) {
        if (i != 0) {
            return '@' + LocaleController.getInstance().getExportFileFormatter().format(((long) i) * 1000);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static void FillUserpicNames(HtmlWriter.UserpicData userpicData, ApiWrap$Peer apiWrap$Peer) {
        if (apiWrap$Peer == null) {
            return;
        }
        ApiWrap$User apiWrap$User = apiWrap$Peer.user;
        String strName = _UrlKt.FRAGMENT_ENCODE_SET;
        if (apiWrap$User != null) {
            ApiWrap$ContactInfo apiWrap$ContactInfo = apiWrap$User.info;
            String str = apiWrap$ContactInfo.firstName;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            userpicData.firstName = str;
            String str2 = apiWrap$ContactInfo.lastName;
            if (str2 != null) {
                strName = str2;
            }
            userpicData.lastName = strName;
            return;
        }
        if (apiWrap$Peer.chat != null) {
            if (apiWrap$Peer.name() != null) {
                strName = apiWrap$Peer.name();
            }
            userpicData.firstName = strName;
        }
    }

    public static void FillUserpicNames(HtmlWriter.UserpicData userpicData, String str) {
        String[] strArrSplit = str.split(" ");
        userpicData.firstName = strArrSplit[0];
        for (int i = 1; i != strArrSplit.length; i++) {
            if (!strArrSplit[i].isEmpty()) {
                StringBuilder sb = new StringBuilder();
                if (!userpicData.lastName.isEmpty()) {
                    sb.append(" ");
                }
                sb.append(strArrSplit[i]);
                userpicData.lastName = sb.toString();
            }
        }
    }

    public static String ComputeLocationKey(ApiWrap$FileLocation apiWrap$FileLocation) {
        String str = apiWrap$FileLocation.dcId + "_";
        TLRPC.InputFileLocation inputFileLocation = apiWrap$FileLocation.data;
        if (inputFileLocation instanceof TLRPC.TL_inputDocumentFileLocation) {
            return str + "doc_" + ((TLRPC.TL_inputDocumentFileLocation) inputFileLocation).f1680id;
        }
        if (inputFileLocation instanceof TLRPC.TL_inputPhotoFileLocation) {
            return str + "photo_" + ((TLRPC.TL_inputPhotoFileLocation) inputFileLocation).f1680id;
        }
        if (inputFileLocation instanceof ExportRequests$TL_inputTakeoutFileLocation) {
            return str + "takeout";
        }
        FileLog.m1134e("wtf! File location type in Export::ComputeLocationKey. " + apiWrap$FileLocation);
        return str;
    }

    public static boolean DisplayDate(int i, int i2) {
        if (i2 == 0) {
            return true;
        }
        return !Objects.equals(LocaleController.formatDate(i), LocaleController.formatDate(i2));
    }

    public static ArrayList ParseUserpicsSlice(ArrayList arrayList, int i) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            TLRPC.Photo photo = (TLRPC.Photo) obj;
            StringBuilder sb = new StringBuilder();
            sb.append("profile_pictures/");
            i++;
            sb.append(PreparePhotoFileName(i, photo.date));
            arrayList2.add(ParsePhoto(photo, sb.toString()));
        }
        return arrayList2;
    }

    public static String NoFileDescription(ApiWrap$File.SkipReason skipReason) {
        int i = C10882.f280xd696c439[skipReason.ordinal()];
        if (i == 1) {
            return "Unavailable, please try again later.";
        }
        if (i == 2) {
            return "Exceeds maximum size, change data exporting settings to download.";
        }
        if (i == 3) {
            return "Not included, change data exporting settings to download.";
        }
        if (i == 4) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        throw new RuntimeException("Skip reason in NoFileDescription.");
    }

    public static ApiWrap$ContactsList ParseContactsList(Vector vector) {
        ApiWrap$ContactsList apiWrap$ContactsList = new ApiWrap$ContactsList();
        apiWrap$ContactsList.list.ensureCapacity(vector.objects.size());
        ArrayList arrayList = vector.objects;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ExportRequests$SavedContact exportRequests$SavedContact = (ExportRequests$SavedContact) obj;
            ApiWrap$ContactInfo apiWrap$ContactInfo = new ApiWrap$ContactInfo();
            apiWrap$ContactInfo.firstName = exportRequests$SavedContact.first_name;
            apiWrap$ContactInfo.lastName = exportRequests$SavedContact.last_name;
            String str = exportRequests$SavedContact.phone;
            apiWrap$ContactInfo.phoneNumber = str;
            apiWrap$ContactInfo.date = exportRequests$SavedContact.date;
            apiWrap$ContactInfo.colorIndex = PeerColorIndex(StringBarePeerId(str));
            apiWrap$ContactsList.list.add(apiWrap$ContactInfo);
        }
        return apiWrap$ContactsList;
    }

    public static boolean AppendTopPeers(ApiWrap$ContactsList apiWrap$ContactsList, TLRPC.contacts_TopPeers contacts_toppeers) {
        if (contacts_toppeers instanceof TLRPC.TL_contacts_topPeersNotModified) {
            return false;
        }
        if (contacts_toppeers instanceof TLRPC.TL_contacts_topPeersDisabled) {
            return true;
        }
        if (!(contacts_toppeers instanceof TLRPC.TL_contacts_topPeers)) {
            return false;
        }
        TLRPC.TL_contacts_topPeers tL_contacts_topPeers = (TLRPC.TL_contacts_topPeers) contacts_toppeers;
        final HashMap mapParsePeersLists = ParsePeersLists(tL_contacts_topPeers.users, tL_contacts_topPeers.chats);
        Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: com.exteragram.messenger.export.api.DataTypesUtils$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                DataTypesUtils.$r8$lambda$vQE9eoidmhRnt1aHYXJ5PfuJR64(mapParsePeersLists, (ArrayList) obj, (ArrayList) obj2);
            }
        };
        ArrayList arrayList = tL_contacts_topPeers.categories;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.TL_topPeerCategoryPeers tL_topPeerCategoryPeers = (TLRPC.TL_topPeerCategoryPeers) obj;
            TLRPC.TopPeerCategory topPeerCategory = tL_topPeerCategoryPeers.category;
            if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryCorrespondents) {
                callback2.run(apiWrap$ContactsList.correspondents, tL_topPeerCategoryPeers.peers);
            } else if (topPeerCategory instanceof TLRPC.TL_topPeerCategoryBotsInline) {
                callback2.run(apiWrap$ContactsList.inlineBots, tL_topPeerCategoryPeers.peers);
            } else {
                if (!(topPeerCategory instanceof TLRPC.TL_topPeerCategoryPhoneCalls)) {
                    return false;
                }
                callback2.run(apiWrap$ContactsList.phoneCalls, tL_topPeerCategoryPeers.peers);
            }
        }
        return true;
    }

    public static /* synthetic */ void $r8$lambda$vQE9eoidmhRnt1aHYXJ5PfuJR64(HashMap map, ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            TLRPC.TL_topPeer tL_topPeer = (TLRPC.TL_topPeer) obj;
            ApiWrap$TopPeer apiWrap$TopPeer = new ApiWrap$TopPeer();
            ApiWrap$Peer apiWrap$PeerEmptyPeer = (ApiWrap$Peer) map.get(Long.valueOf(MessageObject.getPeerId(tL_topPeer.peer)));
            if (apiWrap$PeerEmptyPeer == null) {
                apiWrap$PeerEmptyPeer = EmptyPeer(tL_topPeer.peer);
            }
            apiWrap$TopPeer.peer = apiWrap$PeerEmptyPeer;
            apiWrap$TopPeer.rating = tL_topPeer.rating;
            arrayList.add(apiWrap$TopPeer);
        }
    }

    public static ArrayList SortedContactsIndices(ApiWrap$ContactsList apiWrap$ContactsList) {
        int size = apiWrap$ContactsList.list.size();
        final ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = apiWrap$ContactsList.list;
        int size2 = arrayList2.size();
        int i = 0;
        while (i < size2) {
            Object obj = arrayList2.get(i);
            i++;
            ApiWrap$ContactInfo apiWrap$ContactInfo = (ApiWrap$ContactInfo) obj;
            arrayList.add((apiWrap$ContactInfo.firstName + " " + apiWrap$ContactInfo.lastName).toLowerCase());
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList3.add(Integer.valueOf(i2));
        }
        Collections.sort(arrayList3, Comparator.CC.comparing(new Function() { // from class: com.exteragram.messenger.export.api.DataTypesUtils$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                return DataTypesUtils.$r8$lambda$hVjdozXZbebV18GIZWQWbnIt_UI(arrayList, (Integer) obj2);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }));
        return arrayList3;
    }

    public static /* synthetic */ String $r8$lambda$hVjdozXZbebV18GIZWQWbnIt_UI(ArrayList arrayList, Integer num) {
        return (String) arrayList.get(num.intValue());
    }
}
