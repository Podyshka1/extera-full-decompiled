package com.exteragram.messenger.utils.chats;

import java.util.ArrayList;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_keyboard;
import org.telegram.ui.Components.AnimatedEmojiDrawable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MessageEmojiPacks {
    public static ArrayList<TLRPC.InputStickerSet> collect(int i, MessageObject messageObject) {
        TLRPC.Message message;
        ArrayList<TLRPC.InputStickerSet> arrayList = new ArrayList<>();
        if (messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.TL_messageReactions tL_messageReactions = message.reactions;
            if (tL_messageReactions != null) {
                ArrayList<TLRPC.ReactionCount> arrayList2 = tL_messageReactions.results;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.ReactionCount reactionCount = arrayList2.get(i2);
                    i2++;
                    TLRPC.Reaction reaction = reactionCount.reaction;
                    if (reaction instanceof TLRPC.TL_reactionCustomEmoji) {
                        add(arrayList, AnimatedEmojiDrawable.findStickerSet(i, ((TLRPC.TL_reactionCustomEmoji) reaction).document_id));
                    }
                }
            }
            TLRPC.ReplyMarkup replyMarkup = messageObject.messageOwner.reply_markup;
            if (replyMarkup instanceof TLRPC.TL_replyInlineMarkup) {
                ArrayList<TL_keyboard.KeyboardInlineButtonRow> arrayList3 = ((TLRPC.TL_replyInlineMarkup) replyMarkup).rows;
                int size2 = arrayList3.size();
                int i3 = 0;
                while (i3 < size2) {
                    TL_keyboard.KeyboardInlineButtonRow keyboardInlineButtonRow = arrayList3.get(i3);
                    i3++;
                    ArrayList<TL_keyboard.KeyboardInlineButton> arrayList4 = keyboardInlineButtonRow.buttons;
                    int size3 = arrayList4.size();
                    int i4 = 0;
                    while (i4 < size3) {
                        TL_keyboard.KeyboardInlineButton keyboardInlineButton = arrayList4.get(i4);
                        i4++;
                        TL_keyboard.KeyboardButtonStyle keyboardButtonStyle = keyboardInlineButton.style;
                        if (keyboardButtonStyle != null) {
                            long j = keyboardButtonStyle.icon;
                            if (j != 0) {
                                add(arrayList, AnimatedEmojiDrawable.findStickerSet(i, j));
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static void addAll(ArrayList<TLRPC.InputStickerSet> arrayList, ArrayList<TLRPC.InputStickerSet> arrayList2) {
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            TLRPC.InputStickerSet inputStickerSet = arrayList2.get(i);
            i++;
            add(arrayList, inputStickerSet);
        }
    }

    private static void add(ArrayList<TLRPC.InputStickerSet> arrayList, TLRPC.InputStickerSet inputStickerSet) {
        if (inputStickerSet == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.InputStickerSet inputStickerSet2 = arrayList.get(i);
            i++;
            if (inputStickerSet2.id == inputStickerSet.id) {
                return;
            }
        }
        arrayList.add(inputStickerSet);
    }
}
