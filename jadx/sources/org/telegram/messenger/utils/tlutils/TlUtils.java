package org.telegram.messenger.utils.tlutils;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.MediaDataController;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;

/* JADX INFO: loaded from: classes.dex */
public abstract class TlUtils {
    public static TLRPC.InputPeer getInputPeerFromSendMessageRequest(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_sendMessage) {
            return ((TLRPC.TL_messages_sendMessage) tLObject).peer;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            return ((TLRPC.TL_messages_sendMedia) tLObject).peer;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
            return ((TLRPC.TL_messages_sendInlineBotResult) tLObject).peer;
        }
        if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
            return ((TLRPC.TL_messages_forwardMessages) tLObject).to_peer;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            return ((TLRPC.TL_messages_sendMultiMedia) tLObject).peer;
        }
        return null;
    }

    public static TLRPC.InputReplyTo getInputReplyToFromSendMessageRequest(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_sendMessage) {
            return ((TLRPC.TL_messages_sendMessage) tLObject).reply_to;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            return ((TLRPC.TL_messages_sendMedia) tLObject).reply_to;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
            return ((TLRPC.TL_messages_sendInlineBotResult) tLObject).reply_to;
        }
        if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
            return ((TLRPC.TL_messages_forwardMessages) tLObject).reply_to;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            return ((TLRPC.TL_messages_sendMultiMedia) tLObject).reply_to;
        }
        return null;
    }

    public static String getMessageFromSendMessageRequest(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_sendMessage) {
            return ((TLRPC.TL_messages_sendMessage) tLObject).message;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            return ((TLRPC.TL_messages_sendMedia) tLObject).message;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            ArrayList arrayList = ((TLRPC.TL_messages_sendMultiMedia) tLObject).multi_media;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TLRPC.TL_inputSingleMedia tL_inputSingleMedia = (TLRPC.TL_inputSingleMedia) obj;
                if (!TextUtils.isEmpty(tL_inputSingleMedia.message)) {
                    return tL_inputSingleMedia.message;
                }
            }
        }
        return null;
    }

    public static void setInputReplyToFromSendMessageRequest(TLObject tLObject, TLRPC.InputReplyTo inputReplyTo) {
        if (tLObject instanceof TLRPC.TL_messages_sendMessage) {
            TLRPC.TL_messages_sendMessage tL_messages_sendMessage = (TLRPC.TL_messages_sendMessage) tLObject;
            tL_messages_sendMessage.reply_to = inputReplyTo;
            tL_messages_sendMessage.flags |= 1;
            return;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            TLRPC.TL_messages_sendMedia tL_messages_sendMedia = (TLRPC.TL_messages_sendMedia) tLObject;
            tL_messages_sendMedia.reply_to = inputReplyTo;
            tL_messages_sendMedia.flags |= 1;
            return;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
            TLRPC.TL_messages_sendInlineBotResult tL_messages_sendInlineBotResult = (TLRPC.TL_messages_sendInlineBotResult) tLObject;
            tL_messages_sendInlineBotResult.reply_to = inputReplyTo;
            tL_messages_sendInlineBotResult.flags |= 1;
        } else if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
            TLRPC.TL_messages_forwardMessages tL_messages_forwardMessages = (TLRPC.TL_messages_forwardMessages) tLObject;
            tL_messages_forwardMessages.reply_to = inputReplyTo;
            tL_messages_forwardMessages.flags |= 1;
        } else if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            TLRPC.TL_messages_sendMultiMedia tL_messages_sendMultiMedia = (TLRPC.TL_messages_sendMultiMedia) tLObject;
            tL_messages_sendMultiMedia.reply_to = inputReplyTo;
            tL_messages_sendMultiMedia.flags |= 1;
        }
    }

    public static Object findFirstInstance(List list, Class cls) {
        if (list != null && cls != null) {
            for (Object obj : list) {
                if (cls.isInstance(obj)) {
                    return cls.cast(obj);
                }
            }
        }
        return null;
    }

    public static ArrayList findAllInstances(List list, Class cls) {
        ArrayList arrayList = new ArrayList();
        if (list != null && cls != null) {
            for (Object obj : list) {
                if (cls.isInstance(obj)) {
                    arrayList.add(cls.cast(obj));
                }
            }
        }
        return arrayList;
    }

    public static long getOrCalculateRandomIdFromSendMessageRequest(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_messages_sendMessage) {
            return ((TLRPC.TL_messages_sendMessage) tLObject).random_id;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMedia) {
            return ((TLRPC.TL_messages_sendMedia) tLObject).random_id;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendInlineBotResult) {
            return ((TLRPC.TL_messages_sendInlineBotResult) tLObject).random_id;
        }
        int i = 0;
        long jCalcHash = 0;
        if (tLObject instanceof TLRPC.TL_messages_forwardMessages) {
            ArrayList arrayList = ((TLRPC.TL_messages_forwardMessages) tLObject).random_id;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                jCalcHash = MediaDataController.calcHash(jCalcHash, ((Long) obj).longValue());
            }
            return jCalcHash;
        }
        if (tLObject instanceof TLRPC.TL_messages_sendMultiMedia) {
            ArrayList arrayList2 = ((TLRPC.TL_messages_sendMultiMedia) tLObject).multi_media;
            int size2 = arrayList2.size();
            while (i < size2) {
                Object obj2 = arrayList2.get(i);
                i++;
                jCalcHash = MediaDataController.calcHash(jCalcHash, ((TLRPC.TL_inputSingleMedia) obj2).random_id);
            }
        }
        return jCalcHash;
    }

    public static boolean isInstance(Object obj, Class... clsArr) {
        if (obj != null && clsArr != null) {
            for (Class cls : clsArr) {
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static TLRPC.Document getGiftDocument(TL_stars.StarGift starGift) {
        TLRPC.Document document = starGift.sticker;
        ArrayList<TL_stars.StarGiftAttribute> arrayList = starGift.attributes;
        if (arrayList != null && document == null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i);
                i++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributeModel) {
                    return ((TL_stars.starGiftAttributeModel) starGiftAttribute2).document;
                }
            }
        }
        return document;
    }

    public static TLRPC.Document getGiftDocumentPattern(TL_stars.StarGift starGift) {
        TLRPC.Document document = starGift.sticker;
        ArrayList<TL_stars.StarGiftAttribute> arrayList = starGift.attributes;
        if (arrayList != null && document == null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_stars.StarGiftAttribute starGiftAttribute = arrayList.get(i);
                i++;
                TL_stars.StarGiftAttribute starGiftAttribute2 = starGiftAttribute;
                if (starGiftAttribute2 instanceof TL_stars.starGiftAttributePattern) {
                    return ((TL_stars.starGiftAttributePattern) starGiftAttribute2).document;
                }
            }
        }
        return document;
    }

    public static String getThemeEmoticonOrGiftTitle(TLRPC.ChatTheme chatTheme) {
        if (chatTheme instanceof TLRPC.TL_chatTheme) {
            return ((TLRPC.TL_chatTheme) chatTheme).emoticon;
        }
        if (chatTheme instanceof TLRPC.TL_chatThemeUniqueGift) {
            return ((TLRPC.TL_chatThemeUniqueGift) chatTheme).gift.title;
        }
        return null;
    }

    public static TLRPC.GroupCall applyGroupCallUpdate(TLRPC.GroupCall groupCall, TLRPC.GroupCall groupCall2) {
        if ((groupCall2 instanceof TLRPC.TL_groupCall) && (groupCall instanceof TLRPC.TL_groupCall)) {
            TLRPC.TL_groupCall tL_groupCall = (TLRPC.TL_groupCall) groupCall2;
            if (tL_groupCall.min) {
                TLRPC.TL_groupCall tL_groupCall2 = (TLRPC.TL_groupCall) groupCall;
                tL_groupCall.can_change_join_muted = tL_groupCall2.can_change_join_muted;
                tL_groupCall.can_start_video = tL_groupCall2.can_start_video;
                tL_groupCall.creator = tL_groupCall2.creator;
                tL_groupCall.can_change_messages_enabled = tL_groupCall2.can_change_messages_enabled;
            }
        }
        return groupCall2;
    }
}
