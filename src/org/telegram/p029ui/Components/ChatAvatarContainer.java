package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.BusinessLinksController;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AutoDeletePopupWrapper;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.SharedMediaLayout;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stories.StoriesUtilities;
import org.telegram.p029ui.Stories.StoryViewer;
import org.telegram.p029ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class ChatAvatarContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    public boolean allowDrawStories;
    public boolean allowShorterStatus;
    private AnimatedTextView animatedSubtitleTextView;
    private AvatarDrawable avatarDrawable;
    public BackupImageView avatarImageView;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable botVerificationDrawable;
    public ButtonBounce bounce;
    private int currentAccount;
    private int currentConnectionState;
    StatusDrawable currentTypingDrawable;
    private Drawable emojiStatusDefaultDrawable;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatusDrawable;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatusDrawable2;
    public boolean ignoreTouches;
    private boolean[] isOnline;
    private int largerWidth;
    private CharSequence lastSubtitle;
    private int lastSubtitleColorKey;
    private int lastWidth;
    private int leftPadding;
    private boolean occupyStatusBar;
    private Runnable onLongClick;
    private int onlineCount;
    private Integer overrideSubtitleColor;
    private ChatActivity parentFragment;
    public boolean premiumIconHiddable;
    private boolean pressed;
    private Theme.ResourcesProvider resourcesProvider;
    private int rightAvatarPadding;
    private String rightDrawable2ContentDescription;
    private String rightDrawableContentDescription;
    private boolean rightDrawableIsScamOrVerified;
    private boolean secretChatTimer;
    private SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
    private ImageView starBgItem;
    private ImageView starFgItem;
    public boolean stars;
    private StatusDrawable[] statusDrawables;
    public boolean[] statusMadeShorter;
    private Integer storiesForceState;
    private boolean subtitleIsThinkingBot;
    private AtomicReference subtitleTextLargerCopyView;
    private SimpleTextView subtitleTextView;
    private ImageView timeItem;
    private TimerDrawable timerDrawable;
    private AnimatorSet titleAnimation;
    private AtomicReference titleTextLargerCopyView;
    private SimpleTextView titleTextView;
    private Drawable verifiedBackground;
    private Drawable verifiedCheck;

    protected boolean canSearch() {
        return false;
    }

    protected boolean onAvatarClick() {
        return false;
    }

    protected void openSearch() {
    }

    protected boolean useAnimatedSubtitle() {
        return false;
    }

    public void hideSubtitle() {
        if (getSubtitleTextView() != null) {
            getSubtitleTextView().setVisibility(8);
        }
    }

    public void setStoriesForceState(Integer num) {
        this.storiesForceState = num;
    }

    private class SimpleTextConnectedView extends SimpleTextView {
        private AtomicReference reference;

        public SimpleTextConnectedView(Context context, AtomicReference atomicReference) {
            super(context);
            this.reference = atomicReference;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            SimpleTextView simpleTextView;
            AtomicReference atomicReference = this.reference;
            if (atomicReference != null && (simpleTextView = (SimpleTextView) atomicReference.get()) != null) {
                simpleTextView.setTranslationY(f);
            }
            super.setTranslationY(f);
        }

        @Override // org.telegram.p029ui.ActionBar.SimpleTextView
        public boolean setText(CharSequence charSequence) {
            SimpleTextView simpleTextView;
            AtomicReference atomicReference = this.reference;
            if (atomicReference != null && (simpleTextView = (SimpleTextView) atomicReference.get()) != null) {
                simpleTextView.setText(charSequence);
            }
            return super.setText(charSequence);
        }
    }

    public ChatAvatarContainer(Context context, BaseFragment baseFragment, boolean z) {
        this(context, baseFragment, z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0317  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ChatAvatarContainer(Context context, BaseFragment baseFragment, boolean z, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.titleTextLargerCopyView = new AtomicReference();
        this.subtitleTextLargerCopyView = new AtomicReference();
        this.statusDrawables = new StatusDrawable[6];
        this.avatarDrawable = new AvatarDrawable();
        this.currentAccount = UserConfig.selectedAccount;
        this.occupyStatusBar = true;
        this.leftPadding = AndroidUtilities.m1124dp(8.0f);
        this.rightAvatarPadding = 0;
        this.lastWidth = -1;
        this.largerWidth = -1;
        this.isOnline = new boolean[1];
        this.statusMadeShorter = new boolean[1];
        this.onlineCount = -1;
        this.lastSubtitleColorKey = -1;
        this.allowShorterStatus = false;
        this.premiumIconHiddable = false;
        this.bounce = new ButtonBounce(this);
        this.onLongClick = new Runnable() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3();
            }
        };
        this.rightDrawableIsScamOrVerified = false;
        this.rightDrawableContentDescription = null;
        this.rightDrawable2ContentDescription = null;
        this.resourcesProvider = resourcesProvider;
        boolean z2 = baseFragment instanceof ChatActivity;
        if (z2) {
            this.parentFragment = (ChatActivity) baseFragment;
        }
        ChatActivity chatActivity = this.parentFragment;
        boolean z3 = chatActivity != null && (chatActivity.getChatMode() == 0 || this.parentFragment.getChatMode() == 8) && !UserObject.isReplyUser(this.parentFragment.getCurrentUser()) && (this.parentFragment.getCurrentUser() == null || this.parentFragment.getCurrentUser().f1825id != UserObject.VERIFY);
        this.avatarImageView = new C42021(context, baseFragment, z3, resourcesProvider);
        if (z2 || (baseFragment instanceof TopicsFragment)) {
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 == null || (chatActivity2.getChatMode() != 5 && this.parentFragment.getChatMode() != 6 && this.parentFragment.getChatMode() != 8 && !this.parentFragment.isInBotForumMode())) {
                this.sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(baseFragment);
            }
            ChatActivity chatActivity3 = this.parentFragment;
            if (chatActivity3 != null && (chatActivity3.isThreadChat() || this.parentFragment.getChatMode() == 2 || this.parentFragment.getChatMode() == 5 || this.parentFragment.getChatMode() == 6)) {
                this.avatarImageView.setVisibility(8);
            }
        }
        this.avatarImageView.setContentDescription(LocaleController.getString(C2888R.string.AccDescrProfilePicture));
        this.avatarImageView.setRoundRadius(ExteraConfig.getAvatarCorners(42.0f));
        addView(this.avatarImageView);
        if (z3) {
            this.avatarImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
        }
        SimpleTextConnectedView simpleTextConnectedView = new SimpleTextConnectedView(context, this.titleTextLargerCopyView);
        this.titleTextView = simpleTextConnectedView;
        simpleTextConnectedView.setEllipsizeByGradient(true);
        this.titleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        this.titleTextView.setTextSize(18);
        this.titleTextView.setGravity(3);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        this.titleTextView.setLeftDrawableTopPadding(-AndroidUtilities.m1124dp(1.3f));
        this.titleTextView.setCanHideRightDrawable(false);
        this.titleTextView.setRightDrawableOutside(true);
        this.titleTextView.setPadding(0, AndroidUtilities.m1124dp(6.0f), 0, AndroidUtilities.m1124dp(12.0f));
        addView(this.titleTextView);
        if (useAnimatedSubtitle()) {
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
            this.animatedSubtitleTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.3f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatedSubtitleTextView.setEllipsizeByGradient(true);
            AnimatedTextView animatedTextView2 = this.animatedSubtitleTextView;
            int i = Theme.key_actionBarDefaultSubtitle;
            animatedTextView2.setTextColor(getThemedColor(i));
            this.animatedSubtitleTextView.setTag(Integer.valueOf(i));
            this.animatedSubtitleTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
            this.animatedSubtitleTextView.setGravity(3);
            this.animatedSubtitleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.animatedSubtitleTextView.setPadding(0, 0, AndroidUtilities.m1124dp(10.0f), 0);
            this.animatedSubtitleTextView.setTranslationY(-AndroidUtilities.m1124dp(1.0f));
            addView(this.animatedSubtitleTextView);
        } else {
            SimpleTextConnectedView simpleTextConnectedView2 = new SimpleTextConnectedView(context, this.subtitleTextLargerCopyView);
            this.subtitleTextView = simpleTextConnectedView2;
            simpleTextConnectedView2.setEllipsizeByGradient(true);
            SimpleTextView simpleTextView = this.subtitleTextView;
            int i2 = Theme.key_actionBarDefaultSubtitle;
            simpleTextView.setTextColor(getThemedColor(i2));
            this.subtitleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.subtitleTextView.setTag(Integer.valueOf(i2));
            this.subtitleTextView.setTextSize(14);
            this.subtitleTextView.setGravity(3);
            this.subtitleTextView.setPadding(0, 0, AndroidUtilities.m1124dp(10.0f), 0);
            addView(this.subtitleTextView);
        }
        if (this.parentFragment != null) {
            ImageView imageView = new ImageView(context);
            this.timeItem = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.timeItem.setAlpha(0.0f);
            this.timeItem.setScaleY(0.0f);
            this.timeItem.setScaleX(0.0f);
            this.timeItem.setVisibility(8);
            ImageView imageView2 = this.timeItem;
            TimerDrawable timerDrawable = new TimerDrawable(context, resourcesProvider);
            this.timerDrawable = timerDrawable;
            imageView2.setImageDrawable(timerDrawable);
            this.timerDrawable.setBackgroundColor(0);
            addView(this.timeItem);
            this.secretChatTimer = z;
            this.timeItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(resourcesProvider, view);
                }
            });
            if (this.secretChatTimer) {
                this.timeItem.setContentDescription(LocaleController.getString(C2888R.string.SetTimer));
            } else {
                this.timeItem.setContentDescription(LocaleController.getString(C2888R.string.AccAutoDeleteTimer));
            }
            ImageView imageView3 = new ImageView(context);
            this.starBgItem = imageView3;
            imageView3.setImageResource(C2888R.drawable.star_small_outline);
            this.starBgItem.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefault), PorterDuff.Mode.SRC_IN));
            this.starBgItem.setAlpha(0.0f);
            this.starBgItem.setScaleY(0.0f);
            this.starBgItem.setScaleX(0.0f);
            addView(this.starBgItem);
            ImageView imageView4 = new ImageView(context);
            this.starFgItem = imageView4;
            imageView4.setImageResource(C2888R.drawable.star_small_inner);
            this.starFgItem.setAlpha(0.0f);
            this.starFgItem.setScaleY(0.0f);
            this.starFgItem.setScaleX(0.0f);
            addView(this.starFgItem);
        }
        ChatActivity chatActivity4 = this.parentFragment;
        if (chatActivity4 != null && (chatActivity4.getChatMode() == 0 || this.parentFragment.getChatMode() == 8 || this.parentFragment.getChatMode() == 3)) {
            if (this.parentFragment.isThreadChat()) {
                ChatActivity chatActivity5 = this.parentFragment;
                if (chatActivity5.isTopic || chatActivity5.isComments) {
                    if (!UserObject.isReplyUser(this.parentFragment.getCurrentUser()) && (this.parentFragment.getCurrentUser() == null || this.parentFragment.getCurrentUser().f1825id != UserObject.VERIFY)) {
                        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$new$2(view);
                            }
                        });
                    }
                }
                TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
                this.statusDrawables[0] = new TypingDotsDrawable(true);
                this.statusDrawables[1] = new RecordStatusDrawable(true);
                this.statusDrawables[2] = new SendingFileDrawable(true);
                this.statusDrawables[3] = new PlayingGameDrawable(false, resourcesProvider);
                this.statusDrawables[4] = new RoundStatusDrawable(true);
                this.statusDrawables[5] = new ChoosingStickerStatusDrawable(true);
                int i3 = 0;
                while (true) {
                    StatusDrawable[] statusDrawableArr = this.statusDrawables;
                    if (i3 >= statusDrawableArr.length) {
                        break;
                    }
                    statusDrawableArr[i3].setIsChat(currentChat != null);
                    i3++;
                }
            }
        }
        this.emojiStatusDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.titleTextView, AndroidUtilities.m1124dp(24.0f));
        this.emojiStatusDrawable2 = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.titleTextView, AndroidUtilities.m1124dp(24.0f));
        this.botVerificationDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.titleTextView, AndroidUtilities.m1124dp(17.0f));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAvatarContainer$1 */
    class C42021 extends BackupImageView {
        StoriesUtilities.AvatarStoryParams params;
        final /* synthetic */ boolean val$avatarClickable;
        final /* synthetic */ BaseFragment val$baseFragment;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C42021(Context context, BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.val$baseFragment = baseFragment;
            this.val$avatarClickable = z;
            this.val$resourcesProvider = resourcesProvider;
            this.params = new AnonymousClass1(true);
        }

        /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAvatarContainer$1$1, reason: invalid class name */
        class AnonymousClass1 extends StoriesUtilities.AvatarStoryParams {
            AnonymousClass1(boolean z) {
                super(z);
            }

            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                C42021.this.val$baseFragment.getOrCreateStoryViewer().open(C42021.this.getContext(), j, new StoryViewer.PlaceProvider() { // from class: org.telegram.ui.Components.ChatAvatarContainer$1$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
                    public final boolean findView(long j2, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
                        return this.f$0.lambda$openStory$0(j2, i, i2, i3, transitionViewHolder);
                    }

                    @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
                    public /* synthetic */ void loadNext(boolean z) {
                        StoryViewer.PlaceProvider.CC.$default$loadNext(this, z);
                    }

                    @Override // org.telegram.ui.Stories.StoryViewer.PlaceProvider
                    public /* synthetic */ void preLayout(long j2, int i, Runnable runnable2) {
                        runnable2.run();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ boolean lambda$openStory$0(long j, int i, int i2, int i3, StoryViewer.TransitionViewHolder transitionViewHolder) {
                C42021 c42021 = C42021.this;
                ImageReceiver imageReceiver = c42021.imageReceiver;
                transitionViewHolder.storyImage = imageReceiver;
                transitionViewHolder.crossfadeToAvatarImage = imageReceiver;
                StoriesUtilities.AvatarStoryParams avatarStoryParams = c42021.params;
                transitionViewHolder.params = avatarStoryParams;
                transitionViewHolder.isLive = avatarStoryParams.drawnLive;
                BackupImageView backupImageView = ChatAvatarContainer.this.avatarImageView;
                transitionViewHolder.view = backupImageView;
                transitionViewHolder.alpha = backupImageView.getAlpha();
                transitionViewHolder.clipTop = 0.0f;
                transitionViewHolder.clipBottom = AndroidUtilities.displaySize.y;
                transitionViewHolder.clipParent = (View) C42021.this.getParent();
                return true;
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.val$avatarClickable && getImageReceiver().hasNotThumb()) {
                accessibilityNodeInfo.setText(LocaleController.getString(C2888R.string.AccDescrProfilePicture));
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString(C2888R.string.Open)));
            } else {
                accessibilityNodeInfo.setVisibleToUser(false);
            }
        }

        @Override // org.telegram.p029ui.Components.BackupImageView, android.view.View
        protected void onDraw(Canvas canvas) {
            long dialogId;
            if (ChatAvatarContainer.this.allowDrawStories && this.animatedEmojiDrawable == null) {
                this.params.originalAvatarRect.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.params;
                avatarStoryParams.drawSegments = true;
                avatarStoryParams.drawInside = true;
                avatarStoryParams.resourcesProvider = this.val$resourcesProvider;
                if (ChatAvatarContainer.this.storiesForceState != null) {
                    this.params.forceState = ChatAvatarContainer.this.storiesForceState.intValue();
                }
                if (ChatAvatarContainer.this.parentFragment != null) {
                    dialogId = ChatAvatarContainer.this.parentFragment.getDialogId();
                } else {
                    BaseFragment baseFragment = this.val$baseFragment;
                    dialogId = baseFragment instanceof TopicsFragment ? ((TopicsFragment) baseFragment).getDialogId() : 0L;
                }
                StoriesUtilities.drawAvatarWithStory(dialogId, canvas, this.imageReceiver, this.params);
                return;
            }
            super.onDraw(canvas);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ChatAvatarContainer.this.allowDrawStories && this.params.checkOnTouchEvent(motionEvent, this)) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (onAvatarClick()) {
            return;
        }
        openProfile(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Theme.ResourcesProvider resourcesProvider, View view) {
        if (this.secretChatTimer) {
            this.parentFragment.showDialog(AlertsCreator.createTTLAlert(getContext(), this.parentFragment.getCurrentEncryptedChat(), resourcesProvider).create());
        } else {
            openSetTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        openProfile(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        this.pressed = false;
        this.bounce.setPressed(false);
        if (canSearch()) {
            openSearch();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && canSearch()) {
            this.pressed = true;
            this.bounce.setPressed(true);
            AndroidUtilities.cancelRunOnUIThread(this.onLongClick);
            AndroidUtilities.runOnUIThread(this.onLongClick, ViewConfiguration.getLongPressTimeout());
            return true;
        }
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.pressed) {
            this.bounce.setPressed(false);
            this.pressed = false;
            if (isClickable()) {
                openProfile(false);
            }
            AndroidUtilities.cancelRunOnUIThread(this.onLongClick);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        this.bounce.setPressed(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        float scale = this.bounce.getScale(0.02f);
        canvas.scale(scale, scale, getWidth() / 2.0f, getHeight() / 2.0f);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ImageView imageView;
        if (view == this.avatarImageView && (imageView = this.timeItem) != null && imageView.getVisibility() == 0) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(view.getX(), view.getY(), view.getX() + view.getWidth(), view.getY() + view.getHeight());
            canvas.saveLayer(rectF, null);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.drawCircle(this.timeItem.getX() + (this.timeItem.getWidth() / 2.0f), this.timeItem.getY() + (this.timeItem.getHeight() / 2.0f), AndroidUtilities.dpf2(11.5f) * this.timeItem.getScaleX(), Theme.PAINT_CLEAR);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.ignoreTouches) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setTitleExpand(boolean z) {
        int iM1124dp = z ? AndroidUtilities.m1124dp(10.0f) : 0;
        if (this.titleTextView.getPaddingRight() != iM1124dp) {
            this.titleTextView.setPadding(0, AndroidUtilities.m1124dp(6.0f), iM1124dp, AndroidUtilities.m1124dp(12.0f));
            requestLayout();
            invalidate();
        }
    }

    public void setOverrideSubtitleColor(Integer num) {
        this.overrideSubtitleColor = num;
    }

    public boolean openSetTimer() {
        int i;
        if (this.parentFragment.getParentActivity() == null) {
            return false;
        }
        TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
        if (currentChat != null && !ChatObject.canUserDoAdminAction(currentChat, 13)) {
            if (this.timeItem.getTag() != null) {
                this.parentFragment.showTimerHint();
            }
            return false;
        }
        TLRPC.ChatFull currentChatInfo = this.parentFragment.getCurrentChatInfo();
        TLRPC.UserFull currentUserInfo = this.parentFragment.getCurrentUserInfo();
        if (currentUserInfo != null) {
            i = currentUserInfo.ttl_period;
        } else {
            i = currentChatInfo != null ? currentChatInfo.ttl_period : 0;
        }
        AutoDeletePopupWrapper autoDeletePopupWrapper = new AutoDeletePopupWrapper(getContext(), null, new AutoDeletePopupWrapper.Callback() { // from class: org.telegram.ui.Components.ChatAvatarContainer.2
            @Override // org.telegram.ui.Components.AutoDeletePopupWrapper.Callback
            public /* synthetic */ void showGlobalAutoDeleteScreen() {
                AutoDeletePopupWrapper.Callback.CC.$default$showGlobalAutoDeleteScreen(this);
            }

            @Override // org.telegram.ui.Components.AutoDeletePopupWrapper.Callback
            public void dismiss() {
                ActionBarPopupWindow actionBarPopupWindow = actionBarPopupWindowArr[0];
                if (actionBarPopupWindow != null) {
                    actionBarPopupWindow.dismiss();
                }
            }

            @Override // org.telegram.ui.Components.AutoDeletePopupWrapper.Callback
            public void setAutoDeleteHistory(int i2, int i3) {
                UndoView undoView;
                if (ChatAvatarContainer.this.parentFragment == null) {
                    return;
                }
                ChatAvatarContainer.this.parentFragment.getMessagesController().setDialogHistoryTTL(ChatAvatarContainer.this.parentFragment.getDialogId(), i2);
                TLRPC.ChatFull currentChatInfo2 = ChatAvatarContainer.this.parentFragment.getCurrentChatInfo();
                TLRPC.UserFull currentUserInfo2 = ChatAvatarContainer.this.parentFragment.getCurrentUserInfo();
                if ((currentUserInfo2 == null && currentChatInfo2 == null) || (undoView = ChatAvatarContainer.this.parentFragment.getUndoView()) == null) {
                    return;
                }
                undoView.showWithAction(ChatAvatarContainer.this.parentFragment.getDialogId(), i3, ChatAvatarContainer.this.parentFragment.getCurrentUser(), Integer.valueOf(currentUserInfo2 != null ? currentUserInfo2.ttl_period : currentChatInfo2.ttl_period), (Runnable) null, (Runnable) null);
            }
        }, true, 0, this.resourcesProvider);
        autoDeletePopupWrapper.lambda$updateItems$7(i);
        int i2 = -2;
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(autoDeletePopupWrapper.windowLayout, i2, i2) { // from class: org.telegram.ui.Components.ChatAvatarContainer.3
            @Override // org.telegram.p029ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                if (ChatAvatarContainer.this.parentFragment != null) {
                    ChatAvatarContainer.this.parentFragment.dimBehindView(false);
                }
            }
        };
        final ActionBarPopupWindow[] actionBarPopupWindowArr = {actionBarPopupWindow};
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindowArr[0].setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindowArr[0].setOutsideTouchable(true);
        actionBarPopupWindowArr[0].setClippingEnabled(true);
        actionBarPopupWindowArr[0].setAnimationStyle(C2888R.style.PopupContextAnimation);
        actionBarPopupWindowArr[0].setFocusable(true);
        autoDeletePopupWrapper.windowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
        actionBarPopupWindowArr[0].setInputMethodMode(2);
        actionBarPopupWindowArr[0].getContentView().setFocusableInTouchMode(true);
        ActionBarPopupWindow actionBarPopupWindow2 = actionBarPopupWindowArr[0];
        BackupImageView backupImageView = this.avatarImageView;
        actionBarPopupWindow2.showAtLocation(backupImageView, 0, (int) (backupImageView.getX() + getX()), (int) this.avatarImageView.getY());
        this.parentFragment.dimBehindView(true);
        return true;
    }

    public void openProfile(boolean z) {
        openProfile(z, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void openProfile(boolean z, boolean z2, boolean z3) {
        boolean z4;
        TLRPC.User user;
        if (z) {
            if (!AndroidUtilities.isTablet()) {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y || !this.avatarImageView.getImageReceiver().hasNotThumb()) {
                }
            }
            z4 = false;
        } else {
            z4 = z;
        }
        TLRPC.User currentUser = this.parentFragment.getCurrentUser();
        TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
        boolean z5 = currentChat != null && currentChat.monoforum;
        if (currentChat != null && currentChat.monoforum) {
            currentChat = this.parentFragment.getMessagesController().getChat(Long.valueOf(currentChat.linked_monoforum_id));
            if (currentChat == null) {
                return;
            }
            if (this.parentFragment.getSendMonoForumPeerId() != 0 && (user = this.parentFragment.getMessagesController().getUser(Long.valueOf(this.parentFragment.getSendMonoForumPeerId()))) != null) {
                currentChat = null;
                currentUser = user;
            }
        }
        ImageReceiver imageReceiver = this.avatarImageView.getImageReceiver();
        String imageKey = imageReceiver.getImageKey();
        ImageLoader imageLoader = ImageLoader.getInstance();
        if (imageKey != null && !imageLoader.isInMemCache(imageKey, false)) {
            Drawable drawable = imageReceiver.getDrawable();
            if ((drawable instanceof BitmapDrawable) && !(drawable instanceof AnimatedFileDrawable)) {
                imageLoader.putImageToCache((BitmapDrawable) drawable, imageKey, false);
            }
        }
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity.isComments) {
            if (currentChat == null) {
                return;
            }
            chatActivity.presentFragment(ProfileActivity.m1294of(-currentChat.f1660id), z3);
            return;
        }
        if (currentUser == null) {
            if (currentChat != null) {
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", currentChat.f1660id);
                if (this.parentFragment.getChatMode() == 3) {
                    bundle.putLong("topic_id", this.parentFragment.getSavedDialogId());
                } else {
                    if (this.parentFragment.isTopic) {
                        bundle.putLong("topic_id", r4.getThreadMessage().getId());
                    }
                }
                bundle.putInt("navBarColor", this.parentFragment.getNavigationBarColor());
                ProfileActivity profileActivity = new ProfileActivity(bundle, this.sharedMediaPreloader);
                if (!z5) {
                    profileActivity.setChatInfo(this.parentFragment.getCurrentChatInfo());
                }
                if (z2) {
                    profileActivity.setPlayProfileAnimation(z4 ? 2 : 1);
                }
                this.parentFragment.presentFragment(profileActivity, z3);
                return;
            }
            return;
        }
        if (currentUser.f1825id == UserObject.VERIFY) {
            return;
        }
        Bundle bundle2 = new Bundle();
        if (UserObject.isUserSelf(currentUser)) {
            if (this.sharedMediaPreloader.hasSharedMedia()) {
                bundle2.putLong("dialog_id", this.parentFragment.getDialogId());
                if (this.parentFragment.getChatMode() == 3) {
                    bundle2.putLong("topic_id", this.parentFragment.getSavedDialogId());
                }
                MediaActivity mediaActivity = new MediaActivity(bundle2, this.sharedMediaPreloader);
                mediaActivity.setChatInfo(this.parentFragment.getCurrentChatInfo());
                this.parentFragment.presentFragment(mediaActivity, z3);
                return;
            }
            return;
        }
        if (this.parentFragment.getChatMode() == 3) {
            long savedDialogId = this.parentFragment.getSavedDialogId();
            bundle2.putBoolean("saved", true);
            if (savedDialogId >= 0) {
                bundle2.putLong("user_id", savedDialogId);
            } else {
                bundle2.putLong("chat_id", -savedDialogId);
            }
        } else {
            bundle2.putLong("user_id", currentUser.f1825id);
            if (this.timeItem != null && !z5) {
                bundle2.putLong("dialog_id", this.parentFragment.getDialogId());
            }
        }
        if (UserObject.isBotForum(currentUser)) {
            bundle2.putLong("topic_id", this.parentFragment.getTopicId());
        }
        bundle2.putBoolean("reportSpam", this.parentFragment.hasReportSpam());
        bundle2.putInt("actionBarColor", getThemedColor(Theme.key_actionBarDefault));
        bundle2.putInt("navBarColor", this.parentFragment.getNavigationBarColor());
        ProfileActivity profileActivity2 = new ProfileActivity(bundle2, this.sharedMediaPreloader);
        if (!z5) {
            TLRPC.UserFull currentUserInfo = this.parentFragment.getCurrentUserInfo();
            ChatActivity chatActivity2 = this.parentFragment;
            profileActivity2.setUserInfo(currentUserInfo, chatActivity2.profileChannelMessageFetcher, chatActivity2.birthdayAssetsFetcher);
        }
        if (z2) {
            profileActivity2.setPlayProfileAnimation(z4 ? 2 : 1);
        }
        this.parentFragment.presentFragment(profileActivity2, z3);
    }

    public void setOccupyStatusBar(boolean z) {
        this.occupyStatusBar = z;
    }

    public void setTitleColors(int i, int i2) {
        this.titleTextView.setTextColor(i);
        this.subtitleTextView.setTextColor(i2);
        this.subtitleTextView.setTag(Integer.valueOf(i2));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i) + this.titleTextView.getPaddingRight();
        int iM1124dp = size - AndroidUtilities.m1124dp((this.avatarImageView.getVisibility() == 0 ? 54 : 0) + 16);
        this.avatarImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(42.0f), TLObject.FLAG_30));
        this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(iM1124dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(32.0f) + this.titleTextView.getPaddingRight(), Integer.MIN_VALUE));
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            simpleTextView.measure(View.MeasureSpec.makeMeasureSpec(iM1124dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), Integer.MIN_VALUE));
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.measure(View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), Integer.MIN_VALUE));
            }
        }
        ImageView imageView = this.timeItem;
        if (imageView != null) {
            imageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(34.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(34.0f), TLObject.FLAG_30));
        }
        ImageView imageView2 = this.starBgItem;
        if (imageView2 != null) {
            imageView2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30));
        }
        ImageView imageView3 = this.starFgItem;
        if (imageView3 != null) {
            imageView3.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30));
        }
        setMeasuredDimension(size, View.MeasureSpec.getSize(i2));
        int i3 = this.lastWidth;
        if (i3 != -1 && i3 != size && i3 > size) {
            fadeOutToLessWidth(i3);
        }
        SimpleTextView simpleTextView2 = (SimpleTextView) this.titleTextLargerCopyView.get();
        if (simpleTextView2 != null) {
            simpleTextView2.measure(View.MeasureSpec.makeMeasureSpec(this.largerWidth - AndroidUtilities.m1124dp((this.avatarImageView.getVisibility() == 0 ? 54 : 0) + 16), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(24.0f), Integer.MIN_VALUE));
        }
        this.lastWidth = size;
    }

    private void fadeOutToLessWidth(int i) {
        this.largerWidth = i;
        View view = (SimpleTextView) this.titleTextLargerCopyView.get();
        if (view != null) {
            removeView(view);
        }
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        this.titleTextLargerCopyView.set(simpleTextView);
        simpleTextView.setTextColor(getThemedColor(Theme.key_actionBarDefaultTitle));
        simpleTextView.setTextSize(18);
        simpleTextView.setGravity(3);
        simpleTextView.setTypeface(AndroidUtilities.bold());
        simpleTextView.setLeftDrawableTopPadding(-AndroidUtilities.m1124dp(1.3f));
        simpleTextView.setRightDrawable(this.titleTextView.getRightDrawable());
        simpleTextView.setRightDrawable2(this.titleTextView.getRightDrawable2());
        simpleTextView.setRightDrawableOutside(this.titleTextView.getRightDrawableOutside());
        simpleTextView.setLeftDrawable(this.titleTextView.getLeftDrawable());
        simpleTextView.setText(this.titleTextView.getText());
        ViewPropertyAnimator duration = simpleTextView.animate().alpha(0.0f).setDuration(350L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fadeOutToLessWidth$4();
            }
        }).start();
        addView(simpleTextView);
        View view2 = (SimpleTextView) this.subtitleTextLargerCopyView.get();
        if (view2 != null) {
            removeView(view2);
        }
        SimpleTextView simpleTextView2 = new SimpleTextView(getContext());
        this.subtitleTextLargerCopyView.set(simpleTextView2);
        int i2 = Theme.key_actionBarDefaultSubtitle;
        simpleTextView2.setTextColor(getThemedColor(i2));
        simpleTextView2.setTag(Integer.valueOf(i2));
        simpleTextView2.setTextSize(14);
        simpleTextView2.setGravity(3);
        SimpleTextView simpleTextView3 = this.subtitleTextView;
        if (simpleTextView3 != null) {
            simpleTextView2.setText(simpleTextView3.getText());
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                simpleTextView2.setText(animatedTextView.getText());
            }
        }
        simpleTextView2.animate().alpha(0.0f).setDuration(350L).setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fadeOutToLessWidth$5();
            }
        }).start();
        addView(simpleTextView2);
        setClipChildren(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fadeOutToLessWidth$4() {
        SimpleTextView simpleTextView = (SimpleTextView) this.titleTextLargerCopyView.get();
        if (simpleTextView != null) {
            removeView(simpleTextView);
            this.titleTextLargerCopyView.set(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fadeOutToLessWidth$5() {
        SimpleTextView simpleTextView = (SimpleTextView) this.subtitleTextLargerCopyView.get();
        if (simpleTextView != null) {
            removeView(simpleTextView);
            this.subtitleTextLargerCopyView.set(null);
            if (this.allowDrawStories) {
                return;
            }
            setClipChildren(true);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int currentActionBarHeight = ((ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m1124dp(42.0f)) / 2) + (this.occupyStatusBar ? AndroidUtilities.statusBarHeight : 0);
        BackupImageView backupImageView = this.avatarImageView;
        int i5 = this.leftPadding;
        int i6 = currentActionBarHeight + 1;
        backupImageView.layout(i5, i6, AndroidUtilities.m1124dp(42.0f) + i5, AndroidUtilities.m1124dp(42.0f) + i6);
        int iM1124dp = this.leftPadding + (this.avatarImageView.getVisibility() == 0 ? AndroidUtilities.m1124dp(54.0f) : 0) + this.rightAvatarPadding;
        SimpleTextView simpleTextView = (SimpleTextView) this.titleTextLargerCopyView.get();
        if (getSubtitleTextView().getVisibility() != 8) {
            this.titleTextView.layout(iM1124dp, (AndroidUtilities.m1124dp(1.3f) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + iM1124dp, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m1124dp(1.3f)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
            if (simpleTextView != null) {
                simpleTextView.layout(iM1124dp, AndroidUtilities.m1124dp(1.3f) + currentActionBarHeight, simpleTextView.getMeasuredWidth() + iM1124dp, simpleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m1124dp(1.3f));
            }
        } else {
            this.titleTextView.layout(iM1124dp, (AndroidUtilities.m1124dp(11.0f) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + iM1124dp, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m1124dp(11.0f)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
            if (simpleTextView != null) {
                simpleTextView.layout(iM1124dp, AndroidUtilities.m1124dp(11.0f) + currentActionBarHeight, simpleTextView.getMeasuredWidth() + iM1124dp, simpleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m1124dp(11.0f));
            }
        }
        ImageView imageView = this.timeItem;
        if (imageView != null) {
            imageView.layout(this.leftPadding + AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(15.0f) + currentActionBarHeight, this.leftPadding + AndroidUtilities.m1124dp(50.0f), AndroidUtilities.m1124dp(49.0f) + currentActionBarHeight);
        }
        ImageView imageView2 = this.starBgItem;
        if (imageView2 != null) {
            imageView2.layout(this.leftPadding + AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight, this.leftPadding + AndroidUtilities.m1124dp(28.0f) + this.starBgItem.getMeasuredWidth(), AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight + this.starBgItem.getMeasuredHeight());
        }
        ImageView imageView3 = this.starFgItem;
        if (imageView3 != null) {
            imageView3.layout(this.leftPadding + AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight, this.leftPadding + AndroidUtilities.m1124dp(28.0f) + this.starFgItem.getMeasuredWidth(), AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight + this.starFgItem.getMeasuredHeight());
        }
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        if (simpleTextView2 != null) {
            simpleTextView2.layout(iM1124dp, AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight, this.subtitleTextView.getMeasuredWidth() + iM1124dp, this.subtitleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m1124dp(24.0f));
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.layout(iM1124dp, AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight, this.animatedSubtitleTextView.getMeasuredWidth() + iM1124dp, this.animatedSubtitleTextView.getTextHeight() + currentActionBarHeight + AndroidUtilities.m1124dp(24.0f));
            }
        }
        SimpleTextView simpleTextView3 = (SimpleTextView) this.subtitleTextLargerCopyView.get();
        if (simpleTextView3 != null) {
            simpleTextView3.layout(iM1124dp, AndroidUtilities.m1124dp(24.0f) + currentActionBarHeight, simpleTextView3.getMeasuredWidth() + iM1124dp, currentActionBarHeight + simpleTextView3.getTextHeight() + AndroidUtilities.m1124dp(24.0f));
        }
    }

    public void setLeftPadding(int i) {
        this.leftPadding = i;
    }

    public void setRightAvatarPadding(int i) {
        this.rightAvatarPadding = i;
    }

    public void showTimeItem(boolean z) {
        ImageView imageView = this.timeItem;
        if (imageView != null && imageView.getTag() == null && this.avatarImageView.getVisibility() == 0) {
            this.timeItem.clearAnimation();
            this.timeItem.setVisibility(0);
            this.timeItem.setTag(1);
            if (z) {
                this.timeItem.animate().setDuration(180L).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setListener(null).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda6
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$showTimeItem$6(valueAnimator);
                    }
                }).start();
                return;
            }
            this.timeItem.setAlpha(1.0f);
            this.timeItem.setScaleY(1.0f);
            this.timeItem.setScaleX(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTimeItem$6(ValueAnimator valueAnimator) {
        invalidate();
    }

    public void hideTimeItem(boolean z) {
        ImageView imageView = this.timeItem;
        if (imageView == null || imageView.getTag() == null) {
            return;
        }
        this.timeItem.clearAnimation();
        this.timeItem.setTag(null);
        if (z) {
            this.timeItem.animate().setDuration(180L).alpha(0.0f).scaleX(0.0f).scaleY(0.0f).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatAvatarContainer.this.timeItem.setVisibility(8);
                    super.onAnimationEnd(animator);
                }
            }).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAvatarContainer$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$hideTimeItem$7(valueAnimator);
                }
            }).start();
            return;
        }
        this.timeItem.setVisibility(8);
        this.timeItem.setAlpha(0.0f);
        this.timeItem.setScaleY(0.0f);
        this.timeItem.setScaleX(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideTimeItem$7(ValueAnimator valueAnimator) {
        invalidate();
    }

    public void setTime(int i, boolean z) {
        if (this.timerDrawable == null) {
            return;
        }
        boolean z2 = this.stars;
        if (i != 0 || this.secretChatTimer) {
            if (!z2) {
                showTimeItem(z);
                this.timerDrawable.setTime(i);
            } else {
                hideTimeItem(z);
            }
        }
    }

    public void setStars(boolean z, boolean z2) {
        ImageView imageView = this.starBgItem;
        if (imageView == null || this.starFgItem == null) {
            return;
        }
        this.stars = z;
        if (z2) {
            imageView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.1f : 0.0f).scaleY(z ? 1.1f : 0.0f).start();
            this.starFgItem.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.0f).scaleY(z ? 1.0f : 0.0f).start();
            return;
        }
        imageView.setAlpha(z ? 1.0f : 0.0f);
        this.starBgItem.setScaleX(z ? 1.1f : 0.0f);
        this.starBgItem.setScaleY(z ? 1.1f : 0.0f);
        this.starFgItem.setAlpha(z ? 1.0f : 0.0f);
        this.starFgItem.setScaleX(z ? 1.0f : 0.0f);
        this.starFgItem.setScaleY(z ? 1.0f : 0.0f);
    }

    public void setTitleIcons(Drawable drawable, Drawable drawable2) {
        this.titleTextView.setLeftDrawable(drawable);
        if (this.rightDrawableIsScamOrVerified) {
            return;
        }
        if (drawable2 != null) {
            this.rightDrawable2ContentDescription = LocaleController.getString(C2888R.string.NotificationsMuted);
        } else {
            this.rightDrawable2ContentDescription = null;
        }
        this.titleTextView.setRightDrawable2(drawable2);
    }

    public AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable getBotVerificationDrawable(long j, boolean z) {
        if (j == 0) {
            return null;
        }
        this.botVerificationDrawable.set(j, z);
        this.botVerificationDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
        this.botVerificationDrawable.offset(0, AndroidUtilities.m1124dp(1.0f));
        return this.botVerificationDrawable;
    }

    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, false, false, false, false, null, null, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTitle(CharSequence charSequence, boolean z, boolean z2, boolean z3, boolean z4, BadgeDTO badgeDTO, TLRPC.EmojiStatus emojiStatus, boolean z5) {
        Drawable drawable;
        if (charSequence != null) {
            charSequence = Emoji.replaceEmoji(charSequence, this.titleTextView.getPaint().getFontMetricsInt(), false);
        }
        this.titleTextView.setText(charSequence);
        Drawable rightDrawable = this.titleTextView.getRightDrawable();
        if (rightDrawable instanceof AnimatedEmojiDrawable.WrapSizeDrawable) {
            Drawable drawable2 = ((AnimatedEmojiDrawable.WrapSizeDrawable) rightDrawable).getDrawable();
            if (drawable2 instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable2).removeView(this.titleTextView);
            }
        }
        Drawable rightDrawable2 = this.titleTextView.getRightDrawable2();
        if (rightDrawable2 instanceof AnimatedEmojiDrawable.WrapSizeDrawable) {
            Drawable drawable3 = ((AnimatedEmojiDrawable.WrapSizeDrawable) rightDrawable2).getDrawable();
            if (drawable3 instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable3).removeView(this.titleTextView);
            }
        }
        Drawable drawable4 = null;
        this.rightDrawableContentDescription = null;
        this.rightDrawable2ContentDescription = null;
        this.rightDrawableIsScamOrVerified = false;
        this.titleTextView.setRightDrawableTopPadding(0);
        Object[] objArr = DialogObject.getEmojiStatusDocumentId(emojiStatus) != 0;
        ArrayList arrayList = new ArrayList();
        if (z || z2) {
            ScamDrawable scamDrawable = new ScamDrawable(11, !z ? 1 : 0);
            scamDrawable.setColor(getThemedColor(Theme.key_actionBarDefaultSubtitle));
            arrayList.add(scamDrawable);
            this.rightDrawable2ContentDescription = LocaleController.getString(C2888R.string.ScamMessage);
            this.rightDrawableIsScamOrVerified = true;
        }
        if (z3) {
            if (this.verifiedBackground == null) {
                this.verifiedBackground = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2888R.drawable.verified_area).mutate();
                this.verifiedCheck = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2888R.drawable.verified_check).mutate();
            }
            Drawable drawable5 = this.verifiedBackground;
            int themedColor = getThemedColor(Theme.key_profile_verifiedBackground);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            drawable5.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            this.verifiedCheck.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedCheck), mode));
            arrayList.add(new CombinedDrawable(this.verifiedBackground, this.verifiedCheck));
            this.rightDrawable2ContentDescription = LocaleController.getString(C2888R.string.AccDescrVerified);
            this.rightDrawableIsScamOrVerified = true;
        }
        if (badgeDTO != null) {
            this.emojiStatusDrawable2.set(badgeDTO.getDocumentId(), z5);
            this.emojiStatusDrawable2.setParticles(true, false);
            this.emojiStatusDrawable2.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
            if (objArr != false && !arrayList.isEmpty()) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(this.emojiStatusDrawable2);
            this.rightDrawableIsScamOrVerified = true;
        }
        if (objArr == true) {
            this.emojiStatusDrawable.set(DialogObject.getEmojiStatusDocumentId(emojiStatus), z5);
            this.emojiStatusDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
            drawable = this.emojiStatusDrawable;
            if (!arrayList.isEmpty()) {
                drawable4 = (Drawable) arrayList.get(0);
            }
        } else if (!z4) {
            drawable = !arrayList.isEmpty() ? (Drawable) arrayList.get(0) : null;
            if (arrayList.size() > 1) {
                drawable4 = (Drawable) arrayList.get(1);
            }
        } else if (badgeDTO != null) {
            drawable = this.emojiStatusDrawable2;
            arrayList.remove(arrayList.size() - 1);
            if (!arrayList.isEmpty()) {
                drawable4 = (Drawable) arrayList.get(0);
            }
        } else {
            Drawable drawableMutate = ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2888R.drawable.msg_premium_liststar).mutate();
            this.emojiStatusDefaultDrawable = drawableMutate;
            int i = Theme.key_profile_verifiedBackground;
            drawableMutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.MULTIPLY));
            this.emojiStatusDrawable.set(this.emojiStatusDefaultDrawable, z5);
            this.emojiStatusDrawable.setColor(Integer.valueOf(getThemedColor(i)));
            drawable = this.emojiStatusDrawable;
            this.rightDrawableContentDescription = LocaleController.getString(C2888R.string.AccDescrPremium);
            if (!arrayList.isEmpty()) {
                drawable4 = (Drawable) arrayList.get(0);
            }
        }
        this.titleTextView.setRightDrawable(drawable);
        this.titleTextView.setRightDrawable2(drawable4);
    }

    public void setSubtitle(CharSequence charSequence) {
        if (this.lastSubtitle == null) {
            SimpleTextView simpleTextView = this.subtitleTextView;
            if (simpleTextView != null) {
                simpleTextView.setText(charSequence);
                return;
            }
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                animatedTextView.setText(charSequence);
                return;
            }
            return;
        }
        this.lastSubtitle = charSequence;
    }

    public ImageView getTimeItem() {
        return this.timeItem;
    }

    public SimpleTextView getTitleTextView() {
        return this.titleTextView;
    }

    public View getSubtitleTextView() {
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            return simpleTextView;
        }
        AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
        if (animatedTextView != null) {
            return animatedTextView;
        }
        return null;
    }

    public TextPaint getSubtitlePaint() {
        SimpleTextView simpleTextView = this.subtitleTextView;
        return simpleTextView != null ? simpleTextView.getTextPaint() : this.animatedSubtitleTextView.getPaint();
    }

    public void onDestroy() {
        onDestroy(false);
    }

    public void onDestroy(boolean z) {
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = this.sharedMediaPreloader;
        if (sharedMediaPreloader != null) {
            sharedMediaPreloader.onDestroy(this.parentFragment, z);
        }
    }

    private void setTypingAnimation(boolean z) {
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView == null) {
            return;
        }
        int i = 0;
        if (z) {
            try {
                int iIntValue = this.subtitleIsThinkingBot ? 0 : MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.parentFragment.getDialogId(), this.parentFragment.getThreadId()).intValue();
                StatusDrawable statusDrawable = this.statusDrawables[iIntValue];
                if (statusDrawable == null) {
                    return;
                }
                if (iIntValue == 5) {
                    this.subtitleTextView.replaceTextWithDrawable(statusDrawable, "**oo**");
                    this.statusDrawables[iIntValue].setColor(getThemedColor(Theme.key_chat_status));
                    this.subtitleTextView.setLeftDrawable((Drawable) null);
                } else {
                    this.subtitleTextView.replaceTextWithDrawable(null, null);
                    this.statusDrawables[iIntValue].setColor(getThemedColor(Theme.key_chat_status));
                    this.subtitleTextView.setLeftDrawable(this.statusDrawables[iIntValue]);
                }
                this.currentTypingDrawable = this.statusDrawables[iIntValue];
                while (true) {
                    StatusDrawable[] statusDrawableArr = this.statusDrawables;
                    if (i >= statusDrawableArr.length) {
                        return;
                    }
                    StatusDrawable statusDrawable2 = statusDrawableArr[i];
                    if (statusDrawable2 != null) {
                        if (i == iIntValue) {
                            statusDrawable2.start();
                        } else {
                            statusDrawable2.stop();
                        }
                    }
                    i++;
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        } else {
            this.currentTypingDrawable = null;
            simpleTextView.setLeftDrawable((Drawable) null);
            this.subtitleTextView.replaceTextWithDrawable(null, null);
            while (true) {
                StatusDrawable[] statusDrawableArr2 = this.statusDrawables;
                if (i >= statusDrawableArr2.length) {
                    return;
                }
                StatusDrawable statusDrawable3 = statusDrawableArr2[i];
                if (statusDrawable3 != null) {
                    statusDrawable3.stop();
                }
                i++;
            }
        }
    }

    public void updateSubtitle() {
        updateSubtitle(false);
    }

    public void updateSubtitle(boolean z) {
        int i;
        String pluralString;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        if (chatActivity.getChatMode() == 6) {
            setSubtitle(BusinessLinksController.stripHttps(this.parentFragment.businessLink.link));
            return;
        }
        TLRPC.User currentUser = this.parentFragment.getCurrentUser();
        TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
        if ((UserObject.isUserSelf(currentUser) || UserObject.isReplyUser(currentUser) || ((currentUser != null && currentUser.f1825id == UserObject.VERIFY) || (this.parentFragment.getChatMode() != 0 && this.parentFragment.getChatMode() != 8))) && this.parentFragment.getChatMode() != 3) {
            if (getSubtitleTextView().getVisibility() != 8) {
                getSubtitleTextView().setVisibility(8);
                return;
            }
            return;
        }
        boolean z2 = false;
        this.subtitleIsThinkingBot = false;
        CharSequence printingString = MessagesController.getInstance(this.currentAccount).getPrintingString(this.parentFragment.getDialogId(), this.parentFragment.getThreadId(), false);
        if (printingString == null) {
            UserObject.isBotForum(currentUser);
        }
        CharSequence string = _UrlKt.FRAGMENT_ENCODE_SET;
        if (printingString != null) {
            printingString = TextUtils.replace(printingString, new String[]{"..."}, new String[]{_UrlKt.FRAGMENT_ENCODE_SET});
        }
        Property property = View.ALPHA;
        Property property2 = View.TRANSLATION_Y;
        if (printingString == null || printingString.length() == 0 || (ChatObject.isChannel(currentChat) && !currentChat.megagroup)) {
            if (this.parentFragment.isThreadChat() && !this.parentFragment.isTopic) {
                if (this.titleTextView.getTag() != null) {
                    return;
                }
                this.titleTextView.setTag(1);
                AnimatorSet animatorSet = this.titleAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.titleAnimation = null;
                }
                if (z) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    this.titleAnimation = animatorSet2;
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(this.titleTextView, (Property<SimpleTextView, Float>) property2, AndroidUtilities.m1124dp(9.7f)), ObjectAnimator.ofFloat(getSubtitleTextView(), (Property<View, Float>) property, 0.0f));
                    this.titleAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            ChatAvatarContainer.this.titleAnimation = null;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (ChatAvatarContainer.this.titleAnimation == animator) {
                                ChatAvatarContainer.this.getSubtitleTextView().setVisibility(4);
                                ChatAvatarContainer.this.titleAnimation = null;
                            }
                        }
                    });
                    this.titleAnimation.setDuration(180L);
                    this.titleAnimation.start();
                    return;
                }
                this.titleTextView.setTranslationY(AndroidUtilities.m1124dp(9.7f));
                getSubtitleTextView().setAlpha(0.0f);
                getSubtitleTextView().setVisibility(4);
                return;
            }
            setTypingAnimation(false);
            if (this.parentFragment.getChatMode() == 8) {
                ChatActivity chatActivity2 = this.parentFragment;
                if (chatActivity2.isSubscriberSuggestions) {
                    string = LocaleController.getString(C2888R.string.ChatMessageSuggestions);
                } else {
                    if (chatActivity2.getTopicId() == 0) {
                        int topicsCount = this.parentFragment.getMessagesController().getTopicsController().getTopicsCount(-this.parentFragment.getDialogId());
                        if (topicsCount > 0) {
                            pluralString = LocaleController.formatPluralStringComma("Chats", topicsCount);
                        } else {
                            pluralString = LocaleController.getString(C2888R.string.ChatMessageSuggestions);
                        }
                    } else {
                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(currentChat.f1660id, this.parentFragment.getTopicId());
                        int i2 = tL_forumTopicFindTopic != null ? tL_forumTopicFindTopic.totalMessagesCount : 0;
                        pluralString = i2 > 0 ? LocaleController.formatPluralString("messages", i2, Integer.valueOf(i2)) : LocaleController.formatString(C2888R.string.TopicProfileStatus, ForumUtilities.getMonoForumTitle(this.currentAccount, currentChat));
                    }
                    string = pluralString;
                }
            } else if (this.parentFragment.getChatMode() == 3) {
                string = LocaleController.formatPluralString("SavedMessagesCount", Math.max(1, this.parentFragment.getMessagesController().getSavedMessagesController().getMessagesCount(this.parentFragment.getSavedDialogId())), new Object[0]);
            } else {
                ChatActivity chatActivity3 = this.parentFragment;
                if (chatActivity3.isTopic && currentChat != null) {
                    TLRPC.TL_forumTopic tL_forumTopicFindTopic2 = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(currentChat.f1660id, this.parentFragment.getTopicId());
                    int i3 = tL_forumTopicFindTopic2 != null ? tL_forumTopicFindTopic2.totalMessagesCount - 1 : 0;
                    pluralString = i3 > 0 ? LocaleController.formatPluralString("messages", i3, Integer.valueOf(i3)) : LocaleController.formatString(C2888R.string.TopicProfileStatus, currentChat.title);
                    string = pluralString;
                } else if (currentChat != null) {
                    string = getChatSubtitle(currentChat, chatActivity3.getCurrentChatInfo(), this.onlineCount);
                } else if (currentUser != null) {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(currentUser.f1825id));
                    if (user != null) {
                        currentUser = user;
                    }
                    if (!UserObject.isReplyUser(currentUser)) {
                        long j = currentUser.f1825id;
                        if (j != UserObject.VERIFY) {
                            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                string = LocaleController.getString(C2888R.string.ChatYourSelf);
                            } else {
                                long j2 = currentUser.f1825id;
                                if (j2 == 333000 || j2 == 777000 || j2 == 42777) {
                                    string = LocaleController.getString(C2888R.string.ServiceNotifications);
                                } else if (MessagesController.isSupportUser(currentUser)) {
                                    string = LocaleController.getString(C2888R.string.SupportStatus);
                                } else {
                                    boolean z3 = currentUser.bot;
                                    if (z3 && (i = currentUser.bot_active_users) != 0) {
                                        string = LocaleController.formatPluralStringComma("BotUsers", i, ',');
                                    } else if (z3) {
                                        string = LocaleController.getString(C2888R.string.Bot);
                                    } else {
                                        boolean[] zArr = this.isOnline;
                                        zArr[0] = false;
                                        string = LocaleController.formatUserStatus(this.currentAccount, currentUser, zArr, this.allowShorterStatus ? this.statusMadeShorter : null, new boolean[1]);
                                        z2 = this.isOnline[0];
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            if (this.parentFragment.isThreadChat() && this.titleTextView.getTag() != null) {
                this.titleTextView.setTag(null);
                getSubtitleTextView().setVisibility(0);
                AnimatorSet animatorSet3 = this.titleAnimation;
                if (animatorSet3 != null) {
                    animatorSet3.cancel();
                    this.titleAnimation = null;
                }
                if (z) {
                    AnimatorSet animatorSet4 = new AnimatorSet();
                    this.titleAnimation = animatorSet4;
                    animatorSet4.playTogether(ObjectAnimator.ofFloat(this.titleTextView, (Property<SimpleTextView, Float>) property2, 0.0f), ObjectAnimator.ofFloat(getSubtitleTextView(), (Property<View, Float>) property, 1.0f));
                    this.titleAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAvatarContainer.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatAvatarContainer.this.titleAnimation = null;
                        }
                    });
                    this.titleAnimation.setDuration(180L);
                    this.titleAnimation.start();
                } else {
                    this.titleTextView.setTranslationY(0.0f);
                    getSubtitleTextView().setAlpha(1.0f);
                }
            }
            Integer printingStringType = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.parentFragment.getDialogId(), this.parentFragment.getThreadId());
            string = (printingStringType == null || printingStringType.intValue() != 5) ? printingString : Emoji.replaceEmoji(printingString, getSubtitlePaint().getFontMetricsInt(), false);
            setTypingAnimation(true);
            z2 = true;
        }
        this.lastSubtitleColorKey = z2 ? Theme.key_chat_status : Theme.key_actionBarDefaultSubtitle;
        if (this.lastSubtitle == null) {
            SimpleTextView simpleTextView = this.subtitleTextView;
            if (simpleTextView != null) {
                simpleTextView.setText(string);
                Integer num = this.overrideSubtitleColor;
                if (num == null) {
                    this.subtitleTextView.setTextColor(getThemedColor(this.lastSubtitleColorKey));
                    this.subtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                    return;
                } else {
                    this.subtitleTextView.setTextColor(num.intValue());
                    return;
                }
            }
            this.animatedSubtitleTextView.setText(string, z);
            Integer num2 = this.overrideSubtitleColor;
            if (num2 == null) {
                this.animatedSubtitleTextView.setTextColor(getThemedColor(this.lastSubtitleColorKey));
                this.animatedSubtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                return;
            } else {
                this.animatedSubtitleTextView.setTextColor(num2.intValue());
                return;
            }
        }
        this.lastSubtitle = string;
    }

    public static CharSequence getChatSubtitle(TLRPC.Chat chat, TLRPC.ChatFull chatFull, int i) {
        TLRPC.ChatParticipants chatParticipants;
        int i2;
        String shortNumber;
        if (!ChatObject.isChannel(chat)) {
            if (ChatObject.isKickedFromChat(chat)) {
                return LocaleController.getString(C2888R.string.YouWereKicked);
            }
            if (ChatObject.isLeftFromChat(chat)) {
                return LocaleController.getString(C2888R.string.YouLeft);
            }
            int size = chat.participants_count;
            if (chatFull != null && (chatParticipants = chatFull.participants) != null) {
                size = chatParticipants.participants.size();
            }
            return (i <= 1 || size == 0) ? LocaleController.formatPluralString("Members", size, new Object[0]) : String.format("%s, %s", LocaleController.formatPluralString("Members", size, new Object[0]), LocaleController.formatPluralString("OnlineCount", i, new Object[0]));
        }
        if (chatFull != null && (i2 = chatFull.participants_count) != 0) {
            if (chat.megagroup) {
                return i > 1 ? String.format("%s, %s", LocaleController.formatPluralString("Members", i2, new Object[0]), LocaleController.formatPluralString("OnlineCount", Math.min(i, chatFull.participants_count), new Object[0])) : LocaleController.formatPluralString("Members", i2, new Object[0]);
            }
            int[] iArr = new int[1];
            boolean zIsAccessibilityScreenReaderEnabled = AndroidUtilities.isAccessibilityScreenReaderEnabled();
            int i3 = chatFull.participants_count;
            if (zIsAccessibilityScreenReaderEnabled) {
                iArr[0] = i3;
                shortNumber = String.valueOf(i3);
            } else {
                shortNumber = LocaleController.formatShortNumber(i3, iArr);
            }
            return chat.megagroup ? LocaleController.formatPluralString("Members", iArr[0], new Object[0]).replace(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[0])), shortNumber) : LocaleController.formatPluralString("Subscribers", iArr[0], new Object[0]).replace(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(iArr[0])), shortNumber);
        }
        if (!chat.megagroup) {
            if (ChatObject.isPublic(chat)) {
                return LocaleController.getString(C2888R.string.ChannelPublic).toLowerCase();
            }
            return LocaleController.getString(C2888R.string.ChannelPrivate).toLowerCase();
        }
        if (chatFull == null) {
            return LocaleController.getString(C2888R.string.Loading).toLowerCase();
        }
        if (chat.has_geo) {
            return LocaleController.getString(C2888R.string.MegaLocation).toLowerCase();
        }
        if (ChatObject.isPublic(chat)) {
            return LocaleController.getString(C2888R.string.MegaPublic).toLowerCase();
        }
        return LocaleController.getString(C2888R.string.MegaPrivate).toLowerCase();
    }

    public int getLastSubtitleColorKey() {
        return this.lastSubtitleColorKey;
    }

    public void setChatAvatar(TLRPC.Chat chat) {
        this.avatarDrawable.setInfo(this.currentAccount, chat);
        BackupImageView backupImageView = this.avatarImageView;
        if (backupImageView != null) {
            backupImageView.setForUserOrChat(chat, this.avatarDrawable);
            this.avatarImageView.setRoundRadius(ExteraConfig.getAvatarCorners(42.0f, false, chat != null && chat.forum, ChatObject.hasStories(chat)));
        }
    }

    public void setUserAvatar(TLRPC.User user) {
        setUserAvatar(user, false);
    }

    public void setUserAvatar(TLRPC.User user, boolean z) {
        this.avatarDrawable.setInfo(this.currentAccount, user);
        if (UserObject.isReplyUser(user)) {
            this.avatarDrawable.setAvatarType(12);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView = this.avatarImageView;
            if (backupImageView != null) {
                backupImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                return;
            }
            return;
        }
        if (UserObject.isAnonymous(user)) {
            this.avatarDrawable.setAvatarType(21);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView2 = this.avatarImageView;
            if (backupImageView2 != null) {
                backupImageView2.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                return;
            }
            return;
        }
        if (UserObject.isUserSelf(user) && !z) {
            this.avatarDrawable.setAvatarType(1);
            this.avatarDrawable.setScaleSize(0.8f);
            BackupImageView backupImageView3 = this.avatarImageView;
            if (backupImageView3 != null) {
                backupImageView3.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                return;
            }
            return;
        }
        this.avatarDrawable.setScaleSize(1.0f);
        BackupImageView backupImageView4 = this.avatarImageView;
        if (backupImageView4 != null) {
            backupImageView4.setForUserOrChat(user, this.avatarDrawable);
        }
    }

    public void checkAndUpdateAvatar() {
        TLRPC.User user;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        TLRPC.User currentUser = chatActivity.getCurrentUser();
        TLRPC.Chat currentChat = this.parentFragment.getCurrentChat();
        if (this.parentFragment.getChatMode() == 3) {
            long savedDialogId = this.parentFragment.getSavedDialogId();
            if (savedDialogId >= 0) {
                user = this.parentFragment.getMessagesController().getUser(Long.valueOf(savedDialogId));
                currentChat = null;
            } else {
                currentChat = this.parentFragment.getMessagesController().getChat(Long.valueOf(-savedDialogId));
                user = null;
            }
        } else {
            user = currentUser;
        }
        if (user != null) {
            this.avatarDrawable.setInfo(this.currentAccount, user);
            if (UserObject.isReplyUser(user)) {
                this.avatarDrawable.setScaleSize(0.8f);
                this.avatarDrawable.setAvatarType(12);
                BackupImageView backupImageView = this.avatarImageView;
                if (backupImageView != null) {
                    backupImageView.setAnimatedEmojiDrawable(null);
                    this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                    return;
                }
                return;
            }
            if (UserObject.isAnonymous(user)) {
                this.avatarDrawable.setScaleSize(0.8f);
                this.avatarDrawable.setAvatarType(21);
                BackupImageView backupImageView2 = this.avatarImageView;
                if (backupImageView2 != null) {
                    backupImageView2.setAnimatedEmojiDrawable(null);
                    this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                    return;
                }
                return;
            }
            if (UserObject.isUserSelf(user) && this.parentFragment.getChatMode() == 3) {
                this.avatarDrawable.setScaleSize(0.8f);
                this.avatarDrawable.setAvatarType(22);
                BackupImageView backupImageView3 = this.avatarImageView;
                if (backupImageView3 != null) {
                    backupImageView3.setAnimatedEmojiDrawable(null);
                    this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                    return;
                }
                return;
            }
            if (UserObject.isUserSelf(user)) {
                this.avatarDrawable.setScaleSize(0.8f);
                this.avatarDrawable.setAvatarType(1);
                BackupImageView backupImageView4 = this.avatarImageView;
                if (backupImageView4 != null) {
                    backupImageView4.setAnimatedEmojiDrawable(null);
                    this.avatarImageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, user);
                    return;
                }
                return;
            }
            this.avatarDrawable.setScaleSize(1.0f);
            BackupImageView backupImageView5 = this.avatarImageView;
            if (backupImageView5 != null) {
                backupImageView5.setAnimatedEmojiDrawable(null);
                this.avatarImageView.imageReceiver.setForUserOrChat(user, this.avatarDrawable, null, true, 3, false);
                return;
            }
            return;
        }
        if (!ChatObject.isMonoForum(currentChat)) {
            if (currentChat != null) {
                this.avatarDrawable.setScaleSize(1.0f);
                this.avatarDrawable.setInfo(this.currentAccount, currentChat);
                BackupImageView backupImageView6 = this.avatarImageView;
                if (backupImageView6 != null) {
                    backupImageView6.setAnimatedEmojiDrawable(null);
                    this.avatarImageView.setForUserOrChat(currentChat, this.avatarDrawable);
                    this.avatarImageView.setRoundRadius(ExteraConfig.getAvatarCorners(42.0f, false, currentChat.forum, ChatObject.hasStories(currentChat)));
                    return;
                }
                return;
            }
            return;
        }
        long topicId = this.parentFragment.getTopicId();
        if (!ChatObject.canManageMonoForum(this.currentAccount, currentChat) || topicId == 0) {
            this.avatarImageView.setAnimatedEmojiDrawable(null);
            ForumUtilities.setMonoForumAvatar(this.currentAccount, currentChat, this.avatarDrawable, this.avatarImageView);
        } else if (topicId > 0) {
            TLRPC.User user2 = this.parentFragment.getMessagesController().getUser(Long.valueOf(topicId));
            this.avatarDrawable.setInfo(user2);
            this.avatarImageView.setAnimatedEmojiDrawable(null);
            this.avatarImageView.setForUserOrChat(user2, this.avatarDrawable);
        } else {
            TLRPC.Chat chat = this.parentFragment.getMessagesController().getChat(Long.valueOf(-topicId));
            this.avatarDrawable.setInfo(chat);
            this.avatarImageView.setAnimatedEmojiDrawable(null);
            this.avatarImageView.setForUserOrChat(chat, this.avatarDrawable);
        }
        this.avatarImageView.setRoundRadius(ExteraConfig.getAvatarCorners(42.0f));
    }

    public void updateOnlineCount() {
        TLRPC.UserStatus userStatus;
        boolean z;
        ChatActivity chatActivity = this.parentFragment;
        if (chatActivity == null) {
            return;
        }
        this.onlineCount = 0;
        TLRPC.ChatFull currentChatInfo = chatActivity.getCurrentChatInfo();
        if (currentChatInfo == null) {
            return;
        }
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        if ((currentChatInfo instanceof TLRPC.TL_chatFull) || (((z = currentChatInfo instanceof TLRPC.TL_channelFull)) && currentChatInfo.participants_count <= 200 && currentChatInfo.participants != null)) {
            for (int i = 0; i < currentChatInfo.participants.participants.size(); i++) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(((TLRPC.ChatParticipant) currentChatInfo.participants.participants.get(i)).user_id));
                if (user != null && (userStatus = user.status) != null && ((userStatus.expires > currentTime || user.f1825id == UserConfig.getInstance(this.currentAccount).getClientUserId()) && user.status.expires > 10000)) {
                    this.onlineCount++;
                }
            }
            return;
        }
        if (!z || currentChatInfo.participants_count <= 200) {
            return;
        }
        this.onlineCount = currentChatInfo.online_count;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.parentFragment != null) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateConnectionState);
            NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
            if (this.parentFragment.getChatMode() == 3) {
                NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.savedMessagesDialogsUpdate);
            }
            this.currentConnectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
            updateCurrentConnectionState();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatusDrawable2;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable3 = this.botVerificationDrawable;
        if (swapAnimatedEmojiDrawable3 != null) {
            swapAnimatedEmojiDrawable3.attach();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.parentFragment != null) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateConnectionState);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
            if (this.parentFragment.getChatMode() == 3) {
                NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.savedMessagesDialogsUpdate);
            }
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatusDrawable2;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.detach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable3 = this.botVerificationDrawable;
        if (swapAnimatedEmojiDrawable3 != null) {
            swapAnimatedEmojiDrawable3.detach();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didUpdateConnectionState) {
            int connectionState = ConnectionsManager.getInstance(this.currentAccount).getConnectionState();
            if (this.currentConnectionState != connectionState) {
                this.currentConnectionState = connectionState;
                updateCurrentConnectionState();
                return;
            }
            return;
        }
        if (i == NotificationCenter.emojiLoaded) {
            SimpleTextView simpleTextView = this.titleTextView;
            if (simpleTextView != null) {
                simpleTextView.invalidate();
            }
            if (getSubtitleTextView() != null) {
                getSubtitleTextView().invalidate();
            }
            invalidate();
            return;
        }
        if (i == NotificationCenter.savedMessagesDialogsUpdate) {
            updateSubtitle(true);
        }
    }

    private void updateCurrentConnectionState() {
        String string;
        int i = this.currentConnectionState;
        if (i == 2) {
            string = LocaleController.getString(C2888R.string.WaitingForNetwork);
        } else if (i == 1) {
            string = LocaleController.getString(C2888R.string.Connecting);
        } else if (i == 5) {
            string = LocaleController.getString(C2888R.string.Updating);
        } else {
            string = i == 4 ? LocaleController.getString(C2888R.string.ConnectingToProxy) : null;
        }
        if (string == null) {
            CharSequence charSequence = this.lastSubtitle;
            if (charSequence != null) {
                SimpleTextView simpleTextView = this.subtitleTextView;
                if (simpleTextView != null) {
                    simpleTextView.setText(charSequence);
                    this.lastSubtitle = null;
                    Integer num = this.overrideSubtitleColor;
                    if (num != null) {
                        this.subtitleTextView.setTextColor(num.intValue());
                        return;
                    }
                    int i2 = this.lastSubtitleColorKey;
                    if (i2 >= 0) {
                        this.subtitleTextView.setTextColor(getThemedColor(i2));
                        this.subtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                        return;
                    }
                    return;
                }
                AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
                if (animatedTextView != null) {
                    animatedTextView.setText(charSequence, true ^ LocaleController.isRTL);
                    this.lastSubtitle = null;
                    Integer num2 = this.overrideSubtitleColor;
                    if (num2 != null) {
                        this.animatedSubtitleTextView.setTextColor(num2.intValue());
                        return;
                    }
                    int i3 = this.lastSubtitleColorKey;
                    if (i3 >= 0) {
                        this.animatedSubtitleTextView.setTextColor(getThemedColor(i3));
                        this.animatedSubtitleTextView.setTag(Integer.valueOf(this.lastSubtitleColorKey));
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        if (simpleTextView2 != null) {
            if (this.lastSubtitle == null) {
                this.lastSubtitle = simpleTextView2.getText();
            }
            this.subtitleTextView.setText(string);
            Integer num3 = this.overrideSubtitleColor;
            if (num3 != null) {
                this.subtitleTextView.setTextColor(num3.intValue());
                return;
            }
            SimpleTextView simpleTextView3 = this.subtitleTextView;
            int i4 = Theme.key_actionBarDefaultSubtitle;
            simpleTextView3.setTextColor(getThemedColor(i4));
            this.subtitleTextView.setTag(Integer.valueOf(i4));
            return;
        }
        AnimatedTextView animatedTextView2 = this.animatedSubtitleTextView;
        if (animatedTextView2 != null) {
            if (this.lastSubtitle == null) {
                this.lastSubtitle = animatedTextView2.getText();
            }
            this.animatedSubtitleTextView.setText(string, true ^ LocaleController.isRTL);
            Integer num4 = this.overrideSubtitleColor;
            if (num4 != null) {
                this.animatedSubtitleTextView.setTextColor(num4.intValue());
                return;
            }
            AnimatedTextView animatedTextView3 = this.animatedSubtitleTextView;
            int i5 = Theme.key_actionBarDefaultSubtitle;
            animatedTextView3.setTextColor(getThemedColor(i5));
            this.animatedSubtitleTextView.setTag(Integer.valueOf(i5));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        StringBuilder sb = new StringBuilder();
        sb.append(this.titleTextView.getText());
        if (this.rightDrawableContentDescription != null) {
            sb.append(", ");
            sb.append(this.rightDrawableContentDescription);
        }
        if (this.rightDrawable2ContentDescription != null) {
            sb.append(", ");
            sb.append(this.rightDrawable2ContentDescription);
        }
        sb.append("\n");
        SimpleTextView simpleTextView = this.subtitleTextView;
        if (simpleTextView != null) {
            sb.append(simpleTextView.getText());
        } else {
            AnimatedTextView animatedTextView = this.animatedSubtitleTextView;
            if (animatedTextView != null) {
                sb.append(animatedTextView.getText());
            }
        }
        accessibilityNodeInfo.setContentDescription(sb);
        if (accessibilityNodeInfo.isClickable()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString(C2888R.string.OpenProfile)));
        }
        if (accessibilityNodeInfo.isLongClickable()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString(C2888R.string.Search)));
        }
    }

    public SharedMediaLayout.SharedMediaPreloader getSharedMediaPreloader() {
        return this.sharedMediaPreloader;
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void updateColors() {
        StatusDrawable statusDrawable = this.currentTypingDrawable;
        if (statusDrawable != null) {
            statusDrawable.setColor(getThemedColor(Theme.key_chat_status));
        }
        Drawable drawable = this.emojiStatusDefaultDrawable;
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.botVerificationDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatusDrawable;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.setColor(Integer.valueOf(getThemedColor(Theme.key_profile_verifiedBackground)));
        }
        Drawable drawable2 = this.verifiedBackground;
        if (drawable2 != null) {
            drawable2.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedBackground), PorterDuff.Mode.MULTIPLY));
        }
        Drawable drawable3 = this.verifiedCheck;
        if (drawable3 != null) {
            drawable3.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_profile_verifiedCheck), PorterDuff.Mode.MULTIPLY));
        }
        invalidate();
    }
}
