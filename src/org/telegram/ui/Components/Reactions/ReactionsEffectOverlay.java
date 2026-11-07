package org.telegram.ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.ReactionsContainerLayout;
import org.telegram.ui.Components.conference.message.GroupCallMessageCell;
import org.telegram.ui.SelectAnimatedEmojiDialog;

/* JADX INFO: loaded from: classes7.dex */
public class ReactionsEffectOverlay {

    @SuppressLint({"StaticFieldLeak"})
    public static ReactionsEffectOverlay currentOverlay;

    @SuppressLint({"StaticFieldLeak"})
    public static ReactionsEffectOverlay currentShortOverlay;
    private static long lastHapticTime;
    private static int uniqPrefix;
    float animateInProgress;
    float animateOutProgress;
    private final int animationType;
    private View cell;
    private final FrameLayout container;
    private final int currentAccount;
    private ViewGroup decorView;
    private float dismissProgress;
    private boolean dismissed;
    private final AnimationView effectImageView;
    private final AnimationView emojiImageView;
    private final AnimationView emojiStaticImageView;
    private final long groupId;
    private ReactionsContainerLayout.ReactionHolderView holderView;
    boolean isFinished;
    public boolean isStories;
    private float lastDrawnToX;
    private float lastDrawnToY;
    private final int messageId;
    private ReactionsEffectOverlay nextReactionOverlay;
    private final ReactionsLayoutInBubble.VisibleReaction reaction;
    public long startTime;
    public boolean started;
    private boolean useWindow;
    private boolean wasScrolled;
    private WindowManager windowManager;
    public FrameLayout windowView;
    int[] loc = new int[2];
    private SelectAnimatedEmojiDialog.ImageViewEmoji holderView2 = null;
    ArrayList<AvatarParticle> avatars = new ArrayList<>();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02ae  */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v38, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v55 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ReactionsEffectOverlay(Context context, BaseFragment baseFragment, ReactionsContainerLayout reactionsContainerLayout, View view, View view2, float f, float f2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i, int i2, boolean z) {
        MessageObject messageObject;
        ReactionsLayoutInBubble.ReactionButton reactionButton;
        Context context2;
        View view3;
        ReactionsLayoutInBubble.ReactionButton reactionButton2;
        long j;
        MessageObject messageObject2;
        int i3;
        ReactionsContainerLayout reactionsContainerLayout2;
        View view4;
        BaseFragment baseFragment2;
        ChatActivity chatActivity;
        int i4;
        float f3;
        float f4;
        float f5;
        float imageHeight;
        float imageX;
        float imageY;
        int i5;
        int iRound;
        int iSizeForBigReaction;
        int i6;
        int i7;
        int i8;
        int color;
        ?? r7;
        int i9;
        boolean z2;
        boolean z3;
        ChatActivity chatActivity2;
        int i10;
        Random random;
        TLRPC.TL_messageReactions tL_messageReactions;
        this.holderView = null;
        this.isStories = z;
        boolean z4 = view instanceof ChatMessageCell;
        if (z4) {
            messageObject = ((ChatMessageCell) view).getMessageObject();
            this.messageId = messageObject.getId();
            this.groupId = messageObject.getGroupId();
        } else if (view instanceof ChatActionCell) {
            messageObject = ((ChatActionCell) view).getMessageObject();
            this.messageId = messageObject.getId();
            this.groupId = 0L;
        } else {
            this.messageId = 0;
            this.groupId = 0L;
            messageObject = null;
        }
        this.reaction = visibleReaction;
        this.animationType = i2;
        this.currentAccount = i;
        this.cell = view;
        if (z4) {
            reactionButton = ((ChatMessageCell) view).getReactionButton(visibleReaction);
        } else {
            reactionButton = view instanceof ChatActionCell ? ((ChatActionCell) view).getReactionButton(visibleReaction) : null;
        }
        if (z && i2 == 2) {
            view3 = view2;
            reactionButton2 = reactionButton;
            j = 0;
            messageObject2 = messageObject;
            reactionsContainerLayout2 = reactionsContainerLayout;
            view4 = view;
            baseFragment2 = baseFragment;
            ReactionsEffectOverlay reactionsEffectOverlay = new ReactionsEffectOverlay(context, baseFragment2, reactionsContainerLayout2, view4, view3, f, f2, visibleReaction, i, 1, true);
            context2 = context;
            i3 = i;
            this.nextReactionOverlay = reactionsEffectOverlay;
            currentShortOverlay = reactionsEffectOverlay;
        } else {
            context2 = context;
            view3 = view2;
            reactionButton2 = reactionButton;
            j = 0;
            messageObject2 = messageObject;
            i3 = i;
            reactionsContainerLayout2 = reactionsContainerLayout;
            view4 = view;
            baseFragment2 = baseFragment;
        }
        ChatActivity chatActivity3 = baseFragment2 instanceof ChatActivity ? (ChatActivity) baseFragment2 : null;
        if (reactionsContainerLayout2 != null) {
            int i11 = 0;
            while (true) {
                if (i11 >= reactionsContainerLayout2.recyclerListView.getChildCount()) {
                    break;
                }
                if ((reactionsContainerLayout2.recyclerListView.getChildAt(i11) instanceof ReactionsContainerLayout.ReactionHolderView) && ((ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout2.recyclerListView.getChildAt(i11)).currentReaction.equals(this.reaction)) {
                    this.holderView = (ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout2.recyclerListView.getChildAt(i11);
                    break;
                }
                i11++;
            }
        }
        int i12 = 1;
        if (i2 == 1) {
            Random random2 = new Random();
            ArrayList<TLRPC.MessagePeerReaction> arrayList = (messageObject2 == null || (tL_messageReactions = messageObject2.messageOwner.reactions) == null) ? null : tL_messageReactions.recent_reactions;
            if (arrayList == null || chatActivity3 == null || chatActivity3.getDialogId() >= j) {
                chatActivity = chatActivity3;
                i4 = 1;
                f3 = 0.8f;
            } else {
                f3 = 0.8f;
                int i13 = 0;
                while (i13 < arrayList.size()) {
                    if (this.reaction.equals(arrayList.get(i13).reaction) && arrayList.get(i13).unread) {
                        AvatarDrawable avatarDrawable = new AvatarDrawable();
                        ImageReceiver imageReceiver = new ImageReceiver();
                        i10 = i12;
                        random = random2;
                        long peerId = MessageObject.getPeerId(arrayList.get(i13).peer_id);
                        if (peerId < j) {
                            TLRPC.Chat chat = MessagesController.getInstance(i3).getChat(Long.valueOf(-peerId));
                            if (chat != null) {
                                avatarDrawable.setInfo(i3, chat);
                                imageReceiver.setForUserOrChat(chat, avatarDrawable);
                                AvatarParticle avatarParticle = new AvatarParticle();
                                avatarParticle.imageReceiver = imageReceiver;
                                avatarParticle.fromX = 0.5f;
                                avatarParticle.fromY = 0.5f;
                                avatarParticle.jumpY = ((Math.abs(random.nextInt() % 100) / 100.0f) * 0.1f) + 0.3f;
                                avatarParticle.randomScale = ((Math.abs(random.nextInt() % 100) / 100.0f) * 0.4f) + 0.8f;
                                avatarParticle.randomRotation = (Math.abs(random.nextInt() % 100) * 60) / 100.0f;
                                avatarParticle.leftTime = (int) (((Math.abs(random.nextInt() % 100) / 100.0f) * 200.0f) + 400.0f);
                                if (!this.avatars.isEmpty()) {
                                    avatarParticle.toX = ((Math.abs(random.nextInt() % 100) * 0.6f) / 100.0f) + 0.2f;
                                    avatarParticle.toY = (Math.abs(random.nextInt() % 100) * 0.4f) / 100.0f;
                                    chatActivity2 = chatActivity3;
                                } else {
                                    float f6 = 0.0f;
                                    float f7 = 0.0f;
                                    float f8 = 0.0f;
                                    int i14 = 0;
                                    while (i14 < 10) {
                                        float fAbs = ((Math.abs(random.nextInt() % 100) * 0.6f) / 100.0f) + 0.2f;
                                        float fAbs2 = ((Math.abs(random.nextInt() % 100) * 0.4f) / 100.0f) + 0.2f;
                                        float f9 = 2.1474836E9f;
                                        ChatActivity chatActivity4 = chatActivity3;
                                        for (int i15 = 0; i15 < this.avatars.size(); i15++) {
                                            float f10 = this.avatars.get(i15).toX - fAbs;
                                            float f11 = this.avatars.get(i15).toY - fAbs2;
                                            float f12 = (f10 * f10) + (f11 * f11);
                                            if (f12 < f9) {
                                                f9 = f12;
                                            }
                                        }
                                        if (f9 > f8) {
                                            f6 = fAbs;
                                            f8 = f9;
                                            f7 = fAbs2;
                                        }
                                        i14++;
                                        chatActivity3 = chatActivity4;
                                    }
                                    chatActivity2 = chatActivity3;
                                    avatarParticle.toX = f6;
                                    avatarParticle.toY = f7;
                                }
                                this.avatars.add(avatarParticle);
                            }
                            chatActivity2 = chatActivity3;
                        } else {
                            TLRPC.User user = MessagesController.getInstance(i3).getUser(Long.valueOf(peerId));
                            if (user != null) {
                                avatarDrawable.setInfo(i3, user);
                                imageReceiver.setForUserOrChat(user, avatarDrawable);
                                AvatarParticle avatarParticle2 = new AvatarParticle();
                                avatarParticle2.imageReceiver = imageReceiver;
                                avatarParticle2.fromX = 0.5f;
                                avatarParticle2.fromY = 0.5f;
                                avatarParticle2.jumpY = ((Math.abs(random.nextInt() % 100) / 100.0f) * 0.1f) + 0.3f;
                                avatarParticle2.randomScale = ((Math.abs(random.nextInt() % 100) / 100.0f) * 0.4f) + 0.8f;
                                avatarParticle2.randomRotation = (Math.abs(random.nextInt() % 100) * 60) / 100.0f;
                                avatarParticle2.leftTime = (int) (((Math.abs(random.nextInt() % 100) / 100.0f) * 200.0f) + 400.0f);
                                if (!this.avatars.isEmpty()) {
                                }
                                this.avatars.add(avatarParticle2);
                            }
                            chatActivity2 = chatActivity3;
                        }
                    } else {
                        chatActivity2 = chatActivity3;
                        i10 = i12;
                        random = random2;
                    }
                    i13++;
                    i3 = i;
                    random2 = random;
                    i12 = i10;
                    chatActivity3 = chatActivity2;
                }
                chatActivity = chatActivity3;
                i4 = i12;
            }
        }
        ReactionsContainerLayout.ReactionHolderView reactionHolderView = this.holderView;
        boolean z5 = (reactionHolderView == null && (f == 0.0f || f2 == 0.0f)) ? 0 : i4;
        if (view3 != null) {
            view3.getLocationOnScreen(this.loc);
            int[] iArr = this.loc;
            float width = iArr[0];
            float width2 = iArr[i4];
            imageHeight = view3.getWidth() * view3.getScaleX();
            if (view3 instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                float f13 = ((SelectAnimatedEmojiDialog.ImageViewEmoji) view3).bigReactionSelectedProgress;
                if (f13 > 0.0f) {
                    imageHeight = view3.getWidth() * ((f13 * 2.0f) + 1.0f);
                    width -= (imageHeight - view3.getWidth()) / 2.0f;
                    width2 -= imageHeight - view3.getWidth();
                }
            }
            f5 = width2;
            f4 = width;
        } else {
            if (reactionHolderView != null) {
                reactionHolderView.getLocationOnScreen(this.loc);
                imageX = this.loc[0] + this.holderView.loopImageView.getX();
                imageY = this.loc[i4] + this.holderView.loopImageView.getY();
                imageHeight = this.holderView.getScaleX() * this.holderView.loopImageView.getWidth();
            } else if (reactionButton2 != null) {
                view4.getLocationInWindow(this.loc);
                float f14 = this.loc[0];
                ImageReceiver imageReceiver2 = reactionButton2.imageReceiver;
                imageX = f14 + (imageReceiver2 == null ? 0.0f : imageReceiver2.getImageX());
                float f15 = this.loc[i4];
                ImageReceiver imageReceiver3 = reactionButton2.imageReceiver;
                imageY = f15 + (imageReceiver3 == null ? 0.0f : imageReceiver3.getImageY());
                ImageReceiver imageReceiver4 = reactionButton2.imageReceiver;
                imageHeight = imageReceiver4 == null ? 0.0f : imageReceiver4.getImageHeight();
            } else {
                if (view4 != null) {
                    ((View) view4.getParent()).getLocationInWindow(this.loc);
                    int[] iArr2 = this.loc;
                    f5 = iArr2[i4] + f2 + (view4 instanceof ChatMessageCell ? ((ChatMessageCell) view4).starsPriceTopPadding : 0);
                    f4 = iArr2[0] + f;
                } else {
                    f4 = f;
                    f5 = f2;
                }
                imageHeight = 0.0f;
            }
            f4 = imageX;
            f5 = imageY;
        }
        if (i2 == 2) {
            int iDp = AndroidUtilities.dp((z && SharedConfig.deviceIsHigh()) ? 60.0f : 34.0f);
            iSizeForBigReaction = (int) ((iDp * 2.0f) / AndroidUtilities.density);
            iRound = iDp;
            i5 = i4;
        } else {
            i5 = i4;
            if (i2 != i5) {
                int iDp2 = AndroidUtilities.dp(350.0f);
                Point point = AndroidUtilities.displaySize;
                iRound = Math.round(Math.min(iDp2, Math.min(point.x, point.y)) * f3);
                iSizeForBigReaction = sizeForBigReaction();
            } else if (z) {
                int iDp3 = AndroidUtilities.dp(SharedConfig.deviceIsHigh() ? 240.0f : 140.0f);
                iSizeForBigReaction = SharedConfig.deviceIsHigh() ? (int) ((AndroidUtilities.dp(80.0f) * 2.0f) / AndroidUtilities.density) : sizeForAroundReaction();
                iRound = iDp3;
            } else {
                iRound = AndroidUtilities.dp(80.0f);
                iSizeForBigReaction = sizeForAroundReaction();
            }
        }
        float f16 = imageHeight;
        int i16 = iRound >> 1;
        int i17 = iSizeForBigReaction >> 1;
        float f17 = f16 / i16;
        this.animateInProgress = 0.0f;
        this.animateOutProgress = 0.0f;
        FrameLayout frameLayout = new FrameLayout(context2);
        this.container = frameLayout;
        int i18 = iRound;
        int i19 = iSizeForBigReaction;
        View view5 = view4;
        MessageObject messageObject3 = messageObject2;
        boolean z6 = i5;
        this.windowView = new C44531(context2, baseFragment, view5, z, messageObject3, chatActivity, i16, i2, z5, f17, f4, f5, visibleReaction);
        AnimationView animationView = new AnimationView(context2);
        this.effectImageView = animationView;
        AnimationView animationView2 = new AnimationView(context2);
        this.emojiImageView = animationView2;
        AnimationView animationView3 = new AnimationView(context2);
        this.emojiStaticImageView = animationView3;
        TLRPC.TL_availableReaction tL_availableReaction = visibleReaction.emojicon != null ? MediaDataController.getInstance(i).getReactionsMap().get(this.reaction.emojicon) : null;
        if (tL_availableReaction != null || visibleReaction.documentId != j) {
            if (tL_availableReaction != null) {
                int i20 = 2;
                if (i2 != 2) {
                    if ((i2 == z6 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_CHAT)) || i2 == 0) {
                        TLRPC.Document document = i2 == z6 ? tL_availableReaction.around_animation : tL_availableReaction.effect_animation;
                        String filterForAroundAnimation = i2 != z6 ? i19 + "_" + i19 : getFilterForAroundAnimation();
                        ImageReceiver imageReceiver5 = animationView.getImageReceiver();
                        StringBuilder sb = new StringBuilder();
                        int i21 = uniqPrefix;
                        uniqPrefix = i21 + 1;
                        sb.append(i21);
                        sb.append("_");
                        sb.append(this.messageId);
                        sb.append("_");
                        imageReceiver5.setUniqKeyPrefix(sb.toString());
                        animationView.setImage(ImageLocation.getForDocument(document), filterForAroundAnimation, (ImageLocation) null, (String) null, 0, (Object) null);
                        z3 = false;
                        animationView.getImageReceiver().setAutoRepeat(0);
                        animationView.getImageReceiver().setAllowStartAnimation(false);
                    } else {
                        z3 = false;
                    }
                    if (animationView.getImageReceiver().getLottieAnimation() != null) {
                        animationView.getImageReceiver().getLottieAnimation().setCurrentFrame(z3 ? 1 : 0, z3);
                        animationView.getImageReceiver().getLottieAnimation().start();
                    }
                    i20 = 2;
                    z2 = z3;
                } else {
                    z2 = false;
                }
                if (i2 == i20) {
                    TLRPC.Document document2 = z ? tL_availableReaction.select_animation : tL_availableReaction.appear_animation;
                    ImageReceiver imageReceiver6 = animationView2.getImageReceiver();
                    StringBuilder sb2 = new StringBuilder();
                    int i22 = uniqPrefix;
                    uniqPrefix = i22 + 1;
                    sb2.append(i22);
                    sb2.append("_");
                    sb2.append(this.messageId);
                    sb2.append("_");
                    imageReceiver6.setUniqKeyPrefix(sb2.toString());
                    animationView2.setImage(ImageLocation.getForDocument(document2), i17 + "_" + i17, (ImageLocation) null, (String) null, 0, (Object) null);
                } else if (i2 == 0) {
                    TLRPC.Document document3 = tL_availableReaction.activate_animation;
                    ImageReceiver imageReceiver7 = animationView2.getImageReceiver();
                    StringBuilder sb3 = new StringBuilder();
                    int i23 = uniqPrefix;
                    uniqPrefix = i23 + 1;
                    sb3.append(i23);
                    sb3.append("_");
                    sb3.append(this.messageId);
                    sb3.append("_");
                    imageReceiver7.setUniqKeyPrefix(sb3.toString());
                    animationView2.setImage(ImageLocation.getForDocument(document3), i17 + "_" + i17, (ImageLocation) null, (String) null, 0, (Object) null);
                }
                i8 = i16;
                r7 = z2;
            } else {
                if (i2 == 0) {
                    i6 = i;
                    animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(z6 ? 1 : 0, i6, visibleReaction.documentId));
                    i8 = i16;
                    i7 = 2;
                } else {
                    i6 = i;
                    i7 = 2;
                    if (i2 == 2) {
                        i8 = i16;
                        animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(2, i6, visibleReaction.documentId));
                    } else {
                        i8 = i16;
                    }
                }
                if (i2 == 0 || i2 == z6) {
                    AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(i7, i6, visibleReaction.documentId);
                    if (messageObject3 != null) {
                        if (messageObject3.shouldDrawWithoutBackground()) {
                            i9 = messageObject3.isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground;
                        } else {
                            i9 = messageObject3.isOutOwner() ? Theme.key_chat_outReactionButtonTextSelected : Theme.key_chat_inReactionButtonTextSelected;
                        }
                        color = Theme.getColor(i9, baseFragment != null ? baseFragment.getResourceProvider() : null);
                    } else {
                        color = -1;
                    }
                    animatedEmojiDrawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                    boolean z7 = i2 == 0 ? z6 ? 1 : 0 : false;
                    animationView.setAnimatedEmojiEffect(AnimatedEmojiEffect.createFrom(animatedEmojiDrawable, z7, !z7));
                    r7 = 0;
                    this.windowView.setClipChildren(false);
                } else {
                    r7 = 0;
                }
            }
            animationView2.getImageReceiver().setAutoRepeat(r7);
            animationView2.getImageReceiver().setAllowStartAnimation(r7);
            if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                if (i2 == 2) {
                    animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(animationView2.getImageReceiver().getLottieAnimation().getFramesCount() - (z6 ? 1 : 0), r7);
                } else {
                    animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(r7, r7);
                    animationView2.getImageReceiver().getLottieAnimation().start();
                }
            }
            int i24 = i18 - i8;
            int i25 = i24 >> 1;
            i24 = i2 == z6 ? i25 : i24;
            frameLayout.addView(animationView2);
            animationView2.getLayoutParams().width = i8;
            animationView2.getLayoutParams().height = i8;
            ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i25;
            ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i24;
            if (i2 != z6 && !z) {
                if (tL_availableReaction != null) {
                    animationView3.getImageReceiver().setImage(ImageLocation.getForDocument(tL_availableReaction.center_icon), "40_40_lastreactframe", null, "webp", tL_availableReaction, 1);
                }
                frameLayout.addView(animationView3);
                animationView3.getLayoutParams().width = i8;
                animationView3.getLayoutParams().height = i8;
                ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).topMargin = i25;
                ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).leftMargin = i24;
            }
            this.windowView.addView(frameLayout);
            frameLayout.getLayoutParams().width = i18;
            frameLayout.getLayoutParams().height = i18;
            int i26 = -i25;
            ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i26;
            int i27 = -i24;
            ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i27;
            this.windowView.addView(animationView);
            animationView.getLayoutParams().width = i18;
            animationView.getLayoutParams().height = i18;
            animationView.getLayoutParams().width = i18;
            animationView.getLayoutParams().height = i18;
            ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i26;
            ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i27;
            frameLayout.setPivotX(i24);
            frameLayout.setPivotY(i25);
            return;
        }
        this.dismissed = z6;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1 */
    public class C44531 extends FrameLayout {
        final /* synthetic */ int val$animationType;
        final /* synthetic */ View val$cell;
        final /* synthetic */ ChatActivity val$chatActivity;
        final /* synthetic */ int val$emojiSize;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ boolean val$fromHolder;
        final /* synthetic */ float val$fromScale;
        final /* synthetic */ float val$fromX;
        final /* synthetic */ float val$fromY;
        final /* synthetic */ boolean val$isStories;
        final /* synthetic */ MessageObject val$messageObject;
        final /* synthetic */ ReactionsLayoutInBubble.VisibleReaction val$visibleReaction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C44531(Context context, BaseFragment baseFragment, View view, boolean z, MessageObject messageObject, ChatActivity chatActivity, int i, int i2, boolean z2, float f, float f2, float f3, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            super(context);
            this.val$fragment = baseFragment;
            this.val$cell = view;
            this.val$isStories = z;
            this.val$messageObject = messageObject;
            this.val$chatActivity = chatActivity;
            this.val$emojiSize = i;
            this.val$animationType = i2;
            this.val$fromHolder = z2;
            this.val$fromScale = f;
            this.val$fromX = f2;
            this.val$fromY = f3;
            this.val$visibleReaction = visibleReaction;
        }

        /* JADX WARN: Removed duplicated region for block: B:126:0x02e0  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x034d  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x0357  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x0380  */
        /* JADX WARN: Removed duplicated region for block: B:188:0x0428  */
        /* JADX WARN: Removed duplicated region for block: B:238:0x0538  */
        /* JADX WARN: Removed duplicated region for block: B:243:0x055b  */
        /* JADX WARN: Removed duplicated region for block: B:249:0x05b0  */
        /* JADX WARN: Removed duplicated region for block: B:254:0x05d3  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0137  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dispatchDraw(Canvas canvas) {
            View viewFindCell;
            int iDp;
            float f;
            float measuredWidth;
            float measuredHeight;
            float measuredWidth2;
            float f2;
            float f3;
            float interpolation;
            float interpolation2;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            int i;
            float f9;
            float f10;
            float f11;
            float f12;
            ReactionsLayoutInBubble.ReactionButton reactionButton;
            int paddingTop;
            ChatActivity chatActivity;
            boolean z = ReactionsEffectOverlay.this.dismissed;
            ReactionsEffectOverlay reactionsEffectOverlay = ReactionsEffectOverlay.this;
            if (z) {
                if (reactionsEffectOverlay.dismissProgress != 1.0f) {
                    ReactionsEffectOverlay.this.dismissProgress += 0.10666667f;
                    if (ReactionsEffectOverlay.this.dismissProgress > 1.0f) {
                        ReactionsEffectOverlay.this.dismissProgress = 1.0f;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$dispatchDraw$0();
                            }
                        });
                    }
                }
                if (ReactionsEffectOverlay.this.dismissProgress != 1.0f) {
                    setAlpha(1.0f - ReactionsEffectOverlay.this.dismissProgress);
                    super.dispatchDraw(canvas);
                }
                invalidate();
                return;
            }
            if (!reactionsEffectOverlay.started) {
                invalidate();
                return;
            }
            if (reactionsEffectOverlay.holderView != null) {
                ReactionsEffectOverlay.this.holderView.enterImageView.setAlpha(0.0f);
                ReactionsEffectOverlay.this.holderView.pressedBackupImageView.setAlpha(0.0f);
            }
            BaseFragment baseFragment = this.val$fragment;
            if (baseFragment instanceof ChatActivity) {
                viewFindCell = ((ChatActivity) baseFragment).findCell(ReactionsEffectOverlay.this.messageId, false);
            } else {
                viewFindCell = this.val$cell;
            }
            if (this.val$isStories) {
                iDp = AndroidUtilities.dp(SharedConfig.deviceIsHigh() ? 120.0f : 50.0f);
            } else {
                MessageObject messageObject = this.val$messageObject;
                if (messageObject != null && messageObject.shouldDrawReactionsInLayout()) {
                    iDp = AndroidUtilities.dp(20.0f);
                } else {
                    iDp = AndroidUtilities.dp(14.0f);
                }
            }
            float f13 = iDp;
            if (viewFindCell != null) {
                viewFindCell.getLocationInWindow(ReactionsEffectOverlay.this.loc);
                ReactionsEffectOverlay reactionsEffectOverlay2 = ReactionsEffectOverlay.this;
                int[] iArr = reactionsEffectOverlay2.loc;
                measuredWidth = iArr[0];
                measuredHeight = iArr[1];
                if (viewFindCell instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) viewFindCell;
                    reactionButton = chatMessageCell.getReactionButton(reactionsEffectOverlay2.reaction);
                    f = 0.10666667f;
                    if (chatMessageCell.drawPinnedBottom && !chatMessageCell.shouldDrawTimeOnMedia()) {
                        measuredHeight += AndroidUtilities.dp(2.0f);
                    }
                    paddingTop = chatMessageCell.getPaddingTop();
                } else {
                    f = 0.10666667f;
                    if (viewFindCell instanceof ChatActionCell) {
                        reactionButton = ((ChatActionCell) viewFindCell).getReactionButton(reactionsEffectOverlay2.reaction);
                        paddingTop = viewFindCell.getPaddingTop();
                    } else {
                        if (viewFindCell instanceof GroupCallMessageCell) {
                            measuredWidth += ((GroupCallMessageCell) viewFindCell).getReactionCenterX();
                            measuredHeight += viewFindCell.getMeasuredHeight() / 2.0f;
                        }
                        reactionButton = null;
                        if (reactionButton != null) {
                            Rect rect = reactionButton.drawingImageRect;
                            measuredWidth += rect.left;
                            measuredHeight += rect.top;
                        }
                        chatActivity = this.val$chatActivity;
                        if (chatActivity != null) {
                            measuredHeight += chatActivity.drawingChatListViewYoffset;
                        }
                        ReactionsEffectOverlay.this.lastDrawnToX = measuredWidth;
                        ReactionsEffectOverlay.this.lastDrawnToY = measuredHeight;
                    }
                }
                measuredHeight += paddingTop;
                if (reactionButton != null) {
                }
                chatActivity = this.val$chatActivity;
                if (chatActivity != null) {
                }
                ReactionsEffectOverlay.this.lastDrawnToX = measuredWidth;
                ReactionsEffectOverlay.this.lastDrawnToY = measuredHeight;
            } else {
                f = 0.10666667f;
                if (this.val$isStories) {
                    float f14 = f13 / 2.0f;
                    measuredWidth = (getMeasuredWidth() / 2.0f) - f14;
                    measuredHeight = (getMeasuredHeight() / 2.0f) - f14;
                } else {
                    measuredWidth = ReactionsEffectOverlay.this.lastDrawnToX;
                    measuredHeight = ReactionsEffectOverlay.this.lastDrawnToY;
                }
            }
            BaseFragment baseFragment2 = this.val$fragment;
            if (baseFragment2 != null && baseFragment2.getParentActivity() != null && this.val$fragment.getFragmentView() != null && this.val$fragment.getFragmentView().getParent() != null && this.val$fragment.getFragmentView().getVisibility() == 0 && this.val$fragment.getFragmentView() != null) {
                this.val$fragment.getFragmentView().getLocationOnScreen(ReactionsEffectOverlay.this.loc);
                setAlpha(((View) this.val$fragment.getFragmentView().getParent()).getAlpha());
            } else if (!this.val$isStories && !(viewFindCell instanceof GroupCallMessageCell)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dispatchDraw$1();
                    }
                });
                return;
            }
            boolean z2 = viewFindCell instanceof GroupCallMessageCell;
            int i2 = this.val$emojiSize;
            if (z2) {
                measuredWidth2 = measuredWidth - (i2 / 2.0f);
                f2 = i2;
            } else {
                measuredWidth2 = measuredWidth - ((i2 - f13) / 2.0f);
                f2 = i2 - f13;
            }
            float f15 = measuredHeight - (f2 / 2.0f);
            if (this.val$isStories && this.val$animationType == 0) {
                measuredWidth2 += AndroidUtilities.dp(40.0f);
            }
            if (this.val$animationType != 1 && !this.val$isStories) {
                int i3 = ReactionsEffectOverlay.this.loc[0];
                if (measuredWidth2 < i3) {
                    measuredWidth2 = i3;
                }
                if (this.val$emojiSize + measuredWidth2 > i3 + getMeasuredWidth()) {
                    measuredWidth2 = (ReactionsEffectOverlay.this.loc[0] + getMeasuredWidth()) - this.val$emojiSize;
                }
            }
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            float interpolation3 = cubicBezierInterpolator.getInterpolation(ReactionsEffectOverlay.this.animateOutProgress);
            if (this.val$animationType == 2) {
                interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(interpolation3);
                interpolation2 = cubicBezierInterpolator.getInterpolation(interpolation3);
                f3 = 2.0f;
            } else if (this.val$fromHolder) {
                f3 = 2.0f;
                interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(ReactionsEffectOverlay.this.animateInProgress);
                interpolation2 = cubicBezierInterpolator.getInterpolation(ReactionsEffectOverlay.this.animateInProgress);
            } else {
                f3 = 2.0f;
                interpolation = ReactionsEffectOverlay.this.animateInProgress;
                interpolation2 = interpolation;
            }
            float f16 = 1.0f - interpolation;
            float f17 = (this.val$fromScale * f16) + interpolation;
            float f18 = f13 / this.val$emojiSize;
            if (this.val$animationType == 1) {
                f17 = 1.0f;
            } else {
                measuredWidth2 = (measuredWidth2 * interpolation) + (this.val$fromX * f16);
                f15 = (f15 * interpolation2) + (this.val$fromY * (1.0f - interpolation2));
            }
            ReactionsEffectOverlay.this.effectImageView.setTranslationX(measuredWidth2);
            ReactionsEffectOverlay.this.effectImageView.setTranslationY(f15);
            float f19 = 1.0f - interpolation3;
            ReactionsEffectOverlay.this.effectImageView.setAlpha(f19);
            ReactionsEffectOverlay.this.effectImageView.setScaleX(f17);
            ReactionsEffectOverlay.this.effectImageView.setScaleY(f17);
            int i4 = this.val$animationType;
            if (i4 == 2) {
                f17 = (this.val$fromScale * f16) + (f18 * interpolation);
                measuredWidth2 = (this.val$fromX * f16) + (measuredWidth * interpolation);
                f4 = this.val$fromY * (1.0f - interpolation2);
                f5 = measuredHeight * interpolation2;
            } else {
                if (interpolation3 != 0.0f) {
                    f17 = (f17 * f19) + (f18 * interpolation3);
                    measuredWidth2 = (measuredWidth2 * f19) + (measuredWidth * interpolation3);
                    f4 = f15 * f19;
                    f5 = measuredHeight * interpolation3;
                }
                if (i4 != 1) {
                    boolean z3 = this.val$isStories;
                    ReactionsEffectOverlay reactionsEffectOverlay3 = ReactionsEffectOverlay.this;
                    if (!z3) {
                        reactionsEffectOverlay3.emojiStaticImageView.setAlpha(interpolation3 > 0.7f ? (interpolation3 - 0.7f) / 0.3f : 0.0f);
                    } else {
                        reactionsEffectOverlay3.emojiStaticImageView.setAlpha(1.0f);
                    }
                }
                if (this.val$animationType == 0 && this.val$isStories) {
                    ReactionsEffectOverlay.this.emojiImageView.setAlpha(f19);
                }
                ReactionsEffectOverlay.this.container.setTranslationX(measuredWidth2);
                ReactionsEffectOverlay.this.container.setTranslationY(f15);
                ReactionsEffectOverlay.this.container.setScaleX(f17);
                ReactionsEffectOverlay.this.container.setScaleY(f17);
                super.dispatchDraw(canvas);
                if (this.val$animationType != 1 || ReactionsEffectOverlay.this.emojiImageView.wasPlaying) {
                    ReactionsEffectOverlay reactionsEffectOverlay4 = ReactionsEffectOverlay.this;
                    f6 = reactionsEffectOverlay4.animateInProgress;
                    if (f6 != 1.0f) {
                        if (this.val$fromHolder) {
                            reactionsEffectOverlay4.animateInProgress = f6 + 0.045714285f;
                        } else {
                            reactionsEffectOverlay4.animateInProgress = f6 + 0.07272727f;
                        }
                        if (reactionsEffectOverlay4.animateInProgress > 1.0f) {
                            reactionsEffectOverlay4.animateInProgress = 1.0f;
                        }
                    }
                }
                if (this.val$animationType == 2 && ((!ReactionsEffectOverlay.this.wasScrolled || this.val$animationType != 0) && (this.val$animationType == 1 || !ReactionsEffectOverlay.this.emojiImageView.wasPlaying || ReactionsEffectOverlay.this.emojiImageView.getImageReceiver().getLottieAnimation() == null || ReactionsEffectOverlay.this.emojiImageView.getImageReceiver().getLottieAnimation().isRunning()))) {
                    if (this.val$visibleReaction.documentId != 0) {
                        f7 = 0.045714285f;
                        f8 = 16.0f;
                        if (System.currentTimeMillis() - ReactionsEffectOverlay.this.startTime <= 2000) {
                        }
                        if (!ReactionsEffectOverlay.this.avatars.isEmpty() && ReactionsEffectOverlay.this.effectImageView.wasPlaying) {
                            RLottieDrawable lottieAnimation = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation();
                            i = 0;
                            while (i < ReactionsEffectOverlay.this.avatars.size()) {
                                AvatarParticle avatarParticle = ReactionsEffectOverlay.this.avatars.get(i);
                                float f20 = avatarParticle.progress;
                                if (lottieAnimation != null && lottieAnimation.isRunning()) {
                                    float duration = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getDuration();
                                    if (((int) (duration - ((ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getCurrentFrame() / ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().getFramesCount()) * duration))) < avatarParticle.leftTime) {
                                    }
                                } else {
                                    float f21 = avatarParticle.outProgress;
                                    if (f21 != 1.0f) {
                                        float f22 = f21 + f;
                                        avatarParticle.outProgress = f22;
                                        if (f22 > 1.0f) {
                                            avatarParticle.outProgress = 1.0f;
                                            ReactionsEffectOverlay.this.avatars.remove(i);
                                            i--;
                                            f9 = f7;
                                        } else {
                                            if (f20 < 0.5f) {
                                                f11 = f20 / 0.5f;
                                                f10 = 1.0f;
                                            } else {
                                                f10 = 1.0f;
                                                f11 = 1.0f - ((f20 - 0.5f) / 0.5f);
                                            }
                                            float f23 = f10 - f20;
                                            float f24 = (avatarParticle.fromX * f23) + (avatarParticle.toX * f20);
                                            float f25 = ((avatarParticle.fromY * f23) + (avatarParticle.toY * f20)) - (avatarParticle.jumpY * f11);
                                            float f26 = avatarParticle.randomScale * f20 * (1.0f - avatarParticle.outProgress);
                                            float x = ReactionsEffectOverlay.this.effectImageView.getX() + (ReactionsEffectOverlay.this.effectImageView.getWidth() * ReactionsEffectOverlay.this.effectImageView.getScaleX() * f24);
                                            float y = ReactionsEffectOverlay.this.effectImageView.getY() + (ReactionsEffectOverlay.this.effectImageView.getHeight() * ReactionsEffectOverlay.this.effectImageView.getScaleY() * f25);
                                            int iDp2 = AndroidUtilities.dp(f8);
                                            float f27 = iDp2;
                                            float f28 = f27 / f3;
                                            f9 = f7;
                                            ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.setImageCoords(x - f28, y - f28, f27, f27);
                                            ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.setRoundRadius(iDp2 >> 1);
                                            canvas.save();
                                            canvas.translate(0.0f, avatarParticle.globalTranslationY);
                                            canvas.scale(f26, f26, x, y);
                                            canvas.rotate(avatarParticle.currentRotation, x, y);
                                            ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.draw(canvas);
                                            canvas.restore();
                                            float f29 = avatarParticle.progress;
                                            if (f29 < 1.0f) {
                                                float f30 = f29 + f9;
                                                avatarParticle.progress = f30;
                                                if (f30 > 1.0f) {
                                                    avatarParticle.progress = 1.0f;
                                                }
                                            }
                                            if (f20 >= 1.0f) {
                                                avatarParticle.globalTranslationY += (AndroidUtilities.dp(20.0f) * f8) / 500.0f;
                                            }
                                            boolean z4 = avatarParticle.incrementRotation;
                                            float f31 = avatarParticle.currentRotation;
                                            if (z4) {
                                                float f32 = avatarParticle.randomRotation;
                                                float f33 = f31 + (f32 / 250.0f);
                                                avatarParticle.currentRotation = f33;
                                                if (f33 > f32) {
                                                    avatarParticle.incrementRotation = false;
                                                }
                                            } else {
                                                float f34 = avatarParticle.randomRotation;
                                                float f35 = f31 - (f34 / 250.0f);
                                                avatarParticle.currentRotation = f35;
                                                if (f35 < (-f34)) {
                                                    avatarParticle.incrementRotation = true;
                                                }
                                            }
                                        }
                                    }
                                }
                                i++;
                                f7 = f9;
                            }
                        }
                        invalidate();
                    }
                    f7 = 0.045714285f;
                    f8 = 16.0f;
                    if ((this.val$animationType == 1 && ReactionsEffectOverlay.this.effectImageView.wasPlaying && ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation() != null && !ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation().isRunning()) || (this.val$visibleReaction.documentId != 0 && System.currentTimeMillis() - ReactionsEffectOverlay.this.startTime > 2000)) {
                    }
                    if (!ReactionsEffectOverlay.this.avatars.isEmpty()) {
                        RLottieDrawable lottieAnimation2 = ReactionsEffectOverlay.this.effectImageView.getImageReceiver().getLottieAnimation();
                        i = 0;
                        while (i < ReactionsEffectOverlay.this.avatars.size()) {
                        }
                    }
                    invalidate();
                }
                f7 = 0.045714285f;
                f8 = 16.0f;
                ReactionsEffectOverlay reactionsEffectOverlay5 = ReactionsEffectOverlay.this;
                f12 = reactionsEffectOverlay5.animateOutProgress;
                if (f12 != 1.0f) {
                    int i5 = this.val$animationType;
                    if (i5 == 1) {
                        reactionsEffectOverlay5.animateOutProgress = 1.0f;
                    } else {
                        reactionsEffectOverlay5.animateOutProgress = f12 + (f8 / (i5 == 2 ? 350.0f : 220.0f));
                    }
                    if (reactionsEffectOverlay5.animateOutProgress > 0.7f) {
                        if (this.val$isStories && i5 == 2) {
                            if (!reactionsEffectOverlay5.isFinished) {
                                reactionsEffectOverlay5.isFinished = true;
                                try {
                                    performHapticFeedback(0);
                                } catch (Exception unused) {
                                }
                                ((ViewGroup) getParent()).addView(ReactionsEffectOverlay.this.nextReactionOverlay.windowView);
                                ReactionsEffectOverlay.this.nextReactionOverlay.isStories = true;
                                ReactionsEffectOverlay.this.nextReactionOverlay.started = true;
                                ReactionsEffectOverlay.this.nextReactionOverlay.startTime = System.currentTimeMillis();
                                ReactionsEffectOverlay.this.nextReactionOverlay.windowView.setTag(C2807R.id.parent_tag, 1);
                                animate().scaleX(0.0f).scaleY(0.0f).setStartDelay(1000L).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay.1.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        ReactionsEffectOverlay.this.removeCurrentView();
                                    }
                                });
                            }
                        } else {
                            ReactionsEffectOverlay.startShortAnimation();
                        }
                    }
                    ReactionsEffectOverlay reactionsEffectOverlay6 = ReactionsEffectOverlay.this;
                    if (reactionsEffectOverlay6.animateOutProgress >= 1.0f) {
                        int i6 = this.val$animationType;
                        if (i6 == 0 || i6 == 2) {
                            View view = this.val$cell;
                            if (view instanceof ChatMessageCell) {
                                ((ChatMessageCell) view).reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay6.reaction);
                            } else if (view instanceof ChatActionCell) {
                                ((ChatActionCell) view).reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay6.reaction);
                            }
                        }
                        ReactionsEffectOverlay.this.animateOutProgress = 1.0f;
                        if (this.val$animationType == 1) {
                            ReactionsEffectOverlay.currentShortOverlay = null;
                        } else {
                            ReactionsEffectOverlay.currentOverlay = null;
                        }
                        View view2 = this.val$cell;
                        if (view2 != null) {
                            view2.invalidate();
                            View view3 = this.val$cell;
                            if ((view3 instanceof ChatMessageCell) && ((ChatMessageCell) view3).getCurrentMessagesGroup() != null && this.val$cell.getParent() != null) {
                                ((View) this.val$cell.getParent()).invalidate();
                            }
                        }
                        if (!this.val$isStories || this.val$animationType != 2) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$dispatchDraw$2();
                                }
                            });
                        }
                    }
                }
                if (!ReactionsEffectOverlay.this.avatars.isEmpty()) {
                }
                invalidate();
            }
            f15 = f4 + f5;
            if (i4 != 1) {
            }
            if (this.val$animationType == 0) {
                ReactionsEffectOverlay.this.emojiImageView.setAlpha(f19);
            }
            ReactionsEffectOverlay.this.container.setTranslationX(measuredWidth2);
            ReactionsEffectOverlay.this.container.setTranslationY(f15);
            ReactionsEffectOverlay.this.container.setScaleX(f17);
            ReactionsEffectOverlay.this.container.setScaleY(f17);
            super.dispatchDraw(canvas);
            if (this.val$animationType != 1) {
                ReactionsEffectOverlay reactionsEffectOverlay42 = ReactionsEffectOverlay.this;
                f6 = reactionsEffectOverlay42.animateInProgress;
                if (f6 != 1.0f) {
                }
            }
            if (this.val$animationType == 2) {
                f7 = 0.045714285f;
                f8 = 16.0f;
                ReactionsEffectOverlay reactionsEffectOverlay52 = ReactionsEffectOverlay.this;
                f12 = reactionsEffectOverlay52.animateOutProgress;
                if (f12 != 1.0f) {
                }
            }
            if (!ReactionsEffectOverlay.this.avatars.isEmpty()) {
            }
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$1() {
            ReactionsEffectOverlay reactionsEffectOverlay = ReactionsEffectOverlay.currentOverlay;
            ReactionsEffectOverlay reactionsEffectOverlay2 = ReactionsEffectOverlay.this;
            if (reactionsEffectOverlay == reactionsEffectOverlay2) {
                ReactionsEffectOverlay.currentOverlay = null;
            }
            if (ReactionsEffectOverlay.currentShortOverlay == reactionsEffectOverlay2) {
                ReactionsEffectOverlay.currentShortOverlay = null;
            }
            reactionsEffectOverlay2.removeCurrentView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$2() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.onDetachedFromWindow();
            }
        }
    }

    public static String getFilterForAroundAnimation() {
        return sizeForAroundReaction() + "_" + sizeForAroundReaction() + "_nolimit_pcache";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCurrentView() {
        try {
            if (this.useWindow) {
                this.windowManager.removeView(this.windowView);
            } else {
                AndroidUtilities.removeFromParent(this.windowView);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void show(BaseFragment baseFragment, ReactionsContainerLayout reactionsContainerLayout, View view, View view2, float f, float f2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i, int i2) {
        boolean z;
        ActionBarPopupWindow actionBarPopupWindow;
        if (view == null || visibleReaction == null || baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        boolean z2 = baseFragment instanceof ChatActivity;
        if (z2) {
            ChatActivity chatActivity = (ChatActivity) baseFragment;
            if (ExteraConfig.getHideReactionsInChannels() && chatActivity.isChannel()) {
                return;
            }
            if (ExteraConfig.getHideReactionsInGroups() && !chatActivity.isChannel() && chatActivity.getCurrentChat() != null) {
                return;
            }
            if (ExteraConfig.getHideReactionsInPrivateChats() && chatActivity.getCurrentUser() != null) {
                return;
            }
        }
        boolean z3 = view instanceof ChatMessageCell;
        if (z3) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) view;
            if (ExteraConfig.getHideReactionsInChannels() && ChatObject.isChannelAndNotMegaGroup(chatMessageCell.getCurrentChat())) {
                return;
            }
            if (ExteraConfig.getHideReactionsInGroups() && !ChatObject.isChannelAndNotMegaGroup(chatMessageCell.getCurrentChat()) && chatMessageCell.getCurrentChat() != null) {
                return;
            }
            if (ExteraConfig.getHideReactionsInPrivateChats() && chatMessageCell.getCurrentUser() != null) {
                return;
            }
        }
        if (MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            if (i2 == 2 || i2 == 0) {
                show(baseFragment, null, view, view2, 0.0f, 0.0f, visibleReaction, i, 1);
            }
            ReactionsEffectOverlay reactionsEffectOverlay = new ReactionsEffectOverlay(baseFragment.getParentActivity(), baseFragment, reactionsContainerLayout, view, view2, f, f2, visibleReaction, i, i2, false);
            if (i2 == 1) {
                currentShortOverlay = reactionsEffectOverlay;
            } else {
                currentOverlay = reactionsEffectOverlay;
            }
            if (z2) {
                z = (i2 == 0 || i2 == 2) && (actionBarPopupWindow = ((ChatActivity) baseFragment).scrimPopupWindow) != null && actionBarPopupWindow.isShowing();
            }
            reactionsEffectOverlay.useWindow = z;
            if (z) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.height = -1;
                layoutParams.width = -1;
                layoutParams.type = 1000;
                layoutParams.flags = 65816;
                layoutParams.format = -3;
                WindowManager windowManager = baseFragment.getParentActivity().getWindowManager();
                reactionsEffectOverlay.windowManager = windowManager;
                AndroidUtilities.setPreferredMaxRefreshRate(windowManager, reactionsEffectOverlay.windowView, layoutParams);
                reactionsEffectOverlay.windowManager.addView(reactionsEffectOverlay.windowView, layoutParams);
            } else {
                FrameLayout frameLayout = (FrameLayout) baseFragment.getParentActivity().getWindow().getDecorView();
                reactionsEffectOverlay.decorView = frameLayout;
                frameLayout.addView(reactionsEffectOverlay.windowView);
            }
            view.invalidate();
            if (!z3 || ((ChatMessageCell) view).getCurrentMessagesGroup() == null || view.getParent() == null) {
                return;
            }
            ((View) view.getParent()).invalidate();
        }
    }

    public static void startAnimation() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.started = true;
            reactionsEffectOverlay.startTime = System.currentTimeMillis();
            if (currentOverlay.animationType != 0 || System.currentTimeMillis() - lastHapticTime <= 200) {
                return;
            }
            lastHapticTime = System.currentTimeMillis();
            currentOverlay.cell.performHapticFeedback(3);
            return;
        }
        startShortAnimation();
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            View view = reactionsEffectOverlay2.cell;
            if (view instanceof ChatMessageCell) {
                ((ChatMessageCell) view).reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay2.reaction);
            } else if (view instanceof ChatActionCell) {
                ((ChatActionCell) view).reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay2.reaction);
            }
        }
    }

    public static void startShortAnimation() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentShortOverlay;
        if (reactionsEffectOverlay == null || reactionsEffectOverlay.started) {
            return;
        }
        reactionsEffectOverlay.started = true;
        reactionsEffectOverlay.startTime = System.currentTimeMillis();
        if (currentShortOverlay.animationType != 1 || System.currentTimeMillis() - lastHapticTime <= 200) {
            return;
        }
        lastHapticTime = System.currentTimeMillis();
        View view = currentShortOverlay.cell;
        if (view != null) {
            view.performHapticFeedback(3);
        }
    }

    public static void removeCurrent(boolean z) {
        int i = 0;
        while (i < 2) {
            ReactionsEffectOverlay reactionsEffectOverlay = i == 0 ? currentOverlay : currentShortOverlay;
            if (reactionsEffectOverlay != null) {
                if (z) {
                    reactionsEffectOverlay.removeCurrentView();
                } else {
                    reactionsEffectOverlay.dismissed = true;
                }
            }
            i++;
        }
        currentShortOverlay = null;
        currentOverlay = null;
    }

    public static boolean isPlaying(int i, long j, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        int i2;
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null && ((i2 = reactionsEffectOverlay.animationType) == 2 || i2 == 0)) {
            long j2 = reactionsEffectOverlay.groupId;
            if (((j2 != 0 && j == j2) || i == reactionsEffectOverlay.messageId) && reactionsEffectOverlay.reaction.equals(visibleReaction)) {
                return true;
            }
        }
        return false;
    }

    public class AnimationView extends BackupImageView {
        AnimatedEmojiDrawable animatedEmojiDrawable;
        boolean attached;
        AnimatedEmojiEffect emojiEffect;
        boolean wasPlaying;

        public AnimationView(Context context) {
            super(context);
            getImageReceiver().setFileLoadingPriority(3);
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        public void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.animatedEmojiDrawable.setAlpha(255);
                this.animatedEmojiDrawable.draw(canvas);
                this.wasPlaying = true;
                return;
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.emojiEffect.draw(canvas);
                this.wasPlaying = true;
                return;
            }
            if (getImageReceiver().getLottieAnimation() != null && getImageReceiver().getLottieAnimation().isRunning()) {
                this.wasPlaying = true;
            }
            if (!this.wasPlaying && getImageReceiver().getLottieAnimation() != null && !getImageReceiver().getLottieAnimation().isRunning()) {
                if (ReactionsEffectOverlay.this.animationType == 2 && !ReactionsEffectOverlay.this.isStories) {
                    getImageReceiver().getLottieAnimation().setCurrentFrame(getImageReceiver().getLottieAnimation().getFramesCount() - 1, false);
                } else {
                    getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                    getImageReceiver().getLottieAnimation().start();
                }
            }
            super.onDraw(canvas);
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.setView(this);
            }
        }

        @Override // org.telegram.ui.Components.BackupImageView, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.removeView(this);
            }
        }

        public void setAnimatedReactionDrawable(AnimatedEmojiDrawable animatedEmojiDrawable) {
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            this.animatedEmojiDrawable = animatedEmojiDrawable;
            if (!this.attached || animatedEmojiDrawable == null) {
                return;
            }
            animatedEmojiDrawable.addView(this);
        }

        public void setAnimatedEmojiEffect(AnimatedEmojiEffect animatedEmojiEffect) {
            this.emojiEffect = animatedEmojiEffect;
        }
    }

    public static void onScrolled(int i) {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.lastDrawnToY -= i;
            if (i != 0) {
                reactionsEffectOverlay.wasScrolled = true;
            }
        }
    }

    public static int sizeForBigReaction() {
        int iDp = AndroidUtilities.dp(350.0f);
        Point point = AndroidUtilities.displaySize;
        return (int) (Math.round(Math.min(iDp, Math.min(point.x, point.y)) * 0.7f) / AndroidUtilities.density);
    }

    public static int sizeForAroundReaction() {
        return (int) ((AndroidUtilities.dp(40.0f) * 2.0f) / AndroidUtilities.density);
    }

    public static void dismissAll() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.dismissed = true;
        }
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            reactionsEffectOverlay2.dismissed = true;
        }
    }

    public class AvatarParticle {
        float currentRotation;
        float fromX;
        float fromY;
        float globalTranslationY;
        ImageReceiver imageReceiver;
        boolean incrementRotation;
        float jumpY;
        public int leftTime;
        float outProgress;
        float progress;
        float randomRotation;
        float randomScale;
        float toX;
        float toY;

        private AvatarParticle() {
        }
    }
}
