package org.telegram.messenger.utils.tlutils;

import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_keyboard;

/* JADX INFO: loaded from: classes6.dex */
public abstract class TLKeyboardHelper {
    public static boolean isButtonWebView(TL_keyboard.KeyboardButtonProto keyboardButtonProto) {
        return isType(keyboardButtonProto, TL_keyboard.TL_inlineButtonTypeWebView.class) || isType(keyboardButtonProto, TL_keyboard.TL_buttonTypeSimpleWebView.class);
    }

    public static <T extends TL_keyboard.ButtonTypeProto> boolean isType(TL_keyboard.KeyboardButtonProto keyboardButtonProto, Class<T> cls) {
        return getType(keyboardButtonProto, cls) != null;
    }

    public static <T extends TL_keyboard.ButtonTypeProto> T getType(TL_keyboard.KeyboardButtonProto keyboardButtonProto, Class<T> cls) {
        if (keyboardButtonProto != null && cls != null) {
            TL_keyboard.ButtonTypeProto type = keyboardButtonProto.getType();
            if (cls.isInstance(type)) {
                return cls.cast(type);
            }
        }
        return null;
    }

    public static boolean isForceReply(TLRPC.ReplyMarkup replyMarkup) {
        if (replyMarkup == null) {
            return false;
        }
        if (replyMarkup instanceof TLRPC.TL_replyKeyboardForceReply) {
            return true;
        }
        if (replyMarkup instanceof TLRPC.TL_replyInlineMarkup) {
            return replyMarkup.force_reply;
        }
        if (replyMarkup instanceof TLRPC.TL_replyKeyboardMarkup) {
            return replyMarkup.force_reply;
        }
        return false;
    }
}
