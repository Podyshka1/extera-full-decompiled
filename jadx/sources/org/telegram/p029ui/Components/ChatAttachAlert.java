package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.LongSparseArray;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.components.TranslateBeforeSendWrapper;
import com.exteragram.messenger.utils.system.SystemUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.material.timepicker.TimeModel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.android.animator.ListAnimator;
import me.vkryl.android.animator.ReplaceAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessageSuggestionParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.utils.GradientProtectionDrawable;
import org.telegram.messenger.utils.RectFMergeBounding;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Business.ChatAttachAlertQuickRepliesLayout;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimationProperties;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.ChatActivityEnterView;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.ChatAttachAlertAudioLayout;
import org.telegram.p029ui.Components.ChatAttachAlertContactsLayout;
import org.telegram.p029ui.Components.ChatAttachAlertDocumentLayout;
import org.telegram.p029ui.Components.ChatAttachAlertLocationLayout;
import org.telegram.p029ui.Components.ChatAttachAlertPhotoLayout;
import org.telegram.p029ui.Components.ChatAttachAlertPollLayout;
import org.telegram.p029ui.Components.ImageUpdater;
import org.telegram.p029ui.Components.MentionsContainerView;
import org.telegram.p029ui.Components.MessagePreviewView;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundWithFadeDrawable;
import org.telegram.p029ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.p029ui.Components.blur3.RenderNodeWithHash;
import org.telegram.p029ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.p029ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.p029ui.Components.blur3.utils.Blur3Utils;
import org.telegram.p029ui.Components.chat.ViewPositionWatcher;
import org.telegram.p029ui.Components.glass.GlassTabView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.MessageSendPreview;
import org.telegram.p029ui.PassportActivity;
import org.telegram.p029ui.PaymentFormActivity;
import org.telegram.p029ui.PhotoPickerActivity;
import org.telegram.p029ui.PhotoPickerSearchActivity;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.p029ui.Stars.MessageSuggestionOfferSheet;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.recorder.StoryEntry;
import org.telegram.p029ui.TopicsFragment;
import org.telegram.p029ui.WebAppDisclaimerAlert;
import org.telegram.p029ui.bots.BotSensors;
import org.telegram.p029ui.bots.BotWebViewMenuContainer$ActionBarColorsAnimating;
import org.telegram.p029ui.bots.ChatAttachAlertBotWebViewLayout;
import org.telegram.p029ui.web.BotWebViewContainer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate, BottomSheet.BottomSheetDelegateInterface, FactorAnimator.Target {
    public final Property ATTACH_ALERT_LAYOUT_TRANSLATION;
    private final Property ATTACH_ALERT_PROGRESS;
    public ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarShadow;
    private boolean allowDrawContent;
    public boolean allowEnterCaption;
    protected boolean allowOrder;
    protected boolean allowPassConfirmationAlert;
    private final BoolAnimator animatorActionBarVisible;
    private final BoolAnimator animatorCaptionAbove;
    private final BoolAnimator animatorCaptionNotEmpty;
    private final BoolAnimator animatorCaptionVisible;
    private final ReplaceAnimator animatorCurrentVisibleLayout;
    private final BoolAnimator animatorToggleCaptionSupported;
    private SpringAnimation appearSpringAnimation;
    private final Paint attachButtonPaint;
    private int attachItemSize;
    private ChatAttachAlertAudioLayout audioLayout;
    protected int avatarPicker;
    protected boolean avatarSearch;
    protected Utilities.Callback0Return avatarWithBulletin;
    public final BaseFragment baseFragment;
    private float baseSelectedTextViewTranslationY;
    private LongSparseArray botAttachLayouts;
    private boolean botButtonProgressWasVisible;
    private boolean botButtonWasVisible;
    private float botMainButtonOffsetY;
    private AnimatedTextView botMainButtonTextView;
    private RadialProgressView botProgressView;
    private BlurredBackgroundWithFadeDrawable bottomFadeDrawable;
    private View bottomFadeView;
    private float bottomPannelTranslation;
    private boolean buttonPressed;
    private ButtonsAdapter buttonsAdapter;
    private AnimatorSet buttonsAnimation;
    private LinearLayoutManager buttonsLayoutManager;
    protected RecyclerListView buttonsRecyclerView;
    protected FrameLayout buttonsRecyclerViewWrapper;
    private final FragmentFloatingButton cameraFloatingButton;
    public boolean canOpenPreview;
    public boolean captionAbove;
    private FrameLayout captionContainer;
    private BlurredBackgroundDrawable captionContainerBg;
    private float captionEditTextTopOffset;
    protected boolean captionLimitBulletinShown;
    private final NumberTextView captionLimitView;
    private float chatActivityEnterViewAnimateFromTop;
    private int codepointCount;
    public ChatAttachAlertColorsLayout colorsLayout;
    public EditTextEmoji commentTextView;
    private int[] commentTextViewLocation;
    private AnimatorSet commentsAnimator;
    private boolean confirmationAlertShown;
    private ChatAttachAlertContactsLayout contactsLayout;
    protected float cornerRadius;
    public final int currentAccount;
    private AttachAlertLayout currentAttachLayout;
    private int currentLimit;
    float currentPanTranslationY;
    public Utilities.Callback2 customStickerHandler;
    private DecelerateInterpolator decelerateInterpolator;
    protected ChatAttachViewDelegate delegate;
    public boolean destroyed;
    public long dialogId;
    private ChatAttachAlertDocumentLayout documentLayout;
    private ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate documentsDelegate;
    private boolean documentsEnabled;
    protected ActionBarMenuItem doneItem;
    private float doneItemAlphaByEnabled;
    private float doneItemAlphaByLayout;
    private int editType;
    protected MessageObject editingMessageObject;
    private long effectId;
    private BlurredBackgroundDrawable emojiViewChildBg;
    private boolean enterCommentEventSent;
    private ArrayList exclusionRects;
    private Rect exclustionRect;
    public boolean forUser;
    private final boolean forceDarkTheme;
    private FrameLayout frameLayout2;
    private float fromScrollY;
    protected FrameLayout headerView;
    private final IBlur3Capture iBlur3Capture;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryFade;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryFrostedLiquidGlass;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryLiquidGlass;
    private final RectF iBlur3PositionActionBar;
    private final RectF iBlur3PositionFastScroll;
    private final RectF iBlur3PositionMainTabs;
    private final ArrayList iBlur3Positions;
    private final ArrayList iBlur3PositionsMerged;
    private final BlurredBackgroundSourceColor iBlur3SourceColor;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    public boolean inBubbleMode;
    public boolean isBizLocationPicker;
    public boolean isPhotoPicker;
    private boolean isSoundPicker;
    public boolean isStickerMode;
    public boolean isStoryAudioPicker;
    public boolean isStoryLocationPicker;
    private AttachAlertLayout[] layouts;
    private ChatAttachAlertLocationLayout locationLayout;
    protected int maxSelectedPhotos;
    protected TextView mediaPreviewTextView;
    protected LinearLayout mediaPreviewView;
    public MentionsContainerView mentionContainer;
    private MentionsContainerView.Delegate mentionsDelegate;
    private AnimatorSet menuAnimator;
    private boolean menuShowed;
    private MessageSendPreview messageSendPreview;
    public ImageView moveCaptionButton;
    private boolean musicEnabled;
    private AttachAlertLayout nextAttachLayout;
    private boolean openTransitionFinished;
    protected boolean openWithFrontFaceCamera;
    protected ActionBarMenuItem optionsItem;
    private boolean overrideBackgroundColor;
    private Paint paint;
    public ImageUpdater parentImageUpdater;
    public ChatActivity.ThemeDelegate parentThemeDelegate;
    private PasscodeView passcodeView;
    protected boolean paused;
    private ChatAttachAlertPhotoLayout photoLayout;
    private ChatAttachAlertPhotoLayoutPreview photoPreviewLayout;
    private boolean photosEnabled;
    public boolean pinnedToTop;
    private boolean plainTextEnabled;
    private ChatAttachAlertPollLayout pollLayout;
    private boolean pollsEnabled;
    private int previousScrollOffsetY;
    private ChatAttachAlertQuickRepliesLayout quickRepliesLayout;
    private RectF rect;
    private ChatAttachRestrictedLayout restrictedLayout;
    public int[] scrollOffsetY;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    protected ActionBarMenuItem searchItem;
    protected ImageView selectedArrowImageView;
    private View selectedCountView;
    private long selectedId;
    protected ActionBarMenuItem selectedMenuItem;
    protected TextView selectedTextView;
    protected LinearLayout selectedView;
    boolean sendButtonEnabled;
    private float sendButtonEnabledProgress;
    public boolean sent;
    private ImageUpdater.AvatarFor setAvatarFor;
    private final boolean showingFromDialog;
    public SizeNotifierFrameLayout sizeNotifierFrameLayout;
    public boolean storyLocationPickerFileIsVideo;
    public double[] storyLocationPickerLatLong;
    public File storyLocationPickerPhotoFile;
    public boolean storyMediaPicker;
    private TextPaint textPaint;
    private float toScrollY;
    private boolean todoEnabled;
    private ChatAttachAlertPollLayout todoLayout;
    private ValueAnimator topBackgroundAnimator;
    private final NumberTextView topCaptionLimitView;
    public FrameLayout topCommentContainer;
    public ImageView topCommentMoveButton;
    public EditTextEmoji topCommentTextView;
    public float translationProgress;
    protected boolean typeButtonsAvailable;
    private boolean videosEnabled;
    private Object viewChangeAnimator;
    private ChatActivityEnterView.SendButton writeButton;
    private FrameLayout writeButtonContainer;

    /* JADX INFO: Access modifiers changed from: private */
    public void applyAttachButtonColors(View view) {
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
    public boolean canDismiss() {
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
    }

    public TLRPC.Chat getChat() {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            return ((ChatActivity) baseFragment).getCurrentChat();
        }
        return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
    }

    public void setCanOpenPreview(boolean z) {
        this.canOpenPreview = z;
        this.selectedArrowImageView.setVisibility((!z || this.avatarPicker == 2) ? 8 : 0);
    }

    public float getClipLayoutBottom() {
        return this.frameLayout2.getMeasuredHeight() - ((this.frameLayout2.getMeasuredHeight() - AndroidUtilities.m1124dp(84.0f)) * (1.0f - this.frameLayout2.getAlpha()));
    }

    public void showBotLayout(long j, boolean z) {
        showBotLayout(j, null, false, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showBotLayout(long j, String str, boolean z, boolean z2) {
        String str2;
        if (this.botAttachLayouts.get(j) != null) {
            str2 = str;
            if (!Objects.equals(str2, ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).getStartCommand()) || ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).needReload()) {
            }
            if (this.botAttachLayouts.get(j) == null) {
                ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).disallowSwipeOffsetAnimation();
                ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).getSwipeContainer().isPinned = false;
                ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).pinItem.setTextAndIcon(LocaleController.getString(C2888R.string.PinMessage), C2888R.drawable.msg_pin);
                showLayout((AttachAlertLayout) this.botAttachLayouts.get(j), -j, z2);
                if (z) {
                    ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).showJustAddedBulletin();
                    return;
                }
                return;
            }
            return;
        }
        str2 = str;
        if (this.baseFragment instanceof ChatActivity) {
            ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout = new ChatAttachAlertBotWebViewLayout(this, getContext(), this.resourcesProvider);
            this.botAttachLayouts.put(j, chatAttachAlertBotWebViewLayout);
            ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).setDelegate(new C40491(chatAttachAlertBotWebViewLayout, str2, j));
            MessageObject replyingMessageObject = ((ChatActivity) this.baseFragment).getChatActivityEnterView().getReplyingMessageObject();
            ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(j)).requestWebView(this.currentAccount, ((ChatActivity) this.baseFragment).getDialogId(), j, false, replyingMessageObject != null ? replyingMessageObject.messageOwner.f1686id : 0, str, ((ChatActivity) this.baseFragment).getSendMonoForumPeerId());
        }
        if (this.botAttachLayouts.get(j) == null) {
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$1 */
    class C40491 implements BotWebViewContainer.Delegate {
        private ValueAnimator botButtonAnimator;
        final /* synthetic */ long val$id;
        final /* synthetic */ String val$startCommand;
        final /* synthetic */ ChatAttachAlertBotWebViewLayout val$webViewLayout;

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ BotSensors getBotSensors() {
            return BotWebViewContainer.Delegate.CC.$default$getBotSensors(this);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onCloseToTabs() {
            onCloseRequested(null);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onEmojiStatusGranted(boolean z) {
            BotWebViewContainer.Delegate.CC.$default$onEmojiStatusGranted(this, z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onEmojiStatusSet(TLRPC.Document document) {
            BotWebViewContainer.Delegate.CC.$default$onEmojiStatusSet(this, document);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ String onFullscreenRequested(boolean z, boolean z2) {
            return BotWebViewContainer.Delegate.CC.$default$onFullscreenRequested(this, z, z2);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onInstantClose() {
            onCloseRequested(null);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onLocationGranted(boolean z) {
            BotWebViewContainer.Delegate.CC.$default$onLocationGranted(this, z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onOpenBackFromTabs() {
            BotWebViewContainer.Delegate.CC.$default$onOpenBackFromTabs(this);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onOrientationLockChanged(boolean z) {
            BotWebViewContainer.Delegate.CC.$default$onOrientationLockChanged(this, z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onSendWebViewData(String str) {
            BotWebViewContainer.Delegate.CC.$default$onSendWebViewData(this, str);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetupSecondaryButton(boolean z, boolean z2, String str, long j, int i, int i2, boolean z3, boolean z4, String str2) {
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onSharedTo(ArrayList arrayList) {
            BotWebViewContainer.Delegate.CC.$default$onSharedTo(this, arrayList);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onWebAppBackgroundChanged(boolean z, int i) {
            BotWebViewContainer.Delegate.CC.$default$onWebAppBackgroundChanged(this, z, i);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onWebAppReady() {
            BotWebViewContainer.Delegate.CC.$default$onWebAppReady(this);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public /* synthetic */ void onWebAppSetNavigationBarColor(int i) {
            BotWebViewContainer.Delegate.CC.$default$onWebAppSetNavigationBarColor(this, i);
        }

        C40491(ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout, String str, long j) {
            this.val$webViewLayout = chatAttachAlertBotWebViewLayout;
            this.val$startCommand = str;
            this.val$id = j;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetupClosingBehavior(boolean z) {
            this.val$webViewLayout.setNeedCloseConfirmation(z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSwipingBehavior(boolean z) {
            this.val$webViewLayout.setAllowSwipes(z);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onCloseRequested(final Runnable runnable) {
            if (ChatAttachAlert.this.currentAttachLayout != this.val$webViewLayout) {
                return;
            }
            ChatAttachAlert.this.setFocusable(false);
            ChatAttachAlert.this.getWindow().setSoftInputMode(48);
            ChatAttachAlert.this.lambda$new$0();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlert.C40491.$r8$lambda$o9xXvPK9XJQ3UhaUGaDM0nQN0oE(runnable);
                }
            }, 150L);
        }

        public static /* synthetic */ void $r8$lambda$o9xXvPK9XJQ3UhaUGaDM0nQN0oE(Runnable runnable) {
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetActionBarColor(int i, final int i2, boolean z) {
            final int color = ((ColorDrawable) ChatAttachAlert.this.actionBar.getBackground()).getColor();
            final BotWebViewMenuContainer$ActionBarColorsAnimating botWebViewMenuContainer$ActionBarColorsAnimating = new BotWebViewMenuContainer$ActionBarColorsAnimating();
            botWebViewMenuContainer$ActionBarColorsAnimating.setFrom(ChatAttachAlert.this.overrideBackgroundColor ? color : 0, ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
            ChatAttachAlert.this.overrideBackgroundColor = z;
            botWebViewMenuContainer$ActionBarColorsAnimating.setTo(ChatAttachAlert.this.overrideBackgroundColor ? i2 : 0, ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            final ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout = this.val$webViewLayout;
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onWebAppSetActionBarColor$1(color, i2, chatAttachAlertBotWebViewLayout, botWebViewMenuContainer$ActionBarColorsAnimating, valueAnimator);
                }
            });
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppSetActionBarColor$1(int i, int i2, ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout, BotWebViewMenuContainer$ActionBarColorsAnimating botWebViewMenuContainer$ActionBarColorsAnimating, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ChatAttachAlert.this.actionBar.setBackgroundColor(ColorUtils.blendARGB(i, i2, fFloatValue));
            chatAttachAlertBotWebViewLayout.setCustomActionBarBackground(ColorUtils.blendARGB(i, i2, fFloatValue));
            ChatAttachAlert.this.currentAttachLayout.invalidate();
            ChatAttachAlert.this.sizeNotifierFrameLayout.invalidate();
            botWebViewMenuContainer$ActionBarColorsAnimating.updateActionBar(ChatAttachAlert.this.actionBar, fFloatValue);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSetBackgroundColor(int i) {
            this.val$webViewLayout.setCustomBackground(i);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppOpenInvoice(TLRPC.InputInvoice inputInvoice, final String str, TLObject tLObject) {
            PaymentFormActivity paymentFormActivity;
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            BaseFragment baseFragment = chatAttachAlert.baseFragment;
            if (tLObject instanceof TLRPC.TL_payments_paymentFormStars) {
                final AlertDialog alertDialog = new AlertDialog(ChatAttachAlert.this.getContext(), 3);
                alertDialog.showDelayed(150L);
                StarsController starsController = StarsController.getInstance(ChatAttachAlert.this.currentAccount);
                TLRPC.TL_payments_paymentFormStars tL_payments_paymentFormStars = (TLRPC.TL_payments_paymentFormStars) tLObject;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        alertDialog.dismiss();
                    }
                };
                final ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout = this.val$webViewLayout;
                starsController.openPaymentForm(null, inputInvoice, tL_payments_paymentFormStars, runnable, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        chatAttachAlertBotWebViewLayout.getWebViewContainer().onInvoiceStatusUpdate(str, (String) obj);
                    }
                });
                AndroidUtilities.hideKeyboard(this.val$webViewLayout);
                return;
            }
            if (tLObject instanceof TLRPC.PaymentForm) {
                TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                MessagesController.getInstance(chatAttachAlert.currentAccount).putUsers(paymentForm.users, false);
                paymentFormActivity = new PaymentFormActivity(paymentForm, str, baseFragment);
            } else {
                paymentFormActivity = tLObject instanceof TLRPC.PaymentReceipt ? new PaymentFormActivity((TLRPC.PaymentReceipt) tLObject) : null;
            }
            if (paymentFormActivity != null) {
                this.val$webViewLayout.scrollToTop();
                AndroidUtilities.hideKeyboard(this.val$webViewLayout);
                final OverlayActionBarLayoutDialog overlayActionBarLayoutDialog = new OverlayActionBarLayoutDialog(baseFragment.getParentActivity(), ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
                overlayActionBarLayoutDialog.show();
                final ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout2 = this.val$webViewLayout;
                paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.PaymentFormActivity.PaymentFormCallback
                    public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                        ChatAttachAlert.C40491.$r8$lambda$PmxU41FRyzgAm9jTxK4Sg8RKKow(overlayActionBarLayoutDialog, chatAttachAlertBotWebViewLayout2, str, invoiceStatus);
                    }
                });
                paymentFormActivity.setResourcesProvider(((BottomSheet) ChatAttachAlert.this).resourcesProvider);
                overlayActionBarLayoutDialog.addFragment(paymentFormActivity);
            }
        }

        public static /* synthetic */ void $r8$lambda$PmxU41FRyzgAm9jTxK4Sg8RKKow(OverlayActionBarLayoutDialog overlayActionBarLayoutDialog, ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout, String str, PaymentFormActivity.InvoiceStatus invoiceStatus) {
            if (invoiceStatus != PaymentFormActivity.InvoiceStatus.PENDING) {
                overlayActionBarLayoutDialog.dismiss();
            }
            chatAttachAlertBotWebViewLayout.getWebViewContainer().onInvoiceStatusUpdate(str, invoiceStatus.name().toLowerCase(Locale.ROOT));
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppExpand() {
            AttachAlertLayout attachAlertLayout = ChatAttachAlert.this.currentAttachLayout;
            ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout = this.val$webViewLayout;
            if (attachAlertLayout == chatAttachAlertBotWebViewLayout && chatAttachAlertBotWebViewLayout.canExpandByRequest()) {
                this.val$webViewLayout.scrollToTop();
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onWebAppSwitchInlineQuery(final TLRPC.User user, final String str, List list) {
            if (list.isEmpty()) {
                BaseFragment baseFragment = ChatAttachAlert.this.baseFragment;
                if (baseFragment instanceof ChatActivity) {
                    ((ChatActivity) baseFragment).getChatActivityEnterView().setFieldText("@" + UserObject.getPublicUsername(user) + " " + str);
                }
                ChatAttachAlert.this.dismiss(true);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("dialogsType", 14);
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("allowGroups", list.contains("groups"));
            bundle.putBoolean("allowLegacyGroups", list.contains("groups"));
            bundle.putBoolean("allowMegagroups", list.contains("groups"));
            bundle.putBoolean("allowUsers", list.contains("users"));
            bundle.putBoolean("allowChannels", list.contains("channels"));
            bundle.putBoolean("allowBots", list.contains("bots"));
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            final OverlayActionBarLayoutDialog overlayActionBarLayoutDialog = new OverlayActionBarLayoutDialog(ChatAttachAlert.this.getContext(), ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean canSelectStories() {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                    return this.f$0.lambda$onWebAppSwitchInlineQuery$5(user, str, overlayActionBarLayoutDialog, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
                }

                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                    return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
                }
            });
            overlayActionBarLayoutDialog.show();
            overlayActionBarLayoutDialog.addFragment(dialogsActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onWebAppSwitchInlineQuery$5(TLRPC.User user, String str, OverlayActionBarLayoutDialog overlayActionBarLayoutDialog, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
            long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j));
            } else if (DialogObject.isUserDialog(j)) {
                bundle.putLong("user_id", j);
            } else {
                bundle.putLong("chat_id", -j);
            }
            bundle.putString("start_text", "@" + UserObject.getPublicUsername(user) + " " + str);
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            BaseFragment baseFragment = chatAttachAlert.baseFragment;
            if (MessagesController.getInstance(chatAttachAlert.currentAccount).checkCanOpenChat(bundle, baseFragment)) {
                overlayActionBarLayoutDialog.dismiss();
                ChatAttachAlert.this.dismiss(true);
                baseFragment.presentFragment(new INavigationLayout.NavigationParams(new ChatActivity(bundle)).setRemoveLast(true));
            }
            return true;
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetupMainButton(final boolean z, boolean z2, String str, long j, int i, int i2, final boolean z3, boolean z4) {
            AttachAlertLayout attachAlertLayout = ChatAttachAlert.this.currentAttachLayout;
            ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout = this.val$webViewLayout;
            if (attachAlertLayout == chatAttachAlertBotWebViewLayout) {
                if (chatAttachAlertBotWebViewLayout.isBotButtonAvailable() || this.val$startCommand != null) {
                    ChatAttachAlert.this.botMainButtonTextView.setClickable(z2);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    if (j != 0) {
                        spannableStringBuilder.append((CharSequence) "* ");
                        spannableStringBuilder.append((CharSequence) str);
                        spannableStringBuilder.setSpan(new AnimatedEmojiSpan(j, 1.4f, ChatAttachAlert.this.botMainButtonTextView.getPaint().getFontMetricsInt()), 0, 1, 33);
                        ChatAttachAlert.this.botMainButtonTextView.setText(spannableStringBuilder);
                    } else {
                        ChatAttachAlert.this.botMainButtonTextView.setText(str);
                    }
                    ChatAttachAlert.this.botMainButtonTextView.setTextColor(i2);
                    ChatAttachAlert.this.botMainButtonTextView.setEmojiColor(i2);
                    ChatAttachAlert.this.botMainButtonTextView.setBackground(BotWebViewContainer.getMainButtonRippleDrawable(i));
                    if (ChatAttachAlert.this.botButtonWasVisible != z) {
                        ChatAttachAlert.this.botButtonWasVisible = z;
                        ValueAnimator valueAnimator = this.botButtonAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                        }
                        ValueAnimator duration = ValueAnimator.ofFloat(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f).setDuration(250L);
                        this.botButtonAnimator = duration;
                        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$1$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                this.f$0.lambda$onSetupMainButton$6(valueAnimator2);
                            }
                        });
                        this.botButtonAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.1.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                if (z) {
                                    ChatAttachAlert.this.botMainButtonTextView.setAlpha(0.0f);
                                    ChatAttachAlert.this.botMainButtonTextView.setVisibility(0);
                                    int iM1124dp = AndroidUtilities.m1124dp(36.0f);
                                    for (int i3 = 0; i3 < ChatAttachAlert.this.botAttachLayouts.size(); i3++) {
                                        ((ChatAttachAlertBotWebViewLayout) ChatAttachAlert.this.botAttachLayouts.valueAt(i3)).setMeasureOffsetY(iM1124dp);
                                    }
                                    return;
                                }
                                ChatAttachAlert.this.buttonsRecyclerViewWrapper.setAlpha(0.0f);
                                ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(0);
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (!z) {
                                    ChatAttachAlert.this.botMainButtonTextView.setVisibility(8);
                                } else {
                                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(8);
                                }
                                int iM1124dp = z ? AndroidUtilities.m1124dp(36.0f) : 0;
                                for (int i3 = 0; i3 < ChatAttachAlert.this.botAttachLayouts.size(); i3++) {
                                    ((ChatAttachAlertBotWebViewLayout) ChatAttachAlert.this.botAttachLayouts.valueAt(i3)).setMeasureOffsetY(iM1124dp);
                                }
                                if (C40491.this.botButtonAnimator == animator) {
                                    C40491.this.botButtonAnimator = null;
                                }
                            }
                        });
                        this.botButtonAnimator.start();
                    }
                    ChatAttachAlert.this.botProgressView.setProgressColor(i2);
                    if (ChatAttachAlert.this.botButtonProgressWasVisible != z3) {
                        ChatAttachAlert.this.botProgressView.animate().cancel();
                        if (z3) {
                            ChatAttachAlert.this.botProgressView.setAlpha(0.0f);
                            ChatAttachAlert.this.botProgressView.setVisibility(0);
                        }
                        ChatAttachAlert.this.botProgressView.animate().alpha(z3 ? 1.0f : 0.0f).scaleX(z3 ? 1.0f : 0.1f).scaleY(z3 ? 1.0f : 0.1f).setDuration(250L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.1.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ChatAttachAlert.this.botButtonProgressWasVisible = z3;
                                if (z3) {
                                    return;
                                }
                                ChatAttachAlert.this.botProgressView.setVisibility(8);
                            }
                        }).start();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSetupMainButton$6(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ChatAttachAlert.this.buttonsRecyclerViewWrapper.setAlpha(1.0f - fFloatValue);
            ChatAttachAlert.this.botMainButtonTextView.setAlpha(fFloatValue);
            ChatAttachAlert.this.botMainButtonOffsetY = fFloatValue * AndroidUtilities.m1124dp(36.0f);
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            chatAttachAlert.buttonsRecyclerViewWrapper.setTranslationY(chatAttachAlert.botMainButtonOffsetY);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetBackButtonVisible(boolean z) {
            AndroidUtilities.updateImageViewImageAnimated(ChatAttachAlert.this.actionBar.getBackButton(), z ? C2888R.drawable.ic_ab_back : C2888R.drawable.ic_close_white);
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public void onSetSettingsButtonVisible(boolean z) {
            ActionBarMenuSubItem actionBarMenuSubItem = this.val$webViewLayout.settingsItem;
            if (actionBarMenuSubItem != null) {
                actionBarMenuSubItem.setVisibility(z ? 0 : 8);
            }
        }

        @Override // org.telegram.ui.web.BotWebViewContainer.Delegate
        public boolean isClipboardAvailable() {
            return MediaDataController.getInstance(ChatAttachAlert.this.currentAccount).botInAttachMenu(this.val$id) || MessagesController.getInstance(ChatAttachAlert.this.currentAccount).whitelistedBots.contains(Long.valueOf(this.val$id));
        }
    }

    public boolean checkCaption(CharSequence charSequence) {
        BaseFragment baseFragment = this.baseFragment;
        if (!(baseFragment instanceof ChatActivity)) {
            return false;
        }
        return ChatActivityEnterView.checkPremiumAnimatedEmoji(this.currentAccount, ((ChatActivity) baseFragment).getDialogId(), this.baseFragment, this.sizeNotifierFrameLayout, charSequence);
    }

    public void avatarFor(ImageUpdater.AvatarFor avatarFor) {
        this.setAvatarFor = avatarFor;
    }

    public ImageUpdater.AvatarFor getAvatarFor() {
        return this.setAvatarFor;
    }

    public void setImageUpdater(ImageUpdater imageUpdater) {
        this.parentImageUpdater = imageUpdater;
    }

    public void setupPhotoPicker(String str) {
        this.avatarPicker = 1;
        this.isPhotoPicker = true;
        this.avatarSearch = false;
        this.typeButtonsAvailable = false;
        this.videosEnabled = false;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
        this.selectedTextView.setText(str);
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout != null) {
            chatAttachAlertPhotoLayout.updateAvatarPicker();
        }
    }

    public void presentFragment(PhotoPickerActivity photoPickerActivity) {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment != null) {
            baseFragment.presentFragment(photoPickerActivity);
            return;
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(photoPickerActivity);
        }
    }

    public void setDialogId(long j) {
        this.dialogId = j;
    }

    public long getDialogId() {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            return ((ChatActivity) baseFragment).getDialogId();
        }
        return this.dialogId;
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        AttachAlertLayout attachAlertLayout;
        if (i == 0) {
            checkUi_writeButtonContainerY();
            checkUi_bottomFade();
            return;
        }
        if (i != 2) {
            if (i == 1) {
                checkUi_bottomFade();
                return;
            } else if (i == 3) {
                checkUi_moveCaptionButtonVisibility();
                return;
            } else {
                if (i == 4) {
                    checkUi_moveCaptionButtonVisibility();
                    return;
                }
                return;
            }
        }
        checkUi_bottomFade();
        ChatAttachAlertPollLayout chatAttachAlertPollLayout = this.pollLayout;
        if (chatAttachAlertPollLayout != null && ((attachAlertLayout = this.nextAttachLayout) == chatAttachAlertPollLayout || this.currentAttachLayout == chatAttachAlertPollLayout)) {
            updateSelectedPosition(attachAlertLayout == chatAttachAlertPollLayout ? 1 : 0);
        }
        ChatAttachAlertPollLayout chatAttachAlertPollLayout2 = this.todoLayout;
        if (chatAttachAlertPollLayout2 != null) {
            AttachAlertLayout attachAlertLayout2 = this.nextAttachLayout;
            if (attachAlertLayout2 == chatAttachAlertPollLayout2 || this.currentAttachLayout == chatAttachAlertPollLayout2) {
                updateSelectedPosition(attachAlertLayout2 != chatAttachAlertPollLayout2 ? 0 : 1);
            }
        }
    }

    public void checkUi_moveCaptionButtonVisibility() {
        FragmentFloatingButton.setAnimatedVisibility(this.moveCaptionButton, this.animatorCaptionNotEmpty.getFloatValue() * this.animatorToggleCaptionSupported.getFloatValue());
    }

    public interface ChatAttachViewDelegate {
        void didPressedButton(int i, boolean z, boolean z2, int i2, int i3, long j, boolean z3, boolean z4, long j2);

        void didSelectBot(TLRPC.User user);

        void doOnIdle(Runnable runnable);

        boolean needEnterComment();

        void onCameraOpened();

        void onWallpaperSelected(Object obj);

        void openAvatarsSearch();

        boolean selectItemOnClicking();

        void sendAudio(ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2);

        /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$ChatAttachViewDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static boolean $default$selectItemOnClicking(ChatAttachViewDelegate chatAttachViewDelegate) {
                return false;
            }

            public static void $default$onCameraOpened(ChatAttachViewDelegate chatAttachViewDelegate) {
            }

            public static void $default$didSelectBot(ChatAttachViewDelegate chatAttachViewDelegate, TLRPC.User user) {
            }

            public static boolean $default$needEnterComment(ChatAttachViewDelegate chatAttachViewDelegate) {
                return false;
            }

            public static void $default$openAvatarsSearch(ChatAttachViewDelegate chatAttachViewDelegate) {
            }

            public static void $default$onWallpaperSelected(ChatAttachViewDelegate chatAttachViewDelegate, Object obj) {
            }

            public static void $default$sendAudio(ChatAttachViewDelegate chatAttachViewDelegate, ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2) {
            }
        }
    }

    public void updateDoneItemEnabled() {
        ActionBarMenuItem actionBarMenuItem = this.doneItem;
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        actionBarMenuItem.setEnabled(attachAlertLayout == null ? false : attachAlertLayout.isDoneItemEnabled());
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        float f = 0.0f;
        if (attachAlertLayout2 != null) {
            f = 0.0f + ((attachAlertLayout2.isDoneItemEnabled() ? 1.0f : 0.5f) * (this.nextAttachLayout == null ? 1.0f : this.translationProgress));
        }
        AttachAlertLayout attachAlertLayout3 = this.nextAttachLayout;
        if (attachAlertLayout3 != null) {
            f += (attachAlertLayout3.isDoneItemEnabled() ? 1.0f : 0.5f) * (1.0f - this.translationProgress);
        }
        this.doneItemAlphaByEnabled = f;
        checkUi_doneItemVisibility();
    }

    private void checkUi_doneItemVisibility() {
        ActionBarMenuItem actionBarMenuItem = this.doneItem;
        if (actionBarMenuItem != null) {
            float f = this.doneItemAlphaByEnabled * this.doneItemAlphaByLayout;
            actionBarMenuItem.setAlpha(f);
            this.doneItem.setVisibility(f > 0.0f ? 0 : 4);
        }
    }

    public static class AttachAlertLayout extends FrameLayout {
        protected IBlur3Capture iBlur3Capture;
        protected View iBlur3CaptureView;
        protected int listPaddingBottom;
        protected boolean occupyNavigationBar;
        protected boolean occupyStatusBar;
        protected ChatAttachAlert parentAlert;
        protected final Theme.ResourcesProvider resourcesProvider;

        public void applyCaption(CharSequence charSequence) {
        }

        public boolean canDismissWithTouchOutside() {
            return true;
        }

        public boolean canScheduleMessages() {
            return true;
        }

        public void checkColors() {
        }

        public int getCurrentItemTop() {
            return 0;
        }

        public int getCustomActionBarBackground() {
            return 0;
        }

        public int getCustomBackground() {
            return 0;
        }

        public int getFirstOffset() {
            return 0;
        }

        public IBlur3Capture getIBlur3Capture() {
            return null;
        }

        public int getListTopPadding() {
            return 0;
        }

        public int getSelectedItemsCount() {
            return 0;
        }

        public ArrayList<ThemeDescription> getThemeDescriptions() {
            return null;
        }

        public boolean hasCustomActionBarBackground() {
            return false;
        }

        public boolean hasCustomBackground() {
            return false;
        }

        public boolean isDoneItemEnabled() {
            return false;
        }

        public int needsActionBar() {
            return 0;
        }

        public boolean onBackPressed() {
            return false;
        }

        public void onButtonsTranslationYUpdated() {
        }

        public void onContainerTranslationUpdated(float f) {
        }

        public boolean onContainerViewTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public void onDestroy() {
        }

        public boolean onDismiss() {
            return false;
        }

        public void onDismissWithButtonClick(int i) {
        }

        public boolean onDismissWithTouchOutside() {
            return true;
        }

        public void onHidden() {
        }

        public void onHide() {
        }

        public void onHideShowProgress(float f) {
        }

        public void onMenuItemClick(int i) {
        }

        public void onOpenAnimationEnd() {
        }

        public void onPanTransitionEnd() {
        }

        public void onPanTransitionStart(boolean z, int i) {
        }

        public void onPause() {
        }

        public void onPreMeasure(int i, int i2) {
        }

        public void onResume() {
        }

        public void onSelectedItemsCountChanged(int i) {
        }

        public boolean onSheetKeyDown(int i, KeyEvent keyEvent) {
            return false;
        }

        public void onShow(AttachAlertLayout attachAlertLayout) {
        }

        public void onShown() {
        }

        public void scrollToTop() {
        }

        public boolean sendSelectedItems(boolean z, int i, int i2, long j, boolean z2) {
            return false;
        }

        public boolean shouldHideBottomButtons() {
            return true;
        }

        public AttachAlertLayout(ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            this.parentAlert = chatAttachAlert;
        }

        public int getButtonsHideOffset() {
            return AndroidUtilities.m1124dp(needsActionBar() != 0 ? 12.0f : 17.0f);
        }

        public int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }
    }

    private static abstract class AttachButtonBase extends FrameLayout {
        protected GlassTabView glassTabView;

        public AttachButtonBase(Context context) {
            super(context);
        }
    }

    private class AttachButton extends AttachButtonBase {
        private int currentId;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        public AttachButton(Context context) {
            super(context);
            setWillNotDraw(false);
            setFocusable(true);
            GlassTabView glassTabViewCreateAttachTab = GlassTabView.createAttachTab(context, ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
            this.glassTabView = glassTabViewCreateAttachTab;
            addView(glassTabViewCreateAttachTab, LayoutHelper.createFrame(-1, -1.0f));
        }

        void updateCheckedState(boolean z) {
            this.glassTabView.setSelected(((long) this.currentId) == ChatAttachAlert.this.selectedId, z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateCheckedState(false);
        }

        public void setTextAndIcon(int i, CharSequence charSequence, GlassTabView.TabAnimation tabAnimation) {
            this.glassTabView.setText(charSequence);
            this.glassTabView.setTabAnimation(tabAnimation);
            this.currentId = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AttachBotButton extends AttachButtonBase {
        private TLRPC.TL_attachMenuBot attachMenuBot;
        private TLRPC.User currentUser;

        public AttachBotButton(Context context) {
            super(context);
            setWillNotDraw(false);
            setFocusable(true);
            setFocusableInTouchMode(true);
            GlassTabView glassTabViewCreateAttachBotTab = GlassTabView.createAttachBotTab(context, ((BottomSheet) ChatAttachAlert.this).resourcesProvider);
            this.glassTabView = glassTabViewCreateAttachBotTab;
            glassTabViewCreateAttachBotTab.getBackupImageView().imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$AttachBotButton$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                    ChatAttachAlert.AttachBotButton.m9289$r8$lambda$Q4NR2NsLg9EoXirNGvADBmdOEU(imageReceiver, z, z2, z3);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void didSetImageBitmap(int i, String str, Drawable drawable) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i, str, drawable);
                }

                @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                    ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
                }
            });
            addView(this.glassTabView, LayoutHelper.createFrame(-1, -1.0f));
        }

        /* JADX INFO: renamed from: $r8$lambda$-Q4NR2NsLg9EoXirNGvADBmdOEU, reason: not valid java name */
        public static /* synthetic */ void m9289$r8$lambda$Q4NR2NsLg9EoXirNGvADBmdOEU(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
            Drawable drawable = imageReceiver.getDrawable();
            if (drawable instanceof RLottieDrawable) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) drawable;
                rLottieDrawable.setCustomEndFrame(0);
                rLottieDrawable.stop();
                rLottieDrawable.setProgress(0.0f, false);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            updateCheckedState(false);
        }

        void updateCheckedState(boolean z) {
            boolean z2 = this.attachMenuBot != null && (-this.currentUser.f1825id) == ChatAttachAlert.this.selectedId;
            this.glassTabView.setSelected(z2, z);
            RLottieDrawable lottieAnimation = this.glassTabView.getBackupImageView().getImageReceiver().getLottieAnimation();
            if (!z) {
                if (lottieAnimation != null) {
                    lottieAnimation.stop();
                    lottieAnimation.setProgress(0.0f, false);
                    return;
                }
                return;
            }
            if (!z2 || lottieAnimation == null) {
                return;
            }
            lottieAnimation.setAutoRepeat(0);
            lottieAnimation.setCustomEndFrame(-1);
            lottieAnimation.setProgress(0.0f, false);
            lottieAnimation.start();
        }

        public void setUser(TLRPC.User user) {
            if (user == null) {
                return;
            }
            this.glassTabView.setAttachBotUser(user, ChatAttachAlert.this.currentAccount);
            this.currentUser = user;
            this.attachMenuBot = null;
            this.glassTabView.setSelected(false, false);
            invalidate();
        }

        public void setAttachBot(TLRPC.User user, TLRPC.TL_attachMenuBot tL_attachMenuBot) {
            if (user == null || tL_attachMenuBot == null) {
                return;
            }
            this.glassTabView.setAttachBot(user, tL_attachMenuBot, ChatAttachAlert.this.currentAccount);
            this.currentUser = user;
            this.attachMenuBot = tL_attachMenuBot;
            this.glassTabView.setSelected(false, false);
            invalidate();
        }
    }

    public ChatAttachAlert(Context context, BaseFragment baseFragment, boolean z, boolean z2) {
        this(context, baseFragment, z, z2, true, null);
    }

    public ChatAttachAlert(final Context context, final BaseFragment baseFragment, boolean z, final boolean z2, boolean z3, final Theme.ResourcesProvider resourcesProvider) {
        super(context, false, resourcesProvider);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.animatorCaptionAbove = new BoolAnimator(0, this, cubicBezierInterpolator, 380L);
        this.animatorCaptionVisible = new BoolAnimator(1, this, cubicBezierInterpolator, 380L);
        this.animatorActionBarVisible = new BoolAnimator(2, this, cubicBezierInterpolator, 380L);
        this.animatorCaptionNotEmpty = new BoolAnimator(3, this, cubicBezierInterpolator, 380L);
        this.animatorToggleCaptionSupported = new BoolAnimator(4, this, cubicBezierInterpolator, 380L);
        this.animatorCurrentVisibleLayout = new ReplaceAnimator(new ReplaceAnimator.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda12
            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public /* synthetic */ boolean hasChanges(ReplaceAnimator replaceAnimator) {
                return ReplaceAnimator.Callback.CC.$default$hasChanges(this, replaceAnimator);
            }

            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public /* synthetic */ boolean onApplyMetadataAnimation(ReplaceAnimator replaceAnimator, float f) {
                return ReplaceAnimator.Callback.CC.$default$onApplyMetadataAnimation(this, replaceAnimator, f);
            }

            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public /* synthetic */ void onFinishMetadataAnimation(ReplaceAnimator replaceAnimator, boolean z4) {
                ReplaceAnimator.Callback.CC.$default$onFinishMetadataAnimation(this, replaceAnimator, z4);
            }

            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public /* synthetic */ void onForceApplyChanges(ReplaceAnimator replaceAnimator) {
                ReplaceAnimator.Callback.CC.$default$onForceApplyChanges(this, replaceAnimator);
            }

            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public final void onItemChanged(ReplaceAnimator replaceAnimator) {
                this.f$0.onCurrentLayoutAnimatorChanged(replaceAnimator);
            }

            @Override // me.vkryl.android.animator.ReplaceAnimator.Callback
            public /* synthetic */ void onPrepareMetadataAnimation(ReplaceAnimator replaceAnimator) {
                ReplaceAnimator.Callback.CC.$default$onPrepareMetadataAnimation(this, replaceAnimator);
            }
        }, cubicBezierInterpolator, 380L);
        this.canOpenPreview = false;
        this.isSoundPicker = false;
        this.isStoryLocationPicker = false;
        this.isBizLocationPicker = false;
        this.isStoryAudioPicker = false;
        this.translationProgress = 0.0f;
        this.ATTACH_ALERT_LAYOUT_TRANSLATION = new AnimationProperties.FloatProperty("translation") { // from class: org.telegram.ui.Components.ChatAttachAlert.2
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(AttachAlertLayout attachAlertLayout, float f) {
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                chatAttachAlert.translationProgress = f;
                if (chatAttachAlert.nextAttachLayout == null) {
                    return;
                }
                if ((ChatAttachAlert.this.nextAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview) || (ChatAttachAlert.this.currentAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview)) {
                    int iMax = Math.max(ChatAttachAlert.this.nextAttachLayout.getWidth(), ChatAttachAlert.this.currentAttachLayout.getWidth());
                    if (ChatAttachAlert.this.nextAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview) {
                        ChatAttachAlert.this.currentAttachLayout.setTranslationX((-iMax) * f);
                        ChatAttachAlert.this.nextAttachLayout.setTranslationX((1.0f - f) * iMax);
                    } else {
                        ChatAttachAlert.this.currentAttachLayout.setTranslationX(iMax * f);
                        ChatAttachAlert.this.nextAttachLayout.setTranslationX((-iMax) * (1.0f - f));
                    }
                } else {
                    ChatAttachAlert.this.nextAttachLayout.setAlpha(f);
                    ChatAttachAlert.this.nextAttachLayout.onHideShowProgress(f);
                    if (ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.pollLayout || ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.pollLayout) {
                        ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                        chatAttachAlert2.updateSelectedPosition(chatAttachAlert2.nextAttachLayout == ChatAttachAlert.this.pollLayout ? 1 : 0);
                    }
                    if (ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.todoLayout || ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.todoLayout) {
                        ChatAttachAlert chatAttachAlert3 = ChatAttachAlert.this;
                        chatAttachAlert3.updateSelectedPosition(chatAttachAlert3.nextAttachLayout == ChatAttachAlert.this.todoLayout ? 1 : 0);
                    }
                    ChatAttachAlert.this.nextAttachLayout.setTranslationY(AndroidUtilities.m1124dp(78.0f) * f);
                    ChatAttachAlert.this.currentAttachLayout.onHideShowProgress(1.0f - Math.min(1.0f, f / 0.7f));
                    ChatAttachAlert.this.currentAttachLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
                }
                if (ChatAttachAlert.this.viewChangeAnimator != null) {
                    ChatAttachAlert.this.updateSelectedPosition(1);
                }
                ChatAttachAlert.this.blur3_InvalidateBlur();
                ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
            }

            @Override // android.util.Property
            public Float get(AttachAlertLayout attachAlertLayout) {
                return Float.valueOf(ChatAttachAlert.this.translationProgress);
            }
        };
        this.layouts = new AttachAlertLayout[8];
        this.botAttachLayouts = new LongSparseArray();
        this.commentTextViewLocation = new int[2];
        this.textPaint = new TextPaint(1);
        this.rect = new RectF();
        this.paint = new Paint(1);
        this.sendButtonEnabled = true;
        this.sendButtonEnabledProgress = 1.0f;
        this.cornerRadius = 1.0f;
        this.botButtonProgressWasVisible = false;
        this.botButtonWasVisible = false;
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.documentsEnabled = true;
        this.photosEnabled = true;
        this.videosEnabled = true;
        this.musicEnabled = true;
        this.pollsEnabled = true;
        this.todoEnabled = true;
        this.plainTextEnabled = true;
        this.maxSelectedPhotos = -1;
        this.allowOrder = true;
        this.attachItemSize = AndroidUtilities.m1124dp(85.0f);
        this.decelerateInterpolator = new DecelerateInterpolator();
        this.scrollOffsetY = new int[2];
        this.attachButtonPaint = new Paint(1);
        this.captionLimitBulletinShown = false;
        this.exclusionRects = new ArrayList();
        this.exclustionRect = new Rect();
        this.ATTACH_ALERT_PROGRESS = new AnimationProperties.FloatProperty("openProgress") { // from class: org.telegram.ui.Components.ChatAttachAlert.31
            private float openProgress;

            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(ChatAttachAlert chatAttachAlert, float f) {
                float interpolation;
                int childCount = ChatAttachAlert.this.buttonsRecyclerView.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    float f2 = (3 - i2) * 32.0f;
                    View childAt = ChatAttachAlert.this.buttonsRecyclerView.getChildAt(i2);
                    if (f > f2) {
                        float f3 = f - f2;
                        if (f3 <= 200.0f) {
                            float f4 = f3 / 200.0f;
                            interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f4) * 1.1f;
                            childAt.setAlpha(CubicBezierInterpolator.EASE_BOTH.getInterpolation(f4));
                        } else {
                            childAt.setAlpha(1.0f);
                            float f5 = f3 - 200.0f;
                            interpolation = f5 <= 100.0f ? 1.1f - (CubicBezierInterpolator.EASE_IN.getInterpolation(f5 / 100.0f) * 0.1f) : 1.0f;
                        }
                    } else {
                        interpolation = 0.0f;
                    }
                    if (childAt instanceof AttachButtonBase) {
                        ((AttachButtonBase) childAt).glassTabView.setAttachScale(interpolation);
                    }
                }
            }

            @Override // android.util.Property
            public Float get(ChatAttachAlert chatAttachAlert) {
                return Float.valueOf(this.openProgress);
            }
        };
        this.allowDrawContent = true;
        this.sent = false;
        this.confirmationAlertShown = false;
        this.allowPassConfirmationAlert = false;
        ArrayList arrayList = new ArrayList();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        RectF rectF2 = new RectF();
        this.iBlur3PositionMainTabs = rectF2;
        RectF rectF3 = new RectF();
        this.iBlur3PositionFastScroll = rectF3;
        arrayList.add(rectF);
        arrayList.add(rectF2);
        arrayList.add(rectF3);
        this.iBlur3PositionsMerged = new ArrayList();
        this.occupyNavigationBarWithoutKeyboard = true;
        boolean z4 = baseFragment instanceof ChatActivity;
        if (z4) {
            setImageReceiverNumLevel(0, 4);
        }
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceColor = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        if (Build.VERSION.SDK_INT >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlass = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setupRenderer(new RenderNodeWithHash.Renderer() { // from class: org.telegram.ui.Components.ChatAttachAlert.3
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeCalculateHash(IBlur3Hash iBlur3Hash) {
                    iBlur3Hash.add(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    iBlur3Hash.add(SharedConfig.chatBlurEnabled());
                }

                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeUpdateDisplayList(Canvas canvas) {
                    canvas.drawColor(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    if (SharedConfig.chatBlurEnabled()) {
                        ChatAttachAlert.this.scrollableViewNoiseSuppressor.draw(canvas, -2);
                    }
                }
            });
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode2 = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlassFrosted = blurredBackgroundSourceRenderNode2;
            blurredBackgroundSourceRenderNode2.setupRenderer(new RenderNodeWithHash.Renderer() { // from class: org.telegram.ui.Components.ChatAttachAlert.4
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeCalculateHash(IBlur3Hash iBlur3Hash) {
                    iBlur3Hash.add(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    iBlur3Hash.add(SharedConfig.chatBlurEnabled());
                }

                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeUpdateDisplayList(Canvas canvas) {
                    canvas.drawColor(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    if (SharedConfig.chatBlurEnabled()) {
                        ChatAttachAlert.this.scrollableViewNoiseSuppressor.draw(canvas, -3);
                    }
                }
            });
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
            this.iBlur3FactoryLiquidGlass = blurredBackgroundDrawableViewFactory;
            blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode2);
            this.iBlur3FactoryFrostedLiquidGlass = blurredBackgroundDrawableViewFactory2;
            blurredBackgroundDrawableViewFactory2.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.iBlur3SourceGlassFrosted = null;
            this.iBlur3SourceGlass = null;
            this.iBlur3FactoryLiquidGlass = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
            this.iBlur3FactoryFrostedLiquidGlass = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        }
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory3 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        this.iBlur3FactoryFade = blurredBackgroundDrawableViewFactory3;
        this.iBlur3Capture = new IBlur3Capture() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda22
            @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Capture
            public final void capture(Canvas canvas, RectF rectF4) {
                this.f$0.lambda$new$0(canvas, rectF4);
            }

            @Override // org.telegram.p029ui.Components.blur3.capture.IBlur3Capture
            public /* synthetic */ void captureCalculateHash(IBlur3Hash iBlur3Hash, RectF rectF4) {
                iBlur3Hash.unsupported();
            }
        };
        this.forceDarkTheme = z;
        this.showingFromDialog = z2;
        this.inBubbleMode = z4 && baseFragment.isInBubbleMode();
        this.openInterpolator = new OvershootInterpolator(0.7f);
        this.baseFragment = baseFragment;
        this.useSmoothKeyboard = true;
        setDelegate(this);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.reloadInlineHints);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.attachMenuBotsDidLoad);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.quickRepliesUpdated);
        this.exclusionRects.add(this.exclustionRect);
        C40805 c40805 = new C40805(context, resourcesProvider);
        this.sizeNotifierFrameLayout = c40805;
        c40805.setDelegate(new SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.6
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.SizeNotifierFrameLayoutDelegate
            public void onSizeChanged(int i2, boolean z5) {
                if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoPreviewLayout) {
                    ChatAttachAlert.this.currentAttachLayout.invalidate();
                }
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
        this.containerView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setWillNotDraw(false);
        this.containerView.setClipChildren(false);
        this.containerView.setClipToPadding(false);
        ViewGroup viewGroup = this.containerView;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i2, 0, i2, 0);
        ActionBar actionBar = new ActionBar(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlert.7
            @Override // android.view.View
            public void setAlpha(float f) {
                float alpha = getAlpha();
                super.setAlpha(f);
                if (alpha != f) {
                    ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
                    if (ChatAttachAlert.this.frameLayout2 != null) {
                        ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                        if (chatAttachAlert.buttonsRecyclerViewWrapper != null) {
                            if (chatAttachAlert.frameLayout2.getTag() == null) {
                                if (ChatAttachAlert.this.currentAttachLayout == null || ChatAttachAlert.this.currentAttachLayout.shouldHideBottomButtons()) {
                                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setAlpha(1.0f - f);
                                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setTranslationY(AndroidUtilities.m1124dp(44.0f) * f);
                                }
                                ChatAttachAlert.this.frameLayout2.setTranslationY(AndroidUtilities.m1124dp(48.0f) * f);
                                return;
                            }
                            if (ChatAttachAlert.this.currentAttachLayout == null) {
                                float f2 = f != 0.0f ? 0.0f : 1.0f;
                                if (ChatAttachAlert.this.buttonsRecyclerViewWrapper.getAlpha() != f2) {
                                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setAlpha(f2);
                                }
                            }
                        }
                    }
                }
            }
        };
        this.actionBar = actionBar;
        actionBar.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        ActionBar actionBar2 = this.actionBar;
        int i3 = Theme.key_dialogTextBlack;
        actionBar2.setItemsColor(getThemedColor(i3), false);
        ActionBar actionBar3 = this.actionBar;
        int i4 = Theme.key_dialogButtonSelector;
        actionBar3.setItemsBackgroundColor(getThemedColor(i4), false);
        this.actionBar.setTitleColor(getThemedColor(i3));
        this.actionBar.setOccupyStatusBar(true);
        this.actionBar.setAlpha(0.0f);
        this.actionBar.setDrawBlurBackground(this.sizeNotifierFrameLayout);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.ChatAttachAlert.8
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                if (i5 == -1) {
                    if (ChatAttachAlert.this.currentAttachLayout.onBackPressed()) {
                        return;
                    }
                    ChatAttachAlert.this.lambda$new$0();
                    return;
                }
                ChatAttachAlert.this.currentAttachLayout.onMenuItemClick(i5);
            }
        });
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, getThemedColor(i3), false, resourcesProvider);
        this.selectedMenuItem = actionBarMenuItem;
        actionBarMenuItem.setLongClickEnabled(false);
        this.selectedMenuItem.setIcon(C2888R.drawable.ic_ab_other);
        this.selectedMenuItem.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
        this.selectedMenuItem.setVisibility(4);
        this.selectedMenuItem.setAlpha(0.0f);
        this.selectedMenuItem.setScaleX(0.6f);
        this.selectedMenuItem.setScaleY(0.6f);
        this.selectedMenuItem.setSubMenuOpenSide(2);
        this.selectedMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda23
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i5) {
                this.f$0.lambda$new$1(i5);
            }
        });
        this.selectedMenuItem.setAdditionalYOffset(AndroidUtilities.m1124dp(72.0f));
        this.selectedMenuItem.setTranslationX(AndroidUtilities.m1124dp(6.0f));
        this.selectedMenuItem.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i4), 6));
        this.selectedMenuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        ActionBarMenuItem actionBarMenuItem2 = new ActionBarMenuItem(context, null, 0, getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader), true, resourcesProvider);
        this.doneItem = actionBarMenuItem2;
        actionBarMenuItem2.setLongClickEnabled(false);
        this.doneItem.setText(LocaleController.getString(C2888R.string.Create));
        this.doneItem.setVisibility(4);
        this.doneItem.setAlpha(0.0f);
        this.doneItem.setTranslationX(-AndroidUtilities.m1124dp(12.0f));
        this.doneItem.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i4), 3));
        this.doneItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        updateDoneItemEnabled();
        if (baseFragment != null) {
            ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, null, 0, getThemedColor(i3), false, resourcesProvider);
            this.searchItem = actionBarMenuItem3;
            actionBarMenuItem3.setLongClickEnabled(false);
            this.searchItem.setIcon(C2888R.drawable.outline_header_search);
            this.searchItem.setContentDescription(LocaleController.getString(C2888R.string.Search));
            this.searchItem.setVisibility(4);
            this.searchItem.setAlpha(0.0f);
            this.searchItem.setTranslationX(-AndroidUtilities.m1124dp(42.0f));
            this.searchItem.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i4), 6));
            this.searchItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda26
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$4(z2, view);
                }
            });
        }
        ActionBarMenuItem actionBarMenuItem4 = new ActionBarMenuItem(context, null, 0, getThemedColor(i3), false, resourcesProvider);
        this.optionsItem = actionBarMenuItem4;
        actionBarMenuItem4.setLongClickEnabled(false);
        this.optionsItem.setIcon(C2888R.drawable.ic_ab_other);
        this.optionsItem.setContentDescription(LocaleController.getString(C2888R.string.AccDescrMoreOptions));
        this.optionsItem.setVisibility(8);
        this.optionsItem.setBackground(Theme.createSelectorDrawable(getThemedColor(i4), 3));
        this.optionsItem.addSubItem(1, C2888R.drawable.msg_addbot, LocaleController.getString(C2888R.string.StickerCreateEmpty)).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(resourcesProvider, view);
            }
        });
        this.optionsItem.setMenuYOffset(AndroidUtilities.m1124dp(-12.0f));
        this.optionsItem.setAdditionalXOffset(AndroidUtilities.m1124dp(12.0f));
        this.optionsItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$6(view);
            }
        });
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.11
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ChatAttachAlert.this.updateSelectedPosition(0);
                ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatAttachAlert.this.headerView.getVisibility() != 0) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (ChatAttachAlert.this.headerView.getVisibility() != 0) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }
        };
        this.headerView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda29
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$7(view);
            }
        });
        this.headerView.setAlpha(0.0f);
        this.headerView.setVisibility(4);
        LinearLayout linearLayout = new LinearLayout(context);
        this.selectedView = linearLayout;
        linearLayout.setOrientation(0);
        this.selectedView.setGravity(16);
        TextView textView = new TextView(context);
        this.selectedTextView = textView;
        textView.setTextColor(getThemedColor(i3));
        this.selectedTextView.setTextSize(1, 16.0f);
        this.selectedTextView.setTypeface(AndroidUtilities.bold());
        this.selectedTextView.setGravity(19);
        this.selectedTextView.setMaxLines(1);
        this.selectedTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.selectedView.addView(this.selectedTextView, LayoutHelper.createLinear(-2, -2, 16));
        this.selectedArrowImageView = new ImageView(context);
        Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.attach_arrow_right).mutate();
        int themedColor = getThemedColor(i3);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
        this.selectedArrowImageView.setImageDrawable(drawableMutate);
        this.selectedArrowImageView.setVisibility(8);
        this.selectedView.addView(this.selectedArrowImageView, LayoutHelper.createLinear(-2, -2, 16, 4, 1, 0, 0));
        this.selectedView.setAlpha(1.0f);
        this.headerView.addView(this.selectedView, LayoutHelper.createFrame(-2, -1.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.mediaPreviewView = linearLayout2;
        linearLayout2.setOrientation(0);
        this.mediaPreviewView.setGravity(16);
        ImageView imageView = new ImageView(context);
        Drawable drawableMutate2 = getContext().getResources().getDrawable(C2888R.drawable.attach_arrow_left).mutate();
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), mode));
        imageView.setImageDrawable(drawableMutate2);
        this.mediaPreviewView.addView(imageView, LayoutHelper.createLinear(-2, -2, 16, 0, 1, 4, 0));
        TextView textView2 = new TextView(context);
        this.mediaPreviewTextView = textView2;
        textView2.setTextColor(getThemedColor(i3));
        this.mediaPreviewTextView.setTextSize(1, 16.0f);
        this.mediaPreviewTextView.setTypeface(AndroidUtilities.bold());
        this.mediaPreviewTextView.setGravity(19);
        this.mediaPreviewTextView.setText(LocaleController.getString("AttachMediaPreview", C2888R.string.AttachMediaPreview));
        this.mediaPreviewView.setAlpha(0.0f);
        this.mediaPreviewView.addView(this.mediaPreviewTextView, LayoutHelper.createLinear(-2, -2, 16));
        this.headerView.addView(this.mediaPreviewView, LayoutHelper.createFrame(-2, -1.0f));
        AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = new ChatAttachAlertPhotoLayout(this, context, z, z3, resourcesProvider);
        this.photoLayout = chatAttachAlertPhotoLayout;
        attachAlertLayoutArr[0] = chatAttachAlertPhotoLayout;
        chatAttachAlertPhotoLayout.setTranslationX(0.0f);
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout2 = this.photoLayout;
        this.currentAttachLayout = chatAttachAlertPhotoLayout2;
        this.selectedId = 1L;
        this.containerView.addView(chatAttachAlertPhotoLayout2, LayoutHelper.createFrame(-1, -1.0f));
        this.containerView.addView(this.headerView, LayoutHelper.createFrame(-1, -2.0f, 51, 23.0f, 0.0f, 12.0f, 0.0f));
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.12
            private final Path path = new Path();
            private final GradientClip clip = new GradientClip();

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                float fM1124dp = AndroidUtilities.m1124dp(20.0f);
                RectF rectF4 = AndroidUtilities.rectTmp;
                rectF4.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
                this.path.rewind();
                this.path.addRoundRect(rectF4, fM1124dp, fM1124dp, Path.Direction.CW);
                canvas.save();
                canvas.clipRect(0.0f, 0.0f, getWidth(), getHeight() * getAlpha());
                canvas.clipPath(this.path);
                canvas.saveLayerAlpha(rectF4, 255, 31);
                super.dispatchDraw(canvas);
                rectF4.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getPaddingTop() + AndroidUtilities.m1124dp(6.0f));
                this.clip.draw(canvas, rectF4, 1, 1.0f);
                rectF4.set(getPaddingLeft(), (getHeight() - getPaddingBottom()) - AndroidUtilities.m1124dp(6.0f), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
                this.clip.draw(canvas, rectF4, 3, 1.0f);
                canvas.restore();
                canvas.restore();
            }
        };
        this.topCommentContainer = frameLayout2;
        this.containerView.addView(frameLayout2, LayoutHelper.createFrame(-1, -2, 55));
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2.0f));
        this.containerView.addView(this.selectedMenuItem, LayoutHelper.createFrame(48, 48, 53));
        ActionBarMenuItem actionBarMenuItem5 = this.searchItem;
        if (actionBarMenuItem5 != null) {
            this.containerView.addView(actionBarMenuItem5, LayoutHelper.createFrame(48, 48, 53));
        }
        ActionBarMenuItem actionBarMenuItem6 = this.optionsItem;
        if (actionBarMenuItem6 != null) {
            this.headerView.addView(actionBarMenuItem6, LayoutHelper.createFrame(32, 32.0f, 21, 0.0f, 0.0f, 0.0f, 8.0f));
        }
        this.containerView.addView(this.doneItem, LayoutHelper.createFrame(-2, 48, 53));
        View view = new View(context);
        this.actionBarShadow = view;
        view.setAlpha(0.0f);
        this.actionBarShadow.setBackgroundColor(getThemedColor(Theme.key_dialogShadowLine));
        this.containerView.addView(this.actionBarShadow, LayoutHelper.createFrame(-1, 1.0f));
        this.buttonsRecyclerViewWrapper = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.13
            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                ChatAttachAlert.this.currentAttachLayout.onButtonsTranslationYUpdated();
                ChatAttachAlert.this.updateCameraButtonVisibility();
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                ChatAttachAlert.this.updateCameraButtonVisibility();
            }
        };
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.14
            private final BoolAnimator hasFadeLeft;
            private final BoolAnimator hasFadeRight;
            private boolean mHasFadeLeft;
            private boolean mHasFadeRight;
            private final Paint paintLeft;
            private final Paint paintRight;
            private final Shader shaderLeft;
            private final Shader shaderRight;

            {
                CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.hasFadeLeft = new BoolAnimator(this, cubicBezierInterpolator2, 320L);
                this.hasFadeRight = new BoolAnimator(this, cubicBezierInterpolator2, 320L);
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, AndroidUtilities.m1124dp(8.0f), 0.0f, new int[]{0, -16777216}, (float[]) null, tileMode);
                this.shaderLeft = linearGradient;
                LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, AndroidUtilities.m1124dp(8.0f), 0.0f, new int[]{-16777216, 0}, (float[]) null, tileMode);
                this.shaderRight = linearGradient2;
                Paint paint = new Paint(1);
                this.paintLeft = paint;
                Paint paint2 = new Paint(1);
                this.paintRight = paint2;
                paint.setShader(linearGradient);
                PorterDuff.Mode mode2 = PorterDuff.Mode.DST_IN;
                paint.setXfermode(new PorterDuffXfermode(mode2));
                paint2.setShader(linearGradient2);
                paint2.setXfermode(new PorterDuffXfermode(mode2));
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                this.mHasFadeRight = false;
                this.mHasFadeLeft = false;
                super.dispatchDraw(canvas);
                this.hasFadeLeft.setValue(this.mHasFadeLeft, true);
                this.hasFadeRight.setValue(this.mHasFadeRight, true);
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view2, long j) {
                float x = view2.getX();
                float width = view2.getWidth() + x;
                boolean z5 = true;
                boolean z6 = x < ((float) AndroidUtilities.m1124dp(10.0f));
                boolean z7 = width > ((float) (getMeasuredWidth() - AndroidUtilities.m1124dp(10.0f)));
                if (!z6 && !z7) {
                    z5 = false;
                }
                this.mHasFadeLeft |= z6;
                this.mHasFadeRight |= z7;
                canvas.save();
                if (z5) {
                    canvas.clipRect(AndroidUtilities.m1124dp(19.0f), 0, getMeasuredWidth() - AndroidUtilities.m1124dp(19.0f), getMeasuredHeight());
                }
                boolean zDrawChild = super.drawChild(canvas, view2, j);
                canvas.restore();
                if (z6) {
                    float fM1124dp = AndroidUtilities.m1124dp(11.0f);
                    canvas.saveLayer(fM1124dp, getPaddingTop(), AndroidUtilities.m1124dp(19.0f), getMeasuredHeight() - getPaddingBottom(), null);
                    super.drawChild(canvas, view2, j);
                    canvas.save();
                    canvas.translate(fM1124dp - (AndroidUtilities.m1124dp(8.0f) * (1.0f - this.hasFadeLeft.getFloatValue())), 0.0f);
                    canvas.drawPaint(this.paintLeft);
                    canvas.restore();
                    canvas.restore();
                }
                if (z7) {
                    float measuredWidth = getMeasuredWidth() - AndroidUtilities.m1124dp(19.0f);
                    canvas.saveLayer(measuredWidth, getPaddingTop(), getMeasuredWidth() - AndroidUtilities.m1124dp(11.0f), getMeasuredHeight() - getPaddingBottom(), null);
                    super.drawChild(canvas, view2, j);
                    canvas.save();
                    canvas.translate(measuredWidth + (AndroidUtilities.m1124dp(8.0f) * (1.0f - this.hasFadeRight.getFloatValue())), 0.0f);
                    canvas.drawPaint(this.paintRight);
                    canvas.restore();
                    canvas.restore();
                }
                return zDrawChild;
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            protected void onMeasure(int i5, int i6) {
                int childCount = getChildCount();
                int size = (View.MeasureSpec.getSize(i5) - getPaddingLeft()) - getPaddingRight();
                float fMeasureAttachTabWidth = 0.0f;
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt instanceof AttachButtonBase) {
                        fMeasureAttachTabWidth += ((AttachButtonBase) childAt).glassTabView.measureAttachTabWidth();
                    }
                }
                int iFloor = (size <= fMeasureAttachTabWidth || childCount <= 0) ? 0 : (int) Math.floor((r1 - fMeasureAttachTabWidth) / childCount);
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt2 = getChildAt(i8);
                    if (childAt2 instanceof AttachButtonBase) {
                        ((AttachButtonBase) childAt2).glassTabView.setAdditionalWidth(iFloor);
                    }
                }
                super.onMeasure(i5, i6);
            }
        };
        this.buttonsRecyclerView = recyclerListView;
        recyclerListView.setClipChildren(true);
        this.buttonsRecyclerView.setClipToPadding(false);
        RecyclerListView recyclerListView2 = this.buttonsRecyclerView;
        ButtonsAdapter buttonsAdapter = new ButtonsAdapter(context);
        this.buttonsAdapter = buttonsAdapter;
        recyclerListView2.setAdapter(buttonsAdapter);
        RecyclerListView recyclerListView3 = this.buttonsRecyclerView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.buttonsLayoutManager = linearLayoutManager;
        recyclerListView3.setLayoutManager(linearLayoutManager);
        this.buttonsRecyclerView.setVerticalScrollBarEnabled(false);
        this.buttonsRecyclerView.setHorizontalScrollBarEnabled(false);
        this.buttonsRecyclerView.setItemAnimator(null);
        this.buttonsRecyclerView.setLayoutAnimation(null);
        this.buttonsRecyclerView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.buttonsRecyclerView.setAdaptiveOverScroll();
        this.iBlur3FactoryLiquidGlass.setSourceRootView(new ViewPositionWatcher(this.containerView), this.containerView);
        this.iBlur3FactoryFrostedLiquidGlass.setSourceRootView(new ViewPositionWatcher(this.containerView), this.containerView);
        blurredBackgroundDrawableViewFactory3.setSourceRootView(new ViewPositionWatcher(this.containerView), this.containerView);
        this.bottomFadeView = new View(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.15
            @Override // android.view.View
            protected void onSizeChanged(int i5, int i6, int i7, int i8) {
                super.onSizeChanged(i5, i6, i7, i8);
                ChatAttachAlert.this.bottomFadeDrawable.setBounds(0, (i6 - AndroidUtilities.navigationBarHeight) - AndroidUtilities.m1124dp(48.0f), i5, i6);
            }

            @Override // android.view.View
            public void draw(Canvas canvas) {
                super.draw(canvas);
                ChatAttachAlert.this.bottomFadeDrawable.draw(canvas);
            }
        };
        this.bottomFadeDrawable = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory3.create(this.bottomFadeView, null));
        if (SharedConfig.chatBlurEnabled()) {
            LiteMode.isEnabled(262144);
        }
        this.bottomFadeDrawable.setFadeHeight(AndroidUtilities.m1124dp(72.0f), true);
        this.containerView.addView(this.bottomFadeView, LayoutHelper.createFrameMatchParent());
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = this.iBlur3FactoryLiquidGlass.create(this.buttonsRecyclerViewWrapper, BlurredBackgroundProviderImpl.mainTabs(resourcesProvider));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.m1124dp(28.0f));
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.m1124dp(7.0f));
        this.buttonsRecyclerViewWrapper.setBackground(blurredBackgroundDrawableCreate);
        this.buttonsRecyclerView.setPadding(AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(11.0f));
        this.buttonsRecyclerView.setClipToOutline(true);
        this.buttonsRecyclerView.setOutlineProvider(ViewOutlineProviderImpl.boundsWithPaddingRoundRect(AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(28.0f)));
        this.buttonsRecyclerView.setImportantForAccessibility(1);
        this.buttonsRecyclerView.setOverScrollMode(2);
        this.buttonsRecyclerViewWrapper.addView(this.buttonsRecyclerView, LayoutHelper.createFrameMatchParent());
        this.containerView.addView(this.buttonsRecyclerViewWrapper, LayoutHelper.createFrame(-1, 70, 83));
        this.buttonsRecyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda30
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i5) {
                this.f$0.lambda$new$14(resourcesProvider, view2, i5);
            }
        });
        this.buttonsRecyclerView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda13
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i5) {
                return this.f$0.lambda$new$15(view2, i5);
            }
        });
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, false, true);
        this.botMainButtonTextView = animatedTextView;
        animatedTextView.setVisibility(8);
        this.botMainButtonTextView.setAlpha(0.0f);
        this.botMainButtonTextView.setGravity(17);
        this.botMainButtonTextView.setTypeface(AndroidUtilities.bold());
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        this.botMainButtonTextView.setPadding(iM1124dp, 0, iM1124dp, 0);
        this.botMainButtonTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.botMainButtonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$16(view2);
            }
        });
        this.containerView.addView(this.botMainButtonTextView, LayoutHelper.createFrame(-1, 48, 83));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.botProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.m1124dp(18.0f));
        this.botProgressView.setAlpha(0.0f);
        this.botProgressView.setScaleX(0.1f);
        this.botProgressView.setScaleY(0.1f);
        this.botProgressView.setVisibility(8);
        this.containerView.addView(this.botProgressView, LayoutHelper.createFrame(28, 28.0f, 85, 0.0f, 0.0f, 10.0f, 10.0f));
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, resourcesProvider);
        this.cameraFloatingButton = fragmentFloatingButton;
        fragmentFloatingButton.setImageResource(C2888R.drawable.camera);
        fragmentFloatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$17(view2);
            }
        });
        fragmentFloatingButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda16
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$new$18(view2);
            }
        });
        FrameLayout.LayoutParams layoutParamsCreateDefaultLayoutParams = FragmentFloatingButton.createDefaultLayoutParams();
        layoutParamsCreateDefaultLayoutParams.bottomMargin += AndroidUtilities.m1124dp(70.0f);
        this.containerView.addView(fragmentFloatingButton, layoutParamsCreateDefaultLayoutParams);
        ImageView imageView2 = new ImageView(context);
        this.moveCaptionButton = imageView2;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView2.setScaleType(scaleType);
        ImageView imageView3 = this.moveCaptionButton;
        int themedColor2 = getThemedColor(Theme.key_windowBackgroundWhiteGrayText2);
        PorterDuff.Mode mode2 = PorterDuff.Mode.SRC_IN;
        imageView3.setColorFilter(new PorterDuffColorFilter(themedColor2, mode2));
        this.moveCaptionButton.setImageResource(C2888R.drawable.menu_link_above);
        this.moveCaptionButton.setVisibility(8);
        this.moveCaptionButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$19(view2);
            }
        });
        this.frameLayout2 = new C405616(context);
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.17
            private final Path path = new Path();
            private final GradientClip clip = new GradientClip();

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (ChatAttachAlert.this.captionContainerBg != null) {
                    ChatAttachAlert.this.captionContainerBg.setBounds(0, (int) ChatAttachAlert.this.captionEditTextTopOffset, getMeasuredWidth(), getMeasuredHeight());
                    ChatAttachAlert.this.captionContainerBg.draw(canvas);
                }
                float fM1124dp = AndroidUtilities.m1124dp(20.0f);
                int iM1124dp2 = AndroidUtilities.m1124dp(7.0f);
                int iM1124dp3 = AndroidUtilities.m1124dp(7.0f);
                RectF rectF4 = AndroidUtilities.rectTmp;
                float f = iM1124dp2;
                rectF4.set(getPaddingLeft(), f, getWidth() - getPaddingRight(), getHeight() - iM1124dp3);
                this.path.rewind();
                this.path.addRoundRect(rectF4, fM1124dp, fM1124dp, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.path);
                canvas.saveLayerAlpha(rectF4, 255, 31);
                super.dispatchDraw(canvas);
                rectF4.set(getPaddingLeft(), f, getWidth() - getPaddingRight(), iM1124dp2 + AndroidUtilities.m1124dp(6.0f));
                this.clip.draw(canvas, rectF4, 1, 1.0f);
                rectF4.set(getPaddingLeft(), (getHeight() - iM1124dp3) - AndroidUtilities.m1124dp(6.0f), getWidth() - getPaddingRight(), getHeight() - iM1124dp3);
                this.clip.draw(canvas, rectF4, 3, 1.0f);
                canvas.restore();
                canvas.restore();
            }
        };
        this.captionContainer = frameLayout3;
        this.frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 119));
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate2 = this.iBlur3FactoryFrostedLiquidGlass.create(this.sizeNotifierFrameLayout, BlurredBackgroundProviderImpl.inputFieldDialogActivity(resourcesProvider));
        this.emojiViewChildBg = blurredBackgroundDrawableCreate2;
        blurredBackgroundDrawableCreate2.enableInAppKeyboardOptimization();
        this.emojiViewChildBg.setRadius(AndroidUtilities.m1124dp(29.0f), AndroidUtilities.m1124dp(29.0f), 0.0f, 0.0f);
        this.emojiViewChildBg.setThickness(AndroidUtilities.m1124dp(32.0f));
        this.emojiViewChildBg.setIntensity(0.4f);
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate3 = this.iBlur3FactoryLiquidGlass.create(this.captionContainer, BlurredBackgroundProviderImpl.inputFieldDialogActivity(resourcesProvider));
        this.captionContainerBg = blurredBackgroundDrawableCreate3;
        blurredBackgroundDrawableCreate3.setRadius(AndroidUtilities.m1124dp(22.0f));
        this.captionContainerBg.setPadding(AndroidUtilities.m1124dp(7.0f));
        this.captionContainer.setPadding(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(5.0f));
        this.frameLayout2.setWillNotDraw(false);
        this.frameLayout2.setVisibility(4);
        this.frameLayout2.setAlpha(0.0f);
        this.containerView.addView(this.frameLayout2, LayoutHelper.createFrame(-1, -2, 83));
        this.frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda18
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return ChatAttachAlert.$r8$lambda$951lLyzH1kuqRnkXoJk3xhIZ1h0(view2, motionEvent);
            }
        });
        NumberTextView numberTextView = new NumberTextView(context);
        this.captionLimitView = numberTextView;
        numberTextView.setVisibility(8);
        numberTextView.setTextSize(15);
        int i5 = Theme.key_windowBackgroundWhiteGrayText;
        numberTextView.setTextColor(getThemedColor(i5));
        numberTextView.setTypeface(AndroidUtilities.bold());
        numberTextView.setCenterAlign(true);
        this.captionContainer.addView(numberTextView, LayoutHelper.createFrame(56, 20.0f, 85, 3.0f, 0.0f, 14.0f, 78.0f));
        this.currentLimit = MessagesController.getInstance(UserConfig.selectedAccount).getCaptionMaxLengthLimit();
        boolean z5 = UserConfig.getInstance(i).isPremium() || LocaleUtils.canUseLocalPremiumEmojis(i);
        C405818 c405818 = new C405818(context, this.sizeNotifierFrameLayout, null, 1, z5, resourcesProvider);
        this.commentTextView = c405818;
        c405818.includeNavigationBar = true;
        c405818.allowEmojisForNonPremium(LocaleUtils.canUseLocalPremiumEmojis(i));
        this.commentTextView.setHint(LocaleController.getString("AddCaption", C2888R.string.AddCaption));
        this.commentTextView.onResume();
        this.commentTextView.getEditText().setLayoutParams(LayoutHelper.createFrame(-1, -1.0f, 19, 48.0f, 0.0f, 36.0f, 0.0f));
        this.commentTextView.getEditText().addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ChatAttachAlert.19
            private boolean processChange;
            private boolean wasEmpty;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                if (i8 - i7 >= 1) {
                    this.processChange = true;
                }
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (chatAttachAlert.mentionContainer == null) {
                    chatAttachAlert.createMentionsContainer();
                }
                if (ChatAttachAlert.this.mentionContainer.getAdapter() != null) {
                    ChatAttachAlert.this.mentionContainer.setReversed(false);
                    ChatAttachAlert.this.mentionContainer.getAdapter().lambda$searchUsernameOrHashtag$7(charSequence, ChatAttachAlert.this.commentTextView.getEditText().getSelectionStart(), null, false, false);
                    ChatAttachAlert.this.updateCommentTextViewPosition();
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int i6;
                boolean z6 = true;
                if (this.wasEmpty != TextUtils.isEmpty(editable)) {
                    if (ChatAttachAlert.this.currentAttachLayout != null) {
                        ChatAttachAlert.this.currentAttachLayout.onSelectedItemsCountChanged(ChatAttachAlert.this.currentAttachLayout.getSelectedItemsCount());
                    }
                    this.wasEmpty = !this.wasEmpty;
                }
                if (this.processChange) {
                    for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                        editable.removeSpan(imageSpan);
                    }
                    Emoji.replaceEmoji(editable, ChatAttachAlert.this.commentTextView.getEditText().getPaint().getFontMetricsInt(), false);
                    this.processChange = false;
                }
                ChatAttachAlert.this.codepointCount = Character.codePointCount(editable, 0, editable.length());
                ChatAttachAlert.this.animatorCaptionNotEmpty.setValue(ChatAttachAlert.this.codepointCount > 0, true);
                if (ChatAttachAlert.this.currentLimit > 0 && (i6 = ChatAttachAlert.this.currentLimit - ChatAttachAlert.this.codepointCount) <= 100) {
                    if (i6 < -9999) {
                        i6 = -9999;
                    }
                    ChatAttachAlert.this.captionLimitView.setNumber(i6, ChatAttachAlert.this.captionLimitView.getVisibility() == 0);
                    if (ChatAttachAlert.this.captionLimitView.getVisibility() != 0) {
                        ChatAttachAlert.this.captionLimitView.setVisibility(0);
                        ChatAttachAlert.this.captionLimitView.setAlpha(0.0f);
                        ChatAttachAlert.this.captionLimitView.setScaleX(0.5f);
                        ChatAttachAlert.this.captionLimitView.setScaleY(0.5f);
                    }
                    ChatAttachAlert.this.captionLimitView.animate().setListener(null).cancel();
                    ChatAttachAlert.this.captionLimitView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(100L).start();
                    if (i6 < 0) {
                        ChatAttachAlert.this.captionLimitView.setTextColor(ChatAttachAlert.this.getThemedColor(Theme.key_text_RedRegular));
                        z6 = false;
                    } else {
                        ChatAttachAlert.this.captionLimitView.setTextColor(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
                    }
                    ChatAttachAlert.this.topCaptionLimitView.setNumber(i6, false);
                    ChatAttachAlert.this.topCaptionLimitView.setAlpha(1.0f);
                } else {
                    ChatAttachAlert.this.captionLimitView.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.19.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatAttachAlert.this.captionLimitView.setVisibility(8);
                        }
                    });
                    ChatAttachAlert.this.topCaptionLimitView.setAlpha(0.0f);
                }
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (chatAttachAlert.sendButtonEnabled != z6) {
                    chatAttachAlert.sendButtonEnabled = z6;
                    chatAttachAlert.writeButton.invalidate();
                }
            }
        });
        this.captionContainer.addView(this.commentTextView, LayoutHelper.createFrame(-1, -2.0f, 83, 0.0f, 0.0f, 84.0f, 0.0f));
        this.captionContainer.setClipChildren(false);
        this.frameLayout2.setClipChildren(false);
        this.commentTextView.setClipChildren(false);
        this.topCommentContainer.setPadding(AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        this.topCommentContainer.setWillNotDraw(false);
        EditTextEmoji editTextEmoji = new EditTextEmoji(context, this.sizeNotifierFrameLayout, null, 1, z5, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlert.20
            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (!ChatAttachAlert.this.enterCommentEventSent) {
                    if (motionEvent.getX() > ChatAttachAlert.this.topCommentTextView.getEditText().getLeft() && motionEvent.getX() < ChatAttachAlert.this.topCommentTextView.getEditText().getRight() && motionEvent.getY() > ChatAttachAlert.this.topCommentTextView.getEditText().getTop() && motionEvent.getY() < ChatAttachAlert.this.topCommentTextView.getEditText().getBottom()) {
                        ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                        chatAttachAlert.makeFocusable(chatAttachAlert.topCommentTextView.getEditText(), true);
                    } else {
                        ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                        chatAttachAlert2.makeFocusable(chatAttachAlert2.topCommentTextView.getEditText(), false);
                    }
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            protected void onLineCountChanged(int i6, int i7) {
                super.onLineCountChanged(i6, i7);
                ChatAttachAlert.this.updatedTopCaptionHeight();
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z6, int i6, int i7, int i8, int i9) {
                super.onLayout(z6, i6, i7, i8, i9);
                ChatAttachAlert.this.updatedTopCaptionHeight();
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            protected void extendActionMode(ActionMode actionMode, Menu menu) {
                BaseFragment baseFragment2 = ChatAttachAlert.this.baseFragment;
                if (baseFragment2 instanceof ChatActivity) {
                    ChatActivity.fillActionModeMenu(menu, ((ChatActivity) baseFragment2).getCurrentEncryptedChat(), true, true);
                }
                super.extendActionMode(actionMode, menu);
            }

            @Override // org.telegram.p029ui.Components.EditTextEmoji
            protected void createEmojiView() {
                super.createEmojiView();
                EmojiView emojiView = getEmojiView();
                if (emojiView != null) {
                    emojiView.shouldLightenBackground = false;
                    emojiView.fixBottomTabContainerTranslation = false;
                    emojiView.setShouldDrawBackground(false);
                    emojiView.setBottomInset(AndroidUtilities.navigationBarHeight);
                }
            }
        };
        this.topCommentTextView = editTextEmoji;
        editTextEmoji.includeNavigationBar = true;
        editTextEmoji.getEditText().addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.ChatAttachAlert.21
            private boolean processChange;
            private boolean wasEmpty;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                if (i8 - i7 >= 1) {
                    this.processChange = true;
                }
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (chatAttachAlert.mentionContainer == null) {
                    chatAttachAlert.createMentionsContainer();
                }
                if (ChatAttachAlert.this.mentionContainer.getAdapter() != null) {
                    ChatAttachAlert.this.mentionContainer.setReversed(true);
                    ChatAttachAlert.this.mentionContainer.getAdapter().lambda$searchUsernameOrHashtag$7(charSequence, ChatAttachAlert.this.topCommentTextView.getEditText().getSelectionStart(), null, false, false);
                    ChatAttachAlert.this.updateCommentTextViewPosition();
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean z6;
                int i6;
                if (this.wasEmpty != TextUtils.isEmpty(editable)) {
                    if (ChatAttachAlert.this.currentAttachLayout != null) {
                        ChatAttachAlert.this.currentAttachLayout.onSelectedItemsCountChanged(ChatAttachAlert.this.currentAttachLayout.getSelectedItemsCount());
                    }
                    this.wasEmpty = !this.wasEmpty;
                }
                if (this.processChange) {
                    for (ImageSpan imageSpan : (ImageSpan[]) editable.getSpans(0, editable.length(), ImageSpan.class)) {
                        editable.removeSpan(imageSpan);
                    }
                    Emoji.replaceEmoji(editable, ChatAttachAlert.this.topCommentTextView.getEditText().getPaint().getFontMetricsInt(), false);
                    this.processChange = false;
                }
                ChatAttachAlert.this.codepointCount = Character.codePointCount(editable, 0, editable.length());
                ChatAttachAlert.this.animatorCaptionNotEmpty.setValue(ChatAttachAlert.this.codepointCount > 0, true);
                if (ChatAttachAlert.this.currentLimit > 0 && (i6 = ChatAttachAlert.this.currentLimit - ChatAttachAlert.this.codepointCount) <= 100) {
                    if (i6 < -9999) {
                        i6 = -9999;
                    }
                    ChatAttachAlert.this.topCaptionLimitView.setNumber(i6, ChatAttachAlert.this.topCaptionLimitView.getVisibility() == 0);
                    if (ChatAttachAlert.this.topCaptionLimitView.getVisibility() != 0) {
                        ChatAttachAlert.this.topCaptionLimitView.setVisibility(0);
                        ChatAttachAlert.this.topCaptionLimitView.setAlpha(0.0f);
                        ChatAttachAlert.this.topCaptionLimitView.setScaleX(0.5f);
                        ChatAttachAlert.this.topCaptionLimitView.setScaleY(0.5f);
                    }
                    ChatAttachAlert.this.topCaptionLimitView.animate().setListener(null).cancel();
                    ChatAttachAlert.this.topCaptionLimitView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(100L).start();
                    if (i6 < 0) {
                        ChatAttachAlert.this.topCaptionLimitView.setTextColor(ChatAttachAlert.this.getThemedColor(Theme.key_text_RedRegular));
                        z6 = false;
                    } else {
                        ChatAttachAlert.this.topCaptionLimitView.setTextColor(ChatAttachAlert.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
                        z6 = true;
                    }
                    ChatAttachAlert.this.captionLimitView.setNumber(i6, false);
                    ChatAttachAlert.this.captionLimitView.setAlpha(1.0f);
                } else {
                    ChatAttachAlert.this.topCaptionLimitView.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.21.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatAttachAlert.this.topCaptionLimitView.setVisibility(8);
                        }
                    });
                    ChatAttachAlert.this.captionLimitView.setAlpha(0.0f);
                    z6 = true;
                }
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (chatAttachAlert.sendButtonEnabled != z6) {
                    chatAttachAlert.sendButtonEnabled = z6;
                    chatAttachAlert.writeButton.invalidate();
                }
                ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                if (chatAttachAlert2.captionLimitBulletinShown || MessagesController.getInstance(chatAttachAlert2.currentAccount).premiumFeaturesBlocked() || UserConfig.getInstance(ChatAttachAlert.this.currentAccount).isPremium() || ChatAttachAlert.this.codepointCount <= MessagesController.getInstance(ChatAttachAlert.this.currentAccount).captionLengthLimitDefault || ChatAttachAlert.this.codepointCount >= MessagesController.getInstance(ChatAttachAlert.this.currentAccount).captionLengthLimitPremium) {
                    return;
                }
                ChatAttachAlert chatAttachAlert3 = ChatAttachAlert.this;
                chatAttachAlert3.captionLimitBulletinShown = true;
                chatAttachAlert3.showCaptionLimitBulletin(baseFragment);
            }
        });
        this.topCommentTextView.allowEmojisForNonPremium(LocaleUtils.canUseLocalPremiumEmojis(i));
        this.topCommentTextView.getEditText().setPadding(0, AndroidUtilities.m1124dp(9.0f), 0, AndroidUtilities.m1124dp(9.0f));
        this.topCommentTextView.getEditText().setLayoutParams(LayoutHelper.createFrame(-1, -1.0f, 19, 48.0f, 0.0f, 96.0f, 0.0f));
        this.topCommentTextView.getEditText().setTextSize(1, 17.0f);
        this.topCommentTextView.getEmojiButton().setLayoutParams(LayoutHelper.createFrame(40, 40.0f, 83, 0.0f, 0.0f, 0.0f, 0.0f));
        this.topCommentTextView.setHint(LocaleController.getString("AddCaption", C2888R.string.AddCaption));
        this.topCommentContainer.addView(this.topCommentTextView, LayoutHelper.createFrame(-1, -2, 119));
        this.topCommentContainer.setAlpha(0.0f);
        this.topCommentContainer.setVisibility(8);
        this.commentTextView.addView(this.moveCaptionButton, LayoutHelper.createFrame(40, 40.0f, 85, 0.0f, 0.0f, 0.0f, 4.0f));
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate4 = this.iBlur3FactoryLiquidGlass.create(this.topCommentContainer, BlurredBackgroundProviderImpl.inputFieldDialogActivity(resourcesProvider));
        blurredBackgroundDrawableCreate4.setRadius(AndroidUtilities.m1124dp(22.0f));
        blurredBackgroundDrawableCreate4.setPadding(AndroidUtilities.m1124dp(7.0f));
        this.topCommentContainer.setBackground(blurredBackgroundDrawableCreate4);
        this.topCommentContainer.setPadding(AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(11.0f), AndroidUtilities.m1124dp(9.0f));
        NumberTextView numberTextView2 = new NumberTextView(context);
        this.topCaptionLimitView = numberTextView2;
        numberTextView2.setVisibility(8);
        numberTextView2.setTextSize(12);
        numberTextView2.setTextColor(getThemedColor(i5));
        numberTextView2.setTypeface(AndroidUtilities.bold());
        numberTextView2.setCenterAlign(true);
        this.topCommentTextView.addView(numberTextView2, LayoutHelper.createFrame(46, 20.0f, 53, 3.0f, 0.0f, 0.0f, 40.0f));
        ImageView imageView4 = new ImageView(context);
        this.topCommentMoveButton = imageView4;
        imageView4.setScaleType(scaleType);
        this.topCommentMoveButton.setImageResource(C2888R.drawable.menu_link_below);
        this.topCommentMoveButton.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_messagePanelIcons), mode2));
        this.topCommentTextView.addView(this.topCommentMoveButton, LayoutHelper.createFrame(40, 40.0f, 85, 0.0f, 0.0f, 60.0f, 0.0f));
        this.topCommentMoveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$21(view2);
            }
        });
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.22
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoLayout) {
                    accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendPhotos", ChatAttachAlert.this.photoLayout.getSelectedItemsCount(), new Object[0]));
                } else if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.documentLayout) {
                    accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendFiles", ChatAttachAlert.this.documentLayout.getSelectedItemsCount(), new Object[0]));
                } else if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.audioLayout) {
                    accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrSendAudio", ChatAttachAlert.this.audioLayout.getSelectedItemsCount(), new Object[0]));
                }
                accessibilityNodeInfo.setClassName(Button.class.getName());
                accessibilityNodeInfo.setLongClickable(true);
                accessibilityNodeInfo.setClickable(true);
            }
        };
        this.writeButtonContainer = frameLayout4;
        frameLayout4.setFocusable(true);
        this.writeButtonContainer.setFocusableInTouchMode(true);
        this.writeButtonContainer.setVisibility(4);
        this.writeButtonContainer.setScaleX(0.2f);
        this.writeButtonContainer.setScaleY(0.2f);
        this.writeButtonContainer.setAlpha(0.0f);
        this.writeButtonContainer.setClipChildren(false);
        this.writeButtonContainer.setClipToPadding(false);
        this.containerView.addView(this.writeButtonContainer, LayoutHelper.createFrame(110, 50, 85));
        ChatActivityEnterView.SendButton sendButton = new ChatActivityEnterView.SendButton(context, C2888R.drawable.send_extera_24, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlert.23
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

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public boolean isInactive() {
                return !ChatAttachAlert.this.sendButtonEnabled;
            }

            @Override // org.telegram.ui.Components.ChatActivityEnterView.SendButton
            public int getFillColor() {
                return ChatAttachAlert.this.getThemedColor(Theme.key_dialogFloatingButton);
            }
        };
        this.writeButton = sendButton;
        sendButton.setImportantForAccessibility(2);
        this.writeButtonContainer.addView(this.writeButton, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 1.0f));
        this.writeButton.setTranslationX(this.backgroundPaddingLeft);
        this.writeButton.setCircleSize(AndroidUtilities.m1124dp(52.0f), AndroidUtilities.m1124dp(38.0f));
        this.writeButton.setCirclePadding(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(6.0f));
        ChatActivityEnterView.SendButton sendButton2 = this.writeButton;
        sendButton2.newCounterPos = true;
        sendButton2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$23(baseFragment, resourcesProvider, view2);
            }
        });
        this.writeButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda21
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$new$34(context, resourcesProvider, baseFragment, view2);
            }
        });
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        View view2 = new View(context) { // from class: org.telegram.ui.Components.ChatAttachAlert.26
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                String str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(Math.max(1, ChatAttachAlert.this.currentAttachLayout.getSelectedItemsCount())));
                int iMax = Math.max(AndroidUtilities.m1124dp(16.0f) + ((int) Math.ceil(ChatAttachAlert.this.textPaint.measureText(str))), AndroidUtilities.m1124dp(24.0f));
                int measuredWidth = getMeasuredWidth() / 2;
                int themedColor3 = ChatAttachAlert.this.getThemedColor(Theme.key_dialogRoundCheckBoxCheck);
                ChatAttachAlert.this.textPaint.setColor(ColorUtils.setAlphaComponent(themedColor3, (int) (((double) Color.alpha(themedColor3)) * ((((double) ChatAttachAlert.this.sendButtonEnabledProgress) * 0.42d) + 0.58d))));
                ChatAttachAlert.this.paint.setColor(ChatAttachAlert.this.getThemedColor(Theme.key_dialogBackground));
                int i6 = iMax / 2;
                ChatAttachAlert.this.rect.set(measuredWidth - i6, 0.0f, i6 + measuredWidth, getMeasuredHeight());
                canvas.drawRoundRect(ChatAttachAlert.this.rect, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), ChatAttachAlert.this.paint);
                ChatAttachAlert.this.paint.setColor(ChatAttachAlert.this.getThemedColor(Theme.key_chat_attachCheckBoxBackground));
                ChatAttachAlert.this.rect.set(r5 + AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), r2 - AndroidUtilities.m1124dp(2.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(2.0f));
                canvas.drawRoundRect(ChatAttachAlert.this.rect, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), ChatAttachAlert.this.paint);
                canvas.drawText(str, measuredWidth - (r1 / 2), AndroidUtilities.m1124dp(16.2f), ChatAttachAlert.this.textPaint);
            }
        };
        this.selectedCountView = view2;
        view2.setAlpha(0.0f);
        this.selectedCountView.setScaleX(0.2f);
        this.selectedCountView.setScaleY(0.2f);
        if (z) {
            checkColors();
            this.navBarColorKey = -1;
        }
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout3 = this.photoLayout;
        if (chatAttachAlertPhotoLayout3 != null) {
            chatAttachAlertPhotoLayout3.gridView.getFastScroll().applyBlurDrawables(this.iBlur3FactoryLiquidGlass, BlurredBackgroundProviderImpl.topPanel(resourcesProvider));
        }
        PasscodeView passcodeView = new PasscodeView(context);
        this.passcodeView = passcodeView;
        this.containerView.addView(passcodeView, LayoutHelper.createFrame(-1, -1.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Canvas canvas, RectF rectF) {
        Canvas canvas2;
        RectF rectF2;
        float alpha;
        AttachAlertLayout attachAlertLayout;
        int i = 0;
        while (i < 2) {
            AttachAlertLayout attachAlertLayout2 = i == 0 ? this.currentAttachLayout : this.nextAttachLayout;
            if (attachAlertLayout2 == null || attachAlertLayout2.iBlur3Capture == null || attachAlertLayout2.getVisibility() != 0) {
                canvas2 = canvas;
                rectF2 = rectF;
            } else {
                if (i == 0 && (attachAlertLayout = this.nextAttachLayout) != null && attachAlertLayout.getVisibility() == 0) {
                    alpha = attachAlertLayout2.getAlpha() * (1.0f - this.nextAttachLayout.getAlpha());
                } else {
                    alpha = attachAlertLayout2.getAlpha();
                }
                canvas2 = canvas;
                rectF2 = rectF;
                Blur3Utils.captureRelativeParent(attachAlertLayout2.iBlur3Capture, canvas2, rectF2, attachAlertLayout2.iBlur3CaptureView, getContainerView(), (int) (alpha * 255.0f));
            }
            i++;
            canvas = canvas2;
            rectF = rectF2;
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$5 */
    class C40805 extends SizeNotifierFrameLayout {
        AdjustPanLayoutHelper adjustPanLayoutHelper;
        private Bulletin.Delegate bulletinDelegate;
        private boolean ignoreLayout;
        private float initialTranslationY;
        private int lastNotifyWidth;
        private RectF rect;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40805(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.val$resourcesProvider = resourcesProvider;
            this.bulletinDelegate = new Bulletin.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.5.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    return (C40805.this.getHeight() - ChatAttachAlert.this.frameLayout2.getTop()) + AndroidUtilities.m1124dp(52.0f);
                }
            };
            this.rect = new RectF();
            this.adjustPanLayoutHelper = new AdjustPanLayoutHelper(this) { // from class: org.telegram.ui.Components.ChatAttachAlert.5.2
                /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
                @Override // org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                protected void onTransitionStart(boolean z, int i) {
                    super.onTransitionStart(z, i);
                    if (ChatAttachAlert.this.previousScrollOffsetY > 0) {
                        int i2 = ChatAttachAlert.this.previousScrollOffsetY;
                        ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                        if (i2 != chatAttachAlert.scrollOffsetY[0] && z) {
                            chatAttachAlert.fromScrollY = chatAttachAlert.previousScrollOffsetY;
                            ChatAttachAlert.this.toScrollY = r0.scrollOffsetY[0];
                        } else {
                            ChatAttachAlert.this.fromScrollY = -1.0f;
                        }
                    }
                    C40805.this.invalidate();
                    if ((ChatAttachAlert.this.currentAttachLayout instanceof ChatAttachAlertBotWebViewLayout) && !ChatAttachAlert.this.botButtonWasVisible) {
                        if (z) {
                            ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(8);
                        } else {
                            ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(0);
                        }
                    }
                    ChatAttachAlert.this.currentAttachLayout.onPanTransitionStart(z, i);
                }

                @Override // org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper
                protected void onTransitionEnd() {
                    super.onTransitionEnd();
                    ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                    chatAttachAlert.updateLayout(chatAttachAlert.currentAttachLayout, false, 0);
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                    chatAttachAlert2.previousScrollOffsetY = chatAttachAlert2.scrollOffsetY[0];
                    ChatAttachAlert.this.currentAttachLayout.onPanTransitionEnd();
                    if (!(ChatAttachAlert.this.currentAttachLayout instanceof ChatAttachAlertBotWebViewLayout) || ChatAttachAlert.this.botButtonWasVisible) {
                        return;
                    }
                    int iM1124dp = ((BottomSheet) ChatAttachAlert.this).keyboardVisible ? AndroidUtilities.m1124dp(84.0f) : 0;
                    for (int i = 0; i < ChatAttachAlert.this.botAttachLayouts.size(); i++) {
                        ((ChatAttachAlertBotWebViewLayout) ChatAttachAlert.this.botAttachLayouts.valueAt(i)).setMeasureOffsetY(iM1124dp);
                    }
                }

                @Override // org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper
                protected void onPanTranslationUpdate(float f, float f2, boolean z) {
                    ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                    chatAttachAlert.currentPanTranslationY = f;
                    if (chatAttachAlert.fromScrollY > 0.0f) {
                        ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                        chatAttachAlert2.currentPanTranslationY += (chatAttachAlert2.fromScrollY - ChatAttachAlert.this.toScrollY) * (1.0f - f2);
                    }
                    ChatAttachAlert chatAttachAlert3 = ChatAttachAlert.this;
                    chatAttachAlert3.actionBar.setTranslationY(chatAttachAlert3.currentPanTranslationY);
                    ChatAttachAlert chatAttachAlert4 = ChatAttachAlert.this;
                    chatAttachAlert4.selectedMenuItem.setTranslationY(chatAttachAlert4.currentPanTranslationY);
                    ChatAttachAlert chatAttachAlert5 = ChatAttachAlert.this;
                    ActionBarMenuItem actionBarMenuItem = chatAttachAlert5.searchItem;
                    if (actionBarMenuItem != null) {
                        actionBarMenuItem.setTranslationY(chatAttachAlert5.currentPanTranslationY);
                    }
                    ChatAttachAlert chatAttachAlert6 = ChatAttachAlert.this;
                    chatAttachAlert6.doneItem.setTranslationY(chatAttachAlert6.currentPanTranslationY);
                    ChatAttachAlert.this.actionBarShadow.setTranslationY(ChatAttachAlert.this.currentPanTranslationY);
                    ChatAttachAlert.this.updateSelectedPosition(0);
                    ChatAttachAlert chatAttachAlert7 = ChatAttachAlert.this;
                    chatAttachAlert7.setCurrentPanTranslationY(chatAttachAlert7.currentPanTranslationY);
                    C40805.this.invalidate();
                    ChatAttachAlert.this.frameLayout2.invalidate();
                    ChatAttachAlert.this.updateCommentTextViewPosition();
                    if (ChatAttachAlert.this.currentAttachLayout != null) {
                        ChatAttachAlert.this.currentAttachLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
                    }
                }

                @Override // org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper
                protected boolean heightAnimationEnabled() {
                    if (!ChatAttachAlert.this.isDismissed() && ChatAttachAlert.this.openTransitionFinished) {
                        if (ChatAttachAlert.this.currentAttachLayout != ChatAttachAlert.this.pollLayout && ChatAttachAlert.this.currentAttachLayout != ChatAttachAlert.this.todoLayout && !ChatAttachAlert.this.getCommentView().isPopupVisible()) {
                            return true;
                        }
                        if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.pollLayout && !ChatAttachAlert.this.pollLayout.isPopupVisible()) {
                            return true;
                        }
                        if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.todoLayout && !ChatAttachAlert.this.todoLayout.isPopupVisible()) {
                            return true;
                        }
                    }
                    return false;
                }
            };
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (ChatAttachAlert.this.currentAttachLayout.onContainerViewTouchEvent(motionEvent)) {
                return true;
            }
            if (motionEvent.getAction() == 0 && ChatAttachAlert.this.scrollOffsetY[0] != 0 && motionEvent.getY() < getCurrentTop() && ChatAttachAlert.this.actionBar.getAlpha() == 0.0f) {
                ChatAttachAlert.this.onDismissWithTouchOutside();
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (ChatAttachAlert.this.currentAttachLayout.onContainerViewTouchEvent(motionEvent)) {
                return true;
            }
            return !ChatAttachAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size;
            if (getLayoutParams().height > 0) {
                size = getLayoutParams().height;
            } else {
                size = View.MeasureSpec.getSize(i2);
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            if (!chatAttachAlert.inBubbleMode) {
                this.ignoreLayout = true;
                setPadding(((BottomSheet) chatAttachAlert).backgroundPaddingLeft, 0, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, 0);
                this.ignoreLayout = false;
            }
            int size2 = View.MeasureSpec.getSize(i) - (((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft * 2);
            if (AndroidUtilities.isTablet()) {
                ChatAttachAlert.this.selectedMenuItem.setAdditionalYOffset(-AndroidUtilities.m1124dp(3.0f));
            } else {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    ChatAttachAlert.this.selectedMenuItem.setAdditionalYOffset(0);
                } else {
                    ChatAttachAlert.this.selectedMenuItem.setAdditionalYOffset(-AndroidUtilities.m1124dp(3.0f));
                }
            }
            ((FrameLayout.LayoutParams) ChatAttachAlert.this.actionBarShadow.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
            ((FrameLayout.LayoutParams) ChatAttachAlert.this.doneItem.getLayoutParams()).height = ActionBar.getCurrentActionBarHeight();
            this.ignoreLayout = true;
            int iMin = (int) (size2 / Math.min(4.5f, ChatAttachAlert.this.buttonsAdapter.getItemCount()));
            if (ChatAttachAlert.this.attachItemSize != iMin) {
                ChatAttachAlert.this.attachItemSize = iMin;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMeasure$0();
                    }
                });
            }
            this.ignoreLayout = false;
            onMeasureInternal(i, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0() {
            ChatAttachAlert.this.buttonsAdapter.notifyDataSetChanged();
        }

        private void onMeasureInternal(int i, int i2) {
            int i3;
            int i4;
            EditTextEmoji editTextEmoji;
            int emojiPadding;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            setMeasuredDimension(size, size2);
            int i5 = size - (((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft * 2);
            if (!ChatAttachAlert.this.commentTextView.isWaitingForKeyboardOpen() && AndroidUtilities.m1124dp(20.0f) >= 0 && !ChatAttachAlert.this.commentTextView.isPopupShowing() && !ChatAttachAlert.this.commentTextView.isAnimatePopupClosing()) {
                this.ignoreLayout = true;
                ChatAttachAlert.this.commentTextView.hideEmojiView();
                this.ignoreLayout = false;
            }
            if (!ChatAttachAlert.this.topCommentTextView.isWaitingForKeyboardOpen() && AndroidUtilities.m1124dp(20.0f) >= 0 && !ChatAttachAlert.this.topCommentTextView.isPopupShowing() && !ChatAttachAlert.this.topCommentTextView.isAnimatePopupClosing()) {
                this.ignoreLayout = true;
                ChatAttachAlert.this.topCommentTextView.hideEmojiView();
                this.ignoreLayout = false;
            }
            if (ChatAttachAlert.this.pollLayout != null && AndroidUtilities.m1124dp(20.0f) >= 0 && !ChatAttachAlert.this.pollLayout.isWaitingForKeyboardOpen() && !ChatAttachAlert.this.pollLayout.isPopupShowing() && !ChatAttachAlert.this.pollLayout.isAnimatePopupClosing() && !ChatAttachAlert.this.pollLayout.isEmojiSearchOpened) {
                this.ignoreLayout = true;
                ChatAttachAlert.this.pollLayout.hideEmojiView();
                this.ignoreLayout = false;
            }
            if (ChatAttachAlert.this.todoLayout != null && AndroidUtilities.m1124dp(20.0f) >= 0 && !ChatAttachAlert.this.todoLayout.isWaitingForKeyboardOpen() && !ChatAttachAlert.this.todoLayout.isPopupShowing() && !ChatAttachAlert.this.todoLayout.isAnimatePopupClosing() && !ChatAttachAlert.this.todoLayout.isEmojiSearchOpened) {
                this.ignoreLayout = true;
                ChatAttachAlert.this.todoLayout.hideEmojiView();
                this.ignoreLayout = false;
            }
            if (AndroidUtilities.m1124dp(20.0f) >= 0) {
                if (((BottomSheet) ChatAttachAlert.this).keyboardVisible) {
                    if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.pollLayout && ChatAttachAlert.this.pollLayout.emojiView != null && ChatAttachAlert.this.pollLayout.isEmojiSearchOpened) {
                        emojiPadding = AndroidUtilities.m1124dp(120.0f);
                    } else {
                        emojiPadding = (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.todoLayout && ChatAttachAlert.this.todoLayout.emojiView != null && ChatAttachAlert.this.todoLayout.isEmojiSearchOpened) ? AndroidUtilities.m1124dp(120.0f) : 0;
                    }
                } else {
                    emojiPadding = ChatAttachAlert.this.getEmojiPadding();
                }
                int rootBottomInset = getRootBottomInset(WindowInsetsCompat.Type.ime());
                Math.max(getRootBottomInset(WindowInsetsCompat.Type.ime() | WindowInsetsCompat.Type.systemBars()), emojiPadding);
                int iMax = Math.max(rootBottomInset > 0 ? 0 : AndroidUtilities.navigationBarHeight, emojiPadding);
                this.ignoreLayout = true;
                if (ChatAttachAlert.this.currentAttachLayout.occupyNavigationBar) {
                    ChatAttachAlert.this.currentAttachLayout.listPaddingBottom = AndroidUtilities.m1124dp(62.0f) + iMax;
                    ChatAttachAlert.this.currentAttachLayout.onPreMeasure(i5, size2);
                } else {
                    ChatAttachAlert.this.currentAttachLayout.listPaddingBottom = AndroidUtilities.navigationBarHeight;
                    ChatAttachAlert.this.currentAttachLayout.onPreMeasure(i5, size2 - emojiPadding);
                }
                if (ChatAttachAlert.this.nextAttachLayout != null) {
                    if (ChatAttachAlert.this.nextAttachLayout.occupyNavigationBar) {
                        ChatAttachAlert.this.nextAttachLayout.listPaddingBottom = iMax + AndroidUtilities.m1124dp(62.0f);
                        ChatAttachAlert.this.nextAttachLayout.onPreMeasure(i5, size2);
                    } else {
                        ChatAttachAlert.this.nextAttachLayout.listPaddingBottom = AndroidUtilities.navigationBarHeight;
                        ChatAttachAlert.this.nextAttachLayout.onPreMeasure(i5, size2 - emojiPadding);
                    }
                }
                this.ignoreLayout = false;
            }
            int childCount = getChildCount();
            int i6 = 0;
            while (i6 < childCount) {
                View childAt = getChildAt(i6);
                if (childAt == null || childAt.getVisibility() == 8) {
                    i3 = i;
                    i4 = i2;
                } else {
                    int i7 = AndroidUtilities.statusBarHeight;
                    int i8 = AndroidUtilities.navigationBarHeight;
                    if (childAt instanceof AttachAlertLayout) {
                        AttachAlertLayout attachAlertLayout = (AttachAlertLayout) childAt;
                        if (attachAlertLayout.occupyStatusBar) {
                            i7 = 0;
                        }
                        if (attachAlertLayout.occupyNavigationBar) {
                            i8 = 0;
                        }
                    }
                    EditTextEmoji editTextEmoji2 = ChatAttachAlert.this.commentTextView;
                    if ((editTextEmoji2 != null && editTextEmoji2.isPopupView(childAt)) || (((editTextEmoji = ChatAttachAlert.this.topCommentTextView) != null && editTextEmoji.isPopupView(childAt)) || ((ChatAttachAlert.this.pollLayout != null && childAt == ChatAttachAlert.this.pollLayout.emojiView) || (ChatAttachAlert.this.todoLayout != null && childAt == ChatAttachAlert.this.todoLayout.emojiView)))) {
                        if (ChatAttachAlert.this.inBubbleMode) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getPaddingTop() + size2, TLObject.FLAG_30));
                        } else if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                            if (AndroidUtilities.isTablet()) {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m1124dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (size2 - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((size2 - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                            }
                        } else {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                        }
                        i3 = i;
                        i4 = i2;
                    } else {
                        i3 = i;
                        i4 = i2;
                        measureChildWithMargins(childAt, i3, 0, i4, i7 + i8);
                    }
                }
                i6++;
                i = i3;
                i2 = i4;
            }
        }

        private int getRootKeyboardHeight() {
            return getRootBottomInset(WindowInsetsCompat.Type.ime());
        }

        private int getRootBottomInset(int i) {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this);
            if (rootWindowInsets != null) {
                return rootWindowInsets.getInsets(i).bottom;
            }
            return 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:115:0x01f0  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x01fc  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0182  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0195  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x019a  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01a0  */
        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int paddingRight;
            int i5;
            int paddingLeft;
            int i6;
            int i7;
            int i8;
            ChatAttachAlert chatAttachAlert;
            EditTextEmoji editTextEmoji;
            EditTextEmoji editTextEmoji2;
            ChatAttachAlert chatAttachAlert2;
            int i9;
            int iMax;
            int measuredHeight;
            int measuredHeight2;
            int emojiPadding;
            int i10 = i3 - i;
            if (this.lastNotifyWidth != i10) {
                this.lastNotifyWidth = i10;
                if (ChatAttachAlert.this.messageSendPreview != null && ChatAttachAlert.this.messageSendPreview.isShowing()) {
                    ChatAttachAlert.this.messageSendPreview.dismiss();
                }
            }
            int childCount = getChildCount();
            if (Build.VERSION.SDK_INT >= 29) {
                ChatAttachAlert.this.exclustionRect.set(i, i2, i3, i4);
                setSystemGestureExclusionRects(ChatAttachAlert.this.exclusionRects);
            }
            int rootKeyboardHeight = getRootKeyboardHeight();
            int paddingBottom = getPaddingBottom();
            if (!((BottomSheet) ChatAttachAlert.this).keyboardVisible) {
                if (ChatAttachAlert.this.pollLayout != null && ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.pollLayout && ChatAttachAlert.this.pollLayout.emojiView != null) {
                    if (rootKeyboardHeight <= AndroidUtilities.m1124dp(20.0f) && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                        emojiPadding = ChatAttachAlert.this.pollLayout.getEmojiPadding();
                    }
                    if (emojiPadding > 0) {
                    }
                } else if (ChatAttachAlert.this.todoLayout != null && ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.todoLayout && ChatAttachAlert.this.todoLayout.emojiView != null) {
                    if (rootKeyboardHeight <= AndroidUtilities.m1124dp(20.0f) && !AndroidUtilities.isInMultiwindow && !AndroidUtilities.isTablet()) {
                        emojiPadding = ChatAttachAlert.this.todoLayout.getEmojiPadding();
                    }
                    if (emojiPadding > 0) {
                    }
                } else {
                    emojiPadding = (rootKeyboardHeight > AndroidUtilities.m1124dp(20.0f) || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : ChatAttachAlert.this.getCommentView().getEmojiPadding();
                    if (emojiPadding > 0) {
                        paddingBottom += emojiPadding;
                    }
                }
            }
            setBottomClip(paddingBottom);
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    int i12 = AndroidUtilities.statusBarHeight;
                    int iMax2 = rootKeyboardHeight == 0 ? Math.max(AndroidUtilities.navigationBarHeight, paddingBottom) : 0;
                    if (childAt instanceof AttachAlertLayout) {
                        AttachAlertLayout attachAlertLayout = (AttachAlertLayout) childAt;
                        if (attachAlertLayout.occupyStatusBar) {
                            i12 = 0;
                        }
                        if (attachAlertLayout.occupyNavigationBar) {
                            iMax2 = 0;
                        }
                    }
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight3 = childAt.getMeasuredHeight();
                    int i13 = layoutParams.gravity;
                    if (i13 == -1) {
                        i13 = 51;
                    }
                    int i14 = i13 & 112;
                    int i15 = i13 & 7;
                    if (i15 == 1) {
                        paddingRight = ((i10 - measuredWidth) / 2) + layoutParams.leftMargin;
                        i5 = layoutParams.rightMargin;
                    } else if (i15 == 5) {
                        paddingRight = ((i10 - measuredWidth) - layoutParams.rightMargin) - getPaddingRight();
                        i5 = ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft;
                    } else {
                        paddingLeft = layoutParams.leftMargin + getPaddingLeft();
                        if (i14 != 16) {
                            i6 = ((((i4 - iMax2) - i2) - measuredHeight3) / 2) + layoutParams.topMargin;
                            i7 = layoutParams.bottomMargin;
                        } else {
                            if (i14 == 48) {
                                i8 = layoutParams.topMargin + i12;
                            } else if (i14 == 80) {
                                i6 = ((i4 - iMax2) - i2) - measuredHeight3;
                                i7 = layoutParams.bottomMargin;
                            } else {
                                i8 = layoutParams.topMargin;
                            }
                            chatAttachAlert = ChatAttachAlert.this;
                            if (childAt == chatAttachAlert.actionBar) {
                                i8 = 0;
                            }
                            editTextEmoji = chatAttachAlert.commentTextView;
                            if ((editTextEmoji != null && editTextEmoji.isPopupView(childAt)) || (((editTextEmoji2 = ChatAttachAlert.this.topCommentTextView) != null && editTextEmoji2.isPopupView(childAt)) || ((ChatAttachAlert.this.pollLayout != null && childAt == ChatAttachAlert.this.pollLayout.emojiView) || (ChatAttachAlert.this.todoLayout != null && childAt == ChatAttachAlert.this.todoLayout.emojiView)))) {
                                if (AndroidUtilities.isTablet()) {
                                    measuredHeight = getMeasuredHeight();
                                    measuredHeight2 = childAt.getMeasuredHeight();
                                } else {
                                    measuredHeight = getMeasuredHeight() + rootKeyboardHeight;
                                    measuredHeight2 = childAt.getMeasuredHeight();
                                }
                                i8 = measuredHeight - measuredHeight2;
                            } else {
                                chatAttachAlert2 = ChatAttachAlert.this;
                                if (childAt == chatAttachAlert2.mentionContainer) {
                                    if (chatAttachAlert2.captionAbove) {
                                        i9 = AndroidUtilities.statusBarHeight;
                                        iMax = ActionBar.getCurrentActionBarHeight();
                                        i8 = i9 + iMax;
                                    }
                                } else if (childAt == chatAttachAlert2.bottomFadeView) {
                                    i9 = i8 + AndroidUtilities.navigationBarHeight;
                                    iMax = Math.max(rootKeyboardHeight, ChatAttachAlert.this.getEmojiPadding());
                                    i8 = i9 + iMax;
                                }
                            }
                            childAt.layout(paddingLeft, i8, measuredWidth + paddingLeft, measuredHeight3 + i8);
                        }
                        i8 = i6 - i7;
                        chatAttachAlert = ChatAttachAlert.this;
                        if (childAt == chatAttachAlert.actionBar) {
                        }
                        editTextEmoji = chatAttachAlert.commentTextView;
                        if (editTextEmoji != null) {
                            chatAttachAlert2 = ChatAttachAlert.this;
                            if (childAt == chatAttachAlert2.mentionContainer) {
                            }
                        } else {
                            chatAttachAlert2 = ChatAttachAlert.this;
                            if (childAt == chatAttachAlert2.mentionContainer) {
                            }
                        }
                    }
                    paddingLeft = paddingRight - i5;
                    if (i14 != 16) {
                    }
                    i8 = i6 - i7;
                    chatAttachAlert = ChatAttachAlert.this;
                    if (childAt == chatAttachAlert.actionBar) {
                    }
                    editTextEmoji = chatAttachAlert.commentTextView;
                    if (editTextEmoji != null) {
                    }
                }
            }
            notifyHeightChanged();
            ChatAttachAlert chatAttachAlert3 = ChatAttachAlert.this;
            chatAttachAlert3.updateLayout(chatAttachAlert3.currentAttachLayout, false, 0);
            ChatAttachAlert chatAttachAlert4 = ChatAttachAlert.this;
            chatAttachAlert4.updateLayout(chatAttachAlert4.nextAttachLayout, false, 0);
            ChatAttachAlert chatAttachAlert5 = ChatAttachAlert.this;
            if (chatAttachAlert5.captionAbove) {
                chatAttachAlert5.updateCommentTextViewPosition();
            }
            if (ChatAttachAlert.this.photoLayout == null || ChatAttachAlert.this.photoLayout.gridView == null || ChatAttachAlert.this.photoLayout.gridView.getFastScroll() == null) {
                return;
            }
            ChatAttachAlert.this.photoLayout.gridView.getFastScroll().topOffset = ActionBar.getCurrentActionBarHeight() + ChatAttachAlert.this.photoLayout.listAdditionalH + (ChatAttachAlert.this.captionAbove ? (int) (r4.topCommentContainer.getMeasuredHeight() * ChatAttachAlert.this.topCommentContainer.getAlpha()) : 0);
            ChatAttachAlert.this.photoLayout.gridView.getFastScroll().invalidate();
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        private float getY(View view) {
            int currentActionBarHeight;
            int iM1124dp;
            float f;
            if (!(view instanceof AttachAlertLayout)) {
                return 0.0f;
            }
            AttachAlertLayout attachAlertLayout = (AttachAlertLayout) view;
            int iNeedsActionBar = attachAlertLayout.needsActionBar();
            int iM1124dp2 = AndroidUtilities.m1124dp(13.0f);
            FrameLayout frameLayout = ChatAttachAlert.this.headerView;
            int alpha = iM1124dp2 + ((int) ((frameLayout != null ? frameLayout.getAlpha() : 0.0f) * AndroidUtilities.m1124dp(26.0f)));
            FrameLayout frameLayout2 = ChatAttachAlert.this.topCommentContainer;
            int alpha2 = alpha + ((int) (frameLayout2 != null ? frameLayout2.getAlpha() * ChatAttachAlert.this.topCommentContainer.getMeasuredHeight() : 0.0f));
            int scrollOffsetY = (ChatAttachAlert.this.getScrollOffsetY(0) - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop) - alpha2;
            if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType == 1 || ChatAttachAlert.this.viewChangeAnimator != null) {
                scrollOffsetY = (int) (scrollOffsetY + view.getTranslationY());
            }
            int iM1124dp3 = AndroidUtilities.m1124dp(20.0f) + scrollOffsetY;
            if (iNeedsActionBar == 0) {
                currentActionBarHeight = ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop;
            } else {
                currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
            }
            if (iNeedsActionBar != 2 && scrollOffsetY + ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop < currentActionBarHeight) {
                float f2 = alpha2;
                if (attachAlertLayout == ChatAttachAlert.this.locationLayout) {
                    iM1124dp = AndroidUtilities.m1124dp(11.0f);
                } else if (attachAlertLayout == ChatAttachAlert.this.pollLayout || attachAlertLayout == ChatAttachAlert.this.todoLayout) {
                    int iM1124dp4 = AndroidUtilities.m1124dp(3.0f);
                    f = f2 - iM1124dp4;
                    iM1124dp3 -= (int) (((currentActionBarHeight - f) + AndroidUtilities.statusBarHeight) * ChatAttachAlert.this.actionBar.getAlpha());
                } else {
                    iM1124dp = AndroidUtilities.m1124dp(4.0f);
                }
                f = f2 + iM1124dp;
                iM1124dp3 -= (int) (((currentActionBarHeight - f) + AndroidUtilities.statusBarHeight) * ChatAttachAlert.this.actionBar.getAlpha());
            }
            if (!ChatAttachAlert.this.inBubbleMode) {
                iM1124dp3 += AndroidUtilities.statusBarHeight;
            }
            return iM1124dp3;
        }

        private void drawChildBackground(Canvas canvas, View view) {
            int currentActionBarHeight;
            float f;
            int iM1124dp;
            float f2;
            float fMax;
            int actionBarDrawableColor;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            int themedColor;
            float alpha;
            float f8;
            if (view instanceof AttachAlertLayout) {
                canvas.save();
                canvas.translate(0.0f, ChatAttachAlert.this.currentPanTranslationY);
                int alpha2 = (int) (view.getAlpha() * 255.0f);
                AttachAlertLayout attachAlertLayout = (AttachAlertLayout) view;
                int iNeedsActionBar = attachAlertLayout.needsActionBar();
                int iM1124dp2 = AndroidUtilities.m1124dp(13.0f);
                FrameLayout frameLayout = ChatAttachAlert.this.headerView;
                int alpha3 = iM1124dp2 + ((int) ((frameLayout != null ? frameLayout.getAlpha() : 0.0f) * AndroidUtilities.m1124dp(26.0f)));
                FrameLayout frameLayout2 = ChatAttachAlert.this.topCommentContainer;
                int alpha4 = alpha3 + ((int) (frameLayout2 != null ? frameLayout2.getAlpha() * ChatAttachAlert.this.topCommentContainer.getMeasuredHeight() : 0.0f));
                int scrollOffsetY = (ChatAttachAlert.this.getScrollOffsetY(0) - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop) - alpha4;
                if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType == 1 || ChatAttachAlert.this.viewChangeAnimator != null) {
                    scrollOffsetY = (int) (scrollOffsetY + view.getTranslationY());
                }
                int iM1124dp3 = AndroidUtilities.m1124dp(20.0f) + scrollOffsetY;
                getMeasuredHeight();
                AndroidUtilities.m1124dp(45.0f);
                int unused = ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop;
                if (iNeedsActionBar == 0) {
                    currentActionBarHeight = ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop;
                } else {
                    currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
                }
                if (iNeedsActionBar != 2) {
                    float f9 = alpha4;
                    f = 0.0f;
                    if (attachAlertLayout == ChatAttachAlert.this.locationLayout) {
                        iM1124dp = AndroidUtilities.m1124dp(11.0f);
                    } else if (attachAlertLayout == ChatAttachAlert.this.pollLayout || attachAlertLayout == ChatAttachAlert.this.todoLayout) {
                        int iM1124dp4 = AndroidUtilities.m1124dp(3.0f);
                        f2 = f9 - iM1124dp4;
                        float alpha5 = ChatAttachAlert.this.actionBar.getAlpha();
                        int i = (int) (((currentActionBarHeight - f2) + AndroidUtilities.statusBarHeight) * alpha5);
                        scrollOffsetY -= i;
                        iM1124dp3 -= i;
                        fMax = 1.0f - alpha5;
                    } else {
                        iM1124dp = AndroidUtilities.m1124dp(4.0f);
                    }
                    f2 = f9 + iM1124dp;
                    float alpha52 = ChatAttachAlert.this.actionBar.getAlpha();
                    int i2 = (int) (((currentActionBarHeight - f2) + AndroidUtilities.statusBarHeight) * alpha52);
                    scrollOffsetY -= i2;
                    iM1124dp3 -= i2;
                    fMax = 1.0f - alpha52;
                } else if (scrollOffsetY < currentActionBarHeight) {
                    fMax = Math.max(0.0f, 1.0f - ((currentActionBarHeight - scrollOffsetY) / ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop));
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    fMax = 1.0f;
                }
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (!chatAttachAlert.inBubbleMode) {
                    int i3 = AndroidUtilities.statusBarHeight;
                    scrollOffsetY += i3;
                    iM1124dp3 += i3;
                }
                if (chatAttachAlert.currentAttachLayout.hasCustomBackground()) {
                    actionBarDrawableColor = ChatAttachAlert.this.currentAttachLayout.getCustomBackground();
                } else {
                    actionBarDrawableColor = ChatAttachAlert.this.getActionBarDrawableColor();
                }
                ((BottomSheet) ChatAttachAlert.this).shadowDrawable.setAlpha(alpha2);
                ((BottomSheet) ChatAttachAlert.this).shadowDrawable.setBounds(0, scrollOffsetY, getMeasuredWidth(), getMeasuredHeight() + AndroidUtilities.m1124dp(45.0f) + ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop);
                ((BottomSheet) ChatAttachAlert.this).shadowDrawable.draw(canvas);
                if (iNeedsActionBar == 2) {
                    f5 = 24.0f;
                    Theme.dialogs_onlineCirclePaint.setColor(actionBarDrawableColor);
                    Theme.dialogs_onlineCirclePaint.setAlpha(alpha2);
                    f6 = 2.0f;
                    f7 = 12.0f;
                    f3 = 4.0f;
                    f4 = 1.0f;
                    this.rect.set(((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY + AndroidUtilities.m1124dp(24.0f));
                    canvas.save();
                    RectF rectF = this.rect;
                    float f10 = rectF.left;
                    float f11 = rectF.top;
                    canvas.clipRect(f10, f11, rectF.right, (rectF.height() / 2.0f) + f11);
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(12.0f) * fMax, AndroidUtilities.m1124dp(12.0f) * fMax, Theme.dialogs_onlineCirclePaint);
                    canvas.restore();
                } else {
                    f3 = 4.0f;
                    f4 = 1.0f;
                    f5 = 24.0f;
                    f6 = 2.0f;
                    f7 = 12.0f;
                }
                if ((fMax != f4 && iNeedsActionBar != 2) || ChatAttachAlert.this.currentAttachLayout.hasCustomActionBarBackground()) {
                    Paint paint = Theme.dialogs_onlineCirclePaint;
                    if (ChatAttachAlert.this.currentAttachLayout.hasCustomActionBarBackground()) {
                        actionBarDrawableColor = ChatAttachAlert.this.currentAttachLayout.getCustomActionBarBackground();
                    }
                    paint.setColor(actionBarDrawableColor);
                    Theme.dialogs_onlineCirclePaint.setAlpha(alpha2);
                    this.rect.set(((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY + AndroidUtilities.m1124dp(f5));
                    canvas.save();
                    RectF rectF2 = this.rect;
                    float f12 = rectF2.left;
                    float f13 = rectF2.top;
                    canvas.clipRect(f12, f13, rectF2.right, (rectF2.height() / f6) + f13);
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(f7) * fMax, AndroidUtilities.m1124dp(f7) * fMax, Theme.dialogs_onlineCirclePaint);
                    canvas.restore();
                }
                if (ChatAttachAlert.this.currentAttachLayout.hasCustomActionBarBackground()) {
                    Theme.dialogs_onlineCirclePaint.setColor(ChatAttachAlert.this.currentAttachLayout.getCustomActionBarBackground());
                    Theme.dialogs_onlineCirclePaint.setAlpha(alpha2);
                    int scrollOffsetY2 = ChatAttachAlert.this.getScrollOffsetY(0);
                    if (!ChatAttachAlert.this.inBubbleMode) {
                        scrollOffsetY2 += AndroidUtilities.statusBarHeight;
                    }
                    this.rect.set(((BottomSheet) r4).backgroundPaddingLeft, (((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY + AndroidUtilities.m1124dp(f7)) * fMax, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, scrollOffsetY2 + AndroidUtilities.m1124dp(f7));
                    canvas.save();
                    canvas.drawRect(this.rect, Theme.dialogs_onlineCirclePaint);
                    canvas.restore();
                }
                FrameLayout frameLayout3 = ChatAttachAlert.this.headerView;
                if ((frameLayout3 == null || frameLayout3.getAlpha() != f4) && fMax != f) {
                    int iM1124dp5 = AndroidUtilities.m1124dp(36.0f);
                    this.rect.set((getMeasuredWidth() - iM1124dp5) / 2, iM1124dp3, (getMeasuredWidth() + iM1124dp5) / 2, iM1124dp3 + AndroidUtilities.m1124dp(f3));
                    if (iNeedsActionBar == 2) {
                        themedColor = 536870912;
                        f8 = fMax;
                    } else if (!ChatAttachAlert.this.currentAttachLayout.hasCustomActionBarBackground()) {
                        themedColor = ChatAttachAlert.this.getThemedColor(Theme.key_sheet_scrollUp);
                        FrameLayout frameLayout4 = ChatAttachAlert.this.headerView;
                        if (frameLayout4 != null) {
                            alpha = frameLayout4.getAlpha();
                            f8 = f4 - alpha;
                        }
                        f8 = f4;
                    } else {
                        int customActionBarBackground = ChatAttachAlert.this.currentAttachLayout.getCustomActionBarBackground();
                        themedColor = ColorUtils.blendARGB(customActionBarBackground, ColorUtils.calculateLuminance(customActionBarBackground) < 0.5d ? -1 : -16777216, 0.5f);
                        FrameLayout frameLayout5 = ChatAttachAlert.this.headerView;
                        if (frameLayout5 != null) {
                            alpha = frameLayout5.getAlpha();
                            f8 = f4 - alpha;
                        }
                        f8 = f4;
                    }
                    int iAlpha = Color.alpha(themedColor);
                    Theme.dialogs_onlineCirclePaint.setColor(themedColor);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (iAlpha * f8 * fMax * view.getAlpha()));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(f6), AndroidUtilities.m1124dp(f6), Theme.dialogs_onlineCirclePaint);
                }
                canvas.restore();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:79:0x0274  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x027a  */
        @Override // android.view.ViewGroup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected boolean drawChild(Canvas canvas, View view, long j) {
            int currentActionBarHeight;
            float f;
            int iM1124dp;
            float f2;
            float fMax;
            int actionBarDrawableColor;
            float f3;
            float f4;
            boolean zDrawChild;
            int themedColor;
            float alpha;
            if ((view instanceof AttachAlertLayout) && view.getAlpha() > 0.0f) {
                canvas.save();
                canvas.translate(0.0f, ChatAttachAlert.this.currentPanTranslationY);
                int alpha2 = (int) (view.getAlpha() * 255.0f);
                AttachAlertLayout attachAlertLayout = (AttachAlertLayout) view;
                int iNeedsActionBar = attachAlertLayout.needsActionBar();
                int iM1124dp2 = AndroidUtilities.m1124dp(13.0f);
                FrameLayout frameLayout = ChatAttachAlert.this.headerView;
                int iM1124dp3 = iM1124dp2 + (frameLayout != null ? AndroidUtilities.m1124dp(frameLayout.getAlpha() * 26.0f) : 0);
                FrameLayout frameLayout2 = ChatAttachAlert.this.topCommentContainer;
                int alpha3 = iM1124dp3 + ((int) (frameLayout2 != null ? frameLayout2.getAlpha() * ChatAttachAlert.this.topCommentContainer.getMeasuredHeight() : 0.0f));
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                int scrollOffsetY = (chatAttachAlert.getScrollOffsetY(attachAlertLayout == chatAttachAlert.currentAttachLayout ? 0 : 1) - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop) - alpha3;
                if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType == 1 || ChatAttachAlert.this.viewChangeAnimator != null) {
                    scrollOffsetY = (int) (scrollOffsetY + view.getTranslationY());
                }
                int iM1124dp4 = AndroidUtilities.m1124dp(20.0f) + scrollOffsetY;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.m1124dp(45.0f) + ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop;
                if (iNeedsActionBar == 0) {
                    currentActionBarHeight = ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop;
                } else {
                    currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
                }
                if (iNeedsActionBar != 2) {
                    f = 0.0f;
                    if (((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY < currentActionBarHeight) {
                        float f5 = alpha3;
                        if (attachAlertLayout == ChatAttachAlert.this.locationLayout) {
                            iM1124dp = AndroidUtilities.m1124dp(11.0f);
                        } else if (attachAlertLayout == ChatAttachAlert.this.pollLayout || attachAlertLayout == ChatAttachAlert.this.todoLayout) {
                            int iM1124dp5 = AndroidUtilities.m1124dp(3.0f);
                            f2 = f5 - iM1124dp5;
                            float fMin = Math.min(1.0f, ((currentActionBarHeight - scrollOffsetY) - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop) / f2);
                            int i = (int) ((currentActionBarHeight - f2) * fMin);
                            scrollOffsetY -= i;
                            iM1124dp4 -= i;
                            measuredHeight += i;
                            fMax = 1.0f - fMin;
                        } else {
                            iM1124dp = AndroidUtilities.m1124dp(4.0f);
                        }
                        f2 = f5 + iM1124dp;
                        float fMin2 = Math.min(1.0f, ((currentActionBarHeight - scrollOffsetY) - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop) / f2);
                        int i2 = (int) ((currentActionBarHeight - f2) * fMin2);
                        scrollOffsetY -= i2;
                        iM1124dp4 -= i2;
                        measuredHeight += i2;
                        fMax = 1.0f - fMin2;
                    } else {
                        fMax = 1.0f;
                    }
                } else if (scrollOffsetY < currentActionBarHeight) {
                    fMax = Math.max(0.0f, 1.0f - ((currentActionBarHeight - scrollOffsetY) / ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop));
                    f = 0.0f;
                } else {
                    f = 0.0f;
                    fMax = 1.0f;
                }
                ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                if (!chatAttachAlert2.inBubbleMode) {
                    int i3 = AndroidUtilities.statusBarHeight;
                    scrollOffsetY += i3;
                    iM1124dp4 += i3;
                    measuredHeight -= i3;
                }
                if (chatAttachAlert2.currentAttachLayout.hasCustomBackground()) {
                    actionBarDrawableColor = ChatAttachAlert.this.currentAttachLayout.getCustomBackground();
                } else {
                    actionBarDrawableColor = ChatAttachAlert.this.getActionBarDrawableColor();
                }
                boolean z = (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoPreviewLayout || ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.photoPreviewLayout || (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoLayout && ChatAttachAlert.this.nextAttachLayout == null)) ? false : true;
                if (z) {
                    ((BottomSheet) ChatAttachAlert.this).shadowDrawable.setAlpha(alpha2);
                    f3 = 24.0f;
                    ((BottomSheet) ChatAttachAlert.this).shadowDrawable.setBounds(0, scrollOffsetY, getMeasuredWidth(), measuredHeight);
                    ((BottomSheet) ChatAttachAlert.this).shadowDrawable.draw(canvas);
                    if (iNeedsActionBar == 2) {
                        Theme.dialogs_onlineCirclePaint.setColor(actionBarDrawableColor);
                        Theme.dialogs_onlineCirclePaint.setAlpha(alpha2);
                        f4 = 12.0f;
                        this.rect.set(((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY + AndroidUtilities.m1124dp(24.0f));
                        canvas.save();
                        RectF rectF = this.rect;
                        float f6 = rectF.left;
                        float f7 = rectF.top;
                        canvas.clipRect(f6, f7, rectF.right, (rectF.height() / 2.0f) + f7);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(12.0f) * fMax, AndroidUtilities.m1124dp(12.0f) * fMax, Theme.dialogs_onlineCirclePaint);
                        canvas.restore();
                    }
                    if (view == ChatAttachAlert.this.contactsLayout && view != ChatAttachAlert.this.quickRepliesLayout && view != ChatAttachAlert.this.audioLayout) {
                        canvas.save();
                        canvas.clipRect(((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, (ChatAttachAlert.this.actionBar.getY() + ChatAttachAlert.this.actionBar.getMeasuredHeight()) - ChatAttachAlert.this.currentPanTranslationY, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, getMeasuredHeight());
                        zDrawChild = super.drawChild(canvas, view, j);
                        canvas.restore();
                    } else {
                        zDrawChild = super.drawChild(canvas, view, j);
                    }
                    if (z) {
                        if (fMax != 1.0f && iNeedsActionBar != 2) {
                            Theme.dialogs_onlineCirclePaint.setColor(actionBarDrawableColor);
                            Theme.dialogs_onlineCirclePaint.setAlpha(alpha2);
                            this.rect.set(((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY, getMeasuredWidth() - ((BottomSheet) ChatAttachAlert.this).backgroundPaddingLeft, ((BottomSheet) ChatAttachAlert.this).backgroundPaddingTop + scrollOffsetY + AndroidUtilities.m1124dp(f3));
                            canvas.save();
                            RectF rectF2 = this.rect;
                            float f8 = rectF2.left;
                            float f9 = rectF2.top;
                            canvas.clipRect(f8, f9, rectF2.right, (rectF2.height() / 2.0f) + f9);
                            canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(f4) * fMax, AndroidUtilities.m1124dp(f4) * fMax, Theme.dialogs_onlineCirclePaint);
                            canvas.restore();
                        }
                        FrameLayout frameLayout3 = ChatAttachAlert.this.headerView;
                        if ((frameLayout3 == null || frameLayout3.getAlpha() != 1.0f) && fMax != f) {
                            int iM1124dp6 = AndroidUtilities.m1124dp(36.0f);
                            this.rect.set((getMeasuredWidth() - iM1124dp6) / 2, iM1124dp4, (getMeasuredWidth() + iM1124dp6) / 2, iM1124dp4 + AndroidUtilities.m1124dp(4.0f));
                            if (iNeedsActionBar == 2) {
                                themedColor = 536870912;
                                alpha = fMax;
                            } else {
                                themedColor = ChatAttachAlert.this.getThemedColor(Theme.key_sheet_scrollUp);
                                FrameLayout frameLayout4 = ChatAttachAlert.this.headerView;
                                alpha = frameLayout4 == null ? 1.0f : 1.0f - frameLayout4.getAlpha();
                            }
                            int iAlpha = Color.alpha(themedColor);
                            Theme.dialogs_onlineCirclePaint.setColor(themedColor);
                            Theme.dialogs_onlineCirclePaint.setAlpha((int) (iAlpha * alpha * fMax * view.getAlpha()));
                            canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f), Theme.dialogs_onlineCirclePaint);
                        }
                    }
                    canvas.restore();
                    return zDrawChild;
                }
                f3 = 24.0f;
                f4 = 12.0f;
                if (view == ChatAttachAlert.this.contactsLayout) {
                    zDrawChild = super.drawChild(canvas, view, j);
                }
                if (z) {
                }
                canvas.restore();
                return zDrawChild;
            }
            ChatAttachAlert chatAttachAlert3 = ChatAttachAlert.this;
            ActionBar actionBar = chatAttachAlert3.actionBar;
            if (view == actionBar) {
                float alpha4 = actionBar.getAlpha();
                if (alpha4 <= 0.0f) {
                    return false;
                }
                if (alpha4 >= 1.0f) {
                    return super.drawChild(canvas, view, j);
                }
                canvas.save();
                canvas.clipRect(ChatAttachAlert.this.actionBar.getX(), getY(ChatAttachAlert.this.currentAttachLayout), ChatAttachAlert.this.actionBar.getX() + ChatAttachAlert.this.actionBar.getWidth(), ChatAttachAlert.this.actionBar.getY() + ChatAttachAlert.this.actionBar.getHeight());
                boolean zDrawChild2 = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild2;
            }
            if ((view instanceof EmojiView) && chatAttachAlert3.emojiViewChildBg != null) {
                canvas.save();
                ChatAttachAlert.this.emojiViewChildBg.setBounds(0, view.getTop(), getMeasuredWidth(), getMeasuredHeight());
                canvas.clipPath(ChatAttachAlert.this.emojiViewChildBg.getPath());
                ChatAttachAlert.this.emojiViewChildBg.draw(canvas);
                boolean zDrawChild3 = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild3;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            boolean z = ChatAttachAlert.this.inBubbleMode;
        }

        private int getCurrentTop() {
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            int i = chatAttachAlert.scrollOffsetY[0] - (((BottomSheet) chatAttachAlert).backgroundPaddingTop * 2);
            int iM1124dp = AndroidUtilities.m1124dp(13.0f);
            FrameLayout frameLayout = ChatAttachAlert.this.headerView;
            int iM1124dp2 = i - (iM1124dp + (frameLayout != null ? AndroidUtilities.m1124dp(frameLayout.getAlpha() * 26.0f) : 0));
            FrameLayout frameLayout2 = ChatAttachAlert.this.topCommentContainer;
            int alpha = (iM1124dp2 - ((int) (frameLayout2 != null ? frameLayout2.getAlpha() * ChatAttachAlert.this.topCommentContainer.getMeasuredHeight() : 0.0f))) + AndroidUtilities.m1124dp(20.0f);
            return !ChatAttachAlert.this.inBubbleMode ? alpha + AndroidUtilities.statusBarHeight : alpha;
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (Build.VERSION.SDK_INT >= 31 && ChatAttachAlert.this.scrollableViewNoiseSuppressor != null) {
                ChatAttachAlert.this.blur3_InvalidateBlur();
                if (ChatAttachAlert.this.iBlur3SourceGlassFrosted != null) {
                    ChatAttachAlert.this.iBlur3SourceGlassFrosted.setSize(((BottomSheet) ChatAttachAlert.this).containerView.getMeasuredWidth(), ((BottomSheet) ChatAttachAlert.this).containerView.getMeasuredHeight());
                    ChatAttachAlert.this.iBlur3SourceGlassFrosted.updateDisplayListIfNeeded();
                }
                if (ChatAttachAlert.this.iBlur3SourceGlass != null) {
                    ChatAttachAlert.this.iBlur3SourceGlass.setSize(((BottomSheet) ChatAttachAlert.this).containerView.getMeasuredWidth(), ((BottomSheet) ChatAttachAlert.this).containerView.getMeasuredHeight());
                    ChatAttachAlert.this.iBlur3SourceGlass.updateDisplayListIfNeeded();
                }
            }
            canvas.save();
            if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoPreviewLayout || ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.photoPreviewLayout || (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoLayout && ChatAttachAlert.this.nextAttachLayout == null)) {
                drawChildBackground(canvas, ChatAttachAlert.this.currentAttachLayout);
            }
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
        public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
            if (ChatAttachAlert.this.currentAttachLayout != ChatAttachAlert.this.photoLayout || Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || ChatAttachAlert.this.iBlur3SourceGlassFrosted == null || !BlurredBackgroundProviderImpl.checkBlurEnabled(ChatAttachAlert.this.currentAccount, this.val$resourcesProvider)) {
                canvas.drawRect(rect, paint);
                return;
            }
            Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
            int i = (resourcesProvider == null ? Theme.isCurrentThemeDark() : resourcesProvider.isDark()) ? 178 : Opcodes.ADD_INT_LIT8;
            canvas.save();
            canvas.translate(0.0f, -f);
            ChatAttachAlert.this.iBlur3SourceGlassFrosted.draw(canvas, rect.left, rect.top + f, rect.right, rect.bottom + f);
            canvas.restore();
            int alpha = paint.getAlpha();
            paint.setAlpha(i);
            canvas.drawRect(rect, paint);
            paint.setAlpha(alpha);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            float f2 = f + chatAttachAlert.currentPanTranslationY;
            if (((BottomSheet) chatAttachAlert).currentSheetAnimationType == 0) {
                this.initialTranslationY = f2;
            }
            if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType == 1) {
                if (f2 < 0.0f) {
                    ChatAttachAlert.this.currentAttachLayout.setTranslationY(f2);
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                    if (chatAttachAlert2.avatarPicker != 0 || chatAttachAlert2.storyMediaPicker) {
                        chatAttachAlert2.headerView.setTranslationY((chatAttachAlert2.baseSelectedTextViewTranslationY + f2) - ChatAttachAlert.this.currentPanTranslationY);
                    }
                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setTranslationY(0.0f);
                    f2 = 0.0f;
                } else {
                    ChatAttachAlert.this.currentAttachLayout.setTranslationY(0.0f);
                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setTranslationY((-f2) + (r0.getMeasuredHeight() * (f2 / this.initialTranslationY)));
                }
                ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
            }
            super.setTranslationY(f2 - ChatAttachAlert.this.currentPanTranslationY);
            if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType != 1) {
                ChatAttachAlert.this.currentAttachLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
            }
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.adjustPanLayoutHelper.setResizableView(this);
            this.adjustPanLayoutHelper.onAttach();
            ChatAttachAlert.this.commentTextView.setAdjustPanLayoutHelper(this.adjustPanLayoutHelper);
            ChatAttachAlert.this.topCommentTextView.setAdjustPanLayoutHelper(this.adjustPanLayoutHelper);
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.adjustPanLayoutHelper.onDetach();
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            int radius;
            WindowInsets rootWindowInsets;
            super.onSizeChanged(i, i2, i3, i4);
            int radius2 = 0;
            if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = getRootWindowInsets()) == null) {
                radius = 0;
            } else {
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(3);
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(2);
                radius = roundedCorner == null ? 0 : roundedCorner.getRadius();
                if (roundedCorner2 != null) {
                    radius2 = roundedCorner2.getRadius();
                }
            }
            if (ChatAttachAlert.this.emojiViewChildBg != null) {
                ChatAttachAlert.this.emojiViewChildBg.setRadius(AndroidUtilities.m1124dp(29.0f), AndroidUtilities.m1124dp(29.0f), radius2, radius, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i) {
        this.actionBar.getActionBarMenuOnItemClick().onItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        this.selectedMenuItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout != null) {
            attachAlertLayout.onMenuItemClick(40);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(boolean z, View view) {
        if (this.avatarPicker != 0) {
            this.delegate.openAvatarsSearch();
            lambda$new$0();
            return;
        }
        final HashMap map = new HashMap();
        final ArrayList arrayList = new ArrayList();
        PhotoPickerSearchActivity photoPickerSearchActivity = new PhotoPickerSearchActivity(map, arrayList, 0, true, (ChatActivity) this.baseFragment);
        photoPickerSearchActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.9
            private boolean sendPressed;

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void onCaptionChanged(CharSequence charSequence) {
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public /* synthetic */ void onOpenInPressed() {
                PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$onOpenInPressed(this);
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void selectedPhotosChanged() {
            }

            @Override // org.telegram.ui.PhotoPickerActivity.PhotoPickerActivityDelegate
            public void actionButtonPressed(boolean z2, boolean z3, int i, int i2) {
                if (z2 || map.isEmpty() || this.sendPressed) {
                    return;
                }
                this.sendPressed = true;
                ArrayList arrayList2 = new ArrayList();
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    Object obj = map.get(arrayList.get(i3));
                    SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
                    arrayList2.add(sendingMediaInfo);
                    MediaController.SearchImage searchImage = (MediaController.SearchImage) obj;
                    String str = searchImage.imagePath;
                    if (str != null) {
                        sendingMediaInfo.path = str;
                    } else {
                        sendingMediaInfo.searchImage = searchImage;
                    }
                    sendingMediaInfo.thumbPath = searchImage.thumbPath;
                    sendingMediaInfo.videoEditedInfo = searchImage.editedInfo;
                    CharSequence charSequence = searchImage.caption;
                    sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                    sendingMediaInfo.entities = searchImage.entities;
                    sendingMediaInfo.masks = searchImage.stickers;
                    sendingMediaInfo.ttl = searchImage.ttl;
                    TLRPC.BotInlineResult botInlineResult = searchImage.inlineResult;
                    if (botInlineResult != null && searchImage.type == 1) {
                        sendingMediaInfo.inlineResult = botInlineResult;
                        sendingMediaInfo.params = searchImage.params;
                    }
                    searchImage.date = (int) (System.currentTimeMillis() / 1000);
                }
                ((ChatActivity) ChatAttachAlert.this.baseFragment).didSelectSearchPhotos(arrayList2, z3, i);
            }
        });
        photoPickerSearchActivity.setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
        if (z) {
            this.baseFragment.showAsSheet(photoPickerSearchActivity);
        } else {
            this.baseFragment.presentFragment(photoPickerSearchActivity);
        }
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Theme.ResourcesProvider resourcesProvider, View view) {
        this.optionsItem.toggleSubMenu();
        PhotoViewer.getInstance().setParentActivity(this.baseFragment, resourcesProvider);
        PhotoViewer.getInstance().setParentAlert(this);
        PhotoViewer.getInstance().setMaxSelectedPhotos(this.maxSelectedPhotos, this.allowOrder);
        if (!this.delegate.needEnterComment()) {
            AndroidUtilities.hideKeyboard(this.baseFragment.getFragmentView().findFocus());
            AndroidUtilities.hideKeyboard(getContainer().findFocus());
        }
        File fileMakeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
        Point point = AndroidUtilities.displaySize;
        int i = point.x;
        int i2 = point.y;
        if (i > 1080 || i2 > 1080) {
            float fMin = Math.min(i, i2) / 1080.0f;
            i = (int) (i * fMin);
            i2 = (int) (i2 * fMin);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        try {
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(fileMakeCacheFile));
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
        bitmapCreateBitmap.recycle();
        ArrayList arrayList = new ArrayList();
        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, fileMakeCacheFile.getAbsolutePath(), 0, false, 0, 0, 0L);
        arrayList.add(photoEntry);
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        C405010 c405010 = new C405010(photoEntry);
        BaseFragment baseFragment = this.baseFragment;
        photoViewer.openPhotoForSelect(arrayList, 0, 11, false, c405010, baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null);
        if (this.isStickerMode) {
            PhotoViewer.getInstance().enableStickerMode(null, null, true, this.customStickerHandler);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$10 */
    class C405010 extends PhotoViewer.EmptyPhotoViewerProvider {
        final /* synthetic */ MediaController.PhotoEntry val$entry;

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean allowCaption() {
            return false;
        }

        C405010(MediaController.PhotoEntry photoEntry) {
            this.val$entry = photoEntry;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, final boolean z, final int i2, int i3, final boolean z2) {
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            chatAttachAlert.sent = true;
            if (chatAttachAlert.delegate == null) {
                return;
            }
            this.val$entry.editedInfo = videoEditedInfo;
            int i4 = chatAttachAlert.currentAccount;
            long dialogId = getDialogId();
            int additionalMessagesCount = ChatAttachAlert.this.getAdditionalMessagesCount() + 1;
            final MediaController.PhotoEntry photoEntry = this.val$entry;
            AlertsCreator.ensurePaidMessageConfirmation(i4, dialogId, additionalMessagesCount, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlert$10$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$sendButtonPressed$0(photoEntry, z, i2, z2, (Long) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendButtonPressed$0(MediaController.PhotoEntry photoEntry, boolean z, int i, boolean z2, Long l) {
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.clear();
            ChatAttachAlertPhotoLayout.selectedPhotos.clear();
            ChatAttachAlertPhotoLayout.selectedPhotosOrder.add(0);
            ChatAttachAlertPhotoLayout.selectedPhotos.put(0, photoEntry);
            ChatAttachAlert.this.delegate.didPressedButton(7, true, z, i, 0, 0L, isCaptionAbove(), z2, l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        this.optionsItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        updatePhotoPreview(this.currentAttachLayout != this.photoPreviewLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(Theme.ResourcesProvider resourcesProvider, View view, int i) {
        BaseFragment lastFragment = this.baseFragment;
        if (lastFragment == null) {
            lastFragment = LaunchActivity.getLastFragment();
        }
        if (lastFragment == null || lastFragment.getParentActivity() == null) {
            return;
        }
        if (view instanceof AttachButton) {
            Activity parentActivity = lastFragment.getParentActivity();
            if (parentActivity == null) {
                parentActivity = AndroidUtilities.findActivity(getContext());
            }
            int iIntValue = view.getTag() instanceof Integer ? ((Integer) view.getTag()).intValue() : -1;
            if (iIntValue == 1) {
                if (!this.photosEnabled && !this.videosEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                if (!this.photosEnabled && !this.videosEnabled) {
                    ChatAttachRestrictedLayout chatAttachRestrictedLayout = new ChatAttachRestrictedLayout(1, this, getContext(), resourcesProvider);
                    this.restrictedLayout = chatAttachRestrictedLayout;
                    showLayout(chatAttachRestrictedLayout);
                }
                showLayout(this.photoLayout);
            } else if (iIntValue == 3) {
                if (!this.musicEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    if (!SystemUtils.isAudioPermissionGranted()) {
                        SystemUtils.requestAudioPermission(parentActivity);
                        return;
                    }
                } else if (parentActivity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    parentActivity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 4);
                    return;
                }
                openAudioLayout(true);
            } else if (iIntValue == 4) {
                if (!this.documentsEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    if (!SystemUtils.isImagesAndVideoPermissionGranted()) {
                        SystemUtils.requestImagesAndVideoPermission(parentActivity);
                        return;
                    }
                } else if (!SystemUtils.isStoragePermissionGranted()) {
                    SystemUtils.requestStoragePermission(parentActivity);
                    return;
                }
                openDocumentsLayout(true);
            } else if (iIntValue == 5) {
                if (!this.plainTextEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                boolean z = UserConfig.getInstance(this.currentAccount).syncContacts;
                if (this.plainTextEnabled && z && getContext().checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
                    parentActivity.requestPermissions(new String[]{"android.permission.READ_CONTACTS"}, 5);
                    return;
                }
                openContactsLayout();
            } else if (iIntValue == 6) {
                if ((!this.plainTextEnabled && checkCanRemoveRestrictionsByBoosts()) || !AndroidUtilities.isMapsInstalled(this.baseFragment)) {
                    return;
                }
                if (!this.plainTextEnabled) {
                    ChatAttachRestrictedLayout chatAttachRestrictedLayout2 = new ChatAttachRestrictedLayout(6, this, getContext(), resourcesProvider);
                    this.restrictedLayout = chatAttachRestrictedLayout2;
                    showLayout(chatAttachRestrictedLayout2);
                } else {
                    if (this.locationLayout == null) {
                        AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
                        ChatAttachAlertLocationLayout chatAttachAlertLocationLayout = new ChatAttachAlertLocationLayout(this, getContext(), resourcesProvider);
                        this.locationLayout = chatAttachAlertLocationLayout;
                        attachAlertLayoutArr[5] = chatAttachAlertLocationLayout;
                        chatAttachAlertLocationLayout.setDelegate(new ChatAttachAlertLocationLayout.LocationActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda32
                            @Override // org.telegram.ui.Components.ChatAttachAlertLocationLayout.LocationActivityDelegate
                            public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i2, boolean z2, int i3, long j) {
                                this.f$0.lambda$new$8(messageMedia, i2, z2, i3, j);
                            }
                        });
                    }
                    showLayout(this.locationLayout);
                }
            } else if (iIntValue == 9) {
                if (!this.pollsEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                if (!this.pollsEnabled) {
                    ChatAttachRestrictedLayout chatAttachRestrictedLayout3 = new ChatAttachRestrictedLayout(9, this, getContext(), resourcesProvider);
                    this.restrictedLayout = chatAttachRestrictedLayout3;
                    showLayout(chatAttachRestrictedLayout3);
                } else {
                    if (this.pollLayout == null) {
                        AttachAlertLayout[] attachAlertLayoutArr2 = this.layouts;
                        ChatAttachAlertPollLayout chatAttachAlertPollLayout = new ChatAttachAlertPollLayout(this, getContext(), false, resourcesProvider);
                        this.pollLayout = chatAttachAlertPollLayout;
                        attachAlertLayoutArr2[1] = chatAttachAlertPollLayout;
                        chatAttachAlertPollLayout.setDelegate(new ChatAttachAlertPollLayout.PollCreateActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda33
                            @Override // org.telegram.ui.Components.ChatAttachAlertPollLayout.PollCreateActivityDelegate
                            public final void sendPoll(TLRPC.MessageMedia messageMedia, HashMap map, boolean z2, int i2, long j) {
                                this.f$0.lambda$new$9(messageMedia, map, z2, i2, j);
                            }
                        });
                    }
                    showLayout(this.pollLayout);
                }
            } else if (iIntValue == 11) {
                openQuickRepliesLayout();
            } else if (iIntValue == 12) {
                if (!this.todoEnabled && checkCanRemoveRestrictionsByBoosts()) {
                    return;
                }
                if (!this.todoEnabled) {
                    ChatAttachRestrictedLayout chatAttachRestrictedLayout4 = new ChatAttachRestrictedLayout(9, this, getContext(), resourcesProvider);
                    this.restrictedLayout = chatAttachRestrictedLayout4;
                    showLayout(chatAttachRestrictedLayout4);
                } else {
                    if (this.todoLayout == null) {
                        AttachAlertLayout[] attachAlertLayoutArr3 = this.layouts;
                        ChatAttachAlertPollLayout chatAttachAlertPollLayout2 = new ChatAttachAlertPollLayout(this, getContext(), true, resourcesProvider);
                        this.todoLayout = chatAttachAlertPollLayout2;
                        attachAlertLayoutArr3[6] = chatAttachAlertPollLayout2;
                        chatAttachAlertPollLayout2.setDelegate(new ChatAttachAlertPollLayout.PollCreateActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda34
                            @Override // org.telegram.ui.Components.ChatAttachAlertPollLayout.PollCreateActivityDelegate
                            public final void sendPoll(TLRPC.MessageMedia messageMedia, HashMap map, boolean z2, int i2, long j) {
                                this.f$0.lambda$new$10(messageMedia, map, z2, i2, j);
                            }
                        });
                    }
                    showLayout(this.todoLayout);
                }
            } else if (view.getTag() instanceof Integer) {
                this.delegate.didPressedButton(((Integer) view.getTag()).intValue(), true, true, 0, 0, 0L, isCaptionAbove(), false, 0L);
            }
        } else if (view instanceof AttachBotButton) {
            final AttachBotButton attachBotButton = (AttachBotButton) view;
            if (attachBotButton.attachMenuBot != null) {
                if (attachBotButton.attachMenuBot.inactive) {
                    WebAppDisclaimerAlert.show(getContext(), new Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda35
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$new$13(attachBotButton, (Boolean) obj);
                        }
                    }, null, null);
                } else {
                    showBotLayout(attachBotButton.attachMenuBot.bot_id, true);
                }
            } else {
                this.delegate.didSelectBot(attachBotButton.currentUser);
                lambda$new$0();
            }
        }
        int left = view.getLeft();
        int right = view.getRight();
        int iM1124dp = AndroidUtilities.m1124dp(70.0f);
        int i2 = left - iM1124dp;
        if (i2 < 0) {
            this.buttonsRecyclerView.smoothScrollBy(i2, 0);
            return;
        }
        int i3 = right + iM1124dp;
        if (i3 > this.buttonsRecyclerView.getMeasuredWidth()) {
            RecyclerListView recyclerListView = this.buttonsRecyclerView;
            recyclerListView.smoothScrollBy(i3 - recyclerListView.getMeasuredWidth(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        ((ChatActivity) this.baseFragment).didSelectLocation(messageMedia, i, z, i2, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(TLRPC.MessageMedia messageMedia, HashMap map, boolean z, int i, long j) {
        ((ChatActivity) this.baseFragment).sendPoll((TLRPC.TL_messageMediaPoll) messageMedia, map, z, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(TLRPC.MessageMedia messageMedia, HashMap map, boolean z, int i, long j) {
        ((ChatActivity) this.baseFragment).sendTodo((TLRPC.TL_messageMediaToDo) messageMedia, z, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(final AttachBotButton attachBotButton, Boolean bool) {
        TLRPC.TL_messages_toggleBotInAttachMenu tL_messages_toggleBotInAttachMenu = new TLRPC.TL_messages_toggleBotInAttachMenu();
        tL_messages_toggleBotInAttachMenu.bot = MessagesController.getInstance(this.currentAccount).getInputUser(attachBotButton.attachMenuBot.bot_id);
        tL_messages_toggleBotInAttachMenu.enabled = true;
        tL_messages_toggleBotInAttachMenu.write_allowed = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_toggleBotInAttachMenu, new RequestDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$12(attachBotButton, tLObject, tL_error);
            }
        }, 66);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(final AttachBotButton attachBotButton, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$11(attachBotButton);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(AttachBotButton attachBotButton) {
        TLRPC.TL_attachMenuBot tL_attachMenuBot = attachBotButton.attachMenuBot;
        attachBotButton.attachMenuBot.side_menu_disclaimer_needed = false;
        tL_attachMenuBot.inactive = false;
        showBotLayout(attachBotButton.attachMenuBot.bot_id, true);
        MediaDataController.getInstance(this.currentAccount).updateAttachMenuBotsInCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$15(View view, int i) {
        if (view instanceof AttachBotButton) {
            AttachBotButton attachBotButton = (AttachBotButton) view;
            if (!this.destroyed && attachBotButton.currentUser != null) {
                onLongClickBotButton(attachBotButton.attachMenuBot, attachBotButton.currentUser);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(View view) {
        ChatAttachAlertBotWebViewLayout chatAttachAlertBotWebViewLayout;
        long j = this.selectedId;
        if (j >= 0 || (chatAttachAlertBotWebViewLayout = (ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.get(-j)) == null) {
            return;
        }
        chatAttachAlertBotWebViewLayout.getWebViewContainer().onMainButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(View view) {
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (attachAlertLayout != chatAttachAlertPhotoLayout || chatAttachAlertPhotoLayout == null) {
            return;
        }
        chatAttachAlertPhotoLayout.checkCamera(false);
        this.photoLayout.openCamera(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$18(View view) {
        ChatAttachViewDelegate chatAttachViewDelegate = this.delegate;
        if (chatAttachViewDelegate == null) {
            return true;
        }
        chatAttachViewDelegate.didPressedButton(0, false, true, 0, 0, 0L, false, false, 0L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(View view) {
        if (this.captionAbove) {
            return;
        }
        toggleCaptionAbove();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$16 */
    class C405616 extends FrameLayout {
        C405616(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            super.setAlpha(f);
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (ChatAttachAlert.this.captionContainer.getAlpha() <= 0.0f || ChatAttachAlert.this.chatActivityEnterViewAnimateFromTop == 0.0f || ChatAttachAlert.this.chatActivityEnterViewAnimateFromTop == ChatAttachAlert.this.frameLayout2.getTop() + ChatAttachAlert.this.chatActivityEnterViewAnimateFromTop) {
                return;
            }
            if (ChatAttachAlert.this.topBackgroundAnimator != null) {
                ChatAttachAlert.this.topBackgroundAnimator.cancel();
            }
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            chatAttachAlert.captionEditTextTopOffset = chatAttachAlert.chatActivityEnterViewAnimateFromTop - (ChatAttachAlert.this.frameLayout2.getTop() + ChatAttachAlert.this.captionEditTextTopOffset);
            ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
            chatAttachAlert2.topBackgroundAnimator = ValueAnimator.ofFloat(chatAttachAlert2.captionEditTextTopOffset, 0.0f);
            ChatAttachAlert.this.topBackgroundAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$16$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onDraw$0(valueAnimator);
                }
            });
            ChatAttachAlert.this.topBackgroundAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            ChatAttachAlert.this.topBackgroundAnimator.setDuration(200L);
            ChatAttachAlert.this.topBackgroundAnimator.start();
            ChatAttachAlert.this.chatActivityEnterViewAnimateFromTop = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDraw$0(ValueAnimator valueAnimator) {
            ChatAttachAlert.this.captionEditTextTopOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ChatAttachAlert.this.captionContainer.invalidate();
            ChatAttachAlert.this.frameLayout2.invalidate();
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.clipRect(0.0f, ChatAttachAlert.this.captionEditTextTopOffset, getMeasuredWidth(), getMeasuredHeight());
            super.dispatchDraw(canvas);
            canvas.restore();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$951lLyzH1kuqRnkXoJk3xhIZ1h0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$18 */
    class C405818 extends EditTextEmoji {
        private ValueAnimator messageEditTextAnimator;
        private int messageEditTextPredrawHeigth;
        private int messageEditTextPredrawScrollY;
        private boolean shouldAnimateEditTextWithBounds;

        C405818(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout, BaseFragment baseFragment, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context, sizeNotifierFrameLayout, baseFragment, i, z, resourcesProvider);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!ChatAttachAlert.this.enterCommentEventSent) {
                if (motionEvent.getX() > ChatAttachAlert.this.commentTextView.getEditText().getLeft() && motionEvent.getX() < ChatAttachAlert.this.commentTextView.getEditText().getRight() && motionEvent.getY() > ChatAttachAlert.this.commentTextView.getEditText().getTop() && motionEvent.getY() < ChatAttachAlert.this.commentTextView.getEditText().getBottom()) {
                    ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                    chatAttachAlert.makeFocusable(chatAttachAlert.commentTextView.getEditText(), true);
                } else {
                    ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                    chatAttachAlert2.makeFocusable(chatAttachAlert2.commentTextView.getEditText(), false);
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.shouldAnimateEditTextWithBounds) {
                final EditTextCaption editText = ChatAttachAlert.this.commentTextView.getEditText();
                editText.setOffsetY(editText.getOffsetY() - ((this.messageEditTextPredrawHeigth - editText.getMeasuredHeight()) + (this.messageEditTextPredrawScrollY - editText.getScrollY())));
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(editText.getOffsetY(), 0.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$18$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$dispatchDraw$0(editText, valueAnimator);
                    }
                });
                ValueAnimator valueAnimator = this.messageEditTextAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.messageEditTextAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.setDuration(200L);
                valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                valueAnimatorOfFloat.start();
                this.shouldAnimateEditTextWithBounds = false;
            }
            super.dispatchDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0(EditTextCaption editTextCaption, ValueAnimator valueAnimator) {
            editTextCaption.setOffsetY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            ChatAttachAlert.this.updateCommentTextViewPosition();
            if (ChatAttachAlert.this.currentAttachLayout == ChatAttachAlert.this.photoLayout) {
                ChatAttachAlert.this.photoLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
            }
        }

        @Override // org.telegram.p029ui.Components.EditTextEmoji
        protected void onLineCountChanged(int i, int i2) {
            if (!TextUtils.isEmpty(getEditText().getText())) {
                this.shouldAnimateEditTextWithBounds = true;
                this.messageEditTextPredrawHeigth = getEditText().getMeasuredHeight();
                this.messageEditTextPredrawScrollY = getEditText().getScrollY();
                invalidate();
            } else {
                getEditText().animate().cancel();
                getEditText().setOffsetY(0.0f);
                this.shouldAnimateEditTextWithBounds = false;
            }
            ChatAttachAlert.this.chatActivityEnterViewAnimateFromTop = r2.frameLayout2.getTop() + ChatAttachAlert.this.captionEditTextTopOffset;
            ChatAttachAlert.this.frameLayout2.invalidate();
            ChatAttachAlert.this.updateCommentTextViewPosition();
        }

        @Override // org.telegram.p029ui.Components.EditTextEmoji
        protected void bottomPanelTranslationY(float f) {
            ChatAttachAlert.this.bottomPannelTranslation = f;
            ChatAttachAlert.this.frameLayout2.setTranslationY(f);
            ChatAttachAlert.this.frameLayout2.invalidate();
            ChatAttachAlert.this.checkUi_writeButtonContainerY();
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            chatAttachAlert.updateLayout(chatAttachAlert.currentAttachLayout, true, 0);
        }

        @Override // org.telegram.p029ui.Components.EditTextEmoji
        protected void closeParent() {
            ChatAttachAlert.super.lambda$new$0();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ChatAttachAlert.this.updateCommentTextViewPosition();
        }

        @Override // org.telegram.p029ui.Components.EditTextEmoji
        protected void extendActionMode(ActionMode actionMode, Menu menu) {
            BaseFragment baseFragment = ChatAttachAlert.this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ChatActivity.fillActionModeMenu(menu, ((ChatActivity) baseFragment).getCurrentEncryptedChat(), true, true);
            }
            super.extendActionMode(actionMode, menu);
        }

        @Override // org.telegram.p029ui.Components.EditTextEmoji
        protected void createEmojiView() {
            super.createEmojiView();
            EmojiView emojiView = getEmojiView();
            if (emojiView != null) {
                emojiView.shouldLightenBackground = false;
                emojiView.fixBottomTabContainerTranslation = false;
                emojiView.setShouldDrawBackground(false);
                emojiView.setBottomInset(AndroidUtilities.navigationBarHeight);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$21(View view) {
        if (this.captionAbove) {
            toggleCaptionAbove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$23(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, View view) {
        MessageObject messageObject = this.editingMessageObject;
        if (messageObject != null && messageObject.needResendWhenEdit() && !ChatObject.canManageMonoForum(this.currentAccount, this.editingMessageObject.getDialogId())) {
            BaseFragment baseFragment2 = this.baseFragment;
            if (baseFragment2 instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) baseFragment2;
                MessageSuggestionParams messageSuggestionParamsM1154of = chatActivity.messageSuggestionParams;
                if (messageSuggestionParamsM1154of == null) {
                    messageSuggestionParamsM1154of = MessageSuggestionParams.m1154of(this.editingMessageObject.messageOwner.suggested_post);
                }
                if (!StarsController.isEnoughAmount(this.currentAccount, messageSuggestionParamsM1154of.amount)) {
                    chatActivity.showSuggestionOfferForEditMessage(messageSuggestionParamsM1154of);
                    return;
                }
            }
        }
        if (this.currentLimit - this.codepointCount < 0) {
            AndroidUtilities.shakeView(this.captionLimitView);
            AndroidUtilities.shakeView(this.topCaptionLimitView);
            try {
                this.writeButton.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium <= this.codepointCount) {
                return;
            }
            showCaptionLimitBulletin(baseFragment);
            return;
        }
        if (this.editingMessageObject == null) {
            BaseFragment baseFragment3 = this.baseFragment;
            if ((baseFragment3 instanceof ChatActivity) && ((ChatActivity) baseFragment3).isInScheduleMode()) {
                AlertsCreator.createScheduleDatePickerDialog(getContext(), ((ChatActivity) this.baseFragment).getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda49
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i, int i2) {
                        this.f$0.lambda$new$22(z, i, i2);
                    }
                }, resourcesProvider);
                return;
            }
        }
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
            sendPressed(true, 0, 0, this.effectId, isCaptionAbove());
        } else {
            if (attachAlertLayout.sendSelectedItems(true, 0, 0, this.effectId, isCaptionAbove())) {
                return;
            }
            this.allowPassConfirmationAlert = true;
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$22(boolean z, int i, int i2) {
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
            sendPressed(z, i, 0, this.effectId, isCaptionAbove());
        } else {
            if (attachAlertLayout.sendSelectedItems(z, i, i2, 0L, isCaptionAbove())) {
                return;
            }
            this.allowPassConfirmationAlert = true;
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0471 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:293:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x030d  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ boolean lambda$new$34(Context context, final Theme.ResourcesProvider resourcesProvider, final BaseFragment baseFragment, View view) throws Throwable {
        TLRPC.User user;
        MessageObject messageObject;
        MessageObject messageObject2;
        ChatActivity chatActivity;
        ChatActivity chatActivity2;
        boolean z;
        boolean z2;
        MessageObject messageObject3;
        long j;
        final MessageObject messageObject4;
        HashMap<Object, Object> map;
        long j2;
        int i;
        int i2;
        long j3;
        Throwable th;
        MediaMetadataRetriever mediaMetadataRetriever;
        int i3;
        MediaMetadataRetriever mediaMetadataRetriever2;
        MediaMetadataRetriever mediaMetadataRetriever3;
        String str;
        final long j4;
        final Context context2;
        final Theme.ResourcesProvider resourcesProvider2;
        BaseFragment baseFragment2;
        final ChatActivity chatActivity3;
        AttachAlertLayout attachAlertLayout;
        ChatActivity chatActivity4;
        boolean z3;
        boolean z4;
        int i4;
        boolean z5;
        long dialogId = this.dialogId;
        if ((dialogId == 0 && !(this.baseFragment instanceof ChatActivity)) || this.currentLimit - this.codepointCount < 0) {
            return false;
        }
        BaseFragment baseFragment3 = this.baseFragment;
        if (baseFragment3 instanceof ChatActivity) {
            ChatActivity chatActivity5 = (ChatActivity) baseFragment3;
            chatActivity5.getCurrentChat();
            TLRPC.User currentUser = chatActivity5.getCurrentUser();
            MessageObject replyMessage = chatActivity5.getReplyMessage();
            MessageObject replyTopMessage = chatActivity5.getReplyTopMessage();
            if (chatActivity5.isInScheduleMode() || chatActivity5.getChatMode() == 5) {
                return false;
            }
            chatActivity = chatActivity5;
            user = currentUser;
            messageObject = replyMessage;
            dialogId = chatActivity5.getDialogId();
            messageObject2 = replyTopMessage;
        } else {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(dialogId));
            messageObject = null;
            messageObject2 = null;
            chatActivity = null;
        }
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss();
        }
        MessageSendPreview messageSendPreview2 = new MessageSendPreview(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlert.24
            @Override // org.telegram.p029ui.MessageSendPreview
            protected void onEffectChange(long j5) {
                ChatActivityEnterView.SendButton sendButton = ChatAttachAlert.this.writeButton;
                ChatAttachAlert.this.effectId = j5;
                sendButton.setEffect(j5);
                super.onEffectChange(j5);
            }
        };
        this.messageSendPreview = messageSendPreview2;
        messageSendPreview2.setSendButton(this.writeButton, false, new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$25(baseFragment, resourcesProvider, view2);
            }
        });
        ArrayList arrayList = new ArrayList();
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (attachAlertLayout2 == chatAttachAlertPhotoLayout || attachAlertLayout2 == this.photoPreviewLayout) {
            chatActivity2 = chatActivity;
            HashMap<Object, Object> selectedPhotos = chatAttachAlertPhotoLayout.getSelectedPhotos();
            ArrayList<Object> selectedPhotosOrder = this.photoLayout.getSelectedPhotosOrder();
            if (selectedPhotos.isEmpty()) {
                z = false;
                z2 = false;
                messageObject3 = null;
            } else {
                int iCeil = (int) Math.ceil(selectedPhotos.size() / 10.0f);
                MessageObject messageObject5 = null;
                int i5 = 0;
                int i6 = 0;
                z = false;
                z2 = false;
                while (i5 < iCeil) {
                    int i7 = i5 * 10;
                    MessageObject messageObject6 = messageObject5;
                    MessageObject messageObject7 = messageObject2;
                    int iMin = Math.min(10, selectedPhotos.size() - i7);
                    long j5 = dialogId;
                    long jNextLong = Utilities.random.nextLong();
                    int i8 = i6;
                    int i9 = 0;
                    while (i9 < iMin) {
                        int i10 = i9;
                        int i11 = i7 + i10;
                        int i12 = iMin;
                        if (i11 >= selectedPhotosOrder.size()) {
                            map = selectedPhotos;
                            j3 = j5;
                            j2 = jNextLong;
                        } else {
                            MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) selectedPhotos.get(selectedPhotosOrder.get(i11));
                            TLRPC.TL_message tL_message = new TLRPC.TL_message();
                            int i13 = i8 + 1;
                            tL_message.f1686id = i8;
                            map = selectedPhotos;
                            tL_message.out = true;
                            tL_message.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
                            long j6 = j5;
                            tL_message.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(j6);
                            boolean z6 = photoEntry.isVideo;
                            if (!z6 && (str = photoEntry.imagePath) != null) {
                                tL_message.attachPath = str;
                            } else {
                                String str2 = photoEntry.path;
                                if (str2 != null) {
                                    tL_message.attachPath = str2;
                                }
                            }
                            if (i12 > 0) {
                                tL_message.grouped_id = jNextLong;
                            }
                            j2 = jNextLong;
                            int i14 = photoEntry.width;
                            int i15 = photoEntry.height;
                            int i16 = photoEntry.orientation;
                            if (z6) {
                                i = i14;
                                if (photoEntry.videoOrientation == -1) {
                                    try {
                                        mediaMetadataRetriever3 = new MediaMetadataRetriever();
                                    } catch (Exception e) {
                                        e = e;
                                        i3 = 0;
                                        mediaMetadataRetriever2 = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        mediaMetadataRetriever = null;
                                    }
                                    try {
                                        mediaMetadataRetriever3.setDataSource(photoEntry.path);
                                        photoEntry.videoOrientation = Integer.parseInt(mediaMetadataRetriever3.extractMetadata(24));
                                        try {
                                            mediaMetadataRetriever3.release();
                                        } catch (IOException e2) {
                                            FileLog.m1136e(e2);
                                        }
                                    } catch (Exception e3) {
                                        e = e3;
                                        mediaMetadataRetriever2 = mediaMetadataRetriever3;
                                        i3 = 0;
                                        try {
                                            photoEntry.videoOrientation = i3;
                                            FileLog.m1136e(e);
                                            if (mediaMetadataRetriever2 != null) {
                                                mediaMetadataRetriever2.release();
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            mediaMetadataRetriever = mediaMetadataRetriever2;
                                            if (mediaMetadataRetriever == null) {
                                                try {
                                                    mediaMetadataRetriever.release();
                                                    throw th;
                                                } catch (IOException e4) {
                                                    FileLog.m1136e(e4);
                                                    throw th;
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        mediaMetadataRetriever = mediaMetadataRetriever3;
                                        th = th4;
                                        if (mediaMetadataRetriever == null) {
                                        }
                                    }
                                }
                                i16 = photoEntry.videoOrientation;
                            } else {
                                i = i14;
                            }
                            if ((i16 / 90) % 2 != 0) {
                                i2 = i15;
                                i15 = i;
                            } else {
                                i2 = i;
                            }
                            if (photoEntry.isVideo) {
                                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                                tL_message.media = tL_messageMediaDocument;
                                j3 = j6;
                                tL_messageMediaDocument.document = new TLRPC.TL_document();
                                tL_message.media.document.mime_type = MimeTypeMap.getSingleton().getExtensionFromMimeType(tL_message.attachPath);
                                TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                                tL_documentAttributeVideo.f1671w = i2;
                                tL_documentAttributeVideo.f1670h = i15;
                                tL_documentAttributeVideo.duration = photoEntry.duration;
                                tL_message.media.document.attributes.add(tL_documentAttributeVideo);
                            } else {
                                j3 = j6;
                                TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
                                tL_message.media = tL_messageMediaPhoto;
                                tL_messageMediaPhoto.photo = new TLRPC.TL_photo();
                                TLRPC.TL_photoSize tL_photoSize = new TLRPC.TL_photoSize();
                                tL_photoSize.f1694w = i2;
                                tL_photoSize.f1693h = i15;
                                tL_photoSize.location = new TLRPC.TL_fileLocationToBeDeprecated();
                                tL_message.media.photo.sizes.add(tL_photoSize);
                            }
                            tL_message.media.spoiler = photoEntry.hasSpoiler;
                            CharSequence charSequence = photoEntry.caption;
                            String string = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
                            tL_message.message = string;
                            if (TextUtils.isEmpty(string) && i5 == 0 && i10 == 0) {
                                CharSequence[] charSequenceArr = {getCommentView().getText()};
                                MessageObject.addLinks(true, charSequenceArr[0]);
                                tL_message.entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true);
                                tL_message.message = charSequenceArr[0].toString();
                            }
                            if (i5 == 0 && messageObject != null && !messageObject.isTopicMainMessage) {
                                TLRPC.TL_messageReplyHeader tL_messageReplyHeader = new TLRPC.TL_messageReplyHeader();
                                if (messageObject7 != null) {
                                    tL_messageReplyHeader.flags |= 2;
                                    tL_messageReplyHeader.reply_to_top_id = messageObject7.getId();
                                }
                                tL_messageReplyHeader.flags |= 16;
                                tL_messageReplyHeader.reply_to_msg_id = messageObject.getId();
                                tL_message.reply_to = tL_messageReplyHeader;
                            }
                            MessageObject messageObject8 = new MessageObject(this.currentAccount, tL_message, true, false);
                            if (i5 == 0 && messageObject != null && !messageObject.isTopicMainMessage) {
                                messageObject8.replyMessageObject = messageObject;
                            }
                            messageObject8.sendPreviewEntry = photoEntry;
                            messageObject8.sendPreview = true;
                            messageObject8.notime = true;
                            messageObject8.isOutOwnerCached = Boolean.TRUE;
                            arrayList.add(messageObject8);
                            if (messageObject6 == null && !TextUtils.isEmpty(tL_message.message)) {
                                messageObject6 = messageObject8;
                            }
                            i8 = i13;
                            z = true;
                            z2 = true;
                        }
                        i9 = i10 + 1;
                        jNextLong = j2;
                        iMin = i12;
                        selectedPhotos = map;
                        j5 = j3;
                    }
                    i5++;
                    i6 = i8;
                    messageObject2 = messageObject7;
                    messageObject5 = messageObject6;
                    dialogId = j5;
                }
                messageObject3 = messageObject5;
            }
            j = dialogId;
            messageObject4 = messageObject3;
        } else {
            if (attachAlertLayout2 == this.contactsLayout) {
                if (TextUtils.isEmpty(getCommentView().getText())) {
                    i4 = 0;
                    z5 = false;
                } else {
                    TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
                    tL_message2.f1686id = 0;
                    tL_message2.out = true;
                    tL_message2.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
                    tL_message2.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(dialogId);
                    CharSequence[] charSequenceArr2 = {getCommentView().getText()};
                    MessageObject.addLinks(true, charSequenceArr2[0]);
                    tL_message2.entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr2, true);
                    tL_message2.message = charSequenceArr2[0].toString();
                    MessageObject messageObject9 = new MessageObject(this.currentAccount, tL_message2, true, false);
                    messageObject9.sendPreview = true;
                    messageObject9.notime = true;
                    messageObject9.isOutOwnerCached = Boolean.TRUE;
                    arrayList.add(messageObject9);
                    i4 = 1;
                    z5 = true;
                }
                ArrayList<TLRPC.User> selected = this.contactsLayout.getSelected();
                int i17 = 0;
                while (i17 < selected.size()) {
                    TLRPC.User user2 = selected.get(i17);
                    TLRPC.TL_message tL_message3 = new TLRPC.TL_message();
                    int i18 = i4 + 1;
                    tL_message3.f1686id = i4;
                    tL_message3.out = true;
                    ArrayList<TLRPC.User> arrayList2 = selected;
                    int i19 = i17;
                    tL_message3.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
                    tL_message3.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(dialogId);
                    TLRPC.TL_messageMediaContact tL_messageMediaContact = new TLRPC.TL_messageMediaContact();
                    tL_message3.media = tL_messageMediaContact;
                    tL_messageMediaContact.phone_number = user2.phone;
                    tL_messageMediaContact.first_name = user2.first_name;
                    tL_messageMediaContact.last_name = user2.last_name;
                    if (!user2.restriction_reason.isEmpty() && ((TLRPC.RestrictionReason) user2.restriction_reason.get(0)).text.startsWith("BEGIN:VCARD")) {
                        tL_message3.media.vcard = ((TLRPC.RestrictionReason) user2.restriction_reason.get(0)).text;
                    } else {
                        tL_message3.media.vcard = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    tL_message3.media.user_id = user2.f1825id;
                    MessageObject messageObject10 = new MessageObject(this.currentAccount, tL_message3, true, false);
                    messageObject10.sendPreview = true;
                    messageObject10.notime = true;
                    messageObject10.isOutOwnerCached = Boolean.TRUE;
                    arrayList.add(messageObject10);
                    i17 = i19 + 1;
                    i4 = i18;
                    selected = arrayList2;
                    z5 = true;
                }
                j = dialogId;
                z2 = z5;
                chatActivity2 = chatActivity;
                messageObject4 = null;
            } else if (attachAlertLayout2 == this.documentLayout) {
                messageObject4 = null;
                boolean z7 = false;
                int i20 = 0;
                int i21 = 0;
                while (i20 < this.documentLayout.selectedFilesOrder.size()) {
                    String str3 = (String) this.documentLayout.selectedFilesOrder.get(i20);
                    if (str3 != null) {
                        int iLastIndexOf = str3.lastIndexOf(File.separator);
                        String strSubstring = iLastIndexOf < 0 ? str3 : str3.substring(iLastIndexOf + 1);
                        if (TextUtils.isEmpty(strSubstring)) {
                            chatActivity4 = chatActivity;
                        } else {
                            TLRPC.TL_message tL_message4 = new TLRPC.TL_message();
                            int i22 = i21 + 1;
                            tL_message4.f1686id = i21;
                            tL_message4.out = true;
                            MessageObject messageObject11 = messageObject4;
                            chatActivity4 = chatActivity;
                            tL_message4.from_id = MessagesController.getInstance(this.currentAccount).getPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
                            tL_message4.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(dialogId);
                            TLRPC.TL_messageMediaDocument tL_messageMediaDocument2 = new TLRPC.TL_messageMediaDocument();
                            tL_message4.media = tL_messageMediaDocument2;
                            tL_message4.attachPath = str3;
                            tL_messageMediaDocument2.document = new TLRPC.TL_document();
                            TLRPC.Document document = tL_message4.media.document;
                            document.file_name = strSubstring;
                            document.size = new File(str3).length();
                            if (TextUtils.isEmpty(tL_message4.message) && i20 == 0) {
                                z4 = true;
                                z3 = false;
                                CharSequence[] charSequenceArr3 = {getCommentView().getText()};
                                tL_message4.entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr3, true);
                                tL_message4.message = charSequenceArr3[0].toString();
                            } else {
                                z3 = false;
                                z4 = true;
                            }
                            messageObject4 = new MessageObject(this.currentAccount, tL_message4, z4, z3);
                            messageObject4.attachPathExists = z4;
                            messageObject4.sendPreview = z4;
                            messageObject4.notime = z4;
                            messageObject4.isOutOwnerCached = Boolean.TRUE;
                            arrayList.add(messageObject4);
                            if (i20 != 0 || messageObject11 != null || TextUtils.isEmpty(tL_message4.message)) {
                                messageObject4 = messageObject11;
                            }
                            i21 = i22;
                            z7 = true;
                        }
                    }
                    i20++;
                    chatActivity = chatActivity4;
                }
                chatActivity2 = chatActivity;
                j = dialogId;
                z2 = z7;
            } else {
                chatActivity2 = chatActivity;
                ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = this.audioLayout;
                if (attachAlertLayout2 == chatAttachAlertAudioLayout) {
                    arrayList.addAll(chatAttachAlertAudioLayout.getSelected());
                    if (!arrayList.isEmpty()) {
                        MessageObject messageObject12 = (MessageObject) arrayList.get(0);
                        CharSequence[] charSequenceArr4 = {getCommentView().getText()};
                        MessageObject.addLinks(true, charSequenceArr4[0]);
                        messageObject12.messageOwner.entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr4, true);
                        messageObject12.messageOwner.message = charSequenceArr4[0].toString();
                        if (TextUtils.isEmpty(messageObject12.messageOwner.message)) {
                            messageObject12 = null;
                        } else {
                            messageObject12.generateCaption();
                        }
                        if (arrayList.size() > 1) {
                            for (int i23 = 0; i23 < Math.ceil(arrayList.size() / 10.0f); i23++) {
                                int i24 = i23 * 10;
                                int iMin2 = Math.min(10, arrayList.size() - i24);
                                long jNextLong2 = Utilities.random.nextLong();
                                int i25 = 0;
                                while (i25 < iMin2) {
                                    int i26 = i24 + i25;
                                    MessageObject messageObject13 = messageObject12;
                                    if (i26 < arrayList.size()) {
                                        ((MessageObject) arrayList.get(i26)).messageOwner.grouped_id = jNextLong2;
                                    }
                                    i25++;
                                    messageObject12 = messageObject13;
                                }
                            }
                        }
                        j = dialogId;
                        messageObject4 = messageObject12;
                        z = false;
                        z2 = true;
                    }
                } else {
                    j = dialogId;
                    messageObject4 = null;
                    z = false;
                    z2 = false;
                }
            }
            z = false;
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, resourcesProvider, this.writeButton);
        if (messageObject4 == null || !((attachAlertLayout = this.currentAttachLayout) == this.photoLayout || attachAlertLayout == this.photoPreviewLayout)) {
            j4 = j;
        } else {
            j4 = j;
            final MessagePreviewView.ToggleButton toggleButton = new MessagePreviewView.ToggleButton(context, C2888R.raw.position_below, LocaleController.getString(C2888R.string.CaptionAbove), C2888R.raw.position_above, LocaleController.getString(C2888R.string.CaptionBelow), resourcesProvider);
            TLRPC.Message message = messageObject4.messageOwner;
            boolean z8 = this.captionAbove;
            message.invert_media = z8;
            toggleButton.setState(!z8, false);
            toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda44
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$26(messageObject4, toggleButton, view2);
                }
            });
            itemOptionsMakeOptions.addView(toggleButton);
            if (this.editingMessageObject == null) {
                itemOptionsMakeOptions.addGap();
            }
        }
        if (TextUtils.isEmpty(getCommentTextView().getText())) {
            context2 = context;
            resourcesProvider2 = resourcesProvider;
            baseFragment2 = baseFragment;
        } else {
            resourcesProvider2 = resourcesProvider;
            baseFragment2 = baseFragment;
            context2 = context;
            itemOptionsMakeOptions.addView(new TranslateBeforeSendWrapper(context, true, false, resourcesProvider2) { // from class: org.telegram.ui.Components.ChatAttachAlert.25
                @Override // com.exteragram.messenger.components.TranslateBeforeSendWrapper
                protected void onClick() {
                    if (ChatAttachAlert.this.messageSendPreview != null) {
                        ChatAttachAlert.this.messageSendPreview.dismiss(false);
                    }
                    final AlertDialog alertDialog = new AlertDialog(getContext(), 3, this.resourcesProvider);
                    alertDialog.showDelayed(150L);
                    CharSequence[] charSequenceArr5 = {ChatAttachAlert.this.getCommentTextView().getText()};
                    TranslatorUtils.translate(charSequenceArr5[0], TranslatorUtils.getResolvedSendTargetLanguageCode(), MediaDataController.getInstance(ChatAttachAlert.this.currentAccount).getEntities(charSequenceArr5, true), new TranslatorUtils.TranslateCallback() { // from class: org.telegram.ui.Components.ChatAttachAlert.25.1
                        @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                        public /* synthetic */ void onReqId(int i27) {
                            TranslatorUtils.TranslateCallback.CC.$default$onReqId(this, i27);
                        }

                        @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                        public /* synthetic */ void onSuccess(String str4) {
                            TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, str4);
                        }

                        @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                        public /* synthetic */ void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error) {
                            TranslatorUtils.TranslateCallback.CC.$default$onSuccess(this, tLObject, tL_error);
                        }

                        @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                        public void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities) {
                            try {
                                alertDialog.dismiss();
                            } catch (Exception unused) {
                            }
                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(tL_textWithEntities.text);
                            MessageObject.addEntitiesToText(spannableStringBuilderValueOf, tL_textWithEntities.entities, true, true, false, true);
                            ChatAttachAlert.this.getCommentTextView().setText(spannableStringBuilderValueOf);
                            ChatAttachAlert.this.applyCaption();
                            ChatAttachAlert.this.getCommentTextView().setSelection(spannableStringBuilderValueOf.length());
                            if (ChatAttachAlert.this.messageSendPreview != null) {
                                ChatAttachAlert.this.messageSendPreview.dismiss(false);
                            }
                        }

                        @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                        public void onFailed() {
                            try {
                                alertDialog.dismiss();
                            } catch (Exception unused) {
                            }
                            BaseFragment baseFragment4 = baseFragment;
                            if ((baseFragment4 instanceof ChatActivity) && ChatObject.isChannelAndNotMegaGroup(((ChatActivity) baseFragment4).getCurrentChat())) {
                                C406625 c406625 = C406625.this;
                                BulletinFactory.m1245of(ChatAttachAlert.this.sizeNotifierFrameLayout, ((ActionBarMenuSubItem) c406625).resourcesProvider).createErrorBulletin(LocaleController.getString(C2888R.string.TranslationFailedAlert2)).show();
                            }
                        }
                    });
                }
            }, LayoutHelper.createLinear(-1, 48));
        }
        boolean zIsUserSelf = UserObject.isUserSelf(user);
        if (this.editingMessageObject == null && ((chatActivity2 == null || !ChatObject.isMonoForum(chatActivity2.getCurrentChat())) && ((chatActivity2 != null && chatActivity2.canScheduleMessage()) || this.currentAttachLayout.canScheduleMessages()))) {
            itemOptionsMakeOptions.add(C2888R.drawable.msg_calendar2, LocaleController.getString(zIsUserSelf ? C2888R.string.SetReminder : C2888R.string.ScheduleMessage), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$28(j4, resourcesProvider2);
                }
            });
        }
        AttachAlertLayout attachAlertLayout3 = this.currentAttachLayout;
        if ((attachAlertLayout3 == this.photoLayout || attachAlertLayout3 == this.photoPreviewLayout) && attachAlertLayout3.getSelectedItemsCount() == 1 && chatActivity2 != null && ChatObject.isMonoForum(chatActivity2.getCurrentChat())) {
            final long j7 = j4;
            chatActivity3 = chatActivity2;
            itemOptionsMakeOptions.add(C2888R.drawable.input_suggest_paid_24, LocaleController.getString(C2888R.string.PostSuggestionsSendWithOffer), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$30(j7, chatActivity3, resourcesProvider2);
                }
            });
        } else {
            chatActivity3 = chatActivity2;
        }
        if (this.editingMessageObject == null && !zIsUserSelf) {
            itemOptionsMakeOptions.add(C2888R.drawable.input_notify_off, LocaleController.getString(C2888R.string.SendWithoutSound), new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$31();
                }
            });
        }
        if (this.editingMessageObject == null && z && chatActivity3 != null && ChatObject.isChannelAndNotMegaGroup(chatActivity3.getCurrentChat()) && chatActivity3.getCurrentChatInfo() != null && chatActivity3.getCurrentChatInfo().paid_media_allowed) {
            final ActionBarMenuSubItem last = itemOptionsMakeOptions.add(C2888R.drawable.menu_feature_paid, LocaleController.getString(C2888R.string.PaidMediaButton), (Runnable) null).getLast();
            last.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda48
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$new$33(context2, last, resourcesProvider2, view2);
                }
            });
            long starsPrice = this.photoLayout.getStarsPrice();
            if (starsPrice > 0) {
                last.setText(LocaleController.getString(C2888R.string.PaidMediaPriceButton));
                last.setSubtext(LocaleController.formatPluralString("Stars", (int) starsPrice, new Object[0]));
            } else {
                last.setText(LocaleController.getString(C2888R.string.PaidMediaButton));
                last.setSubtext(null);
            }
            this.messageSendPreview.setStars(starsPrice);
        }
        itemOptionsMakeOptions.setupSelectors();
        this.messageSendPreview.setItemOptions(itemOptionsMakeOptions);
        this.messageSendPreview.setMessageObjects(arrayList);
        if (this.editingMessageObject == null && j4 >= 0 && z2) {
            this.messageSendPreview.allowEffectSelector(baseFragment2);
            this.messageSendPreview.setEffectId(this.effectId);
        }
        this.messageSendPreview.show();
        try {
            view.performHapticFeedback(3, 2);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$25(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, View view) {
        ChatAttachAlert chatAttachAlert;
        boolean zSendPressed;
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        final long selectedEffect = messageSendPreview != null ? messageSendPreview.getSelectedEffect() : 0L;
        ChatActivityEnterView.SendButton sendButton = this.writeButton;
        this.effectId = selectedEffect;
        sendButton.setEffect(selectedEffect);
        forceKeyboardOnDismiss();
        if (this.currentLimit - this.codepointCount < 0) {
            AndroidUtilities.shakeView(this.captionLimitView);
            AndroidUtilities.shakeView(this.topCaptionLimitView);
            try {
                this.writeButton.performHapticFeedback(3, 2);
            } catch (Exception unused) {
            }
            if (!MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() && MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium > this.codepointCount) {
                showCaptionLimitBulletin(baseFragment);
            }
            MessageSendPreview messageSendPreview2 = this.messageSendPreview;
            if (messageSendPreview2 != null) {
                messageSendPreview2.dismiss(false);
                this.messageSendPreview = null;
                return;
            }
            return;
        }
        if (this.editingMessageObject == null) {
            BaseFragment baseFragment2 = this.baseFragment;
            if ((baseFragment2 instanceof ChatActivity) && ((ChatActivity) baseFragment2).isInScheduleMode()) {
                AlertsCreator.createScheduleDatePickerDialog(getContext(), ((ChatActivity) this.baseFragment).getDialogId(), new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda56
                    @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
                    public final void didSelectDate(boolean z, int i, int i2) {
                        this.f$0.lambda$new$24(selectedEffect, z, i, i2);
                    }
                }, resourcesProvider);
            } else {
                AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
                if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
                    chatAttachAlert = this;
                    zSendPressed = chatAttachAlert.sendPressed(true, 0, 0, selectedEffect, isCaptionAbove());
                } else {
                    if (!attachAlertLayout.sendSelectedItems(true, 0, 0, selectedEffect, isCaptionAbove())) {
                        this.allowPassConfirmationAlert = true;
                        lambda$new$0();
                    }
                    chatAttachAlert = this;
                    zSendPressed = false;
                }
                MessageSendPreview messageSendPreview3 = chatAttachAlert.messageSendPreview;
                if (messageSendPreview3 != null) {
                    messageSendPreview3.dismiss(!zSendPressed);
                    chatAttachAlert.messageSendPreview = null;
                }
            }
        }
        setCaptionAbove(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$24(long j, boolean z, int i, int i2) {
        ChatAttachAlert chatAttachAlert;
        boolean zSendPressed;
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
            chatAttachAlert = this;
            zSendPressed = chatAttachAlert.sendPressed(z, i, i2, j, isCaptionAbove());
        } else {
            if (!attachAlertLayout.sendSelectedItems(z, i, i2, j, isCaptionAbove())) {
                this.allowPassConfirmationAlert = true;
                lambda$new$0();
            }
            zSendPressed = false;
            chatAttachAlert = this;
        }
        MessageSendPreview messageSendPreview = chatAttachAlert.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(!zSendPressed);
            chatAttachAlert.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$26(MessageObject messageObject, MessagePreviewView.ToggleButton toggleButton, View view) {
        MessagePreviewView.ToggleButton toggleButton2;
        setCaptionAbove(!this.captionAbove);
        TLRPC.Message message = messageObject.messageOwner;
        boolean z = this.captionAbove;
        message.invert_media = z;
        toggleButton.setState(!z, true);
        this.messageSendPreview.changeMessage(messageObject);
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout != null && (toggleButton2 = chatAttachAlertPhotoLayout.captionItem) != null) {
            toggleButton2.setState(!this.captionAbove, true);
        }
        this.messageSendPreview.scrollTo(!this.captionAbove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$28(long j, Theme.ResourcesProvider resourcesProvider) {
        AlertsCreator.createScheduleDatePickerDialog(getContext(), j, new AlertsCreator.ScheduleDatePickerDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda50
            @Override // org.telegram.ui.Components.AlertsCreator.ScheduleDatePickerDelegate
            public final void didSelectDate(boolean z, int i, int i2) {
                this.f$0.lambda$new$27(z, i, i2);
            }
        }, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$27(boolean z, int i, int i2) {
        ChatAttachAlert chatAttachAlert;
        boolean zSendPressed;
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        long selectedEffect = messageSendPreview != null ? messageSendPreview.getSelectedEffect() : 0L;
        ChatActivityEnterView.SendButton sendButton = this.writeButton;
        this.effectId = selectedEffect;
        sendButton.setEffect(selectedEffect);
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
            chatAttachAlert = this;
            zSendPressed = chatAttachAlert.sendPressed(z, i, i2, selectedEffect, isCaptionAbove());
        } else {
            if (!attachAlertLayout.sendSelectedItems(z, i, i2, selectedEffect, isCaptionAbove())) {
                lambda$new$0();
            }
            zSendPressed = false;
            chatAttachAlert = this;
        }
        MessageSendPreview messageSendPreview2 = chatAttachAlert.messageSendPreview;
        if (messageSendPreview2 != null) {
            messageSendPreview2.dismiss(!zSendPressed);
            chatAttachAlert.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$30(long j, final ChatActivity chatActivity, Theme.ResourcesProvider resourcesProvider) {
        Context context = getContext();
        int i = this.currentAccount;
        MessageSuggestionParams messageSuggestionParamsEmpty = chatActivity.messageSuggestionParams;
        if (messageSuggestionParamsEmpty == null) {
            messageSuggestionParamsEmpty = MessageSuggestionParams.empty();
        }
        new MessageSuggestionOfferSheet(context, i, j, messageSuggestionParamsEmpty, chatActivity, resourcesProvider, 0, new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda58
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$29(chatActivity, (MessageSuggestionParams) obj);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$29(ChatActivity chatActivity, MessageSuggestionParams messageSuggestionParams) {
        chatActivity.messageSuggestionParams = messageSuggestionParams;
        boolean zSendPressed = sendPressed(true, 0, 0, this.effectId, isCaptionAbove());
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        if (messageSendPreview != null) {
            messageSendPreview.dismiss(!zSendPressed);
            this.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$31() {
        ChatAttachAlert chatAttachAlert;
        boolean zSendPressed;
        MessageSendPreview messageSendPreview = this.messageSendPreview;
        long selectedEffect = messageSendPreview != null ? messageSendPreview.getSelectedEffect() : 0L;
        ChatActivityEnterView.SendButton sendButton = this.writeButton;
        this.effectId = selectedEffect;
        sendButton.setEffect(selectedEffect);
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        if (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) {
            chatAttachAlert = this;
            zSendPressed = chatAttachAlert.sendPressed(false, 0, 0, selectedEffect, isCaptionAbove());
        } else {
            if (!attachAlertLayout.sendSelectedItems(false, 0, 0, selectedEffect, isCaptionAbove())) {
                lambda$new$0();
            }
            zSendPressed = false;
            chatAttachAlert = this;
        }
        MessageSendPreview messageSendPreview2 = chatAttachAlert.messageSendPreview;
        if (messageSendPreview2 != null) {
            messageSendPreview2.dismiss(!zSendPressed);
            chatAttachAlert.messageSendPreview = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$33(Context context, final ActionBarMenuSubItem actionBarMenuSubItem, Theme.ResourcesProvider resourcesProvider, View view) {
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout == null) {
            return;
        }
        StarsIntroActivity.showMediaPriceSheet(context, chatAttachAlertPhotoLayout.getStarsPrice(), true, new Utilities.Callback2() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda52
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$32(actionBarMenuSubItem, (Long) obj, (Runnable) obj2);
            }
        }, resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$32(ActionBarMenuSubItem actionBarMenuSubItem, Long l, Runnable runnable) {
        runnable.run();
        this.photoLayout.setStarsPrice(l.longValue());
        if (l.longValue() > 0) {
            actionBarMenuSubItem.setText(LocaleController.getString(C2888R.string.PaidMediaPriceButton));
            actionBarMenuSubItem.setSubtext(LocaleController.formatPluralString("Stars", (int) l.longValue(), new Object[0]));
            this.messageSendPreview.setStars(l.longValue());
        } else {
            actionBarMenuSubItem.setText(LocaleController.getString(C2888R.string.PaidMediaButton));
            actionBarMenuSubItem.setSubtext(null);
            this.messageSendPreview.setStars(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getEmojiPadding() {
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        ChatAttachAlertPollLayout chatAttachAlertPollLayout = this.pollLayout;
        if (attachAlertLayout == chatAttachAlertPollLayout && chatAttachAlertPollLayout.emojiView != null) {
            return chatAttachAlertPollLayout.getEmojiPadding();
        }
        ChatAttachAlertPollLayout chatAttachAlertPollLayout2 = this.todoLayout;
        if (attachAlertLayout == chatAttachAlertPollLayout2 && chatAttachAlertPollLayout2.emojiView != null) {
            return chatAttachAlertPollLayout2.getEmojiPadding();
        }
        if (this.captionAbove) {
            return this.topCommentTextView.getEmojiPadding();
        }
        return this.commentTextView.getEmojiPadding();
    }

    public boolean hasCaption() {
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout == null) {
            return false;
        }
        HashMap<Object, Object> selectedPhotos = chatAttachAlertPhotoLayout.getSelectedPhotos();
        ArrayList<Object> selectedPhotosOrder = this.photoLayout.getSelectedPhotosOrder();
        if (selectedPhotos.isEmpty()) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < Math.ceil(selectedPhotos.size() / 10.0f); i++) {
            int i2 = i * 10;
            int iMin = Math.min(10, selectedPhotos.size() - i2);
            Utilities.random.nextLong();
            for (int i3 = 0; i3 < iMin; i3++) {
                int i4 = i2 + i3;
                if (i4 < selectedPhotosOrder.size()) {
                    CharSequence charSequence = ((MediaController.PhotoEntry) selectedPhotos.get(selectedPhotosOrder.get(i4))).caption;
                    String string = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
                    if (getCommentView() != null && TextUtils.isEmpty(string) && i3 == 0) {
                        string = getCommentView().getText().toString();
                    }
                    if (TextUtils.isEmpty(string)) {
                        continue;
                    } else {
                        if (z) {
                            return false;
                        }
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_writeButtonContainerY() {
        FrameLayout frameLayout = this.topCommentContainer;
        if (frameLayout == null || frameLayout.getVisibility() != 0 || this.topCommentContainer.getAlpha() == 0.0f) {
            this.writeButtonContainer.setTranslationY(this.bottomPannelTranslation);
            this.writeButton.setAlpha(1.0f);
            return;
        }
        float floatValue = this.animatorCaptionAbove.getFloatValue();
        float fAbs = Math.abs(AndroidUtilities.lerp(-1.0f, 1.0f, floatValue));
        this.writeButton.setAlpha(fAbs * fAbs * fAbs * fAbs);
        this.writeButtonContainer.setTranslationY(AndroidUtilities.lerp(this.bottomPannelTranslation, ((this.topCommentContainer.getTop() + this.topCommentContainer.getTranslationY()) - this.writeButtonContainer.getTop()) + AndroidUtilities.m1124dp(8.0f), CubicBezierInterpolator.EASE_BOTH.getInterpolation(floatValue)));
    }

    private void checkUi_bottomFade() {
        float floatValue = this.animatorCaptionVisible.getFloatValue();
        this.bottomFadeView.setTranslationY(AndroidUtilities.m1124dp(48.0f) * Math.min(Math.min(1.0f, 1.0f - ((1.0f - this.animatorActionBarVisible.getFloatValue()) * (1.0f - floatValue))), 1.0f - ((1.0f - this.animatorCaptionAbove.getFloatValue()) * floatValue)));
    }

    public boolean isCaptionAbove() {
        if (!this.captionAbove) {
            return false;
        }
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        return attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    protected void onStart() {
        super.onStart();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).addOverlayPasscodeView(this.passcodeView);
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        Context context = getContext();
        if ((context instanceof ContextWrapper) && !(context instanceof LaunchActivity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof LaunchActivity) {
            ((LaunchActivity) context).removeOverlayPasscodeView(this.passcodeView);
        }
    }

    public void updateCommentTextViewPosition() {
        float y;
        this.commentTextView.getLocationOnScreen(this.commentTextViewLocation);
        if (this.mentionContainer != null) {
            AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
            if ((attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout) && this.captionAbove) {
                y = (this.topCommentContainer.getY() - this.mentionContainer.getTop()) + (this.topCommentContainer.getMeasuredHeight() * this.topCommentContainer.getAlpha());
            } else {
                y = -this.commentTextView.getHeight();
            }
            if (Math.abs(this.mentionContainer.getTranslationY() - y) > 0.5f) {
                this.mentionContainer.setTranslationY(y);
                this.mentionContainer.invalidate();
                ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
                if (chatAttachAlertPhotoLayout != null) {
                    chatAttachAlertPhotoLayout.checkCameraViewPosition();
                }
            }
        }
        checkUi_writeButtonContainerY();
    }

    public int getCommentTextViewTop() {
        return this.commentTextViewLocation[1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCaptionLimitBulletin(final BaseFragment baseFragment) {
        if ((baseFragment instanceof ChatActivity) && ChatObject.isChannelAndNotMegaGroup(((ChatActivity) baseFragment).getCurrentChat())) {
            BulletinFactory.m1245of(this.sizeNotifierFrameLayout, this.resourcesProvider).createCaptionLimitBulletin(MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium, new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showCaptionLimitBulletin$35(baseFragment);
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCaptionLimitBulletin$35(BaseFragment baseFragment) {
        dismiss(true);
        if (baseFragment != null) {
            baseFragment.presentFragment(new PremiumPreviewFragment("caption_limit"));
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.baseFragment != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), this.baseFragment.isLightStatusBar());
        }
    }

    private boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_listViewBackground : Theme.key_dialogBackground)) > 0.699999988079071d;
    }

    public void onLongClickBotButton(final TLRPC.TL_attachMenuBot tL_attachMenuBot, final TLRPC.User user) {
        String userName = tL_attachMenuBot != null ? tL_attachMenuBot.short_name : UserObject.getUserName(user);
        ArrayList arrayList = MediaDataController.getInstance(this.currentAccount).getAttachMenuBots().bots;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (((TLRPC.TL_attachMenuBot) obj).bot_id == user.f1825id) {
                break;
            }
        }
        String string = LocaleController.formatString("BotRemoveFromMenu", C2888R.string.BotRemoveFromMenu, userName);
        AlertDialog.Builder title = new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.BotRemoveFromMenuTitle));
        if (tL_attachMenuBot == null) {
            string = LocaleController.formatString("BotRemoveInlineFromMenu", C2888R.string.BotRemoveInlineFromMenu, userName);
        }
        title.setMessage(AndroidUtilities.replaceTags(string)).setPositiveButton(LocaleController.getString("OK", C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda53
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$onLongClickBotButton$38(tL_attachMenuBot, user, alertDialog, i2);
            }
        }).setNegativeButton(LocaleController.getString("Cancel", C2888R.string.Cancel), null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClickBotButton$38(final TLRPC.TL_attachMenuBot tL_attachMenuBot, TLRPC.User user, AlertDialog alertDialog, int i) {
        if (tL_attachMenuBot != null) {
            TLRPC.TL_messages_toggleBotInAttachMenu tL_messages_toggleBotInAttachMenu = new TLRPC.TL_messages_toggleBotInAttachMenu();
            tL_messages_toggleBotInAttachMenu.bot = MessagesController.getInstance(this.currentAccount).getInputUser(user);
            tL_messages_toggleBotInAttachMenu.enabled = false;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_toggleBotInAttachMenu, new RequestDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda61
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onLongClickBotButton$37(tL_attachMenuBot, tLObject, tL_error);
                }
            }, 66);
            return;
        }
        MediaDataController.getInstance(this.currentAccount).removeInline(user.f1825id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClickBotButton$37(final TLRPC.TL_attachMenuBot tL_attachMenuBot, TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClickBotButton$36(tL_attachMenuBot);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClickBotButton$36(TLRPC.TL_attachMenuBot tL_attachMenuBot) {
        MediaDataController.getInstance(this.currentAccount).loadAttachMenuBots(false, true);
        if (this.currentAttachLayout == this.botAttachLayouts.get(tL_attachMenuBot.bot_id)) {
            showLayout(this.photoLayout);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean shouldOverlayCameraViewOverNavBar() {
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        return attachAlertLayout == chatAttachAlertPhotoLayout && chatAttachAlertPhotoLayout.cameraExpanded;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        this.buttonPressed = false;
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            this.calcMandatoryInsets = ((ChatActivity) baseFragment).isKeyboardVisible();
        }
        updateDoneItemEnabled();
        this.openTransitionFinished = false;
        if (Build.VERSION.SDK_INT >= 30) {
            this.navBarColorKey = -1;
            int alphaComponent = ColorUtils.setAlphaComponent(getThemedColor(Theme.key_windowBackgroundGray), 0);
            this.navBarColor = alphaComponent;
            AndroidUtilities.setNavigationBarColor((Dialog) this, alphaComponent, false);
            AndroidUtilities.setLightNavigationBar(this, ((double) AndroidUtilities.computePerceivedBrightness(this.navBarColor)) > 0.721d);
        }
    }

    public void setEditingMessageObject(int i, MessageObject messageObject) {
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout;
        if (messageObject != null && (chatAttachAlertPhotoLayout = this.photoLayout) != null) {
            chatAttachAlertPhotoLayout.clearSelectedPhotos();
        }
        if (this.editingMessageObject == messageObject && this.editType == i) {
            return;
        }
        this.editingMessageObject = messageObject;
        if (messageObject != null && messageObject.hasValidGroupId()) {
            if (this.editingMessageObject.isMusic()) {
                i = 2;
            } else {
                i = this.editingMessageObject.isDocument() ? 1 : 0;
            }
        }
        this.editType = i;
        if (this.editingMessageObject != null) {
            this.maxSelectedPhotos = 1;
            this.allowOrder = false;
        } else {
            this.maxSelectedPhotos = -1;
            this.allowOrder = true;
        }
        this.buttonsAdapter.notifyDataSetChanged();
        updateCountButton(0);
    }

    public MessageObject getEditingMessageObject() {
        return this.editingMessageObject;
    }

    protected void applyCaption() {
        if (getCommentView().length() <= 0) {
            return;
        }
        this.currentAttachLayout.applyCaption(getCommentView().getText());
    }

    private boolean sendPressed(final boolean z, final int i, final int i2, final long j, final boolean z2) {
        if (this.buttonPressed) {
            return false;
        }
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            ChatActivity chatActivity = (ChatActivity) baseFragment;
            TLRPC.Chat currentChat = chatActivity.getCurrentChat();
            if (chatActivity.getCurrentUser() != null || ((ChatObject.isChannel(currentChat) && currentChat.megagroup) || !ChatObject.isChannel(currentChat))) {
                MessagesController.getNotificationsSettings(this.currentAccount).edit().putBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + chatActivity.getDialogId(), !z).apply();
            }
        }
        if (checkCaption(getCommentView().getText())) {
            return true;
        }
        applyCaption();
        int i3 = this.currentAccount;
        long dialogId = getDialogId();
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        return AlertsCreator.ensurePaidMessageConfirmation(i3, dialogId, (attachAlertLayout != null ? attachAlertLayout.getSelectedItemsCount() : 1) + getAdditionalMessagesCount(), new Utilities.Callback() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda57
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$sendPressed$39(z, i, i2, j, z2, (Long) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendPressed$39(boolean z, int i, int i2, long j, boolean z2, Long l) {
        setButtonPressed(true);
        this.delegate.didPressedButton(7, true, z, i, i2, j, z2, false, l.longValue());
    }

    public void setButtonPressed(boolean z) {
        this.buttonPressed = z;
    }

    public void showLayout(AttachAlertLayout attachAlertLayout) {
        long j = this.selectedId;
        ChatAttachRestrictedLayout chatAttachRestrictedLayout = this.restrictedLayout;
        if (attachAlertLayout == chatAttachRestrictedLayout) {
            j = chatAttachRestrictedLayout.f1940id;
        } else if (attachAlertLayout == this.photoLayout) {
            j = 1;
        } else if (attachAlertLayout == this.audioLayout) {
            j = 3;
        } else if (attachAlertLayout == this.documentLayout) {
            j = 4;
        } else if (attachAlertLayout == this.contactsLayout) {
            j = 5;
        } else if (attachAlertLayout == this.locationLayout) {
            j = 6;
        } else if (attachAlertLayout == this.pollLayout) {
            j = 9;
        } else if (attachAlertLayout == this.colorsLayout) {
            j = 10;
        } else if (attachAlertLayout == this.quickRepliesLayout) {
            j = 11;
        } else if (attachAlertLayout == this.todoLayout) {
            j = 12;
        }
        showLayout(attachAlertLayout, j);
    }

    private void showLayout(AttachAlertLayout attachAlertLayout, long j) {
        showLayout(attachAlertLayout, j, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLayout$40() {
        AttachAlertLayout attachAlertLayout;
        ChatAttachAlertPhotoLayoutPreview chatAttachAlertPhotoLayoutPreview;
        this.viewChangeAnimator = null;
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        if (attachAlertLayout2 != this.photoLayout && (attachAlertLayout = this.nextAttachLayout) != (chatAttachAlertPhotoLayoutPreview = this.photoPreviewLayout) && attachAlertLayout2 != attachAlertLayout && attachAlertLayout2 != chatAttachAlertPhotoLayoutPreview) {
            this.containerView.removeView(attachAlertLayout2);
        }
        this.currentAttachLayout.setVisibility(8);
        this.currentAttachLayout.onHidden();
        this.nextAttachLayout.onShown();
        this.currentAttachLayout = this.nextAttachLayout;
        this.nextAttachLayout = null;
        int[] iArr = this.scrollOffsetY;
        iArr[0] = iArr[1];
        setCaptionAbove(this.captionAbove, false);
        updateDoneItemEnabled();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.ChatAttachAlert$27 */
    class C406827 extends AnimatorListenerAdapter {
        final /* synthetic */ Runnable val$onEnd;
        final /* synthetic */ int val$t;

        C406827(int i, Runnable runnable) {
            this.val$t = i;
            this.val$onEnd = runnable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ChatAttachAlert.this.currentAttachLayout.setAlpha(0.0f);
            ChatAttachAlert.this.currentAttachLayout.setTranslationY(AndroidUtilities.m1124dp(78.0f) + this.val$t);
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            chatAttachAlert.ATTACH_ALERT_LAYOUT_TRANSLATION.set(chatAttachAlert.currentAttachLayout, Float.valueOf(1.0f));
            ChatAttachAlert.this.actionBar.setAlpha(0.0f);
            SpringAnimation springAnimation = new SpringAnimation(ChatAttachAlert.this.nextAttachLayout, DynamicAnimation.TRANSLATION_Y, 0.0f);
            springAnimation.getSpring().setDampingRatio(0.75f);
            springAnimation.getSpring().setStiffness(500.0f);
            springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$27$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    this.f$0.lambda$onAnimationEnd$0(dynamicAnimation, f, f2);
                }
            });
            final Runnable runnable = this.val$onEnd;
            springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$27$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    this.f$0.lambda$onAnimationEnd$1(runnable, dynamicAnimation, z, f, f2);
                }
            });
            ChatAttachAlert.this.viewChangeAnimator = springAnimation;
            springAnimation.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$onAnimationEnd$0(DynamicAnimation dynamicAnimation, float f, float f2) {
            if (ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.pollLayout || ChatAttachAlert.this.nextAttachLayout == ChatAttachAlert.this.todoLayout) {
                ChatAttachAlert.this.updateSelectedPosition(1);
            } else {
                ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                if (chatAttachAlert.isPhotoPicker && chatAttachAlert.viewChangeAnimator != null) {
                }
            }
            ChatAttachAlert.this.nextAttachLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
            ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$1(Runnable runnable, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            ChatAttachAlert.this.nextAttachLayout.setTranslationY(0.0f);
            ChatAttachAlert.this.nextAttachLayout.onContainerTranslationUpdated(ChatAttachAlert.this.currentPanTranslationY);
            ((BottomSheet) ChatAttachAlert.this).containerView.invalidate();
            runnable.run();
            ChatAttachAlert.this.updateSelectedPosition(0);
        }
    }

    private void showLayout(final AttachAlertLayout attachAlertLayout, long j, boolean z) {
        ChatAttachAlertPhotoLayout.CameraViewInternal cameraViewInternal;
        ChatAttachAlertPhotoLayout.CameraViewInternal cameraViewInternal2;
        Float fValueOf = Float.valueOf(0.0f);
        if (this.viewChangeAnimator == null && this.commentsAnimator == null) {
            AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
            if (attachAlertLayout2 == attachAlertLayout) {
                attachAlertLayout2.scrollToTop();
                return;
            }
            if (attachAlertLayout == this.todoLayout && !UserConfig.getInstance(this.currentAccount).isPremium()) {
                new PremiumFeatureBottomSheet(this.baseFragment, 39, false).show();
                return;
            }
            this.animatorToggleCaptionSupported.setValue(j == 1, z);
            this.animatorCurrentVisibleLayout.replace(Long.valueOf(j), z);
            this.botButtonWasVisible = false;
            this.botButtonProgressWasVisible = false;
            this.botMainButtonOffsetY = 0.0f;
            this.botMainButtonTextView.setVisibility(8);
            this.botProgressView.setAlpha(0.0f);
            this.botProgressView.setScaleX(0.1f);
            this.botProgressView.setScaleY(0.1f);
            this.botProgressView.setVisibility(8);
            this.buttonsRecyclerViewWrapper.setAlpha(1.0f);
            this.buttonsRecyclerViewWrapper.setTranslationY(this.botMainButtonOffsetY);
            for (int i = 0; i < this.botAttachLayouts.size(); i++) {
                ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.valueAt(i)).setMeasureOffsetY(0);
            }
            this.selectedId = j;
            int childCount = this.buttonsRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.buttonsRecyclerView.getChildAt(i2);
                if (childAt instanceof AttachButton) {
                    ((AttachButton) childAt).updateCheckedState(true);
                } else if (childAt instanceof AttachBotButton) {
                    ((AttachBotButton) childAt).updateCheckedState(true);
                }
            }
            int firstOffset = (this.currentAttachLayout.getFirstOffset() - AndroidUtilities.m1124dp(11.0f)) - this.scrollOffsetY[0];
            this.nextAttachLayout = attachAlertLayout;
            this.actionBar.setVisibility(attachAlertLayout.needsActionBar() != 0 ? 0 : 4);
            this.actionBarShadow.setVisibility(this.actionBar.getVisibility());
            if (this.actionBar.isSearchFieldVisible()) {
                this.actionBar.closeSearchField();
            }
            this.currentAttachLayout.onHide();
            AttachAlertLayout attachAlertLayout3 = this.nextAttachLayout;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
            if (attachAlertLayout3 == chatAttachAlertPhotoLayout) {
                chatAttachAlertPhotoLayout.setCheckCameraWhenShown(true);
            }
            this.nextAttachLayout.onShow(this.currentAttachLayout);
            this.nextAttachLayout.setVisibility(0);
            updateCameraButtonVisibility();
            if (attachAlertLayout.getParent() != null) {
                this.containerView.removeView(this.nextAttachLayout);
            }
            int iIndexOfChild = this.containerView.indexOfChild(this.currentAttachLayout);
            ViewParent parent = this.nextAttachLayout.getParent();
            ViewGroup viewGroup = this.containerView;
            if (parent != viewGroup) {
                AttachAlertLayout attachAlertLayout4 = this.nextAttachLayout;
                if (attachAlertLayout4 != this.locationLayout) {
                    iIndexOfChild++;
                }
                viewGroup.addView(attachAlertLayout4, iIndexOfChild, LayoutHelper.createFrame(-1, -1.0f));
            }
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showLayout$40();
                }
            };
            AttachAlertLayout attachAlertLayout5 = this.currentAttachLayout;
            if (!(attachAlertLayout5 instanceof ChatAttachAlertPhotoLayoutPreview) && !(this.nextAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview)) {
                if (z) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    this.nextAttachLayout.setAlpha(0.0f);
                    this.nextAttachLayout.setTranslationY(AndroidUtilities.m1124dp(78.0f));
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.currentAttachLayout, (Property<AttachAlertLayout, Float>) View.TRANSLATION_Y, AndroidUtilities.m1124dp(78.0f) + firstOffset);
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.currentAttachLayout, (Property<AttachAlertLayout, Float>) this.ATTACH_ALERT_LAYOUT_TRANSLATION, 0.0f, 1.0f);
                    ActionBar actionBar = this.actionBar;
                    animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, ObjectAnimator.ofFloat(actionBar, (Property<ActionBar, Float>) View.ALPHA, actionBar.getAlpha(), 0.0f));
                    animatorSet.setDuration(180L);
                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    animatorSet.addListener(new C406827(firstOffset, runnable));
                    this.viewChangeAnimator = animatorSet;
                    this.ATTACH_ALERT_LAYOUT_TRANSLATION.set(this.currentAttachLayout, fValueOf);
                    animatorSet.start();
                    return;
                }
                attachAlertLayout5.setAlpha(0.0f);
                runnable.run();
                updateSelectedPosition(0);
                this.containerView.invalidate();
                return;
            }
            int iMax = Math.max(this.nextAttachLayout.getWidth(), this.currentAttachLayout.getWidth());
            AttachAlertLayout attachAlertLayout6 = this.nextAttachLayout;
            if (attachAlertLayout6 instanceof ChatAttachAlertPhotoLayoutPreview) {
                attachAlertLayout6.setTranslationX(iMax);
                AttachAlertLayout attachAlertLayout7 = this.currentAttachLayout;
                if ((attachAlertLayout7 instanceof ChatAttachAlertPhotoLayout) && (cameraViewInternal2 = ((ChatAttachAlertPhotoLayout) attachAlertLayout7).cameraView) != null) {
                    cameraViewInternal2.setVisibility(4);
                }
            } else {
                this.currentAttachLayout.setTranslationX(-iMax);
                AttachAlertLayout attachAlertLayout8 = this.nextAttachLayout;
                if (attachAlertLayout8 == this.photoLayout && (cameraViewInternal = ((ChatAttachAlertPhotoLayout) attachAlertLayout8).cameraView) != null) {
                    cameraViewInternal.setVisibility(0);
                }
            }
            this.nextAttachLayout.setAlpha(1.0f);
            this.currentAttachLayout.setAlpha(1.0f);
            if (z) {
                this.ATTACH_ALERT_LAYOUT_TRANSLATION.set(this.currentAttachLayout, fValueOf);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showLayout$43(attachAlertLayout, runnable);
                    }
                });
                return;
            }
            boolean z2 = this.nextAttachLayout.getCurrentItemTop() <= attachAlertLayout.getButtonsHideOffset();
            this.currentAttachLayout.onHideShowProgress(1.0f);
            this.nextAttachLayout.onHideShowProgress(1.0f);
            this.currentAttachLayout.onContainerTranslationUpdated(this.currentPanTranslationY);
            this.nextAttachLayout.onContainerTranslationUpdated(this.currentPanTranslationY);
            this.containerView.invalidate();
            this.ATTACH_ALERT_LAYOUT_TRANSLATION.set(this.currentAttachLayout, Float.valueOf(1.0f));
            this.actionBar.setTag(z2 ? 1 : null);
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLayout$43(AttachAlertLayout attachAlertLayout, final Runnable runnable) {
        final boolean z = this.nextAttachLayout.getCurrentItemTop() <= attachAlertLayout.getButtonsHideOffset();
        final float alpha = this.actionBar.getAlpha();
        final float f = z ? 1.0f : 0.0f;
        SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(0.0f));
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda37
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                this.f$0.lambda$showLayout$41(alpha, f, z, dynamicAnimation, f2, f3);
            }
        });
        springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda38
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f2, float f3) {
                this.f$0.lambda$showLayout$42(z, runnable, dynamicAnimation, z2, f2, f3);
            }
        });
        springAnimation.setSpring(new SpringForce(500.0f));
        springAnimation.getSpring().setDampingRatio(1.0f);
        springAnimation.getSpring().setStiffness(1000.0f);
        springAnimation.start();
        this.viewChangeAnimator = springAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLayout$41(float f, float f2, boolean z, DynamicAnimation dynamicAnimation, float f3, float f4) {
        float f5 = f3 / 500.0f;
        this.ATTACH_ALERT_LAYOUT_TRANSLATION.set(this.currentAttachLayout, Float.valueOf(f5));
        this.actionBar.setAlpha(AndroidUtilities.lerp(f, f2, f5));
        updateLayout(this.currentAttachLayout, false, 0);
        updateLayout(this.nextAttachLayout, false, 0);
        if (!(this.nextAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview) || z) {
            f5 = 1.0f - f5;
        }
        float fClamp = Utilities.clamp(f5, 1.0f, 0.0f);
        this.mediaPreviewView.setAlpha(fClamp);
        float f6 = 1.0f - fClamp;
        this.selectedView.setAlpha(f6);
        this.selectedView.setTranslationX(fClamp * (-AndroidUtilities.m1124dp(16.0f)));
        this.mediaPreviewView.setTranslationX(f6 * AndroidUtilities.m1124dp(16.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLayout$42(boolean z, Runnable runnable, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        this.currentAttachLayout.onHideShowProgress(1.0f);
        this.nextAttachLayout.onHideShowProgress(1.0f);
        this.currentAttachLayout.onContainerTranslationUpdated(this.currentPanTranslationY);
        this.nextAttachLayout.onContainerTranslationUpdated(this.currentPanTranslationY);
        this.containerView.invalidate();
        this.actionBar.setTag(z ? 1 : null);
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCurrentLayoutAnimatorChanged(ReplaceAnimator replaceAnimator) {
        Drawable drawable = this.shadowDrawable;
        if (drawable == null || this.containerView == null) {
            return;
        }
        Theme.setDrawableColor(drawable, getShadowDrawableColor());
        updateDoneItemEnabled();
        this.containerView.invalidate();
    }

    private int getShadowDrawableColor() {
        return getShadowDrawableColor(false);
    }

    private int getShadowDrawableColor(boolean z) {
        ActionBar actionBar;
        if (this.forceDarkTheme) {
            return getThemedColor(Theme.key_voipgroup_listViewBackground);
        }
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        float visibility = 0.0f;
        for (ListAnimator.Entry entry : this.animatorCurrentVisibleLayout) {
            long jLongValue = ((Long) entry.item).longValue();
            if (jLongValue == 3 || jLongValue == 4 || jLongValue == 5 || jLongValue == 6 || jLongValue == 9 || jLongValue == 11 || jLongValue == 12) {
                visibility += entry.getVisibility();
            }
        }
        float fClamp = MathUtils.clamp(visibility, 0.0f, 1.0f);
        if (z && (actionBar = this.actionBar) != null && actionBar.getVisibility() == 0) {
            fClamp *= 1.0f - this.actionBar.getAlpha();
        }
        return ColorUtils.blendARGB(getThemedColor(Theme.key_dialogBackground), getThemedColor(zIsDark ? Theme.key_windowBackgroundGray : Theme.key_dialogBackgroundGray), fClamp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getActionBarDrawableColor() {
        return getShadowDrawableColor(true);
    }

    public AttachAlertLayout getCurrentAttachLayout() {
        return this.currentAttachLayout;
    }

    public ChatAttachAlertPhotoLayoutPreview getPhotoPreviewLayout() {
        return this.photoPreviewLayout;
    }

    public void updatePhotoPreview(boolean z) {
        if (z) {
            if (this.canOpenPreview) {
                if (this.photoPreviewLayout == null) {
                    Context context = getContext();
                    Theme.ResourcesProvider resourcesProvider = this.parentThemeDelegate;
                    if (resourcesProvider == null) {
                        resourcesProvider = this.resourcesProvider;
                    }
                    ChatAttachAlertPhotoLayoutPreview chatAttachAlertPhotoLayoutPreview = new ChatAttachAlertPhotoLayoutPreview(this, context, resourcesProvider);
                    this.photoPreviewLayout = chatAttachAlertPhotoLayoutPreview;
                    chatAttachAlertPhotoLayoutPreview.bringToFront();
                }
                AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
                AttachAlertLayout attachAlertLayout2 = this.photoPreviewLayout;
                if (attachAlertLayout == attachAlertLayout2) {
                    attachAlertLayout2 = this.photoLayout;
                }
                showLayout(attachAlertLayout2);
                return;
            }
            return;
        }
        showLayout(this.photoLayout);
    }

    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        ChatAttachAlertLocationLayout chatAttachAlertLocationLayout;
        if (i == 5 && iArr != null && iArr.length > 0 && iArr[0] == 0) {
            openContactsLayout();
        } else if (i == 30 && (chatAttachAlertLocationLayout = this.locationLayout) != null && this.currentAttachLayout == chatAttachAlertLocationLayout && isShowing()) {
            this.locationLayout.openShareLiveLocation();
        }
    }

    private void openContactsLayout() {
        if (!this.plainTextEnabled) {
            ChatAttachRestrictedLayout chatAttachRestrictedLayout = new ChatAttachRestrictedLayout(5, this, getContext(), this.resourcesProvider);
            this.restrictedLayout = chatAttachRestrictedLayout;
            showLayout(chatAttachRestrictedLayout);
        }
        if (this.contactsLayout == null) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            ChatAttachAlertContactsLayout chatAttachAlertContactsLayout = new ChatAttachAlertContactsLayout(this, getContext(), this.resourcesProvider);
            this.contactsLayout = chatAttachAlertContactsLayout;
            attachAlertLayoutArr[2] = chatAttachAlertContactsLayout;
            chatAttachAlertContactsLayout.setupBlurredSearchField(this.iBlur3FactoryLiquidGlass);
            this.contactsLayout.setDelegate(new ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.28
                @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate
                public void didSelectContact(TLRPC.User user, boolean z, int i, long j, boolean z2, long j2) {
                    ((ChatActivity) ChatAttachAlert.this.baseFragment).sendContact(user, z, i, j, z2, j2);
                }

                @Override // org.telegram.ui.Components.ChatAttachAlertContactsLayout.PhonebookShareAlertDelegate
                public void didSelectContacts(ArrayList arrayList, String str, boolean z, int i, long j, boolean z2, long j2) {
                    ((ChatActivity) ChatAttachAlert.this.baseFragment).sendContacts(arrayList, str, z, i, j, z2, 0L);
                }
            });
        }
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            TLRPC.Chat currentChat = ((ChatActivity) baseFragment).getCurrentChat();
            this.contactsLayout.setMultipleSelectionAllowed(currentChat == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled);
        }
        showLayout(this.contactsLayout);
    }

    private void openQuickRepliesLayout() {
        if (this.quickRepliesLayout == null) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            ChatAttachAlertQuickRepliesLayout chatAttachAlertQuickRepliesLayout = new ChatAttachAlertQuickRepliesLayout(this, getContext(), this.resourcesProvider);
            this.quickRepliesLayout = chatAttachAlertQuickRepliesLayout;
            attachAlertLayoutArr[7] = chatAttachAlertQuickRepliesLayout;
            chatAttachAlertQuickRepliesLayout.setupBlurredSearchField(this.iBlur3FactoryLiquidGlass);
        }
        showLayout(this.quickRepliesLayout);
    }

    public boolean checkCanRemoveRestrictionsByBoosts() {
        BaseFragment baseFragment = this.baseFragment;
        return (baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).checkCanRemoveRestrictionsByBoosts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAudioLayout(boolean z) {
        if (!this.musicEnabled && z) {
            ChatAttachRestrictedLayout chatAttachRestrictedLayout = new ChatAttachRestrictedLayout(3, this, getContext(), this.resourcesProvider);
            this.restrictedLayout = chatAttachRestrictedLayout;
            showLayout(chatAttachRestrictedLayout);
        }
        if (this.audioLayout == null) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            ChatAttachAlertAudioLayout chatAttachAlertAudioLayout = new ChatAttachAlertAudioLayout(this, getContext(), this.resourcesProvider);
            this.audioLayout = chatAttachAlertAudioLayout;
            attachAlertLayoutArr[3] = chatAttachAlertAudioLayout;
            chatAttachAlertAudioLayout.setupBlurredSearchField(this.iBlur3FactoryLiquidGlass);
            this.audioLayout.setDelegate(new ChatAttachAlertAudioLayout.AudioSelectDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda59
                @Override // org.telegram.ui.Components.ChatAttachAlertAudioLayout.AudioSelectDelegate
                public final void didSelectAudio(ArrayList arrayList, CharSequence charSequence, boolean z2, int i, int i2, long j, boolean z3, long j2) {
                    this.f$0.lambda$openAudioLayout$44(arrayList, charSequence, z2, i, i2, j, z3, j2);
                }
            });
        }
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            TLRPC.Chat currentChat = ((ChatActivity) baseFragment).getCurrentChat();
            this.audioLayout.setMaxSelectedFiles(((currentChat == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled) && this.editingMessageObject == null) ? -1 : 1);
        }
        if (z) {
            showLayout(this.audioLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAudioLayout$44(ArrayList arrayList, CharSequence charSequence, boolean z, int i, int i2, long j, boolean z2, long j2) {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment != null && (baseFragment instanceof ChatActivity)) {
            ((ChatActivity) baseFragment).sendAudio(arrayList, charSequence, z, i, i2, j, z2, j2);
            return;
        }
        ChatAttachViewDelegate chatAttachViewDelegate = this.delegate;
        if (chatAttachViewDelegate != null) {
            chatAttachViewDelegate.sendAudio(arrayList, charSequence, z, i, i2, j, z2, j2);
        }
    }

    public void openColorsLayout() {
        if (this.colorsLayout == null) {
            ChatAttachAlertColorsLayout chatAttachAlertColorsLayout = new ChatAttachAlertColorsLayout(this, getContext(), this.resourcesProvider);
            this.colorsLayout = chatAttachAlertColorsLayout;
            chatAttachAlertColorsLayout.setDelegate(new androidx.core.util.Consumer() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda63
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$openColorsLayout$45(obj);
                }
            });
        }
        showLayout(this.colorsLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openColorsLayout$45(Object obj) {
        ChatAttachViewDelegate chatAttachViewDelegate = this.delegate;
        if (chatAttachViewDelegate != null) {
            chatAttachViewDelegate.onWallpaperSelected(obj);
        }
    }

    private void openDocumentsLayout(boolean z) {
        if (!this.documentsEnabled && z) {
            ChatAttachRestrictedLayout chatAttachRestrictedLayout = new ChatAttachRestrictedLayout(4, this, getContext(), this.resourcesProvider);
            this.restrictedLayout = chatAttachRestrictedLayout;
            showLayout(chatAttachRestrictedLayout);
        }
        boolean z2 = false;
        if (this.documentLayout == null) {
            int i = this.isSoundPicker ? 2 : 0;
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout = new ChatAttachAlertDocumentLayout(this, getContext(), i, this.resourcesProvider);
            this.documentLayout = chatAttachAlertDocumentLayout;
            attachAlertLayoutArr[4] = chatAttachAlertDocumentLayout;
            chatAttachAlertDocumentLayout.setDelegate(new ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.29
                @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void didSelectFiles(ArrayList arrayList, String str, ArrayList arrayList2, ArrayList arrayList3, boolean z3, int i2, int i3, long j, boolean z4, long j2) {
                    if (ChatAttachAlert.this.documentsDelegate != null) {
                        ChatAttachAlert.this.documentsDelegate.didSelectFiles(arrayList, str, arrayList2, arrayList3, z3, i2, i3, j, z4, j2);
                        return;
                    }
                    Object obj = ChatAttachAlert.this.baseFragment;
                    if (obj instanceof ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate) {
                        ((ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate) obj).didSelectFiles(arrayList, str, arrayList2, arrayList3, z3, i2, i3, j, z4, j2);
                    } else if (obj instanceof PassportActivity) {
                        ((PassportActivity) obj).didSelectFiles(arrayList, str, z3, i2, j, z4);
                    }
                }

                @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void didSelectPhotos(ArrayList arrayList, boolean z3, int i2, int i3, long j) {
                    if (ChatAttachAlert.this.documentsDelegate != null) {
                        ChatAttachAlert.this.documentsDelegate.didSelectPhotos(arrayList, z3, i2, i3, j);
                        return;
                    }
                    BaseFragment baseFragment = ChatAttachAlert.this.baseFragment;
                    if (baseFragment instanceof ChatActivity) {
                        ((ChatActivity) baseFragment).didSelectPhotos(arrayList, z3, i2, i3, j);
                    } else if (baseFragment instanceof PassportActivity) {
                        ((PassportActivity) baseFragment).didSelectPhotos(arrayList, z3, i2);
                    }
                }

                @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void startDocumentSelectActivity() {
                    if (ChatAttachAlert.this.documentsDelegate != null) {
                        ChatAttachAlert.this.documentsDelegate.startDocumentSelectActivity();
                        return;
                    }
                    Object obj = ChatAttachAlert.this.baseFragment;
                    if (obj instanceof ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate) {
                        ((ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate) obj).startDocumentSelectActivity();
                    } else if (obj instanceof PassportActivity) {
                        ((PassportActivity) obj).startDocumentSelectActivity();
                    }
                }

                @Override // org.telegram.ui.Components.ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate
                public void startMusicSelectActivity() {
                    ChatAttachAlert.this.openAudioLayout(true);
                }
            });
        }
        BaseFragment baseFragment = this.baseFragment;
        int i2 = 1;
        if (baseFragment instanceof ChatActivity) {
            TLRPC.Chat currentChat = ((ChatActivity) baseFragment).getCurrentChat();
            ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout2 = this.documentLayout;
            if ((currentChat == null || ChatObject.hasAdminRights(currentChat) || !currentChat.slowmode_enabled) && this.editingMessageObject == null) {
                i2 = -1;
            }
            chatAttachAlertDocumentLayout2.setMaxSelectedFiles(i2);
        } else {
            this.documentLayout.setMaxSelectedFiles(this.maxSelectedPhotos);
            ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout3 = this.documentLayout;
            if (!this.isSoundPicker && !this.allowEnterCaption) {
                z2 = true;
            }
            chatAttachAlertDocumentLayout3.setCanSelectOnlyImageFiles(z2);
        }
        ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout4 = this.documentLayout;
        chatAttachAlertDocumentLayout4.isSoundPicker = this.isSoundPicker;
        if (z) {
            showLayout(chatAttachAlertDocumentLayout4);
        }
    }

    private boolean showCommentTextView(final boolean z, boolean z2) {
        float f;
        AttachAlertLayout attachAlertLayout;
        this.animatorCaptionVisible.setValue(z, true);
        if (z == (this.frameLayout2.getTag() != null)) {
            return false;
        }
        AnimatorSet animatorSet = this.commentsAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.frameLayout2.setTag(z ? 1 : null);
        if (this.commentTextView.getEditText().isFocused()) {
            AndroidUtilities.hideKeyboard(this.commentTextView.getEditText());
        }
        this.commentTextView.hidePopup(true);
        this.topCommentTextView.hidePopup(true);
        if (z) {
            if (!this.isSoundPicker) {
                this.frameLayout2.setVisibility(0);
            }
            this.writeButtonContainer.setVisibility(0);
        } else if (this.typeButtonsAvailable) {
            this.buttonsRecyclerViewWrapper.setVisibility(0);
        }
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        final boolean z3 = (attachAlertLayout2 == this.photoLayout || attachAlertLayout2 == this.photoPreviewLayout) && this.captionAbove;
        if (z2) {
            this.commentsAnimator = new AnimatorSet();
            if (z3) {
                this.topCommentContainer.setVisibility(0);
            }
            ArrayList arrayList = new ArrayList();
            FrameLayout frameLayout = this.frameLayout2;
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property, z ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.captionContainer, (Property<FrameLayout, Float>) property, (!z || z3) ? 0.0f : 1.0f));
            if (z && !z3) {
                this.captionContainer.setVisibility(0);
                arrayList.add(ObjectAnimator.ofFloat(this.captionContainer, (Property<FrameLayout, Float>) View.TRANSLATION_Y, 0.0f));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.topCommentContainer, (Property<FrameLayout, Float>) property, (z && z3) ? 1.0f : 0.0f));
            FrameLayout frameLayout2 = this.writeButtonContainer;
            Property property2 = View.SCALE_X;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout2, (Property<FrameLayout, Float>) property2, z ? 1.0f : 0.2f));
            FrameLayout frameLayout3 = this.writeButtonContainer;
            Property property3 = View.SCALE_Y;
            f = 48.0f;
            arrayList.add(ObjectAnimator.ofFloat(frameLayout3, (Property<FrameLayout, Float>) property3, z ? 1.0f : 0.2f));
            arrayList.add(ObjectAnimator.ofFloat(this.writeButtonContainer, (Property<FrameLayout, Float>) property, z ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.writeButton, (Property<ChatActivityEnterView.SendButton, Float>) property2, z ? 1.0f : 0.2f));
            arrayList.add(ObjectAnimator.ofFloat(this.writeButton, (Property<ChatActivityEnterView.SendButton, Float>) property3, z ? 1.0f : 0.2f));
            if (this.actionBar.getTag() != null) {
                arrayList.add(ObjectAnimator.ofFloat(this.frameLayout2, (Property<FrameLayout, Float>) View.TRANSLATION_Y, z ? 0.0f : AndroidUtilities.m1124dp(48.0f)));
            } else if (this.typeButtonsAvailable) {
                arrayList.add(ObjectAnimator.ofFloat(this.buttonsRecyclerViewWrapper, (Property<FrameLayout, Float>) View.TRANSLATION_Y, z ? AndroidUtilities.m1124dp(36.0f) : 0.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.buttonsRecyclerViewWrapper, (Property<FrameLayout, Float>) property, z ? 0.0f : 1.0f));
            }
            if (z3) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$showCommentTextView$46(valueAnimator);
                    }
                });
                arrayList.add(valueAnimatorOfFloat);
            }
            this.commentsAnimator.playTogether(arrayList);
            this.commentsAnimator.setInterpolator(new DecelerateInterpolator());
            this.commentsAnimator.setDuration(180L);
            this.commentsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.30
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator.equals(ChatAttachAlert.this.commentsAnimator)) {
                        if (!z) {
                            if (!ChatAttachAlert.this.isSoundPicker) {
                                ChatAttachAlert.this.frameLayout2.setVisibility(4);
                            }
                            ChatAttachAlert.this.writeButtonContainer.setVisibility(4);
                        } else {
                            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                            if (chatAttachAlert.typeButtonsAvailable && (chatAttachAlert.currentAttachLayout == null || ChatAttachAlert.this.currentAttachLayout.shouldHideBottomButtons())) {
                                ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(4);
                            }
                        }
                        if (z3) {
                            ChatAttachAlert.this.updatedTopCaptionHeight();
                            ChatAttachAlert.this.topCommentContainer.setVisibility(z ? 0 : 8);
                        }
                        ChatAttachAlert.this.commentsAnimator = null;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    if (animator.equals(ChatAttachAlert.this.commentsAnimator)) {
                        ChatAttachAlert.this.commentsAnimator = null;
                    }
                }
            });
            this.commentsAnimator.start();
        } else {
            f = 48.0f;
            this.frameLayout2.setAlpha(z ? 1.0f : 0.0f);
            this.captionContainer.setAlpha((z && z3) ? 1.0f : 0.0f);
            if (z && !z3) {
                this.captionContainer.setVisibility(0);
                this.captionContainer.setTranslationY(0.0f);
            }
            this.writeButtonContainer.setScaleX(z ? 1.0f : 0.2f);
            this.writeButtonContainer.setScaleY(z ? 1.0f : 0.2f);
            this.writeButtonContainer.setAlpha(z ? 1.0f : 0.0f);
            this.topCommentContainer.setVisibility((z && z3) ? 0 : 8);
            this.topCommentContainer.setAlpha((z && z3) ? 1.0f : 0.0f);
            this.writeButton.setScaleX(z ? 1.0f : 0.2f);
            this.writeButton.setScaleY(z ? 1.0f : 0.2f);
            if (this.actionBar.getTag() != null) {
                this.frameLayout2.setTranslationY(z ? 0.0f : AndroidUtilities.m1124dp(48.0f));
            } else if (this.typeButtonsAvailable && ((attachAlertLayout = this.currentAttachLayout) == null || attachAlertLayout.shouldHideBottomButtons())) {
                this.buttonsRecyclerViewWrapper.setTranslationY(z ? AndroidUtilities.m1124dp(84.0f) : 0.0f);
            }
            if (!z) {
                this.frameLayout2.setVisibility(4);
                this.writeButtonContainer.setVisibility(4);
            }
            this.actionBarShadow.setTranslationY(this.currentPanTranslationY);
            if (z3) {
                updatedTopCaptionHeight();
            }
        }
        this.writeButton.setCount(z ? Math.max(1, this.currentAttachLayout.getSelectedItemsCount()) : 0, z2);
        this.writeButton.setStarsPrice(this.editingMessageObject != null ? 0L : MessagesController.getInstance(this.currentAccount).getSendPaidMessagesStars(getDialogId()), this.currentAttachLayout.getSelectedItemsCount() + getAdditionalMessagesCount());
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextEmoji.getLayoutParams();
            int iMax = Math.max(AndroidUtilities.m1124dp(f), this.writeButton.width());
            if (marginLayoutParams.rightMargin != iMax) {
                marginLayoutParams.rightMargin = iMax;
                this.commentTextView.setLayoutParams(marginLayoutParams);
            }
        }
        updateCameraButtonVisibility();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCommentTextView$46(ValueAnimator valueAnimator) {
        updatedTopCaptionHeight();
    }

    public int getAdditionalMessagesCount() {
        MessagePreviewParams messagePreviewParams;
        BaseFragment baseFragment = this.baseFragment;
        if (!(baseFragment instanceof ChatActivity) || (messagePreviewParams = ((ChatActivity) baseFragment).messagePreviewParams) == null) {
            return 0;
        }
        return messagePreviewParams.getForwardedMessagesCount();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void cancelSheetAnimation() {
        AnimatorSet animatorSet = this.currentSheetAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            SpringAnimation springAnimation = this.appearSpringAnimation;
            if (springAnimation != null) {
                springAnimation.cancel();
            }
            AnimatorSet animatorSet2 = this.buttonsAnimation;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            this.currentSheetAnimation = null;
            this.currentSheetAnimationType = 0;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean onCustomOpenAnimation() {
        this.photoLayout.setTranslationX(0.0f);
        this.mediaPreviewView.setAlpha(0.0f);
        this.selectedView.setAlpha(1.0f);
        this.containerView.setTranslationY(this.containerView.getMeasuredHeight());
        AnimatorSet animatorSet = new AnimatorSet();
        this.buttonsAnimation = animatorSet;
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<ChatAttachAlert, Float>) this.ATTACH_ALERT_PROGRESS, 0.0f, 400.0f));
        this.buttonsAnimation.setDuration(400L);
        this.buttonsAnimation.setStartDelay(20L);
        this.ATTACH_ALERT_PROGRESS.set(this, Float.valueOf(0.0f));
        this.buttonsAnimation.start();
        ValueAnimator valueAnimator = this.navigationBarAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.navigationBarAlpha, 1.0f);
        this.navigationBarAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$onCustomOpenAnimation$47(valueAnimator2);
            }
        });
        SpringAnimation springAnimation = this.appearSpringAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        SpringAnimation springAnimation2 = new SpringAnimation(this.containerView, DynamicAnimation.TRANSLATION_Y, 0.0f);
        this.appearSpringAnimation = springAnimation2;
        if (this.editingMessageObject != null) {
            springAnimation2.getSpring().setDampingRatio(0.75f);
            this.appearSpringAnimation.getSpring().setStiffness(350.0f);
        } else {
            springAnimation2.getSpring().setDampingRatio(0.75f);
            this.appearSpringAnimation.getSpring().setStiffness(350.0f);
        }
        this.appearSpringAnimation.start();
        if (this.useHardwareLayer) {
            this.container.setLayerType(2, null);
        }
        this.currentSheetAnimationType = 1;
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.currentSheetAnimation = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofInt(this.backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, this.dimBehind ? this.dimBehindAlpha : 0));
        this.currentSheetAnimation.setDuration(400L);
        this.currentSheetAnimation.setStartDelay(20L);
        this.currentSheetAnimation.setInterpolator(this.openInterpolator);
        final AnimationNotificationsLocker animationNotificationsLocker = new AnimationNotificationsLocker();
        final BottomSheet.BottomSheetDelegateInterface bottomSheetDelegateInterface = super.delegate;
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCustomOpenAnimation$48(animationNotificationsLocker, bottomSheetDelegateInterface);
            }
        };
        this.appearSpringAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda10
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$onCustomOpenAnimation$49(runnable, dynamicAnimation, z, f, f2);
            }
        });
        this.currentSheetAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.32
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimation == null || !((BottomSheet) ChatAttachAlert.this).currentSheetAnimation.equals(animator) || ChatAttachAlert.this.appearSpringAnimation == null || ChatAttachAlert.this.appearSpringAnimation.isRunning()) {
                    return;
                }
                runnable.run();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (((BottomSheet) ChatAttachAlert.this).currentSheetAnimation == null || !((BottomSheet) ChatAttachAlert.this).currentSheetAnimation.equals(animator)) {
                    return;
                }
                runnable.run();
                ((BottomSheet) ChatAttachAlert.this).currentSheetAnimation = null;
                ((BottomSheet) ChatAttachAlert.this).currentSheetAnimationType = 0;
            }
        });
        animationNotificationsLocker.lock();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        this.currentSheetAnimation.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        setNavBarAlpha(0.0f);
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$onCustomOpenAnimation$50(valueAnimator2);
            }
        });
        valueAnimatorOfFloat2.setStartDelay(25L);
        valueAnimatorOfFloat2.setDuration(200L);
        valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.DEFAULT);
        valueAnimatorOfFloat2.start();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$47(ValueAnimator valueAnimator) {
        this.navigationBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        BottomSheet.ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$48(AnimationNotificationsLocker animationNotificationsLocker, BottomSheet.BottomSheetDelegateInterface bottomSheetDelegateInterface) {
        this.currentSheetAnimation = null;
        this.appearSpringAnimation = null;
        animationNotificationsLocker.unlock();
        this.currentSheetAnimationType = 0;
        if (bottomSheetDelegateInterface != null) {
            bottomSheetDelegateInterface.onOpenAnimationEnd();
        }
        if (this.useHardwareLayer) {
            this.container.setLayerType(0, null);
        }
        if (this.isFullscreen) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.flags &= -1025;
            getWindow().setAttributes(attributes);
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$49(Runnable runnable, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        AnimatorSet animatorSet = this.currentSheetAnimation;
        if (animatorSet == null || animatorSet.isRunning()) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$50(ValueAnimator valueAnimator) {
        setNavBarAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setNavBarAlpha(float f) {
        int alphaComponent = ColorUtils.setAlphaComponent(getThemedColor(Theme.key_windowBackgroundGray), Math.min(255, Math.max(0, (int) (f * 255.0f))));
        this.navBarColor = alphaComponent;
        AndroidUtilities.setNavigationBarColor((Dialog) this, alphaComponent, false);
        AndroidUtilities.setLightNavigationBar(this, ((double) AndroidUtilities.computePerceivedBrightness(this.navBarColor)) > 0.721d);
        getContainer().invalidate();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean onContainerTouchEvent(MotionEvent motionEvent) {
        return this.currentAttachLayout.onContainerViewTouchEvent(motionEvent);
    }

    public void makeFocusable(final EditTextBoldCursor editTextBoldCursor, final boolean z) {
        ChatAttachViewDelegate chatAttachViewDelegate = this.delegate;
        if (chatAttachViewDelegate == null || this.enterCommentEventSent) {
            return;
        }
        boolean zNeedEnterComment = chatAttachViewDelegate.needEnterComment();
        this.enterCommentEventSent = true;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$makeFocusable$52(editTextBoldCursor, z);
            }
        }, zNeedEnterComment ? 200L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeFocusable$52(final EditTextBoldCursor editTextBoldCursor, boolean z) {
        setFocusable(true);
        editTextBoldCursor.requestFocus();
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.showKeyboard(editTextBoldCursor);
                }
            });
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public ArrayList getThemeDescriptions() {
        ArrayList<ThemeDescription> themeDescriptions;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i < attachAlertLayoutArr.length) {
                AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
                if (attachAlertLayout != null && (themeDescriptions = attachAlertLayout.getThemeDescriptions()) != null) {
                    arrayList.addAll(themeDescriptions);
                }
                i++;
            } else {
                arrayList.add(new ThemeDescription(this.container, 0, null, null, null, null, Theme.key_dialogBackgroundGray));
                return arrayList;
            }
        }
    }

    public void checkColors() {
        RecyclerListView recyclerListView = this.buttonsRecyclerView;
        if (recyclerListView == null) {
            return;
        }
        int childCount = recyclerListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            applyAttachButtonColors(this.buttonsRecyclerView.getChildAt(i));
        }
        this.selectedTextView.setTextColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack));
        this.mediaPreviewTextView.setTextColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack));
        this.doneItem.getTextView().setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        this.selectedMenuItem.setIconColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack));
        Theme.setDrawableColor(this.selectedMenuItem.getBackground(), getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItemsSelector : Theme.key_dialogButtonSelector));
        ActionBarMenuItem actionBarMenuItem = this.selectedMenuItem;
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        actionBarMenuItem.setPopupItemsColor(getThemedColor(i2), false);
        this.selectedMenuItem.setPopupItemsColor(getThemedColor(i2), true);
        this.selectedMenuItem.redrawPopup(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        ActionBarMenuItem actionBarMenuItem2 = this.searchItem;
        if (actionBarMenuItem2 != null) {
            actionBarMenuItem2.setIconColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack));
            Theme.setDrawableColor(this.searchItem.getBackground(), getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItemsSelector : Theme.key_dialogButtonSelector));
        }
        this.commentTextView.updateColors();
        this.actionBarShadow.setBackgroundColor(getThemedColor(Theme.key_dialogShadowLine));
        this.buttonsRecyclerView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.actionBar.setBackgroundColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBar : Theme.key_dialogBackground));
        this.actionBar.setItemsColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack), false);
        this.actionBar.setItemsBackgroundColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItemsSelector : Theme.key_dialogButtonSelector), false);
        this.actionBar.setTitleColor(getThemedColor(this.forceDarkTheme ? Theme.key_voipgroup_actionBarItems : Theme.key_dialogTextBlack));
        Theme.setDrawableColor(this.shadowDrawable, getShadowDrawableColor());
        this.containerView.invalidate();
        int i3 = 0;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i3 >= attachAlertLayoutArr.length) {
                break;
            }
            AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i3];
            if (attachAlertLayout != null) {
                attachAlertLayout.checkColors();
            }
            i3++;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            this.navBarColorKey = -1;
            this.navBarColor = getThemedColor(Theme.key_dialogBackgroundGray);
            AndroidUtilities.setNavigationBarColor((Dialog) this, getThemedColor(Theme.key_dialogBackground), false);
            AndroidUtilities.setLightNavigationBar(this, ((double) AndroidUtilities.computePerceivedBrightness(this.navBarColor)) > 0.721d);
            return;
        }
        fixNavigationBar(getThemedColor(Theme.key_dialogBackground));
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean onCustomMeasure(View view, int i, int i2) {
        return this.photoLayout.onCustomMeasure(view, i, i2);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        return this.photoLayout.onCustomLayout(view, i, i2, i3, i4);
    }

    public void onPause() {
        int i = 0;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i < attachAlertLayoutArr.length) {
                AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
                if (attachAlertLayout != null) {
                    attachAlertLayout.onPause();
                }
                i++;
            } else {
                this.paused = true;
                return;
            }
        }
    }

    public void onResume() {
        int i = 0;
        this.paused = false;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i >= attachAlertLayoutArr.length) {
                break;
            }
            AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
            if (attachAlertLayout != null) {
                attachAlertLayout.onResume();
            }
            i++;
        }
        if (isShowing()) {
            this.delegate.needEnterComment();
        }
        ButtonsAdapter buttonsAdapter = this.buttonsAdapter;
        if (buttonsAdapter != null) {
            buttonsAdapter.notifyDataSetChanged();
        }
    }

    public void onActivityResultFragment(int i, Intent intent, String str) {
        this.photoLayout.onActivityResultFragment(i, intent, str);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.reloadInlineHints || i == NotificationCenter.attachMenuBotsDidLoad || i == NotificationCenter.quickRepliesUpdated) {
            ButtonsAdapter buttonsAdapter = this.buttonsAdapter;
            if (buttonsAdapter != null) {
                buttonsAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (i == NotificationCenter.currentUserPremiumStatusChanged) {
            this.currentLimit = MessagesController.getInstance(UserConfig.selectedAccount).getCaptionMaxLengthLimit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getScrollOffsetY(int i) {
        AttachAlertLayout attachAlertLayout = this.nextAttachLayout;
        if (attachAlertLayout != null && ((this.currentAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview) || (attachAlertLayout instanceof ChatAttachAlertPhotoLayoutPreview))) {
            int[] iArr = this.scrollOffsetY;
            return AndroidUtilities.lerp(iArr[0], iArr[1], this.translationProgress);
        }
        return this.scrollOffsetY[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateSelectedPosition(int i) {
        int i2;
        float translationY;
        float f;
        float translationY2;
        float f2;
        float translationY3;
        float fMax;
        int i3;
        float floatValue = this.animatorActionBarVisible.getFloatValue();
        AttachAlertLayout attachAlertLayout = i == 0 ? this.currentAttachLayout : this.nextAttachLayout;
        if (attachAlertLayout == null || attachAlertLayout.getVisibility() != 0) {
            return;
        }
        int scrollOffsetY = getScrollOffsetY(i);
        if (attachAlertLayout == this.pollLayout || attachAlertLayout == this.todoLayout) {
            AndroidUtilities.m1124dp(13.0f);
            AndroidUtilities.m1124dp(11.0f);
        } else {
            AndroidUtilities.m1124dp(39.0f);
            AndroidUtilities.m1124dp(43.0f);
        }
        ActionBar.getCurrentActionBarHeight();
        this.cornerRadius = 1.0f - floatValue;
        if (AndroidUtilities.isTablet()) {
            i2 = 16;
        } else {
            Point point = AndroidUtilities.displaySize;
            i2 = point.x > point.y ? 6 : 12;
        }
        float fM1124dp = this.actionBar.getAlpha() != 0.0f ? 0.0f : AndroidUtilities.m1124dp((1.0f - this.headerView.getAlpha()) * 26.0f);
        if (this.menuShowed && this.avatarPicker == 0 && !this.storyMediaPicker) {
            this.selectedMenuItem.setTranslationY(Math.max((ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m1124dp(4.0f)) - AndroidUtilities.m1124dp(i2 + 37), ((scrollOffsetY - AndroidUtilities.m1124dp((i2 * floatValue) + 37.0f)) + fM1124dp) - (this.topCommentContainer.getMeasuredHeight() * this.topCommentContainer.getAlpha())) + this.currentPanTranslationY);
        } else {
            this.selectedMenuItem.setTranslationY(((ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m1124dp(4.0f)) - AndroidUtilities.m1124dp(i2 + 37)) + this.currentPanTranslationY);
        }
        if (this.isPhotoPicker && this.openTransitionFinished) {
            AttachAlertLayout attachAlertLayout2 = this.nextAttachLayout;
            if (attachAlertLayout2 != null && this.currentAttachLayout != null) {
                translationY = Math.min(attachAlertLayout2.getTranslationY(), this.currentAttachLayout.getTranslationY());
            } else if (attachAlertLayout2 != null) {
                translationY = attachAlertLayout2.getTranslationY();
            }
        } else {
            translationY = 0.0f;
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setTranslationY(((ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m1124dp(4.0f)) - AndroidUtilities.m1124dp(i2 + 37)) + this.currentPanTranslationY);
        }
        float fM1124dp2 = ((((scrollOffsetY - AndroidUtilities.m1124dp((i2 * floatValue) + 25.0f)) + fM1124dp) + this.currentPanTranslationY) + translationY) - (this.topCommentContainer.getMeasuredHeight() * this.topCommentContainer.getAlpha());
        this.baseSelectedTextViewTranslationY = fM1124dp2;
        this.headerView.setTranslationY(Math.max(this.currentPanTranslationY, fM1124dp2));
        this.topCommentContainer.setTranslationY(Math.max(ActionBar.getCurrentActionBarHeight() + this.currentPanTranslationY, this.baseSelectedTextViewTranslationY + (AndroidUtilities.m1124dp(26.0f) * this.headerView.getAlpha()) + AndroidUtilities.m1124dp(8.0f)));
        if (this.captionAbove) {
            updateCommentTextViewPosition();
        }
        checkUi_writeButtonContainerY();
        int i4 = 59;
        if (this.pollLayout == null) {
            f = 0.0f;
            translationY2 = 0.0f;
        } else {
            if (AndroidUtilities.isTablet()) {
                i3 = 63;
            } else {
                Point point2 = AndroidUtilities.displaySize;
                i3 = point2.x > point2.y ? 53 : 59;
            }
            ChatAttachAlertPollLayout chatAttachAlertPollLayout = this.pollLayout;
            if (chatAttachAlertPollLayout == this.nextAttachLayout) {
                translationY2 = (chatAttachAlertPollLayout.getTranslationY() + getScrollOffsetY(1)) - AndroidUtilities.m1124dp(((i3 * floatValue) + 7.0f) - (r2 * 12.0f));
                f = this.translationProgress;
            } else if (chatAttachAlertPollLayout == this.currentAttachLayout) {
                translationY2 = (chatAttachAlertPollLayout.getTranslationY() + getScrollOffsetY(0)) - AndroidUtilities.m1124dp(((i3 * floatValue) + 7.0f) - (r2 * 12.0f));
                f = this.nextAttachLayout == null ? 1.0f : 1.0f - this.translationProgress;
            }
        }
        if (this.todoLayout == null) {
            f2 = 0.0f;
            translationY3 = 0.0f;
        } else {
            if (AndroidUtilities.isTablet()) {
                i4 = 63;
            } else {
                Point point3 = AndroidUtilities.displaySize;
                if (point3.x > point3.y) {
                    i4 = 53;
                }
            }
            ChatAttachAlertPollLayout chatAttachAlertPollLayout2 = this.todoLayout;
            if (chatAttachAlertPollLayout2 == this.nextAttachLayout) {
                translationY3 = (chatAttachAlertPollLayout2.getTranslationY() + getScrollOffsetY(1)) - AndroidUtilities.m1124dp(((i4 * floatValue) + 7.0f) - (r2 * 12.0f));
                f2 = this.translationProgress;
            } else if (chatAttachAlertPollLayout2 == this.currentAttachLayout) {
                translationY3 = (chatAttachAlertPollLayout2.getTranslationY() + getScrollOffsetY(0)) - AndroidUtilities.m1124dp(((i4 * floatValue) + 7.0f) - (r2 * 12.0f));
                f2 = this.nextAttachLayout != null ? 1.0f - this.translationProgress : 1.0f;
            }
        }
        ActionBarMenuItem actionBarMenuItem2 = this.doneItem;
        if (actionBarMenuItem2 != null) {
            if (f > 0.0f && f2 > 0.0f) {
                fMax = AndroidUtilities.lerp(translationY2, translationY3, f2);
            } else {
                if (f <= 0.0f) {
                    translationY2 = 0.0f;
                }
                if (f2 <= 0.0f) {
                    translationY3 = 0.0f;
                }
                fMax = Math.max(translationY2, translationY3);
            }
            actionBarMenuItem2.setTranslationY(Math.max(0.0f, fMax) + this.currentPanTranslationY);
            this.doneItem.setTranslationX(-AndroidUtilities.m1124dp((r2 * 12.0f) + 12.0f));
        }
        this.doneItemAlphaByLayout = Math.max(f2, f);
        checkUi_doneItemVisibility();
    }

    private void updateActionBarVisibility(final boolean z, boolean z2) {
        AttachAlertLayout attachAlertLayout;
        this.animatorActionBarVisible.setValue(z, true);
        if (!(z && this.actionBar.getTag() == null) && (z || this.actionBar.getTag() == null)) {
            return;
        }
        this.actionBar.setTag(z ? 1 : null);
        AnimatorSet animatorSet = this.actionBarAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.actionBarAnimation = null;
        }
        boolean z3 = (this.isPhotoPicker || this.storyMediaPicker || (this.avatarPicker == 0 && this.menuShowed) || this.currentAttachLayout != this.photoLayout || (!this.photosEnabled && !this.videosEnabled)) ? false : true;
        if (this.currentAttachLayout == this.restrictedLayout) {
            z3 = false;
        }
        if (z) {
            if (z3) {
                this.selectedMenuItem.setVisibility(0);
                this.selectedMenuItem.setClickable(true);
            }
        } else if (this.typeButtonsAvailable && this.frameLayout2.getTag() == null) {
            this.buttonsRecyclerViewWrapper.setVisibility(0);
        }
        if (getWindow() != null && this.baseFragment != null) {
            if (z) {
                AndroidUtilities.setLightStatusBar(getWindow(), isLightStatusBar());
            } else {
                AndroidUtilities.setLightStatusBar(getWindow(), this.baseFragment.isLightStatusBar());
            }
        }
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionBarAnimation = animatorSet2;
            animatorSet2.setDuration((long) (Math.abs((z ? 1.0f : 0.0f) - this.actionBar.getAlpha()) * 180.0f));
            ArrayList arrayList = new ArrayList();
            ActionBar actionBar = this.actionBar;
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(actionBar, (Property<ActionBar, Float>) property, z ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.actionBarShadow, (Property<View, Float>) property, z ? 1.0f : 0.0f));
            if (z3) {
                arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) property, z ? 1.0f : 0.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) View.SCALE_X, z ? 1.0f : 0.6f));
                arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) View.SCALE_Y, z ? 1.0f : 0.6f));
            }
            this.actionBarAnimation.playTogether(arrayList);
            this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.33
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ChatAttachAlert.this.actionBarAnimation != null) {
                        if (z) {
                            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                            if (chatAttachAlert.typeButtonsAvailable) {
                                if (chatAttachAlert.currentAttachLayout == null || ChatAttachAlert.this.currentAttachLayout.shouldHideBottomButtons()) {
                                    ChatAttachAlert.this.buttonsRecyclerViewWrapper.setVisibility(4);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        ActionBarMenuItem actionBarMenuItem = ChatAttachAlert.this.searchItem;
                        if (actionBarMenuItem != null) {
                            actionBarMenuItem.setVisibility(4);
                        }
                        ChatAttachAlert chatAttachAlert2 = ChatAttachAlert.this;
                        if (chatAttachAlert2.avatarPicker == 0 && chatAttachAlert2.menuShowed) {
                            return;
                        }
                        ChatAttachAlert.this.selectedMenuItem.setVisibility(4);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ChatAttachAlert.this.actionBarAnimation = null;
                }
            });
            this.actionBarAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.actionBarAnimation.setDuration(380L);
            this.actionBarAnimation.start();
        } else {
            if (z && this.typeButtonsAvailable && ((attachAlertLayout = this.currentAttachLayout) == null || attachAlertLayout.shouldHideBottomButtons())) {
                this.buttonsRecyclerViewWrapper.setVisibility(4);
            }
            this.actionBar.setAlpha(z ? 1.0f : 0.0f);
            this.actionBarShadow.setAlpha(z ? 1.0f : 0.0f);
            if (z3) {
                this.selectedMenuItem.setAlpha(z ? 1.0f : 0.0f);
                this.selectedMenuItem.setScaleX(z ? 1.0f : 0.6f);
                this.selectedMenuItem.setScaleY(z ? 1.0f : 0.6f);
            }
            if (!z) {
                ActionBarMenuItem actionBarMenuItem = this.searchItem;
                if (actionBarMenuItem != null) {
                    actionBarMenuItem.setVisibility(4);
                }
                if (this.avatarPicker != 0 || !this.menuShowed) {
                    this.selectedMenuItem.setVisibility(4);
                }
            }
        }
        updateCameraButtonVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCameraButtonVisibility() {
        AttachAlertLayout attachAlertLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout;
        if (this.cameraFloatingButton == null) {
            return;
        }
        boolean z = ExteraConfig.hideCameraTile && ((attachAlertLayout = this.nextAttachLayout) != null ? attachAlertLayout == this.photoLayout : this.currentAttachLayout == this.photoLayout) && (chatAttachAlertPhotoLayout = this.photoLayout) != null && chatAttachAlertPhotoLayout.deviceHasGoodCamera && !chatAttachAlertPhotoLayout.cameraOpened && !this.isPhotoPicker && chatAttachAlertPhotoLayout.getSelectedItemsCount() == 0;
        float alpha = this.buttonsRecyclerViewWrapper.getAlpha();
        if (this.buttonsRecyclerViewWrapper.getVisibility() != 0) {
            alpha = 0.0f;
        }
        float fMax = Math.max(this.buttonsRecyclerViewWrapper.getTranslationY(), (1.0f - alpha) * AndroidUtilities.m1124dp(70.0f));
        if (z) {
            if (!this.cameraFloatingButton.getButtonVisible()) {
                this.cameraFloatingButton.setTranslationY(fMax);
                this.cameraFloatingButton.setButtonVisible(true, true);
                return;
            } else {
                this.cameraFloatingButton.setTranslationY(fMax);
                return;
            }
        }
        if (this.cameraFloatingButton.getButtonVisible()) {
            this.cameraFloatingButton.setButtonVisible(false, true);
        }
    }

    public void onCameraStateChanged() {
        updateCameraButtonVisibility();
    }

    public void updateLayout(AttachAlertLayout attachAlertLayout, boolean z, int i) {
        if (attachAlertLayout == null) {
            return;
        }
        DownscaleScrollableNoiseSuppressor downscaleScrollableNoiseSuppressor = this.scrollableViewNoiseSuppressor;
        if (downscaleScrollableNoiseSuppressor != null && Build.VERSION.SDK_INT >= 31) {
            downscaleScrollableNoiseSuppressor.onScrolled(0.0f, i);
            blur3_InvalidateBlur();
        }
        int currentItemTop = attachAlertLayout.getCurrentItemTop();
        if (currentItemTop == Integer.MAX_VALUE) {
            return;
        }
        boolean z2 = false;
        boolean z3 = attachAlertLayout == this.currentAttachLayout && currentItemTop <= attachAlertLayout.getButtonsHideOffset();
        this.pinnedToTop = z3;
        if (attachAlertLayout == this.currentAttachLayout) {
            updateActionBarVisibility(z3, true);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) attachAlertLayout.getLayoutParams();
        int iM1124dp = currentItemTop + ((layoutParams == null ? 0 : layoutParams.topMargin) - AndroidUtilities.m1124dp(11.0f));
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        int i2 = attachAlertLayout2 == attachAlertLayout ? 0 : 1;
        if ((attachAlertLayout2 instanceof ChatAttachAlertPhotoLayoutPreview) || (this.nextAttachLayout instanceof ChatAttachAlertPhotoLayoutPreview)) {
            Object obj = this.viewChangeAnimator;
            if ((obj instanceof SpringAnimation) && ((SpringAnimation) obj).isRunning()) {
                z2 = true;
            }
        }
        int[] iArr = this.scrollOffsetY;
        int i3 = iArr[i2];
        if (i3 != iM1124dp || z2) {
            this.previousScrollOffsetY = i3;
            iArr[i2] = iM1124dp;
            updateSelectedPosition(i2);
            this.containerView.invalidate();
        } else if (i != 0) {
            this.previousScrollOffsetY = i3;
        }
        updateCameraButtonVisibility();
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateCountButton(int i) {
        boolean z;
        ActionBarMenuItem actionBarMenuItem;
        ActionBarMenuItem actionBarMenuItem2;
        if (this.viewChangeAnimator != null) {
            return;
        }
        int selectedItemsCount = this.currentAttachLayout.getSelectedItemsCount();
        if (selectedItemsCount == 0) {
            this.writeButton.setCount(0, i != 0);
            showCommentTextView(false, i != 0);
        } else {
            if (!showCommentTextView(true, i != 0) && i != 0) {
                this.writeButton.setCount(selectedItemsCount, true);
                this.writeButton.bounceCount();
            } else {
                this.writeButton.setCount(selectedItemsCount, i != 0);
                this.writeButton.bounceCount();
            }
        }
        this.currentAttachLayout.onSelectedItemsCountChanged(selectedItemsCount);
        if (this.currentAttachLayout == this.photoLayout && (((this.baseFragment instanceof ChatActivity) || this.avatarPicker != 0 || this.storyMediaPicker) && ((selectedItemsCount == 0 && this.menuShowed) || ((selectedItemsCount != 0 || this.avatarPicker != 0 || this.storyMediaPicker) && !this.menuShowed)))) {
            this.menuShowed = (selectedItemsCount == 0 && this.avatarPicker == 0 && !this.storyMediaPicker) ? false : true;
            AnimatorSet animatorSet = this.menuAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.menuAnimator = null;
            }
            if (this.avatarPicker == 0 || this.searchItem == null || this.actionBar.getTag() == null) {
                z = false;
                if (!this.menuShowed) {
                    if (this.avatarPicker == 0 && !this.storyMediaPicker) {
                        this.selectedMenuItem.setVisibility(0);
                        this.selectedMenuItem.setClickable(true);
                    }
                    this.headerView.setVisibility(0);
                } else if (this.actionBar.getTag() != null && (actionBarMenuItem = this.searchItem) != null) {
                    actionBarMenuItem.setVisibility(0);
                }
                if (i != 0) {
                    if (this.actionBar.getTag() == null && this.avatarPicker == 0 && !this.storyMediaPicker) {
                        this.selectedMenuItem.setAlpha(this.menuShowed ? 1.0f : 0.0f);
                        this.selectedMenuItem.setScaleX(this.menuShowed ? 1.0f : 0.6f);
                        this.selectedMenuItem.setScaleY(this.menuShowed ? 1.0f : 0.6f);
                    }
                    this.headerView.setAlpha(this.menuShowed ? 1.0f : 0.0f);
                    if (z) {
                        this.searchItem.setAlpha(this.menuShowed ? 0.0f : 1.0f);
                    }
                    if (this.menuShowed && (actionBarMenuItem2 = this.searchItem) != null) {
                        actionBarMenuItem2.setVisibility(4);
                    }
                } else {
                    this.menuAnimator = new AnimatorSet();
                    ArrayList arrayList = new ArrayList();
                    if (this.actionBar.getTag() == null && this.avatarPicker == 0 && !this.storyMediaPicker) {
                        arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) View.ALPHA, this.menuShowed ? 1.0f : 0.0f));
                        arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) View.SCALE_X, this.menuShowed ? 1.0f : 0.6f));
                        arrayList.add(ObjectAnimator.ofFloat(this.selectedMenuItem, (Property<ActionBarMenuItem, Float>) View.SCALE_Y, this.menuShowed ? 1.0f : 0.6f));
                    }
                    FrameLayout frameLayout = this.headerView;
                    Property property = View.ALPHA;
                    arrayList.add(ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property, this.menuShowed ? 1.0f : 0.0f));
                    if (z) {
                        arrayList.add(ObjectAnimator.ofFloat(this.searchItem, (Property<ActionBarMenuItem, Float>) property, this.menuShowed ? 0.0f : 1.0f));
                    }
                    this.menuAnimator.playTogether(arrayList);
                    this.menuAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlert.34
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ChatAttachAlert.this.menuAnimator = null;
                            if (!ChatAttachAlert.this.menuShowed) {
                                if (ChatAttachAlert.this.actionBar.getTag() == null) {
                                    ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
                                    if (chatAttachAlert.avatarPicker == 0 && !chatAttachAlert.storyMediaPicker) {
                                        chatAttachAlert.selectedMenuItem.setVisibility(4);
                                    }
                                }
                                ChatAttachAlert.this.headerView.setVisibility(4);
                                return;
                            }
                            ActionBarMenuItem actionBarMenuItem3 = ChatAttachAlert.this.searchItem;
                            if (actionBarMenuItem3 != null) {
                                actionBarMenuItem3.setVisibility(4);
                            }
                        }
                    });
                    this.menuAnimator.setDuration(180L);
                    this.menuAnimator.start();
                }
            } else {
                BaseFragment baseFragment = this.baseFragment;
                if ((baseFragment instanceof ChatActivity) && ((ChatActivity) baseFragment).allowSendGifs()) {
                    z = true;
                }
                if (!this.menuShowed) {
                }
                if (i != 0) {
                }
            }
        }
        MessageObject messageObject = this.editingMessageObject;
        long sendPaidMessagesStars = (messageObject == null || messageObject.needResendWhenEdit()) ? MessagesController.getInstance(this.currentAccount).getSendPaidMessagesStars(getDialogId()) : 0L;
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        this.writeButton.setStarsPrice(sendPaidMessagesStars, (attachAlertLayout != null ? attachAlertLayout.getSelectedItemsCount() : 0) + getAdditionalMessagesCount());
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) editTextEmoji.getLayoutParams();
            int iMax = Math.max(AndroidUtilities.m1124dp(48.0f), this.writeButton.width());
            if (marginLayoutParams.rightMargin != iMax) {
                marginLayoutParams.rightMargin = iMax;
                this.commentTextView.setLayoutParams(marginLayoutParams);
            }
        }
    }

    public void setDelegate(ChatAttachViewDelegate chatAttachViewDelegate) {
        this.delegate = chatAttachViewDelegate;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init() {
        TLRPC.Chat chat;
        TLRPC.User user;
        AttachAlertLayout attachAlertLayout;
        ChatActivityEnterView.SendButton sendButton = this.writeButton;
        this.effectId = 0L;
        sendButton.setEffect(0L);
        this.botButtonWasVisible = false;
        this.botButtonProgressWasVisible = false;
        this.botMainButtonOffsetY = 0.0f;
        this.botMainButtonTextView.setVisibility(8);
        this.botProgressView.setAlpha(0.0f);
        this.botProgressView.setScaleX(0.1f);
        this.botProgressView.setScaleY(0.1f);
        this.botProgressView.setVisibility(8);
        this.buttonsRecyclerViewWrapper.setAlpha(1.0f);
        this.buttonsRecyclerViewWrapper.setTranslationY(0.0f);
        for (int i = 0; i < this.botAttachLayouts.size(); i++) {
            ((ChatAttachAlertBotWebViewLayout) this.botAttachLayouts.valueAt(i)).setMeasureOffsetY(0);
        }
        if (this.avatarPicker != 2) {
            BaseFragment baseFragment = this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                chat = ((ChatActivity) baseFragment).getCurrentChat();
                user = ((ChatActivity) this.baseFragment).getCurrentUser();
            } else {
                long j = this.dialogId;
                if (j >= 0) {
                    user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
                    chat = null;
                } else if (j < 0) {
                    chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
                    user = null;
                } else {
                    chat = null;
                    user = null;
                }
            }
        }
        if (((this.baseFragment instanceof ChatActivity) && this.avatarPicker != 2) || chat != null || user != null) {
            if (chat != null) {
                this.photosEnabled = ChatObject.canSendPhoto(chat);
                this.videosEnabled = ChatObject.canSendVideo(chat);
                this.musicEnabled = ChatObject.canSendMusic(chat);
                this.pollsEnabled = ChatObject.canSendPolls(chat);
                this.todoEnabled = !ChatObject.isChannelAndNotMegaGroup(chat) && ChatObject.canSendPolls(chat);
                this.plainTextEnabled = ChatObject.canSendPlain(chat);
                this.documentsEnabled = ChatObject.canSendDocument(chat);
            } else {
                this.pollsEnabled = UserObject.isBot(user) || UserObject.isUserSelf(user);
                BaseFragment baseFragment2 = this.baseFragment;
                this.todoEnabled = !(baseFragment2 instanceof ChatActivity) || ((ChatActivity) baseFragment2).getCurrentEncryptedChat() == null;
            }
            this.todoEnabled &= UserConfig.getInstance(this.currentAccount).isPremium();
        }
        if (!(this.baseFragment instanceof ChatActivity) || this.avatarPicker == 2) {
            this.commentTextView.setVisibility(this.allowEnterCaption ? 0 : 4);
        }
        this.photoLayout.onInit(this.videosEnabled, this.photosEnabled, this.documentsEnabled);
        this.commentTextView.hidePopup(true);
        this.topCommentTextView.hidePopup(true);
        this.enterCommentEventSent = false;
        setFocusable(false);
        if (this.isStoryLocationPicker || this.isBizLocationPicker) {
            if (this.locationLayout == null) {
                AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
                ChatAttachAlertLocationLayout chatAttachAlertLocationLayout = new ChatAttachAlertLocationLayout(this, getContext(), this.resourcesProvider);
                this.locationLayout = chatAttachAlertLocationLayout;
                attachAlertLayoutArr[5] = chatAttachAlertLocationLayout;
                chatAttachAlertLocationLayout.setDelegate(new ChatAttachAlertLocationLayout.LocationActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda31
                    @Override // org.telegram.ui.Components.ChatAttachAlertLocationLayout.LocationActivityDelegate
                    public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i2, boolean z, int i3, long j2) {
                        this.f$0.lambda$init$53(messageMedia, i2, z, i3, j2);
                    }
                });
            }
            this.selectedId = 5L;
            attachAlertLayout = this.locationLayout;
        } else if (this.isStoryAudioPicker) {
            openAudioLayout(false);
            attachAlertLayout = this.audioLayout;
            this.selectedId = 3L;
        } else if (this.isSoundPicker) {
            openDocumentsLayout(false);
            attachAlertLayout = this.documentLayout;
            this.selectedId = 4L;
        } else {
            MessageObject messageObject = this.editingMessageObject;
            if (messageObject != null) {
                int i2 = this.editType;
                if (i2 == -1) {
                    this.typeButtonsAvailable = true;
                    if (messageObject.isMusic()) {
                        openAudioLayout(false);
                        attachAlertLayout = this.audioLayout;
                        this.selectedId = 3L;
                    } else if (this.editingMessageObject.isDocument()) {
                        openDocumentsLayout(false);
                        attachAlertLayout = this.documentLayout;
                        this.selectedId = 4L;
                    } else {
                        attachAlertLayout = this.photoLayout;
                        this.selectedId = 1L;
                    }
                } else {
                    if (i2 == 2) {
                        openAudioLayout(false);
                        attachAlertLayout = this.audioLayout;
                        this.selectedId = 3L;
                    } else if (i2 == 1) {
                        openDocumentsLayout(false);
                        attachAlertLayout = this.documentLayout;
                        this.selectedId = 4L;
                    } else {
                        attachAlertLayout = this.photoLayout;
                        this.selectedId = 1L;
                    }
                    this.typeButtonsAvailable = false;
                }
            } else {
                attachAlertLayout = this.photoLayout;
                this.typeButtonsAvailable = this.avatarPicker == 0 && !this.storyMediaPicker;
                this.selectedId = 1L;
            }
        }
        this.buttonsRecyclerViewWrapper.setVisibility(this.typeButtonsAvailable ? 0 : 8);
        if (this.typeButtonsAvailable) {
            this.buttonsRecyclerViewWrapper.setAlpha(1.0f);
            this.buttonsRecyclerViewWrapper.setTranslationY(0.0f);
        }
        if (this.currentAttachLayout != attachAlertLayout) {
            if (this.actionBar.isSearchFieldVisible()) {
                this.actionBar.closeSearchField();
            }
            this.containerView.removeView(this.currentAttachLayout);
            this.currentAttachLayout.onHide();
            this.currentAttachLayout.setVisibility(8);
            this.currentAttachLayout.onHidden();
            this.currentAttachLayout = attachAlertLayout;
            setAllowNestedScroll(true);
            if (this.currentAttachLayout.getParent() == null) {
                this.containerView.addView(this.currentAttachLayout, 0, LayoutHelper.createFrame(-1, -1.0f));
            }
            attachAlertLayout.setAlpha(1.0f);
            attachAlertLayout.setVisibility(0);
            attachAlertLayout.onShow(null);
            attachAlertLayout.onShown();
            this.actionBar.setVisibility(attachAlertLayout.needsActionBar() != 0 ? 0 : 4);
            this.actionBarShadow.setVisibility(this.actionBar.getVisibility());
            setCaptionAbove(this.captionAbove, false);
            updateDoneItemEnabled();
            updateCameraButtonVisibility();
        }
        AttachAlertLayout attachAlertLayout2 = this.currentAttachLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (attachAlertLayout2 != chatAttachAlertPhotoLayout) {
            chatAttachAlertPhotoLayout.setCheckCameraWhenShown(true);
        }
        updateCountButton(0);
        this.buttonsAdapter.notifyDataSetChanged();
        getCommentView().setText(_UrlKt.FRAGMENT_ENCODE_SET);
        this.buttonsLayoutManager.scrollToPositionWithOffset(0, 1000000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$53(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        ((ChatActivity) this.baseFragment).didSelectLocation(messageMedia, i, z, i2, 0L);
    }

    public void onDestroy() {
        int i = 0;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i >= attachAlertLayoutArr.length) {
                break;
            }
            AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
            if (attachAlertLayout != null) {
                attachAlertLayout.onDestroy();
            }
            i++;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.reloadInlineHints);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.attachMenuBotsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.quickRepliesUpdated);
        this.destroyed = true;
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        EditTextEmoji editTextEmoji2 = this.topCommentTextView;
        if (editTextEmoji2 != null) {
            editTextEmoji2.onDestroy();
        }
        MentionsContainerView mentionsContainerView = this.mentionContainer;
        if (mentionsContainerView != null) {
            if (mentionsContainerView.getAdapter() != null) {
                this.mentionContainer.getAdapter().onDestroy();
            }
            this.mentionContainer.onDetachedFromWindow();
            this.mentionContainer = null;
        }
        PhotoViewer.getInstance().nullifyParentAlert(this);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        if (this.baseFragment instanceof ChatActivity) {
            int i = MediaController.VIDEO_BITRATE_1080;
        } else {
            int i2 = MediaController.VIDEO_BITRATE_1080;
        }
        this.currentAttachLayout.onOpenAnimationEnd();
        AndroidUtilities.makeAccessibilityAnnouncement(LocaleController.getString("AccDescrAttachButton", C2888R.string.AccDescrAttachButton));
        this.openTransitionFinished = true;
        if (this.videosEnabled || this.photosEnabled) {
            return;
        }
        checkCanRemoveRestrictionsByBoosts();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void setAllowDrawContent(boolean z) {
        super.setAllowDrawContent(z);
        this.currentAttachLayout.onContainerTranslationUpdated(this.currentPanTranslationY);
        if (this.allowDrawContent != z) {
            this.allowDrawContent = z;
            AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
            ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
            if (attachAlertLayout != chatAttachAlertPhotoLayout || chatAttachAlertPhotoLayout == null || chatAttachAlertPhotoLayout.cameraExpanded) {
                return;
            }
            chatAttachAlertPhotoLayout.pauseCamera(!z || this.sent);
        }
    }

    public void setAvatarPicker(int i, boolean z, Utilities.Callback0Return callback0Return) {
        this.avatarPicker = i;
        this.avatarSearch = z;
        this.avatarWithBulletin = callback0Return;
        if (i != 0) {
            this.typeButtonsAvailable = false;
            AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
            if (attachAlertLayout == null || attachAlertLayout == this.photoLayout) {
                this.buttonsRecyclerViewWrapper.setVisibility(8);
            }
            if (this.avatarPicker == 2) {
                this.selectedTextView.setText(LocaleController.getString(C2888R.string.ChoosePhotoOrVideo));
            } else {
                this.selectedTextView.setText(LocaleController.getString(C2888R.string.ChoosePhoto));
            }
        } else {
            this.typeButtonsAvailable = true;
        }
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout != null) {
            chatAttachAlertPhotoLayout.updateAvatarPicker();
        }
    }

    public void setStoryMediaPicker() {
        this.storyMediaPicker = true;
        this.typeButtonsAvailable = false;
        this.selectedTextView.setText(LocaleController.getString(C2888R.string.ChoosePhotoOrVideo));
    }

    public void enableStickerMode(Utilities.Callback2 callback2) {
        this.selectedTextView.setText(LocaleController.getString(C2888R.string.ChoosePhotoForSticker));
        this.typeButtonsAvailable = false;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
        this.avatarPicker = 1;
        this.isPhotoPicker = true;
        this.isStickerMode = true;
        this.customStickerHandler = callback2;
        if (this.optionsItem != null) {
            this.selectedTextView.setTranslationY(-AndroidUtilities.m1124dp(8.0f));
            this.optionsItem.setVisibility(0);
            this.optionsItem.setClickable(true);
            this.optionsItem.setAlpha(1.0f);
            this.optionsItem.setScaleX(1.0f);
            this.optionsItem.setScaleY(1.0f);
        }
    }

    public void enableDefaultMode() {
        this.typeButtonsAvailable = true;
        this.buttonsRecyclerViewWrapper.setVisibility(0);
        this.avatarPicker = 0;
        this.isPhotoPicker = false;
        this.isStickerMode = false;
        this.customStickerHandler = null;
        if (this.optionsItem != null) {
            this.selectedTextView.setTranslationY(0.0f);
            this.optionsItem.setVisibility(8);
        }
    }

    public TextView getSelectedTextView() {
        return this.selectedTextView;
    }

    public void setSoundPicker() {
        this.isSoundPicker = true;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
        this.selectedTextView.setText(LocaleController.getString(C2888R.string.ChoosePhotoOrVideo));
    }

    public void setStoryLocationPicker() {
        this.isStoryLocationPicker = true;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
    }

    public void setStoryLocationPicker(boolean z, File file) {
        this.storyLocationPickerFileIsVideo = z;
        this.storyLocationPickerPhotoFile = file;
        this.isStoryLocationPicker = true;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
    }

    public void setStoryLocationPicker(double d, double d2) {
        this.storyLocationPickerLatLong = new double[]{d, d2};
        this.isStoryLocationPicker = true;
        this.buttonsRecyclerViewWrapper.setVisibility(8);
    }

    public void setMaxSelectedPhotos(int i, boolean z) {
        if (this.editingMessageObject != null) {
            return;
        }
        this.maxSelectedPhotos = i;
        this.allowOrder = z;
    }

    public void setOpenWithFrontFaceCamera(boolean z) {
        this.openWithFrontFaceCamera = z;
    }

    public ChatAttachAlertPhotoLayout getPhotoLayout() {
        return this.photoLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkPhotoAndCameraPermission(Context context) {
        return Build.VERSION.SDK_INT >= 33 ? ContextCompat.checkSelfPermission(context, "android.permission.READ_MEDIA_IMAGES") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.READ_MEDIA_VIDEO") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0 : ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkPhotoAndDocumentsPermission(Context context) {
        return Build.VERSION.SDK_INT >= 33 ? ContextCompat.checkSelfPermission(context, "android.permission.READ_MEDIA_IMAGES") == 0 && ContextCompat.checkSelfPermission(context, "android.permission.READ_MEDIA_VIDEO") == 0 : ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkContactsPermission(Context context) {
        return ContextCompat.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean checkMusicPermission(Context context) {
        return ContextCompat.checkSelfPermission(context, Build.VERSION.SDK_INT >= 33 ? "android.permission.READ_MEDIA_AUDIO" : "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    private class ButtonsAdapter extends RecyclerListView.SelectionAdapter {
        private int attachBotsEndRow;
        private int attachBotsStartRow;
        private List attachMenuBots = new ArrayList();
        private int buttonsCount;
        private int contactButton;
        private int documentButton;
        private int galleryButton;
        private int locationButton;
        private Context mContext;
        private int musicButton;
        private int pollButton;
        private int quickRepliesButton;
        private int todoButton;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public ButtonsAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View attachButton;
            if (i == 0) {
                attachButton = ChatAttachAlert.this.new AttachButton(this.mContext);
            } else {
                attachButton = ChatAttachAlert.this.new AttachBotButton(this.mContext);
            }
            attachButton.setImportantForAccessibility(1);
            attachButton.setFocusable(true);
            attachButton.setLayoutParams(new RecyclerView.LayoutParams(-2, -1));
            return new RecyclerListView.Holder(attachButton);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0190  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            boolean z2;
            boolean zCheckMusicPermission;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    return;
                }
                AttachBotButton attachBotButton = (AttachBotButton) viewHolder.itemView;
                attachBotButton.glassTabView.onPreBind();
                int i2 = this.attachBotsStartRow;
                if (i >= i2 && i < this.attachBotsEndRow) {
                    int i3 = i - i2;
                    attachBotButton.setTag(Integer.valueOf(i3));
                    TLRPC.TL_attachMenuBot tL_attachMenuBot = (TLRPC.TL_attachMenuBot) this.attachMenuBots.get(i3);
                    attachBotButton.setAttachBot(MessagesController.getInstance(ChatAttachAlert.this.currentAccount).getUser(Long.valueOf(tL_attachMenuBot.bot_id)), tL_attachMenuBot);
                    return;
                }
                int i4 = i - this.buttonsCount;
                attachBotButton.setTag(Integer.valueOf(i4));
                attachBotButton.setUser(MessagesController.getInstance(ChatAttachAlert.this.currentAccount).getUser(Long.valueOf(MediaDataController.getInstance(ChatAttachAlert.this.currentAccount).inlineBots.get(i4).peer.user_id)));
                return;
            }
            AttachButton attachButton = (AttachButton) viewHolder.itemView;
            attachButton.glassTabView.onPreBind();
            if (i == this.galleryButton) {
                attachButton.setTextAndIcon(1, LocaleController.getString(C2888R.string.ChatGallery), GlassTabView.TabAnimation.GALLERY);
                attachButton.setTag(1);
                zCheckMusicPermission = ChatAttachAlert.checkPhotoAndCameraPermission(this.mContext);
            } else if (i == this.documentButton) {
                attachButton.setTextAndIcon(4, LocaleController.getString(C2888R.string.ChatDocument), GlassTabView.TabAnimation.FILES);
                attachButton.setTag(4);
                zCheckMusicPermission = ChatAttachAlert.checkPhotoAndDocumentsPermission(this.mContext);
            } else {
                if (i == this.locationButton) {
                    attachButton.setTextAndIcon(6, LocaleController.getString(C2888R.string.ChatLocation), GlassTabView.TabAnimation.LOCATION);
                    attachButton.setTag(6);
                } else if (i == this.musicButton) {
                    attachButton.setTextAndIcon(3, LocaleController.getString(C2888R.string.AttachMusic), GlassTabView.TabAnimation.MUSIC);
                    attachButton.setTag(3);
                    zCheckMusicPermission = ChatAttachAlert.checkMusicPermission(this.mContext);
                } else if (i == this.pollButton) {
                    attachButton.setTextAndIcon(9, LocaleController.getString(C2888R.string.Poll), GlassTabView.TabAnimation.POLL);
                    attachButton.setTag(9);
                } else {
                    if (i == this.contactButton) {
                        attachButton.setTextAndIcon(5, LocaleController.getString(C2888R.string.AttachContact), GlassTabView.TabAnimation.CONTACTS);
                        attachButton.setTag(5);
                        z2 = UserConfig.getInstance(ChatAttachAlert.this.currentAccount).syncContacts && !ChatAttachAlert.checkContactsPermission(this.mContext);
                        z = false;
                        attachButton.glassTabView.setCounter(!z2 ? "!" : null, z2, false);
                        attachButton.glassTabView.setPremiumBadge((z || UserConfig.getInstance(ChatAttachAlert.this.currentAccount).isPremium()) ? false : true);
                    }
                    if (i == this.quickRepliesButton) {
                        attachButton.setTextAndIcon(11, LocaleController.getString(C2888R.string.AttachQuickReplies), GlassTabView.TabAnimation.REPLIES);
                        attachButton.setTag(11);
                    } else if (i == this.todoButton) {
                        attachButton.setTextAndIcon(12, LocaleController.getString(C2888R.string.Todo), GlassTabView.TabAnimation.CHECKLIST);
                        attachButton.setTag(12);
                    }
                    z = true;
                    z2 = false;
                    attachButton.glassTabView.setCounter(!z2 ? "!" : null, z2, false);
                    attachButton.glassTabView.setPremiumBadge((z || UserConfig.getInstance(ChatAttachAlert.this.currentAccount).isPremium()) ? false : true);
                }
                z2 = false;
                z = false;
                attachButton.glassTabView.setCounter(!z2 ? "!" : null, z2, false);
                attachButton.glassTabView.setPremiumBadge((z || UserConfig.getInstance(ChatAttachAlert.this.currentAccount).isPremium()) ? false : true);
            }
            z2 = !zCheckMusicPermission;
            z = false;
            attachButton.glassTabView.setCounter(!z2 ? "!" : null, z2, false);
            attachButton.glassTabView.setPremiumBadge((z || UserConfig.getInstance(ChatAttachAlert.this.currentAccount).isPremium()) ? false : true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            ChatAttachAlert.this.applyAttachButtonColors(viewHolder.itemView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i = this.buttonsCount;
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            return (chatAttachAlert.editingMessageObject == null && (chatAttachAlert.baseFragment instanceof ChatActivity)) ? i + MediaDataController.getInstance(chatAttachAlert.currentAccount).inlineBots.size() : i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            int i = 0;
            this.buttonsCount = 0;
            this.galleryButton = -1;
            this.documentButton = -1;
            this.musicButton = -1;
            this.pollButton = -1;
            this.todoButton = -1;
            this.contactButton = -1;
            this.quickRepliesButton = -1;
            this.locationButton = -1;
            this.attachBotsStartRow = -1;
            this.attachBotsEndRow = -1;
            ChatAttachAlert chatAttachAlert = ChatAttachAlert.this;
            BaseFragment baseFragment = chatAttachAlert.baseFragment;
            if (!(baseFragment instanceof ChatActivity)) {
                this.galleryButton = 0;
                int i2 = 1 + 1;
                this.buttonsCount = i2;
                this.documentButton = 1;
                if (chatAttachAlert.allowEnterCaption) {
                    this.buttonsCount = i2 + 1;
                    this.musicButton = i2;
                }
            } else if (chatAttachAlert.editingMessageObject != null) {
                if (chatAttachAlert.editType == -1) {
                    int i3 = this.buttonsCount;
                    this.galleryButton = i3;
                    this.documentButton = i3 + 1;
                    this.buttonsCount = i3 + 3;
                    this.musicButton = i3 + 2;
                } else {
                    if (ChatAttachAlert.this.editType == 0) {
                        int i4 = this.buttonsCount;
                        this.buttonsCount = i4 + 1;
                        this.galleryButton = i4;
                    }
                    if (ChatAttachAlert.this.editType == 1) {
                        int i5 = this.buttonsCount;
                        this.buttonsCount = i5 + 1;
                        this.documentButton = i5;
                    }
                    if (ChatAttachAlert.this.editType == 2) {
                        int i6 = this.buttonsCount;
                        this.buttonsCount = i6 + 1;
                        this.musicButton = i6;
                    }
                }
            } else {
                TLRPC.User currentUser = baseFragment instanceof ChatActivity ? ((ChatActivity) baseFragment).getCurrentUser() : null;
                BaseFragment baseFragment2 = ChatAttachAlert.this.baseFragment;
                TLRPC.Chat currentChat = baseFragment2 instanceof ChatActivity ? ((ChatActivity) baseFragment2).getCurrentChat() : null;
                boolean z = currentUser != null && ((ChatActivity) ChatAttachAlert.this.baseFragment).getMessagesController().getSendPaidMessagesStars(currentUser.f1825id) > 0;
                int i7 = this.buttonsCount;
                this.buttonsCount = i7 + 1;
                this.galleryButton = i7;
                if ((ChatAttachAlert.this.photosEnabled || ChatAttachAlert.this.videosEnabled) && !z && (currentChat == null || !ChatObject.isMonoForum(currentChat))) {
                    BaseFragment baseFragment3 = ChatAttachAlert.this.baseFragment;
                    if ((baseFragment3 instanceof ChatActivity) && !((ChatActivity) baseFragment3).isInScheduleMode() && !((ChatActivity) ChatAttachAlert.this.baseFragment).isSecretChat() && ((ChatActivity) ChatAttachAlert.this.baseFragment).getChatMode() != 5) {
                        ChatActivity chatActivity = (ChatActivity) ChatAttachAlert.this.baseFragment;
                        this.attachBotsStartRow = this.buttonsCount;
                        this.attachMenuBots.clear();
                        ArrayList arrayList = MediaDataController.getInstance(ChatAttachAlert.this.currentAccount).getAttachMenuBots().bots;
                        int size = arrayList.size();
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            TLRPC.TL_attachMenuBot tL_attachMenuBot = (TLRPC.TL_attachMenuBot) obj;
                            if (tL_attachMenuBot.show_in_attach_menu) {
                                if (MediaDataController.canShowAttachMenuBot(tL_attachMenuBot, chatActivity.getCurrentChat() != null ? chatActivity.getCurrentChat() : chatActivity.getCurrentUser())) {
                                    this.attachMenuBots.add(tL_attachMenuBot);
                                }
                            }
                        }
                        int size2 = this.buttonsCount + this.attachMenuBots.size();
                        this.buttonsCount = size2;
                        this.attachBotsEndRow = size2;
                    }
                }
                int i8 = this.buttonsCount;
                this.buttonsCount = i8 + 1;
                this.documentButton = i8;
                if (ChatAttachAlert.this.plainTextEnabled) {
                    int i9 = this.buttonsCount;
                    this.buttonsCount = i9 + 1;
                    this.locationButton = i9;
                }
                if (ChatAttachAlert.this.pollsEnabled) {
                    int i10 = this.buttonsCount;
                    this.buttonsCount = i10 + 1;
                    this.pollButton = i10;
                }
                if (ChatAttachAlert.this.todoEnabled) {
                    int i11 = this.buttonsCount;
                    this.buttonsCount = i11 + 1;
                    this.todoButton = i11;
                }
                if (ChatAttachAlert.this.plainTextEnabled) {
                    int i12 = this.buttonsCount;
                    this.buttonsCount = i12 + 1;
                    this.contactButton = i12;
                }
                BaseFragment baseFragment4 = ChatAttachAlert.this.baseFragment;
                if ((baseFragment4 instanceof ChatActivity) && ((ChatActivity) baseFragment4).getChatMode() == 0 && currentUser != null && !z && !currentUser.bot && QuickRepliesController.getInstance(ChatAttachAlert.this.currentAccount).hasReplies()) {
                    int i13 = this.buttonsCount;
                    this.buttonsCount = i13 + 1;
                    this.quickRepliesButton = i13;
                }
                int i14 = this.buttonsCount;
                this.buttonsCount = i14 + 1;
                this.musicButton = i14;
            }
            super.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i < this.buttonsCount) {
                return (i < this.attachBotsStartRow || i >= this.attachBotsEndRow) ? 0 : 1;
            }
            return 1;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissInternal() {
        ChatAttachViewDelegate chatAttachViewDelegate = this.delegate;
        if (chatAttachViewDelegate != null) {
            chatAttachViewDelegate.doOnIdle(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.removeFromRoot();
                }
            });
        } else {
            removeFromRoot();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromRoot() {
        ViewGroup viewGroup = this.containerView;
        if (viewGroup != null) {
            viewGroup.setVisibility(4);
        }
        if (this.actionBar.isSearchFieldVisible()) {
            this.actionBar.closeSearchField();
        }
        this.contactsLayout = null;
        this.quickRepliesLayout = null;
        this.audioLayout = null;
        this.pollLayout = null;
        this.todoLayout = null;
        this.locationLayout = null;
        this.documentLayout = null;
        int i = 1;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i < attachAlertLayoutArr.length) {
                AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
                if (attachAlertLayout != null) {
                    attachAlertLayout.onDestroy();
                    this.containerView.removeView(this.layouts[i]);
                    this.layouts[i] = null;
                }
                i++;
            } else {
                updateActionBarVisibility(false, false);
                super.dismissInternal();
                return;
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$8() {
        if (this.passcodeView.getVisibility() == 0) {
            if (getOwnerActivity() != null) {
                getOwnerActivity().finish();
            }
        } else {
            if (this.actionBar.isSearchFieldVisible()) {
                this.actionBar.closeSearchField();
                return;
            }
            if (this.currentAttachLayout.onBackPressed()) {
                return;
            }
            if (getCommentView() != null && getCommentView().isPopupShowing()) {
                getCommentView().hidePopup(true);
            } else {
                super.lambda$openCrafting$8();
            }
        }
    }

    public EditTextEmoji getCommentView() {
        AttachAlertLayout attachAlertLayout;
        return (this.captionAbove && ((attachAlertLayout = this.currentAttachLayout) == this.photoLayout || attachAlertLayout == this.photoPreviewLayout)) ? this.topCommentTextView : this.commentTextView;
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void dismissWithButtonClick(int i) {
        super.dismissWithButtonClick(i);
        this.currentAttachLayout.onDismissWithButtonClick(i);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return this.currentAttachLayout.canDismissWithTouchOutside();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void onDismissWithTouchOutside() {
        if (this.currentAttachLayout.onDismissWithTouchOutside()) {
            lambda$new$0();
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void dismiss(boolean z) {
        if (z) {
            this.allowPassConfirmationAlert = z;
        }
        lambda$new$0();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        if (this.currentAttachLayout.onDismiss() || isDismissed()) {
            return;
        }
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            AndroidUtilities.hideKeyboard(editTextEmoji.getEditText());
        }
        EditTextEmoji editTextEmoji2 = this.topCommentTextView;
        if (editTextEmoji2 != null) {
            AndroidUtilities.hideKeyboard(editTextEmoji2.getEditText());
        }
        this.botAttachLayouts.clear();
        BaseFragment lastFragment = this.baseFragment;
        if (lastFragment == null) {
            lastFragment = LaunchActivity.getLastFragment();
        }
        if (!this.allowPassConfirmationAlert && lastFragment != null && this.currentAttachLayout.getSelectedItemsCount() > 0 && !this.isPhotoPicker) {
            if (this.confirmationAlertShown) {
                return;
            }
            this.confirmationAlertShown = true;
            AlertDialog alertDialogCreate = new AlertDialog.Builder(lastFragment.getParentActivity(), this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.DiscardSelectionAlertTitle)).setMessage(LocaleController.getString(C2888R.string.DiscardSelectionAlertMessage)).setPositiveButton(LocaleController.getString(C2888R.string.Discard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$dismiss$54(alertDialog, i);
                }
            }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$dismiss$55(dialogInterface);
                }
            }).setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$dismiss$56(dialogInterface);
                }
            }).create();
            alertDialogCreate.show();
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(getThemedColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        int i = 0;
        while (true) {
            AttachAlertLayout[] attachAlertLayoutArr = this.layouts;
            if (i >= attachAlertLayoutArr.length) {
                break;
            }
            AttachAlertLayout attachAlertLayout = attachAlertLayoutArr[i];
            if (attachAlertLayout != null && this.currentAttachLayout != attachAlertLayout) {
                attachAlertLayout.onDismiss();
            }
            i++;
        }
        AndroidUtilities.setNavigationBarColor((Dialog) this, ColorUtils.setAlphaComponent(getThemedColor(Theme.key_windowBackgroundGray), 0), true, new AndroidUtilities.IntColorCallback() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.AndroidUtilities.IntColorCallback
            public final void run(int i2) {
                this.f$0.lambda$dismiss$57(i2);
            }
        });
        if (lastFragment != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), lastFragment.isLightStatusBar());
        }
        this.captionLimitBulletinShown = false;
        super.lambda$new$0();
        this.allowPassConfirmationAlert = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$54(AlertDialog alertDialog, int i) {
        this.allowPassConfirmationAlert = true;
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$55(DialogInterface dialogInterface) {
        SpringAnimation springAnimation = this.appearSpringAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        SpringAnimation springAnimation2 = new SpringAnimation(this.containerView, DynamicAnimation.TRANSLATION_Y, 0.0f);
        this.appearSpringAnimation = springAnimation2;
        springAnimation2.getSpring().setDampingRatio(1.5f);
        this.appearSpringAnimation.getSpring().setStiffness(1500.0f);
        this.appearSpringAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$56(DialogInterface dialogInterface) {
        this.confirmationAlertShown = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$57(int i) {
        this.navBarColorKey = -1;
        this.navBarColor = i;
        this.containerView.invalidate();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.currentAttachLayout.onSheetKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void setAllowNestedScroll(boolean z) {
        this.allowNestedScroll = z;
    }

    public BaseFragment getBaseFragment() {
        return this.baseFragment;
    }

    public EditTextEmoji getCommentTextView() {
        return this.commentTextView;
    }

    public ChatAttachAlertDocumentLayout getDocumentLayout() {
        return this.documentLayout;
    }

    public void setAllowEnterCaption(boolean z) {
        this.allowEnterCaption = z;
    }

    public void setDocumentsDelegate(ChatAttachAlertDocumentLayout.DocumentSelectActivityDelegate documentSelectActivityDelegate) {
        this.documentsDelegate = documentSelectActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceWithText(int i, int i2, CharSequence charSequence, boolean z) {
        if (getCommentView() == null) {
            return;
        }
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getCommentView().getText());
            spannableStringBuilder.replace(i, i2 + i, charSequence);
            if (z) {
                Emoji.replaceEmoji(spannableStringBuilder, getCommentView().getEditText().getPaint().getFontMetricsInt(), false);
            }
            getCommentView().setText(spannableStringBuilder);
            getCommentView().setSelection(i + charSequence.length());
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMentionsContainer() {
        MentionsContainerView mentionsContainerView = new MentionsContainerView(getContext(), UserConfig.getInstance(this.currentAccount).getClientUserId(), 0L, LaunchActivity.getLastFragment(), this.resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlert.35
            @Override // org.telegram.p029ui.Components.MentionsContainerView
            protected void onScrolled(boolean z, boolean z2) {
                if (ChatAttachAlert.this.photoLayout != null) {
                    ChatAttachAlert.this.photoLayout.checkCameraViewPosition();
                }
            }

            @Override // org.telegram.p029ui.Components.MentionsContainerView
            protected void onAnimationScroll() {
                if (ChatAttachAlert.this.photoLayout != null) {
                    ChatAttachAlert.this.photoLayout.checkCameraViewPosition();
                }
            }
        };
        this.mentionContainer = mentionsContainerView;
        setupMentionContainer(mentionsContainerView);
        MentionsContainerView.Delegate delegate = new MentionsContainerView.Delegate() { // from class: org.telegram.ui.Components.ChatAttachAlert.36
            @Override // org.telegram.ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void addEmojiToRecent(String str) {
                MentionsContainerView.Delegate.CC.$default$addEmojiToRecent(this, str);
            }

            @Override // org.telegram.ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void onStickerSelected(TLRPC.TL_document tL_document, String str, Object obj) {
                MentionsContainerView.Delegate.CC.$default$onStickerSelected(this, tL_document, str, obj);
            }

            @Override // org.telegram.ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void sendBotInlineResult(TLRPC.BotInlineResult botInlineResult, boolean z, int i) {
                MentionsContainerView.Delegate.CC.$default$sendBotInlineResult(this, botInlineResult, z, i);
            }

            @Override // org.telegram.ui.Components.MentionsContainerView.Delegate
            public void replaceText(int i, int i2, CharSequence charSequence, boolean z) {
                ChatAttachAlert.this.replaceWithText(i, i2, charSequence, z);
            }

            @Override // org.telegram.ui.Components.MentionsContainerView.Delegate
            public Paint.FontMetricsInt getFontMetrics() {
                return ChatAttachAlert.this.commentTextView.getEditText().getPaint().getFontMetricsInt();
            }
        };
        this.mentionsDelegate = delegate;
        this.mentionContainer.withDelegate(delegate);
        ViewGroup viewGroup = this.containerView;
        viewGroup.addView(this.mentionContainer, viewGroup.indexOfChild(this.frameLayout2), LayoutHelper.createFrame(-1, -1, 83));
        setupMentionContainer(this.mentionContainer);
        updateCommentTextViewPosition();
    }

    protected void setupMentionContainer(MentionsContainerView mentionsContainerView) {
        mentionsContainerView.getAdapter().setAllowStickers(false);
        mentionsContainerView.getAdapter().setAllowBots(false);
        mentionsContainerView.getAdapter().setAllowChats(false);
        mentionsContainerView.getAdapter().setSearchInDailogs(true);
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            ChatActivity chatActivity = (ChatActivity) baseFragment;
            mentionsContainerView.getAdapter().setUserOrChat(chatActivity.getCurrentUser(), chatActivity.getCurrentChat());
            mentionsContainerView.getAdapter().setChatInfo(chatActivity.getCurrentChatInfo());
            mentionsContainerView.getAdapter().setNeedUsernames(chatActivity.getCurrentChat() != null);
        } else {
            mentionsContainerView.getAdapter().setChatInfo(null);
            mentionsContainerView.getAdapter().setNeedUsernames(false);
        }
        mentionsContainerView.getAdapter().setNeedBotContext(false);
    }

    public void setCaptionAbove(boolean z) {
        setCaptionAbove(z, true);
    }

    public void setCaptionAbove(boolean z, boolean z2) {
        this.animatorCaptionAbove.setValue(z, z2);
        EditTextEmoji commentView = getCommentView();
        this.captionAbove = z;
        EditTextEmoji commentView2 = getCommentView();
        final boolean z3 = this.frameLayout2.getTag() != null;
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        final boolean z4 = this.captionAbove && (attachAlertLayout == this.photoLayout || attachAlertLayout == this.photoPreviewLayout);
        if (z2) {
            this.topCommentContainer.setVisibility(z3 ? 0 : 8);
            ViewPropertyAnimator duration = this.topCommentContainer.animate().alpha((z4 && z3) ? 1.0f : 0.0f).setDuration(320L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda39
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setCaptionAbove$58(valueAnimator);
                }
            }).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setCaptionAbove$59(z4, z3);
                }
            }).start();
            this.captionContainer.setVisibility(0);
            this.captionContainer.animate().translationY((z4 || !z3) ? this.captionContainer.getMeasuredHeight() : 0.0f).alpha((z4 || !z3) ? 0.0f : 1.0f).setDuration(320L).setInterpolator(cubicBezierInterpolator).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda41
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setCaptionAbove$60(valueAnimator);
                }
            }).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlert$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setCaptionAbove$61(z4, z3);
                }
            }).start();
        } else {
            this.topCommentContainer.setVisibility((z4 && z3) ? 0 : 8);
            this.topCommentContainer.setAlpha((z4 && z3) ? 1.0f : 0.0f);
            updatedTopCaptionHeight();
            this.captionContainer.setAlpha((z4 || !z3) ? 0.0f : 1.0f);
            this.captionContainer.setTranslationY((z4 || !z3) ? r13.getMeasuredHeight() : 0.0f);
            this.captionContainer.setVisibility((z4 || !z3) ? 8 : 0);
        }
        if (commentView != commentView2) {
            commentView.hidePopup(true);
            commentView2.setText(AnimatedEmojiSpan.cloneSpans(commentView.getText()));
            commentView2.getEditText().setAllowTextEntitiesIntersection(commentView.getEditText().getAllowTextEntitiesIntersection());
            if (commentView.getEditText().isFocused()) {
                commentView2.getEditText().requestFocus();
                commentView2.getEditText().setSelection(commentView.getEditText().getSelectionStart(), commentView.getEditText().getSelectionEnd());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCaptionAbove$58(ValueAnimator valueAnimator) {
        updatedTopCaptionHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCaptionAbove$59(boolean z, boolean z2) {
        if (!z || !z2) {
            this.topCommentContainer.setVisibility(8);
        }
        updatedTopCaptionHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCaptionAbove$60(ValueAnimator valueAnimator) {
        this.frameLayout2.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCaptionAbove$61(boolean z, boolean z2) {
        if (z || !z2) {
            this.captionContainer.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatedTopCaptionHeight() {
        this.actionBarShadow.setTranslationY(this.currentPanTranslationY);
        updateSelectedPosition(0);
        this.sizeNotifierFrameLayout.invalidate();
        this.topCommentContainer.invalidate();
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (chatAttachAlertPhotoLayout != null) {
            chatAttachAlertPhotoLayout.checkCameraViewPosition();
            RecyclerListView recyclerListView = this.photoLayout.gridView;
            if (recyclerListView != null && recyclerListView.getFastScroll() != null) {
                this.photoLayout.gridView.getFastScroll().topOffset = ActionBar.getCurrentActionBarHeight() + this.photoLayout.listAdditionalH + (this.captionAbove ? (int) (this.topCommentContainer.getMeasuredHeight() * this.topCommentContainer.getAlpha()) : 0);
                this.photoLayout.gridView.getFastScroll().invalidate();
            }
        }
        updateCommentTextViewPosition();
        checkUi_writeButtonContainerY();
    }

    private void toggleCaptionAbove() {
        setCaptionAbove(!this.captionAbove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_InvalidateBlur() {
        boolean z;
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        ViewPositionWatcher.computeRectInParent(this.buttonsRecyclerViewWrapper, this.containerView, this.iBlur3PositionMainTabs);
        this.iBlur3PositionActionBar.set(0.0f, 0.0f, this.containerView.getMeasuredWidth(), this.actionBar.getMeasuredHeight());
        this.iBlur3PositionActionBar.inset(0.0f, -AndroidUtilities.m1124dp(48.0f));
        this.iBlur3PositionMainTabs.set(0.0f, this.containerView.getMeasuredHeight() - (Math.max(AndroidUtilities.navigationBarHeight, getEmojiPadding()) + AndroidUtilities.m1124dp(180.0f)), this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
        this.iBlur3PositionMainTabs.inset(0.0f, LiteMode.isEnabled(262144) ? 0.0f : -AndroidUtilities.m1124dp(48.0f));
        AttachAlertLayout attachAlertLayout = this.currentAttachLayout;
        ChatAttachAlertPhotoLayout chatAttachAlertPhotoLayout = this.photoLayout;
        if (attachAlertLayout != chatAttachAlertPhotoLayout || chatAttachAlertPhotoLayout == null || chatAttachAlertPhotoLayout.gridView.getFastScroll() == null) {
            z = false;
        } else {
            this.photoLayout.gridView.getFastScroll().fillDrawablesRect(this.iBlur3PositionFastScroll);
            RecyclerListView.FastScroll fastScroll = this.photoLayout.gridView.getFastScroll();
            ViewGroup viewGroup = this.containerView;
            RectF rectF = AndroidUtilities.rectTmp;
            ViewPositionWatcher.computeRectInParent(fastScroll, viewGroup, rectF);
            this.iBlur3PositionFastScroll.offset(rectF.left, rectF.top);
            this.iBlur3PositionFastScroll.inset(-AndroidUtilities.m1124dp(48.0f), -AndroidUtilities.m1124dp(48.0f));
            RectF rectF2 = this.iBlur3PositionFastScroll;
            rectF2.left = Math.max(0.0f, rectF2.left);
            this.iBlur3PositionFastScroll.right = Math.min(this.containerView.getMeasuredWidth(), this.iBlur3PositionFastScroll.right);
            z = true;
        }
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3PositionsMerged, RectFMergeBounding.mergeOverlapping(this.iBlur3Positions, z ? 3 : 2, this.iBlur3PositionsMerged));
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, this.containerView.getMeasuredWidth(), this.containerView.getMeasuredHeight());
    }

    public static class SearchFadeView extends View {
        private final GradientProtectionDrawable gradientProtectionDrawable;
        private final GradientProtectionDrawable gradientProtectionDrawable2;
        private final Theme.ResourcesProvider resourcesProvider;

        public SearchFadeView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.gradientProtectionDrawable = new GradientProtectionDrawable(2);
            this.gradientProtectionDrawable2 = new GradientProtectionDrawable(2);
            this.resourcesProvider = resourcesProvider;
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            int i5 = AndroidUtilities.statusBarHeight;
            this.gradientProtectionDrawable.setInsets(0, AndroidUtilities.m1124dp(12.0f) + i5, 0, 0);
            this.gradientProtectionDrawable.setBounds(0, 0, i, AndroidUtilities.m1124dp(52.0f) + i5);
            this.gradientProtectionDrawable2.setInsets(0, i5 / 3, 0, 0);
            this.gradientProtectionDrawable2.setBounds(0, 0, i, i5);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            GradientProtectionDrawable gradientProtectionDrawable = this.gradientProtectionDrawable;
            int i = Theme.key_windowBackgroundWhite;
            gradientProtectionDrawable.setColor(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.5f));
            this.gradientProtectionDrawable.draw(canvas);
            this.gradientProtectionDrawable2.setColor(Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.95f));
            this.gradientProtectionDrawable2.draw(canvas);
        }
    }

    public static class AttachSearchField extends FragmentSearchField {
        private final ChatAttachAlert parentAlert;

        public AttachSearchField(Context context, ChatAttachAlert chatAttachAlert, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            this.parentAlert = chatAttachAlert;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.parentAlert.makeFocusable(this.editText, true);
            return super.onInterceptTouchEvent(motionEvent);
        }
    }
}
