package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.style.CharacterStyle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.TextSelectionHelper;
import org.telegram.ui.ChatBackgroundDrawable;
import org.telegram.ui.Components.AnimatedColor;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.Reactions.ReactionsEffectOverlay;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.PinchToZoomHelper;
import org.telegram.ui.Stories.recorder.StoryEntry;

/* JADX INFO: loaded from: classes6.dex */
public class ThemePreviewMessagesCell extends LinearLayout {
    private Drawable backgroundDrawable;
    private BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
    private final Runnable cancelProgress;
    private ChatMessageCell[] cells;
    public boolean customAnimation;
    public BaseFragment fragment;
    private final Runnable invalidateRunnable;
    private Drawable oldBackgroundDrawable;
    private BackgroundGradientDrawable.Disposable oldBackgroundGradientDisposable;
    private Drawable overrideDrawable;
    private final AnimatedFloat overrideDrawableUpdate;
    private INavigationLayout parentLayout;
    private int progress;
    private Drawable shadowDrawable;
    private final int type;

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.progress = -1;
        int i = 0;
        while (true) {
            ChatMessageCell[] chatMessageCellArr = this.cells;
            if (i >= chatMessageCellArr.length) {
                return;
            }
            ChatMessageCell chatMessageCell = chatMessageCellArr[i];
            if (chatMessageCell != null) {
                chatMessageCell.invalidate();
            }
            i++;
        }
    }

    public ThemePreviewMessagesCell(Context context, INavigationLayout iNavigationLayout, int i) {
        this(context, iNavigationLayout, i, 0L);
    }

    public ThemePreviewMessagesCell(Context context, INavigationLayout iNavigationLayout, int i, long j) {
        this(context, iNavigationLayout, i, j, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x046f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ThemePreviewMessagesCell(Context context, INavigationLayout iNavigationLayout, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        MessageObject messageObject;
        MessageObject messageObject2;
        int i3;
        ChatMessageCell[] chatMessageCellArr;
        super(context);
        this.invalidateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidate();
            }
        };
        this.cells = new ChatMessageCell[2];
        this.progress = -1;
        this.cancelProgress = new Runnable() { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.overrideDrawableUpdate = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.type = i;
        int i4 = UserConfig.selectedAccount;
        this.parentLayout = iNavigationLayout;
        setWillNotDraw(false);
        setOrientation(1);
        setPadding(0, AndroidUtilities.dp(11.0f), 0, AndroidUtilities.dp(11.0f));
        Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        this.shadowDrawable = Theme.getThemedDrawableByKey(context, C2484R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow, resourcesProvider2);
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (i == 3) {
            boolean z = j < 0;
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.message = LocaleController.getString(z ? C2484R.string.ChannelColorPreview : C2484R.string.UserColorPreview);
            TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
            tL_message.reply_to = tL_messageReplyHeader;
            tL_messageReplyHeader.flags |= 1;
            if (j == 0) {
                tL_messageReplyHeader.reply_to_peer_id = new TLRPC.TL_peerUser();
                tL_message.reply_to.reply_to_peer_id.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            } else {
                tL_messageReplyHeader.reply_to_peer_id = new TLRPC.TL_peerChannel();
                tL_message.reply_to.reply_to_peer_id.channel_id = -j;
            }
            TLRPC.Message message = new TLRPC.Message();
            tL_message.replyMessage = message;
            message.media = new TLRPC.TL_messageMediaEmpty();
            if (j == 0) {
                tL_message.replyMessage.from_id = new TLRPC.TL_peerUser();
                tL_message.replyMessage.from_id.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
                tL_message.replyMessage.peer_id = new TLRPC.TL_peerUser();
                tL_message.replyMessage.peer_id.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            } else {
                tL_message.replyMessage.from_id = new TLRPC.TL_peerChannel();
                TLRPC.Message message2 = tL_message.replyMessage;
                long j2 = -j;
                message2.from_id.channel_id = j2;
                message2.peer_id = new TLRPC.TL_peerChannel();
                tL_message.replyMessage.peer_id.channel_id = j2;
            }
            tL_message.replyMessage.message = LocaleController.getString(z ? C2484R.string.ChannelColorPreviewReply : C2484R.string.UserColorPreviewReply);
            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
            tL_message.media = tL_messageMediaWebPage;
            tL_messageMediaWebPage.webpage = new TLRPC.TL_webPage();
            TLRPC.WebPage webPage = tL_message.media.webpage;
            webPage.embed_url = "https://telegram.org/";
            webPage.flags |= 2;
            webPage.site_name = LocaleController.getString(C2484R.string.AppName);
            TLRPC.WebPage webPage2 = tL_message.media.webpage;
            webPage2.flags |= 4;
            webPage2.title = LocaleController.getString(z ? C2484R.string.ChannelColorPreviewLinkTitle : C2484R.string.UserColorPreviewLinkTitle);
            TLRPC.WebPage webPage3 = tL_message.media.webpage;
            webPage3.flags |= 8;
            webPage3.description = LocaleController.getString(z ? C2484R.string.ChannelColorPreviewLinkDescription : C2484R.string.UserColorPreviewLinkDescription);
            tL_message.date = iCurrentTimeMillis - 3540;
            tL_message.dialog_id = 1L;
            tL_message.flags = 259;
            if (j == 0) {
                TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                tL_message.from_id = tL_peerUser;
                tL_peerUser.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            } else {
                TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
                tL_message.from_id = tL_peerChannel;
                tL_peerChannel.channel_id = -j;
            }
            tL_message.id = 1;
            tL_message.out = false;
            if (j == 0) {
                TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                tL_message.peer_id = tL_peerUser2;
                tL_peerUser2.user_id = 0L;
            } else {
                TLRPC.TL_peerChannel tL_peerChannel2 = new TLRPC.TL_peerChannel();
                tL_message.peer_id = tL_peerChannel2;
                tL_peerChannel2.channel_id = -j;
            }
            MessageObject messageObject3 = new MessageObject(UserConfig.selectedAccount, tL_message, true, false);
            messageObject3.notime = true;
            messageObject3.forceAvatar = true;
            messageObject3.resetLayout();
            messageObject3.eventId = 1L;
            messageObject = messageObject3;
        } else if (i == 2) {
            TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
            tL_message2.message = LocaleController.getString(C2484R.string.DoubleTapPreviewMessage);
            tL_message2.date = iCurrentTimeMillis - 3540;
            tL_message2.dialog_id = 1L;
            tL_message2.flags = 259;
            TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
            tL_message2.from_id = tL_peerUser3;
            tL_peerUser3.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            tL_message2.id = 1;
            tL_message2.media = new TLRPC.TL_messageMediaEmpty();
            tL_message2.out = false;
            TLRPC.TL_peerUser tL_peerUser4 = new TLRPC.TL_peerUser();
            tL_message2.peer_id = tL_peerUser4;
            tL_peerUser4.user_id = 0L;
            MessageObject messageObject4 = new MessageObject(UserConfig.selectedAccount, tL_message2, true, false);
            messageObject4.resetLayout();
            messageObject4.eventId = 1L;
            messageObject4.customName = LocaleController.getString(C2484R.string.DoubleTapPreviewSenderName);
            messageObject4.customAvatarDrawable = ContextCompat.getDrawable(context, C2484R.drawable.dino_pic);
            messageObject4.overrideLinkColor = 5;
            messageObject4.overrideLinkEmoji = 0L;
            messageObject = messageObject4;
        } else {
            TLRPC.TL_message tL_message3 = new TLRPC.TL_message();
            if (i == 0) {
                tL_message3.message = LocaleController.getString(C2484R.string.FontSizePreviewReply);
            } else {
                tL_message3.message = LocaleController.getString(C2484R.string.NewThemePreviewReply);
            }
            int iIndexOf = tL_message3.message.indexOf("👋");
            if (iIndexOf >= 0) {
                TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = new TLRPC.TL_messageEntityCustomEmoji();
                tL_messageEntityCustomEmoji.offset = iIndexOf;
                tL_messageEntityCustomEmoji.length = 2;
                tL_messageEntityCustomEmoji.document_id = 5386654653003864312L;
                tL_message3.entities.add(tL_messageEntityCustomEmoji);
            }
            int i5 = iCurrentTimeMillis - 3540;
            tL_message3.date = i5;
            tL_message3.dialog_id = 1L;
            tL_message3.flags = 259;
            TLRPC.TL_peerUser tL_peerUser5 = new TLRPC.TL_peerUser();
            tL_message3.from_id = tL_peerUser5;
            tL_peerUser5.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            tL_message3.id = 1;
            tL_message3.media = new TLRPC.TL_messageMediaEmpty();
            tL_message3.out = true;
            TLRPC.TL_peerUser tL_peerUser6 = new TLRPC.TL_peerUser();
            tL_message3.peer_id = tL_peerUser6;
            tL_peerUser6.user_id = 0L;
            MessageObject messageObject5 = new MessageObject(UserConfig.selectedAccount, tL_message3, true, false);
            TLRPC.TL_message tL_message4 = new TLRPC.TL_message();
            if (i == 0) {
                tL_message4.message = LocaleController.getString(C2484R.string.FontSizePreviewLine2);
            } else {
                String string = LocaleController.getString(C2484R.string.NewThemePreviewLine3);
                StringBuilder sb = new StringBuilder(string);
                int iIndexOf2 = string.indexOf(42);
                int iLastIndexOf = string.lastIndexOf(42);
                if (iIndexOf2 != -1 && iLastIndexOf != -1) {
                    sb.replace(iLastIndexOf, iLastIndexOf + 1, _UrlKt.FRAGMENT_ENCODE_SET);
                    sb.replace(iIndexOf2, iIndexOf2 + 1, _UrlKt.FRAGMENT_ENCODE_SET);
                    TLRPC.TL_messageEntityTextUrl tL_messageEntityTextUrl = new TLRPC.TL_messageEntityTextUrl();
                    tL_messageEntityTextUrl.offset = iIndexOf2;
                    tL_messageEntityTextUrl.length = (iLastIndexOf - iIndexOf2) - 1;
                    tL_messageEntityTextUrl.url = "https://telegram.org";
                    tL_message4.entities.add(tL_messageEntityTextUrl);
                }
                tL_message4.message = sb.toString();
            }
            int iIndexOf3 = tL_message4.message.indexOf("😎");
            if (iIndexOf3 >= 0) {
                TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji2 = new TLRPC.TL_messageEntityCustomEmoji();
                tL_messageEntityCustomEmoji2.offset = iIndexOf3;
                tL_messageEntityCustomEmoji2.length = 2;
                tL_messageEntityCustomEmoji2.document_id = 5373141891321699086L;
                tL_message4.entities.add(tL_messageEntityCustomEmoji2);
            }
            tL_message4.date = iCurrentTimeMillis - 2640;
            tL_message4.dialog_id = 1L;
            tL_message4.flags = 259;
            TLRPC.TL_peerUser tL_peerUser7 = new TLRPC.TL_peerUser();
            tL_message4.from_id = tL_peerUser7;
            tL_peerUser7.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            tL_message4.id = 1;
            tL_message4.media = new TLRPC.TL_messageMediaEmpty();
            tL_message4.out = true;
            TLRPC.TL_peerUser tL_peerUser8 = new TLRPC.TL_peerUser();
            tL_message4.peer_id = tL_peerUser8;
            tL_peerUser8.user_id = 0L;
            MessageObject messageObject6 = new MessageObject(UserConfig.selectedAccount, tL_message4, true, false);
            messageObject6.resetLayout();
            messageObject6.overrideLinkColor = 5;
            messageObject6.overrideLinkEmoji = 0L;
            messageObject6.eventId = 1L;
            TLRPC.TL_message tL_message5 = new TLRPC.TL_message();
            if (i == 0) {
                tL_message5.message = LocaleController.getString(C2484R.string.FontSizePreviewLine1);
            } else {
                tL_message5.message = LocaleController.getString(C2484R.string.NewThemePreviewLine1);
            }
            tL_message5.date = i5;
            tL_message5.dialog_id = 1L;
            tL_message5.flags = 265;
            tL_message5.from_id = new TLRPC.TL_peerUser();
            tL_message5.id = 1;
            TLRPC.TL_messageReplyHeader tL_messageReplyHeader2 = new TLRPC.TL_messageReplyHeader();
            tL_message5.reply_to = tL_messageReplyHeader2;
            tL_messageReplyHeader2.flags |= 16;
            tL_messageReplyHeader2.reply_to_msg_id = 5;
            tL_message5.media = new TLRPC.TL_messageMediaEmpty();
            tL_message5.out = false;
            TLRPC.TL_peerUser tL_peerUser9 = new TLRPC.TL_peerUser();
            tL_message5.peer_id = tL_peerUser9;
            tL_peerUser9.user_id = UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId();
            MessageObject messageObject7 = new MessageObject(UserConfig.selectedAccount, tL_message5, true, false);
            if (i != 0) {
                messageObject7.customReplyName = LocaleController.getString(C2484R.string.NewThemePreviewName);
            }
            messageObject7.eventId = 1L;
            messageObject7.resetLayout();
            messageObject7.replyMessageObject = messageObject5;
            if (i == 4) {
                TLRPC.TL_user tL_user = new TLRPC.TL_user();
                String string2 = LocaleController.getString(C2484R.string.GroupThemePreviewSenderName);
                tL_user.first_name = string2;
                messageObject7.customName = string2;
                i2 = 0;
                messageObject7.customAvatarDrawable = new AvatarDrawable((TLRPC.User) tL_user, false);
            } else {
                i2 = 0;
            }
            messageObject = messageObject6;
            messageObject2 = messageObject7;
            i3 = i2;
            while (true) {
                chatMessageCellArr = this.cells;
                if (i3 < chatMessageCellArr.length) {
                    return;
                }
                chatMessageCellArr[i3] = new ChatMessageCell(context, i4, false, null, resourcesProvider2, context, i) { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell.1
                    private final AnimatedColor color1;
                    private final AnimatedColor color2;
                    private GestureDetector gestureDetector;
                    final /* synthetic */ Context val$context;
                    final /* synthetic */ int val$type;

                    /* JADX INFO: renamed from: org.telegram.ui.Cells.ThemePreviewMessagesCell$1$1, reason: invalid class name */
                    class AnonymousClass1 extends GestureDetector.SimpleOnGestureListener {
                        AnonymousClass1() {
                        }

                        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                        public boolean onDoubleTap(MotionEvent motionEvent) {
                            C30051 c30051 = C30051.this;
                            if (c30051.val$type != 2 || MediaDataController.getInstance(c30051.currentAccount).getDoubleTapReaction() == null) {
                                return false;
                            }
                            boolean zSelectReaction = getMessageObject().selectReaction(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(MediaDataController.getInstance(C30051.this.currentAccount).getDoubleTapReaction()), false, false);
                            C30051 c300512 = C30051.this;
                            c300512.setMessageObject(c300512.getMessageObject(), null, false, false, false);
                            requestLayout();
                            ReactionsEffectOverlay.removeCurrent(false);
                            if (zSelectReaction) {
                                ThemePreviewMessagesCell themePreviewMessagesCell = ThemePreviewMessagesCell.this;
                                ReactionsEffectOverlay.show(themePreviewMessagesCell.fragment, null, themePreviewMessagesCell.cells[1], null, motionEvent.getX(), motionEvent.getY(), ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(MediaDataController.getInstance(C30051.this.currentAccount).getDoubleTapReaction()), C30051.this.currentAccount, 0);
                                ReactionsEffectOverlay.startAnimation();
                            }
                            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC61761());
                            return true;
                        }

                        /* JADX INFO: renamed from: org.telegram.ui.Cells.ThemePreviewMessagesCell$1$1$1, reason: invalid class name and collision with other inner class name */
                        class ViewTreeObserverOnPreDrawListenerC61761 implements ViewTreeObserver.OnPreDrawListener {
                            ViewTreeObserverOnPreDrawListenerC61761() {
                            }

                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public boolean onPreDraw() {
                                getViewTreeObserver().removeOnPreDrawListener(this);
                                getTransitionParams().resetAnimation();
                                getTransitionParams().animateChange();
                                getTransitionParams().animateChange = true;
                                getTransitionParams().animateChangeProgress = 0.0f;
                                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell$1$1$1$$ExternalSyntheticLambda0
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                        this.f$0.lambda$onPreDraw$0(valueAnimator);
                                    }
                                });
                                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell.1.1.1.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        super.onAnimationEnd(animator);
                                        getTransitionParams().resetAnimation();
                                        getTransitionParams().animateChange = false;
                                        getTransitionParams().animateChangeProgress = 1.0f;
                                    }
                                });
                                valueAnimatorOfFloat.start();
                                return false;
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            public /* synthetic */ void lambda$onPreDraw$0(ValueAnimator valueAnimator) {
                                getTransitionParams().animateChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                invalidate();
                            }
                        }
                    }

                    {
                        this.val$context = context;
                        this.val$type = i;
                        this.gestureDetector = new GestureDetector(context, new AnonymousClass1());
                        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
                        this.color1 = new AnimatedColor(this, 0L, 180L, cubicBezierInterpolator);
                        this.color2 = new AnimatedColor(this, 0L, 180L, cubicBezierInterpolator);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        if (ThemePreviewMessagesCell.this.allowLoadingOnTouch()) {
                            return super.onTouchEvent(motionEvent);
                        }
                        this.gestureDetector.onTouchEvent(motionEvent);
                        return true;
                    }

                    @Override // android.view.ViewGroup, android.view.View
                    protected void dispatchDraw(Canvas canvas) {
                        int themedColor;
                        int themedColor2;
                        if (getMessageObject() != null && getMessageObject().overrideLinkColor >= 0) {
                            int i6 = getMessageObject().overrideLinkColor;
                            if (i6 >= 14) {
                                MessagesController messagesController = MessagesController.getInstance(UserConfig.selectedAccount);
                                MessagesController.PeerColors peerColors = messagesController != null ? messagesController.peerColors : null;
                                MessagesController.PeerColor color = peerColors != null ? peerColors.getColor(i6) : null;
                                if (color != null) {
                                    int color1 = color.getColor1();
                                    themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getPeerColorIndex(color1)]);
                                    themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getPeerColorIndex(color1)]);
                                } else {
                                    long j3 = i6;
                                    themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(j3)]);
                                    themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(j3)]);
                                }
                            } else {
                                long j4 = i6;
                                themedColor = getThemedColor(Theme.keys_avatar_background[AvatarDrawable.getColorIndex(j4)]);
                                themedColor2 = getThemedColor(Theme.keys_avatar_background2[AvatarDrawable.getColorIndex(j4)]);
                            }
                            this.avatarDrawable.setColor(this.color1.set(themedColor), this.color2.set(themedColor2));
                        } else {
                            this.color1.set(this.avatarDrawable.getColor());
                            this.color2.set(this.avatarDrawable.getColor2());
                        }
                        if (getAvatarImage() != null && getAvatarImage().getImageHeight() != 0.0f) {
                            getAvatarImage().setImageCoords(getAvatarImage().getImageX(), (getMeasuredHeight() - getAvatarImage().getImageHeight()) - AndroidUtilities.dp(4.0f), getAvatarImage().getImageWidth(), getAvatarImage().getImageHeight());
                            getAvatarImage().setRoundRadius((int) (getAvatarImage().getImageHeight() / 2.0f));
                            getAvatarImage().draw(canvas);
                        } else if (this.val$type == 2) {
                            invalidate();
                        }
                        super.dispatchDraw(canvas);
                    }
                };
                this.cells[i3].setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Cells.ThemePreviewMessagesCell.2
                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean canDrawOutboundsContent() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean canPerformReply() {
                        return canPerformActions();
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell, TLRPC.Chat chat, int i6, float f, float f2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell, chat, i6, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell, BotInlineKeyboard.ButtonCustom buttonCustom) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell, buttonCustom);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell, TLRPC.TodoItem todoItem) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell, todoItem);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC.User user, float f, float f2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell, user, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressAboutRevenueSharingAds() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell, AnimatedEmojiSpan animatedEmojiSpan) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell, animatedEmojiSpan);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell, TLRPC.Chat chat, int i6, float f, float f2, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell, chat, i6, f, f2, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell, TLObject tLObject, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell, tLObject, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell, MessageObject.TextLayoutBlock textLayoutBlock) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell, textLayoutBlock);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell, BotInlineKeyboard.ButtonCustom buttonCustom) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell, buttonCustom);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell, TLRPC.KeyboardButton keyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell, keyboardButton);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell, int i6, int i7) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell, i6, i7);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell, int i6) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell, i6);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell, imageReceiver, messageExtendedMedia, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell, int i6) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell, i6);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell, float f, float f2, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell, f, f2, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell, TLRPC.ReactionCount reactionCount, boolean z2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell, reactionCount, z2, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell, TLRPC.TodoItem todoItem, boolean z2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell, todoItem, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell, characterStyle, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC.User user, float f, float f2, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell, user, f, f2, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell, TLRPC.User user, TLRPC.Document document, String str) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell, user, document, str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell, String str) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell, str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell, long j3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell, j3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell, ArrayList arrayList, int i6, int i7, int i8) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell, arrayList, i6, i7, i8);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell, TLRPC.WebPage webPage4, String str, boolean z2) {
                        Browser.openUrl(chatMessageCell.getContext(), str);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell, f, f2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didStartVideoStream(MessageObject messageObject8) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject8);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject8) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject8);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell, boolean z2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getAdminRank(long j3) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean hasSelectedMessages() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void invalidateBlur() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isAdmin(long j3) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAdmin(this, j3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isLandscape() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isOwner(long j3) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isOwner(this, j3);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isReplyOrSelf() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean keyboardIsOpened() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell, MessageObject messageObject8, boolean z2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell, messageObject8, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needReloadPolls() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needShowPremiumBulletin(int i6) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i6);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean onAccessibilityAction(int i6, Bundle bundle) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i6, bundle);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void onDiceFinished() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject8) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject8);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell, boolean z2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell, z2);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject8) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject8);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void videoTimerReached() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean canPerformActions() {
                        return ThemePreviewMessagesCell.this.allowLoadingOnTouch();
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void didPressReplyMessage(ChatMessageCell chatMessageCell, int i6, float f, float f2, boolean z2) {
                        if (ThemePreviewMessagesCell.this.allowLoadingOnTouch()) {
                            ThemePreviewMessagesCell.this.progress = 0;
                            chatMessageCell.invalidate();
                            AndroidUtilities.cancelRunOnUIThread(ThemePreviewMessagesCell.this.cancelProgress);
                            AndroidUtilities.runOnUIThread(ThemePreviewMessagesCell.this.cancelProgress, 5000L);
                        }
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void needOpenWebView(MessageObject messageObject8, String str, String str2, String str3, String str4, int i6, int i7) {
                        if (ThemePreviewMessagesCell.this.allowLoadingOnTouch()) {
                            ThemePreviewMessagesCell.this.progress = 2;
                            AndroidUtilities.cancelRunOnUIThread(ThemePreviewMessagesCell.this.cancelProgress);
                            AndroidUtilities.runOnUIThread(ThemePreviewMessagesCell.this.cancelProgress, 5000L);
                        }
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void didPressInstantButton(ChatMessageCell chatMessageCell, int i6) {
                        if (ThemePreviewMessagesCell.this.allowLoadingOnTouch()) {
                            ThemePreviewMessagesCell.this.progress = 2;
                            chatMessageCell.invalidate();
                            AndroidUtilities.cancelRunOnUIThread(ThemePreviewMessagesCell.this.cancelProgress);
                            AndroidUtilities.runOnUIThread(ThemePreviewMessagesCell.this.cancelProgress, 5000L);
                        }
                    }

                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean isProgressLoading(ChatMessageCell chatMessageCell, int i6) {
                        return i6 == ThemePreviewMessagesCell.this.progress;
                    }
                });
                ChatMessageCell chatMessageCell = this.cells[i3];
                chatMessageCell.isChat = (i == 2 || i == 4) ? 1 : i2;
                chatMessageCell.setFullyDraw(true);
                MessageObject messageObject8 = i3 == 0 ? messageObject2 : messageObject;
                if (messageObject8 != null) {
                    this.cells[i3].setMessageObject(messageObject8, null, false, false, false);
                    addView(this.cells[i3], LayoutHelper.createLinear(-1, -2));
                }
                i3++;
                resourcesProvider2 = resourcesProvider;
            }
        }
        messageObject2 = null;
        i2 = 0;
        i3 = i2;
        while (true) {
            chatMessageCellArr = this.cells;
            if (i3 < chatMessageCellArr.length) {
            }
            i3++;
            resourcesProvider2 = resourcesProvider;
        }
    }

    public ChatMessageCell[] getCells() {
        return this.cells;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        int i = 0;
        while (true) {
            ChatMessageCell[] chatMessageCellArr = this.cells;
            if (i >= chatMessageCellArr.length) {
                return;
            }
            chatMessageCellArr[i].invalidate();
            i++;
        }
    }

    public void setOverrideBackground(Drawable drawable) {
        this.overrideDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        if ((this.overrideDrawable instanceof ChatBackgroundDrawable) && isAttachedToWindow()) {
            ((ChatBackgroundDrawable) this.overrideDrawable).onAttachedToWindow(this);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.overrideDrawable;
        if (drawable instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable).onAttachedToWindow(this);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.overrideDrawable || drawable == this.oldBackgroundDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable cachedWallpaperNonBlocking = this.overrideDrawable;
        if (cachedWallpaperNonBlocking == null) {
            cachedWallpaperNonBlocking = Theme.getCachedWallpaperNonBlocking();
        }
        if (Theme.wallpaperLoadTask != null) {
            invalidate();
        }
        if (cachedWallpaperNonBlocking != this.backgroundDrawable && cachedWallpaperNonBlocking != null) {
            if (Theme.isAnimatingColor() || this.customAnimation) {
                this.oldBackgroundDrawable = this.backgroundDrawable;
                this.oldBackgroundGradientDisposable = this.backgroundGradientDisposable;
            } else {
                BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
                if (disposable != null) {
                    disposable.dispose();
                    this.backgroundGradientDisposable = null;
                }
            }
            this.backgroundDrawable = cachedWallpaperNonBlocking;
            this.overrideDrawableUpdate.set(0.0f, true);
        }
        float themeAnimationValue = this.customAnimation ? this.overrideDrawableUpdate.set(1.0f) : this.parentLayout.getThemeAnimationValue();
        int i = 0;
        while (i < 2) {
            Drawable drawable = i == 0 ? this.oldBackgroundDrawable : this.backgroundDrawable;
            if (drawable != null) {
                int i2 = (i != 1 || this.oldBackgroundDrawable == null || (this.parentLayout == null && !this.customAnimation)) ? 255 : (int) (255.0f * themeAnimationValue);
                if (i2 > 0) {
                    drawable.setAlpha(i2);
                    if ((drawable instanceof ColorDrawable) || (drawable instanceof GradientDrawable) || (drawable instanceof MotionBackgroundDrawable)) {
                        drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        if (drawable instanceof BackgroundGradientDrawable) {
                            this.backgroundGradientDisposable = ((BackgroundGradientDrawable) drawable).drawExactBoundsSize(canvas, this);
                        } else {
                            drawable.draw(canvas);
                        }
                    } else if (drawable instanceof BitmapDrawable) {
                        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                        bitmapDrawable.setFilterBitmap(true);
                        if (bitmapDrawable.getTileModeX() == Shader.TileMode.REPEAT) {
                            canvas.save();
                            float f = 2.0f / AndroidUtilities.density;
                            canvas.scale(f, f);
                            drawable.setBounds(0, 0, (int) Math.ceil(getMeasuredWidth() / f), (int) Math.ceil(getMeasuredHeight() / f));
                        } else {
                            int measuredHeight = getMeasuredHeight();
                            float fMax = Math.max(getMeasuredWidth() / drawable.getIntrinsicWidth(), measuredHeight / drawable.getIntrinsicHeight());
                            int iCeil = (int) Math.ceil(drawable.getIntrinsicWidth() * fMax);
                            int iCeil2 = (int) Math.ceil(drawable.getIntrinsicHeight() * fMax);
                            int measuredWidth = (getMeasuredWidth() - iCeil) / 2;
                            int i3 = (measuredHeight - iCeil2) / 2;
                            canvas.save();
                            canvas.clipRect(0, 0, iCeil, getMeasuredHeight());
                            drawable.setBounds(measuredWidth, i3, iCeil + measuredWidth, iCeil2 + i3);
                        }
                        drawable.draw(canvas);
                        canvas.restore();
                    } else {
                        StoryEntry.drawBackgroundDrawable(canvas, drawable, getWidth(), getHeight());
                    }
                    if (i == 0 && this.oldBackgroundDrawable != null && themeAnimationValue >= 1.0f) {
                        BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
                        if (disposable2 != null) {
                            disposable2.dispose();
                            this.oldBackgroundGradientDisposable = null;
                        }
                        this.oldBackgroundDrawable = null;
                        invalidate();
                    }
                }
            }
            i++;
        }
        this.shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        this.shadowDrawable.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean allowLoadingOnTouch() {
        int i = this.type;
        return i == 3 || i == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
        if (disposable != null) {
            disposable.dispose();
            this.backgroundGradientDisposable = null;
        }
        BackgroundGradientDrawable.Disposable disposable2 = this.oldBackgroundGradientDisposable;
        if (disposable2 != null) {
            disposable2.dispose();
            this.oldBackgroundGradientDisposable = null;
        }
        Drawable drawable = this.overrideDrawable;
        if (drawable instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable).onDetachedFromWindow(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.type == 2 || allowLoadingOnTouch()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.type == 2 || allowLoadingOnTouch()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.type == 2 || allowLoadingOnTouch()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
