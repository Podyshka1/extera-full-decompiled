package org.telegram.p029ui.Cells;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AlignmentSpan;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessageSuggestionParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.AvatarSpan;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.ChannelAdminLogActivity;
import org.telegram.p029ui.ChatBackgroundDrawable;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.ImageUpdater;
import org.telegram.p029ui.Components.LoadingDrawable;
import org.telegram.p029ui.Components.Premium.StarParticlesView;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RadialProgress2;
import org.telegram.p029ui.Components.RadialProgressView;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.SuggestBirthdayActionLayout;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.TopicSeparator;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.p029ui.Gifts.GiftSheet;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stars.GiftOfferSheet;
import org.telegram.p029ui.Stars.StarGiftSheet;
import org.telegram.p029ui.Stars.StarGiftUniqueActionLayout;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.StoriesUtilities;
import org.telegram.p029ui.Stories.UploadingDotsSpannable;
import org.telegram.p029ui.Stories.recorder.HintView2;
import org.telegram.p029ui.Stories.recorder.PreviewView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_payments;
import org.telegram.tgnet.p028tl.TL_stars;
import org.telegram.tgnet.p028tl.TL_stories;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class ChatActionCell extends BaseCell implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate {
    private static Map monthsToEmoticon;
    private int TAG;
    private SpannableStringBuilder accessibilityText;
    private boolean actionPressed;
    private int adaptiveEmojiColor;
    private ColorFilter adaptiveEmojiColorFilter;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private boolean attachedToWindow;
    private AvatarDrawable avatarDrawable;
    StoriesUtilities.AvatarStoryParams avatarStoryParams;
    private int backgroundButtonTop;
    private int backgroundHeight;
    private int backgroundLeft;
    private Path backgroundPath;
    private final Path backgroundPath2;
    private RectF backgroundRect;
    private int backgroundRectHeight;
    private int backgroundRight;
    public SuggestBirthdayActionLayout birthdayLayout;
    private final Path botButtonPath;
    private final float[] botButtonRadii;
    private ArrayList botButtons;
    private BotInlineKeyboard.Source botInlineButtons;
    private final ButtonBounce bounce;
    private boolean buttonClickableAsImage;
    private boolean canDrawInParent;
    private GiftSheet.CardBackground cardBackground;
    private Path clipPath;
    private int currentAccount;
    private MessageObject currentMessageObject;
    private ImageLocation currentVideoLocation;
    private int customDate;
    private CharSequence customText;
    private ChatActionCellDelegate delegate;
    private float dimAmount;
    private final Paint dimPaint;
    public boolean firstInChat;
    private boolean forceWasUnread;
    private boolean giftButtonPressed;
    private RectF giftButtonRect;
    private TLRPC.VideoSize giftEffectAnimation;
    private int giftPremiumAdditionalHeight;
    private StaticLayout giftPremiumButtonLayout;
    private float giftPremiumButtonWidth;
    private Text giftPremiumReleasedText;
    private StaticLayout giftPremiumSubtitleLayout;
    private TextLayout giftPremiumText;
    private GradientClip giftPremiumTextClip;
    private boolean giftPremiumTextCollapsed;
    private int giftPremiumTextCollapsedHeight;
    private AnimatedFloat giftPremiumTextExpandedAnimated;
    private Text giftPremiumTextMore;
    private int giftPremiumTextMoreH;
    private int giftPremiumTextMoreX;
    private int giftPremiumTextMoreY;
    private boolean giftPremiumTextUncollapsed;
    private StaticLayout giftPremiumTitleLayout;
    private boolean giftRectEmpty;
    private int giftRectSize;
    private Paint giftReleasedBackgroundPaint;
    private CornerPathEffect giftRibbonPaintEffect;
    private ColorMatrixColorFilter giftRibbonPaintFilter;
    private boolean giftRibbonPaintFilterDark;
    private Path giftRibbonPath;
    private Text giftRibbonText;
    private TLRPC.Document giftSticker;
    private ImageReceiver.ImageReceiverDelegate giftStickerDelegate;
    private TextPaint giftSubtitlePaint;
    private TextPaint giftTextPaint;
    private TextPaint giftTitlePaint;
    private boolean hasReplyMessage;
    private boolean imagePressed;
    private ImageReceiver imageReceiver;
    private boolean invalidateColors;
    private Runnable invalidateListener;
    private boolean invalidatePath;
    private View invalidateWithParent;
    private boolean invalidatesParent;
    public boolean isAllChats;
    public boolean isForum;
    public boolean isMonoForum;
    public boolean isSideMenuEnabled;
    public boolean isSideMenued;
    private boolean isSpoilerRevealing;
    private float lastTouchX;
    private float lastTouchY;
    private ArrayList lineHeights;
    private ArrayList lineWidths;
    private LoadingDrawable loadingDrawable;
    private boolean offerExpired;
    private View.OnClickListener onActionClick;
    private View.OnLongClickListener onActionLongClick;
    private int overriddenMaxWidth;
    private int overrideBackground;
    private Paint overrideBackgroundPaint;
    private int overrideText;
    private TextPaint overrideTextPaint;
    private int pressedBotButton;
    private URLSpan pressedLink;
    private final int[] pressedState;
    private int previousWidth;
    float progressToProgress;
    RadialProgressView progressView;
    private RadialProgress2 radialProgress;
    private final float[] radii;
    public final ReactionsLayoutInBubble reactionsLayoutInBubble;
    private RectF rect;
    private View rippleView;
    private StaticLayout settingWallpaperLayout;
    TextPaint settingWallpaperPaint;
    private float settingWallpaperProgress;
    private StaticLayout settingWallpaperProgressTextLayout;
    public boolean showTopicSeparator;
    public float sideMenuAlpha;
    public int sideMenuWidth;
    private SpoilerEffect spoilerPressed;
    public List spoilers;
    private Stack spoilersPool;
    public final StarGiftUniqueActionLayout starGiftLayout;
    public float starGiftLayoutX;
    public float starGiftLayoutY;
    private StarParticlesView.Drawable starParticlesDrawable;
    private Path starsPath;
    private int starsSize;
    private int stickerSize;
    private int textHeight;
    private StaticLayout textLayout;
    TextPaint textPaint;
    private boolean textPressed;
    private int textWidth;
    private int textX;
    private int textXLeft;
    private int textY;
    private Theme.ResourcesProvider themeDelegate;
    private int titleHeight;
    private StaticLayout titleLayout;
    private int titleXLeft;
    public TopicSeparator topicSeparator;
    private int topicSeparatorTopPadding;
    public final TransitionParams transitionParams;
    private float viewTop;
    private float viewTranslationX;
    private boolean visiblePartSet;
    private Drawable wallpaperPreviewDrawable;
    private boolean wasLayout;

    public boolean isFloating() {
        return false;
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    static {
        HashMap map = new HashMap();
        monthsToEmoticon = map;
        map.put(1, "1⃣");
        monthsToEmoticon.put(3, "2⃣");
        monthsToEmoticon.put(6, "3⃣");
        monthsToEmoticon.put(12, "4⃣");
        monthsToEmoticon.put(24, "5⃣");
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageObject messageObject;
        if (i == NotificationCenter.startSpoilers) {
            setSpoilersSuppressed(false);
            return;
        }
        if (i == NotificationCenter.stopSpoilers) {
            setSpoilersSuppressed(true);
            return;
        }
        if (i == NotificationCenter.didUpdatePremiumGiftStickers || i == NotificationCenter.starGiftsLoaded || i == NotificationCenter.didUpdateTonGiftStickers) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (messageObject2 != null) {
                setMessageObject(messageObject2, true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.diceStickersDidLoad && Objects.equals(objArr[0], UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack) && (messageObject = this.currentMessageObject) != null) {
            setMessageObject(messageObject, true);
        }
    }

    public void setSpoilersSuppressed(boolean z) {
        Iterator it = this.spoilers.iterator();
        while (it.hasNext()) {
            ((SpoilerEffect) it.next()).setSuppressUpdates(z);
        }
    }

    public void setInvalidateWithParent(View view) {
        this.invalidateWithParent = view;
    }

    public boolean hasButton() {
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || !isButtonLayout(messageObject) || this.giftPremiumButtonLayout == null) ? false : true;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface ChatActionCellDelegate {
        boolean canDrawOutboundsContent();

        void didClickButton(ChatActionCell chatActionCell);

        void didClickImage(ChatActionCell chatActionCell);

        boolean didLongPress(ChatActionCell chatActionCell, float f, float f2);

        void didOpenPremiumGift(ChatActionCell chatActionCell, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str, boolean z);

        void didOpenPremiumGiftChannel(ChatActionCell chatActionCell, String str, boolean z);

        void didPressReaction(ChatActionCell chatActionCell, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2);

        void didPressReplyMessage(ChatActionCell chatActionCell, int i);

        void didPressTaskLink(ChatActionCell chatActionCell, int i, int i2);

        void forceUpdate(ChatActionCell chatActionCell, boolean z);

        BaseFragment getBaseFragment();

        long getDialogId();

        long getTopicId();

        void needOpenInviteLink(TLRPC.TL_chatInviteExported tL_chatInviteExported);

        void needOpenUserProfile(long j);

        void needShowEffectOverlay(ChatActionCell chatActionCell, TLRPC.Document document, TLRPC.VideoSize videoSize);

        void onTopicClick(ChatActionCell chatActionCell);

        /* JADX INFO: renamed from: org.telegram.ui.Cells.ChatActionCell$ChatActionCellDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$didClickImage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static void $default$didClickButton(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static void $default$didOpenPremiumGift(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str, boolean z) {
            }

            public static void $default$didOpenPremiumGiftChannel(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, String str, boolean z) {
            }

            public static boolean $default$didLongPress(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, float f, float f2) {
                return false;
            }

            public static void $default$needOpenUserProfile(ChatActionCellDelegate chatActionCellDelegate, long j) {
            }

            public static void $default$didPressReplyMessage(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, int i) {
            }

            public static void $default$didPressTaskLink(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, int i, int i2) {
            }

            public static void $default$didPressReaction(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
            }

            public static void $default$needOpenInviteLink(ChatActionCellDelegate chatActionCellDelegate, TLRPC.TL_chatInviteExported tL_chatInviteExported) {
            }

            public static void $default$needShowEffectOverlay(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, TLRPC.Document document, TLRPC.VideoSize videoSize) {
            }

            public static void $default$onTopicClick(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell) {
            }

            public static BaseFragment $default$getBaseFragment(ChatActionCellDelegate chatActionCellDelegate) {
                return null;
            }

            public static long $default$getDialogId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0L;
            }

            public static long $default$getTopicId(ChatActionCellDelegate chatActionCellDelegate) {
                return 0L;
            }

            public static boolean $default$canDrawOutboundsContent(ChatActionCellDelegate chatActionCellDelegate) {
                return true;
            }

            public static void $default$forceUpdate(ChatActionCellDelegate chatActionCellDelegate, ChatActionCell chatActionCell, boolean z) {
            }
        }
    }

    public void setShowTopic(boolean z) {
        if (this.showTopicSeparator != z) {
            this.showTopicSeparator = z;
            invalidateOutbounds();
            invalidate();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    class TextLayout {
        public AnimatedEmojiSpan.EmojiGroupedSpans emoji;
        public StaticLayout layout;
        public TextPaint paint;
        public int width;

        /* JADX INFO: renamed from: x */
        public float f1895x;

        /* JADX INFO: renamed from: y */
        public float f1896y;
        public List spoilers = new ArrayList();
        public final AtomicReference patchedLayout = new AtomicReference();

        TextLayout() {
        }

        public void setText(CharSequence charSequence, TextPaint textPaint, int i) {
            this.paint = textPaint;
            this.width = i;
            this.layout = new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_CENTER, 1.1f, 0.0f, false);
            if (ChatActionCell.this.currentMessageObject == null || !ChatActionCell.this.currentMessageObject.isSpoilersRevealed) {
                SpoilerEffect.addSpoilers(ChatActionCell.this, this.layout, -1, i, null, this.spoilers);
            } else {
                List list = this.spoilers;
                if (list != null) {
                    list.clear();
                }
            }
            attach();
        }

        public void attach() {
            this.emoji = AnimatedEmojiSpan.update(0, (View) ChatActionCell.this, false, this.emoji, this.layout);
        }

        public void detach() {
            AnimatedEmojiSpan.release(ChatActionCell.this, this.emoji);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        RLottieDrawable lottieAnimation;
        ChatActionCellDelegate chatActionCellDelegate;
        if (!z || (lottieAnimation = this.imageReceiver.getLottieAnimation()) == null) {
            return;
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && !messageObject.playedGiftAnimation) {
            messageObject.playedGiftAnimation = true;
            lottieAnimation.setCurrentFrame(0, false);
            AndroidUtilities.runOnUIThread(new ChatActionCell$$ExternalSyntheticLambda13(lottieAnimation));
            if (messageObject.wasUnread || this.forceWasUnread) {
                messageObject.wasUnread = false;
                this.forceWasUnread = false;
                try {
                    performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
                if (getContext() instanceof LaunchActivity) {
                    ((LaunchActivity) getContext()).getFireworksOverlay().start();
                }
                TLRPC.VideoSize videoSize = this.giftEffectAnimation;
                if (videoSize == null || (chatActionCellDelegate = this.delegate) == null) {
                    return;
                }
                chatActionCellDelegate.needShowEffectOverlay(this, this.giftSticker, videoSize);
                return;
            }
            return;
        }
        if (lottieAnimation.getCurrentFrame() < 1) {
            lottieAnimation.stop();
            lottieAnimation.setCurrentFrame(lottieAnimation.getFramesCount() - 1, false);
        }
    }

    public ChatActionCell(Context context) {
        this(context, false, null);
    }

    public ChatActionCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.bounce = new ButtonBounce(this);
        this.currentAccount = UserConfig.selectedAccount;
        this.avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false);
        this.showTopicSeparator = true;
        this.giftButtonRect = new RectF();
        this.spoilers = new ArrayList();
        this.spoilersPool = new Stack();
        this.reactionsLayoutInBubble = new ReactionsLayoutInBubble(this);
        this.overrideBackground = -1;
        this.overrideText = -1;
        this.lineWidths = new ArrayList();
        this.lineHeights = new ArrayList();
        this.backgroundPath = new Path();
        this.rect = new RectF();
        this.invalidatePath = true;
        this.invalidateColors = false;
        this.giftPremiumTextUncollapsed = false;
        this.giftPremiumTextCollapsed = false;
        this.giftPremiumTextExpandedAnimated = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.buttonClickableAsImage = true;
        this.giftTitlePaint = new TextPaint(1);
        this.giftTextPaint = new TextPaint(1);
        this.giftSubtitlePaint = new TextPaint(1);
        this.radialProgress = new RadialProgress2(this);
        this.giftStickerDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z2, boolean z3, boolean z4) {
                this.f$0.lambda$new$0(imageReceiver, z2, z3, z4);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void didSetImageBitmap(int i, String str, Drawable drawable) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$didSetImageBitmap(this, i, str, drawable);
            }

            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
                ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
            }
        };
        this.starsPath = new Path();
        this.botButtons = new ArrayList();
        this.dimPaint = new Paint(1);
        this.backgroundPath2 = new Path();
        this.radii = new float[8];
        this.botButtonRadii = new float[8];
        this.botButtonPath = new Path();
        this.pressedState = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        this.transitionParams = new TransitionParams();
        this.avatarStoryParams.drawSegments = false;
        this.canDrawInParent = z;
        this.themeDelegate = resourcesProvider;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(AndroidUtilities.roundMessageSize, true));
        this.avatarDrawable = new AvatarDrawable();
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        this.starGiftLayout = new StarGiftUniqueActionLayout(this.currentAccount, this, resourcesProvider);
        this.giftTitlePaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
        this.giftSubtitlePaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        this.giftTextPaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(-16777216, 0.1f), 7, AndroidUtilities.m1124dp(16.0f)));
        this.rippleView.setVisibility(8);
        addView(this.rippleView);
        StarParticlesView.Drawable drawable = new StarParticlesView.Drawable(10);
        this.starParticlesDrawable = drawable;
        drawable.type = 100;
        drawable.isCircle = false;
        drawable.roundEffect = true;
        drawable.useRotate = false;
        drawable.useBlur = true;
        drawable.checkBounds = true;
        drawable.size1 = 1;
        drawable.f2043k3 = 0.98f;
        drawable.f2042k2 = 0.98f;
        drawable.f2041k1 = 0.98f;
        drawable.paused = false;
        drawable.speedScale = 0.0f;
        drawable.minLifeTime = 750L;
        drawable.randLifeTime = 750;
        drawable.init();
    }

    public void setDelegate(ChatActionCellDelegate chatActionCellDelegate) {
        this.delegate = chatActionCellDelegate;
    }

    public ChatActionCellDelegate getDelegate() {
        return this.delegate;
    }

    public void setCustomDate(int i, boolean z, boolean z2) {
        String dateChat;
        int i2 = this.customDate;
        if (i2 == i || i2 / 3600 == i / 3600) {
            return;
        }
        if (!z) {
            dateChat = LocaleController.formatDateChat(i);
        } else if (i == 2147483646) {
            dateChat = LocaleController.getString("MessageScheduledUntilOnline", C2888R.string.MessageScheduledUntilOnline);
        } else {
            dateChat = LocaleController.formatString("MessageScheduledOn", C2888R.string.MessageScheduledOn, LocaleController.formatDateChat(i));
        }
        this.customDate = i;
        CharSequence charSequence = this.customText;
        if (charSequence == null || !TextUtils.equals(dateChat, charSequence)) {
            this.customText = dateChat;
            this.accessibilityText = null;
            updateTextInternal(z2);
        }
    }

    private void updateTextInternal(boolean z) {
        if (getMeasuredWidth() != 0) {
            createLayout(this.customText, getMeasuredWidth());
            invalidate();
        }
        if (this.wasLayout) {
            buildLayout();
        } else if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.requestLayout();
                }
            });
        } else {
            requestLayout();
        }
    }

    public void setCustomText(CharSequence charSequence) {
        this.customText = charSequence;
        if (charSequence != null) {
            updateTextInternal(false);
        }
    }

    public void setOverrideColor(int i, int i2) {
        this.overrideBackground = i;
        this.overrideText = i2;
    }

    public void setMessageObject(MessageObject messageObject) {
        setMessageObject(messageObject, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04b7  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0622  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x08da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessageObject(MessageObject messageObject, boolean z) {
        TLRPC.TL_messageReactions tL_messageReactions;
        String str;
        TLRPC.TL_messages_stickerSet stickerSetByName;
        Integer num;
        String str2;
        TLRPC.Document document;
        TLRPC.Document document2;
        String str3;
        Object obj;
        long j;
        String tonGiftEmoji;
        TLRPC.Document giftDocument;
        TLRPC.Document giftDocument2;
        BotInlineKeyboard.Source source;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.VideoSize closestVideoSizeWithSize;
        TLRPC.PhotoSize photoSize2;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        boolean z2;
        float f;
        ImageUpdater imageUpdater;
        TLRPC.WallPaper wallPaper;
        TLRPC.MessageAction messageAction;
        TLRPC.Document document3;
        String str4;
        int i;
        StaticLayout staticLayout;
        MessageObject messageObject2 = messageObject;
        Integer num2 = 160;
        if (messageObject2 == null) {
            return;
        }
        if (this.currentMessageObject != messageObject2 || (!((staticLayout = this.textLayout) == null || TextUtils.equals(staticLayout.getText(), messageObject2.messageText)) || (!(this.hasReplyMessage || messageObject2.replyMessageObject == null) || z || messageObject2.type == 21 || messageObject2.forceUpdate))) {
            if (BuildVars.DEBUG_PRIVATE_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
                FileLog.m1136e(new IllegalStateException("Wrong thread!!!"));
            }
            this.botButtons.clear();
            this.botInlineButtons = null;
            this.accessibilityText = null;
            MessageObject messageObject3 = this.currentMessageObject;
            boolean z3 = messageObject3 == null || messageObject3.stableId != messageObject2.stableId;
            if (messageObject3 != null) {
                messageObject2.playedGiftAnimation = messageObject3.playedGiftAnimation;
            }
            this.currentMessageObject = messageObject2;
            messageObject2.forceUpdate = false;
            this.hasReplyMessage = messageObject2.replyMessageObject != null;
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
            this.previousWidth = 0;
            this.isSpoilerRevealing = false;
            TextLayout textLayout = this.giftPremiumText;
            if (textLayout != null && z3) {
                textLayout.detach();
                this.giftPremiumText = null;
                this.giftPremiumTextUncollapsed = false;
            }
            if (z3 || messageObject2.reactionsChanged) {
                messageObject2.reactionsChanged = false;
                TLRPC.Message message = messageObject2.messageOwner;
                boolean z4 = (message == null || (tL_messageReactions = message.reactions) == null || !tL_messageReactions.reactions_as_tags) ? false : true;
                if (messageObject2.shouldDrawReactions()) {
                    this.reactionsLayoutInBubble.setMessage(messageObject2, !messageObject2.shouldDrawReactionsInLayout(), z4, this.themeDelegate);
                } else {
                    this.reactionsLayoutInBubble.setMessage(null, false, false, this.themeDelegate);
                }
            }
            if (messageObject2.type == 32) {
                if (this.birthdayLayout == null) {
                    this.birthdayLayout = new SuggestBirthdayActionLayout(this.currentAccount, this, this.themeDelegate);
                    if (isCellAttachedToWindow()) {
                        this.birthdayLayout.attach();
                    }
                }
                this.birthdayLayout.set(messageObject2);
            } else {
                SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
                if (suggestBirthdayActionLayout != null) {
                    suggestBirthdayActionLayout.detach();
                    this.birthdayLayout = null;
                }
            }
            this.starGiftLayout.set(messageObject2, !z3);
            this.imageReceiver.setAutoRepeatCount(0);
            this.imageReceiver.clearDecorators();
            if (messageObject2.type != 22) {
                this.wallpaperPreviewDrawable = null;
            }
            if (messageObject2.actionDeleteGroupEventId != -1) {
                ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
                this.overriddenMaxWidth = Math.max(AndroidUtilities.m1124dp(250.0f), HintView2.cutInFancyHalf(messageObject2.messageText, (TextPaint) getThemedPaint("paintChatActionText")));
                ProfileActivity.ShowDrawable showDrawableFindDrawable = ChannelAdminLogActivity.findDrawable(messageObject2.messageText);
                if (showDrawableFindDrawable != null) {
                    showDrawableFindDrawable.setView(this);
                }
            } else {
                ScaleStateListAnimator.reset(this);
                this.overriddenMaxWidth = 0;
            }
            if (messageObject2.isStoryMention()) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject2.messageOwner.media.user_id));
                this.avatarDrawable.setInfo(this.currentAccount, user);
                TL_stories.StoryItem storyItem = messageObject2.messageOwner.media.storyItem;
                if (storyItem != null && storyItem.noforwards) {
                    this.imageReceiver.setForUserOrChat(user, this.avatarDrawable, null, true, 0, true);
                } else {
                    StoriesUtilities.setImage(this.imageReceiver, storyItem);
                }
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
            } else {
                int i2 = messageObject2.type;
                if (i2 == 22) {
                    if (messageObject2.strippedThumb == null) {
                        int size = messageObject2.photoThumbs.size();
                        for (int i3 = 0; i3 < size && !(messageObject2.photoThumbs.get(i3) instanceof TLRPC.TL_photoStrippedSize); i3++) {
                        }
                    }
                    TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = messageObject2.currentEvent;
                    if (tL_channelAdminLogEvent != null) {
                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                            wallPaper = ((TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction).new_value;
                        } else {
                            TLRPC.Message message2 = messageObject2.messageOwner;
                            wallPaper = (message2 == null || (messageAction = message2.action) == null) ? null : messageAction.wallpaper;
                        }
                        if (!TextUtils.isEmpty(ChatThemeController.getWallpaperEmoticon(wallPaper))) {
                            Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
                            boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
                            this.imageReceiver.clearImage();
                            Drawable backgroundDrawableFromTheme = PreviewView.getBackgroundDrawableFromTheme(this.currentAccount, ChatThemeController.getWallpaperEmoticon(wallPaper), zIsDark, false);
                            this.wallpaperPreviewDrawable = backgroundDrawableFromTheme;
                            if (backgroundDrawableFromTheme != null) {
                                backgroundDrawableFromTheme.setCallback(this);
                            }
                        } else if (wallPaper != null && (str4 = wallPaper.uploadingImage) != null) {
                            this.imageReceiver.setImage(ImageLocation.getForPath(str4), "150_150_wallpaper" + wallPaper.f1833id + ChatBackgroundDrawable.hash(wallPaper.settings), null, null, ChatBackgroundDrawable.createThumb(wallPaper), 0L, null, wallPaper, 1);
                            this.wallpaperPreviewDrawable = null;
                        } else if (wallPaper != null) {
                            TLObject tLObject = messageObject2.photoThumbsObject;
                            if (tLObject instanceof TLRPC.Document) {
                                document3 = (TLRPC.Document) tLObject;
                            } else {
                                document3 = wallPaper.document;
                            }
                            this.imageReceiver.setImage(ImageLocation.getForDocument(document3), "150_150_wallpaper" + wallPaper.f1833id + ChatBackgroundDrawable.hash(wallPaper.settings), null, null, ChatBackgroundDrawable.createThumb(wallPaper), 0L, null, wallPaper, 1);
                            this.wallpaperPreviewDrawable = null;
                        } else {
                            this.wallpaperPreviewDrawable = null;
                        }
                        this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
                        if (getUploadingInfoProgress(messageObject) == 1.0f) {
                            this.radialProgress.setProgress(1.0f, !z3);
                            this.radialProgress.setIcon(4, !z3, !z3);
                        } else {
                            this.radialProgress.setIcon(3, !z3, !z3);
                        }
                    }
                } else if (i2 == 21) {
                    this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
                    this.imageReceiver.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) messageObject2.messageOwner.action;
                    TLRPC.VideoSize closestVideoSizeWithSize2 = FileLoader.getClosestVideoSizeWithSize(tL_messageActionSuggestProfilePhoto.photo.video_sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
                    ArrayList arrayList = tL_messageActionSuggestProfilePhoto.photo.video_sizes;
                    ImageLocation forPhoto = (arrayList == null || arrayList.isEmpty()) ? null : ImageLocation.getForPhoto(closestVideoSizeWithSize2, tL_messageActionSuggestProfilePhoto.photo);
                    TLRPC.Photo photo = messageObject2.messageOwner.action.photo;
                    if (messageObject2.strippedThumb == null) {
                        int size2 = messageObject2.photoThumbs.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            photoSize2 = messageObject2.photoThumbs.get(i4);
                            if (photoSize2 instanceof TLRPC.TL_photoStrippedSize) {
                                break;
                            }
                        }
                        photoSize2 = null;
                        closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, MediaDataController.MAX_STYLE_RUNS_COUNT);
                        if (closestPhotoSizeWithSize2 != null) {
                            z2 = false;
                            f = 1.0f;
                        } else if (closestVideoSizeWithSize2 != null) {
                            z2 = false;
                            f = 1.0f;
                            this.imageReceiver.setImage(forPhoto, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize2, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject, 0);
                            messageObject2 = messageObject;
                        } else {
                            z2 = false;
                            f = 1.0f;
                            this.imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize2, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 0);
                        }
                        this.imageReceiver.setAllowStartLottieAnimation(z2);
                        imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject2.messageOwner.local_id);
                        if (imageUpdater != null || imageUpdater.getCurrentImageProgress() == f) {
                            this.radialProgress.setProgress(f, !z3);
                            this.radialProgress.setIcon(4, !z3, !z3);
                        } else {
                            this.radialProgress.setIcon(3, !z3, !z3);
                        }
                    } else {
                        photoSize2 = null;
                        closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, MediaDataController.MAX_STYLE_RUNS_COUNT);
                        if (closestPhotoSizeWithSize2 != null) {
                        }
                        this.imageReceiver.setAllowStartLottieAnimation(z2);
                        imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject2.messageOwner.local_id);
                        if (imageUpdater != null) {
                            this.radialProgress.setProgress(f, !z3);
                            this.radialProgress.setIcon(4, !z3, !z3);
                        }
                    }
                } else {
                    int i5 = 0;
                    if (i2 == 31 || i2 == 33 || i2 == 30 || i2 == 18 || i2 == 25 || i2 == 35) {
                        this.imageReceiver.setRoundRadius(0);
                        TLRPC.MessageAction messageAction2 = messageObject2.messageOwner.action;
                        if (messageAction2 instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                            TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest = (TLRPC.TL_messageActionNoForwardsRequest) messageAction2;
                            this.offerExpired = tL_messageActionNoForwardsRequest.expired || ((long) messageObject2.messageOwner.date) + MessagesController.getInstance(this.currentAccount).config.noForwardsRequestExpirePeriod.get(TimeUnit.SECONDS) < ((long) ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
                            if (!messageObject2.isOut() && !tL_messageActionNoForwardsRequest.expired && !this.offerExpired) {
                                BotInlineKeyboard.Builder builder = new BotInlineKeyboard.Builder();
                                builder.addSharingOfferKeyboard();
                                this.botInlineButtons = builder.build();
                            }
                            num = num2;
                            str2 = null;
                            document = null;
                        } else {
                            if (messageAction2 instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
                                TLRPC.TL_messageActionStarGiftPurchaseOffer tL_messageActionStarGiftPurchaseOffer = (TLRPC.TL_messageActionStarGiftPurchaseOffer) messageAction2;
                                TL_stars.StarGift starGift = tL_messageActionStarGiftPurchaseOffer.gift;
                                if (starGift != null) {
                                    giftDocument2 = TlUtils.getGiftDocument(starGift);
                                    if (this.cardBackground == null) {
                                        this.cardBackground = new GiftSheet.CardBackground(this, this.themeDelegate, false);
                                    }
                                    this.cardBackground.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributeBackdrop.class));
                                    this.cardBackground.setPattern((TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift.attributes, TL_stars.starGiftAttributePattern.class));
                                } else {
                                    giftDocument2 = null;
                                }
                                this.offerExpired = tL_messageActionStarGiftPurchaseOffer.expires_at < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                                if (!messageObject2.isOut() && !tL_messageActionStarGiftPurchaseOffer.accepted && !tL_messageActionStarGiftPurchaseOffer.declined && !this.offerExpired) {
                                    BotInlineKeyboard.Builder builder2 = new BotInlineKeyboard.Builder();
                                    builder2.addGiftOfferKeyboard();
                                    this.botInlineButtons = builder2.build();
                                }
                                num = num2;
                                document = giftDocument2;
                            } else if (messageAction2 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                TL_stars.StarGift starGift2 = ((TLRPC.TL_chatThemeUniqueGift) ((TLRPC.TL_messageActionSetChatTheme) messageAction2).theme).gift;
                                if (starGift2 != null) {
                                    giftDocument = TlUtils.getGiftDocument(starGift2);
                                    if (this.cardBackground == null) {
                                        this.cardBackground = new GiftSheet.CardBackground(this, this.themeDelegate, false);
                                    }
                                    this.cardBackground.setBackdrop((TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(starGift2.attributes, TL_stars.starGiftAttributeBackdrop.class));
                                    this.cardBackground.setPattern((TL_stars.starGiftAttributePattern) StarsController.findAttribute(starGift2.attributes, TL_stars.starGiftAttributePattern.class));
                                } else {
                                    giftDocument = null;
                                }
                                num = num2;
                                document = giftDocument;
                            } else if (messageAction2 instanceof TLRPC.TL_messageActionStarGift) {
                                TL_stars.StarGift starGift3 = ((TLRPC.TL_messageActionStarGift) messageAction2).gift;
                                document = starGift3 != null ? starGift3.sticker : null;
                                num = num2;
                                obj = messageObject2;
                                str2 = null;
                                stickerSetByName = null;
                                source = this.botInlineButtons;
                                if (source != null) {
                                    int rowsCount = source.getRowsCount();
                                    for (int i6 = 0; i6 < rowsCount; i6++) {
                                        int columnsCount = this.botInlineButtons.getColumnsCount(i6);
                                        int i7 = 0;
                                        while (i7 < columnsCount) {
                                            BotInlineKeyboard.Button button = this.botInlineButtons.getButton(i6, i7);
                                            BotButton botButton = new BotButton(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda2
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.invalidateOutbounds();
                                                }
                                            });
                                            botButton.buttonCustom = (BotInlineKeyboard.ButtonCustom) button;
                                            int iconRes = button.getIconRes();
                                            if (iconRes != 0) {
                                                Drawable drawable = getResources().getDrawable(iconRes);
                                                botButton.iconDrawable = drawable;
                                                drawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                                            }
                                            botButton.height = AndroidUtilities.m1124dp(40.0f);
                                            int i8 = botButton.positionFlags | 8;
                                            botButton.positionFlags = i8;
                                            int flag = BitwiseUtils.setFlag(i8, 1, i7 == 0);
                                            botButton.positionFlags = flag;
                                            botButton.positionFlags = BitwiseUtils.setFlag(flag, 2, i7 == 1);
                                            botButton.title = new Text(button.getText(), (TextPaint) getThemedPaint("paintChatBotButton"));
                                            this.botButtons.add(botButton);
                                            i7++;
                                        }
                                    }
                                }
                                this.forceWasUnread = messageObject2.wasUnread;
                                this.giftSticker = document;
                                if (document != null) {
                                    this.imageReceiver.setAllowStartLottieAnimation(true);
                                    int i9 = messageObject2.type;
                                    if (i9 != 31 && i9 != 33) {
                                        this.imageReceiver.setDelegate(this.giftStickerDelegate);
                                    }
                                    this.giftEffectAnimation = null;
                                    int i10 = 0;
                                    while (true) {
                                        if (i10 >= document.video_thumbs.size()) {
                                            break;
                                        }
                                        if ("f".equals(document.video_thumbs.get(i10).type)) {
                                            this.giftEffectAnimation = document.video_thumbs.get(i10);
                                            break;
                                        }
                                        i10++;
                                    }
                                    if (z3 || messageObject2.type != 18) {
                                        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f);
                                        this.imageReceiver.setAutoRepeat(0);
                                        this.imageReceiver.setImage(ImageLocation.getForDocument(document), String.format(Locale.US, "%d_%d_nr_messageId=%d", num, num, Integer.valueOf(messageObject2.stableId)), svgThumb, "tgs", obj, 1);
                                    }
                                } else if (str2 != null) {
                                    MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(str2, false, stickerSetByName == null);
                                }
                            } else if ((messageAction2 instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction2).refunded) {
                                TL_stars.StarGift starGift4 = ((TLRPC.TL_messageActionStarGiftUnique) messageAction2).gift;
                                if (starGift4 != null) {
                                    document = starGift4.getDocument();
                                }
                                num = num2;
                                obj = messageObject2;
                                str2 = null;
                                stickerSetByName = null;
                                source = this.botInlineButtons;
                                if (source != null) {
                                }
                                this.forceWasUnread = messageObject2.wasUnread;
                                this.giftSticker = document;
                                if (document != null) {
                                }
                            } else {
                                if (messageAction2 instanceof TLRPC.TL_messageActionGiftTon) {
                                    str = UserConfig.getInstance(this.currentAccount).premiumTonStickerPack;
                                    if (str == null) {
                                        MediaDataController.getInstance(this.currentAccount).checkTonGiftStickers();
                                        return;
                                    }
                                } else {
                                    str = UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack;
                                    if (str == null) {
                                        MediaDataController.getInstance(this.currentAccount).checkPremiumGiftStickers();
                                        return;
                                    }
                                }
                                stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str);
                                if (stickerSetByName == null) {
                                    stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str);
                                }
                                if (stickerSetByName != null) {
                                    TLRPC.MessageAction messageAction3 = messageObject2.messageOwner.action;
                                    int i11 = messageAction3.months;
                                    if (messageObject2.type == 30) {
                                        if (messageAction3 instanceof TLRPC.TL_messageActionGiftTon) {
                                            tonGiftEmoji = StarsIntroActivity.getTonGiftEmoji(messageAction3.cryptoAmount);
                                        } else {
                                            if (messageAction3 instanceof TLRPC.TL_messageActionGiftStars) {
                                                j = ((TLRPC.TL_messageActionGiftStars) messageAction3).stars;
                                            } else {
                                                j = ((TLRPC.TL_messageActionPrizeStars) messageAction3).stars;
                                            }
                                            if (j <= 1000) {
                                                tonGiftEmoji = "2⃣";
                                            } else if (j < 2500) {
                                                tonGiftEmoji = "3⃣";
                                            } else {
                                                tonGiftEmoji = "4⃣";
                                            }
                                        }
                                        int i12 = 0;
                                        while (true) {
                                            if (i12 >= stickerSetByName.packs.size()) {
                                                break;
                                            }
                                            TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) stickerSetByName.packs.get(i12);
                                            if (TextUtils.equals(tL_stickerPack.emoticon, tonGiftEmoji) && !tL_stickerPack.documents.isEmpty()) {
                                                long jLongValue = ((Long) tL_stickerPack.documents.get(0)).longValue();
                                                for (int i13 = 0; i13 < stickerSetByName.documents.size(); i13++) {
                                                    document2 = (TLRPC.Document) stickerSetByName.documents.get(i13);
                                                    if (document2 != null && document2.f1668id == jLongValue) {
                                                        break;
                                                    }
                                                }
                                            } else {
                                                i12++;
                                            }
                                        }
                                        document2 = null;
                                    } else {
                                        String str5 = (String) monthsToEmoticon.get(Integer.valueOf(i11));
                                        ArrayList arrayList2 = stickerSetByName.packs;
                                        int size3 = arrayList2.size();
                                        int i14 = 0;
                                        document2 = null;
                                        while (i14 < size3) {
                                            Object obj2 = arrayList2.get(i14);
                                            i14++;
                                            TLRPC.TL_stickerPack tL_stickerPack2 = (TLRPC.TL_stickerPack) obj2;
                                            if (Objects.equals(tL_stickerPack2.emoticon, str5)) {
                                                ArrayList arrayList3 = tL_stickerPack2.documents;
                                                int size4 = arrayList3.size();
                                                TLRPC.Document document4 = document2;
                                                int i15 = i5;
                                                while (true) {
                                                    if (i15 >= size4) {
                                                        num = num2;
                                                        str3 = str;
                                                        break;
                                                    }
                                                    Object obj3 = arrayList3.get(i15);
                                                    i15++;
                                                    long jLongValue2 = ((Long) obj3).longValue();
                                                    ArrayList arrayList4 = stickerSetByName.documents;
                                                    int size5 = arrayList4.size();
                                                    int i16 = i5;
                                                    while (true) {
                                                        if (i16 >= size5) {
                                                            num = num2;
                                                            str3 = str;
                                                            break;
                                                        }
                                                        Object obj4 = arrayList4.get(i16);
                                                        i16++;
                                                        TLRPC.Document document5 = (TLRPC.Document) obj4;
                                                        num = num2;
                                                        str3 = str;
                                                        if (document5.f1668id == jLongValue2) {
                                                            document4 = document5;
                                                            break;
                                                        } else {
                                                            num2 = num;
                                                            str = str3;
                                                        }
                                                    }
                                                    if (document4 != null) {
                                                        break;
                                                    }
                                                    num2 = num;
                                                    str = str3;
                                                    i5 = 0;
                                                }
                                                document2 = document4;
                                            } else {
                                                num = num2;
                                                str3 = str;
                                            }
                                            if (document2 != null) {
                                                break;
                                            }
                                            num2 = num;
                                            str = str3;
                                            i5 = 0;
                                        }
                                    }
                                    num = num2;
                                    str3 = str;
                                    if (document2 != null || stickerSetByName.documents.isEmpty()) {
                                        obj = stickerSetByName;
                                        document = document2;
                                    } else {
                                        document = (TLRPC.Document) stickerSetByName.documents.get(0);
                                        obj = stickerSetByName;
                                    }
                                    str2 = str3;
                                    source = this.botInlineButtons;
                                    if (source != null) {
                                    }
                                    this.forceWasUnread = messageObject2.wasUnread;
                                    this.giftSticker = document;
                                    if (document != null) {
                                    }
                                } else {
                                    num = num2;
                                    str2 = str;
                                    document = null;
                                    obj = null;
                                    source = this.botInlineButtons;
                                    if (source != null) {
                                    }
                                    this.forceWasUnread = messageObject2.wasUnread;
                                    this.giftSticker = document;
                                    if (document != null) {
                                    }
                                }
                            }
                            str2 = null;
                        }
                        stickerSetByName = null;
                        obj = null;
                        source = this.botInlineButtons;
                        if (source != null) {
                        }
                        this.forceWasUnread = messageObject2.wasUnread;
                        this.giftSticker = document;
                        if (document != null) {
                        }
                    } else if (i2 == 11) {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        this.imageReceiver.setDelegate(null);
                        this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(AndroidUtilities.roundMessageSize, true));
                        this.imageReceiver.setAutoRepeatCount(1);
                        this.avatarDrawable.setInfo(messageObject2.getDialogId(), null, null);
                        if (messageObject2.messageOwner.action instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                            this.imageReceiver.setImage(null, null, this.avatarDrawable, null, messageObject2, 0);
                        } else if (messageObject2.strippedThumb == null) {
                            int size6 = messageObject2.photoThumbs.size();
                            for (int i17 = 0; i17 < size6; i17++) {
                                photoSize = messageObject2.photoThumbs.get(i17);
                                if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                                    break;
                                }
                            }
                            photoSize = null;
                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, 640);
                            if (closestPhotoSizeWithSize == null) {
                                TLRPC.Photo photo2 = messageObject2.messageOwner.action.photo;
                                if (photo2.video_sizes.isEmpty() || !SharedConfig.isAutoplayGifs()) {
                                    closestVideoSizeWithSize = null;
                                    if (closestVideoSizeWithSize == null) {
                                        this.imageReceiver.setImage(ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(photoSize, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 1);
                                    } else {
                                        this.imageReceiver.setImage(ImageLocation.getForObject(closestPhotoSizeWithSize, messageObject2.photoThumbsObject), "150_150", ImageLocation.getForObject(photoSize, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 1);
                                    }
                                } else {
                                    closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(photo2.video_sizes, MediaDataController.MAX_STYLE_RUNS_COUNT);
                                    if (!messageObject2.mediaExists && !DownloadController.getInstance(this.currentAccount).canDownloadMedia(4, closestVideoSizeWithSize.size)) {
                                        this.currentVideoLocation = ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2);
                                        DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(closestVideoSizeWithSize), messageObject2, this);
                                        closestVideoSizeWithSize = null;
                                    }
                                    if (closestVideoSizeWithSize == null) {
                                    }
                                }
                            } else {
                                this.imageReceiver.setImageBitmap(this.avatarDrawable);
                            }
                        } else {
                            photoSize = null;
                            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, 640);
                            if (closestPhotoSizeWithSize == null) {
                            }
                        }
                        this.imageReceiver.setVisible(!PhotoViewer.isShowingImage(messageObject2), false);
                    } else {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        this.imageReceiver.setDelegate(null);
                        this.imageReceiver.setImageBitmap((Bitmap) null);
                    }
                }
            }
            if (this.firstInChat && this.isAllChats && this.isSideMenued && (this.isForum || this.isMonoForum)) {
                this.topicSeparatorTopPadding = AndroidUtilities.m1124dp(33.0f);
                if (this.topicSeparator == null) {
                    TopicSeparator topicSeparator = new TopicSeparator(this.currentAccount, this, this.themeDelegate, true);
                    this.topicSeparator = topicSeparator;
                    topicSeparator.setOnClickListener(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setMessageObject$1();
                        }
                    });
                }
                if (!this.topicSeparator.update(this.currentMessageObject)) {
                    this.topicSeparator.detach();
                    this.topicSeparator = null;
                    i = 0;
                    this.topicSeparatorTopPadding = 0;
                } else {
                    if (this.attachedToWindow) {
                        this.topicSeparator.attach();
                    }
                    i = 0;
                }
            } else {
                TopicSeparator topicSeparator2 = this.topicSeparator;
                if (topicSeparator2 != null) {
                    topicSeparator2.detach();
                    this.topicSeparator = null;
                }
                i = 0;
                this.topicSeparatorTopPadding = 0;
            }
            int paddingTop = getPaddingTop();
            int i18 = this.topicSeparatorTopPadding;
            if (paddingTop != i18) {
                setPadding(i, i18, i, i);
            }
            this.rippleView.setVisibility((!isButtonLayout(messageObject) || this.starGiftLayout.has()) ? 8 : i);
            ForumUtilities.applyTopicToMessage(messageObject2);
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMessageObject$1() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            chatActionCellDelegate.onTopicClick(this);
        }
    }

    private float getUploadingInfoProgress(MessageObject messageObject) {
        MessagesController messagesController;
        String str;
        if (messageObject == null) {
            return 1.0f;
        }
        try {
            if (messageObject.type == 22 && (str = (messagesController = MessagesController.getInstance(this.currentAccount)).uploadingWallpaper) != null && TextUtils.equals(messageObject.messageOwner.action.wallpaper.uploadingImage, str)) {
                return messagesController.uploadingWallpaperInfo.uploadingProgress;
            }
            return 1.0f;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return 1.0f;
        }
    }

    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    public ImageReceiver getPhotoImage() {
        return this.imageReceiver;
    }

    public void setVisiblePart(float f, int i) {
        this.visiblePartSet = true;
        this.backgroundHeight = i;
        this.viewTop = f;
        this.viewTranslationX = 0.0f;
    }

    public void setVisiblePart(float f, float f2, int i, float f3) {
        this.visiblePartSet = true;
        this.backgroundHeight = i;
        this.viewTop = f;
        this.viewTranslationX = f2;
        this.dimAmount = f3;
        this.dimPaint.setColor(ColorUtils.setAlphaComponent(-16777216, (int) (f3 * 255.0f)));
        invalidate();
    }

    @Override // org.telegram.p029ui.Cells.BaseCell
    protected boolean onLongPress() {
        View.OnLongClickListener onLongClickListener;
        if (this.actionPressed && (onLongClickListener = this.onActionLongClick) != null && onLongClickListener.onLongClick(this)) {
            this.actionPressed = false;
            return true;
        }
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            return chatActionCellDelegate.didLongPress(this, this.lastTouchX, this.lastTouchY);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.rippleView;
        RectF rectF = this.giftButtonRect;
        view.layout((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.imageReceiver.onDetachedFromWindow();
        setStarsPaused(true);
        this.wasLayout = false;
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.detach();
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didUpdateTonGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        this.avatarStoryParams.onDetachFromWindow();
        this.transitionParams.onDetach();
        this.starGiftLayout.detach();
        this.reactionsLayoutInBubble.onDetachFromWindow();
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null) {
            topicSeparator.detach();
        }
        SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
        if (suggestBirthdayActionLayout != null) {
            suggestBirthdayActionLayout.detach();
        }
    }

    public boolean isCellAttachedToWindow() {
        return this.attachedToWindow;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ChatActionCellDelegate chatActionCellDelegate;
        super.onAttachedToWindow();
        this.attachedToWindow = true;
        this.imageReceiver.onAttachedToWindow();
        setStarsPaused(false);
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.attach();
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdatePremiumGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didUpdateTonGiftStickers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starGiftsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 21) {
            setMessageObject(messageObject, true);
        }
        this.starGiftLayout.attach();
        this.reactionsLayoutInBubble.onAttachToWindow();
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null) {
            topicSeparator.attach();
        }
        SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
        if (suggestBirthdayActionLayout != null) {
            suggestBirthdayActionLayout.attach();
        }
    }

    private void setStarsPaused(boolean z) {
        StarParticlesView.Drawable drawable = this.starParticlesDrawable;
        if (z == drawable.paused) {
            return;
        }
        drawable.paused = z;
        if (z) {
            drawable.pausedTime = System.currentTimeMillis();
            return;
        }
        for (int i = 0; i < this.starParticlesDrawable.particles.size(); i++) {
            ((StarParticlesView.Drawable.Particle) this.starParticlesDrawable.particles.get(i)).lifeTime += System.currentTimeMillis() - this.starParticlesDrawable.pausedTime;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:210:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0563  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ImageUpdater imageUpdater;
        TextLayout textLayout;
        TextLayout textLayout2;
        TLRPC.Message message;
        boolean zCheckBotButtonMotionEvent;
        StaticLayout staticLayout;
        List list;
        char c;
        TLRPC.Message message2;
        int i;
        MessageObject messageObject = this.currentMessageObject;
        float x = motionEvent.getX() - (this.sideMenuWidth / 2.0f);
        this.lastTouchX = x;
        float y = motionEvent.getY() + getPaddingTop();
        this.lastTouchY = y;
        boolean z = true;
        boolean z2 = false;
        if (messageObject == null) {
            if (this.onActionClick != null) {
                if (motionEvent.getAction() == 0) {
                    if (x >= this.backgroundLeft && x <= this.backgroundRight) {
                        this.actionPressed = true;
                        startCheckLongPress();
                        z2 = true;
                    }
                } else if (this.actionPressed) {
                    if (motionEvent.getAction() == 1) {
                        this.onActionClick.onClick(this);
                        this.actionPressed = false;
                    } else if (motionEvent.getAction() == 3) {
                        this.actionPressed = false;
                    } else if (motionEvent.getAction() == 2 && (x < this.backgroundLeft || x > this.backgroundRight)) {
                        this.actionPressed = false;
                        cancelCheckLongPress();
                    }
                }
            }
            if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                cancelCheckLongPress();
            }
            if (z2) {
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }
        TopicSeparator topicSeparator = this.topicSeparator;
        if (topicSeparator != null && topicSeparator.onTouchEvent(motionEvent, false)) {
            return true;
        }
        SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
        if (suggestBirthdayActionLayout != null && suggestBirthdayActionLayout.onTouchEvent(motionEvent)) {
            return true;
        }
        if ((this.starGiftLayout.has() && this.starGiftLayout.onTouchEvent(this.starGiftLayoutX, this.starGiftLayoutY, motionEvent)) || this.reactionsLayoutInBubble.checkTouchEvent(motionEvent)) {
            return true;
        }
        if (motionEvent.getAction() == 0) {
            if (this.delegate != null) {
                if ((messageObject.type == 11 || isButtonLayout(messageObject)) && this.imageReceiver.isInsideImage(x, y)) {
                    this.imagePressed = true;
                    zCheckBotButtonMotionEvent = true;
                } else {
                    zCheckBotButtonMotionEvent = false;
                }
                if (this.radialProgress.getIcon() == 4 && (((i = messageObject.type) == 21 || i == 22) && this.backgroundRect.contains(x, y))) {
                    this.imagePressed = true;
                    zCheckBotButtonMotionEvent = true;
                }
                TextLayout textLayout3 = this.giftPremiumText;
                if (textLayout3 == null || !this.giftPremiumTextCollapsed) {
                    c = 0;
                } else {
                    RectF rectF = AndroidUtilities.rectTmp;
                    float f = textLayout3.f1895x;
                    c = 0;
                    rectF.set(f, textLayout3.f1896y, textLayout3.layout.getWidth() + f, this.giftPremiumText.f1896y + r14.layout.getHeight());
                    if (rectF.contains(x, y)) {
                        this.textPressed = true;
                        zCheckBotButtonMotionEvent = true;
                    }
                }
                if (isButtonLayout(messageObject) && this.giftPremiumButtonLayout != null && (this.giftButtonRect.contains(x, y) || (this.buttonClickableAsImage && this.backgroundRect.contains(x, y)))) {
                    View view = this.rippleView;
                    this.giftButtonPressed = true;
                    view.setPressed(true);
                    this.bounce.setPressed(true);
                    zCheckBotButtonMotionEvent = true;
                }
                if (!zCheckBotButtonMotionEvent && isMessageActionSuggestedPostApproval()) {
                    this.textPressed = true;
                    zCheckBotButtonMotionEvent = true;
                }
                if (!zCheckBotButtonMotionEvent) {
                    MessageObject messageObject2 = this.currentMessageObject;
                    TLRPC.MessageAction messageAction = (messageObject2 == null || (message2 = messageObject2.messageOwner) == null) ? null : message2.action;
                    Class[] clsArr = new Class[2];
                    clsArr[c] = TLRPC.TL_messageActionSuggestedPostRefund.class;
                    clsArr[1] = TLRPC.TL_messageActionSuggestedPostSuccess.class;
                    if (TlUtils.isInstance(messageAction, clsArr)) {
                        this.textPressed = true;
                        zCheckBotButtonMotionEvent = true;
                    }
                }
                if (zCheckBotButtonMotionEvent) {
                    startCheckLongPress();
                }
            } else {
                zCheckBotButtonMotionEvent = false;
            }
        } else {
            if (motionEvent.getAction() != 2) {
                cancelCheckLongPress();
            }
            if (this.actionPressed) {
                if (motionEvent.getAction() == 2) {
                    if (x < this.backgroundLeft || x > this.backgroundRight) {
                        this.actionPressed = false;
                        zCheckBotButtonMotionEvent = false;
                    }
                } else if (motionEvent.getAction() == 1) {
                    View.OnClickListener onClickListener = this.onActionClick;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    this.actionPressed = false;
                } else if (motionEvent.getAction() == 3) {
                    this.actionPressed = false;
                }
                zCheckBotButtonMotionEvent = false;
            } else {
                if (this.textPressed) {
                    int action = motionEvent.getAction();
                    if (action == 1) {
                        View view2 = this.rippleView;
                        this.textPressed = false;
                        view2.setPressed(false);
                        this.bounce.setPressed(false);
                        if (this.delegate != null && messageObject.replyMessageObject != null && (message = messageObject.messageOwner) != null && TlUtils.isInstance(message.action, TLRPC.TL_messageActionTodoAppendTasks.class, TLRPC.TL_messageActionTodoCompletions.class, TLRPC.TL_messageActionSuggestedPostApproval.class, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
                            this.delegate.didPressReplyMessage(this, this.currentMessageObject.getReplyMsgId());
                        } else {
                            if (this.giftPremiumTextCollapsed && !this.giftPremiumTextUncollapsed && (textLayout2 = this.giftPremiumText) != null) {
                                int height = textLayout2.layout.getHeight() - this.giftPremiumTextCollapsedHeight;
                                this.giftPremiumTextUncollapsed = true;
                                ChatActionCellDelegate chatActionCellDelegate = this.delegate;
                                if (chatActionCellDelegate != null) {
                                    chatActionCellDelegate.forceUpdate(this, false);
                                    if (getParent() instanceof RecyclerListView) {
                                        ((RecyclerListView) getParent()).smoothScrollBy(0, height + AndroidUtilities.m1124dp(24.0f));
                                    }
                                }
                                return true;
                            }
                            if (this.birthdayLayout != null && this.backgroundRect.contains(motionEvent.getX(), motionEvent.getY())) {
                                this.birthdayLayout.open();
                                return true;
                            }
                        }
                    } else if (action == 2) {
                        TextLayout textLayout4 = this.giftPremiumText;
                        if (textLayout4 == null || !this.giftPremiumTextCollapsed) {
                            this.textPressed = false;
                        } else {
                            RectF rectF2 = AndroidUtilities.rectTmp;
                            float f2 = textLayout4.f1895x;
                            rectF2.set(f2, textLayout4.f1896y, textLayout4.layout.getWidth() + f2, this.giftPremiumText.f1896y + r10.layout.getHeight());
                            if (!rectF2.contains(x, y)) {
                                this.textPressed = false;
                            }
                        }
                        zCheckBotButtonMotionEvent = true;
                    } else if (action == 3) {
                        this.textPressed = false;
                        this.bounce.setPressed(false);
                    }
                } else if (this.giftButtonPressed) {
                    int action2 = motionEvent.getAction();
                    if (action2 == 1) {
                        this.imagePressed = false;
                        View view3 = this.rippleView;
                        this.giftButtonPressed = false;
                        view3.setPressed(false);
                        this.bounce.setPressed(false);
                        if (this.delegate != null) {
                            int i2 = messageObject.type;
                            if (i2 == 31) {
                                playSoundEffect(0);
                                openStarsGiftTransaction();
                            } else if (i2 == 25) {
                                playSoundEffect(0);
                                openPremiumGiftChannel();
                            } else if (i2 == 18) {
                                playSoundEffect(0);
                                openPremiumGiftPreview();
                            } else if (i2 == 30) {
                                playSoundEffect(0);
                                openStarsGiftTransaction();
                            } else {
                                TLRPC.Message message3 = messageObject.messageOwner;
                                if (message3 != null) {
                                    TLRPC.MessageAction messageAction2 = message3.action;
                                    if ((messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction2).balance_too_low) {
                                        playSoundEffect(0);
                                        openStarsNeedSheet();
                                    } else if (MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id) == null) {
                                        if (this.buttonClickableAsImage) {
                                            this.delegate.didClickImage(this);
                                        } else {
                                            this.delegate.didClickButton(this);
                                        }
                                    }
                                }
                            }
                        }
                    } else if (action2 != 2) {
                        if (action2 == 3) {
                            this.imagePressed = false;
                            View view4 = this.rippleView;
                            this.giftButtonPressed = false;
                            view4.setPressed(false);
                            this.bounce.setPressed(false);
                        }
                    } else if (!isButtonLayout(messageObject) || (!this.giftButtonRect.contains(x, y) && !this.backgroundRect.contains(x, y))) {
                        View view5 = this.rippleView;
                        this.giftButtonPressed = false;
                        view5.setPressed(false);
                        this.bounce.setPressed(false);
                    }
                } else if (this.imagePressed) {
                    int action3 = motionEvent.getAction();
                    if (action3 == 1) {
                        this.imagePressed = false;
                        if (this.giftPremiumTextCollapsed && !this.giftPremiumTextUncollapsed && (textLayout = this.giftPremiumText) != null) {
                            int height2 = textLayout.layout.getHeight() - this.giftPremiumTextCollapsedHeight;
                            this.giftPremiumTextUncollapsed = true;
                            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
                            if (chatActionCellDelegate2 != null) {
                                chatActionCellDelegate2.forceUpdate(this, false);
                                if (getParent() instanceof RecyclerListView) {
                                    ((RecyclerListView) getParent()).smoothScrollBy(0, height2 + AndroidUtilities.m1124dp(16.0f));
                                }
                            }
                            return true;
                        }
                        int i3 = messageObject.type;
                        if (i3 == 31) {
                            openStarsGiftTransaction();
                        } else if (i3 == 25) {
                            openPremiumGiftChannel();
                        } else if (i3 == 18) {
                            openPremiumGiftPreview();
                        } else if (i3 == 30) {
                            openStarsGiftTransaction();
                        } else if (this.delegate != null) {
                            if (i3 == 21 && (imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id)) != null) {
                                imageUpdater.cancel();
                            } else {
                                this.delegate.didClickImage(this);
                                playSoundEffect(0);
                            }
                        }
                    } else if (action3 != 2) {
                        if (action3 == 3) {
                            this.imagePressed = false;
                        }
                    } else if (isNewStyleButtonLayout()) {
                        if (!this.backgroundRect.contains(x, y)) {
                            this.imagePressed = false;
                        }
                    } else if (!this.imageReceiver.isInsideImage(x, y)) {
                        this.imagePressed = false;
                    }
                }
                zCheckBotButtonMotionEvent = false;
            }
        }
        if (!zCheckBotButtonMotionEvent && (motionEvent.getAction() == 0 || ((this.pressedLink != null || this.spoilerPressed != null) && motionEvent.getAction() == 1))) {
            TextLayout textLayout5 = this.giftPremiumText;
            if (textLayout5 != null && (list = textLayout5.spoilers) != null && !list.isEmpty() && !this.isSpoilerRevealing) {
                Iterator it = this.giftPremiumText.spoilers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    SpoilerEffect spoilerEffect = (SpoilerEffect) it.next();
                    Rect bounds = spoilerEffect.getBounds();
                    TextLayout textLayout6 = this.giftPremiumText;
                    if (bounds.contains((int) (x - textLayout6.f1895x), (int) (y - textLayout6.f1896y))) {
                        this.pressedLink = null;
                        if (motionEvent.getAction() == 0) {
                            this.spoilerPressed = spoilerEffect;
                        } else {
                            SpoilerEffect spoilerEffect2 = this.spoilerPressed;
                            if (spoilerEffect == spoilerEffect2) {
                                this.isSpoilerRevealing = true;
                                spoilerEffect2.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onTouchEvent$3();
                                    }
                                });
                                float fSqrt = (float) Math.sqrt(Math.pow(this.giftPremiumText.layout.getWidth(), 2.0d) + Math.pow(this.giftPremiumText.layout.getHeight(), 2.0d));
                                SpoilerEffect spoilerEffect3 = this.spoilerPressed;
                                TextLayout textLayout7 = this.giftPremiumText;
                                spoilerEffect3.startRipple((int) (x - textLayout7.f1895x), (int) (y - textLayout7.f1896y), fSqrt);
                                invalidate();
                            }
                        }
                        zCheckBotButtonMotionEvent = true;
                    }
                }
            }
            if (zCheckBotButtonMotionEvent || (staticLayout = this.textLayout) == null) {
                this.pressedLink = null;
            } else {
                if (x >= this.textX) {
                    int i4 = this.textY;
                    if (y >= i4 && x <= r8 + this.textWidth && y <= this.textHeight + i4) {
                        float f3 = y - i4;
                        float f4 = x - this.textXLeft;
                        if (!zCheckBotButtonMotionEvent) {
                            int lineForVertical = staticLayout.getLineForVertical((int) f3);
                            int offsetForHorizontal = this.textLayout.getOffsetForHorizontal(lineForVertical, f4);
                            float lineLeft = this.textLayout.getLineLeft(lineForVertical);
                            if (lineLeft > f4 || lineLeft + this.textLayout.getLineWidth(lineForVertical) < f4) {
                                this.pressedLink = null;
                            } else {
                                CharSequence charSequence = messageObject.messageText;
                                if (charSequence instanceof Spannable) {
                                    URLSpan[] uRLSpanArr = (URLSpan[]) ((Spannable) charSequence).getSpans(offsetForHorizontal, offsetForHorizontal, URLSpan.class);
                                    if (uRLSpanArr.length != 0) {
                                        if (motionEvent.getAction() == 0) {
                                            this.pressedLink = uRLSpanArr[0];
                                        } else {
                                            URLSpan uRLSpan = uRLSpanArr[0];
                                            URLSpan uRLSpan2 = this.pressedLink;
                                            if (uRLSpan == uRLSpan2) {
                                                openLink(uRLSpan2);
                                            }
                                        }
                                        zCheckBotButtonMotionEvent = z;
                                    } else {
                                        this.pressedLink = null;
                                    }
                                    z = zCheckBotButtonMotionEvent;
                                    zCheckBotButtonMotionEvent = z;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!zCheckBotButtonMotionEvent) {
            zCheckBotButtonMotionEvent = checkBotButtonMotionEvent(motionEvent);
        }
        return !zCheckBotButtonMotionEvent ? super.onTouchEvent(motionEvent) : zCheckBotButtonMotionEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$3() {
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTouchEvent$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$2() {
        this.isSpoilerRevealing = false;
        getMessageObject().isSpoilersRevealed = true;
        List list = this.giftPremiumText.spoilers;
        if (list != null) {
            list.clear();
        }
        invalidate();
    }

    private void openPremiumGiftChannel() {
        if (this.delegate != null) {
            final TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openPremiumGiftChannel$4(tL_messageActionGiftCode);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPremiumGiftChannel$4(TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode) {
        this.delegate.didOpenPremiumGiftChannel(this, tL_messageActionGiftCode.slug, false);
    }

    private boolean isSelfGiftCode() {
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return false;
        }
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.MessageAction messageAction = message.action;
        if (((messageAction instanceof TLRPC.TL_messageActionGiftCode) || (messageAction instanceof TLRPC.TL_messageActionGiftStars)) && (message.from_id instanceof TLRPC.TL_peerUser)) {
            return UserObject.isUserSelf(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.currentMessageObject.messageOwner.from_id.user_id)));
        }
        return false;
    }

    public void setOnActionClickListener(View.OnClickListener onClickListener) {
        this.onActionClick = onClickListener;
    }

    public void setOnActionLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.onActionLongClick = onLongClickListener;
    }

    private boolean isGiftCode() {
        MessageObject messageObject = this.currentMessageObject;
        return messageObject != null && (messageObject.messageOwner.action instanceof TLRPC.TL_messageActionGiftCode);
    }

    private void openPremiumGiftPreview() {
        final TLRPC.TL_premiumGiftOption tL_premiumGiftOption = new TLRPC.TL_premiumGiftOption();
        TLRPC.MessageAction messageAction = this.currentMessageObject.messageOwner.action;
        tL_premiumGiftOption.amount = messageAction.amount;
        tL_premiumGiftOption.months = messageAction.months;
        tL_premiumGiftOption.currency = messageAction.currency;
        final String str = null;
        if (isGiftCode() && !isSelfGiftCode()) {
            str = ((TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action).slug;
        }
        if (this.delegate != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openPremiumGiftPreview$5(tL_premiumGiftOption, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPremiumGiftPreview$5(TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str) {
        this.delegate.didOpenPremiumGift(this, tL_premiumGiftOption, str, false);
    }

    private void openStarsGiftTransaction() {
        TLRPC.Message message;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionGiftStars) {
            Context context = getContext();
            int i = this.currentAccount;
            TLRPC.Message message2 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context, i, message2.date, message2.from_id, message2.peer_id, (TLRPC.TL_messageActionGiftStars) message2.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionPrizeStars) {
            Context context2 = getContext();
            int i2 = this.currentAccount;
            TLRPC.Message message3 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context2, i2, message3.date, message3.from_id, message3.peer_id, (TLRPC.TL_messageActionPrizeStars) message3.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionGiftTon) {
            Context context3 = getContext();
            int i3 = this.currentAccount;
            TLRPC.Message message4 = this.currentMessageObject.messageOwner;
            StarsIntroActivity.showTransactionSheet(context3, i3, message4.date, message4.from_id, message4.peer_id, (TLRPC.TL_messageActionGiftTon) message4.action, this.avatarStoryParams.resourcesProvider);
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionStarGift) {
            if (((TLRPC.TL_messageActionStarGift) messageAction).forceIn) {
                return;
            }
            new StarGiftSheet(getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.themeDelegate).set(this.currentMessageObject).show();
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) {
            if (((TLRPC.TL_messageActionStarGiftUnique) messageAction).gift.burned) {
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    return;
                }
                BulletinFactory.m1246of(safeLastFragment).createSimpleBulletin(C2888R.raw.fire_on, LocaleController.getString(C2888R.string.UniqueGiftNotFoundBurned)).show();
                return;
            }
            new StarGiftSheet(getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.themeDelegate).set(this.currentMessageObject).show();
            return;
        }
        if (messageAction instanceof TLRPC.TL_messageActionSetChatTheme) {
            TLRPC.ChatTheme chatTheme = ((TLRPC.TL_messageActionSetChatTheme) messageAction).theme;
            if (chatTheme instanceof TLRPC.TL_chatThemeUniqueGift) {
                TL_stars.StarGift starGift = ((TLRPC.TL_chatThemeUniqueGift) chatTheme).gift;
                if (starGift instanceof TL_stars.TL_starGiftUnique) {
                    new StarGiftSheet(getContext(), this.currentAccount, this.currentMessageObject.getDialogId(), this.themeDelegate).set(starGift.slug, (TL_stars.TL_starGiftUnique) starGift, null).show();
                }
            }
        }
    }

    private void openStarsNeedSheet() {
        MessageSuggestionParams messageSuggestionParamsObtainSuggestionOffer = this.currentMessageObject.obtainSuggestionOffer();
        AmountUtils$Amount amountUtils$Amount = messageSuggestionParamsObtainSuggestionOffer.amount;
        if (amountUtils$Amount == null || amountUtils$Amount.currency != AmountUtils$Currency.STARS) {
            return;
        }
        new StarsIntroActivity.StarsNeededSheet(getContext(), this.themeDelegate, messageSuggestionParamsObtainSuggestionOffer.amount.asDecimal(), 13, ForumUtilities.getMonoForumTitle(this.currentAccount, this.currentMessageObject.getDialogId(), true), null, this.currentMessageObject.getDialogId()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLink(CharacterStyle characterStyle) {
        if (this.delegate == null || !(characterStyle instanceof URLSpan)) {
            return;
        }
        String url = ((URLSpan) characterStyle).getURL();
        if (url.startsWith("task")) {
            this.delegate.didPressTaskLink(this, this.currentMessageObject.getReplyMsgId(), Integer.parseInt(url.substring(5)));
            return;
        }
        if (url.startsWith("topic")) {
            URLSpan uRLSpan = this.pressedLink;
            if (uRLSpan instanceof URLSpanNoUnderline) {
                TLObject object = ((URLSpanNoUnderline) uRLSpan).getObject();
                if (object instanceof TLRPC.TL_forumTopic) {
                    ForumUtilities.openTopic(this.delegate.getBaseFragment(), -this.delegate.getDialogId(), (TLRPC.TL_forumTopic) object, 0);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("invite")) {
            URLSpan uRLSpan2 = this.pressedLink;
            if (uRLSpan2 instanceof URLSpanNoUnderline) {
                TLObject object2 = ((URLSpanNoUnderline) uRLSpan2).getObject();
                if (object2 instanceof TLRPC.TL_chatInviteExported) {
                    this.delegate.needOpenInviteLink((TLRPC.TL_chatInviteExported) object2);
                    return;
                }
                return;
            }
        }
        if (url.startsWith("game")) {
            this.delegate.didPressReplyMessage(this, this.currentMessageObject.getReplyMsgId());
        } else if (url.startsWith("http")) {
            Browser.openUrl(getContext(), url);
        } else {
            this.delegate.needOpenUserProfile(Long.parseLong(url));
        }
    }

    public void setOverrideTextMaxWidth(int i) {
        this.overriddenMaxWidth = i;
    }

    private boolean isMessageActionSuggestedPostApproval() {
        TLRPC.Message message;
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || (message = messageObject.messageOwner) == null || !(message.action instanceof TLRPC.TL_messageActionSuggestedPostApproval)) ? false : true;
    }

    private void createLayout(CharSequence charSequence, int i) {
        TextPaint textPaint;
        CharSequence charSequenceReplaceEmoji;
        ChatActionCellDelegate chatActionCellDelegate;
        TLRPC.Message message;
        MessageObject messageObject;
        int i2;
        int iM1124dp = i - AndroidUtilities.m1124dp(30.0f);
        if (this.isSideMenued) {
            iM1124dp -= AndroidUtilities.m1124dp(64.0f);
        }
        if (isMessageActionSuggestedPostApproval()) {
            iM1124dp = Math.min(iM1124dp - AndroidUtilities.m1124dp(this.isSideMenued ? 28.0f : 82.0f), AndroidUtilities.m1124dp(272.0f));
        }
        if (iM1124dp < 0) {
            return;
        }
        int i3 = this.overriddenMaxWidth;
        if (i3 > 0) {
            iM1124dp = Math.min(i3, iM1124dp);
        }
        int i4 = iM1124dp;
        this.invalidatePath = true;
        if (isMessageActionSuggestedPostApproval() || ((messageObject = this.currentMessageObject) != null && ((i2 = messageObject.type) == 34 || i2 == 35))) {
            textPaint = (TextPaint) getThemedPaint("paintChatActionText3");
        } else if (messageObject != null && messageObject.drawServiceWithDefaultTypeface) {
            textPaint = (TextPaint) getThemedPaint("paintChatActionText2");
        } else {
            textPaint = (TextPaint) getThemedPaint("paintChatActionText");
        }
        TextPaint textPaint2 = textPaint;
        textPaint2.linkColor = textPaint2.getColor();
        if (isMessageActionSuggestedPostApproval()) {
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                for (Emoji.EmojiSpan emojiSpan : (Emoji.EmojiSpan[]) spannable.getSpans(0, spannable.length(), Emoji.EmojiSpan.class)) {
                    spannable.removeSpan(emojiSpan);
                }
            }
            charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequence, textPaint2.getFontMetricsInt(), false, null, 0, 0.85f, 0);
        } else {
            charSequenceReplaceEmoji = charSequence;
        }
        StaticLayout staticLayout = new StaticLayout(charSequenceReplaceEmoji, textPaint2, i4, isMessageActionSuggestedPostApproval() ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        CharSequence charSequence2 = charSequenceReplaceEmoji;
        this.textLayout = staticLayout;
        this.titleLayout = null;
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null && (message = messageObject2.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if ((messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) && !((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).rejected && !((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).balance_too_low) {
                this.titleLayout = new StaticLayout(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.SuggestionAgreementReached)), textPaint2.getFontMetricsInt(), false, null, 0, 1.0f, 0), textPaint2, i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            }
        }
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, (!this.canDrawInParent || (chatActionCellDelegate = this.delegate) == null || chatActionCellDelegate.canDrawOutboundsContent()) ? false : true, this.animatedEmojiStack, this.textLayout);
        this.textHeight = 0;
        this.textWidth = 0;
        this.titleHeight = 0;
        StaticLayout staticLayout2 = this.titleLayout;
        if (staticLayout2 != null) {
            int height = staticLayout2.getHeight();
            this.titleHeight = height;
            this.titleHeight = height + AndroidUtilities.m1124dp(12.0f);
        }
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 == null || !messageObject3.isRepostPreview) {
            try {
                int lineCount = this.textLayout.getLineCount();
                for (int i5 = 0; i5 < lineCount; i5++) {
                    try {
                        float lineWidth = this.textLayout.getLineWidth(i5);
                        float f = i4;
                        if (lineWidth > f) {
                            lineWidth = f;
                        }
                        this.textHeight = (int) Math.max(this.textHeight, Math.ceil(this.textLayout.getLineBottom(i5)));
                        this.textWidth = (int) Math.max(this.textWidth, Math.ceil(lineWidth));
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                        return;
                    }
                }
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
        this.textX = (i - this.textWidth) / 2;
        int iM1124dp2 = AndroidUtilities.m1124dp(7.0f);
        this.textY = iM1124dp2;
        if (this.titleLayout != null) {
            this.textY = iM1124dp2 + this.titleHeight + AndroidUtilities.m1124dp(11.0f);
        }
        this.textXLeft = (i - (isMessageActionSuggestedPostApproval() ? this.textWidth : this.textLayout.getWidth())) / 2;
        this.titleXLeft = (i - i4) / 2;
        this.spoilersPool.addAll(this.spoilers);
        this.spoilers.clear();
        if (charSequence2 instanceof Spannable) {
            StaticLayout staticLayout3 = this.textLayout;
            int i6 = this.textX;
            SpoilerEffect.addSpoilers(this, staticLayout3, i6, i6 + this.textWidth, (Spannable) charSequence2, this.spoilersPool, this.spoilers, null);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iM1124dp;
        float f;
        float f2;
        float f3;
        float fM1124dp;
        float f4;
        float fM1124dp2;
        TLRPC.Message message;
        int i3;
        int i4;
        int i5;
        int iM1124dp2;
        int i6;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null && this.customText == null) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), this.topicSeparatorTopPadding + this.textHeight + AndroidUtilities.m1124dp(14.0f));
            return;
        }
        if (isButtonLayout(messageObject)) {
            this.giftRectSize = Math.min((int) (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() * 0.6f : (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.m1124dp(34.0f)), ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.m1124dp(64.0f));
            if ((!AndroidUtilities.isTablet() && ((i6 = messageObject.type) == 18 || i6 == 30 || isMessageActionSuggestedPostApproval())) || messageObject.type == 35) {
                this.giftRectSize = (int) (this.giftRectSize * 1.2f);
            }
            this.stickerSize = this.giftRectSize - AndroidUtilities.m1124dp(106.0f);
            if (messageObject.type == 31) {
                this.giftRectSize = Math.min(this.giftRectSize, AndroidUtilities.m1124dp(192.0f));
                this.stickerSize = AndroidUtilities.m1124dp(78.0f);
            }
            if (messageObject.type == 33) {
                this.giftRectSize = Math.min(this.giftRectSize, AndroidUtilities.m1124dp(220.0f));
                this.stickerSize = AndroidUtilities.m1124dp(78.0f);
            }
            if (isNewStyleButtonLayout()) {
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
            } else {
                this.imageReceiver.setRoundRadius(0);
            }
        }
        int iMax = Math.max(AndroidUtilities.m1124dp(30.0f), View.MeasureSpec.getSize(i));
        if (this.previousWidth != iMax) {
            this.wasLayout = true;
            this.previousWidth = iMax;
            buildLayout();
        }
        if (messageObject == null) {
            iM1124dp = 0;
        } else {
            if (messageObject.type == 11) {
                i5 = AndroidUtilities.roundMessageSize;
                iM1124dp2 = AndroidUtilities.m1124dp(10.0f);
            } else {
                if (isButtonLayout(messageObject)) {
                    i5 = this.giftRectSize;
                    iM1124dp2 = AndroidUtilities.m1124dp(12.0f);
                }
                iM1124dp = 0;
            }
            iM1124dp = i5 + iM1124dp2;
        }
        if (this.starGiftLayout.has()) {
            iM1124dp = (this.starGiftLayout.repost ? 0 : this.textY + this.textHeight + AndroidUtilities.m1124dp(16.0f)) + ((int) this.starGiftLayout.getHeight()) + AndroidUtilities.m1124dp(8.0f);
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble.isEmpty) {
                reactionsLayoutInBubble.totalHeight = reactionsLayoutInBubble.height + AndroidUtilities.m1124dp(8.0f);
                i4 = this.reactionsLayoutInBubble.totalHeight;
                iM1124dp += i4;
            }
            f = 14.0f;
            f4 = 24.0f;
        } else {
            SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
            if (suggestBirthdayActionLayout != null) {
                iM1124dp = suggestBirthdayActionLayout.height() + AndroidUtilities.m1124dp(12.0f);
                ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
                if (!reactionsLayoutInBubble2.isEmpty) {
                    reactionsLayoutInBubble2.totalHeight = reactionsLayoutInBubble2.height + AndroidUtilities.m1124dp(8.0f);
                    i4 = this.reactionsLayoutInBubble.totalHeight;
                    iM1124dp += i4;
                }
            } else if (isButtonLayout(messageObject)) {
                boolean zIsGiftChannel = isGiftChannel(messageObject);
                f = 14.0f;
                int imageSize = getImageSize(messageObject);
                if (isNewStyleButtonLayout()) {
                    f2 = 12.0f;
                    f3 = 10.0f;
                    int iM1124dp3 = this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f);
                    int iM1124dp4 = AndroidUtilities.m1124dp(16.0f);
                    if (imageSize > 0) {
                        iM1124dp4 = (iM1124dp4 * 2) + imageSize;
                    }
                    int i7 = iM1124dp3 + iM1124dp4;
                    TextLayout textLayout = this.giftPremiumText;
                    fM1124dp = i7 + (textLayout == null ? 0 : textLayout.layout.getHeight() + AndroidUtilities.m1124dp(4.0f));
                } else {
                    f2 = 12.0f;
                    f3 = 10.0f;
                    fM1124dp = this.textY + this.textHeight + (this.giftRectSize * 0.075f) + imageSize + AndroidUtilities.m1124dp(4.0f) + (this.giftPremiumText == null ? 0 : r12.layout.getHeight() + AndroidUtilities.m1124dp(4.0f));
                }
                this.giftPremiumAdditionalHeight = 0;
                if (this.giftPremiumTitleLayout != null) {
                    float height = fM1124dp + r12.getHeight();
                    if (this.giftPremiumTitleLayout.getLineCount() > 1) {
                        f4 = 24.0f;
                        this.giftPremiumAdditionalHeight += this.giftPremiumTitleLayout.getHeight() - this.giftPremiumTitleLayout.getLineTop(1);
                    } else {
                        f4 = 24.0f;
                    }
                    fM1124dp2 = height + AndroidUtilities.m1124dp(zIsGiftChannel ? 6.0f : 0.0f);
                    if (this.giftPremiumSubtitleLayout != null) {
                        fM1124dp2 += r5.getHeight() + AndroidUtilities.m1124dp(9.0f);
                    }
                    if (this.giftPremiumReleasedText != null) {
                        fM1124dp2 += AndroidUtilities.m1124dp(f4);
                    }
                } else {
                    f4 = 24.0f;
                    fM1124dp2 = fM1124dp - AndroidUtilities.m1124dp(f2);
                    this.giftPremiumAdditionalHeight -= AndroidUtilities.m1124dp(30.0f);
                }
                TextLayout textLayout2 = this.giftPremiumText;
                int height2 = textLayout2 == null ? 0 : textLayout2.layout.getHeight();
                if (this.giftPremiumText == null) {
                    this.giftPremiumAdditionalHeight = 0;
                } else if (this.giftPremiumSubtitleLayout != null) {
                    this.giftPremiumAdditionalHeight += height2 + AndroidUtilities.m1124dp(f3);
                } else {
                    MessageObject messageObject2 = this.currentMessageObject;
                    if (messageObject2.type == 18 || messageObject2.isStarGiftAction()) {
                        this.giftPremiumAdditionalHeight += height2 - AndroidUtilities.m1124dp(this.giftPremiumButtonLayout == null ? 0.0f : f3);
                    } else if (this.currentMessageObject.type == 30) {
                        this.giftPremiumAdditionalHeight += height2 - AndroidUtilities.m1124dp(20.0f);
                    } else if (this.giftPremiumTextCollapsed) {
                        this.giftPremiumAdditionalHeight += height2;
                    } else if (this.giftPremiumText.layout.getLineCount() > 2) {
                        this.giftPremiumAdditionalHeight += ((this.giftPremiumText.layout.getLineBottom(0) - this.giftPremiumText.layout.getLineTop(0)) * this.giftPremiumText.layout.getLineCount()) - 2;
                    }
                }
                if (this.giftPremiumReleasedText != null) {
                    this.giftPremiumAdditionalHeight += AndroidUtilities.m1124dp(f4);
                }
                int iM1124dp5 = this.giftPremiumAdditionalHeight - AndroidUtilities.m1124dp(zIsGiftChannel ? 14.0f : 0.0f);
                this.giftPremiumAdditionalHeight = iM1124dp5;
                iM1124dp += iM1124dp5;
                int iM1124dp6 = this.textHeight + iM1124dp + AndroidUtilities.m1124dp(14.0f);
                StaticLayout staticLayout = this.giftPremiumButtonLayout;
                if (staticLayout != null) {
                    float height3 = fM1124dp2 + ((((iM1124dp6 - fM1124dp2) - (staticLayout != null ? staticLayout.getHeight() : 0)) - AndroidUtilities.m1124dp(8.0f)) / 2.0f);
                    if (this.currentMessageObject.isStarGiftAction()) {
                        height3 += AndroidUtilities.m1124dp(4.0f);
                    }
                    float f5 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                    this.giftButtonRect.set(f5 - AndroidUtilities.m1124dp(18.0f), height3 - AndroidUtilities.m1124dp(8.0f), f5 + this.giftPremiumButtonWidth + AndroidUtilities.m1124dp(18.0f), height3 + (this.giftPremiumButtonLayout != null ? r15.getHeight() : 0) + AndroidUtilities.m1124dp(8.0f));
                } else {
                    iM1124dp -= AndroidUtilities.m1124dp(40.0f);
                    this.giftPremiumAdditionalHeight -= AndroidUtilities.m1124dp(40.0f);
                    MessageObject messageObject3 = this.currentMessageObject;
                    if (messageObject3 != null && (message = messageObject3.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGift)) {
                        iM1124dp -= AndroidUtilities.m1124dp(8.0f);
                        this.giftPremiumAdditionalHeight -= AndroidUtilities.m1124dp(8.0f);
                    }
                }
                int measuredWidth = getMeasuredWidth() << (getMeasuredHeight() + 16);
                this.starParticlesDrawable.rect.set(this.giftButtonRect);
                this.starParticlesDrawable.rect2.set(this.giftButtonRect);
                if (this.starsSize != measuredWidth) {
                    this.starsSize = measuredWidth;
                    this.starParticlesDrawable.resetPositions();
                }
                if (isNewStyleButtonLayout()) {
                    int iM1124dp7 = this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f);
                    this.backgroundRectHeight = 0;
                    int iM1124dp8 = AndroidUtilities.m1124dp(16.0f);
                    if (imageSize > 0) {
                        iM1124dp8 = (iM1124dp8 * 2) + imageSize;
                    }
                    this.backgroundRectHeight = iM1124dp8;
                    StaticLayout staticLayout2 = this.giftPremiumSubtitleLayout;
                    if (staticLayout2 != null) {
                        this.backgroundRectHeight = iM1124dp8 + staticLayout2.getHeight() + AndroidUtilities.m1124dp(f3);
                    }
                    if (this.giftPremiumReleasedText != null) {
                        this.backgroundRectHeight += AndroidUtilities.m1124dp(f4);
                    }
                    StaticLayout staticLayout3 = this.giftPremiumTitleLayout;
                    if (staticLayout3 != null) {
                        this.backgroundRectHeight += staticLayout3.getHeight() + AndroidUtilities.m1124dp(4.0f);
                    }
                    int i8 = this.backgroundRectHeight;
                    TextLayout textLayout3 = this.giftPremiumText;
                    int height4 = i8 + (textLayout3 != null ? textLayout3.layout.getHeight() : 0);
                    this.backgroundRectHeight = height4;
                    float f6 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                    if (this.giftPremiumButtonLayout != null) {
                        this.backgroundButtonTop = height4 + iM1124dp7 + AndroidUtilities.m1124dp(32.0f);
                        this.giftButtonRect.set(f6 - AndroidUtilities.m1124dp(18.0f), this.backgroundButtonTop, f6 + this.giftPremiumButtonWidth + AndroidUtilities.m1124dp(18.0f), this.backgroundButtonTop + this.giftPremiumButtonLayout.getHeight() + (AndroidUtilities.m1124dp(8.0f) * 2));
                        this.backgroundRectHeight = (int) (this.backgroundRectHeight + AndroidUtilities.m1124dp(32.0f) + this.giftButtonRect.height());
                    } else if (!isMessageActionSuggestedPostApproval() && (messageObject == null || ((i3 = messageObject.type) != 34 && i3 != 33 && i3 != 35))) {
                        this.giftButtonRect.set(f6 - AndroidUtilities.m1124dp(18.0f), this.backgroundButtonTop, f6 + this.giftPremiumButtonWidth + AndroidUtilities.m1124dp(18.0f), this.backgroundButtonTop + AndroidUtilities.m1124dp(17.0f) + (AndroidUtilities.m1124dp(8.0f) * 2));
                        this.backgroundRectHeight += AndroidUtilities.m1124dp(17.0f);
                    }
                    int iM1124dp9 = this.backgroundRectHeight + AndroidUtilities.m1124dp(16.0f);
                    this.backgroundRectHeight = iM1124dp9;
                    int iM1124dp10 = iM1124dp7 + iM1124dp9 + AndroidUtilities.m1124dp(6.0f);
                    ReactionsLayoutInBubble reactionsLayoutInBubble3 = this.reactionsLayoutInBubble;
                    if (!reactionsLayoutInBubble3.isEmpty) {
                        reactionsLayoutInBubble3.totalHeight = reactionsLayoutInBubble3.height + AndroidUtilities.m1124dp(8.0f);
                        iM1124dp10 += this.reactionsLayoutInBubble.totalHeight;
                    }
                    iM1124dp = iM1124dp10;
                    if (this.botInlineButtons != null) {
                        iM1124dp += AndroidUtilities.m1124dp(44.0f);
                    }
                }
            }
            f = 14.0f;
            f4 = 24.0f;
        }
        if (this.currentMessageObject != null) {
            ReactionsLayoutInBubble reactionsLayoutInBubble4 = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble4.isEmpty) {
                reactionsLayoutInBubble4.totalHeight = reactionsLayoutInBubble4.height + AndroidUtilities.m1124dp(8.0f);
                iM1124dp += this.reactionsLayoutInBubble.totalHeight;
            }
        }
        if (isMessageActionSuggestedPostApproval()) {
            iM1124dp += this.titleHeight + AndroidUtilities.m1124dp(f4);
        }
        if (messageObject != null && isNewStyleButtonLayout()) {
            setMeasuredDimension(iMax, this.topicSeparatorTopPadding + iM1124dp);
        } else {
            setMeasuredDimension(iMax, this.topicSeparatorTopPadding + this.textHeight + iM1124dp + AndroidUtilities.m1124dp(f));
        }
        this.reactionsLayoutInBubble.f2054y = (getMeasuredHeight() - getPaddingTop()) - this.reactionsLayoutInBubble.totalHeight;
    }

    private boolean isNewStyleButtonLayout() {
        MessageObject messageObject;
        int i;
        if (this.starGiftLayout.has() || this.birthdayLayout != null || (i = (messageObject = this.currentMessageObject).type) == 31 || i == 33 || i == 35 || i == 34 || i == 21 || i == 22 || messageObject.isStoryMention()) {
            return true;
        }
        TLRPC.Message message = this.currentMessageObject.messageOwner;
        if (message == null) {
            return false;
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
            return ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).balance_too_low || ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).rejected;
        }
        return false;
    }

    private int getImageSize(MessageObject messageObject) {
        int i;
        int iM1124dp = this.stickerSize;
        if (messageObject.type == 21 || isNewStyleButtonLayout()) {
            iM1124dp = AndroidUtilities.m1124dp(78.0f);
        }
        if (isMessageActionSuggestedPostApproval() || (i = messageObject.type) == 34 || i == 35) {
            return 0;
        }
        return iM1124dp;
    }

    /* JADX WARN: Removed duplicated region for block: B:164:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildLayout() {
        CharSequence charSequenceCreateActionTextWithTopic;
        CharSequence charSequence;
        CharSequence string;
        CharSequence charSequence2;
        boolean z;
        CharSequence string2;
        CharSequence string3;
        ArrayList arrayList;
        TLRPC.Photo photo;
        ArrayList arrayList2;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        CharSequence string4;
        String string5;
        int i;
        char c;
        long j;
        boolean z2;
        TL_stars.StarGift starGift;
        String str;
        CharSequence charSequenceReplaceTags;
        TL_stars.StarGift starGift2;
        CharSequence string6;
        CharSequence charSequenceReplaceSingleTagToLink;
        String publicUsername;
        char c2;
        Object objValueOf;
        TLRPC.Peer peer;
        TLRPC.Message message;
        TLRPC.MessageAction messageAction;
        int i2;
        TLRPC.MessageMedia messageMedia;
        this.giftRectEmpty = false;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null) {
            if (!messageObject.isExpiredStory()) {
                ChatActionCellDelegate chatActionCellDelegate = this.delegate;
                charSequenceCreateActionTextWithTopic = (chatActionCellDelegate != null && chatActionCellDelegate.getTopicId() == 0 && MessageObject.isTopicActionMessage(messageObject)) ? ForumUtilities.createActionTextWithTopic(MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, true)), messageObject) : null;
            } else if (messageObject.messageOwner.media.user_id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                charSequenceCreateActionTextWithTopic = StoriesUtilities.createExpiredStoryString(true, C2888R.string.ExpiredStoryMention, new Object[0]);
            } else {
                charSequenceCreateActionTextWithTopic = StoriesUtilities.createExpiredStoryString(true, C2888R.string.ExpiredStoryMentioned, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name);
            }
            if (charSequenceCreateActionTextWithTopic == null) {
                TLRPC.Message message2 = messageObject.messageOwner;
                if (message2 != null && (messageMedia = message2.media) != null && messageMedia.ttl_seconds != 0) {
                    if (messageMedia.photo != null) {
                        charSequenceCreateActionTextWithTopic = LocaleController.getString(C2888R.string.AttachPhotoExpired);
                    } else {
                        TLRPC.Document document = messageMedia.document;
                        if ((document instanceof TLRPC.TL_documentEmpty) || ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && document == null)) {
                            if (messageMedia.voice) {
                                charSequenceCreateActionTextWithTopic = LocaleController.getString(C2888R.string.AttachVoiceExpired);
                            } else if (messageMedia.round) {
                                charSequenceCreateActionTextWithTopic = LocaleController.getString(C2888R.string.AttachRoundExpired);
                            } else {
                                charSequenceCreateActionTextWithTopic = LocaleController.getString(C2888R.string.AttachVideoExpired);
                            }
                        } else {
                            charSequenceCreateActionTextWithTopic = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                        }
                    }
                } else {
                    charSequenceCreateActionTextWithTopic = AnimatedEmojiSpan.cloneSpans(messageObject.messageText);
                }
                if (ChatUtils.getInstance().shouldAddTimestamp(this.currentMessageObject, charSequenceCreateActionTextWithTopic)) {
                    charSequenceCreateActionTextWithTopic = ChatUtils.getInstance().addTimestamp(charSequenceCreateActionTextWithTopic, this.currentMessageObject.messageOwner.date, this.themeDelegate);
                }
            }
        } else {
            charSequenceCreateActionTextWithTopic = this.customText;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (messageObject2 != null && messageObject2.isRepostPreview) {
            charSequenceCreateActionTextWithTopic = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (messageObject2 != null && (message = messageObject2.messageOwner) != null && (messageAction = message.action) != null) {
            if (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                i2 = C2888R.drawable.mini_checklist_add;
            } else if (messageAction instanceof TLRPC.TL_messageActionTodoCompletions) {
                TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction;
                if (tL_messageActionTodoCompletions.incompleted.size() > tL_messageActionTodoCompletions.completed.size()) {
                    i2 = C2888R.drawable.mini_checklist_undone;
                } else {
                    i2 = C2888R.drawable.mini_checklist_done;
                }
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceCreateActionTextWithTopic);
                spannableStringBuilder.insert(0, (CharSequence) "i ");
                spannableStringBuilder.setSpan(new ColoredImageSpan(i2), 0, 1, 33);
                charSequenceCreateActionTextWithTopic = spannableStringBuilder;
            }
        }
        createLayout(charSequenceCreateActionTextWithTopic, this.previousWidth);
        if (this.birthdayLayout != null) {
            this.textLayout = null;
            this.textHeight = 0;
            this.titleLayout = null;
            this.titleHeight = 0;
            this.textY = 0;
        }
        if (messageObject != null) {
            TLRPC.Message message3 = messageObject.messageOwner;
            if (message3 != null) {
                TLRPC.MessageAction messageAction2 = message3.action;
                if ((messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction2).balance_too_low) {
                    createGiftPremiumLayouts(null, null, null, charSequenceCreateActionTextWithTopic, false, !ChatObject.canManageMonoForum(this.currentAccount, messageObject.getDialogId()) ? LocaleController.getString(C2888R.string.StarsBuy) : null, 11, null, this.giftRectSize, false, true);
                    this.textLayout = null;
                    this.textHeight = 0;
                    this.titleLayout = null;
                    this.titleHeight = 0;
                    this.textY = 0;
                    this.giftRectEmpty = true;
                } else if (message3 != null) {
                    TLRPC.MessageAction messageAction3 = message3.action;
                    if ((messageAction3 instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction3).rejected) {
                        createGiftPremiumLayouts(null, null, null, charSequenceCreateActionTextWithTopic, false, null, 11, null, this.giftRectSize, false, true);
                        this.textLayout = null;
                        this.textHeight = 0;
                        this.titleLayout = null;
                        this.titleHeight = 0;
                        this.textY = 0;
                        this.giftRectEmpty = true;
                    } else {
                        int i3 = messageObject.type;
                        if (i3 == 11) {
                            float fM1124dp = this.textHeight + AndroidUtilities.m1124dp(19.0f);
                            int i4 = AndroidUtilities.roundMessageSize;
                            this.imageReceiver.setImageCoords((this.previousWidth - AndroidUtilities.roundMessageSize) / 2.0f, fM1124dp, i4, i4);
                        } else if (i3 == 25) {
                            createGiftPremiumChannelLayouts();
                        } else if (i3 == 30) {
                            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.currentMessageObject.getDialogId()));
                            TLRPC.MessageAction messageAction4 = messageObject.messageOwner.action;
                            if (messageAction4 instanceof TLRPC.TL_messageActionGiftStars) {
                                createGiftPremiumLayouts(LocaleController.formatPluralStringComma("ActionGiftStarsTitle", (int) ((TLRPC.TL_messageActionGiftStars) messageAction4).stars), null, null, AndroidUtilities.replaceTags(this.currentMessageObject.isOutOwner() ? LocaleController.formatString(C2888R.string.ActionGiftStarsSubtitle, UserObject.getForcedFirstName(user)) : LocaleController.getString(C2888R.string.ActionGiftStarsSubtitleYou)), false, LocaleController.getString(C2888R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                            } else if ((messageAction4 instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction4).refunded) {
                                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageObject.messageOwner.action;
                                if (messageObject.isOutOwner() != (!tL_messageActionStarGiftUnique.upgrade)) {
                                    clientUserId = messageObject.getDialogId();
                                }
                                TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(clientUserId));
                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(tL_messageActionStarGiftUnique.prepaid_upgrade ? C2888R.string.Gift2ActionUpgradeTitle : C2888R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                if (user2 != null && user2.photo != null) {
                                    spannableStringBuilder2.append((CharSequence) "a ");
                                    AvatarSpan avatarSpan = new AvatarSpan(this, this.currentAccount, 18.0f);
                                    avatarSpan.setUser(user2);
                                    spannableStringBuilder2.setSpan(avatarSpan, spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 33);
                                }
                                spannableStringBuilder2.append((CharSequence) UserObject.getForcedFirstName(user2));
                                createGiftPremiumLayouts(spannableStringBuilder2, null, null, LocaleController.getString(C2888R.string.Gift2ActionUpgradeRefundedText), false, LocaleController.getString(C2888R.string.ActionGiftStarsView), 12, LocaleController.getString(C2888R.string.Gift2UniqueRibbon), this.giftRectSize, true, false);
                            } else if (messageAction4 instanceof TLRPC.TL_messageActionStarGift) {
                                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction4;
                                long j2 = tL_messageActionStarGift.convert_stars;
                                long clientUserId2 = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                TLRPC.Peer peer2 = tL_messageActionStarGift.peer;
                                boolean z3 = peer2 != null && (!tL_messageActionStarGift.prepaid_upgrade || (peer2 instanceof TLRPC.TL_peerChannel));
                                boolean z4 = messageObject.getDialogId() == clientUserId2 && !z3;
                                long fromChatId = messageObject.getFromChatId();
                                if (!tL_messageActionStarGift.prepaid_upgrade && (peer = tL_messageActionStarGift.from_id) != null) {
                                    fromChatId = DialogObject.getPeerDialogId(peer);
                                }
                                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                                TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(fromChatId);
                                long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionStarGift.to_id);
                                TLObject userOrChat2 = MessagesController.getInstance(this.currentAccount).getUserOrChat(peerDialogId);
                                if (!tL_messageActionStarGift.can_upgrade || tL_messageActionStarGift.converted) {
                                    j = peerDialogId;
                                } else {
                                    j = peerDialogId;
                                    if (tL_messageActionStarGift.upgrade_stars > 0 && !tL_messageActionStarGift.upgraded) {
                                        z2 = true;
                                    }
                                    if (j == 0 && tL_messageActionStarGift.auction_acquired && userOrChat2 != null) {
                                        spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2888R.string.Gift2ActionTitleTo)).append((CharSequence) " ");
                                        if (DialogObject.hasPhoto(userOrChat2)) {
                                            spannableStringBuilder3.append((CharSequence) "a ");
                                            AvatarSpan avatarSpan2 = new AvatarSpan(this, this.currentAccount, 18.0f);
                                            avatarSpan2.setObject(userOrChat2);
                                            spannableStringBuilder3.setSpan(avatarSpan2, spannableStringBuilder3.length() - 2, spannableStringBuilder3.length() - 1, 33);
                                        }
                                        spannableStringBuilder3.append((CharSequence) DialogObject.getShortName(userOrChat2));
                                    } else if (!z4) {
                                        if (tL_messageActionStarGift.gift_num > 0 && (starGift = tL_messageActionStarGift.gift) != null && (str = starGift.title) != null) {
                                            spannableStringBuilder3.append((CharSequence) str).append((CharSequence) " #").append((CharSequence) LocaleController.formatNumber(tL_messageActionStarGift.gift_num, ','));
                                        } else {
                                            spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2888R.string.Gift2ActionSelfTitle));
                                        }
                                    } else {
                                        spannableStringBuilder3.append((CharSequence) LocaleController.getString(tL_messageActionStarGift.prepaid_upgrade ? C2888R.string.Gift2ActionUpgradeTitle : C2888R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                        if (DialogObject.hasPhoto(userOrChat)) {
                                            spannableStringBuilder3.append((CharSequence) "a ");
                                            AvatarSpan avatarSpan3 = new AvatarSpan(this, this.currentAccount, 18.0f);
                                            avatarSpan3.setObject(userOrChat);
                                            spannableStringBuilder3.setSpan(avatarSpan3, spannableStringBuilder3.length() - 2, spannableStringBuilder3.length() - 1, 33);
                                        }
                                        spannableStringBuilder3.append((CharSequence) DialogObject.getShortName(userOrChat));
                                    }
                                    boolean z5 = !((messageObject.isOutOwner() || z4) && tL_messageActionStarGift.converted) && tL_messageActionStarGift.convert_stars > 0 && MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - messageObject.messageOwner.date) > 0 && !tL_messageActionStarGift.refunded;
                                    if (tL_messageActionStarGift.refunded) {
                                        charSequenceReplaceTags = LocaleController.getString(C2888R.string.Gift2ActionConvertRefundedText);
                                    } else {
                                        TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                                        if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                            this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
                                            MessageObject.addEntitiesToText(spannableStringBuilder4, tL_messageActionStarGift.message.entities, false, false, true, true);
                                            charSequenceReplaceTags = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder4, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_messageActionStarGift.message.entities, this.giftTextPaint.getFontMetricsInt());
                                        } else if (tL_messageActionStarGift.auction_acquired) {
                                            charSequenceReplaceTags = LocaleController.formatString(C2888R.string.Gift2ActionWonActionText, LocaleController.formatNumber(tL_messageActionStarGift.gift.stars + tL_messageActionStarGift.upgrade_stars, ','));
                                        } else if (z3) {
                                            if (tL_messageActionStarGift.converted) {
                                                charSequenceReplaceTags = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j2);
                                            } else if (z5 && j2 > 0) {
                                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionInfoChannel", (int) j2));
                                            } else {
                                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.Gift2ActionInfoChannelNoConvert));
                                            }
                                        } else if (z4) {
                                            if (tL_messageActionStarGift.converted && j2 > 0) {
                                                charSequenceReplaceTags = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j2);
                                            } else if (tL_messageActionStarGift.can_upgrade) {
                                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.Gift2ActionSelfInfoUpgrade));
                                            } else {
                                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.Gift2ActionSelfInfoNoConvert));
                                            }
                                        } else if (z2) {
                                            charSequenceReplaceTags = AndroidUtilities.replaceTags(messageObject.isOutOwner() ? LocaleController.formatString(C2888R.string.Gift2ActionUpgradeOut, UserObject.getForcedFirstName(user)) : LocaleController.getString(C2888R.string.Gift2ActionUpgrade));
                                        } else if (messageObject.isOutOwner()) {
                                            if (!z5 || j2 <= 0) {
                                                charSequenceReplaceTags = tL_messageActionStarGift.can_upgrade ? AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.Gift2ActionOutInfoUpgrade, UserObject.getForcedFirstName(user))) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.Gift2ActionOutInfoNoConvert, UserObject.getForcedFirstName(user)));
                                            } else {
                                                charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionOutInfo", (int) j2, UserObject.getForcedFirstName(user)));
                                            }
                                        } else if (tL_messageActionStarGift.converted) {
                                            charSequenceReplaceTags = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j2);
                                        } else if (tL_messageActionStarGift.saved) {
                                            if (!z5) {
                                                charSequenceReplaceTags = LocaleController.getString(C2888R.string.Gift2ActionBotSavedInfo);
                                            } else {
                                                charSequenceReplaceTags = LocaleController.getString(C2888R.string.Gift2ActionSavedInfo);
                                            }
                                        } else if (!z5) {
                                            charSequenceReplaceTags = LocaleController.getString(C2888R.string.Gift2ActionBotInfo);
                                        } else {
                                            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionInfo", (int) j2));
                                        }
                                    }
                                    starGift2 = tL_messageActionStarGift.gift;
                                    if (starGift2 == null || !starGift2.limited) {
                                        string6 = null;
                                    } else {
                                        int i5 = C2888R.string.Gift2Limited1OfRibbon;
                                        int i6 = starGift2.availability_total;
                                        if (i6 > 1500) {
                                            c2 = 0;
                                            objValueOf = AndroidUtilities.formatWholeNumber(i6, 0);
                                        } else {
                                            c2 = 0;
                                            objValueOf = Integer.valueOf(i6);
                                        }
                                        Object[] objArr = new Object[1];
                                        objArr[c2] = objValueOf;
                                        string6 = LocaleController.formatString(i5, objArr);
                                    }
                                    CharSequence string7 = LocaleController.getString(C2888R.string.ActionGiftStarsView);
                                    if (!messageObject.isOutOwner()) {
                                        CharSequence charSequence3 = string7;
                                        if (tL_messageActionStarGift.forceIn || z2) {
                                            charSequence3 = string7;
                                            charSequence3 = string7;
                                            if (!messageObject.isOutOwner() && z2) {
                                                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                                                spannableStringBuilder5.append((CharSequence) "^  ");
                                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.gift_unpack);
                                                coloredImageSpan.setScale(0.8f, 0.8f);
                                                spannableStringBuilder5.setSpan(coloredImageSpan, 0, 1, 33);
                                                spannableStringBuilder5.append((CharSequence) LocaleController.getString(C2888R.string.Gift2Unpack));
                                                charSequence3 = spannableStringBuilder5;
                                            }
                                        }
                                        CharSequence charSequence4 = charSequence3;
                                        TL_stars.StarGift starGift3 = tL_messageActionStarGift.gift;
                                        if (starGift3 == null || starGift3.released_by == null || (publicUsername = DialogObject.getPublicUsername(MessagesController.getInstance(this.currentAccount).getUserOrChat(DialogObject.getPeerDialogId(tL_messageActionStarGift.gift.released_by)))) == null) {
                                            charSequenceReplaceSingleTagToLink = null;
                                        } else {
                                            charSequenceReplaceSingleTagToLink = StarGiftSheet.replaceSingleTagToLink(LocaleController.formatString(C2888R.string.Gift2ActionReleasedBy, "@" + publicUsername), null);
                                        }
                                        createGiftPremiumLayouts(spannableStringBuilder3, null, charSequenceReplaceSingleTagToLink, charSequenceReplaceTags, false, charSequence4, 11, string6, this.giftRectSize, true, false);
                                    }
                                }
                                z2 = false;
                                if (j == 0) {
                                    if (!z4) {
                                    }
                                    if (messageObject.isOutOwner()) {
                                        if (tL_messageActionStarGift.refunded) {
                                        }
                                        starGift2 = tL_messageActionStarGift.gift;
                                        if (starGift2 == null) {
                                            string6 = null;
                                            CharSequence string72 = LocaleController.getString(C2888R.string.ActionGiftStarsView);
                                            if (!messageObject.isOutOwner()) {
                                            }
                                        }
                                    } else {
                                        if (tL_messageActionStarGift.refunded) {
                                        }
                                        starGift2 = tL_messageActionStarGift.gift;
                                        if (starGift2 == null) {
                                        }
                                    }
                                }
                            } else if (messageAction4 instanceof TLRPC.TL_messageActionGiftTon) {
                                createGiftPremiumLayouts(LocaleController.getString(C2888R.string.ActionGiftTonTitle), null, null, this.currentMessageObject.messageText, false, LocaleController.getString(C2888R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else {
                                createGiftPremiumLayouts(LocaleController.getString(C2888R.string.ActionStarGiveawayPrizeTitle), null, null, this.currentMessageObject.messageText, false, LocaleController.getString(C2888R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            }
                        } else {
                            long dialogId = 0;
                            if (i3 == 33) {
                                TLRPC.TL_messageActionStarGiftPurchaseOffer tL_messageActionStarGiftPurchaseOffer = (TLRPC.TL_messageActionStarGiftPurchaseOffer) message3.action;
                                SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(charSequenceCreateActionTextWithTopic);
                                spannableStringBuilder6.append((CharSequence) "\n\n");
                                if (tL_messageActionStarGiftPurchaseOffer.accepted) {
                                    spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GiftOfferStatusAccepted)));
                                } else if (tL_messageActionStarGiftPurchaseOffer.declined) {
                                    spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GiftOfferStatusRejected)));
                                } else {
                                    int iMax = Math.max(0, tL_messageActionStarGiftPurchaseOffer.expires_at - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
                                    if (iMax == 0) {
                                        spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GiftOfferStatusExpired)));
                                    } else {
                                        String shortDuration2 = LocaleController.formatShortDuration2(iMax);
                                        if (shortDuration2.endsWith(".")) {
                                            i = 1;
                                            c = 0;
                                            shortDuration2 = shortDuration2.substring(0, shortDuration2.length() - 1);
                                        } else {
                                            i = 1;
                                            c = 0;
                                        }
                                        int i7 = C2888R.string.GiftOfferStatusPending;
                                        Object[] objArr2 = new Object[i];
                                        objArr2[c] = shortDuration2;
                                        spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i7, objArr2)));
                                    }
                                }
                                createGiftPremiumLayouts(null, null, null, spannableStringBuilder6, false, null, 11, null, this.giftRectSize, false, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = false;
                            } else if (i3 == 34) {
                                createGiftPremiumLayouts(null, null, null, charSequenceCreateActionTextWithTopic, false, null, 11, null, this.giftRectSize, false, true);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = true;
                            } else if (i3 == 35) {
                                TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest = (TLRPC.TL_messageActionNoForwardsRequest) message3.action;
                                SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                String shortName = DialogObject.getShortName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())));
                                if (tL_messageActionNoForwardsRequest.new_value) {
                                    spannableStringBuilder7.append(messageObject.isOut() ? LocaleController.getString(C2888R.string.SharingOfferDisableHeaderYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SharingOfferDisableHeaderOther, shortName)));
                                } else {
                                    spannableStringBuilder7.append(messageObject.isOut() ? LocaleController.getString(C2888R.string.SharingOfferEnableHeaderYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SharingOfferEnableHeaderOther, shortName)));
                                }
                                if (tL_messageActionNoForwardsRequest.new_value) {
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferDisable1), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferDisable2), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferDisable3), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferDisable4), C2888R.drawable.floating_check));
                                } else {
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferEnable1), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferEnable2), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferEnable3), C2888R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2888R.string.SharingOfferEnable4), C2888R.drawable.floating_check));
                                }
                                createGiftPremiumLayouts(null, null, null, spannableStringBuilder7, false, null, 11, null, this.giftRectSize, false, true);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = true;
                            } else if (i3 == 31) {
                                String str2 = ((TLRPC.TL_chatThemeUniqueGift) ((TLRPC.TL_messageActionSetChatTheme) message3.action).theme).gift.title + " #" + LocaleController.formatNumber(r2.num, ',');
                                long fromChatId2 = messageObject.getFromChatId();
                                if (UserConfig.getInstance(this.currentAccount).getClientUserId() == fromChatId2) {
                                    string5 = LocaleController.formatString(C2888R.string.GiftThemesSetByYou, str2);
                                } else {
                                    string5 = LocaleController.formatString(C2888R.string.GiftThemesSetByOther, DialogObject.getShortName(this.currentAccount, fromChatId2), str2);
                                }
                                createGiftPremiumLayouts(null, null, null, AndroidUtilities.replaceTags(string5), false, LocaleController.getString(C2888R.string.GiftThemesSetActionView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (i3 == 18) {
                                TLRPC.MessageAction messageAction5 = message3.action;
                                if (messageAction5 instanceof TLRPC.TL_messageActionGiftPremium) {
                                    tL_textWithEntities = ((TLRPC.TL_messageActionGiftPremium) messageAction5).message;
                                } else {
                                    tL_textWithEntities = messageAction5 instanceof TLRPC.TL_messageActionGiftCode ? ((TLRPC.TL_messageActionGiftCode) messageAction5).message : null;
                                }
                                if (tL_textWithEntities == null || TextUtils.isEmpty(tL_textWithEntities.text)) {
                                    string4 = null;
                                } else {
                                    SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder(tL_textWithEntities.text);
                                    this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
                                    MessageObject.addEntitiesToText(spannableStringBuilder8, tL_textWithEntities.entities, false, false, true, true);
                                    string4 = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder8, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_textWithEntities.entities, this.giftTextPaint.getFontMetricsInt());
                                }
                                if (string4 == null) {
                                    string4 = LocaleController.getString(C2888R.string.ActionGiftPremiumText);
                                }
                                createGiftPremiumLayouts(LocaleController.formatPluralStringComma("ActionGiftPremiumTitle2", messageObject.messageOwner.action.months), null, null, string4, true, LocaleController.getString((!isGiftCode() || isSelfGiftCode()) ? C2888R.string.ActionGiftPremiumView : C2888R.string.GiftPremiumUseGiftBtn), 11, null, this.giftRectSize, false, false);
                            } else if (i3 == 21) {
                                TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) message3.action;
                                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                                if (!messageObject.isOutOwner()) {
                                    dialogId = messageObject.getDialogId();
                                }
                                TLRPC.User user3 = messagesController.getUser(Long.valueOf(dialogId));
                                boolean z6 = tL_messageActionSuggestProfilePhoto.video || !((photo = tL_messageActionSuggestProfilePhoto.photo) == null || (arrayList2 = photo.video_sizes) == null || arrayList2.isEmpty());
                                if (user3.f1825id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                                    if (z6) {
                                        string2 = LocaleController.formatString(C2888R.string.ActionSuggestVideoFromYouDescription, user4.first_name);
                                    } else {
                                        string2 = LocaleController.formatString(C2888R.string.ActionSuggestPhotoFromYouDescription, user4.first_name);
                                    }
                                } else if (z6) {
                                    string2 = LocaleController.formatString(C2888R.string.ActionSuggestVideoToYouDescription, user3.first_name);
                                } else {
                                    string2 = LocaleController.formatString(C2888R.string.ActionSuggestPhotoToYouDescription, user3.first_name);
                                }
                                CharSequence charSequence5 = string2;
                                if (tL_messageActionSuggestProfilePhoto.video || ((arrayList = tL_messageActionSuggestProfilePhoto.photo.video_sizes) != null && !arrayList.isEmpty())) {
                                    string3 = LocaleController.getString(C2888R.string.ViewVideoAction);
                                } else {
                                    string3 = LocaleController.getString(C2888R.string.ViewPhotoAction);
                                }
                                createGiftPremiumLayouts(null, null, null, charSequence5, false, string3, 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (i3 == 22) {
                                TLRPC.User user5 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                                if (messageObject.getDialogId() < 0) {
                                    charSequence2 = messageObject.messageText;
                                } else if (!messageObject.isOutOwner() && messageObject.isWallpaperForBoth() && messageObject.isCurrentWallpaper()) {
                                    charSequence = messageObject.messageText;
                                    string = LocaleController.getString(C2888R.string.RemoveWallpaperAction);
                                    z = false;
                                    createGiftPremiumLayouts(null, null, null, charSequence, false, string, 11, null, this.giftRectSize, z, false);
                                    this.textLayout = null;
                                    this.textHeight = 0;
                                    this.titleLayout = null;
                                    this.titleHeight = 0;
                                    this.textY = 0;
                                } else if (user5 != null && user5.f1825id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    charSequence2 = messageObject.messageText;
                                } else {
                                    charSequence = messageObject.messageText;
                                    string = LocaleController.getString(C2888R.string.ViewWallpaperAction);
                                    z = true;
                                    createGiftPremiumLayouts(null, null, null, charSequence, false, string, 11, null, this.giftRectSize, z, false);
                                    this.textLayout = null;
                                    this.textHeight = 0;
                                    this.titleLayout = null;
                                    this.titleHeight = 0;
                                    this.textY = 0;
                                }
                                charSequence = charSequence2;
                                string = null;
                                z = true;
                                createGiftPremiumLayouts(null, null, null, charSequence, false, string, 11, null, this.giftRectSize, z, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (messageObject.isStoryMention()) {
                                TLRPC.User user6 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                                createGiftPremiumLayouts(null, null, null, user6.self ? AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.StoryYouMentionedTitle, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name)) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.StoryMentionedTitle, user6.first_name)), false, LocaleController.getString(C2888R.string.StoryMentionedAction), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            }
                        }
                    }
                }
            }
        }
        this.reactionsLayoutInBubble.f2053x = AndroidUtilities.m1124dp(12.0f);
        this.reactionsLayoutInBubble.measure(this.previousWidth - AndroidUtilities.m1124dp(24.0f), 1);
    }

    private CharSequence createOption(String str, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceArrows(str, false, AndroidUtilities.m1124dp(6.0f), -AndroidUtilities.m1124dp(1.3f), 0.8f, i));
        spannableStringBuilder.insert(0, (CharSequence) "*");
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m1124dp(18.0f)), 0, 1, 33);
        if (Build.VERSION.SDK_INT >= 29) {
            ChatActionCell$$ExternalSyntheticApiModelOutline1.m1227m();
            spannableStringBuilder.setSpan(ChatActionCell$$ExternalSyntheticApiModelOutline0.m1226m(AndroidUtilities.m1124dp(12.0f)), 0, spannableStringBuilder.length(), 33);
        }
        spannableStringBuilder.setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_NORMAL), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    private void createGiftPremiumChannelLayouts() {
        String string;
        SpannableStringBuilder spannableStringBuilder;
        int iM1124dp = this.giftRectSize - AndroidUtilities.m1124dp(16.0f);
        this.giftTitlePaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
        int i = tL_messageActionGiftCode.months;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
        String str = chat == null ? null : chat.title;
        boolean z = tL_messageActionGiftCode.via_giveaway;
        if (tL_messageActionGiftCode.unclaimed) {
            string = LocaleController.getString("BoostingUnclaimedPrize", C2888R.string.BoostingUnclaimedPrize);
        } else {
            string = LocaleController.getString("BoostingCongratulations", C2888R.string.BoostingCongratulations);
        }
        String pluralString = i == 12 ? LocaleController.formatPluralString("BoldYears", 1, new Object[0]) : LocaleController.formatPluralString("BoldMonths", i, new Object[0]);
        if (z) {
            if (tL_messageActionGiftCode.unclaimed) {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BoostingYouHaveUnclaimedPrize, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BoostingUnclaimedPrizeDuration, pluralString)));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BoostingReceivedPrizeFrom, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BoostingReceivedPrizeDuration, pluralString)));
            }
        } else {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(str == null ? LocaleController.getString(C2888R.string.BoostingReceivedGiftNoName) : LocaleController.formatString("BoostingReceivedGiftFrom", C2888R.string.BoostingReceivedGiftFrom, str)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BoostingReceivedGiftDuration, pluralString)));
        }
        String string2 = LocaleController.getString("BoostingReceivedGiftOpenBtn", C2888R.string.BoostingReceivedGiftOpenBtn);
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
        spannableStringBuilderValueOf.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf.length(), 33);
        TextPaint textPaint = this.giftTitlePaint;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        this.giftPremiumTitleLayout = new StaticLayout(spannableStringBuilderValueOf, textPaint, iM1124dp, alignment, 1.1f, 0.0f, false);
        this.giftPremiumSubtitleLayout = null;
        this.giftPremiumReleasedText = null;
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.detach();
        }
        TextLayout textLayout2 = new TextLayout();
        this.giftPremiumText = textLayout2;
        textLayout2.setText(spannableStringBuilder, this.giftTextPaint, iM1124dp);
        SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(string2);
        spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf2.length(), 33);
        this.giftPremiumTextCollapsed = false;
        this.giftPremiumTextCollapsedHeight = 0;
        this.giftPremiumTextMore = null;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), iM1124dp, alignment, 1.0f, 0.0f, false);
        this.giftPremiumButtonLayout = staticLayout;
        this.buttonClickableAsImage = true;
        this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v7 */
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
    private void createGiftPremiumLayouts(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, boolean z, CharSequence charSequence5, int i, CharSequence charSequence6, int i2, boolean z2, boolean z3) {
        ?? r4;
        int i3;
        int iCutInFancyHalf;
        CharSequence charSequenceReplaceEmoji = charSequence4;
        int iM1124dp = i2 - AndroidUtilities.m1124dp(16.0f);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 30) {
            iM1124dp -= AndroidUtilities.m1124dp(16.0f);
        }
        int i4 = iM1124dp;
        if (charSequence != null) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (messageObject2 != null && messageObject2.type == 30) {
                this.giftTitlePaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
            } else {
                this.giftTitlePaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
            }
            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
            spannableStringBuilderValueOf.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf.length(), 33);
            r4 = 0;
            this.giftPremiumTitleLayout = new StaticLayout(spannableStringBuilderValueOf, this.giftTitlePaint, i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        } else {
            r4 = 0;
            this.giftPremiumTitleLayout = null;
        }
        if (charSequence2 != null) {
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
            this.giftPremiumSubtitleLayout = new StaticLayout(charSequence2, this.giftSubtitlePaint, i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        } else {
            this.giftPremiumSubtitleLayout = null;
        }
        if (charSequence3 != null) {
            Text text = new Text(charSequence3, 10.0f);
            this.giftPremiumReleasedText = text;
            text.paint.linkColor = -1;
        } else {
            this.giftPremiumReleasedText = null;
        }
        MessageObject messageObject3 = this.currentMessageObject;
        if (messageObject3 != null && messageObject3.type == 35) {
            this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(14.3f));
        } else if (messageObject3 != null && (isNewStyleButtonLayout() || (i3 = this.currentMessageObject.type) == 30 || i3 == 18 || i3 == 31 || i3 == 33)) {
            this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        } else {
            this.giftTextPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        }
        int iM1124dp2 = i4 - AndroidUtilities.m1124dp(12.0f);
        MessageObject messageObject4 = this.currentMessageObject;
        if (messageObject4 != null && messageObject4.type == 22 && messageObject4.getDialogId() >= 0 && (iCutInFancyHalf = HintView2.cutInFancyHalf(charSequenceReplaceEmoji, this.giftTextPaint)) < iM1124dp2 && iCutInFancyHalf > iM1124dp2 / 5.0f) {
            iM1124dp2 = iCutInFancyHalf;
        }
        if (charSequenceReplaceEmoji == 0) {
            TextLayout textLayout = this.giftPremiumText;
            if (textLayout != null) {
                textLayout.detach();
                this.giftPremiumText = null;
            }
            this.giftPremiumTextCollapsed = r4;
        } else {
            if (this.giftPremiumText == null) {
                this.giftPremiumText = new TextLayout();
            }
            try {
                charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceReplaceEmoji, this.giftTextPaint.getFontMetricsInt(), r4);
            } catch (Exception unused) {
            }
            this.giftPremiumText.setText(charSequenceReplaceEmoji, this.giftTextPaint, iM1124dp2);
            if (z && this.giftPremiumText.layout.getLineCount() > 3) {
                this.giftPremiumTextCollapsed = !this.giftPremiumTextUncollapsed;
                this.giftPremiumTextCollapsedHeight = this.giftPremiumText.layout.getLineBottom(2);
                this.giftPremiumTextMore = new Text(LocaleController.getString(C2888R.string.Gift2CaptionMore), this.giftTextPaint.getTextSize() / AndroidUtilities.density, AndroidUtilities.bold());
                int lineBottom = this.giftPremiumText.layout.getLineBottom(2);
                this.giftPremiumTextMoreY = lineBottom;
                this.giftPremiumTextMoreH = lineBottom - this.giftPremiumText.layout.getLineTop(2);
                this.giftPremiumTextMoreX = (int) this.giftPremiumText.layout.getLineRight(2);
            } else {
                this.giftPremiumTextCollapsed = r4;
                this.giftPremiumTextExpandedAnimated.set(true, true);
                this.giftPremiumTextCollapsedHeight = r4;
            }
            if (this.giftPremiumTextCollapsed) {
                int lineEnd = this.giftPremiumText.layout.getLineEnd(2) - 1;
                TextLayout textLayout2 = this.giftPremiumText;
                CharSequence charSequenceSubSequence = charSequenceReplaceEmoji;
                if (lineEnd >= 0) {
                    charSequenceSubSequence = charSequenceReplaceEmoji.subSequence(r4, lineEnd);
                }
                textLayout2.setText(charSequenceSubSequence, this.giftTextPaint, iM1124dp2);
            }
        }
        if (charSequence5 != null) {
            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(charSequence5);
            spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), r4, spannableStringBuilderValueOf2.length(), 33);
            StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            this.giftPremiumButtonLayout = staticLayout;
            this.buttonClickableAsImage = (!z2 || this.giftPremiumTextCollapsed) ? r4 : 1;
            this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
        } else {
            this.giftPremiumButtonLayout = null;
            this.buttonClickableAsImage = r4;
            this.giftPremiumButtonWidth = 0.0f;
        }
        if (charSequence6 != null) {
            if (this.giftRibbonPaintEffect == null) {
                this.giftRibbonPaintEffect = new CornerPathEffect(AndroidUtilities.m1124dp(5.0f));
            }
            if (this.giftRibbonPath == null) {
                Path path = new Path();
                this.giftRibbonPath = path;
                GiftSheet.RibbonDrawable.fillRibbonPath(path, 1.35f, r4);
            }
            Text text2 = new Text(charSequence6, i, AndroidUtilities.bold());
            this.giftRibbonText = text2;
            text2.ellipsize(AndroidUtilities.m1124dp(62.0f));
            return;
        }
        this.giftRibbonPath = null;
        this.giftRibbonText = null;
    }

    private float measureLayoutWidth(Layout layout) {
        float f = 0.0f;
        for (int i = 0; i < layout.getLineCount(); i++) {
            float fCeil = (int) Math.ceil(layout.getLineWidth(i));
            if (fCeil > f) {
                f = fCeil;
            }
        }
        return f;
    }

    public boolean showingCancelButton() {
        RadialProgress2 radialProgress2 = this.radialProgress;
        return radialProgress2 != null && radialProgress2.getIcon() == 3;
    }

    public int getCustomDate() {
        return this.customDate;
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x058b A[LOOP:1: B:170:0x0585->B:172:0x058b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x063f  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x075c  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x076a  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0a78  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0c0e  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0c15  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0c24  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0c31  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0c45  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0c77  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0d75  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0d83  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0da0  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0e3b  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0e98  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0efc  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0f12  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0f39  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0f3e  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0f4a  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0f68  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0f6c  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0f74  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0f78  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0fa2  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0fee  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        int i2;
        int i3;
        int i4;
        ChatActionCell chatActionCell;
        float fM1124dp;
        int iM1124dp;
        int i5;
        float fM1124dp2;
        float f5;
        ChatActionCell chatActionCell2;
        float f6;
        float f7;
        float f8;
        Text text;
        TextLayout textLayout;
        StaticLayout staticLayout;
        Theme.ResourcesProvider resourcesProvider;
        boolean z;
        float f9;
        float fClamp;
        Paint themedPaint;
        Theme.ResourcesProvider resourcesProvider2;
        boolean zIsDark;
        ColorMatrix colorMatrix;
        boolean z2;
        int i6;
        int i7;
        Text text2;
        ChatActionCellDelegate chatActionCellDelegate;
        float fM1124dp3;
        Canvas canvas2 = canvas;
        canvas2.save();
        canvas2.translate(this.sideMenuWidth / 2.0f, getPaddingTop());
        MessageObject messageObject = this.currentMessageObject;
        float f10 = this.giftPremiumTextExpandedAnimated.set(!this.giftPremiumTextCollapsed);
        int imageSize = this.stickerSize;
        if (!this.starGiftLayout.has() && this.birthdayLayout == null && isButtonLayout(messageObject)) {
            this.stickerSize = this.giftRectSize - AndroidUtilities.m1124dp(106.0f);
            if (isNewStyleButtonLayout()) {
                imageSize = getImageSize(messageObject);
                float fM1124dp4 = (this.previousWidth - imageSize) / 2.0f;
                float fM1124dp5 = this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f) + AndroidUtilities.m1124dp(16.0f);
                if (messageObject.isStoryMention()) {
                    f2 = 1.0f;
                    this.avatarStoryParams.storyItem = messageObject.messageOwner.media.storyItem;
                } else {
                    f2 = 1.0f;
                }
                float f11 = imageSize;
                f = 16.0f;
                this.avatarStoryParams.originalAvatarRect.set(fM1124dp4, fM1124dp5, fM1124dp4 + f11, f11 + fM1124dp5);
                int i8 = messageObject.type;
                if (i8 == 31 || i8 == 33 || i8 == 34 || i8 == 35) {
                    fM1124dp4 += AndroidUtilities.m1124dp(10.0f);
                    fM1124dp5 += AndroidUtilities.m1124dp(10.0f);
                    imageSize -= AndroidUtilities.m1124dp(20.0f);
                }
                this.imageReceiver.setImageCoords(fM1124dp4, fM1124dp5, Math.max(0, imageSize), Math.max(0, imageSize));
                int i9 = messageObject.type;
                if (i9 == 31 || i9 == 33 || i9 == 34 || i9 == 35) {
                    imageSize += AndroidUtilities.m1124dp(20.0f);
                }
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(imageSize, true));
            } else {
                f = 16.0f;
                f2 = 1.0f;
                int i10 = messageObject.type;
                if (i10 == 11) {
                    ImageReceiver imageReceiver = this.imageReceiver;
                    int i11 = this.previousWidth;
                    int i12 = this.stickerSize;
                    imageReceiver.setImageCoords((i11 - i12) / 2.0f, this.textY + this.textHeight + (this.giftRectSize * 0.075f), i12, i12);
                } else if (i10 == 25) {
                    imageSize = (int) (this.stickerSize * (AndroidUtilities.isTablet() ? 1.0f : 1.2f));
                    float f12 = imageSize;
                    this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.m1124dp(22.0f), f12, f12);
                } else if (messageObject.isStarGiftAction()) {
                    float f13 = imageSize;
                    this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, this.textY + this.textHeight + (this.giftRectSize * 0.075f) + AndroidUtilities.m1124dp(2.0f), f13, f13);
                } else if (messageObject.type == 30) {
                    imageSize = (int) (this.stickerSize * 1.1f);
                    TLRPC.Message message = messageObject.messageOwner;
                    if (message != null && !(message.action instanceof TLRPC.TL_messageActionStarGift)) {
                        float f14 = imageSize;
                        this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.m1124dp(22.0f), f14, f14);
                    } else {
                        float f15 = imageSize;
                        this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.m1124dp(12.0f), f15, f15);
                    }
                } else {
                    imageSize = (int) (this.stickerSize * 1.0f);
                    float f16 = imageSize;
                    this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.m1124dp(4.0f), f16, f16);
                }
            }
            TextPaint textPaint = (TextPaint) getThemedPaint("paintChatActionText");
            this.textPaint = textPaint;
            if (textPaint != null) {
                TextPaint textPaint2 = this.giftTitlePaint;
                if (textPaint2 != null && textPaint2.getColor() != this.textPaint.getColor()) {
                    this.giftTitlePaint.setColor(this.textPaint.getColor());
                }
                TextPaint textPaint3 = this.giftSubtitlePaint;
                if (textPaint3 != null && textPaint3.getColor() != this.textPaint.getColor()) {
                    this.giftSubtitlePaint.setColor(this.textPaint.getColor());
                    this.giftSubtitlePaint.linkColor = this.textPaint.getColor();
                }
                TextPaint textPaint4 = this.giftTextPaint;
                if (textPaint4 != null && textPaint4.getColor() != this.textPaint.getColor()) {
                    this.giftTextPaint.setColor(this.textPaint.getColor());
                    this.giftTextPaint.linkColor = this.textPaint.getColor();
                }
            }
        } else {
            f = 16.0f;
            f2 = 1.0f;
        }
        int i13 = imageSize;
        drawBackground(canvas2, false);
        if (this.starGiftLayout.has()) {
            canvas2.save();
            float width = (getWidth() - this.starGiftLayout.getWidth()) / 2.0f;
            this.starGiftLayoutX = width;
            if (this.starGiftLayout.repost) {
                fM1124dp3 = AndroidUtilities.m1124dp(4.0f);
                f3 = 20.0f;
            } else {
                f3 = 20.0f;
                fM1124dp3 = this.textY + this.textHeight + AndroidUtilities.m1124dp(f);
            }
            this.starGiftLayoutY = fM1124dp3;
            canvas2.translate(width, fM1124dp3);
            this.starGiftLayout.draw(canvas2);
            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
            if (chatActionCellDelegate2 == null || chatActionCellDelegate2.canDrawOutboundsContent()) {
                this.starGiftLayout.drawOutbounds(canvas2);
            }
            canvas2.restore();
        } else {
            f3 = 20.0f;
            if (this.birthdayLayout != null) {
                canvas2.save();
                this.birthdayLayout.draw(canvas2);
                canvas2.restore();
            } else {
                if (isButtonLayout(messageObject) || (messageObject != null && messageObject.type == 11)) {
                    GiftSheet.CardBackground cardBackground = this.cardBackground;
                    if (cardBackground == null || !((i = messageObject.type) == 31 || i == 33)) {
                        f4 = 2.0f;
                    } else {
                        f4 = 2.0f;
                        cardBackground.setBounds((int) (this.imageReceiver.getImageX() - AndroidUtilities.m1124dp(13.33f)), (int) (this.imageReceiver.getImageY() - AndroidUtilities.m1124dp(14.0f)), (int) (this.imageReceiver.getImageX() + this.imageReceiver.getImageWidth() + AndroidUtilities.m1124dp(13.33f)), (int) (this.imageReceiver.getImageY() + this.imageReceiver.getImageHeight() + AndroidUtilities.m1124dp(14.0f)));
                        this.cardBackground.draw(canvas2);
                    }
                    if (this.wallpaperPreviewDrawable != null) {
                        canvas2.save();
                        canvas2.translate(this.imageReceiver.getImageX(), this.imageReceiver.getImageY());
                        Path path = this.clipPath;
                        if (path == null) {
                            this.clipPath = new Path();
                        } else {
                            path.rewind();
                        }
                        this.clipPath.addCircle(this.imageReceiver.getImageWidth() / f4, this.imageReceiver.getImageHeight() / f4, this.imageReceiver.getImageWidth() / f4, Path.Direction.CW);
                        canvas2.clipPath(this.clipPath);
                        this.wallpaperPreviewDrawable.setBounds(0, 0, (int) this.imageReceiver.getImageWidth(), (int) this.imageReceiver.getImageHeight());
                        this.wallpaperPreviewDrawable.draw(canvas2);
                        canvas2.restore();
                    } else if (messageObject.isStoryMention()) {
                        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                        long j = messageMedia.user_id;
                        StoriesUtilities.AvatarStoryParams avatarStoryParams = this.avatarStoryParams;
                        avatarStoryParams.storyId = messageMedia.f1687id;
                        StoriesUtilities.drawAvatarWithStory(j, canvas2, this.imageReceiver, avatarStoryParams);
                    } else {
                        this.imageReceiver.draw(canvas2);
                    }
                    this.radialProgress.setProgressRect(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageX() + this.imageReceiver.getImageWidth(), this.imageReceiver.getImageY() + this.imageReceiver.getImageHeight());
                    int i14 = messageObject.type;
                    if (i14 == 21) {
                        ImageUpdater imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                        if (imageUpdater != null) {
                            this.radialProgress.setProgress(imageUpdater.getCurrentImageProgress(), true);
                            this.radialProgress.setCircleRadius(((int) (this.imageReceiver.getImageWidth() * 0.5f)) + 1);
                            this.radialProgress.setMaxIconSize(AndroidUtilities.m1124dp(24.0f));
                            this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                            if (imageUpdater.getCurrentImageProgress() == f2) {
                                this.radialProgress.setIcon(4, true, true);
                            } else {
                                this.radialProgress.setIcon(3, true, true);
                            }
                        }
                        this.radialProgress.draw(canvas2);
                    } else if (i14 == 22) {
                        float uploadingInfoProgress = getUploadingInfoProgress(messageObject);
                        this.radialProgress.setProgress(uploadingInfoProgress, true);
                        this.radialProgress.setCircleRadius(AndroidUtilities.m1124dp(26.0f));
                        this.radialProgress.setMaxIconSize(AndroidUtilities.m1124dp(24.0f));
                        this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                        if (uploadingInfoProgress == f2) {
                            this.radialProgress.setIcon(4, true, true);
                        } else {
                            this.radialProgress.setIcon(3, true, true);
                        }
                        this.radialProgress.draw(canvas2);
                    }
                }
                if (this.textPaint != null || this.textLayout == null) {
                    i2 = 22;
                    i3 = 21;
                    i4 = 31;
                } else {
                    canvas2.save();
                    canvas2.translate(this.textXLeft, this.textY);
                    if (this.textLayout.getPaint() != this.textPaint) {
                        buildLayout();
                    }
                    canvas2.save();
                    SpoilerEffect.clipOutCanvas(canvas2, this.spoilers);
                    SpoilerEffect.layoutDrawMaybe(this.textLayout, canvas2);
                    ChatActionCellDelegate chatActionCellDelegate3 = this.delegate;
                    if (chatActionCellDelegate3 == null || chatActionCellDelegate3.canDrawOutboundsContent()) {
                        StaticLayout staticLayout2 = this.textLayout;
                        i2 = 22;
                        i3 = 21;
                        i4 = 31;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, staticLayout2, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout2 == null ? null : getAdaptiveEmojiColorFilter(staticLayout2.getPaint().getColor()));
                    } else {
                        i2 = 22;
                        i3 = 21;
                        i4 = 31;
                    }
                    canvas2.restore();
                    for (SpoilerEffect spoilerEffect : this.spoilers) {
                        spoilerEffect.setColor(this.textLayout.getPaint().getColor());
                        spoilerEffect.draw(canvas2);
                    }
                    canvas2.restore();
                }
                if (this.textPaint != null && this.titleLayout != null) {
                    canvas2.save();
                    canvas2.translate(this.titleXLeft, this.textY - this.titleHeight);
                    if (this.titleLayout.getPaint() != this.textPaint) {
                        buildLayout();
                    }
                    canvas2.save();
                    SpoilerEffect.clipOutCanvas(canvas2, this.spoilers);
                    SpoilerEffect.layoutDrawMaybe(this.titleLayout, canvas2);
                    chatActionCellDelegate = this.delegate;
                    if (chatActionCellDelegate != null || chatActionCellDelegate.canDrawOutboundsContent()) {
                        StaticLayout staticLayout3 = this.titleLayout;
                        AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.animatedEmojiStack;
                        List list = this.spoilers;
                        StaticLayout staticLayout4 = this.textLayout;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, staticLayout3, emojiGroupedSpans, 0.0f, list, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout4 != null ? null : getAdaptiveEmojiColorFilter(staticLayout4.getPaint().getColor()));
                    }
                    canvas2.restore();
                    for (SpoilerEffect spoilerEffect2 : this.spoilers) {
                        spoilerEffect2.setColor(this.titleLayout.getPaint().getColor());
                        spoilerEffect2.draw(canvas2);
                    }
                    canvas2.restore();
                }
                if (this.starGiftLayout.has() && isButtonLayout(messageObject)) {
                    canvas2.save();
                    float fM1124dp6 = (this.previousWidth - this.giftRectSize) / f4;
                    if (messageObject.type != i2) {
                        fM1124dp6 += AndroidUtilities.m1124dp(8.0f);
                    }
                    float f17 = fM1124dp6;
                    if (isNewStyleButtonLayout()) {
                        RectF rectF = this.backgroundRect;
                        fM1124dp = rectF != null ? rectF.top : this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f);
                        iM1124dp = AndroidUtilities.m1124dp(f);
                        if (i13 > 0) {
                            iM1124dp = (iM1124dp * 2) + i13;
                        }
                    } else {
                        fM1124dp = this.textY + this.textHeight + (this.giftRectSize * 0.075f) + (messageObject.type == i3 ? i13 : this.stickerSize) + AndroidUtilities.m1124dp(4.0f);
                        if (messageObject.type == i3) {
                            fM1124dp += AndroidUtilities.m1124dp(f);
                        }
                        if (messageObject.isStarGiftAction()) {
                            iM1124dp = AndroidUtilities.m1124dp(12.0f);
                        } else {
                            if (messageObject.type == 30 && !messageObject.isStarGiftAction()) {
                                fM1124dp -= AndroidUtilities.m1124dp(3.66f);
                            }
                            i5 = messageObject.type;
                            if (i5 != i4 || i5 == 33) {
                                fM1124dp -= AndroidUtilities.m1124dp(3.66f);
                            }
                            canvas2.translate(f17, fM1124dp);
                            if (this.giftPremiumTitleLayout == null) {
                                canvas2.save();
                                canvas2.translate(((this.giftRectSize - AndroidUtilities.m1124dp(f)) - this.giftPremiumTitleLayout.getWidth()) / f4, 0.0f);
                                this.giftPremiumTitleLayout.draw(canvas2);
                                canvas2.restore();
                                float height = this.giftPremiumTitleLayout.getHeight() + fM1124dp;
                                if (this.giftPremiumSubtitleLayout != null) {
                                    canvas2.save();
                                    canvas2.translate(((this.giftRectSize - AndroidUtilities.m1124dp(f)) - this.giftPremiumSubtitleLayout.getWidth()) / f4, this.giftPremiumTitleLayout.getHeight() + AndroidUtilities.m1124dp(4.0f));
                                    this.giftPremiumSubtitleLayout.draw(canvas2);
                                    canvas2.restore();
                                    height += this.giftPremiumSubtitleLayout.getHeight() + AndroidUtilities.m1124dp(10.0f);
                                }
                                fM1124dp2 = height + AndroidUtilities.m1124dp(messageObject.type == 25 ? 6.0f : 0.0f);
                            } else {
                                fM1124dp2 = fM1124dp - AndroidUtilities.m1124dp(4.0f);
                            }
                            float fM1124dp7 = fM1124dp2;
                            canvas2.restore();
                            if (this.giftPremiumTitleLayout != null || (text2 = this.giftPremiumReleasedText) == null) {
                                f5 = 8.0f;
                            } else {
                                float width2 = text2.getWidth() + AndroidUtilities.m1124dp(12.0f);
                                float fM1124dp8 = (((this.giftRectSize - AndroidUtilities.m1124dp(f)) - width2) / f4) + f17;
                                float height2 = fM1124dp + this.giftPremiumTitleLayout.getHeight() + AndroidUtilities.m1124dp(14.0f);
                                if (this.giftReleasedBackgroundPaint == null) {
                                    this.giftReleasedBackgroundPaint = new Paint(1);
                                }
                                this.giftReleasedBackgroundPaint.setColor(Theme.isCurrentThemeDark() ? 285212671 : 268435456);
                                RectF rectF2 = AndroidUtilities.rectTmp;
                                f5 = 8.0f;
                                rectF2.set(fM1124dp8, height2 - AndroidUtilities.m1124dp(8.0f), width2 + fM1124dp8, AndroidUtilities.m1124dp(8.0f) + height2);
                                canvas2.drawRoundRect(rectF2, AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), this.giftReleasedBackgroundPaint);
                                this.giftPremiumReleasedText.draw(canvas, AndroidUtilities.m1124dp(6.0f) + fM1124dp8, height2, -855638017, 1.0f);
                                canvas2 = canvas;
                                fM1124dp7 += AndroidUtilities.m1124dp(24.0f);
                            }
                            float fM1124dp9 = fM1124dp7 + AndroidUtilities.m1124dp(4.0f);
                            if (messageObject.type == 18) {
                                fM1124dp9 += AndroidUtilities.m1124dp(f4);
                            }
                            canvas2.save();
                            canvas2.translate(f17, fM1124dp9);
                            if (messageObject.type != i2) {
                                f8 = 1.0f;
                                if (this.radialProgress.getTransitionProgress() != 1.0f || this.radialProgress.getIcon() != 4) {
                                    f6 = f17;
                                    f7 = 0.2f;
                                    if (this.settingWallpaperLayout == null) {
                                        TextPaint textPaint5 = new TextPaint();
                                        this.settingWallpaperPaint = textPaint5;
                                        textPaint5.setTextSize(AndroidUtilities.m1124dp(13.0f));
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2888R.string.ActionSettingWallpaper));
                                        int iIndexOf = spannableStringBuilder.toString().indexOf("...");
                                        if (iIndexOf < 0) {
                                            iIndexOf = spannableStringBuilder.toString().indexOf("…");
                                            i7 = 1;
                                        } else {
                                            i7 = 3;
                                        }
                                        if (iIndexOf >= 0) {
                                            SpannableString spannableString = new SpannableString("…");
                                            UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
                                            uploadingDotsSpannable.fixTop = true;
                                            z2 = false;
                                            uploadingDotsSpannable.setParent(this, false);
                                            spannableString.setSpan(uploadingDotsSpannable, 0, spannableString.length(), 33);
                                            spannableStringBuilder.replace(iIndexOf, i7 + iIndexOf, (CharSequence) spannableString);
                                        } else {
                                            z2 = false;
                                        }
                                        TextPaint textPaint6 = this.settingWallpaperPaint;
                                        TextLayout textLayout2 = this.giftPremiumText;
                                        this.settingWallpaperLayout = new StaticLayout(spannableStringBuilder, textPaint6, textLayout2 == null ? 1 : textLayout2.width, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                                    } else {
                                        z2 = false;
                                    }
                                    float uploadingInfoProgress2 = getUploadingInfoProgress(messageObject);
                                    if (this.settingWallpaperProgressTextLayout == null || this.settingWallpaperProgress != uploadingInfoProgress2) {
                                        this.settingWallpaperProgress = uploadingInfoProgress2;
                                        String str = ((int) (uploadingInfoProgress2 * 100.0f)) + "%";
                                        TextPaint textPaint7 = this.giftTextPaint;
                                        TextLayout textLayout3 = this.giftPremiumText;
                                        this.settingWallpaperProgressTextLayout = new StaticLayout(str, textPaint7, textLayout3 == null ? 1 : textLayout3.width, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                                    }
                                    this.settingWallpaperPaint.setColor(this.giftTextPaint.getColor());
                                    if (this.radialProgress.getIcon() == 4) {
                                        float transitionProgress = this.radialProgress.getTransitionProgress();
                                        int color = this.giftTextPaint.getColor();
                                        float f18 = 1.0f - transitionProgress;
                                        this.settingWallpaperPaint.setAlpha((int) (Color.alpha(color) * f18));
                                        this.giftTextPaint.setAlpha((int) (Color.alpha(color) * transitionProgress));
                                        TextPaint textPaint8 = this.giftTextPaint;
                                        textPaint8.linkColor = textPaint8.getColor();
                                        if (this.giftPremiumText != null) {
                                            float f19 = (transitionProgress * 0.2f) + 0.8f;
                                            canvas2.save();
                                            canvas2.scale(f19, f19, this.giftRectSize / f4, this.giftPremiumText.layout.getHeight() / f4);
                                            canvas2.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / f4, 0.0f);
                                            this.giftPremiumText.f1895x = f6 + ((this.giftRectSize - r0.layout.getWidth()) / f4);
                                            this.giftPremiumText.f1896y = fM1124dp9;
                                            int color2 = this.giftTextPaint.getColor();
                                            TextLayout textLayout4 = this.giftPremiumText;
                                            i6 = color;
                                            SpoilerEffect.renderWithRipple(this, false, color2, 0, textLayout4.patchedLayout, 1, textLayout4.layout, textLayout4.spoilers, canvas, false);
                                            TextLayout textLayout5 = this.giftPremiumText;
                                            chatActionCell2 = this;
                                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout5.layout, textLayout5.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                            canvas2 = canvas;
                                            canvas2.restore();
                                        } else {
                                            chatActionCell2 = this;
                                            i6 = color;
                                        }
                                        chatActionCell2.giftTextPaint.setAlpha((int) (Color.alpha(i6) * f18));
                                        TextPaint textPaint9 = chatActionCell2.giftTextPaint;
                                        textPaint9.linkColor = textPaint9.getColor();
                                        float f20 = (f18 * 0.2f) + 0.8f;
                                        canvas2.save();
                                        canvas2.scale(f20, f20, chatActionCell2.giftRectSize / f4, chatActionCell2.settingWallpaperLayout.getHeight() / f4);
                                        canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperLayout.getWidth()) / f4, 0.0f);
                                        SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperLayout, canvas2);
                                        canvas2.restore();
                                        canvas2.save();
                                        canvas2.translate(0.0f, chatActionCell2.settingWallpaperLayout.getHeight() + AndroidUtilities.m1124dp(4.0f));
                                        canvas2.scale(f20, f20, chatActionCell2.giftRectSize / f4, chatActionCell2.settingWallpaperProgressTextLayout.getHeight() / f4);
                                        canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperProgressTextLayout.getWidth()) / f4, 0.0f);
                                        SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperProgressTextLayout, canvas2);
                                        canvas2.restore();
                                        chatActionCell2.giftTextPaint.setColor(i6);
                                        chatActionCell2.giftTextPaint.linkColor = i6;
                                    } else {
                                        chatActionCell2 = this;
                                        canvas2.save();
                                        canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperLayout.getWidth()) / f4, 0.0f);
                                        chatActionCell2.settingWallpaperLayout.draw(canvas2);
                                        canvas2.restore();
                                        canvas2.save();
                                        canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperProgressTextLayout.getWidth()) / f4, chatActionCell2.settingWallpaperLayout.getHeight() + AndroidUtilities.m1124dp(4.0f));
                                        SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperProgressTextLayout, canvas2);
                                        canvas2.restore();
                                    }
                                    chatActionCell = chatActionCell2;
                                    canvas2.restore();
                                    if (chatActionCell.giftPremiumTitleLayout == null) {
                                        AndroidUtilities.m1124dp(f5);
                                    }
                                    textLayout = chatActionCell.giftPremiumText;
                                    if (textLayout != null) {
                                        AndroidUtilities.lerp(chatActionCell.giftPremiumTextCollapsedHeight, textLayout.layout.getHeight(), f10);
                                    }
                                    staticLayout = chatActionCell.giftPremiumButtonLayout;
                                    if (staticLayout != null) {
                                        staticLayout.getHeight();
                                    }
                                    chatActionCell.getHeight();
                                    AndroidUtilities.m1124dp(f5);
                                    resourcesProvider = chatActionCell.themeDelegate;
                                    if (resourcesProvider != null) {
                                        resourcesProvider.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX, chatActionCell.viewTop + AndroidUtilities.m1124dp(4.0f));
                                    } else {
                                        Theme.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX, chatActionCell.viewTop + AndroidUtilities.m1124dp(4.0f));
                                    }
                                    float scale = chatActionCell.bounce.getScale(0.02f);
                                    canvas2.save();
                                    canvas2.scale(scale, scale, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                    if (chatActionCell.giftPremiumButtonLayout != null) {
                                        canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f), chatActionCell.getThemedPaint("paintChatActionBackgroundSelected"));
                                        if (chatActionCell.hasGradientService()) {
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f), chatActionCell.getThemedPaint("paintChatActionBackgroundDarken"));
                                        }
                                        if (chatActionCell.dimAmount > 0.0f) {
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f), chatActionCell.dimPaint);
                                        }
                                        if (chatActionCell.getMessageObject().type == 31 || chatActionCell.getMessageObject().type == 33) {
                                            Theme.ResourcesProvider resourcesProvider3 = chatActionCell.themeDelegate;
                                            boolean zIsDark2 = resourcesProvider3 != null ? resourcesProvider3.isDark() : Theme.isCurrentThemeDark();
                                            int color3 = chatActionCell.dimPaint.getColor();
                                            chatActionCell.dimPaint.setColor(zIsDark2 ? 620756991 : 268435456);
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f), chatActionCell.dimPaint);
                                            chatActionCell.dimPaint.setColor(color3);
                                        }
                                        if (chatActionCell.getMessageObject().type != 31 && chatActionCell.getMessageObject().type != 33 && chatActionCell.getMessageObject().type != 21 && chatActionCell.getMessageObject().type != 22 && chatActionCell.getMessageObject().type != 24) {
                                            chatActionCell.starsPath.rewind();
                                            chatActionCell.starsPath.addRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f), Path.Direction.CW);
                                            canvas2.save();
                                            canvas2.clipPath(chatActionCell.starsPath);
                                            chatActionCell.starParticlesDrawable.onDraw(canvas2);
                                            if (!chatActionCell.starParticlesDrawable.paused) {
                                                chatActionCell.invalidate();
                                            }
                                            canvas2.restore();
                                        } else {
                                            chatActionCell.invalidate();
                                        }
                                    }
                                    z = messageObject.settingAvatar;
                                    if (z) {
                                        float f21 = chatActionCell.progressToProgress;
                                        if (f21 != f8) {
                                            chatActionCell.progressToProgress = f21 + 0.10666667f;
                                        } else {
                                            if (!z) {
                                                float f22 = chatActionCell.progressToProgress;
                                                f9 = 0.0f;
                                                if (f22 != 0.0f) {
                                                    chatActionCell.progressToProgress = f22 - 0.10666667f;
                                                }
                                            }
                                            fClamp = Utilities.clamp(chatActionCell.progressToProgress, f8, f9);
                                            chatActionCell.progressToProgress = fClamp;
                                            if (fClamp != f9) {
                                                if (chatActionCell.progressView == null) {
                                                    chatActionCell.progressView = new RadialProgressView(chatActionCell.getContext());
                                                }
                                                int iM1124dp2 = AndroidUtilities.m1124dp(f);
                                                canvas2.save();
                                                float f23 = chatActionCell.progressToProgress;
                                                canvas2.scale(f23, f23, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                                chatActionCell.progressView.setSize(iM1124dp2);
                                                chatActionCell.progressView.setProgressColor(Theme.getColor(Theme.key_chat_serviceText));
                                                chatActionCell.progressView.draw(canvas2, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                                canvas2.restore();
                                            }
                                            if (chatActionCell.progressToProgress != 1.0f && chatActionCell.giftPremiumButtonLayout != null) {
                                                canvas2.save();
                                                float f24 = 1.0f - chatActionCell.progressToProgress;
                                                canvas2.scale(f24, f24, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                                canvas2.translate(f6, chatActionCell.giftButtonRect.top + AndroidUtilities.m1124dp(f5));
                                                canvas2.translate(((chatActionCell.giftRectSize - AndroidUtilities.m1124dp(f)) - chatActionCell.giftPremiumButtonLayout.getWidth()) / f4, 0.0f);
                                                chatActionCell.giftPremiumButtonLayout.draw(canvas2);
                                                canvas2.restore();
                                            }
                                            if (!messageObject.flickerLoading) {
                                                if (chatActionCell.loadingDrawable == null) {
                                                    LoadingDrawable loadingDrawable = new LoadingDrawable(chatActionCell.themeDelegate);
                                                    chatActionCell.loadingDrawable = loadingDrawable;
                                                    loadingDrawable.setGradientScale(f4);
                                                    chatActionCell.loadingDrawable.setAppearByGradient(true);
                                                    float f25 = f7;
                                                    chatActionCell.loadingDrawable.setColors(Theme.multAlpha(-1, 0.08f), Theme.multAlpha(-1, f25), Theme.multAlpha(-1, f25), Theme.multAlpha(-1, 0.7f));
                                                    chatActionCell.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(1.0f));
                                                }
                                                chatActionCell.loadingDrawable.resetDisappear();
                                                chatActionCell.loadingDrawable.setBounds(chatActionCell.giftButtonRect);
                                                chatActionCell.loadingDrawable.setRadiiDp(f);
                                                chatActionCell.loadingDrawable.draw(canvas2);
                                            } else {
                                                float f26 = f;
                                                LoadingDrawable loadingDrawable2 = chatActionCell.loadingDrawable;
                                                if (loadingDrawable2 != null) {
                                                    loadingDrawable2.setBounds(chatActionCell.giftButtonRect);
                                                    chatActionCell.loadingDrawable.setRadiiDp(f26);
                                                    chatActionCell.loadingDrawable.disappear();
                                                    chatActionCell.loadingDrawable.draw(canvas2);
                                                    if (chatActionCell.loadingDrawable.isDisappeared()) {
                                                        chatActionCell.loadingDrawable.reset();
                                                    }
                                                }
                                            }
                                            canvas2.restore();
                                            if (chatActionCell.backgroundRect != null && chatActionCell.giftRibbonPath != null && chatActionCell.giftRibbonText != null) {
                                                themedPaint = chatActionCell.getThemedPaint("paintChatActionBackground");
                                                Paint themedPaint2 = chatActionCell.getThemedPaint("paintChatActionBackgroundDarken");
                                                float fM1124dp10 = (chatActionCell.backgroundRect.right - AndroidUtilities.m1124dp(65.0f)) + AndroidUtilities.m1124dp(2.0f);
                                                float fM1124dp11 = chatActionCell.backgroundRect.top - AndroidUtilities.m1124dp(2.0f);
                                                resourcesProvider2 = chatActionCell.themeDelegate;
                                                if (resourcesProvider2 == null) {
                                                    resourcesProvider2.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX + fM1124dp10, chatActionCell.viewTop + AndroidUtilities.m1124dp(4.0f) + fM1124dp11);
                                                } else {
                                                    Theme.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX + fM1124dp10, chatActionCell.viewTop + AndroidUtilities.m1124dp(4.0f) + fM1124dp11);
                                                }
                                                canvas2.save();
                                                canvas2.translate(fM1124dp10, fM1124dp11);
                                                ColorFilter colorFilter = themedPaint.getColorFilter();
                                                PathEffect pathEffect = themedPaint.getPathEffect();
                                                Theme.ResourcesProvider resourcesProvider4 = chatActionCell.themeDelegate;
                                                zIsDark = resourcesProvider4 == null ? resourcesProvider4.isDark() : Theme.isCurrentThemeDark();
                                                if (chatActionCell.giftRibbonPaintFilter != null || chatActionCell.giftRibbonPaintFilterDark != zIsDark) {
                                                    colorMatrix = new ColorMatrix();
                                                    if ((themedPaint.getColorFilter() instanceof ColorMatrixColorFilter) && Build.VERSION.SDK_INT >= 26) {
                                                        ((ColorMatrixColorFilter) themedPaint.getColorFilter()).getColorMatrix(colorMatrix);
                                                    }
                                                    AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, !zIsDark ? 0.1f : -0.08f);
                                                    AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, !zIsDark ? 0.15f : 0.1f);
                                                    chatActionCell.giftRibbonPaintFilter = new ColorMatrixColorFilter(colorMatrix);
                                                    chatActionCell.giftRibbonPaintFilterDark = zIsDark;
                                                }
                                                themedPaint.setColorFilter(chatActionCell.giftRibbonPaintFilter);
                                                themedPaint.setPathEffect(chatActionCell.giftRibbonPaintEffect);
                                                canvas2.drawPath(chatActionCell.giftRibbonPath, themedPaint);
                                                themedPaint.setColorFilter(colorFilter);
                                                themedPaint.setPathEffect(pathEffect);
                                                if (chatActionCell.hasGradientService()) {
                                                    PathEffect pathEffect2 = themedPaint2.getPathEffect();
                                                    themedPaint2.setPathEffect(chatActionCell.giftRibbonPaintEffect);
                                                    canvas2.drawPath(chatActionCell.giftRibbonPath, themedPaint2);
                                                    themedPaint2.setPathEffect(pathEffect2);
                                                }
                                                canvas2.rotate(45.0f, AndroidUtilities.m1124dp(40.43f), AndroidUtilities.m1124dp(24.56f));
                                                chatActionCell.giftRibbonText.draw(canvas2, AndroidUtilities.m1124dp(40.43f) - (chatActionCell.giftRibbonText.getCurrentWidth() / 2.0f), AndroidUtilities.m1124dp(26.0f), -1, 1.0f);
                                                canvas2.restore();
                                            }
                                        }
                                        f9 = 0.0f;
                                        fClamp = Utilities.clamp(chatActionCell.progressToProgress, f8, f9);
                                        chatActionCell.progressToProgress = fClamp;
                                        if (fClamp != f9) {
                                        }
                                        if (chatActionCell.progressToProgress != 1.0f) {
                                            canvas2.save();
                                            float f242 = 1.0f - chatActionCell.progressToProgress;
                                            canvas2.scale(f242, f242, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                            canvas2.translate(f6, chatActionCell.giftButtonRect.top + AndroidUtilities.m1124dp(f5));
                                            canvas2.translate(((chatActionCell.giftRectSize - AndroidUtilities.m1124dp(f)) - chatActionCell.giftPremiumButtonLayout.getWidth()) / f4, 0.0f);
                                            chatActionCell.giftPremiumButtonLayout.draw(canvas2);
                                            canvas2.restore();
                                        }
                                        if (!messageObject.flickerLoading) {
                                        }
                                        canvas2.restore();
                                        if (chatActionCell.backgroundRect != null) {
                                            themedPaint = chatActionCell.getThemedPaint("paintChatActionBackground");
                                            Paint themedPaint22 = chatActionCell.getThemedPaint("paintChatActionBackgroundDarken");
                                            float fM1124dp102 = (chatActionCell.backgroundRect.right - AndroidUtilities.m1124dp(65.0f)) + AndroidUtilities.m1124dp(2.0f);
                                            float fM1124dp112 = chatActionCell.backgroundRect.top - AndroidUtilities.m1124dp(2.0f);
                                            resourcesProvider2 = chatActionCell.themeDelegate;
                                            if (resourcesProvider2 == null) {
                                            }
                                            canvas2.save();
                                            canvas2.translate(fM1124dp102, fM1124dp112);
                                            ColorFilter colorFilter2 = themedPaint.getColorFilter();
                                            PathEffect pathEffect3 = themedPaint.getPathEffect();
                                            Theme.ResourcesProvider resourcesProvider42 = chatActionCell.themeDelegate;
                                            if (resourcesProvider42 == null) {
                                            }
                                            if (chatActionCell.giftRibbonPaintFilter != null) {
                                                colorMatrix = new ColorMatrix();
                                                if (themedPaint.getColorFilter() instanceof ColorMatrixColorFilter) {
                                                    ((ColorMatrixColorFilter) themedPaint.getColorFilter()).getColorMatrix(colorMatrix);
                                                }
                                                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, !zIsDark ? 0.1f : -0.08f);
                                                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, !zIsDark ? 0.15f : 0.1f);
                                                chatActionCell.giftRibbonPaintFilter = new ColorMatrixColorFilter(colorMatrix);
                                                chatActionCell.giftRibbonPaintFilterDark = zIsDark;
                                                themedPaint.setColorFilter(chatActionCell.giftRibbonPaintFilter);
                                                themedPaint.setPathEffect(chatActionCell.giftRibbonPaintEffect);
                                                canvas2.drawPath(chatActionCell.giftRibbonPath, themedPaint);
                                                themedPaint.setColorFilter(colorFilter2);
                                                themedPaint.setPathEffect(pathEffect3);
                                                if (chatActionCell.hasGradientService()) {
                                                }
                                                canvas2.rotate(45.0f, AndroidUtilities.m1124dp(40.43f), AndroidUtilities.m1124dp(24.56f));
                                                chatActionCell.giftRibbonText.draw(canvas2, AndroidUtilities.m1124dp(40.43f) - (chatActionCell.giftRibbonText.getCurrentWidth() / 2.0f), AndroidUtilities.m1124dp(26.0f), -1, 1.0f);
                                                canvas2.restore();
                                            }
                                        }
                                    }
                                } else {
                                    if (this.giftPremiumText != null) {
                                        canvas2.save();
                                        canvas2.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / f4, 0.0f);
                                        this.giftPremiumText.f1895x = ((this.giftRectSize - r2.layout.getWidth()) / f4) + f17;
                                        this.giftPremiumText.f1896y = fM1124dp9;
                                        int color4 = this.giftTextPaint.getColor();
                                        TextLayout textLayout6 = this.giftPremiumText;
                                        f6 = f17;
                                        f7 = 0.2f;
                                        SpoilerEffect.renderWithRipple(this, false, color4, 0, textLayout6.patchedLayout, 1, textLayout6.layout, textLayout6.spoilers, canvas, false);
                                        TextLayout textLayout7 = this.giftPremiumText;
                                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout7.layout, textLayout7.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                        canvas2 = canvas;
                                        canvas2.restore();
                                        chatActionCell = this;
                                    } else {
                                        f6 = f17;
                                        f7 = 0.2f;
                                        chatActionCell = this;
                                    }
                                    canvas2.restore();
                                    if (chatActionCell.giftPremiumTitleLayout == null) {
                                    }
                                    textLayout = chatActionCell.giftPremiumText;
                                    if (textLayout != null) {
                                    }
                                    staticLayout = chatActionCell.giftPremiumButtonLayout;
                                    if (staticLayout != null) {
                                    }
                                    chatActionCell.getHeight();
                                    AndroidUtilities.m1124dp(f5);
                                    resourcesProvider = chatActionCell.themeDelegate;
                                    if (resourcesProvider != null) {
                                    }
                                    float scale2 = chatActionCell.bounce.getScale(0.02f);
                                    canvas2.save();
                                    canvas2.scale(scale2, scale2, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                    if (chatActionCell.giftPremiumButtonLayout != null) {
                                    }
                                    z = messageObject.settingAvatar;
                                    if (z) {
                                    }
                                }
                            } else {
                                chatActionCell2 = this;
                                f6 = f17;
                                f7 = 0.2f;
                                f8 = 1.0f;
                                TextLayout textLayout8 = chatActionCell2.giftPremiumText;
                                if (textLayout8 != null) {
                                    float height3 = textLayout8.layout.getHeight();
                                    if (f10 < 1.0f) {
                                        height3 = AndroidUtilities.lerp(chatActionCell2.giftPremiumTextCollapsedHeight, height3, f10);
                                        RectF rectF3 = AndroidUtilities.rectTmp;
                                        rectF3.set(0.0f, -AndroidUtilities.m1124dp(f3), chatActionCell2.getWidth(), height3);
                                        canvas2.saveLayerAlpha(rectF3, 255, 31);
                                    } else {
                                        canvas2.save();
                                    }
                                    canvas2.translate(((chatActionCell2.giftRectSize - AndroidUtilities.m1124dp(f)) - chatActionCell2.giftPremiumText.layout.getWidth()) / f4, 0.0f);
                                    chatActionCell2.giftPremiumText.f1895x = f6 + (((chatActionCell2.giftRectSize - AndroidUtilities.m1124dp(f)) - chatActionCell2.giftPremiumText.layout.getWidth()) / f4);
                                    TextLayout textLayout9 = chatActionCell2.giftPremiumText;
                                    textLayout9.f1896y = fM1124dp9;
                                    int color5 = textLayout9.paint.getColor();
                                    TextLayout textLayout10 = chatActionCell2.giftPremiumText;
                                    float f27 = height3;
                                    SpoilerEffect.renderWithRipple(chatActionCell2, false, color5, 0, textLayout10.patchedLayout, 1, textLayout10.layout, textLayout10.spoilers, canvas, false);
                                    TextLayout textLayout11 = chatActionCell2.giftPremiumText;
                                    chatActionCell = chatActionCell2;
                                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout11.layout, textLayout11.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, chatActionCell2.getAdaptiveEmojiColorFilter(chatActionCell2.giftTextPaint.getColor()));
                                    canvas2 = canvas;
                                    if (f10 < 1.0f && chatActionCell.giftPremiumTextMore != null) {
                                        canvas2.save();
                                        if (chatActionCell.giftPremiumTextClip == null) {
                                            chatActionCell.giftPremiumTextClip = new GradientClip();
                                        }
                                        canvas2.translate((-((chatActionCell.giftRectSize - AndroidUtilities.m1124dp(f)) - chatActionCell.giftPremiumText.layout.getWidth())) / f4, 0.0f);
                                        RectF rectF4 = AndroidUtilities.rectTmp;
                                        rectF4.set((chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.m1124dp(f5), (chatActionCell.giftPremiumTextMoreY - chatActionCell.giftPremiumTextMoreH) - AndroidUtilities.m1124dp(6.0f), chatActionCell.giftPremiumTextMoreX + AndroidUtilities.m1124dp(6.0f), chatActionCell.giftPremiumTextMoreY);
                                        float f28 = 1.0f - f10;
                                        chatActionCell.giftPremiumTextClip.clipOut(canvas2, rectF4, f28);
                                        rectF4.set((chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) - AndroidUtilities.m1124dp(f), (chatActionCell.giftPremiumTextMoreY - chatActionCell.giftPremiumTextMoreH) - AndroidUtilities.m1124dp(6.0f), (chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.m1124dp(f5), chatActionCell.giftPremiumTextMoreY);
                                        chatActionCell.giftPremiumTextClip.draw(canvas2, rectF4, 2, f28);
                                        rectF4.set(0.0f, f27 - AndroidUtilities.m1124dp(12.0f), chatActionCell.getWidth(), f27);
                                        chatActionCell.giftPremiumTextClip.draw(canvas2, rectF4, 3, f28 * 4.0f * (1.0f - f28));
                                        canvas2.restore();
                                    }
                                    canvas2.restore();
                                    if (f10 < 1.0f && (text = chatActionCell.giftPremiumTextMore) != null) {
                                        text.draw(canvas2, (chatActionCell.giftPremiumTextMoreX - text.getCurrentWidth()) + AndroidUtilities.m1124dp(5.0f), (chatActionCell.giftPremiumTextMoreY - (chatActionCell.giftPremiumTextMoreH / f4)) - AndroidUtilities.m1124dp(1.0f), chatActionCell.giftPremiumText.paint.getColor(), 1.0f - f10);
                                    }
                                } else {
                                    chatActionCell = chatActionCell2;
                                }
                                canvas2.restore();
                                if (chatActionCell.giftPremiumTitleLayout == null) {
                                }
                                textLayout = chatActionCell.giftPremiumText;
                                if (textLayout != null) {
                                }
                                staticLayout = chatActionCell.giftPremiumButtonLayout;
                                if (staticLayout != null) {
                                }
                                chatActionCell.getHeight();
                                AndroidUtilities.m1124dp(f5);
                                resourcesProvider = chatActionCell.themeDelegate;
                                if (resourcesProvider != null) {
                                }
                                float scale22 = chatActionCell.bounce.getScale(0.02f);
                                canvas2.save();
                                canvas2.scale(scale22, scale22, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                if (chatActionCell.giftPremiumButtonLayout != null) {
                                }
                                z = messageObject.settingAvatar;
                                if (z) {
                                }
                            }
                        }
                    }
                    fM1124dp += iM1124dp;
                    i5 = messageObject.type;
                    if (i5 != i4) {
                        fM1124dp -= AndroidUtilities.m1124dp(3.66f);
                        canvas2.translate(f17, fM1124dp);
                        if (this.giftPremiumTitleLayout == null) {
                        }
                        float fM1124dp72 = fM1124dp2;
                        canvas2.restore();
                        if (this.giftPremiumTitleLayout != null) {
                            f5 = 8.0f;
                            float fM1124dp92 = fM1124dp72 + AndroidUtilities.m1124dp(4.0f);
                            if (messageObject.type == 18) {
                            }
                            canvas2.save();
                            canvas2.translate(f17, fM1124dp92);
                            if (messageObject.type != i2) {
                            }
                        }
                    }
                } else {
                    chatActionCell = this;
                }
                chatActionCell.drawReactions(canvas2, false, null);
                chatActionCell.transitionParams.recordDrawingState();
                canvas2.restore();
            }
        }
        f4 = 2.0f;
        if (this.textPaint != null) {
            i2 = 22;
            i3 = 21;
            i4 = 31;
        }
        if (this.textPaint != null) {
            canvas2.save();
            canvas2.translate(this.titleXLeft, this.textY - this.titleHeight);
            if (this.titleLayout.getPaint() != this.textPaint) {
            }
            canvas2.save();
            SpoilerEffect.clipOutCanvas(canvas2, this.spoilers);
            SpoilerEffect.layoutDrawMaybe(this.titleLayout, canvas2);
            chatActionCellDelegate = this.delegate;
            if (chatActionCellDelegate != null) {
                StaticLayout staticLayout32 = this.titleLayout;
                AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans2 = this.animatedEmojiStack;
                List list2 = this.spoilers;
                StaticLayout staticLayout42 = this.textLayout;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, staticLayout32, emojiGroupedSpans2, 0.0f, list2, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout42 != null ? null : getAdaptiveEmojiColorFilter(staticLayout42.getPaint().getColor()));
                canvas2.restore();
                while (r2.hasNext()) {
                }
                canvas2.restore();
            }
        }
        if (this.starGiftLayout.has()) {
            chatActionCell = this;
        }
        chatActionCell.drawReactions(canvas2, false, null);
        chatActionCell.transitionParams.recordDrawingState();
        canvas2.restore();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.rippleView) {
            float scale = this.bounce.getScale(0.02f);
            canvas.save();
            canvas.scale(scale, scale, view.getX() + (view.getMeasuredWidth() / 2.0f), view.getY() + (view.getMeasuredHeight() / 2.0f));
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    private void checkLeftRightBounds() {
        this.backgroundLeft = (int) Math.min(this.backgroundLeft, this.rect.left);
        this.backgroundRight = (int) Math.max(this.backgroundRight, this.rect.right);
    }

    public void drawBackground(Canvas canvas, boolean z) {
        Paint paint;
        float f;
        float f2;
        float f3;
        float f4;
        Paint paint2;
        int alpha;
        int alpha2;
        Canvas canvas2;
        float f5;
        int i;
        TextLayout textLayout;
        float f6;
        int i2;
        int iIntValue;
        Paint paint3;
        float f7;
        int i3;
        int i4;
        int iM1124dp;
        float f8;
        int i5;
        if (this.canDrawInParent) {
            if (hasGradientService() && !z) {
                return;
            }
            if (!hasGradientService() && z) {
                return;
            }
        }
        Paint themedPaint = getThemedPaint("paintChatActionBackground");
        Paint themedPaint2 = getThemedPaint("paintChatActionBackgroundDarken");
        this.textPaint = (TextPaint) getThemedPaint("paintChatActionText");
        int i6 = this.overrideBackground;
        boolean z2 = true;
        if (i6 >= 0) {
            int themedColor = getThemedColor(i6);
            if (this.overrideBackgroundPaint == null) {
                Paint paint4 = new Paint(1);
                this.overrideBackgroundPaint = paint4;
                paint4.setColor(themedColor);
                TextPaint textPaint = new TextPaint(1);
                this.overrideTextPaint = textPaint;
                textPaint.setTypeface(AndroidUtilities.bold());
                this.overrideTextPaint.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize) - 2));
                this.overrideTextPaint.setColor(getThemedColor(this.overrideText));
            }
            themedPaint = this.overrideBackgroundPaint;
            this.textPaint = this.overrideTextPaint;
        }
        float f9 = 8.0f;
        if (this.invalidatePath) {
            this.invalidatePath = false;
            this.backgroundLeft = getWidth();
            this.backgroundRight = 0;
            this.lineWidths.clear();
            StaticLayout staticLayout = this.textLayout;
            int lineCount = staticLayout == null ? 0 : staticLayout.getLineCount();
            int iM1124dp2 = AndroidUtilities.m1124dp(11.0f);
            int iM1124dp3 = AndroidUtilities.m1124dp(8.0f);
            int i7 = 0;
            int i8 = 0;
            while (i7 < lineCount) {
                boolean z3 = z2;
                int iCeil = (int) Math.ceil(this.textLayout.getLineWidth(i7));
                if (i7 == 0 || (i5 = i8 - iCeil) <= 0) {
                    f8 = f9;
                } else {
                    f8 = f9;
                    if (i5 <= (iM1124dp2 * 1.5f) + iM1124dp3) {
                    }
                    this.lineWidths.add(Integer.valueOf(i8));
                    i7++;
                    z2 = z3;
                    f9 = f8;
                }
                i8 = iCeil;
                this.lineWidths.add(Integer.valueOf(i8));
                i7++;
                z2 = z3;
                f9 = f8;
            }
            f = f9;
            f3 = 6.0f;
            for (int i9 = lineCount - 2; i9 >= 0; i9--) {
                int iIntValue2 = ((Integer) this.lineWidths.get(i9)).intValue();
                int i10 = i8 - iIntValue2;
                if (i10 <= 0 || i10 > (iM1124dp2 * 1.5f) + iM1124dp3) {
                    i8 = iIntValue2;
                }
                this.lineWidths.set(i9, Integer.valueOf(i8));
            }
            int iM1124dp4 = AndroidUtilities.m1124dp(4.0f);
            int measuredWidth = getMeasuredWidth() / 2;
            int iM1124dp5 = AndroidUtilities.m1124dp(3.0f);
            int iM1124dp6 = AndroidUtilities.m1124dp(6.0f);
            int i11 = iM1124dp2 - iM1124dp5;
            f4 = 2.0f;
            this.lineHeights.clear();
            this.backgroundPath.reset();
            f2 = 4.0f;
            float f10 = measuredWidth;
            this.backgroundPath.moveTo(f10, iM1124dp4);
            int i12 = 0;
            int i13 = 0;
            while (i12 < lineCount) {
                int iIntValue3 = ((Integer) this.lineWidths.get(i12)).intValue();
                int i14 = i13;
                int lineBottom = this.textLayout.getLineBottom(i12);
                int i15 = lineCount - 1;
                float f11 = f10;
                if (i12 < i15) {
                    i2 = lineCount;
                    iIntValue = ((Integer) this.lineWidths.get(i12 + 1)).intValue();
                } else {
                    i2 = lineCount;
                    iIntValue = 0;
                }
                int iM1124dp7 = lineBottom - i14;
                if (i12 == 0 || iIntValue3 > i8) {
                    iM1124dp7 += AndroidUtilities.m1124dp(3.0f);
                }
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    iM1124dp7 += AndroidUtilities.m1124dp(3.0f);
                }
                int i16 = iM1124dp7;
                float f12 = f11 + (iIntValue3 / 2.0f);
                int i17 = (i12 == i15 || iIntValue3 >= iIntValue || i12 == 0 || iIntValue3 >= i8) ? iM1124dp3 : iM1124dp6;
                if (i12 == 0 || iIntValue3 > i8) {
                    paint3 = themedPaint2;
                    f7 = f12;
                    i3 = iM1124dp3;
                    i4 = iM1124dp6;
                    this.rect.set((f7 - iM1124dp5) - iM1124dp2, iM1124dp4, f7 + i11, (iM1124dp2 * 2) + iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, 90.0f);
                } else if (iIntValue3 < i8) {
                    f7 = f12;
                    i3 = iM1124dp3;
                    float f13 = f7 + i11;
                    i4 = iM1124dp6;
                    paint3 = themedPaint2;
                    this.rect.set(f13, iM1124dp4, (i17 * 2) + f13, r1 + iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, -90.0f);
                } else {
                    paint3 = themedPaint2;
                    f7 = f12;
                    i3 = iM1124dp3;
                    i4 = iM1124dp6;
                }
                iM1124dp4 += i16;
                if (i12 == i15 || iIntValue3 >= iIntValue) {
                    iM1124dp = i16;
                } else {
                    iM1124dp4 -= AndroidUtilities.m1124dp(3.0f);
                    iM1124dp = i16 - AndroidUtilities.m1124dp(3.0f);
                }
                if (i12 != 0 && iIntValue3 < i8) {
                    iM1124dp4 -= AndroidUtilities.m1124dp(3.0f);
                    iM1124dp -= AndroidUtilities.m1124dp(3.0f);
                }
                this.lineHeights.add(Integer.valueOf(iM1124dp));
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    this.rect.set((f7 - iM1124dp5) - iM1124dp2, iM1124dp4 - (iM1124dp2 * 2), f7 + i11, iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 0.0f, 90.0f);
                } else if (iIntValue3 < iIntValue) {
                    float f14 = f7 + i11;
                    this.rect.set(f14, iM1124dp4 - r3, (i17 * 2) + f14, iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 180.0f, -90.0f);
                }
                i12++;
                i8 = iIntValue3;
                i13 = lineBottom;
                f10 = f11;
                lineCount = i2;
                iM1124dp3 = i3;
                iM1124dp6 = i4;
                themedPaint2 = paint3;
            }
            paint = themedPaint2;
            float f15 = f10;
            int i18 = iM1124dp3;
            int i19 = iM1124dp6;
            int i20 = lineCount - 1;
            int i21 = i20;
            while (i21 >= 0) {
                int iIntValue4 = i21 != 0 ? ((Integer) this.lineWidths.get(i21 - 1)).intValue() : 0;
                int iIntValue5 = ((Integer) this.lineWidths.get(i21)).intValue();
                int iIntValue6 = i21 != i20 ? ((Integer) this.lineWidths.get(i21 + 1)).intValue() : 0;
                this.textLayout.getLineBottom(i21);
                float f16 = measuredWidth - (iIntValue5 / 2);
                int i22 = (i21 == i20 || iIntValue5 >= iIntValue6 || i21 == 0 || iIntValue5 >= iIntValue4) ? i18 : i19;
                if (i21 == i20 || iIntValue5 > iIntValue6) {
                    f6 = f16;
                    this.rect.set(f6 - i11, iM1124dp4 - (iM1124dp2 * 2), f6 + iM1124dp5 + iM1124dp2, iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, 90.0f);
                } else if (iIntValue5 < iIntValue6) {
                    float f17 = f16 - i11;
                    f6 = f16;
                    this.rect.set(f17 - (i22 * 2), iM1124dp4 - r14, f17, iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, -90.0f);
                } else {
                    f6 = f16;
                }
                iM1124dp4 -= ((Integer) this.lineHeights.get(i21)).intValue();
                if (i21 == 0 || iIntValue5 > iIntValue4) {
                    this.rect.set(f6 - i11, iM1124dp4, f6 + iM1124dp5 + iM1124dp2, (iM1124dp2 * 2) + iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 180.0f, 90.0f);
                } else if (iIntValue5 < iIntValue4) {
                    float f18 = f6 - i11;
                    this.rect.set(f18 - (i22 * 2), iM1124dp4, f18, r10 + iM1124dp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 0.0f, -90.0f);
                }
                i21--;
            }
            this.backgroundPath.close();
            if (isMessageActionSuggestedPostApproval() && !isNewStyleButtonLayout()) {
                this.rect.left = (f15 - (this.textWidth / 2.0f)) - AndroidUtilities.m1124dp(17.0f);
                RectF rectF = this.rect;
                rectF.top = iM1124dp4;
                rectF.right = f15 + (this.textWidth / 2.0f) + AndroidUtilities.m1124dp(17.0f);
                this.rect.bottom = iM1124dp4 + this.textHeight + this.titleHeight + AndroidUtilities.m1124dp(28.0f);
                this.backgroundPath.reset();
                this.backgroundPath.addRoundRect(this.rect, AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(15.0f), Path.Direction.CW);
                this.backgroundPath.close();
            }
        } else {
            paint = themedPaint2;
            f = 8.0f;
            f2 = 4.0f;
            f3 = 6.0f;
            f4 = 2.0f;
        }
        if (!this.visiblePartSet) {
            this.backgroundHeight = ((ViewGroup) getParent()).getMeasuredHeight();
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(f2));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(f2));
        }
        if (z && (getAlpha() != 1.0f || isFloating())) {
            alpha = themedPaint.getAlpha();
            alpha2 = paint.getAlpha();
            themedPaint.setAlpha((int) (alpha * getAlpha() * (isFloating() ? 0.75f : 1.0f)));
            paint2 = paint;
            paint2.setAlpha((int) (alpha2 * getAlpha() * (isFloating() ? 0.75f : 1.0f)));
        } else {
            paint2 = paint;
            if (isFloating()) {
                alpha = themedPaint.getAlpha();
                alpha2 = paint2.getAlpha();
                themedPaint.setAlpha((int) (alpha * (isFloating() ? 0.75f : 1.0f)));
                paint2.setAlpha((int) (alpha2 * (isFloating() ? 0.75f : 1.0f)));
            } else {
                alpha = -1;
                alpha2 = -1;
            }
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.isRepostPreview) {
            canvas2 = canvas;
            canvas2.drawPath(this.backgroundPath, themedPaint);
            if (hasGradientService()) {
                canvas2.drawPath(this.backgroundPath, paint2);
            }
            f5 = 0.0f;
            if (this.dimAmount > 0.0f) {
                int alpha3 = this.dimPaint.getAlpha();
                if (z) {
                    this.dimPaint.setAlpha((int) (alpha3 * getAlpha()));
                }
                canvas2.drawPath(this.backgroundPath, this.dimPaint);
                this.dimPaint.setAlpha(alpha3);
            }
        } else {
            canvas2 = canvas;
            f5 = 0.0f;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (this.starGiftLayout.has()) {
            float width = this.starGiftLayout.getWidth() + AndroidUtilities.m1124dp(f);
            float width2 = (getWidth() - width) / f4;
            float fM1124dp = this.starGiftLayout.repost ? f5 : this.textY + this.textHeight + AndroidUtilities.m1124dp(12.0f);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(width2, fM1124dp, width + width2, this.starGiftLayout.getHeight() + fM1124dp + AndroidUtilities.m1124dp(f));
            if (this.backgroundRect == null) {
                this.backgroundRect = new RectF();
            }
            this.backgroundRect.set(rectF2);
            canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), themedPaint);
            if (hasGradientService()) {
                canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), paint2);
            }
        } else {
            SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
            if (suggestBirthdayActionLayout != null) {
                float fWidth = suggestBirthdayActionLayout.width();
                float fHeight = this.birthdayLayout.height();
                float width3 = (getWidth() - fWidth) / f4;
                if (this.backgroundRect == null) {
                    this.backgroundRect = new RectF();
                }
                this.backgroundRect.set(width3, AndroidUtilities.m1124dp(f2), fWidth + width3, AndroidUtilities.m1124dp(f2) + fHeight);
                canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), themedPaint);
                if (hasGradientService()) {
                    canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), paint2);
                }
            } else if (isButtonLayout(messageObject2)) {
                float width4 = (getWidth() - this.giftRectSize) / f4;
                float f19 = this.textY + this.textHeight;
                if (isNewStyleButtonLayout()) {
                    float fM1124dp2 = f19 + AndroidUtilities.m1124dp(f2);
                    AndroidUtilities.rectTmp.set(width4, fM1124dp2, this.giftRectSize + width4, this.backgroundRectHeight + fM1124dp2);
                } else {
                    float fM1124dp3 = f19 + AndroidUtilities.m1124dp(12.0f);
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i23 = this.giftRectSize;
                    rectF3.set(width4, fM1124dp3, i23 + width4, i23 + fM1124dp3 + this.giftPremiumAdditionalHeight);
                }
                if (messageObject2 != null && messageObject2.type == 18 && !this.giftPremiumTextCollapsed && (textLayout = this.giftPremiumText) != null && this.giftPremiumTextCollapsedHeight > 0) {
                    AndroidUtilities.rectTmp.bottom -= (textLayout.layout.getHeight() - this.giftPremiumTextCollapsedHeight) * (1.0f - this.giftPremiumTextExpandedAnimated.get());
                }
                if (this.backgroundRect == null) {
                    this.backgroundRect = new RectF();
                }
                this.backgroundRect.set(AndroidUtilities.rectTmp);
                if (messageObject2 != null && (((i = messageObject2.type) == 33 || i == 35) && this.botInlineButtons != null)) {
                    Arrays.fill(this.radii, AndroidUtilities.m1124dp(16.0f));
                    float[] fArr = this.radii;
                    float fM1124dp4 = AndroidUtilities.m1124dp(f3);
                    fArr[7] = fM1124dp4;
                    fArr[6] = fM1124dp4;
                    fArr[5] = fM1124dp4;
                    fArr[4] = fM1124dp4;
                    this.backgroundPath2.rewind();
                    this.backgroundPath2.addRoundRect(this.backgroundRect, this.radii, Path.Direction.CW);
                    canvas2.drawPath(this.backgroundPath2, themedPaint);
                    if (hasGradientService()) {
                        canvas2.drawPath(this.backgroundPath2, paint2);
                    }
                } else {
                    canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), themedPaint);
                    if (hasGradientService()) {
                        canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), paint2);
                    }
                }
            }
        }
        if (alpha >= 0) {
            themedPaint.setAlpha(alpha);
            paint2.setAlpha(alpha2);
        }
    }

    private void drawBotButtons(Canvas canvas, ArrayList arrayList) {
        float f;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        float f2 = 4.0f;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        }
        float f3 = 2.0f;
        float width = (getWidth() - this.giftRectSize) / 2.0f;
        float fM1124dp = this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f) + this.backgroundRectHeight + AndroidUtilities.m1124dp(4.0f);
        float fM1124dp2 = (this.giftRectSize - AndroidUtilities.m1124dp(4.0f)) / 2.0f;
        int i = 0;
        while (i < arrayList.size()) {
            BotButton botButton = (BotButton) arrayList.get(i);
            float pressScale = botButton.getPressScale();
            float fM1124dp3 = ((AndroidUtilities.m1124dp(f2) + fM1124dp2) * i) + width;
            float f4 = fM1124dp3 + fM1124dp2;
            this.rect.set(fM1124dp3, fM1124dp, f4, botButton.height + fM1124dp);
            canvas.save();
            if (pressScale != 1.0f) {
                f = f2;
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            } else {
                f = f2;
            }
            Arrays.fill(this.botButtonRadii, AndroidUtilities.m1124dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float fM1124dp4 = AndroidUtilities.m1124dp(SharedConfig.bubbleRadius);
                fArr[7] = fM1124dp4;
                fArr[6] = fM1124dp4;
            }
            if (botButton.hasPositionFlag(10)) {
                float[] fArr2 = this.botButtonRadii;
                float fM1124dp5 = AndroidUtilities.m1124dp(SharedConfig.bubbleRadius);
                fArr2[5] = fM1124dp5;
                fArr2[4] = fM1124dp5;
            }
            this.botButtonPath.rewind();
            float f5 = f3;
            this.botButtonPath.addRoundRect(this.rect, this.botButtonRadii, Path.Direction.CW);
            canvas.drawPath(this.botButtonPath, getThemedPaint("paintChatActionBackground"));
            if (hasGradientService()) {
                canvas.drawPath(this.botButtonPath, Theme.chat_actionBackgroundGradientDarkenPaint);
            }
            canvas.save();
            canvas.clipPath(this.botButtonPath);
            Drawable drawable = botButton.selectorDrawable;
            if (drawable != null) {
                int i2 = (int) fM1124dp;
                drawable.setBounds((int) fM1124dp3, i2, (int) f4, botButton.height + i2);
                botButton.selectorDrawable.setAlpha(255);
                botButton.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            float fM1124dp6 = botButton.iconDrawable != null ? AndroidUtilities.m1124dp(26.0f) : 0;
            float width2 = fM1124dp3 + (((fM1124dp2 - (botButton.title.getWidth() + (botButton.iconDrawable != null ? AndroidUtilities.m1124dp(f) : 0))) - fM1124dp6) / f5);
            Drawable drawable2 = botButton.iconDrawable;
            if (drawable2 != null) {
                int i3 = (int) width2;
                drawable2.setBounds(i3, (int) (((botButton.height - AndroidUtilities.m1124dp(24.0f)) / f5) + fM1124dp), i3 + AndroidUtilities.m1124dp(24.0f), ((int) (((botButton.height - AndroidUtilities.m1124dp(24.0f)) / f5) + fM1124dp)) + AndroidUtilities.m1124dp(24.0f));
                botButton.iconDrawable.setAlpha(botButton.isLocked ? 128 : 255);
                botButton.iconDrawable.draw(canvas);
                width2 += fM1124dp6;
            }
            botButton.title.ellipsize(Math.max(1, (((int) fM1124dp2) - AndroidUtilities.m1124dp(15.0f)) - r4));
            botButton.title.draw(canvas, width2, (AndroidUtilities.m1124dp(40.0f) / f5) + fM1124dp, botButton.isLocked ? 0.5f : 1.0f);
            canvas.restore();
            canvas.restore();
            i++;
            f2 = f;
            f3 = f5;
        }
    }

    private boolean checkBotButtonMotionEvent(MotionEvent motionEvent) {
        int i;
        BotInlineKeyboard.ButtonCustom buttonCustom;
        if (this.botButtons.isEmpty()) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        float width = (getWidth() - this.giftRectSize) / 2.0f;
        float fM1124dp = this.textY + this.textHeight + AndroidUtilities.m1124dp(4.0f) + this.backgroundRectHeight + AndroidUtilities.m1124dp(4.0f);
        float fM1124dp2 = (this.giftRectSize - AndroidUtilities.m1124dp(4.0f)) / 2.0f;
        if (motionEvent.getAction() == 0) {
            this.pressedBotButton = -1;
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = (BotButton) this.botButtons.get(i2);
                float fM1124dp3 = ((AndroidUtilities.m1124dp(4.0f) + fM1124dp2) * i2) + width;
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(fM1124dp3, fM1124dp, fM1124dp3 + fM1124dp2, botButton.height + fM1124dp);
                float f = x;
                float f2 = y;
                if (rectF.contains(f, f2)) {
                    this.pressedBotButton = i2;
                    invalidateOutbounds();
                    if (botButton.selectorDrawable == null) {
                        Drawable drawableCreateRadSelectorDrawable = Theme.createRadSelectorDrawable(getThemedColor(Theme.key_chat_serviceBackgroundSelector), 6, 6);
                        botButton.selectorDrawable = drawableCreateRadSelectorDrawable;
                        drawableCreateRadSelectorDrawable.setCallback(this);
                    }
                    botButton.selectorDrawable.setHotspot(f, f2);
                    botButton.selectorDrawable.setState(this.pressedState);
                    botButton.setPressed(!botButton.isLocked);
                    return true;
                }
            }
        } else if (motionEvent.getAction() == 1) {
            if (this.pressedBotButton != -1) {
                playSoundEffect(0);
                BotButton botButton2 = (BotButton) this.botButtons.get(this.pressedBotButton);
                Drawable drawable = botButton2.selectorDrawable;
                if (drawable != null) {
                    drawable.setState(StateSet.NOTHING);
                }
                botButton2.setPressed(false);
                if (this.delegate != null && !botButton2.isLocked && (buttonCustom = botButton2.buttonCustom) != null) {
                    didPressCustomBotButton(buttonCustom);
                }
                this.pressedBotButton = -1;
                invalidateOutbounds();
                return false;
            }
        } else if (motionEvent.getAction() == 3 && (i = this.pressedBotButton) != -1) {
            BotButton botButton3 = (BotButton) this.botButtons.get(i);
            Drawable drawable2 = botButton3.selectorDrawable;
            if (drawable2 != null) {
                drawable2.setState(StateSet.NOTHING);
            }
            botButton3.setPressed(false);
            this.pressedBotButton = -1;
            invalidateOutbounds();
        }
        return false;
    }

    private void didPressCustomBotButton(BotInlineKeyboard.ButtonCustom buttonCustom) {
        MessageObject messageObject;
        TLRPC.Message message;
        MessageObject messageObject2;
        TLRPC.Message message2;
        TLRPC.Message message3;
        if (getMessageObject() == null) {
            return;
        }
        int i = buttonCustom.f1580id;
        if (i == 5) {
            ChatActionCellDelegate chatActionCellDelegate = this.delegate;
            final BaseFragment baseFragment = chatActionCellDelegate != null ? chatActionCellDelegate.getBaseFragment() : null;
            if (baseFragment == null || this.currentMessageObject == null) {
                return;
            }
            AlertsCreator.showSimpleConfirmAlert(baseFragment, LocaleController.getString(C2888R.string.GiftOfferRejectConfirmTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.GiftOfferRejectConfirmText, DialogObject.getShortName(this.currentMessageObject.getDialogId()))), LocaleController.getString(C2888R.string.GiftOfferRejectConfirmConfirm), true, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didPressCustomBotButton$8(baseFragment);
                }
            });
            return;
        }
        if (i == 6) {
            MessageObject messageObject3 = this.currentMessageObject;
            if (messageObject3 == null || (message3 = messageObject3.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction = message3.action;
            if (messageAction instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
                GiftOfferSheet.openOfferAcceptAlert(LaunchActivity.getLastFragment(), getContext(), this.themeDelegate, this.currentAccount, this.currentMessageObject.getDialogId(), this.currentMessageObject.getId(), (TLRPC.TL_messageActionStarGiftPurchaseOffer) messageAction);
                return;
            }
            return;
        }
        if (i == 7) {
            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
            BaseFragment baseFragment2 = chatActionCellDelegate2 != null ? chatActionCellDelegate2.getBaseFragment() : null;
            if (baseFragment2 == null || (messageObject2 = this.currentMessageObject) == null || (message2 = messageObject2.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction2 = message2.action;
            if (messageAction2 instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                final TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest = (TLRPC.TL_messageActionNoForwardsRequest) messageAction2;
                AlertsCreator.showSimpleConfirmAlert(baseFragment2, LocaleController.getString(tL_messageActionNoForwardsRequest.prev_value ? C2888R.string.SharingOfferDisableCancelTitle : C2888R.string.SharingOfferEnableCancelTitle), LocaleController.getString(tL_messageActionNoForwardsRequest.prev_value ? C2888R.string.SharingOfferDisableCancelText : C2888R.string.SharingOfferEnableCancelText), LocaleController.getString(C2888R.string.SharingOfferCancelYes), false, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didPressCustomBotButton$9(tL_messageActionNoForwardsRequest);
                    }
                });
                return;
            }
            return;
        }
        if (i == 8) {
            ChatActionCellDelegate chatActionCellDelegate3 = this.delegate;
            BaseFragment baseFragment3 = chatActionCellDelegate3 != null ? chatActionCellDelegate3.getBaseFragment() : null;
            if (baseFragment3 == null || (messageObject = this.currentMessageObject) == null || (message = messageObject.messageOwner) == null) {
                return;
            }
            TLRPC.MessageAction messageAction3 = message.action;
            if (messageAction3 instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                final TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest2 = (TLRPC.TL_messageActionNoForwardsRequest) messageAction3;
                AlertsCreator.showSimpleConfirmAlert(baseFragment3, LocaleController.getString(tL_messageActionNoForwardsRequest2.new_value ? C2888R.string.SharingOfferDisableCancelTitle : C2888R.string.SharingOfferEnableCancelTitle), LocaleController.getString(tL_messageActionNoForwardsRequest2.new_value ? C2888R.string.SharingOfferDisableConfirmText : C2888R.string.SharingOfferEnableConfirmText), LocaleController.getString(C2888R.string.SharingOfferCancelYes), false, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didPressCustomBotButton$10(tL_messageActionNoForwardsRequest2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$8(final BaseFragment baseFragment) {
        TL_payments.TL_resolveStarGiftOffer tL_resolveStarGiftOffer = new TL_payments.TL_resolveStarGiftOffer();
        tL_resolveStarGiftOffer.offer_msg_id = getMessageObject().getId();
        tL_resolveStarGiftOffer.decline = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_resolveStarGiftOffer, new Utilities.Callback2() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$didPressCustomBotButton$7(baseFragment, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$7(final BaseFragment baseFragment, TLRPC.Updates updates, final TLRPC.TL_error tL_error) {
        if (updates != null) {
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
        }
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    BulletinFactory.m1246of(baseFragment).showForError(tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$9(TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest) {
        MessagesController.getInstance(this.currentAccount).toggleChatNoForwards(this.currentMessageObject.getDialogId(), this.currentMessageObject.getId(), tL_messageActionNoForwardsRequest.prev_value, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$10(TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest) {
        MessagesController.getInstance(this.currentAccount).toggleChatNoForwards(this.currentMessageObject.getDialogId(), this.currentMessageObject.getId(), tL_messageActionNoForwardsRequest.new_value, null);
    }

    public void drawReactions(Canvas canvas, boolean z, Integer num) {
        if (this.canDrawInParent) {
            if (hasGradientService() && !z) {
                return;
            }
            if (!hasGradientService() && z) {
                return;
            }
        }
        drawReactionsLayout(canvas, z, num);
    }

    public void drawReactionsLayout(Canvas canvas, boolean z, Integer num) {
        Canvas canvas2;
        float alpha = z ? getAlpha() : 1.0f;
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.shouldDrawReactions()) {
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (!reactionsLayoutInBubble.isSmall || (this.transitionParams.animateChange && reactionsLayoutInBubble.animateHeight)) {
            reactionsLayoutInBubble.drawServiceShaderBackground = 1.0f;
            if (alpha < 1.0f) {
                canvas2 = canvas;
                canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (alpha * 255.0f), 31);
            } else {
                canvas2 = canvas;
            }
            ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
            TransitionParams transitionParams = this.transitionParams;
            reactionsLayoutInBubble2.draw(canvas2, transitionParams.animateChange ? transitionParams.animateChangeProgress : 1.0f, num);
            if (alpha < 1.0f) {
                canvas2.restore();
            }
        }
    }

    public void drawReactionsLayoutOverlay(Canvas canvas, boolean z) {
        Canvas canvas2;
        float alpha = z ? getAlpha() : 1.0f;
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.shouldDrawReactions()) {
            return;
        }
        ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
        if (!reactionsLayoutInBubble.isSmall || (this.transitionParams.animateChange && reactionsLayoutInBubble.animateHeight)) {
            reactionsLayoutInBubble.drawServiceShaderBackground = 1.0f;
            if (alpha < 1.0f) {
                canvas2 = canvas;
                canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (alpha * 255.0f), 31);
            } else {
                canvas2 = canvas;
            }
            ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
            TransitionParams transitionParams = this.transitionParams;
            reactionsLayoutInBubble2.drawOverlay(canvas2, transitionParams.animateChange ? transitionParams.animateChangeProgress : 1.0f);
            if (alpha < 1.0f) {
                canvas2.restore();
            }
        }
    }

    @Override // org.telegram.p029ui.Cells.BaseCell
    public int getBoundsLeft() {
        if (this.starGiftLayout.has()) {
            int width = ((int) (getWidth() - (this.starGiftLayout.getWidth() + AndroidUtilities.m1124dp(8.0f)))) / 2;
            return this.starGiftLayout.repost ? width : Math.min(this.backgroundLeft, width);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            return (this.sideMenuWidth / 2) + ((getWidth() - this.giftRectSize) / 2);
        }
        int iMin = this.backgroundLeft;
        ImageReceiver imageReceiver = this.imageReceiver;
        if (imageReceiver != null && imageReceiver.getVisible()) {
            iMin = Math.min((int) this.imageReceiver.getImageX(), iMin);
        }
        return (this.sideMenuWidth / 2) + iMin;
    }

    @Override // org.telegram.p029ui.Cells.BaseCell
    public int getBoundsRight() {
        if (this.starGiftLayout.has()) {
            int width = ((int) (getWidth() + (this.starGiftLayout.getWidth() + AndroidUtilities.m1124dp(8.0f)))) / 2;
            return this.starGiftLayout.repost ? width : Math.max(this.backgroundRight, width);
        }
        if (isButtonLayout(this.currentMessageObject)) {
            return (this.sideMenuWidth / 2) + ((getWidth() + this.giftRectSize) / 2);
        }
        int iMax = this.backgroundRight;
        ImageReceiver imageReceiver = this.imageReceiver;
        if (imageReceiver != null && imageReceiver.getVisible()) {
            iMax = Math.max((int) this.imageReceiver.getImageX2(), iMax);
        }
        return (this.sideMenuWidth / 2) + iMax;
    }

    public boolean hasGradientService() {
        if (this.overrideBackgroundPaint != null) {
            return false;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        return resourcesProvider != null ? resourcesProvider.hasGradientService() : Theme.hasGradientService();
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
        TLRPC.PhotoSize photoSize;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || messageObject.type != 11) {
            return;
        }
        int size = messageObject.photoThumbs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                photoSize = null;
                break;
            }
            photoSize = messageObject.photoThumbs.get(i);
            if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                break;
            } else {
                i++;
            }
        }
        this.imageReceiver.setImage(this.currentVideoLocation, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(photoSize, messageObject.photoThumbsObject), "50_50_b", this.avatarDrawable, 0L, null, messageObject, 1);
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        MessageObject messageObject = this.currentMessageObject;
        if (TextUtils.isEmpty(this.customText) && messageObject == null) {
            return;
        }
        if (this.accessibilityText == null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(!TextUtils.isEmpty(this.customText) ? this.customText : messageObject.messageText);
            for (final CharacterStyle characterStyle : (CharacterStyle[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ClickableSpan.class)) {
                int spanStart = spannableStringBuilder.getSpanStart(characterStyle);
                int spanEnd = spannableStringBuilder.getSpanEnd(characterStyle);
                spannableStringBuilder.removeSpan(characterStyle);
                spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Cells.ChatActionCell.1
                    @Override // android.text.style.ClickableSpan
                    public void onClick(View view) {
                        if (ChatActionCell.this.delegate != null) {
                            ChatActionCell.this.openLink(characterStyle);
                        }
                    }
                }, spanStart, spanEnd, 33);
            }
            this.accessibilityText = spannableStringBuilder;
        }
        if (Build.VERSION.SDK_INT < 24) {
            accessibilityNodeInfo.setContentDescription(this.accessibilityText.toString());
        } else {
            accessibilityNodeInfo.setText(this.accessibilityText);
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    public void setInvalidateColors(boolean z) {
        if (this.invalidateColors == z) {
            return;
        }
        this.invalidateColors = z;
        invalidate();
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.themeDelegate);
    }

    protected Paint getThemedPaint(String str) {
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        Paint paint = resourcesProvider != null ? resourcesProvider.getPaint(str) : null;
        return paint != null ? paint : Theme.getThemePaint(str);
    }

    public void drawOutboundsContent(Canvas canvas) {
        canvas.save();
        canvas.translate(this.sideMenuWidth / 2.0f, getPaddingTop());
        canvas.save();
        canvas.translate(this.textXLeft, this.textY);
        StaticLayout staticLayout = this.textLayout;
        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, staticLayout, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout != null ? getAdaptiveEmojiColorFilter(staticLayout.getPaint().getColor()) : null);
        canvas.restore();
        if (this.starGiftLayout.has()) {
            canvas.save();
            canvas.translate((getWidth() - this.starGiftLayout.getWidth()) / 2.0f, this.starGiftLayout.repost ? AndroidUtilities.m1124dp(4.0f) : this.textY + this.textHeight + AndroidUtilities.m1124dp(16.0f));
            this.starGiftLayout.drawOutbounds(canvas);
            canvas.restore();
        }
        canvas.restore();
        if (this.topicSeparator != null) {
            float alpha = getAlpha();
            Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
            if (resourcesProvider != null) {
                resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + 0.0f);
            } else {
                Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + 0.0f);
            }
            this.topicSeparator.draw(canvas, getWidth(), this.sideMenuWidth, 0.0f, 1.0f, alpha, this.showTopicSeparator);
        }
        drawBotButtons(canvas, this.botButtons);
    }

    private boolean isButtonLayout(MessageObject messageObject) {
        if (messageObject == null) {
            return false;
        }
        int i = messageObject.type;
        return i == 30 || i == 18 || i == 25 || isNewStyleButtonLayout();
    }

    private boolean isGiftChannel(MessageObject messageObject) {
        return messageObject != null && messageObject.type == 25;
    }

    public void setInvalidatesParent(boolean z) {
        this.invalidatesParent = z;
    }

    public void setInvalidateListener(Runnable runnable) {
        this.invalidateListener = runnable;
    }

    @Override // org.telegram.p029ui.Cells.BaseCell, android.view.View
    public void invalidate() {
        super.invalidate();
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        Runnable runnable = this.invalidateListener;
        if (runnable != null) {
            runnable.run();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    public void invalidateOutbounds() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate == null || !chatActionCellDelegate.canDrawOutboundsContent()) {
            if (getParent() instanceof View) {
                ((View) getParent()).invalidate();
                return;
            }
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(Rect rect) {
        super.invalidate(rect);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        super.invalidate(i, i2, i3, i4);
        View view = this.invalidateWithParent;
        if (view != null) {
            view.invalidate();
        }
        if (!this.invalidatesParent || getParent() == null) {
            return;
        }
        View view2 = (View) getParent();
        if (view2.getParent() != null) {
            view2.invalidate();
            ((View) view2.getParent()).invalidate();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.wallpaperPreviewDrawable || super.verifyDrawable(drawable);
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i) {
        if (i != this.adaptiveEmojiColor || this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = i;
            this.adaptiveEmojiColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter;
    }

    public ReactionsLayoutInBubble.ReactionButton getReactionButton(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        return this.reactionsLayoutInBubble.getReactionButton(visibleReaction);
    }

    public class TransitionParams {
        public boolean animateChange;
        public float animateChangeProgress = 1.0f;
        public boolean wasDraw;

        public boolean supportChangeAnimation() {
            return true;
        }

        public TransitionParams() {
        }

        public void recordDrawingState() {
            this.wasDraw = true;
            ChatActionCell.this.reactionsLayoutInBubble.recordDrawingState();
        }

        public boolean animateChange() {
            if (this.wasDraw) {
                return ChatActionCell.this.reactionsLayoutInBubble.animateChange();
            }
            return false;
        }

        public void onDetach() {
            this.wasDraw = false;
        }

        public void resetAnimation() {
            this.animateChange = false;
            this.animateChangeProgress = 1.0f;
        }
    }

    public TransitionParams getTransitionParams() {
        return this.transitionParams;
    }

    public void setScrimReaction(Integer num) {
        this.reactionsLayoutInBubble.setScrimReaction(num);
    }

    public void drawScrimReaction(Canvas canvas, Integer num, float f, boolean z) {
        if (this.reactionsLayoutInBubble.isSmall) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        }
        this.reactionsLayoutInBubble.setScrimProgress(f, z);
        this.reactionsLayoutInBubble.draw(canvas, this.transitionParams.animateChangeProgress, num);
    }

    public void drawScrimReactionPreview(View view, Canvas canvas, int i, Integer num, float f) {
        if (this.reactionsLayoutInBubble.isSmall) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.m1124dp(4.0f));
        }
        this.reactionsLayoutInBubble.setScrimProgress(f);
        this.reactionsLayoutInBubble.drawPreview(view, canvas, i, num);
    }

    public boolean checkUnreadReactions(float f, int i) {
        if (!this.reactionsLayoutInBubble.hasUnreadReactions) {
            return false;
        }
        float y = getY();
        float f2 = y + r2.f2054y;
        return f2 > f && (f2 + ((float) this.reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.m1124dp(16.0f)) < ((float) i);
    }

    public void markReactionsAsRead() {
        this.reactionsLayoutInBubble.hasUnreadReactions = false;
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null) {
            return;
        }
        messageObject.markReactionsAsRead();
    }
}
