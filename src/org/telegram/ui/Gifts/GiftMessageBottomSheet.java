package org.telegram.ui.Gifts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatActivityEnterView;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.HintsController;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceWrapped;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.Components.chat.ChatInputViewsContainer;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.chat.WallpaperBitmapProvider;
import org.telegram.ui.Components.inset.WindowAnimatedInsetsProvider;
import org.telegram.ui.Components.inset.WindowInsetsStateHolder;
import org.telegram.ui.Stories.recorder.PreviewView;

/* JADX INFO: loaded from: classes7.dex */
public class GiftMessageBottomSheet extends BottomSheet {
    private final Drawable backgroundDrawable;
    private final int captionLimit;
    private final AnimatedTextView captionLimitView;
    private final FrameLayout chatInputBubbleContainer;
    private final FrameLayout chatInputInAppContainer;
    private final ChatInputViewsContainer chatInputViewsContainer;
    private final ImageView closeButton;
    private int codepointCount;
    private final ChatActivityEnterView commentView;
    private final TL_stars.TL_starGiftUnique gift;
    private boolean hideMyName;
    private Callback mCallback;
    private boolean mLoading;
    private final BlurredBackgroundDrawableViewFactory navbarContentDrawableFactory;
    private final BlurredBackgroundSourceWrapped navbarContentSourceWallpaper;
    private final TextView previewInChatHeader;
    private final FrameLayout publicCheckboxButton;
    private final CheckBox2 publicCheckboxView;
    private final WindowAnimatedInsetsProvider rootAnimatedInsetsListener;
    private final SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private final StarGiftUniqueActionView starGiftUniqueActionView;
    private final long toDialogId;
    private final WallpaperBitmapProvider wallpaperBitmapProvider;
    private final WindowInsetsStateHolder windowInsetsStateHolder;
    private ChatActivityEnterView.SendButton writeButton;

