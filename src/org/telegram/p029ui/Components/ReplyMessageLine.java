package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import androidx.core.math.MathUtils;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class ReplyMessageLine {
    public int backgroundColor;
    public final AnimatedColor backgroundColorAnimated;
    private LoadingDrawable backgroundLoadingDrawable;
    public int color1;
    public final AnimatedColor color1Animated;
    public int color2;
    public final AnimatedFloat color2Alpha;
    public final AnimatedColor color2Animated;
    public int color3;
    public final AnimatedFloat color3Alpha;
    public final AnimatedColor color3Animated;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emoji;
    public int emojiColor;
    private long emojiDocumentId;
    private boolean emojiLoaded;
    public final AnimatedFloat emojiLoadedT;
    private float emojiOffsetX;
    private float emojiOffsetY;
    public boolean hasColor2;
    public boolean hasColor3;
    private IconCoords[] iconCoords;
    private boolean lastHasColor3;
    private float lastHeight;
    private long lastLoadingTTime;
    private boolean loading;
    public final AnimatedFloat loadingStateT;
    private float loadingT;
    private float loadingTranslationT;
    public int nameColor;
    public final AnimatedColor nameColorAnimated;
    private final View parentView;
    private boolean reversedOut;
    private boolean sponsored;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable sticker;
    private long stickerDocumentId;
    public final AnimatedFloat switchStateT;
    private long wasCollectionId;
    private int wasColorId;
    private int wasMessageId;
    private final RectF rectF = new RectF();
    private final Path clipPath = new Path();
    private final Paint color1Paint = new Paint(1);
    private final Paint color2Paint = new Paint(1);
    private final Paint color3Paint = new Paint(1);
    public final float[] radii = new float[8];
    private final Path lineClipPath = new Path();
    private final Path backgroundPath = new Path();
    public final Paint backgroundPaint = new Paint();
    private Path color2Path = new Path();
    private Path color3Path = new Path();
    private int switchedCount = 0;
    private float emojiAlpha = 1.0f;

    public ReplyMessageLine(View view) {
        this.parentView = view;
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.telegram.ui.Components.ReplyMessageLine.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                if (ReplyMessageLine.this.emoji != null) {
                    ReplyMessageLine.this.emoji.attach();
                }
                if (ReplyMessageLine.this.sticker != null) {
                    ReplyMessageLine.this.sticker.attach();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                if (ReplyMessageLine.this.emoji != null) {
                    ReplyMessageLine.this.emoji.detach();
                }
                if (ReplyMessageLine.this.sticker != null) {
                    ReplyMessageLine.this.sticker.detach();
                }
            }
        });
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.backgroundColorAnimated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color1Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color2Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color3Animated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.nameColorAnimated = new AnimatedColor(view, 0L, 400L, cubicBezierInterpolator);
        this.color2Alpha = new AnimatedFloat(view, 0L, 400L, cubicBezierInterpolator);
        this.color3Alpha = new AnimatedFloat(view, 0L, 400L, cubicBezierInterpolator);
        this.emojiLoadedT = new AnimatedFloat(view, 0L, 440L, cubicBezierInterpolator);
        this.loadingStateT = new AnimatedFloat(view, 0L, 320L, cubicBezierInterpolator);
        this.switchStateT = new AnimatedFloat(view, 0L, 320L, cubicBezierInterpolator);
    }

    public int getColor() {
        return this.reversedOut ? this.color2 : this.color1;
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
    }

    private void resolveColor(MessageObject messageObject, int i, Theme.ResourcesProvider resourcesProvider) {
        if (resourcesProvider != null) {
            resourcesProvider.isDark();
        } else {
            Theme.isCurrentThemeDark();
        }
        if (this.wasColorId != i) {
            int id = messageObject != null ? messageObject.getId() : 0;
            if (id == this.wasMessageId) {
                this.switchedCount++;
            }
            this.wasCollectionId = 0L;
            this.wasColorId = i;
            this.wasMessageId = id;
        }
        if (i < 7) {
            int color = Theme.getColor(Theme.keys_avatar_nameInMessage[i], resourcesProvider);
            this.color3 = color;
            this.color2 = color;
            this.color1 = color;
            this.hasColor3 = false;
            this.hasColor2 = false;
            return;
        }
        MessagesController.PeerColors peerColors = MessagesController.getInstance(messageObject != null ? messageObject.currentAccount : UserConfig.selectedAccount).peerColors;
        MessagesController.PeerColor color2 = peerColors != null ? peerColors.getColor(i) : null;
        if (color2 == null) {
            int color3 = Theme.getColor((messageObject == null || !messageObject.isOutOwner()) ? Theme.key_chat_inReplyLine : Theme.key_chat_outReplyLine, resourcesProvider);
            this.color3 = color3;
            this.color2 = color3;
            this.color1 = color3;
            this.hasColor3 = false;
            this.hasColor2 = false;
            return;
        }
        this.color1 = color2.getColor(0, resourcesProvider);
        this.color2 = color2.getColor(1, resourcesProvider);
        int color4 = color2.getColor(2, resourcesProvider);
        this.color3 = color4;
        int i2 = this.color2;
        int i3 = this.color1;
        this.hasColor2 = i2 != i3;
        boolean z = color4 != i3;
        this.hasColor3 = z;
        if (z) {
            this.color3 = i2;
            this.color2 = color4;
        }
    }

    private int resolveCollectionColor(MessageObject messageObject, TLRPC.TL_peerColorCollectible tL_peerColorCollectible, Theme.ResourcesProvider resourcesProvider) {
        boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        int i = (!zIsDark || (tL_peerColorCollectible.flags & 1) == 0) ? tL_peerColorCollectible.accent_color : tL_peerColorCollectible.dark_accent_color;
        ArrayList arrayList = (!zIsDark || (tL_peerColorCollectible.flags & 2) == 0) ? tL_peerColorCollectible.colors : tL_peerColorCollectible.dark_colors;
        if (arrayList == null || arrayList.isEmpty()) {
            return 0;
        }
        if (this.wasCollectionId != tL_peerColorCollectible.collectible_id) {
            int id = messageObject != null ? messageObject.getId() : 0;
            if (id == this.wasMessageId) {
                this.switchedCount++;
            }
            this.wasColorId = 0;
            this.wasCollectionId = tL_peerColorCollectible.collectible_id;
            this.wasMessageId = id;
        }
        this.reversedOut = false;
        if (!ExteraConfig.replyColors) {
            this.hasColor2 = false;
            this.hasColor3 = false;
            int color = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
            this.color3 = color;
            this.color2 = color;
            this.color1 = color;
            this.nameColor = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
        } else {
            this.color1 = ((Integer) tL_peerColorCollectible.colors.get(0)).intValue() | (-16777216);
            boolean z = arrayList.size() >= 2;
            this.hasColor2 = z;
            if (z) {
                this.color2 = ((Integer) tL_peerColorCollectible.colors.get(1)).intValue() | (-16777216);
            }
            boolean z2 = arrayList.size() >= 3;
            this.hasColor3 = z2;
            if (z2) {
                this.color3 = ((Integer) tL_peerColorCollectible.colors.get(2)).intValue() | (-16777216);
            }
            this.nameColor = i | (-16777216);
        }
        if (!ExteraConfig.replyBackground) {
            this.backgroundColor = 0;
        } else {
            this.backgroundColor = Theme.multAlpha(ExteraConfig.replyColors ? this.nameColor : this.color1, 0.1f);
        }
        if (ExteraConfig.replyEmoji) {
            this.emojiDocumentId = tL_peerColorCollectible.background_emoji_id;
            this.stickerDocumentId = tL_peerColorCollectible.gift_emoji_id;
        } else {
            this.emojiDocumentId = 0L;
            this.stickerDocumentId = 0L;
        }
        if (this.emojiDocumentId != 0 && this.emoji == null) {
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.parentView, false, AndroidUtilities.m1124dp(20.0f), 13);
            View view = this.parentView;
            if (!(view instanceof ChatMessageCell) ? view.isAttachedToWindow() : ((ChatMessageCell) view).isCellAttachedToWindow()) {
                this.emoji.attach();
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null && swapAnimatedEmojiDrawable.set(this.emojiDocumentId, true)) {
            this.emojiLoaded = false;
        }
        this.emojiColor = this.nameColor;
        if (this.stickerDocumentId != 0 && this.sticker == null) {
            this.sticker = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.parentView, false, AndroidUtilities.m1124dp(20.0f), 13);
            View view2 = this.parentView;
            if (!(view2 instanceof ChatMessageCell) ? view2.isAttachedToWindow() : ((ChatMessageCell) view2).isCellAttachedToWindow()) {
                this.sticker.attach();
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.sticker;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.set(this.stickerDocumentId, true);
        }
        return this.nameColorAnimated.set(this.nameColor);
    }

    /* JADX WARN: Removed duplicated region for block: B:230:0x038e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int check(MessageObject messageObject, TLRPC.User user, TLRPC.Chat chat, Theme.ResourcesProvider resourcesProvider, int i) {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        TLRPC.MessageFwdHeader messageFwdHeader;
        MessageObject messageObject2;
        TLRPC.Message message2;
        int colorId;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Peer peer;
        int colorId2;
        TLRPC.PeerColor peerColor;
        TLRPC.Message message3;
        TLRPC.PeerColor peerColor2;
        TLRPC.MessageFwdHeader messageFwdHeader3;
        int iMultAlpha;
        long j;
        TLRPC.Message message4;
        int colorId3;
        TLRPC.TL_peerColorCollectible tL_peerColorCollectible;
        TLRPC.User currentUser = user;
        boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        if (!messageObject.isOutOwner() && i != 2 && (tL_peerColorCollectible = messageObject.overrideLinkPeerColor) != null) {
            return resolveCollectionColor(messageObject, tL_peerColorCollectible, resourcesProvider);
        }
        this.reversedOut = false;
        this.emojiDocumentId = 0L;
        this.stickerDocumentId = 0L;
        this.sponsored = messageObject.isSponsored();
        if (i == 4 && (message4 = messageObject.messageOwner) != null && MessageObject.getMedia(message4) != null && (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaContact)) {
            long j2 = MessageObject.getMedia(messageObject.messageOwner).user_id;
            TLRPC.User user2 = j2 != 0 ? MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(j2)) : null;
            if (!messageObject.isOutOwner() && i != 2 && user2 != null) {
                TLRPC.PeerColor peerColor3 = user2.color;
                if (peerColor3 instanceof TLRPC.TL_peerColorCollectible) {
                    return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor3, resourcesProvider);
                }
            }
            if (user2 != null) {
                colorId3 = UserObject.getColorId(user2);
                this.emojiDocumentId = UserObject.getEmojiId(user2);
            } else {
                colorId3 = 0;
            }
            resolveColor(messageObject, colorId3, resourcesProvider);
            this.backgroundColor = Theme.multAlpha(this.color1, 0.1f);
            this.nameColor = this.color1;
        } else if (i != 0 && (messageObject.overrideLinkColor >= 0 || (messageObject.messageOwner != null && (((messageObject.isFromUser() || DialogObject.isEncryptedDialog(messageObject.getDialogId())) && currentUser != null) || ((messageObject.isFromChannel() && chat != null) || (((message3 = messageObject.messageOwner) != null && (messageFwdHeader3 = message3.fwd_from) != null && messageFwdHeader3.from_id != null) || (messageObject.isSponsored() && (peerColor2 = messageObject.sponsoredColor) != null && peerColor2.color != -1))))))) {
            int colorId4 = messageObject.overrideLinkColor;
            if (colorId4 < 0) {
                if (!messageObject.isSponsored() || (peerColor = messageObject.sponsoredColor) == null || (colorId2 = peerColor.color) == -1) {
                    TLRPC.Message message5 = messageObject.messageOwner;
                    if (message5 != null && (messageFwdHeader2 = message5.fwd_from) != null && (peer = messageFwdHeader2.from_id) != null) {
                        long peerDialogId = DialogObject.getPeerDialogId(peer);
                        if (peerDialogId < 0) {
                            TLRPC.Chat chat2 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-peerDialogId));
                            if (!messageObject.isOutOwner() && i != 2 && chat2 != null) {
                                TLRPC.PeerColor peerColor4 = chat2.color;
                                if (peerColor4 instanceof TLRPC.TL_peerColorCollectible) {
                                    return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor4, resourcesProvider);
                                }
                            }
                            colorId2 = chat2 != null ? ChatObject.getColorId(chat2) : 5;
                            if (i == 3) {
                                this.emojiDocumentId = ChatObject.getEmojiId(chat2);
                            }
                        } else {
                            TLRPC.User user3 = MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(peerDialogId));
                            if (!messageObject.isOutOwner() && i != 2 && user3 != null) {
                                TLRPC.PeerColor peerColor5 = user3.color;
                                if (peerColor5 instanceof TLRPC.TL_peerColorCollectible) {
                                    return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor5, resourcesProvider);
                                }
                            }
                            colorId2 = user3 != null ? UserObject.getColorId(user3) : 5;
                            if (i == 3) {
                                this.emojiDocumentId = UserObject.getEmojiId(user3);
                            }
                        }
                    } else if (DialogObject.isEncryptedDialog(messageObject.getDialogId()) && currentUser != null) {
                        TLRPC.User currentUser2 = messageObject.isOutOwner() ? UserConfig.getInstance(messageObject.currentAccount).getCurrentUser() : currentUser;
                        if (currentUser2 != null) {
                            currentUser = currentUser2;
                        }
                        if (!messageObject.isOutOwner() && i != 2) {
                            TLRPC.PeerColor peerColor6 = currentUser.color;
                            if (peerColor6 instanceof TLRPC.TL_peerColorCollectible) {
                                return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor6, resourcesProvider);
                            }
                        }
                        colorId4 = UserObject.getColorId(currentUser);
                        if (i == 3) {
                            this.emojiDocumentId = UserObject.getEmojiId(currentUser);
                        }
                    } else if (messageObject.isFromUser() && currentUser != null) {
                        if (!messageObject.isOutOwner() && i != 2) {
                            TLRPC.PeerColor peerColor7 = currentUser.color;
                            if (peerColor7 instanceof TLRPC.TL_peerColorCollectible) {
                                return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor7, resourcesProvider);
                            }
                        }
                        colorId4 = UserObject.getColorId(currentUser);
                        if (i == 3) {
                            this.emojiDocumentId = UserObject.getEmojiId(currentUser);
                        }
                    } else if (!messageObject.isFromChannel() || chat == null) {
                        colorId4 = 0;
                    } else {
                        if (!messageObject.isOutOwner() && i != 2) {
                            TLRPC.PeerColor peerColor8 = chat.color;
                            if (peerColor8 instanceof TLRPC.TL_peerColorCollectible) {
                                return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor8, resourcesProvider);
                            }
                        }
                        if (chat.signature_profiles) {
                            long fromChatId = messageObject.getFromChatId();
                            if (fromChatId >= 0) {
                                TLRPC.User user4 = MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(fromChatId));
                                colorId = UserObject.getColorId(user4);
                                if (i == 3) {
                                    this.emojiDocumentId = UserObject.getEmojiId(user4);
                                }
                            } else {
                                TLRPC.Chat chat3 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(-fromChatId));
                                colorId = ChatObject.getColorId(chat3);
                                if (i == 3) {
                                    this.emojiDocumentId = ChatObject.getEmojiId(chat3);
                                }
                            }
                            colorId4 = colorId;
                        } else {
                            colorId4 = ChatObject.getColorId(chat);
                            if (i == 3) {
                                this.emojiDocumentId = ChatObject.getEmojiId(chat);
                            }
                        }
                    }
                } else if (i == 3) {
                    this.emojiDocumentId = peerColor.background_emoji_id;
                }
                colorId4 = colorId2;
            }
            if (!ExteraConfig.replyColors) {
                this.hasColor3 = false;
                this.hasColor2 = false;
                int color = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
                this.color3 = color;
                this.color2 = color;
                this.color1 = color;
                this.nameColor = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
            } else {
                resolveColor(messageObject, colorId4, resourcesProvider);
                this.nameColor = this.color1;
            }
            this.backgroundColor = !ExteraConfig.replyBackground ? 0 : Theme.multAlpha(this.color1, 0.1f);
        } else if (i == 0 && (messageObject.overrideLinkColor >= 0 || ((message = messageObject.messageOwner) != null && messageObject.replyMessageObject != null && (messageReplyHeader = message.reply_to) != null && (((messageFwdHeader = messageReplyHeader.reply_from) == null || TextUtils.isEmpty(messageFwdHeader.from_name)) && (message2 = (messageObject2 = messageObject.replyMessageObject).messageOwner) != null && message2.from_id != null && (messageObject2.isFromUser() || DialogObject.isEncryptedDialog(messageObject.getDialogId()) || messageObject.replyMessageObject.isFromChannel()))))) {
            int colorId5 = messageObject.overrideLinkColor;
            if (colorId5 < 0) {
                if (DialogObject.isEncryptedDialog(messageObject.replyMessageObject.getDialogId())) {
                    if (messageObject.replyMessageObject.isOutOwner()) {
                        currentUser = UserConfig.getInstance(messageObject.replyMessageObject.currentAccount).getCurrentUser();
                    }
                    if (currentUser != null) {
                        colorId5 = UserObject.getColorId(currentUser);
                        this.emojiDocumentId = UserObject.getEmojiId(currentUser);
                    } else {
                        colorId5 = 0;
                    }
                } else if (messageObject.replyMessageObject.isFromUser()) {
                    TLRPC.User user5 = MessagesController.getInstance(messageObject.currentAccount).getUser(Long.valueOf(messageObject.replyMessageObject.messageOwner.from_id.user_id));
                    if (!messageObject.isOutOwner() && i != 2 && user5 != null) {
                        TLRPC.PeerColor peerColor9 = user5.color;
                        if (peerColor9 instanceof TLRPC.TL_peerColorCollectible) {
                            return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor9, resourcesProvider);
                        }
                    }
                    if (user5 != null) {
                        colorId5 = UserObject.getColorId(user5);
                        this.emojiDocumentId = UserObject.getEmojiId(user5);
                    }
                } else if (messageObject.replyMessageObject.isFromChannel()) {
                    TLRPC.Chat chat4 = MessagesController.getInstance(messageObject.currentAccount).getChat(Long.valueOf(messageObject.replyMessageObject.messageOwner.from_id.channel_id));
                    if (!messageObject.isOutOwner() && i != 2 && chat4 != null) {
                        TLRPC.PeerColor peerColor10 = chat4.color;
                        if (peerColor10 instanceof TLRPC.TL_peerColorCollectible) {
                            return resolveCollectionColor(messageObject, (TLRPC.TL_peerColorCollectible) peerColor10, resourcesProvider);
                        }
                    }
                    if (chat4 != null) {
                        colorId5 = ChatObject.getColorId(chat4);
                        this.emojiDocumentId = ChatObject.getEmojiId(chat4);
                    }
                }
            }
            if (!ExteraConfig.replyColors) {
                this.hasColor3 = false;
                this.hasColor2 = false;
                int color2 = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
                this.color3 = color2;
                this.color2 = color2;
                this.color1 = color2;
                this.nameColor = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
            } else {
                resolveColor(messageObject.replyMessageObject, colorId5, resourcesProvider);
                this.nameColor = this.color1;
            }
            this.backgroundColor = !ExteraConfig.replyBackground ? 0 : Theme.multAlpha(this.color1, 0.1f);
        } else {
            this.hasColor2 = false;
            this.hasColor3 = false;
            int color3 = Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider);
            this.color3 = color3;
            this.color2 = color3;
            this.color1 = color3;
            this.backgroundColor = (ExteraConfig.replyBackground || i == 1) ? Theme.multAlpha(color3, 0.1f) : 0;
            this.nameColor = Theme.getColor(Theme.key_chat_inReplyNameText, resourcesProvider);
        }
        if (messageObject.shouldDrawWithoutBackground()) {
            this.hasColor2 = false;
            this.hasColor3 = false;
            int color4 = Theme.isCurrentThemeMonet() ? Theme.getColor(Theme.key_chat_inReplyLine, resourcesProvider) : -1;
            this.color3 = color4;
            this.color2 = color4;
            this.color1 = color4;
            this.backgroundColor = 0;
            this.nameColor = Theme.getColor(Theme.key_chat_stickerReplyNameText, resourcesProvider);
        } else if (messageObject.isOutOwner() || i == 2) {
            if (i == 2 && !messageObject.isOutOwner()) {
                int color5 = Theme.getColor(Theme.key_chat_inCodeBackground, resourcesProvider);
                this.color3 = color5;
                this.color2 = color5;
                this.color1 = color5;
            } else {
                int color6 = Theme.getColor((this.hasColor2 || this.hasColor3) ? Theme.key_chat_outReplyLine2 : Theme.key_chat_outReplyLine, resourcesProvider);
                this.color3 = color6;
                this.color2 = color6;
                this.color1 = color6;
            }
            if (this.hasColor3) {
                this.reversedOut = true;
                this.color1 = Theme.multAlpha(this.color1, 0.2f);
                this.color2 = Theme.multAlpha(this.color2, 0.5f);
            } else if (this.hasColor2) {
                this.reversedOut = true;
                this.color1 = Theme.multAlpha(this.color1, 0.35f);
            }
            if (ExteraConfig.replyBackground || i != 0) {
                iMultAlpha = Theme.multAlpha(this.color3, zIsDark ? 0.12f : 0.1f);
            } else {
                iMultAlpha = 0;
            }
            this.backgroundColor = iMultAlpha;
            this.nameColor = Theme.getColor(Theme.key_chat_outReplyNameText, resourcesProvider);
        }
        if (i == 0 || i == 3 || i == 4) {
            long j3 = messageObject.overrideLinkEmoji;
            if (j3 != -1) {
                this.emojiDocumentId = j3;
            }
        }
        if (ExteraConfig.replyEmoji) {
            j = 0;
        } else {
            j = 0;
            this.emojiDocumentId = 0L;
        }
        if (this.emojiDocumentId != j && this.emoji == null) {
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.parentView, false, AndroidUtilities.m1124dp(20.0f), 13);
            View view = this.parentView;
            if (!(view instanceof ChatMessageCell) ? view.isAttachedToWindow() : ((ChatMessageCell) view).isCellAttachedToWindow()) {
                this.emoji.attach();
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null && swapAnimatedEmojiDrawable.set(this.emojiDocumentId, true)) {
            this.emojiLoaded = false;
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.sticker;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.set(this.stickerDocumentId, true);
        }
        this.emojiColor = getColor();
        return this.nameColorAnimated.set(this.nameColor);
    }

    public boolean hasSticker() {
        return this.stickerDocumentId != 0;
    }

    public int setFactCheck(Theme.ResourcesProvider resourcesProvider) {
        int i = Theme.key_text_RedBold;
        this.nameColor = Theme.getColor(i, resourcesProvider);
        this.color1 = Theme.getColor(i, resourcesProvider);
        this.hasColor2 = false;
        this.hasColor3 = false;
        this.backgroundColor = Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.1f);
        if (this.emojiDocumentId != 0 && this.emoji == null) {
            this.emoji = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.parentView, false, AndroidUtilities.m1124dp(20.0f), 13);
            View view = this.parentView;
            if (!(view instanceof ChatMessageCell) ? view.isAttachedToWindow() : ((ChatMessageCell) view).isCellAttachedToWindow()) {
                this.emoji.attach();
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null && swapAnimatedEmojiDrawable.set(this.emojiDocumentId, true)) {
            this.emojiLoaded = false;
        }
        this.emojiColor = getColor();
        return this.nameColorAnimated.set(this.nameColor);
    }

    public void setEmojiAlpha(float f) {
        this.emojiAlpha = f;
    }

    public void resetAnimation() {
        this.color1Animated.set(this.color1, true);
        this.color2Animated.set(this.color2, true);
        this.color2Alpha.set(this.hasColor2, true);
        this.nameColorAnimated.set(this.nameColor, true);
        this.backgroundColorAnimated.set(this.backgroundColor, true);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.resetAnimation();
        }
    }

    public void setLoading(boolean z) {
        LoadingDrawable loadingDrawable;
        if (!z && this.loading) {
            this.loadingT = 0.0f;
            LoadingDrawable loadingDrawable2 = this.backgroundLoadingDrawable;
            if (loadingDrawable2 != null) {
                loadingDrawable2.disappear();
            }
        } else if (z && !this.loading && (loadingDrawable = this.backgroundLoadingDrawable) != null) {
            loadingDrawable.resetDisappear();
            this.backgroundLoadingDrawable.reset();
        }
        this.loading = z;
    }

    private void incrementLoadingT() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        float f = this.loadingStateT.set(this.loading);
        this.loadingT += Math.min(30L, jCurrentTimeMillis - this.lastLoadingTTime) * f;
        this.loadingTranslationT += Math.min(30L, jCurrentTimeMillis - this.lastLoadingTTime) * f;
        this.lastLoadingTTime = jCurrentTimeMillis;
    }

    public void drawLine(Canvas canvas, RectF rectF) {
        drawLine(canvas, rectF, 1.0f);
    }

    public void drawLine(Canvas canvas, RectF rectF, float f) {
        float f2;
        boolean z;
        float fHeight;
        int iM1270m;
        canvas.save();
        this.clipPath.rewind();
        int iFloor = (int) Math.floor(SharedConfig.bubbleRadius / (this.sponsored ? 2.0f : 3.0f));
        RectF rectF2 = this.rectF;
        float f3 = rectF.left;
        rectF2.set(f3, rectF.top, Math.max(AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(iFloor * 2)) + f3, rectF.bottom);
        Path path = this.clipPath;
        RectF rectF3 = this.rectF;
        float f4 = iFloor;
        float fM1124dp = AndroidUtilities.m1124dp(f4);
        float fM1124dp2 = AndroidUtilities.m1124dp(f4);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF3, fM1124dp, fM1124dp2, direction);
        canvas.clipPath(this.clipPath);
        float f5 = rectF.left;
        canvas.clipRect(f5, rectF.top, AndroidUtilities.m1124dp(3.0f) + f5, rectF.bottom);
        this.color1Paint.setColor(Theme.multAlpha(this.color1Animated.set(this.color1), f));
        this.color2Paint.setColor(Theme.multAlpha(this.color2Animated.set(this.color2), f));
        this.color3Paint.setColor(Theme.multAlpha(this.color3Animated.set(this.color3), f));
        float f6 = this.loadingStateT.set(this.loading);
        if (f6 <= 0.0f || this.hasColor2) {
            f2 = 2.0f;
            z = false;
        } else {
            canvas.save();
            int alpha = this.color1Paint.getAlpha();
            this.color1Paint.setAlpha((int) (alpha * 0.3f));
            canvas.drawPaint(this.color1Paint);
            this.color1Paint.setAlpha(alpha);
            incrementLoadingT();
            float fPow = ((float) Math.pow((this.loadingT / 240.0f) / 4.0f, 0.8500000238418579d)) * 4.0f;
            f2 = 2.0f;
            this.rectF.set(rectF.left, rectF.top + (rectF.height() * AndroidUtilities.lerp(0.0f, 1.0f - CubicBezierInterpolator.EASE_IN.getInterpolation(MathUtils.clamp(((Math.max(fPow, 0.5f) + 1.5f) % 3.5f) * 0.5f, 0.0f, 1.0f)), f6)), rectF.left + AndroidUtilities.m1124dp(6.0f), rectF.top + (rectF.height() * AndroidUtilities.lerp(1.0f, 1.0f - CubicBezierInterpolator.EASE_OUT.getInterpolation(MathUtils.clamp((((fPow + 1.5f) % 3.5f) - 1.5f) * 0.5f, 0.0f, 1.0f)), f6)));
            this.lineClipPath.rewind();
            this.lineClipPath.addRoundRect(this.rectF, AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), direction);
            canvas.clipPath(this.lineClipPath);
            this.parentView.invalidate();
            z = true;
        }
        canvas.drawPaint(this.color1Paint);
        float f7 = this.color2Alpha.set(this.hasColor2);
        if (f7 > 0.0f) {
            canvas.save();
            canvas.translate(rectF.left, rectF.top);
            incrementLoadingT();
            float f8 = this.color3Alpha.set(this.hasColor3);
            if (this.hasColor3) {
                fHeight = rectF.height();
                iM1270m = ReplyMessageLine$$ExternalSyntheticBackport0.m1270m((int) rectF.height(), AndroidUtilities.m1124dp(18.99f));
            } else {
                fHeight = rectF.height();
                iM1270m = ReplyMessageLine$$ExternalSyntheticBackport0.m1270m((int) rectF.height(), AndroidUtilities.m1124dp(12.66f));
            }
            canvas.translate(0.0f, -(((((this.loadingTranslationT + this.switchStateT.set(this.switchedCount * 425)) + (this.reversedOut ? 100 : 0)) / 1000.0f) * AndroidUtilities.m1124dp(30.0f)) % (fHeight - iM1270m)));
            checkColorPathes(rectF.height() * f2);
            int alpha2 = this.color2Paint.getAlpha();
            this.color2Paint.setAlpha((int) (alpha2 * f7));
            canvas.drawPath(this.color2Path, this.color2Paint);
            this.color2Paint.setAlpha(alpha2);
            int alpha3 = this.color3Paint.getAlpha();
            this.color3Paint.setAlpha((int) (alpha3 * f8));
            canvas.drawPath(this.color3Path, this.color3Paint);
            this.color3Paint.setAlpha(alpha3);
            canvas.restore();
        }
        if (z) {
            canvas.restore();
        }
        canvas.restore();
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4) {
        drawBackground(canvas, rectF, f, f2, f3, f4, false, false);
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4, boolean z, boolean z2) {
        float[] fArr = this.radii;
        float fMax = Math.max(AndroidUtilities.m1124dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m1124dp(f));
        fArr[1] = fMax;
        fArr[0] = fMax;
        float[] fArr2 = this.radii;
        float fM1124dp = AndroidUtilities.m1124dp(f2);
        fArr2[3] = fM1124dp;
        fArr2[2] = fM1124dp;
        float[] fArr3 = this.radii;
        float fM1124dp2 = AndroidUtilities.m1124dp(f3);
        fArr3[5] = fM1124dp2;
        fArr3[4] = fM1124dp2;
        float[] fArr4 = this.radii;
        float fMax2 = Math.max(AndroidUtilities.m1124dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m1124dp(f3));
        fArr4[7] = fMax2;
        fArr4[6] = fMax2;
        drawBackground(canvas, rectF, f4, z, z2);
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static class IconCoords {

        /* JADX INFO: renamed from: a */
        public float f2062a;

        /* JADX INFO: renamed from: q */
        public boolean f2063q;

        /* JADX INFO: renamed from: s */
        public float f2064s;

        /* JADX INFO: renamed from: x */
        public float f2065x;

        /* JADX INFO: renamed from: y */
        public float f2066y;

        public IconCoords(float f, float f2, float f3, float f4, boolean z) {
            this(f, f2, f3, f4);
            this.f2063q = z;
        }

        public IconCoords(float f, float f2, float f3, float f4) {
            this.f2065x = f;
            this.f2066y = f2;
            this.f2064s = f3;
            this.f2062a = f4;
        }
    }

    public ReplyMessageLine offsetEmoji(float f, float f2) {
        this.emojiOffsetX = f;
        this.emojiOffsetY = f2;
        return this;
    }

    public void drawBackground(Canvas canvas, RectF rectF, float f, boolean z, boolean z2) {
        int i;
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        if (!z2) {
            this.backgroundPath.rewind();
            this.backgroundPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
            this.backgroundPaint.setColor(this.backgroundColorAnimated.set(this.backgroundColor));
            this.backgroundPaint.setAlpha((int) (r3.getAlpha() * f));
            canvas.drawPath(this.backgroundPath, this.backgroundPaint);
        }
        if (this.emoji == null) {
            return;
        }
        float f2 = this.emojiLoadedT.set(isEmojiLoaded());
        if (f2 <= 0.0f || this.emojiAlpha <= 0.0f) {
            return;
        }
        if (this.iconCoords == null) {
            i = 0;
            this.iconCoords = new IconCoords[]{new IconCoords(4.0f, -6.33f, 1.0f, 1.0f), new IconCoords(30.0f, 3.0f, 0.78f, 0.9f), new IconCoords(46.0f, -17.0f, 0.6f, 0.6f), new IconCoords(69.66f, -0.666f, 0.87f, 0.7f), new IconCoords(98.0f, -12.6f, 1.03f, 0.3f), new IconCoords(51.0f, 24.0f, 1.0f, 0.5f), new IconCoords(6.33f, 20.0f, 0.77f, 0.7f), new IconCoords(-19.0f, 12.0f, 0.8f, 0.6f, true), new IconCoords(-22.0f, 36.0f, 0.7f, 0.5f, true)};
        } else {
            i = 0;
        }
        canvas.save();
        canvas.clipRect(rectF);
        canvas.translate(this.emojiOffsetX, this.emojiOffsetY);
        float fMax = Math.max(rectF.right - AndroidUtilities.m1124dp(15.0f), rectF.centerX());
        if (z) {
            fMax -= AndroidUtilities.m1124dp(12.0f);
        }
        float fMin = Math.min(rectF.centerY(), rectF.top + AndroidUtilities.m1124dp(21.0f));
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.sticker;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.setAlpha((int) (f * 255.0f));
        }
        this.emoji.setColor(Integer.valueOf(this.emojiColor));
        int i2 = i;
        while (true) {
            IconCoords[] iconCoordsArr = this.iconCoords;
            if (i2 < iconCoordsArr.length) {
                if (i2 != 0 || (swapAnimatedEmojiDrawable = this.sticker) == null || this.stickerDocumentId == 0) {
                    swapAnimatedEmojiDrawable = this.emoji;
                }
                IconCoords iconCoords = iconCoordsArr[i2];
                if (!iconCoords.f2063q || z) {
                    swapAnimatedEmojiDrawable.setAlpha((int) ((swapAnimatedEmojiDrawable == this.sticker ? 1.0f : 0.3f) * 255.0f * iconCoords.f2062a * this.emojiAlpha));
                    float fM1124dp = fMax - AndroidUtilities.m1124dp(iconCoords.f2065x);
                    float fM1124dp2 = AndroidUtilities.m1124dp(iconCoords.f2066y) + fMin;
                    float fM1124dp3 = AndroidUtilities.m1124dp(10.0f) * iconCoords.f2064s * f2;
                    swapAnimatedEmojiDrawable.setBounds((int) (fM1124dp - fM1124dp3), (int) (fM1124dp2 - fM1124dp3), (int) (fM1124dp + fM1124dp3), (int) (fM1124dp2 + fM1124dp3));
                    swapAnimatedEmojiDrawable.draw(canvas);
                }
                i2++;
            } else {
                canvas.restore();
                return;
            }
        }
    }

    private boolean isEmojiLoaded() {
        if (this.emojiLoaded) {
            return true;
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emoji;
        if (swapAnimatedEmojiDrawable == null || !(swapAnimatedEmojiDrawable.getDrawable() instanceof AnimatedEmojiDrawable)) {
            return false;
        }
        AnimatedEmojiDrawable animatedEmojiDrawable = (AnimatedEmojiDrawable) this.emoji.getDrawable();
        if (animatedEmojiDrawable.getImageReceiver() == null || !animatedEmojiDrawable.getImageReceiver().hasImageLoaded()) {
            return false;
        }
        this.emojiLoaded = true;
        return true;
    }

    public void drawLoadingBackground(Canvas canvas, RectF rectF, float f, float f2, float f3, float f4) {
        LoadingDrawable loadingDrawable;
        float[] fArr = this.radii;
        float fMax = Math.max(AndroidUtilities.m1124dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m1124dp(f));
        fArr[1] = fMax;
        fArr[0] = fMax;
        float[] fArr2 = this.radii;
        float fM1124dp = AndroidUtilities.m1124dp(f2);
        fArr2[3] = fM1124dp;
        fArr2[2] = fM1124dp;
        float[] fArr3 = this.radii;
        float fM1124dp2 = AndroidUtilities.m1124dp(f3);
        fArr3[5] = fM1124dp2;
        fArr3[4] = fM1124dp2;
        float[] fArr4 = this.radii;
        float fMax2 = Math.max(AndroidUtilities.m1124dp((int) Math.floor(SharedConfig.bubbleRadius / 3.0f)), AndroidUtilities.m1124dp(f3));
        fArr4[7] = fMax2;
        fArr4[6] = fMax2;
        if (this.loading || ((loadingDrawable = this.backgroundLoadingDrawable) != null && loadingDrawable.isDisappearing())) {
            if (this.backgroundLoadingDrawable == null) {
                LoadingDrawable loadingDrawable2 = new LoadingDrawable();
                this.backgroundLoadingDrawable = loadingDrawable2;
                loadingDrawable2.setAppearByGradient(true);
                this.backgroundLoadingDrawable.setGradientScale(3.5f);
                this.backgroundLoadingDrawable.setSpeed(0.5f);
            }
            this.backgroundLoadingDrawable.setColors(Theme.multAlpha(this.color1, 0.1f), Theme.multAlpha(this.color1, 0.3f), Theme.multAlpha(this.color1, 0.3f), Theme.multAlpha(this.color1, 1.25f));
            this.backgroundLoadingDrawable.setBounds(rectF);
            this.backgroundLoadingDrawable.setRadii(this.radii);
            this.backgroundLoadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
            this.backgroundLoadingDrawable.setAlpha((int) (f4 * 255.0f));
            this.backgroundLoadingDrawable.draw(canvas);
            this.parentView.invalidate();
            return;
        }
        LoadingDrawable loadingDrawable3 = this.backgroundLoadingDrawable;
        if (loadingDrawable3 != null) {
            loadingDrawable3.reset();
        }
    }

    private void checkColorPathes(float f) {
        if (Math.abs(this.lastHeight - f) > 3.0f || this.lastHasColor3 != this.hasColor3) {
            float fDpf2 = AndroidUtilities.dpf2(3.0f);
            float fDpf22 = AndroidUtilities.dpf2(6.33f);
            float fDpf23 = AndroidUtilities.dpf2(3.0f);
            float fDpf24 = AndroidUtilities.dpf2(3.33f);
            float f2 = fDpf24 + fDpf23;
            this.color2Path.rewind();
            float f3 = f2;
            while (f3 < f) {
                float f4 = fDpf2 + 1.0f;
                this.color2Path.moveTo(f4, f3 - 1.0f);
                float f5 = f3 + fDpf22;
                this.color2Path.lineTo(f4, f5);
                this.color2Path.lineTo(0.0f, f5 + fDpf23);
                this.color2Path.lineTo(0.0f, f3 + fDpf23);
                this.color2Path.close();
                f3 += fDpf22 + fDpf23 + fDpf24;
                if (this.hasColor3) {
                    f3 += fDpf22;
                }
            }
            if (this.hasColor3) {
                this.color3Path.rewind();
                for (float f6 = f2 + fDpf22; f6 < f; f6 += fDpf22 + fDpf23 + fDpf24 + fDpf22) {
                    float f7 = fDpf2 + 1.0f;
                    this.color3Path.moveTo(f7, f6 - 1.0f);
                    float f8 = f6 + fDpf22;
                    this.color3Path.lineTo(f7, f8);
                    this.color3Path.lineTo(0.0f, f8 + fDpf23);
                    this.color3Path.lineTo(0.0f, f6 + fDpf23);
                    this.color3Path.close();
                }
            }
            this.lastHeight = f;
            this.lastHasColor3 = this.hasColor3;
        }
    }
}