    public interface Callback {
        void performSend(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

    public GiftMessageBottomSheet(Context context, Theme.ResourcesProvider resourcesProvider, final TL_stars.TL_starGiftUnique tL_starGiftUnique, long j) {
        super(context, true, true, (Theme.ResourcesProvider) null);
        this.wallpaperBitmapProvider = new WallpaperBitmapProvider();
        WindowInsetsStateHolder windowInsetsStateHolder = new WindowInsetsStateHolder(new Runnable() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.checkInsets();
            }
        });
        this.windowInsetsStateHolder = windowInsetsStateHolder;
        AndroidUtilities.enableEdgeToEdge(getWindow());
        this.gift = tL_starGiftUnique;
        this.toDialogId = j;
        this.captionLimit = MessagesController.getInstance(this.currentAccount).stargiftsMessageLengthMax;
        BlurredBackgroundSourceWrapped blurredBackgroundSourceWrapped = new BlurredBackgroundSourceWrapped();
        this.navbarContentSourceWallpaper = blurredBackgroundSourceWrapped;
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceWrapped);
        this.navbarContentDrawableFactory = blurredBackgroundDrawableViewFactory;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.1
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isActionBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isStatusBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                GiftMessageBottomSheet.this.checkUi_GiftLayoutPosition();
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j2) {
                if (view == this.backgroundView) {
                    if (GiftMessageBottomSheet.this.navbarContentSourceWallpaper.getSource() instanceof BlurredBackgroundSourceBitmap) {
                        ((BlurredBackgroundSourceBitmap) GiftMessageBottomSheet.this.navbarContentSourceWallpaper.getSource()).setParentSize(getWidth(), getHeight(), 0);
                    }
                    GiftMessageBottomSheet.this.navbarContentSourceWallpaper.draw(canvas, 0.0f, 0.0f, getWidth(), getHeight());
                    return false;
                }
                return super.drawChild(canvas, view, j2);
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public Drawable getNewDrawable() {
                return GiftMessageBottomSheet.this.backgroundDrawable != null ? GiftMessageBottomSheet.this.backgroundDrawable : super.getNewDrawable();
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void onUpdateBackgroundDrawable(Drawable drawable) {
                super.onUpdateBackgroundDrawable(drawable);
                if (drawable instanceof MotionBackgroundDrawable) {
                    ((MotionBackgroundDrawable) drawable).setFastRenderAllowed();
                }
                GiftMessageBottomSheet.this.navbarContentSourceWallpaper.setSource(GiftMessageBottomSheet.this.wallpaperBitmapProvider.updateSourceFromBackgroundViewDrawable(drawable));
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        this.containerView = sizeNotifierFrameLayout;
        int i = this.backgroundPaddingLeft;
        sizeNotifierFrameLayout.setPadding(i, 0, i, 0);
        blurredBackgroundDrawableViewFactory.setSourceRootView(new ViewPositionWatcher(this.containerView), this.containerView);
        WindowAnimatedInsetsProvider windowAnimatedInsetsProvider = new WindowAnimatedInsetsProvider(this.container);
        this.rootAnimatedInsetsListener = windowAnimatedInsetsProvider;
        windowInsetsStateHolder.setupAnimatedInsetsProvider(windowAnimatedInsetsProvider, this.containerView);
        Drawable backgroundDrawable = PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, j, Theme.isCurrentThemeDark());
        this.backgroundDrawable = backgroundDrawable;
        sizeNotifierFrameLayout.setBackgroundImage(backgroundDrawable, false);
        StarGiftUniqueActionView starGiftUniqueActionView = new StarGiftUniqueActionView(context, this.currentAccount, resourcesProvider);
        this.starGiftUniqueActionView = starGiftUniqueActionView;
        starGiftUniqueActionView.set(tL_starGiftUnique, UserConfig.getInstance(this.currentAccount).getClientUserId(), null, LocaleController.getString(C2807R.string.GiftMessageSendNow), false);
        starGiftUniqueActionView.setPadding(0, AndroidUtilities.dp(4.0f), 0, AndroidUtilities.dp(4.0f));
        starGiftUniqueActionView.setLayoutBackground(Theme.createServiceDrawable(AndroidUtilities.dp(18.0f), starGiftUniqueActionView, this.containerView, getThemedPaint("paintChatActionBackground")));
        sizeNotifierFrameLayout.addView(starGiftUniqueActionView, LayoutHelper.createFrame(-2, -2, 48));
        ChatInputViewsContainer chatInputViewsContainer = new ChatInputViewsContainer(context);
        this.chatInputViewsContainer = chatInputViewsContainer;
        chatInputViewsContainer.setClipChildren(false);
        chatInputViewsContainer.setWindowInsetsProvider(windowInsetsStateHolder);
        chatInputViewsContainer.setInputIslandBubbleDrawable(blurredBackgroundDrawableViewFactory.create(chatInputViewsContainer, BlurredBackgroundProviderImpl.bottomPanelChatActivity(resourcesProvider)));
        chatInputViewsContainer.setUnderKeyboardBackgroundDrawable(blurredBackgroundDrawableViewFactory.create(chatInputViewsContainer, BlurredBackgroundProviderImpl.bottomPanelChatActivity(resourcesProvider)));
        FrameLayout inputIslandBubbleContainer = chatInputViewsContainer.getInputIslandBubbleContainer();
        this.chatInputBubbleContainer = inputIslandBubbleContainer;
        inputIslandBubbleContainer.setClipChildren(false);
        FrameLayout inAppKeyboardBubbleContainer = chatInputViewsContainer.getInAppKeyboardBubbleContainer();
        this.chatInputInAppContainer = inAppKeyboardBubbleContainer;
        ChatActivityEnterView chatActivityEnterView = new ChatActivityEnterView(AndroidUtilities.getActivity(), sizeNotifierFrameLayout, null, false) { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.2
            @Override // org.telegram.ui.Components.ChatActivityEnterView
            public void onChangedIslandTotalHeight(float f) {
                GiftMessageBottomSheet.this.chatInputViewsContainer.setInputBubbleHeight(f);
                GiftMessageBottomSheet.this.checkUi_GiftLayoutPosition();
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView
            public void extendActionMode(Menu menu) {
                ChatActivity.fillActionModeMenu(menu, null, false, false, false, false);
            }
        };
        this.commentView = chatActivityEnterView;
        chatActivityEnterView.setInAppInsetsController(windowInsetsStateHolder);
        chatActivityEnterView.setOverrideHint(LocaleController.getString(C2807R.string.GiftMessageAddHint));
        chatActivityEnterView.shouldDrawBackground = false;
        this.containerView.setClipChildren(false);
        this.containerView.setClipToPadding(false);
        chatActivityEnterView.allowBlur = false;
        chatActivityEnterView.forceSmoothKeyboard(true);
        chatActivityEnterView.setAllowStickersAndGifs(true, false, false);
        chatActivityEnterView.setForceShowSendButton(true, false);
        chatActivityEnterView.textFieldContainer.setPadding(0, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(20.0f), 0);
        chatActivityEnterView.getSendButton().setAlpha(0.0f);
        chatActivityEnterView.getEditField().setMaxLines(3);
        chatActivityEnterView.setCustomWindowView(this.container);
        chatActivityEnterView.setViewParentForEmoji(inAppKeyboardBubbleContainer);
        inputIslandBubbleContainer.addView(chatActivityEnterView, LayoutHelper.createFrame(-1, -2.0f, 83, 7.0f, 0.0f, 7.0f, 0.0f));
        this.containerView.addView(chatInputViewsContainer.getFadeView(), LayoutHelper.createFrame(-1, -1.0f));
        this.containerView.addView(chatInputViewsContainer, LayoutHelper.createFrame(-1, -1.0f));
        chatActivityEnterView.setDelegate(new ChatActivityEnterView.ChatActivityEnterViewDelegate() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.3
            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void bottomPanelTranslationYChanged(float f) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void didPressAttachButton() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public boolean isVideoRecordingPaused() {
                return false;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void needChangeVideoPreviewState(int i2, float f) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void needSendTyping() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void needShowMediaBanHint() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void needStartRecordAudio(int i2) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void needStartRecordVideo(int i2, boolean z, int i3, int i4, int i5, long j2, long j3) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onAttachButtonHidden() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onAttachButtonShow() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onAudioVideoInterfaceUpdated() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onMessageEditEnd(boolean z) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onMessageSend(CharSequence charSequence, boolean z, int i2, int i3, long j2) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onPreAudioVideoRecord() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onSendLongClick() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onStickersExpandedChange() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onStickersTab(boolean z) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onSwitchRecordMode(boolean z) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onTextSelectionChanged(int i2, int i3) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onUpdateSlowModeButton(View view, boolean z, CharSequence charSequence) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onWindowSizeChanged(int i2) {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void toggleVideoRecordingPause() {
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onTextChanged(CharSequence charSequence, boolean z, boolean z2) {
                onTextChangedInternal(charSequence);
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.ChatActivityEnterViewDelegate
            public void onTextSpansChanged(CharSequence charSequence) {
                onTextChangedInternal(charSequence);
            }

            private void onTextChangedInternal(CharSequence charSequence) {
                int i2;
                GiftMessageBottomSheet.this.starGiftUniqueActionView.set(tL_starGiftUnique, UserConfig.getInstance(((BottomSheet) GiftMessageBottomSheet.this).currentAccount).getClientUserId(), GiftMessageBottomSheet.this.commentView.getTextWithEntities(), LocaleController.getString(C2807R.string.GiftMessageSendNow), true);
                GiftMessageBottomSheet.this.codepointCount = Character.codePointCount(charSequence, 0, charSequence.length());
                if (GiftMessageBottomSheet.this.captionLimit > 0 && (i2 = GiftMessageBottomSheet.this.captionLimit - GiftMessageBottomSheet.this.codepointCount) <= 15) {
                    if (i2 < -9999) {
                        i2 = -9999;
                    }
                    GiftMessageBottomSheet.this.captionLimitView.setText(LocaleController.formatNumber(i2, ','), GiftMessageBottomSheet.this.captionLimitView.getVisibility() == 0);
                    if (GiftMessageBottomSheet.this.captionLimitView.getVisibility() != 0) {
                        GiftMessageBottomSheet.this.captionLimitView.setVisibility(0);
                        GiftMessageBottomSheet.this.captionLimitView.setAlpha(0.0f);
                        GiftMessageBottomSheet.this.captionLimitView.setScaleX(0.5f);
                        GiftMessageBottomSheet.this.captionLimitView.setScaleY(0.5f);
                    }
                    GiftMessageBottomSheet.this.captionLimitView.animate().setListener(null).cancel();
                    GiftMessageBottomSheet.this.captionLimitView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(100L).start();
                    GiftMessageBottomSheet giftMessageBottomSheet = GiftMessageBottomSheet.this;
                    if (i2 < 0) {
                        giftMessageBottomSheet.captionLimitView.setTextColor(GiftMessageBottomSheet.this.getThemedColor(Theme.key_text_RedRegular));
                        return;
                    } else {
                        giftMessageBottomSheet.captionLimitView.setTextColor(GiftMessageBottomSheet.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
                        return;
                    }
                }
                GiftMessageBottomSheet.this.captionLimitView.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.3.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        GiftMessageBottomSheet.this.captionLimitView.setVisibility(8);
                    }
                });
            }
        });
        ChatActivityEnterView.disableNewLines(chatActivityEnterView.messageEditText);
        AnimatedTextView animatedTextView = new AnimatedTextView(context);
        this.captionLimitView = animatedTextView;
        animatedTextView.setAllowCancel(true);
        animatedTextView.setScaleProperty(0.6f);
        animatedTextView.setVisibility(8);
        animatedTextView.setTextSize(AndroidUtilities.dp(15.0f));
        animatedTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setGravity(17);
        this.containerView.addView(animatedTextView, LayoutHelper.createFrame(56, 20.0f, 85, 3.0f, 0.0f, 3.0f, 54.0f));
        ChatActivityEnterView.SendButton sendButton = new ChatActivityEnterView.SendButton(context, C2807R.drawable.send_plane_24, resourcesProvider) { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.4
            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInactive() {
                return false;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isOpen() {
                return true;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean shouldDrawBackground() {
                return true;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInScheduleMode() {
                return super.isInScheduleMode();
            }
        };
        this.writeButton = sendButton;
        sendButton.setCircleSize(AndroidUtilities.dp(38.0f), AndroidUtilities.dp(38.0f));
        this.writeButton.setCirclePadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(8.0f));
        ChatActivityEnterView.SendButton sendButton2 = this.writeButton;
        sendButton2.newCounterPos = true;
        this.containerView.addView(sendButton2, LayoutHelper.createFrame(110, 50.0f, 85, 0.0f, 0.0f, 0.0f, 2.0f));
        this.writeButton.setScrimViewBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.writeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        TextView textView = new TextView(context);
        this.previewInChatHeader = textView;
        int i2 = Theme.key_chat_serviceText;
        textView.setTextColor(getThemedColor(i2));
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setText(LocaleController.getString(C2807R.string.GiftMessagePreviewInChat));
        textView.setGravity(17);
        textView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        textView.setBackground(Theme.createServiceDrawable(AndroidUtilities.dp(23.0f) / 2, textView, this.containerView, getThemedPaint("paintChatActionBackground")));
        this.containerView.addView(textView, LayoutHelper.createFrame(-2, 23, 49));
        FrameLayout frameLayout = new FrameLayout(context);
        this.publicCheckboxButton = frameLayout;
        TextView textView2 = new TextView(context);
        textView2.setTextColor(getThemedColor(i2));
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        textView2.setText(LocaleController.getString(C2807R.string.GiftMessageMakeMessagePublic));
        frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 16, 36.0f, 0.0f, 14.0f, 0.0f));
        CheckBox2 checkBox2 = new CheckBox2(context, 18, resourcesProvider);
        this.publicCheckboxView = checkBox2;
        checkBox2.getCheckBoxBase().setCuttingCheck(true);
        checkBox2.getCheckBoxBase().checkScale = 0.9f;
        checkBox2.setColor(i2, i2, Theme.key_checkboxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setChecked(!this.hideMyName, false);
        starGiftUniqueActionView.getLayout().setOnButtonClickListener(new Runnable() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        });
        starGiftUniqueActionView.getLayout().setOnMessageClickListener(new Runnable() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        });
        checkBox2.setDrawBackgroundAsArc(10);
        frameLayout.addView(checkBox2, LayoutHelper.createFrame(18, 18.0f, 19, 10.0f, 0.0f, 0.0f, 0.0f));
        frameLayout.setBackground(Theme.createServiceDrawable(AndroidUtilities.dp(16.0f), frameLayout, this.containerView, getThemedPaint("paintChatActionBackground")));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        this.containerView.addView(frameLayout, LayoutHelper.createFrame(-2, 32, 81));
        ImageView imageView = new ImageView(context);
        this.closeButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2807R.drawable.ic_close_white);
        imageView.setBackground(Blur3Utils.wrapCenteredDrawable(Theme.createServiceDrawable(AndroidUtilities.dp(16.0f), imageView, this.containerView, getThemedPaint("paintChatActionBackground")), AndroidUtilities.dp(32.0f), AndroidUtilities.dp(32.0f)));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        this.containerView.addView(imageView, LayoutHelper.createFrame(56, 56, 53));
        ScaleStateListAnimator.apply(frameLayout, 0.05f, 1.2f);
        ScaleStateListAnimator.apply(imageView);
        ViewCompat.setOnApplyWindowInsetsListener(this.containerView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet$$ExternalSyntheticLambda6
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.captionLimit - this.codepointCount < 0) {
            AndroidUtilities.shakeView(this.captionLimitView);
            return;
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.performSend(this.commentView.getTextWithEntities(), this.hideMyName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.writeButton.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.commentView.openKeyboardInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        boolean z = this.hideMyName;
        this.hideMyName = !z;
        this.publicCheckboxView.setChecked(z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        lambda$new$0();
    }

    public Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        super.onOpenAnimationEnd();
        setAllowNestedScroll(false);
        Bulletin.addDelegate(this.container, new Bulletin.Delegate() { // from class: org.telegram.ui.Gifts.GiftMessageBottomSheet.5
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public void onShow(Bulletin bulletin) {
                bulletin.getLayout().setCustomBackground(GiftMessageBottomSheet.this.navbarContentDrawableFactory.create((View) bulletin.getLayout(), true).setColorProvider(BlurredBackgroundProviderImpl.bulletin(((BottomSheet) GiftMessageBottomSheet.this).resourcesProvider)).setRadius(AndroidUtilities.dp(16.0f)));
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getTopOffset(int i) {
                return AndroidUtilities.statusBarHeight;
            }
        });
        HintsController.Hint hint = HintsController.Hint.GiftMessageHint;
        if (hint.show()) {
            hint.increment();
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(this.toDialogId);
            BulletinFactory.of(this.container, this.resourcesProvider).createUsersBulletin(userOrChat, LocaleController.getString(C2807R.string.GiftMessageAddTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.GiftMessageAddDescription, DialogObject.getShortName(userOrChat), this.gift.title + " #" + LocaleController.formatNumber(this.gift.num, ',')))).show(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.windowInsetsStateHolder.setInsets(windowInsetsCompat);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$9() {
        ChatActivityEnterView chatActivityEnterView = this.commentView;
        if (chatActivityEnterView != null && chatActivityEnterView.isPopupShowing()) {
            this.commentView.hidePopup(true);
        } else {
            super.lambda$openCrafting$9();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkInsets() {
        ChatInputViewsContainer chatInputViewsContainer = this.chatInputViewsContainer;
        if (chatInputViewsContainer != null) {
            chatInputViewsContainer.checkInsets();
        }
        ChatActivityEnterView.SendButton sendButton = this.writeButton;
        if (sendButton != null) {
            sendButton.setTranslationY(-this.windowInsetsStateHolder.getAnimatedMaxBottomInset());
        }
        AnimatedTextView animatedTextView = this.captionLimitView;
        if (animatedTextView != null) {
            animatedTextView.setTranslationY(-this.windowInsetsStateHolder.getAnimatedMaxBottomInset());
        }
        checkUi_GiftLayoutPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_GiftLayoutPosition() {
        int i = this.windowInsetsStateHolder.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout()).top;
        float fDp = AndroidUtilities.dp(36.0f) + i;
        float animatedMaxBottomInset = this.windowInsetsStateHolder.getAnimatedMaxBottomInset() + AndroidUtilities.dp(9.0f) + this.chatInputViewsContainer.getInputBubbleHeight();
        this.starGiftUniqueActionView.setTranslationY(Math.min(((this.containerView.getHeight() - this.starGiftUniqueActionView.getHeight()) / 2.0f) + ((fDp - (AndroidUtilities.dp(46.0f) + animatedMaxBottomInset)) / 2.0f), ((((this.containerView.getHeight() - animatedMaxBottomInset) - AndroidUtilities.dp(14.0f)) - this.publicCheckboxButton.getHeight()) - AndroidUtilities.dp(10.0f)) - this.starGiftUniqueActionView.getHeight()));
        this.starGiftUniqueActionView.invalidate();
        this.previewInChatHeader.setTranslationY(this.starGiftUniqueActionView.getY() - AndroidUtilities.dp(33.0f));
        this.previewInChatHeader.invalidate();
        this.publicCheckboxButton.setTranslationY(-(animatedMaxBottomInset + AndroidUtilities.dp(14.0f)));
        this.publicCheckboxButton.invalidate();
        this.closeButton.setTranslationY(i);
        this.closeButton.invalidate();
    }

    public void setLoading(boolean z) {
        if (this.mLoading != z) {
            this.mLoading = z;
            this.writeButton.setLoading(z, -3.0f);
        }
    }

    public boolean isLoading() {
        return this.mLoading;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }
}
