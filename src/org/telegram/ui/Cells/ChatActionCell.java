package org.telegram.ui.Cells;

import android.R;
import android.annotation.SuppressLint;
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
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.AvatarCornerType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
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
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_payments;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.ChannelAdminLogActivity;
import org.telegram.ui.ChatBackgroundDrawable;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CommunityAvatarDrawable;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RadialProgress2;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.SuggestBirthdayActionLayout;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TopicSeparator;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.GradientClip;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stars.GiftOfferSheet;
import org.telegram.ui.Stars.StarGiftSheet;
import org.telegram.ui.Stars.StarGiftUniqueActionLayout;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.UploadingDotsSpannable;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.Stories.recorder.PreviewView;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.WalletActionLayout;
import org.telegram.ui.Wallet.WalletActivity;
import org.telegram.ui.community.CommunitySheet;
import org.telegram.ui.community.CommunityUtils;

/* JADX INFO: loaded from: classes7.dex */
public class ChatActionCell extends BaseCell implements DownloadController.FileDownloadProgressListener, NotificationCenter.NotificationCenterDelegate, IMessageCell {
    private static Map<Integer, String> monthsToEmoticon;
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
    private ArrayList<BotButton> botButtons;
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
    public boolean isBotForum;
    public boolean isForum;
    public boolean isMonoForum;
    public boolean isSideMenuEnabled;
    public boolean isSideMenued;
    private boolean isSpoilerRevealing;
    private float lastTouchX;
    private float lastTouchY;
    private ArrayList<Integer> lineHeights;
    private ArrayList<Integer> lineWidths;
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
    public List<SpoilerEffect> spoilers;
    private Stack<SpoilerEffect> spoilersPool;
    private boolean spoilersSuppressed;
    public StarGiftUniqueActionLayout starGiftLayout;
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
    public WalletActionLayout walletActionLayout;
    public float walletActionLayoutX;
    public float walletActionLayoutY;
    private final RectF walletActionRect;
    private int walletSendState;
    private float walletSlidingOffset;
    private float walletTouchDownX;
    private float walletTouchDownY;
    private Drawable wallpaperPreviewDrawable;
    private boolean wasLayout;

    public interface ChatActionCellDelegate {
        default boolean canDrawOutboundsContent() {
            return true;
        }

        default void didClickButton(ChatActionCell chatActionCell) {
        }

        default void didClickImage(ChatActionCell chatActionCell) {
        }

        default boolean didLongPress(ChatActionCell chatActionCell, float f, float f2) {
            return false;
        }

        default void didOpenPremiumGift(ChatActionCell chatActionCell, TLRPC.TL_premiumGiftOption tL_premiumGiftOption, String str, boolean z) {
        }

        default void didOpenPremiumGiftChannel(ChatActionCell chatActionCell, String str, boolean z) {
        }

        default void didPressReaction(ChatActionCell chatActionCell, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
        }

        default void didPressReplyMessage(ChatActionCell chatActionCell, int i) {
        }

        default void didPressTaskLink(ChatActionCell chatActionCell, int i, int i2) {
        }

        default void forceUpdate(ChatActionCell chatActionCell, boolean z) {
        }

        default BaseFragment getBaseFragment() {
            return null;
        }

        default long getDialogId() {
            return 0L;
        }

        default long getTopicId() {
            return 0L;
        }

        default void needOpenInviteLink(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
        }

        default void needOpenUserProfile(long j) {
        }

        default void needShowEffectOverlay(ChatActionCell chatActionCell, TLRPC.Document document, TLRPC.VideoSize videoSize) {
        }

        default void onTopicClick(ChatActionCell chatActionCell) {
        }
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public /* bridge */ /* synthetic */ ImageReceiver getAvatarImage() {
        return super.getAvatarImage();
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public /* bridge */ /* synthetic */ float getCheckBoxTranslation() {
        return super.getCheckBoxTranslation();
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public /* bridge */ /* synthetic */ MessageObject.GroupedMessagePosition getCurrentPosition() {
        return super.getCurrentPosition();
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public float getDeltaBottom() {
        return 0.0f;
    }

    public float getDeltaLeft() {
        return 0.0f;
    }

    public float getDeltaRight() {
        return 0.0f;
    }

    public float getDeltaTop() {
        return 0.0f;
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public /* bridge */ /* synthetic */ int getLayoutHeight() {
        return super.getLayoutHeight();
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public /* bridge */ /* synthetic */ float getSlidingOffsetX() {
        return super.getSlidingOffsetX();
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
        if (i == NotificationCenter.emojiLoaded) {
            invalidate();
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
        if (i == NotificationCenter.diceStickersDidLoad) {
            if (!Objects.equals(objArr[0], UserConfig.getInstance(this.currentAccount).premiumGiftsStickerPack) || (messageObject = this.currentMessageObject) == null) {
                return;
            }
            setMessageObject(messageObject, true);
            return;
        }
        if (i == NotificationCenter.walletUpdate && hasWalletActionLayout()) {
            this.accessibilityText = null;
            this.previousWidth = 0;
            requestLayout();
            invalidate();
        }
    }

    public void setSpoilersSuppressed(boolean z) {
        this.spoilersSuppressed = z;
        WalletActionLayout walletActionLayout = this.walletActionLayout;
        if (walletActionLayout != null) {
            walletActionLayout.setSpoilersSuppressed(z);
        }
        Iterator<SpoilerEffect> it = this.spoilers.iterator();
        while (it.hasNext()) {
            it.next().setSuppressUpdates(z);
        }
    }

    public void setInvalidateWithParent(View view) {
        this.invalidateWithParent = view;
    }

    public boolean hasButton() {
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || !isButtonLayout(messageObject) || this.giftPremiumButtonLayout == null) ? false : true;
    }

    public void setShowTopic(boolean z) {
        if (this.showTopicSeparator != z) {
            this.showTopicSeparator = z;
            invalidateOutbounds();
            invalidate();
        }
    }

    public boolean canSwipeGramTransferReply(float f, float f2) {
        return hasWalletActionLayout() && !this.walletActionLayout.isDiamondTouch((f - this.walletActionLayoutX) - (((float) this.sideMenuWidth) / 2.0f), (f2 - this.walletActionLayoutY) - ((float) getPaddingTop()));
    }

    public float getWalletSlidingOffset() {
        return this.walletSlidingOffset;
    }

    public float getWalletActionRight() {
        return hasWalletActionLayout() ? this.walletActionLayoutX + (this.sideMenuWidth / 2.0f) + this.walletActionLayout.getWidth() : getWidth() / 2.0f;
    }

    public void setWalletSlidingOffset(float f) {
        setTranslationX((getTranslationX() - this.walletSlidingOffset) + f);
        this.walletSlidingOffset = f;
    }

    public class TextLayout {
        public AnimatedEmojiSpan.EmojiGroupedSpans emoji;
        public StaticLayout layout;
        public TextPaint paint;
        public int width;

        /* JADX INFO: renamed from: x */
        public float f1069x;

        /* JADX INFO: renamed from: y */
        public float f1070y;
        public List<SpoilerEffect> spoilers = new ArrayList();
        public final AtomicReference<Layout> patchedLayout = new AtomicReference<>();

        public TextLayout() {
        }

        public void setText(CharSequence charSequence, TextPaint textPaint, int i) {
            this.paint = textPaint;
            this.width = i;
            this.layout = new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_CENTER, 1.1f, 0.0f, false);
            if (ChatActionCell.this.currentMessageObject == null || !ChatActionCell.this.currentMessageObject.isSpoilersRevealed) {
                SpoilerEffect.addSpoilers(ChatActionCell.this, this.layout, -1, i, null, this.spoilers);
            } else {
                List<SpoilerEffect> list = this.spoilers;
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
            AndroidUtilities.runOnUIThread(new ChatActionCell$$ExternalSyntheticLambda16(lottieAnimation));
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
        this.spoilersPool = new Stack<>();
        this.reactionsLayoutInBubble = new ReactionsLayoutInBubble(this);
        this.walletActionRect = new RectF();
        this.overrideBackground = -1;
        this.overrideText = -1;
        this.lineWidths = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
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
        this.giftStickerDelegate = new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver, boolean z2, boolean z3, boolean z4) {
                this.f$0.lambda$new$0(imageReceiver, z2, z3, z4);
            }
        };
        this.starsPath = new Path();
        this.botButtons = new ArrayList<>();
        this.walletSendState = -1;
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
        this.giftTitlePaint.setTextSize(TypedValue.applyDimension(1, 16.0f, getResources().getDisplayMetrics()));
        this.giftSubtitlePaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        this.giftTextPaint.setTextSize(TypedValue.applyDimension(1, 15.0f, getResources().getDisplayMetrics()));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(-16777216, 0.1f), 7, AndroidUtilities.dp(16.0f)));
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
        drawable.k3 = 0.98f;
        drawable.k2 = 0.98f;
        drawable.k1 = 0.98f;
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
            dateChat = LocaleController.getString("MessageScheduledUntilOnline", C2807R.string.MessageScheduledUntilOnline);
        } else {
            dateChat = LocaleController.formatString("MessageScheduledOn", C2807R.string.MessageScheduledOn, LocaleController.formatDateChat(i));
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda7
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

    /* JADX WARN: Removed duplicated region for block: B:150:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x08a3 A[LOOP:8: B:374:0x0839->B:392:0x08a3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x08da  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0967  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x09e7  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x08b3 A[EDGE_INSN: B:505:0x08b3->B:394:0x08b3 BREAK  A[LOOP:8: B:374:0x0839->B:392:0x08a3], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMessageObject(MessageObject messageObject, boolean z) {
        StaticLayout staticLayout;
        TLRPC.TL_messageReactions tL_messageReactions;
        String str;
        TLRPC.TL_messages_stickerSet stickerSetByName;
        String str2;
        TLRPC.Document document;
        TLRPC.Document document2;
        String str3;
        String str4;
        ArrayList<Long> arrayList;
        Object obj;
        long j;
        String tonGiftEmoji;
        TLRPC.Document document3;
        TLRPC.Document giftDocument;
        TLRPC.Document giftDocument2;
        BotInlineKeyboard.Source source;
        TLRPC.PhotoSize photoSize;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        TLRPC.PhotoSize photoSize2;
        TLRPC.VideoSize closestVideoSizeWithSize;
        TLRPC.PhotoSize photoSize3;
        TLRPC.PhotoSize closestPhotoSizeWithSize2;
        float f;
        ImageUpdater imageUpdater;
        TLRPC.WallPaper wallPaper;
        TLRPC.MessageAction messageAction;
        TLRPC.Document document4;
        String str5;
        int i;
        TLRPC.Message message;
        String name;
        String str6;
        MessageObject messageObject2 = messageObject;
        if (messageObject2 == null) {
            return;
        }
        if (this.currentMessageObject != messageObject2 && this.walletSlidingOffset != 0.0f) {
            setWalletSlidingOffset(0.0f);
        }
        TLRPC.Message message2 = messageObject2.messageOwner;
        if ((message2 == null || !(message2.action instanceof TLRPC.TL_messageActionGramTransfer) || this.walletSendState == message2.send_state) && this.currentMessageObject == messageObject2 && (((staticLayout = this.textLayout) == null || TextUtils.equals(staticLayout.getText(), messageObject2.messageText)) && !((!this.hasReplyMessage && messageObject2.replyMessageObject != null) || z || messageObject2.type == 21 || messageObject2.forceUpdate))) {
            return;
        }
        if (BuildVars.DEBUG_PRIVATE_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            FileLog.m1040e(new IllegalStateException("Wrong thread!!!"));
        }
        this.botButtons.clear();
        this.botInlineButtons = null;
        this.accessibilityText = null;
        MessageObject messageObject3 = this.currentMessageObject;
        int i2 = 0;
        boolean z2 = messageObject3 == null || messageObject3.stableId != messageObject2.stableId;
        if (messageObject3 != null) {
            messageObject2.playedGiftAnimation = messageObject3.playedGiftAnimation;
        }
        if (!z2 && messageObject3 != null && hasWalletActionLayout()) {
            messageObject2.messageOwner.premiumEffectWasPlayed |= this.currentMessageObject.messageOwner.premiumEffectWasPlayed;
        }
        this.currentMessageObject = messageObject2;
        if (hasWalletActionLayout() && this.walletActionLayout == null) {
            WalletActionLayout walletActionLayout = new WalletActionLayout(this, this.themeDelegate);
            this.walletActionLayout = walletActionLayout;
            walletActionLayout.setOnClickListener(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.openGramTransaction();
                }
            });
            this.walletActionLayout.setSpoilersSuppressed(this.spoilersSuppressed);
        }
        WalletActionLayout walletActionLayout2 = this.walletActionLayout;
        if (walletActionLayout2 != null) {
            walletActionLayout2.setSurfaceEnabled(hasWalletActionLayout());
        }
        TLRPC.Message message3 = messageObject2.messageOwner;
        if (message3 != null && (message3.action instanceof TLRPC.TL_messageActionGramTransfer)) {
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            long peerDialogId = DialogObject.getPeerDialogId(messageObject2.messageOwner.peer_id);
            if (UserObject.isService(peerDialogId)) {
                name = LocaleController.getString(C2807R.string.WalletUnknownUser);
            } else if (messageObject2.messageOwner.peer_id == null) {
                str6 = null;
                WalletActionLayout walletActionLayout3 = this.walletActionLayout;
                boolean zIsOutOwner = messageObject2.isOutOwner();
                TLRPC.Message message4 = messageObject2.messageOwner;
                walletActionLayout3.set(zIsOutOwner, (TLRPC.TL_messageActionGramTransfer) message4.action, str6, message4.send_state, z2, !message4.premiumEffectWasPlayed);
                this.walletSendState = messageObject2.messageOwner.send_state;
            } else {
                name = DialogObject.getName(messagesController.getUserOrChat(peerDialogId));
            }
            str6 = name;
            WalletActionLayout walletActionLayout32 = this.walletActionLayout;
            boolean zIsOutOwner2 = messageObject2.isOutOwner();
            TLRPC.Message message42 = messageObject2.messageOwner;
            walletActionLayout32.set(zIsOutOwner2, (TLRPC.TL_messageActionGramTransfer) message42.action, str6, message42.send_state, z2, !message42.premiumEffectWasPlayed);
            this.walletSendState = messageObject2.messageOwner.send_state;
        }
        messageObject2.forceUpdate = false;
        this.hasReplyMessage = messageObject2.replyMessageObject != null;
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.previousWidth = 0;
        this.isSpoilerRevealing = false;
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null && z2) {
            textLayout.detach();
            this.giftPremiumText = null;
            this.giftPremiumTextUncollapsed = false;
        }
        if (z2 || messageObject2.reactionsChanged) {
            messageObject2.reactionsChanged = false;
            TLRPC.Message message5 = messageObject2.messageOwner;
            boolean z3 = (message5 == null || (tL_messageReactions = message5.reactions) == null || !tL_messageReactions.reactions_as_tags) ? false : true;
            if (messageObject2.shouldDrawReactions()) {
                this.reactionsLayoutInBubble.setMessage(messageObject2, !messageObject2.shouldDrawReactionsInLayout(), z3, this.themeDelegate);
            } else {
                this.reactionsLayoutInBubble.setMessage(null, false, false, this.themeDelegate);
            }
        }
        int i3 = messageObject2.type;
        SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
        if (i3 == 32) {
            if (suggestBirthdayActionLayout == null) {
                this.birthdayLayout = new SuggestBirthdayActionLayout(this.currentAccount, this, this.themeDelegate);
                if (isCellAttachedToWindow()) {
                    this.birthdayLayout.attach();
                }
            }
            this.birthdayLayout.set(messageObject2);
        } else if (suggestBirthdayActionLayout != null) {
            suggestBirthdayActionLayout.detach();
            this.birthdayLayout = null;
        }
        if (this.starGiftLayout == null && (message = messageObject2.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGiftUnique)) {
            this.starGiftLayout = new StarGiftUniqueActionLayout(this.currentAccount, this, this.themeDelegate);
            if (isCellAttachedToWindow()) {
                this.starGiftLayout.attach();
            }
        }
        StarGiftUniqueActionLayout starGiftUniqueActionLayout = this.starGiftLayout;
        if (starGiftUniqueActionLayout != null) {
            starGiftUniqueActionLayout.set(messageObject2, !z2);
        }
        this.imageReceiver.setAutoRepeatCount(0);
        this.imageReceiver.clearDecorators();
        if (messageObject2.type != 22) {
            this.wallpaperPreviewDrawable = null;
        }
        if (messageObject2.actionDeleteGroupEventId != -1) {
            ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
            this.overriddenMaxWidth = Math.max(AndroidUtilities.dp(250.0f), HintView2.cutInFancyHalf(messageObject2.messageText, (TextPaint) getThemedPaint("paintChatActionText")));
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
            int i4 = messageObject2.type;
            if (i4 == 22) {
                if (messageObject2.strippedThumb == null) {
                    int size = messageObject2.photoThumbs.size();
                    for (int i5 = 0; i5 < size && !(messageObject2.photoThumbs.get(i5) instanceof TLRPC.TL_photoStrippedSize); i5++) {
                    }
                }
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = messageObject2.currentEvent;
                if (tL_channelAdminLogEvent != null) {
                    TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                        wallPaper = ((TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction).new_value;
                    } else {
                        TLRPC.Message message6 = messageObject2.messageOwner;
                        wallPaper = (message6 == null || (messageAction = message6.action) == null) ? null : messageAction.wallpaper;
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
                    } else if (wallPaper != null && (str5 = wallPaper.uploadingImage) != null) {
                        this.imageReceiver.setImage(ImageLocation.getForPath(str5), "150_150_wallpaper" + wallPaper.id + ChatBackgroundDrawable.hash(wallPaper.settings), null, null, ChatBackgroundDrawable.createThumb(wallPaper), 0L, null, wallPaper, 1);
                        this.wallpaperPreviewDrawable = null;
                    } else if (wallPaper != null) {
                        TLObject tLObject = messageObject2.photoThumbsObject;
                        if (tLObject instanceof TLRPC.Document) {
                            document4 = (TLRPC.Document) tLObject;
                        } else {
                            document4 = wallPaper.document;
                        }
                        this.imageReceiver.setImage(ImageLocation.getForDocument(document4), "150_150_wallpaper" + wallPaper.id + ChatBackgroundDrawable.hash(wallPaper.settings), null, null, ChatBackgroundDrawable.createThumb(wallPaper), 0L, null, wallPaper, 1);
                        this.wallpaperPreviewDrawable = null;
                    } else {
                        this.wallpaperPreviewDrawable = null;
                    }
                    this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
                    float uploadingInfoProgress = getUploadingInfoProgress(messageObject);
                    RadialProgress2 radialProgress2 = this.radialProgress;
                    if (uploadingInfoProgress == 1.0f) {
                        radialProgress2.setProgress(1.0f, !z2);
                        this.radialProgress.setIcon(4, !z2, !z2);
                    } else {
                        radialProgress2.setIcon(3, !z2, !z2);
                    }
                }
            } else if (i4 == 21) {
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
                this.imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setDelegate(null);
                TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) messageObject2.messageOwner.action;
                TLRPC.VideoSize closestVideoSizeWithSize2 = FileLoader.getClosestVideoSizeWithSize(tL_messageActionSuggestProfilePhoto.photo.video_sizes, 1000);
                ArrayList<TLRPC.VideoSize> arrayList2 = tL_messageActionSuggestProfilePhoto.photo.video_sizes;
                ImageLocation forPhoto = (arrayList2 == null || arrayList2.isEmpty()) ? null : ImageLocation.getForPhoto(closestVideoSizeWithSize2, tL_messageActionSuggestProfilePhoto.photo);
                TLRPC.Photo photo = messageObject2.messageOwner.action.photo;
                if (messageObject2.strippedThumb == null) {
                    int size2 = messageObject2.photoThumbs.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        photoSize3 = messageObject2.photoThumbs.get(i6);
                        if (photoSize3 instanceof TLRPC.TL_photoStrippedSize) {
                            break;
                        }
                    }
                    photoSize3 = null;
                    closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, 1000);
                    if (closestPhotoSizeWithSize2 == null) {
                        ImageLocation imageLocation = forPhoto;
                        ImageReceiver imageReceiver = this.imageReceiver;
                        if (closestVideoSizeWithSize2 != null) {
                            f = 1.0f;
                            imageReceiver.setImage(imageLocation, ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize3, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject, 0);
                            messageObject2 = messageObject;
                        } else {
                            f = 1.0f;
                            imageReceiver.setImage(ImageLocation.getForPhoto(closestPhotoSizeWithSize2, photo), "150_150", ImageLocation.getForObject(photoSize3, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 0);
                        }
                    } else {
                        f = 1.0f;
                    }
                    this.imageReceiver.setAllowStartLottieAnimation(false);
                    imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject2.messageOwner.local_id);
                    if (imageUpdater != null || imageUpdater.getCurrentImageProgress() == f) {
                        this.radialProgress.setProgress(f, !z2);
                        this.radialProgress.setIcon(4, !z2, !z2);
                    } else {
                        this.radialProgress.setIcon(3, !z2, !z2);
                    }
                } else {
                    photoSize3 = null;
                    closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, 1000);
                    if (closestPhotoSizeWithSize2 == null) {
                    }
                    this.imageReceiver.setAllowStartLottieAnimation(false);
                    imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject2.messageOwner.local_id);
                    if (imageUpdater != null) {
                        this.radialProgress.setProgress(f, !z2);
                        this.radialProgress.setIcon(4, !z2, !z2);
                    }
                }
            } else if (i4 == 31 || i4 == 33 || i4 == 30 || i4 == 18 || i4 == 25 || i4 == 35) {
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
                    document = null;
                } else if (messageAction2 instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
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
                    document = giftDocument;
                } else if (messageAction2 instanceof TLRPC.TL_messageActionStarGift) {
                    TL_stars.StarGift starGift3 = ((TLRPC.TL_messageActionStarGift) messageAction2).gift;
                    document = starGift3 != null ? starGift3.sticker : null;
                    obj = messageObject2;
                    str2 = null;
                    stickerSetByName = null;
                    source = this.botInlineButtons;
                    if (source != null) {
                        int rowsCount = source.getRowsCount();
                        for (int i7 = 0; i7 < rowsCount; i7++) {
                            int columnsCount = this.botInlineButtons.getColumnsCount(i7);
                            int i8 = 0;
                            while (i8 < columnsCount) {
                                BotInlineKeyboard.Button button = this.botInlineButtons.getButton(i7, i8);
                                BotButton botButton = new BotButton(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda3
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
                                botButton.height = AndroidUtilities.dp(40.0f);
                                int i9 = botButton.positionFlags | 8;
                                botButton.positionFlags = i9;
                                int flag = BitwiseUtils.setFlag(i9, 1, i8 == 0);
                                botButton.positionFlags = flag;
                                botButton.positionFlags = BitwiseUtils.setFlag(flag, 2, i8 == 1);
                                botButton.title = new Text(button.getText(), (TextPaint) getThemedPaint("paintChatBotButton"));
                                this.botButtons.add(botButton);
                                i8++;
                            }
                        }
                    }
                    this.forceWasUnread = messageObject2.wasUnread;
                    this.giftSticker = document;
                    if (document != null) {
                        this.imageReceiver.setAllowStartLottieAnimation(true);
                        int i10 = messageObject2.type;
                        if (i10 != 31 && i10 != 37 && i10 != 33) {
                            this.imageReceiver.setDelegate(this.giftStickerDelegate);
                        }
                        this.giftEffectAnimation = null;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= document.video_thumbs.size()) {
                                break;
                            }
                            if ("f".equals(document.video_thumbs.get(i11).type)) {
                                this.giftEffectAnimation = document.video_thumbs.get(i11);
                                break;
                            }
                            i11++;
                        }
                        if (z2 || messageObject2.type != 18) {
                            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f);
                            this.imageReceiver.setAutoRepeat(0);
                            this.imageReceiver.setImage(ImageLocation.getForDocument(document), String.format(Locale.US, "%d_%d_nr_messageId=%d", 160, 160, Integer.valueOf(messageObject2.stableId)), svgThumb, "tgs", obj, 1);
                        }
                    } else if (str2 != null) {
                        MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(str2, false, stickerSetByName == null);
                    }
                } else if ((messageAction2 instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction2).refunded) {
                    TL_stars.StarGift starGift4 = ((TLRPC.TL_messageActionStarGiftUnique) messageAction2).gift;
                    if (starGift4 != null) {
                        document = starGift4.getDocument();
                    }
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
                    boolean z4 = messageAction2 instanceof TLRPC.TL_messageActionGiftTon;
                    int i12 = this.currentAccount;
                    if (z4) {
                        str = UserConfig.getInstance(i12).premiumTonStickerPack;
                        if (str == null) {
                            MediaDataController.getInstance(this.currentAccount).checkTonGiftStickers();
                            return;
                        }
                    } else {
                        str = UserConfig.getInstance(i12).premiumGiftsStickerPack;
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
                        int i13 = messageAction3.months;
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
                            int i14 = 0;
                            while (true) {
                                if (i14 >= stickerSetByName.packs.size()) {
                                    break;
                                }
                                TLRPC.TL_stickerPack tL_stickerPack = stickerSetByName.packs.get(i14);
                                if (TextUtils.equals(tL_stickerPack.emoticon, tonGiftEmoji) && !tL_stickerPack.documents.isEmpty()) {
                                    long jLongValue = tL_stickerPack.documents.get(0).longValue();
                                    for (int i15 = 0; i15 < stickerSetByName.documents.size(); i15++) {
                                        document3 = stickerSetByName.documents.get(i15);
                                        if (document3 != null && document3.id == jLongValue) {
                                            break;
                                        }
                                    }
                                } else {
                                    i14++;
                                }
                            }
                            document3 = null;
                            str3 = str;
                            document2 = document3;
                        } else {
                            String str7 = monthsToEmoticon.get(Integer.valueOf(i13));
                            ArrayList<TLRPC.TL_stickerPack> arrayList3 = stickerSetByName.packs;
                            int size3 = arrayList3.size();
                            int i16 = 0;
                            document2 = null;
                            while (true) {
                                if (i16 >= size3) {
                                    str3 = str;
                                    break;
                                }
                                TLRPC.TL_stickerPack tL_stickerPack2 = arrayList3.get(i16);
                                i16++;
                                TLRPC.TL_stickerPack tL_stickerPack3 = tL_stickerPack2;
                                if (Objects.equals(tL_stickerPack3.emoticon, str7)) {
                                    ArrayList<Long> arrayList4 = tL_stickerPack3.documents;
                                    int size4 = arrayList4.size();
                                    int i17 = i2;
                                    while (i17 < size4) {
                                        Long l = arrayList4.get(i17);
                                        i17++;
                                        long jLongValue2 = l.longValue();
                                        ArrayList<TLRPC.Document> arrayList5 = stickerSetByName.documents;
                                        int size5 = arrayList5.size();
                                        while (true) {
                                            if (i2 >= size5) {
                                                str3 = str;
                                                str4 = str7;
                                                arrayList = arrayList4;
                                                break;
                                            }
                                            TLRPC.Document document5 = arrayList5.get(i2);
                                            i2++;
                                            str3 = str;
                                            TLRPC.Document document6 = document5;
                                            str4 = str7;
                                            arrayList = arrayList4;
                                            if (document6.id == jLongValue2) {
                                                document2 = document6;
                                                break;
                                            } else {
                                                str7 = str4;
                                                str = str3;
                                                arrayList4 = arrayList;
                                            }
                                        }
                                        if (document2 != null) {
                                            break;
                                        }
                                        str7 = str4;
                                        str = str3;
                                        arrayList4 = arrayList;
                                        i2 = 0;
                                    }
                                    str3 = str;
                                    str4 = str7;
                                    if (document2 == null) {
                                        break;
                                    }
                                    str7 = str4;
                                    str = str3;
                                    i2 = 0;
                                } else {
                                    str3 = str;
                                    str4 = str7;
                                    if (document2 == null) {
                                    }
                                }
                            }
                        }
                        if (document2 != null || stickerSetByName.documents.isEmpty()) {
                            obj = stickerSetByName;
                            document = document2;
                        } else {
                            document = stickerSetByName.documents.get(0);
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
                stickerSetByName = null;
                obj = null;
                source = this.botInlineButtons;
                if (source != null) {
                }
                this.forceWasUnread = messageObject2.wasUnread;
                this.giftSticker = document;
                if (document != null) {
                }
            } else if (i4 == 37) {
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(((TLRPC.TL_messageActionChangeCommunity) messageObject2.messageOwner.action).community_id));
                this.imageReceiver.setAllowStartLottieAnimation(true);
                this.imageReceiver.setDelegate(null);
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(52.0f, false, AvatarCornerType.COMMUNITY));
                this.imageReceiver.setAutoRepeatCount(1);
                this.avatarDrawable.setInfo(chat);
                this.imageReceiver.setForUserOrChat(chat, new CommunityAvatarDrawable(getContext(), AndroidUtilities.dp(14.0f)), chat);
            } else {
                ImageReceiver imageReceiver2 = this.imageReceiver;
                if (i4 == 11) {
                    imageReceiver2.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(AndroidUtilities.roundMessageSize, true));
                    this.imageReceiver.setAutoRepeatCount(1);
                    this.avatarDrawable.setInfo(messageObject2.getDialogId(), null, null);
                    if (messageObject2.messageOwner.action instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                        this.imageReceiver.setImage(null, null, this.avatarDrawable, null, messageObject2, 0);
                    } else if (messageObject2.strippedThumb == null) {
                        int size6 = messageObject2.photoThumbs.size();
                        for (int i18 = 0; i18 < size6; i18++) {
                            photoSize = messageObject2.photoThumbs.get(i18);
                            if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                                break;
                            }
                        }
                        photoSize = null;
                        closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject2.photoThumbs, 640);
                        if (closestPhotoSizeWithSize == null) {
                            TLRPC.Photo photo2 = messageObject2.messageOwner.action.photo;
                            if (!photo2.video_sizes.isEmpty() && SharedConfig.isAutoplayGifs()) {
                                closestVideoSizeWithSize = FileLoader.getClosestVideoSizeWithSize(photo2.video_sizes, 1000);
                                if (!messageObject2.mediaExists && !DownloadController.getInstance(this.currentAccount).canDownloadMedia(4, closestVideoSizeWithSize.size)) {
                                    this.currentVideoLocation = ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2);
                                    DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(FileLoader.getAttachFileName(closestVideoSizeWithSize), messageObject2, this);
                                    photoSize2 = closestPhotoSizeWithSize;
                                    closestVideoSizeWithSize = null;
                                    ImageReceiver imageReceiver3 = this.imageReceiver;
                                    if (closestVideoSizeWithSize != null) {
                                    }
                                } else {
                                    photoSize2 = closestPhotoSizeWithSize;
                                    ImageReceiver imageReceiver32 = this.imageReceiver;
                                    if (closestVideoSizeWithSize != null) {
                                    }
                                }
                            } else {
                                photoSize2 = closestPhotoSizeWithSize;
                                closestVideoSizeWithSize = null;
                                ImageReceiver imageReceiver322 = this.imageReceiver;
                                if (closestVideoSizeWithSize != null) {
                                    imageReceiver322.setImage(ImageLocation.getForPhoto(closestVideoSizeWithSize, photo2), ImageLoader.AUTOPLAY_FILTER, ImageLocation.getForObject(photoSize, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 1);
                                } else {
                                    imageReceiver322.setImage(ImageLocation.getForObject(photoSize2, messageObject2.photoThumbsObject), "150_150", ImageLocation.getForObject(photoSize, messageObject2.photoThumbsObject), "50_50_b", messageObject2.strippedThumb, 0L, null, messageObject2, 1);
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
                    imageReceiver2.setAllowStartLottieAnimation(true);
                    this.imageReceiver.setDelegate(null);
                    this.imageReceiver.setImageBitmap((Bitmap) null);
                }
            }
        }
        if (this.firstInChat && this.isAllChats && this.isSideMenued && (this.isForum || this.isMonoForum || this.isBotForum)) {
            this.topicSeparatorTopPadding = AndroidUtilities.dp(33.0f);
            if (this.topicSeparator == null) {
                TopicSeparator topicSeparator = new TopicSeparator(this.currentAccount, this, this.themeDelegate, true);
                this.topicSeparator = topicSeparator;
                topicSeparator.setOnClickListener(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda4
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
        int i19 = this.topicSeparatorTopPadding;
        if (paddingTop != i19) {
            setPadding(i, i19, i, i);
        }
        this.rippleView.setVisibility((!isButtonLayout(messageObject) || hasStarGiftLayout()) ? 8 : i);
        ForumUtilities.applyTopicToMessage(messageObject2);
        requestLayout();
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
            FileLog.m1040e(e);
            return 1.0f;
        }
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public MessageObject getMessageObject() {
        return this.currentMessageObject;
    }

    public ReactionsLayoutInBubble getReactionsLayout() {
        return this.reactionsLayoutInBubble;
    }

    @Override // org.telegram.ui.Cells.IMessageCell
    public void didPressReactionFromLayout(TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        if (chatActionCellDelegate != null) {
            chatActionCellDelegate.didPressReaction(this, reactionCount, z, f, f2);
        }
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

    @Override // org.telegram.ui.Cells.BaseCell
    public boolean onLongPress() {
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.rippleView;
        RectF rectF = this.giftButtonRect;
        view.layout((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        WalletActionLayout walletActionLayout = this.walletActionLayout;
        View diamondSurface = walletActionLayout == null ? null : walletActionLayout.getDiamondSurface();
        if (diamondSurface != null) {
            diamondSurface.layout(0, 0, AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
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
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.walletUpdate);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        this.avatarStoryParams.onDetachFromWindow();
        this.transitionParams.onDetach();
        StarGiftUniqueActionLayout starGiftUniqueActionLayout = this.starGiftLayout;
        if (starGiftUniqueActionLayout != null) {
            starGiftUniqueActionLayout.detach();
        }
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
    public void onAttachedToWindow() {
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
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.walletUpdate);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 21) {
            setMessageObject(messageObject, true);
        }
        StarGiftUniqueActionLayout starGiftUniqueActionLayout = this.starGiftLayout;
        if (starGiftUniqueActionLayout != null) {
            starGiftUniqueActionLayout.attach();
        }
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
            this.starParticlesDrawable.particles.get(i).lifeTime += System.currentTimeMillis() - this.starParticlesDrawable.pausedTime;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:234:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x05d1  */
    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
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
        List<SpoilerEffect> list;
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
        if (hasStarGiftLayout() && this.starGiftLayout.onTouchEvent(this.starGiftLayoutX, this.starGiftLayoutY, motionEvent)) {
            return true;
        }
        if (hasWalletActionLayout() && this.walletActionLayout.onTouchEvent(this.walletActionLayoutX + (this.sideMenuWidth / 2.0f), this.walletActionLayoutY + getPaddingTop(), motionEvent)) {
            if (this.walletActionLayout.isDiamondDragging()) {
                cancelCheckLongPress();
                return true;
            }
            if (motionEvent.getAction() == 0) {
                this.walletTouchDownX = motionEvent.getX();
                this.walletTouchDownY = motionEvent.getY();
                startCheckLongPress();
            } else if (motionEvent.getAction() == 2) {
                float scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
                if (Math.abs(motionEvent.getX() - this.walletTouchDownX) > scaledTouchSlop || Math.abs(motionEvent.getY() - this.walletTouchDownY) > scaledTouchSlop) {
                    cancelCheckLongPress();
                }
            } else {
                cancelCheckLongPress();
            }
            return true;
        }
        if (this.reactionsLayoutInBubble.checkTouchEvent(motionEvent)) {
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
                if (textLayout3 != null && this.giftPremiumTextCollapsed) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    float f = textLayout3.f1069x;
                    rectF.set(f, textLayout3.f1070y, textLayout3.layout.getWidth() + f, this.giftPremiumText.f1070y + r15.layout.getHeight());
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
                    if (TlUtils.isInstance((messageObject2 == null || (message2 = messageObject2.messageOwner) == null) ? null : message2.action, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
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
            } else if (this.textPressed) {
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
                                    ((RecyclerListView) getParent()).smoothScrollBy(0, height + AndroidUtilities.dp(24.0f));
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
                        float f2 = textLayout4.f1069x;
                        rectF2.set(f2, textLayout4.f1070y, textLayout4.layout.getWidth() + f2, this.giftPremiumText.f1070y + r11.layout.getHeight());
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
                        if (i2 == 37) {
                            playSoundEffect(0);
                            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                            if (safeLastFragment != null) {
                                new CommunitySheet(safeLastFragment, ((TLRPC.TL_messageActionChangeCommunity) messageObject.messageOwner.action).community_id).show();
                            }
                        } else if (i2 == 31) {
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
                                TLRPC.MessageAction messageAction = message3.action;
                                if ((messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) && ((TLRPC.TL_messageActionSuggestedPostApproval) messageAction).balance_too_low) {
                                    playSoundEffect(0);
                                    openStarsNeedSheet();
                                } else if (MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id) == null) {
                                    boolean z3 = this.buttonClickableAsImage;
                                    ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
                                    if (z3) {
                                        chatActionCellDelegate2.didClickImage(this);
                                    } else {
                                        chatActionCellDelegate2.didClickButton(this);
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
                        ChatActionCellDelegate chatActionCellDelegate3 = this.delegate;
                        if (chatActionCellDelegate3 != null) {
                            chatActionCellDelegate3.forceUpdate(this, false);
                            if (getParent() instanceof RecyclerListView) {
                                ((RecyclerListView) getParent()).smoothScrollBy(0, height2 + AndroidUtilities.dp(16.0f));
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
        if (!zCheckBotButtonMotionEvent && (motionEvent.getAction() == 0 || ((this.pressedLink != null || this.spoilerPressed != null) && motionEvent.getAction() == 1))) {
            TextLayout textLayout5 = this.giftPremiumText;
            if (textLayout5 != null && (list = textLayout5.spoilers) != null && !list.isEmpty() && !this.isSpoilerRevealing) {
                Iterator<SpoilerEffect> it = this.giftPremiumText.spoilers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    SpoilerEffect next = it.next();
                    Rect bounds = next.getBounds();
                    TextLayout textLayout6 = this.giftPremiumText;
                    if (bounds.contains((int) (x - textLayout6.f1069x), (int) (y - textLayout6.f1070y))) {
                        this.pressedLink = null;
                        if (motionEvent.getAction() == 0) {
                            this.spoilerPressed = next;
                        } else {
                            SpoilerEffect spoilerEffect = this.spoilerPressed;
                            if (next == spoilerEffect) {
                                this.isSpoilerRevealing = true;
                                spoilerEffect.setOnRippleEndCallback(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onTouchEvent$3();
                                    }
                                });
                                float fSqrt = (float) Math.sqrt(Math.pow(this.giftPremiumText.layout.getWidth(), 2.0d) + Math.pow(this.giftPremiumText.layout.getHeight(), 2.0d));
                                SpoilerEffect spoilerEffect2 = this.spoilerPressed;
                                TextLayout textLayout7 = this.giftPremiumText;
                                spoilerEffect2.startRipple((int) (x - textLayout7.f1069x), (int) (y - textLayout7.f1070y), fSqrt);
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
                    if (y >= i4 && x <= r7 + this.textWidth && y <= this.textHeight + i4) {
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
        post(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda8
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
        List<SpoilerEffect> list = this.giftPremiumText.spoilers;
        if (list != null) {
            list.clear();
        }
        invalidate();
    }

    private void openPremiumGiftChannel() {
        if (this.delegate != null) {
            final TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda11
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda12
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
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.fire_on, LocaleController.getString(C2807R.string.UniqueGiftNotFoundBurned)).show();
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
        int iDp = i - AndroidUtilities.dp(30.0f);
        if (this.isSideMenued) {
            iDp -= AndroidUtilities.dp(64.0f);
        }
        if (isMessageActionSuggestedPostApproval()) {
            iDp = Math.min(iDp - AndroidUtilities.dp(this.isSideMenued ? 28.0f : 82.0f), AndroidUtilities.dp(272.0f));
        }
        if (iDp < 0) {
            return;
        }
        int i3 = this.overriddenMaxWidth;
        if (i3 > 0) {
            iDp = Math.min(i3, iDp);
        }
        int i4 = iDp;
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
                this.titleLayout = new StaticLayout(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.SuggestionAgreementReached)), textPaint2.getFontMetricsInt(), false, null, 0, 1.0f, 0), textPaint2, i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
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
            this.titleHeight = height + AndroidUtilities.dp(12.0f);
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
                        FileLog.m1040e(e);
                        return;
                    }
                }
            } catch (Exception e2) {
                FileLog.m1040e(e2);
            }
        }
        this.textX = (i - this.textWidth) / 2;
        int iDp2 = AndroidUtilities.dp(7.0f);
        this.textY = iDp2;
        if (this.titleLayout != null) {
            this.textY = iDp2 + this.titleHeight + AndroidUtilities.dp(11.0f);
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
    public void onMeasure(int i, int i2) {
        int iDp;
        float f;
        float f2;
        float fDp;
        float f3;
        float fDp2;
        TLRPC.Message message;
        int i3;
        int i4;
        int iDp2;
        int height;
        int i5;
        WalletActionLayout walletActionLayout = this.walletActionLayout;
        View diamondSurface = walletActionLayout == null ? null : walletActionLayout.getDiamondSurface();
        if (diamondSurface != null) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(42.0f), TLObject.FLAG_30);
            diamondSurface.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null && this.customText == null) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), this.topicSeparatorTopPadding + this.textHeight + AndroidUtilities.dp(14.0f));
            return;
        }
        if (isButtonLayout(messageObject)) {
            this.giftRectSize = Math.min((int) (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() * 0.6f : (AndroidUtilities.displaySize.x * 0.62f) - AndroidUtilities.dp(34.0f)), ((AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(64.0f));
            if ((!AndroidUtilities.isTablet() && ((i5 = messageObject.type) == 18 || i5 == 30 || isMessageActionSuggestedPostApproval())) || messageObject.type == 35) {
                this.giftRectSize = (int) (this.giftRectSize * 1.2f);
            }
            this.stickerSize = this.giftRectSize - AndroidUtilities.dp(106.0f);
            if (messageObject.type == 31) {
                this.giftRectSize = Math.min(this.giftRectSize, AndroidUtilities.dp(192.0f));
                this.stickerSize = AndroidUtilities.dp(78.0f);
            }
            if (messageObject.type == 33) {
                this.giftRectSize = Math.min(this.giftRectSize, AndroidUtilities.dp(220.0f));
                this.stickerSize = AndroidUtilities.dp(78.0f);
            }
            if (messageObject.type == 37) {
                this.stickerSize = AndroidUtilities.dp(52.0f);
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(52.0f, false, AvatarCornerType.COMMUNITY));
            } else {
                boolean zIsNewStyleButtonLayout = isNewStyleButtonLayout();
                ImageReceiver imageReceiver = this.imageReceiver;
                if (zIsNewStyleButtonLayout) {
                    imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(this.stickerSize * 0.7f, true));
                } else {
                    imageReceiver.setRoundRadius(0);
                }
            }
        }
        int iMax = Math.max(AndroidUtilities.dp(30.0f), View.MeasureSpec.getSize(i));
        if (this.previousWidth != iMax) {
            this.wasLayout = true;
            this.previousWidth = iMax;
            buildLayout();
        }
        if (messageObject == null) {
            iDp = 0;
        } else {
            if (messageObject.type == 11) {
                iDp2 = AndroidUtilities.roundMessageSize;
                height = AndroidUtilities.dp(10.0f);
            } else if (isButtonLayout(messageObject)) {
                iDp2 = this.giftRectSize;
                height = AndroidUtilities.dp(12.0f);
            } else {
                if (hasWalletActionLayout()) {
                    iDp2 = AndroidUtilities.dp(8.0f);
                    height = this.walletActionLayout.getHeight();
                }
                iDp = 0;
            }
            iDp = iDp2 + height;
        }
        if (hasStarGiftLayout()) {
            iDp = (this.starGiftLayout.repost ? 0 : this.textY + this.textHeight + AndroidUtilities.dp(16.0f)) + ((int) this.starGiftLayout.getHeight()) + AndroidUtilities.dp(8.0f);
            ReactionsLayoutInBubble reactionsLayoutInBubble = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble.isEmpty) {
                reactionsLayoutInBubble.totalHeight = reactionsLayoutInBubble.height + AndroidUtilities.dp(8.0f);
                i4 = this.reactionsLayoutInBubble.totalHeight;
                iDp += i4;
            }
            f = 14.0f;
            f3 = 8.0f;
        } else {
            SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
            if (suggestBirthdayActionLayout != null) {
                iDp = suggestBirthdayActionLayout.height() + AndroidUtilities.dp(12.0f);
                ReactionsLayoutInBubble reactionsLayoutInBubble2 = this.reactionsLayoutInBubble;
                if (!reactionsLayoutInBubble2.isEmpty) {
                    reactionsLayoutInBubble2.totalHeight = reactionsLayoutInBubble2.height + AndroidUtilities.dp(8.0f);
                    i4 = this.reactionsLayoutInBubble.totalHeight;
                    iDp += i4;
                }
            } else if (isButtonLayout(messageObject)) {
                boolean zIsGiftChannel = isGiftChannel(messageObject);
                f = 14.0f;
                int imageSize = getImageSize(messageObject);
                boolean zIsNewStyleButtonLayout2 = isNewStyleButtonLayout();
                int i6 = this.textY;
                if (zIsNewStyleButtonLayout2) {
                    f2 = 10.0f;
                    int iDp3 = i6 + this.textHeight + AndroidUtilities.dp(4.0f);
                    int iDp4 = AndroidUtilities.dp(16.0f);
                    if (imageSize > 0) {
                        iDp4 = (iDp4 * 2) + imageSize;
                    }
                    int i7 = iDp3 + iDp4;
                    TextLayout textLayout = this.giftPremiumText;
                    fDp = i7 + (textLayout == null ? 0 : textLayout.layout.getHeight() + AndroidUtilities.dp(4.0f));
                } else {
                    f2 = 10.0f;
                    fDp = i6 + this.textHeight + (this.giftRectSize * 0.075f) + imageSize + AndroidUtilities.dp(4.0f) + (this.giftPremiumText == null ? 0 : r12.layout.getHeight() + AndroidUtilities.dp(4.0f));
                }
                this.giftPremiumAdditionalHeight = 0;
                if (this.giftPremiumTitleLayout != null) {
                    float height2 = fDp + r12.getHeight();
                    if (this.giftPremiumTitleLayout.getLineCount() > 1) {
                        f3 = 8.0f;
                        this.giftPremiumAdditionalHeight += this.giftPremiumTitleLayout.getHeight() - this.giftPremiumTitleLayout.getLineTop(1);
                    } else {
                        f3 = 8.0f;
                    }
                    fDp2 = height2 + AndroidUtilities.dp(zIsGiftChannel ? 6.0f : 0.0f);
                    if (this.giftPremiumSubtitleLayout != null) {
                        fDp2 += r5.getHeight() + AndroidUtilities.dp(9.0f);
                    }
                    if (this.giftPremiumReleasedText != null) {
                        fDp2 += AndroidUtilities.dp(24.0f);
                    }
                } else {
                    f3 = 8.0f;
                    fDp2 = fDp - AndroidUtilities.dp(12.0f);
                    this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(30.0f);
                }
                TextLayout textLayout2 = this.giftPremiumText;
                int height3 = textLayout2 == null ? 0 : textLayout2.layout.getHeight();
                if (this.giftPremiumText == null) {
                    this.giftPremiumAdditionalHeight = 0;
                } else if (this.giftPremiumSubtitleLayout != null) {
                    this.giftPremiumAdditionalHeight += height3 + AndroidUtilities.dp(f2);
                } else {
                    MessageObject messageObject2 = this.currentMessageObject;
                    if (messageObject2.type == 18 || messageObject2.isStarGiftAction()) {
                        this.giftPremiumAdditionalHeight += height3 - AndroidUtilities.dp(this.giftPremiumButtonLayout == null ? 0.0f : f2);
                    } else if (this.currentMessageObject.type == 30) {
                        this.giftPremiumAdditionalHeight += height3 - AndroidUtilities.dp(20.0f);
                    } else if (this.giftPremiumTextCollapsed) {
                        this.giftPremiumAdditionalHeight += height3;
                    } else if (this.giftPremiumText.layout.getLineCount() > 2) {
                        this.giftPremiumAdditionalHeight += ((this.giftPremiumText.layout.getLineBottom(0) - this.giftPremiumText.layout.getLineTop(0)) * this.giftPremiumText.layout.getLineCount()) - 2;
                    }
                }
                if (this.giftPremiumReleasedText != null) {
                    this.giftPremiumAdditionalHeight += AndroidUtilities.dp(24.0f);
                }
                int iDp5 = this.giftPremiumAdditionalHeight - AndroidUtilities.dp(zIsGiftChannel ? 14.0f : 0.0f);
                this.giftPremiumAdditionalHeight = iDp5;
                iDp += iDp5;
                int iDp6 = this.textHeight + iDp + AndroidUtilities.dp(14.0f);
                StaticLayout staticLayout = this.giftPremiumButtonLayout;
                if (staticLayout != null) {
                    float height4 = fDp2 + ((((iDp6 - fDp2) - (staticLayout != null ? staticLayout.getHeight() : 0)) - AndroidUtilities.dp(f3)) / 2.0f);
                    if (this.currentMessageObject.isStarGiftAction()) {
                        height4 += AndroidUtilities.dp(4.0f);
                    }
                    float f4 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                    this.giftButtonRect.set(f4 - AndroidUtilities.dp(18.0f), height4 - AndroidUtilities.dp(f3), f4 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), height4 + (this.giftPremiumButtonLayout != null ? r15.getHeight() : 0) + AndroidUtilities.dp(f3));
                } else {
                    iDp -= AndroidUtilities.dp(40.0f);
                    this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(40.0f);
                    MessageObject messageObject3 = this.currentMessageObject;
                    if (messageObject3 != null && (message = messageObject3.messageOwner) != null && (message.action instanceof TLRPC.TL_messageActionStarGift)) {
                        iDp -= AndroidUtilities.dp(f3);
                        this.giftPremiumAdditionalHeight -= AndroidUtilities.dp(f3);
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
                    int iDp7 = this.textY + this.textHeight + AndroidUtilities.dp(4.0f);
                    this.backgroundRectHeight = 0;
                    int iDp8 = AndroidUtilities.dp(16.0f);
                    if (imageSize > 0) {
                        iDp8 = (iDp8 * 2) + imageSize;
                    }
                    this.backgroundRectHeight = iDp8;
                    StaticLayout staticLayout2 = this.giftPremiumSubtitleLayout;
                    if (staticLayout2 != null) {
                        this.backgroundRectHeight = iDp8 + staticLayout2.getHeight() + AndroidUtilities.dp(f2);
                    }
                    if (this.giftPremiumReleasedText != null) {
                        this.backgroundRectHeight += AndroidUtilities.dp(15.0f);
                    }
                    StaticLayout staticLayout3 = this.giftPremiumTitleLayout;
                    if (staticLayout3 != null) {
                        this.backgroundRectHeight += staticLayout3.getHeight() + AndroidUtilities.dp(4.0f);
                    }
                    int i8 = this.backgroundRectHeight;
                    TextLayout textLayout3 = this.giftPremiumText;
                    int height5 = i8 + (textLayout3 != null ? textLayout3.layout.getHeight() : 0);
                    this.backgroundRectHeight = height5;
                    float f5 = (this.previousWidth - this.giftPremiumButtonWidth) / 2.0f;
                    if (this.giftPremiumButtonLayout != null) {
                        this.backgroundButtonTop = height5 + iDp7 + AndroidUtilities.dp(7.0f);
                        this.giftButtonRect.set(f5 - AndroidUtilities.dp(18.0f), this.backgroundButtonTop, f5 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), this.backgroundButtonTop + this.giftPremiumButtonLayout.getHeight() + (AndroidUtilities.dp(f3) * 2));
                        this.backgroundRectHeight = (int) (this.backgroundRectHeight + AndroidUtilities.dp(4.0f) + this.giftButtonRect.height());
                    } else if (!isMessageActionSuggestedPostApproval() && (messageObject == null || ((i3 = messageObject.type) != 34 && i3 != 33 && i3 != 35))) {
                        this.giftButtonRect.set(f5 - AndroidUtilities.dp(18.0f), this.backgroundButtonTop, f5 + this.giftPremiumButtonWidth + AndroidUtilities.dp(18.0f), this.backgroundButtonTop + AndroidUtilities.dp(17.0f) + (AndroidUtilities.dp(f3) * 2));
                        this.backgroundRectHeight += AndroidUtilities.dp(17.0f);
                    }
                    int iDp9 = this.backgroundRectHeight + AndroidUtilities.dp(15.0f);
                    this.backgroundRectHeight = iDp9;
                    int iDp10 = iDp7 + iDp9 + AndroidUtilities.dp(6.0f);
                    ReactionsLayoutInBubble reactionsLayoutInBubble3 = this.reactionsLayoutInBubble;
                    if (!reactionsLayoutInBubble3.isEmpty) {
                        reactionsLayoutInBubble3.totalHeight = reactionsLayoutInBubble3.height + AndroidUtilities.dp(f3);
                        iDp10 += this.reactionsLayoutInBubble.totalHeight;
                    }
                    iDp = iDp10;
                    if (this.botInlineButtons != null) {
                        iDp += AndroidUtilities.dp(44.0f);
                    }
                }
                this.giftButtonRect.inset(AndroidUtilities.dp(5.0f), AndroidUtilities.dp(1.0f));
            }
            f = 14.0f;
            f3 = 8.0f;
        }
        if (this.currentMessageObject != null) {
            ReactionsLayoutInBubble reactionsLayoutInBubble4 = this.reactionsLayoutInBubble;
            if (!reactionsLayoutInBubble4.isEmpty) {
                reactionsLayoutInBubble4.totalHeight = reactionsLayoutInBubble4.height + AndroidUtilities.dp(f3);
                iDp += this.reactionsLayoutInBubble.totalHeight;
            }
        }
        if (isMessageActionSuggestedPostApproval()) {
            iDp += this.titleHeight + AndroidUtilities.dp(24.0f);
        }
        if (messageObject != null && isNewStyleButtonLayout()) {
            setMeasuredDimension(iMax, this.topicSeparatorTopPadding + iDp);
        } else {
            setMeasuredDimension(iMax, this.topicSeparatorTopPadding + this.textHeight + iDp + AndroidUtilities.dp(f));
        }
        this.reactionsLayoutInBubble.f1159y = (getMeasuredHeight() - getPaddingTop()) - this.reactionsLayoutInBubble.totalHeight;
    }

    public boolean hasStarGiftLayout() {
        StarGiftUniqueActionLayout starGiftUniqueActionLayout = this.starGiftLayout;
        return starGiftUniqueActionLayout != null && starGiftUniqueActionLayout.has();
    }

    private boolean isNewStyleButtonLayout() {
        MessageObject messageObject;
        int i;
        if (hasStarGiftLayout() || this.birthdayLayout != null || (i = (messageObject = this.currentMessageObject).type) == 31 || i == 37 || i == 33 || i == 35 || i == 34 || i == 21 || i == 22 || messageObject.isStoryMention()) {
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

    private boolean hasWalletActionLayout() {
        TLRPC.Message message;
        MessageObject messageObject = this.currentMessageObject;
        return (messageObject == null || (message = messageObject.messageOwner) == null || !(message.action instanceof TLRPC.TL_messageActionGramTransfer)) ? false : true;
    }

    public boolean playWalletReceiveAnimation(float f, float f2, Runnable runnable) {
        if (hasWalletActionLayout() && !this.currentMessageObject.isOutOwner() && !this.currentMessageObject.messageOwner.premiumEffectWasPlayed) {
            float y = getY() + getPaddingTop() + getWalletActionTop();
            if (y < f || y + AndroidUtilities.dp(140.0f) > f2 || !this.walletActionLayout.playReceiveAnimation(runnable)) {
                return false;
            }
            this.currentMessageObject.messageOwner.premiumEffectWasPlayed = true;
            MessagesStorage.getInstance(this.currentAccount).updateMessageCustomParams(this.currentMessageObject.getDialogId(), this.currentMessageObject.messageOwner);
            return true;
        }
        return false;
    }

    public void animateWalletActionHighlight() {
        if (hasWalletActionLayout()) {
            this.walletActionLayout.animateHighlight();
        }
    }

    private float getWalletActionTop() {
        return this.textY + this.textHeight + AndroidUtilities.dp(11.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openGramTransaction() {
        MessageObject messageObject;
        if (!hasWalletActionLayout() || (messageObject = this.currentMessageObject) == null || messageObject.messageOwner == null) {
            return;
        }
        GramWallet gramWallet = GramWallet.getInstance(this.currentAccount);
        TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = (TLRPC.TL_messageActionGramTransfer) messageObject.messageOwner.action;
        boolean z = messageObject.isOutOwner() && messageObject.messageOwner.send_state == 2;
        boolean z2 = messageObject.isOutOwner() && messageObject.messageOwner.send_state == 1;
        playSoundEffect(0);
        TL_wallet.walletTransaction wallettransactionFindTransaction = gramWallet.findTransaction(messageObject);
        if (wallettransactionFindTransaction == null) {
            if ((z2 || TextUtils.isEmpty(tL_messageActionGramTransfer.transaction_id)) && !tL_messageActionGramTransfer.comment_encrypted_preparing) {
                return;
            }
            wallettransactionFindTransaction = new TL_wallet.walletTransaction();
            wallettransactionFindTransaction.id = tL_messageActionGramTransfer.transaction_id;
            wallettransactionFindTransaction.failed = z;
            wallettransactionFindTransaction.pending = z2;
            wallettransactionFindTransaction.incoming = !messageObject.isOutOwner();
            wallettransactionFindTransaction.comment = tL_messageActionGramTransfer.comment;
            wallettransactionFindTransaction.comment_encrypted = tL_messageActionGramTransfer.comment_encrypted;
            wallettransactionFindTransaction.comment_encrypted_preparing = tL_messageActionGramTransfer.comment_encrypted_preparing;
            wallettransactionFindTransaction.amount = tL_messageActionGramTransfer.amount;
            TL_wallet.walletTransactionPeerUser wallettransactionpeeruser = new TL_wallet.walletTransactionPeerUser();
            wallettransactionFindTransaction.peer = wallettransactionpeeruser;
            wallettransactionpeeruser.address = tL_messageActionGramTransfer.peer_address;
            wallettransactionpeeruser.user_id = messageObject.getDialogId();
            wallettransactionFindTransaction.preview = true;
            wallettransactionFindTransaction.date = messageObject.messageOwner.date;
        }
        final TL_wallet.walletTransaction wallettransaction = wallettransactionFindTransaction;
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openGramTransaction$6();
            }
        };
        if (!this.currentMessageObject.isOutOwner() && MessagesController.getInstance(this.currentAccount).pendingSuggestions.contains("WALLET_FIRST_INCOMING_TRANSFER")) {
            MessagesController.getInstance(this.currentAccount).removeSuggestion(0L, "WALLET_FIRST_INCOMING_TRANSFER");
            WalletActivity.openWalletFirstGramsAlert(getContext(), this.currentAccount, this.themeDelegate).setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openGramTransaction$7(wallettransaction, runnable);
                }
            });
        } else {
            WalletActivity.openTransactionSheet(getContext(), this.currentAccount, wallettransaction, null, null, null, runnable, this.themeDelegate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openGramTransaction$6() {
        ChatActionCellDelegate chatActionCellDelegate = this.delegate;
        BaseFragment baseFragment = chatActionCellDelegate != null ? chatActionCellDelegate.getBaseFragment() : null;
        if (baseFragment == null) {
            baseFragment = LaunchActivity.getSafeLastFragment();
        }
        if (baseFragment == null) {
            return;
        }
        baseFragment.presentFragment(new WalletActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openGramTransaction$7(TL_wallet.walletTransaction wallettransaction, Runnable runnable) {
        WalletActivity.openTransactionSheet(getContext(), this.currentAccount, wallettransaction, null, null, null, runnable, this.themeDelegate);
    }

    private int getImageSize(MessageObject messageObject) {
        int i;
        int iDp = this.stickerSize;
        int i2 = messageObject.type;
        if (i2 == 37) {
            iDp = AndroidUtilities.dp(52.0f);
        } else if (i2 == 21 || isNewStyleButtonLayout()) {
            iDp = AndroidUtilities.dp(78.0f);
        }
        if (isMessageActionSuggestedPostApproval() || (i = messageObject.type) == 34 || i == 35) {
            return 0;
        }
        return iDp;
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0643  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0649  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildLayout() {
        CharSequence charSequenceCreateActionTextWithTopic;
        CharSequence charSequenceReplaceTags;
        CharSequence charSequence;
        CharSequence string;
        CharSequence charSequence2;
        boolean z;
        CharSequence string2;
        CharSequence string3;
        ArrayList<TLRPC.VideoSize> arrayList;
        TLRPC.Photo photo;
        ArrayList<TLRPC.VideoSize> arrayList2;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String string4;
        CharSequence charSequenceReplaceTags2;
        CharSequence charSequenceReplaceTags3;
        TLObject tLObject;
        boolean z2;
        TL_stars.StarGift starGift;
        String str;
        CharSequence charSequenceReplaceTags4;
        TL_stars.StarGift starGift2;
        CharSequence string5;
        String publicUsername;
        TLObject tLObject2;
        TLRPC.Peer peer;
        TLRPC.Message message;
        TLRPC.MessageAction messageAction;
        int i;
        TLRPC.MessageMedia messageMedia;
        this.giftRectEmpty = false;
        MessageObject messageObject = this.currentMessageObject;
        CharSequence string6 = null;
        if (messageObject != null) {
            if (hasWalletActionLayout()) {
                CharSequence currency = GramWallet.getInstance(this.currentAccount).formatCurrency(((TLRPC.TL_messageActionGramTransfer) messageObject.messageOwner.action).amount);
                charSequenceCreateActionTextWithTopic = !TextUtils.isEmpty(currency) ? LocaleController.formatSpannable(C2807R.string.WalletTransferWorth, AnimatedEmojiSpan.cloneSpans(messageObject.messageText), currency) : null;
                if (charSequenceCreateActionTextWithTopic == null) {
                    TLRPC.Message message2 = messageObject.messageOwner;
                    if (message2 != null && (messageMedia = message2.media) != null && messageMedia.ttl_seconds != 0) {
                        if (messageMedia.photo != null) {
                            charSequenceCreateActionTextWithTopic = LocaleController.getString(C2807R.string.AttachPhotoExpired);
                        } else {
                            TLRPC.Document document = messageMedia.document;
                            if ((document instanceof TLRPC.TL_documentEmpty) || ((messageMedia instanceof TLRPC.TL_messageMediaDocument) && document == null)) {
                                if (messageMedia.voice) {
                                    charSequenceCreateActionTextWithTopic = LocaleController.getString(C2807R.string.AttachVoiceExpired);
                                } else if (messageMedia.round) {
                                    charSequenceCreateActionTextWithTopic = LocaleController.getString(C2807R.string.AttachRoundExpired);
                                } else {
                                    charSequenceCreateActionTextWithTopic = LocaleController.getString(C2807R.string.AttachVideoExpired);
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
                if (!messageObject.isExpiredStory()) {
                    ChatActionCellDelegate chatActionCellDelegate = this.delegate;
                    if (chatActionCellDelegate != null && chatActionCellDelegate.getTopicId() == 0 && MessageObject.isTopicActionMessage(messageObject)) {
                        charSequenceCreateActionTextWithTopic = ForumUtilities.createActionTextWithTopic(MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-messageObject.getDialogId(), MessageObject.getTopicId(this.currentAccount, messageObject.messageOwner, true)), messageObject);
                    }
                } else if (messageObject.messageOwner.media.user_id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    charSequenceCreateActionTextWithTopic = StoriesUtilities.createExpiredStoryString(true, C2807R.string.ExpiredStoryMention, new Object[0]);
                } else {
                    charSequenceCreateActionTextWithTopic = StoriesUtilities.createExpiredStoryString(true, C2807R.string.ExpiredStoryMentioned, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name);
                }
                if (charSequenceCreateActionTextWithTopic == null) {
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
                i = C2807R.drawable.mini_checklist_add;
            } else if (messageAction instanceof TLRPC.TL_messageActionTodoCompletions) {
                TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction;
                if (tL_messageActionTodoCompletions.incompleted.size() > tL_messageActionTodoCompletions.completed.size()) {
                    i = C2807R.drawable.mini_checklist_undone;
                } else {
                    i = C2807R.drawable.mini_checklist_done;
                }
            } else {
                i = 0;
            }
            if (i != 0) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequenceCreateActionTextWithTopic);
                spannableStringBuilder.insert(0, (CharSequence) "i ");
                spannableStringBuilder.setSpan(new ColoredImageSpan(i), 0, 1, 33);
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
                    createGiftPremiumLayouts(null, null, null, charSequenceCreateActionTextWithTopic, false, !ChatObject.canManageMonoForum(this.currentAccount, messageObject.getDialogId()) ? LocaleController.getString(C2807R.string.StarsBuy) : null, 11, null, this.giftRectSize, false, true);
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
                        int i2 = messageObject.type;
                        if (i2 == 11) {
                            float fDp = this.textHeight + AndroidUtilities.dp(19.0f);
                            int i3 = AndroidUtilities.roundMessageSize;
                            this.imageReceiver.setImageCoords((this.previousWidth - AndroidUtilities.roundMessageSize) / 2.0f, fDp, i3, i3);
                        } else if (i2 == 25) {
                            createGiftPremiumChannelLayouts();
                        } else if (i2 == 30) {
                            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.currentMessageObject.getDialogId()));
                            TLRPC.MessageAction messageAction4 = messageObject.messageOwner.action;
                            if (messageAction4 instanceof TLRPC.TL_messageActionGiftStars) {
                                createGiftPremiumLayouts(LocaleController.formatPluralStringComma("ActionGiftStarsTitle", (int) ((TLRPC.TL_messageActionGiftStars) messageAction4).stars), null, null, AndroidUtilities.replaceTags(this.currentMessageObject.isOutOwner() ? LocaleController.formatString(C2807R.string.ActionGiftStarsSubtitle, UserObject.getForcedFirstName(user)) : LocaleController.getString(C2807R.string.ActionGiftStarsSubtitleYou)), false, LocaleController.getString(C2807R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                            } else if ((messageAction4 instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction4).refunded) {
                                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageObject.messageOwner.action;
                                if (messageObject.isOutOwner() != (!tL_messageActionStarGiftUnique.upgrade)) {
                                    clientUserId = messageObject.getDialogId();
                                }
                                TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(clientUserId));
                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(tL_messageActionStarGiftUnique.prepaid_upgrade ? C2807R.string.Gift2ActionUpgradeTitle : C2807R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                if (user2 != null && user2.photo != null) {
                                    spannableStringBuilder2.append((CharSequence) "a ");
                                    AvatarSpan avatarSpan = new AvatarSpan(this, this.currentAccount, 18.0f);
                                    avatarSpan.setUser(user2);
                                    spannableStringBuilder2.setSpan(avatarSpan, spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 33);
                                }
                                spannableStringBuilder2.append((CharSequence) UserObject.getForcedFirstName(user2));
                                createGiftPremiumLayouts(spannableStringBuilder2, null, null, LocaleController.getString(C2807R.string.Gift2ActionUpgradeRefundedText), false, LocaleController.getString(C2807R.string.ActionGiftStarsView), 12, LocaleController.getString(C2807R.string.Gift2UniqueRibbon), this.giftRectSize, true, false);
                            } else if (messageAction4 instanceof TLRPC.TL_messageActionStarGift) {
                                TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction4;
                                long j = tL_messageActionStarGift.convert_stars;
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
                                boolean z5 = z4;
                                long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionStarGift.to_id);
                                TLObject userOrChat2 = MessagesController.getInstance(this.currentAccount).getUserOrChat(peerDialogId);
                                if (!tL_messageActionStarGift.can_upgrade || tL_messageActionStarGift.converted) {
                                    tLObject = userOrChat2;
                                } else {
                                    tLObject = userOrChat2;
                                    if (tL_messageActionStarGift.upgrade_stars > 0 && !tL_messageActionStarGift.upgraded) {
                                        z2 = true;
                                    }
                                    if (peerDialogId == 0 && tL_messageActionStarGift.auction_acquired && tLObject != null) {
                                        spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2807R.string.Gift2ActionTitleTo)).append((CharSequence) " ");
                                        if (DialogObject.hasPhoto(tLObject)) {
                                            spannableStringBuilder3.append((CharSequence) "a ");
                                            AvatarSpan avatarSpan2 = new AvatarSpan(this, this.currentAccount, 18.0f);
                                            tLObject2 = tLObject;
                                            avatarSpan2.setObject(tLObject2);
                                            spannableStringBuilder3.setSpan(avatarSpan2, spannableStringBuilder3.length() - 2, spannableStringBuilder3.length() - 1, 33);
                                        } else {
                                            tLObject2 = tLObject;
                                        }
                                        spannableStringBuilder3.append((CharSequence) DialogObject.getShortName(tLObject2));
                                    } else if (!z5) {
                                        if (tL_messageActionStarGift.gift_num > 0 && (starGift = tL_messageActionStarGift.gift) != null && (str = starGift.title) != null) {
                                            spannableStringBuilder3.append((CharSequence) str).append((CharSequence) " #").append((CharSequence) LocaleController.formatNumber(tL_messageActionStarGift.gift_num, ','));
                                        } else {
                                            spannableStringBuilder3.append((CharSequence) LocaleController.getString(C2807R.string.Gift2ActionSelfTitle));
                                        }
                                    } else {
                                        spannableStringBuilder3.append((CharSequence) LocaleController.getString(tL_messageActionStarGift.prepaid_upgrade ? C2807R.string.Gift2ActionUpgradeTitle : C2807R.string.Gift2ActionTitle)).append((CharSequence) " ");
                                        if (DialogObject.hasPhoto(userOrChat)) {
                                            spannableStringBuilder3.append((CharSequence) "a ");
                                            AvatarSpan avatarSpan3 = new AvatarSpan(this, this.currentAccount, 18.0f);
                                            avatarSpan3.setObject(userOrChat);
                                            spannableStringBuilder3.setSpan(avatarSpan3, spannableStringBuilder3.length() - 2, spannableStringBuilder3.length() - 1, 33);
                                        }
                                        spannableStringBuilder3.append((CharSequence) DialogObject.getShortName(userOrChat));
                                    }
                                    boolean z6 = !((messageObject.isOutOwner() || z5) && tL_messageActionStarGift.converted) && tL_messageActionStarGift.convert_stars > 0 && MessagesController.getInstance(this.currentAccount).stargiftsConvertPeriodMax - (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - messageObject.messageOwner.date) > 0 && !tL_messageActionStarGift.refunded;
                                    if (tL_messageActionStarGift.refunded) {
                                        charSequenceReplaceTags4 = LocaleController.getString(C2807R.string.Gift2ActionConvertRefundedText);
                                    } else {
                                        TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                                        if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                            this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
                                            MessageObject.addEntitiesToText(spannableStringBuilder4, tL_messageActionStarGift.message.entities, false, false, true, true);
                                            charSequenceReplaceTags4 = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder4, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_messageActionStarGift.message.entities, this.giftTextPaint.getFontMetricsInt());
                                        } else if (tL_messageActionStarGift.auction_acquired) {
                                            charSequenceReplaceTags4 = LocaleController.formatString(C2807R.string.Gift2ActionWonActionText, LocaleController.formatNumber(tL_messageActionStarGift.gift.stars + tL_messageActionStarGift.upgrade_stars, ','));
                                        } else if (z3) {
                                            if (tL_messageActionStarGift.converted) {
                                                charSequenceReplaceTags4 = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                            } else if (z6 && j > 0) {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionInfoChannel", (int) j));
                                            } else {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.Gift2ActionInfoChannelNoConvert));
                                            }
                                        } else if (z5) {
                                            if (tL_messageActionStarGift.converted && j > 0) {
                                                charSequenceReplaceTags4 = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                            } else if (tL_messageActionStarGift.can_upgrade) {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.Gift2ActionSelfInfoUpgrade));
                                            } else {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.Gift2ActionSelfInfoNoConvert));
                                            }
                                        } else if (z2) {
                                            charSequenceReplaceTags4 = AndroidUtilities.replaceTags(messageObject.isOutOwner() ? LocaleController.formatString(C2807R.string.Gift2ActionUpgradeOut, UserObject.getForcedFirstName(user)) : LocaleController.getString(C2807R.string.Gift2ActionUpgrade));
                                        } else if (messageObject.isOutOwner()) {
                                            if (z6 && j > 0) {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionOutInfo", (int) j, UserObject.getForcedFirstName(user)));
                                            } else if (tL_messageActionStarGift.can_upgrade) {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.Gift2ActionOutInfoUpgrade, UserObject.getForcedFirstName(user)));
                                            } else {
                                                charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.Gift2ActionOutInfoNoConvert, UserObject.getForcedFirstName(user)));
                                            }
                                        } else if (tL_messageActionStarGift.converted) {
                                            charSequenceReplaceTags4 = LocaleController.formatPluralStringComma("Gift2ActionConvertedInfo", (int) j);
                                        } else if (tL_messageActionStarGift.saved) {
                                            if (!z6) {
                                                charSequenceReplaceTags4 = LocaleController.getString(C2807R.string.Gift2ActionBotSavedInfo);
                                            } else {
                                                charSequenceReplaceTags4 = LocaleController.getString(C2807R.string.Gift2ActionSavedInfo);
                                            }
                                        } else if (!z6) {
                                            charSequenceReplaceTags4 = LocaleController.getString(C2807R.string.Gift2ActionBotInfo);
                                        } else {
                                            charSequenceReplaceTags4 = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("Gift2ActionInfo", (int) j));
                                        }
                                    }
                                    CharSequence charSequence3 = charSequenceReplaceTags4;
                                    starGift2 = tL_messageActionStarGift.gift;
                                    if (starGift2 == null || !starGift2.limited) {
                                        string5 = null;
                                    } else {
                                        int i4 = C2807R.string.Gift2Limited1OfRibbon;
                                        int i5 = starGift2.availability_total;
                                        string5 = LocaleController.formatString(i4, i5 > 1500 ? AndroidUtilities.formatWholeNumber(i5, 0) : Integer.valueOf(i5));
                                    }
                                    CharSequence string7 = LocaleController.getString(C2807R.string.ActionGiftStarsView);
                                    if (!messageObject.isOutOwner()) {
                                        CharSequence charSequence4 = string7;
                                        if (tL_messageActionStarGift.forceIn || z2) {
                                            charSequence4 = string7;
                                            charSequence4 = string7;
                                            if (!messageObject.isOutOwner() && z2) {
                                                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                                                spannableStringBuilder5.append((CharSequence) "^  ");
                                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.gift_unpack);
                                                coloredImageSpan.setScale(0.8f, 0.8f);
                                                spannableStringBuilder5.setSpan(coloredImageSpan, 0, 1, 33);
                                                spannableStringBuilder5.append((CharSequence) LocaleController.getString(C2807R.string.Gift2Unpack));
                                                charSequence4 = spannableStringBuilder5;
                                            }
                                        }
                                        CharSequence charSequence5 = charSequence4;
                                        TL_stars.StarGift starGift3 = tL_messageActionStarGift.gift;
                                        if (starGift3 != null && starGift3.released_by != null && (publicUsername = DialogObject.getPublicUsername(MessagesController.getInstance(this.currentAccount).getUserOrChat(DialogObject.getPeerDialogId(tL_messageActionStarGift.gift.released_by)))) != null) {
                                            string6 = StarGiftSheet.replaceSingleTagToLink(LocaleController.formatString(C2807R.string.Gift2ActionReleasedBy, "@".concat(publicUsername)), null);
                                        }
                                        createGiftPremiumLayouts(spannableStringBuilder3, null, string6, charSequence3, false, charSequence5, 11, string5, this.giftRectSize, true, false);
                                    }
                                }
                                z2 = false;
                                if (peerDialogId == 0) {
                                    if (!z5) {
                                    }
                                    if (messageObject.isOutOwner()) {
                                        if (tL_messageActionStarGift.refunded) {
                                        }
                                        CharSequence charSequence32 = charSequenceReplaceTags4;
                                        starGift2 = tL_messageActionStarGift.gift;
                                        if (starGift2 == null) {
                                            string5 = null;
                                            CharSequence string72 = LocaleController.getString(C2807R.string.ActionGiftStarsView);
                                            if (!messageObject.isOutOwner()) {
                                            }
                                        }
                                    } else {
                                        if (tL_messageActionStarGift.refunded) {
                                        }
                                        CharSequence charSequence322 = charSequenceReplaceTags4;
                                        starGift2 = tL_messageActionStarGift.gift;
                                        if (starGift2 == null) {
                                        }
                                    }
                                }
                            } else if (messageAction4 instanceof TLRPC.TL_messageActionGiftTon) {
                                createGiftPremiumLayouts(LocaleController.getString(C2807R.string.ActionGiftTonTitle), null, null, this.currentMessageObject.messageText, false, LocaleController.getString(C2807R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else {
                                createGiftPremiumLayouts(LocaleController.getString(C2807R.string.ActionStarGiveawayPrizeTitle), null, null, this.currentMessageObject.messageText, false, LocaleController.getString(C2807R.string.ActionGiftStarsView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            }
                        } else {
                            long dialogId = 0;
                            if (i2 == 33) {
                                TLRPC.TL_messageActionStarGiftPurchaseOffer tL_messageActionStarGiftPurchaseOffer = (TLRPC.TL_messageActionStarGiftPurchaseOffer) message3.action;
                                SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(charSequenceCreateActionTextWithTopic);
                                spannableStringBuilder6.append((CharSequence) "\n\n");
                                if (tL_messageActionStarGiftPurchaseOffer.accepted) {
                                    spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.GiftOfferStatusAccepted)));
                                } else if (tL_messageActionStarGiftPurchaseOffer.declined) {
                                    spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.GiftOfferStatusRejected)));
                                } else {
                                    int iMax = Math.max(0, tL_messageActionStarGiftPurchaseOffer.expires_at - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime());
                                    if (iMax == 0) {
                                        spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.GiftOfferStatusExpired)));
                                    } else {
                                        String shortDuration2 = LocaleController.formatShortDuration2(iMax);
                                        if (shortDuration2.endsWith(".")) {
                                            shortDuration2 = shortDuration2.substring(0, shortDuration2.length() - 1);
                                        }
                                        spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.GiftOfferStatusPending, shortDuration2)));
                                    }
                                }
                                createGiftPremiumLayouts(null, null, null, spannableStringBuilder6, false, null, 11, null, this.giftRectSize, false, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = false;
                            } else if (i2 == 34) {
                                createGiftPremiumLayouts(null, null, null, charSequenceCreateActionTextWithTopic, false, null, 11, null, this.giftRectSize, false, true);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = true;
                            } else if (i2 == 35) {
                                TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest = (TLRPC.TL_messageActionNoForwardsRequest) message3.action;
                                SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                String shortName = DialogObject.getShortName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())));
                                if (tL_messageActionNoForwardsRequest.new_value) {
                                    if (messageObject.isOut()) {
                                        charSequenceReplaceTags3 = LocaleController.getString(C2807R.string.SharingOfferDisableHeaderYou);
                                    } else {
                                        charSequenceReplaceTags3 = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SharingOfferDisableHeaderOther, shortName));
                                    }
                                    spannableStringBuilder7.append(charSequenceReplaceTags3);
                                } else {
                                    if (messageObject.isOut()) {
                                        charSequenceReplaceTags2 = LocaleController.getString(C2807R.string.SharingOfferEnableHeaderYou);
                                    } else {
                                        charSequenceReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SharingOfferEnableHeaderOther, shortName));
                                    }
                                    spannableStringBuilder7.append(charSequenceReplaceTags2);
                                }
                                if (tL_messageActionNoForwardsRequest.new_value) {
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferDisable1), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferDisable2), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferDisable3), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferDisable4), C2807R.drawable.floating_check));
                                } else {
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferEnable1), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferEnable2), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferEnable3), C2807R.drawable.floating_check));
                                    spannableStringBuilder7.append((CharSequence) "\n\n");
                                    spannableStringBuilder7.append(createOption(LocaleController.getString(C2807R.string.SharingOfferEnable4), C2807R.drawable.floating_check));
                                }
                                createGiftPremiumLayouts(null, null, null, spannableStringBuilder7, false, null, 11, null, this.giftRectSize, false, true);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                                this.giftRectEmpty = true;
                            } else if (i2 == 31) {
                                String str2 = ((TLRPC.TL_chatThemeUniqueGift) ((TLRPC.TL_messageActionSetChatTheme) message3.action).theme).gift.title + " #" + LocaleController.formatNumber(r2.num, ',');
                                long fromChatId2 = messageObject.getFromChatId();
                                if (UserConfig.getInstance(this.currentAccount).getClientUserId() == fromChatId2) {
                                    string4 = LocaleController.formatString(C2807R.string.GiftThemesSetByYou, str2);
                                } else {
                                    string4 = LocaleController.formatString(C2807R.string.GiftThemesSetByOther, DialogObject.getShortName(this.currentAccount, fromChatId2), str2);
                                }
                                createGiftPremiumLayouts(null, null, null, AndroidUtilities.replaceTags(string4), false, LocaleController.getString(C2807R.string.GiftThemesSetActionView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (i2 == 37) {
                                TLRPC.TL_messageActionChangeCommunity tL_messageActionChangeCommunity = (TLRPC.TL_messageActionChangeCommunity) message3.action;
                                long peerDialogId2 = DialogObject.getPeerDialogId(message3.peer_id);
                                boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(-peerDialogId2, this.currentAccount);
                                boolean z7 = peerDialogId2 > 0;
                                String shortName2 = DialogObject.getShortName(this.currentAccount, DialogObject.getPeerDialogId(messageObject.messageOwner.from_id));
                                String shortName3 = DialogObject.getShortName(this.currentAccount, -tL_messageActionChangeCommunity.community_id);
                                SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder();
                                spannableStringBuilder8.append(CommunityUtils.buildServiceMessageText(messageObject, shortName3, shortName2, zIsChannelAndNotMegaGroup, z7));
                                createGiftPremiumLayouts(null, null, null, spannableStringBuilder8, false, LocaleController.getString(C2807R.string.GiftThemesSetActionView), 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (i2 == 18) {
                                TLRPC.MessageAction messageAction5 = message3.action;
                                if (messageAction5 instanceof TLRPC.TL_messageActionGiftPremium) {
                                    tL_textWithEntities = ((TLRPC.TL_messageActionGiftPremium) messageAction5).message;
                                } else {
                                    tL_textWithEntities = messageAction5 instanceof TLRPC.TL_messageActionGiftCode ? ((TLRPC.TL_messageActionGiftCode) messageAction5).message : null;
                                }
                                if (tL_textWithEntities != null && !TextUtils.isEmpty(tL_textWithEntities.text)) {
                                    SpannableStringBuilder spannableStringBuilder9 = new SpannableStringBuilder(tL_textWithEntities.text);
                                    this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
                                    MessageObject.addEntitiesToText(spannableStringBuilder9, tL_textWithEntities.entities, false, false, true, true);
                                    string6 = MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji((CharSequence) spannableStringBuilder9, this.giftTextPaint.getFontMetricsInt(), false, (int[]) null), tL_textWithEntities.entities, this.giftTextPaint.getFontMetricsInt());
                                }
                                if (string6 == null) {
                                    string6 = LocaleController.getString(C2807R.string.ActionGiftPremiumText);
                                }
                                CharSequence charSequence6 = string6;
                                CharSequence string8 = LocaleController.getString((!isGiftCode() || isSelfGiftCode()) ? C2807R.string.ActionGiftPremiumView : C2807R.string.GiftPremiumUseGiftBtn);
                                TLRPC.MessageAction messageAction6 = messageObject.messageOwner.action;
                                int i6 = messageAction6.months;
                                if (i6 >= 1) {
                                    createGiftPremiumLayouts(LocaleController.formatPluralStringComma("ActionGiftPremiumTitle2", i6), null, null, charSequence6, true, string8, 11, null, this.giftRectSize, false, false);
                                } else {
                                    createGiftPremiumLayouts(LocaleController.formatPluralStringComma("ActionGiftPremiumTitle2Days", messageAction6.days), null, null, charSequence6, true, string8, 11, null, this.giftRectSize, false, false);
                                }
                            } else if (i2 == 21) {
                                TLRPC.TL_messageActionSuggestProfilePhoto tL_messageActionSuggestProfilePhoto = (TLRPC.TL_messageActionSuggestProfilePhoto) message3.action;
                                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                                if (!messageObject.isOutOwner()) {
                                    dialogId = messageObject.getDialogId();
                                }
                                TLRPC.User user3 = messagesController.getUser(Long.valueOf(dialogId));
                                boolean z8 = tL_messageActionSuggestProfilePhoto.video || !((photo = tL_messageActionSuggestProfilePhoto.photo) == null || (arrayList2 = photo.video_sizes) == null || arrayList2.isEmpty());
                                if (user3.id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId()));
                                    if (z8) {
                                        string2 = LocaleController.formatString(C2807R.string.ActionSuggestVideoFromYouDescription, user4.first_name);
                                    } else {
                                        string2 = LocaleController.formatString(C2807R.string.ActionSuggestPhotoFromYouDescription, user4.first_name);
                                    }
                                } else {
                                    String str3 = user3.first_name;
                                    if (z8) {
                                        string2 = LocaleController.formatString(C2807R.string.ActionSuggestVideoToYouDescription, str3);
                                    } else {
                                        string2 = LocaleController.formatString(C2807R.string.ActionSuggestPhotoToYouDescription, str3);
                                    }
                                }
                                CharSequence charSequence7 = string2;
                                if (tL_messageActionSuggestProfilePhoto.video || ((arrayList = tL_messageActionSuggestProfilePhoto.photo.video_sizes) != null && !arrayList.isEmpty())) {
                                    string3 = LocaleController.getString(C2807R.string.ViewVideoAction);
                                } else {
                                    string3 = LocaleController.getString(C2807R.string.ViewPhotoAction);
                                }
                                createGiftPremiumLayouts(null, null, null, charSequence7, false, string3, 11, null, this.giftRectSize, true, false);
                                this.textLayout = null;
                                this.textHeight = 0;
                                this.titleLayout = null;
                                this.titleHeight = 0;
                                this.textY = 0;
                            } else if (i2 == 22) {
                                TLRPC.User user5 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.isOutOwner() ? 0L : messageObject.getDialogId()));
                                if (messageObject.getDialogId() < 0) {
                                    charSequence2 = messageObject.messageText;
                                } else if (!messageObject.isOutOwner() && messageObject.isWallpaperForBoth() && messageObject.isCurrentWallpaper()) {
                                    charSequence = messageObject.messageText;
                                    string = LocaleController.getString(C2807R.string.RemoveWallpaperAction);
                                    z = false;
                                    createGiftPremiumLayouts(null, null, null, charSequence, false, string, 11, null, this.giftRectSize, z, false);
                                    this.textLayout = null;
                                    this.textHeight = 0;
                                    this.titleLayout = null;
                                    this.titleHeight = 0;
                                    this.textY = 0;
                                } else if (user5 != null && user5.id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    charSequence2 = messageObject.messageText;
                                } else {
                                    charSequence = messageObject.messageText;
                                    string = LocaleController.getString(C2807R.string.ViewWallpaperAction);
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
                                if (user6.self) {
                                    charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.StoryYouMentionedTitle, MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageObject.getDialogId())).first_name));
                                } else {
                                    charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.StoryMentionedTitle, user6.first_name));
                                }
                                createGiftPremiumLayouts(null, null, null, charSequenceReplaceTags, false, LocaleController.getString(C2807R.string.StoryMentionedAction), 11, null, this.giftRectSize, true, false);
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
        this.reactionsLayoutInBubble.f1158x = AndroidUtilities.dp(12.0f);
        this.reactionsLayoutInBubble.measure(this.previousWidth - AndroidUtilities.dp(24.0f), 1);
    }

    private CharSequence createOption(String str, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceArrows(str, false, AndroidUtilities.dp(6.0f), -AndroidUtilities.dp(1.3f), 0.8f, i));
        spannableStringBuilder.insert(0, (CharSequence) "*");
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.dp(18.0f)), 0, 1, 33);
        if (Build.VERSION.SDK_INT >= 29) {
            ChatActionCell$$ExternalSyntheticApiModelOutline1.m1068m();
            spannableStringBuilder.setSpan(ChatActionCell$$ExternalSyntheticApiModelOutline0.m1067m(AndroidUtilities.dp(12.0f)), 0, spannableStringBuilder.length(), 33);
        }
        spannableStringBuilder.setSpan(new AlignmentSpan.Standard(Layout.Alignment.ALIGN_NORMAL), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    private void createGiftPremiumChannelLayouts() {
        String string;
        SpannableStringBuilder spannableStringBuilder;
        int iDp = this.giftRectSize - AndroidUtilities.dp(16.0f);
        this.giftTitlePaint.setTextSize(AndroidUtilities.dp(14.0f));
        this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
        TLRPC.TL_messageActionGiftCode tL_messageActionGiftCode = (TLRPC.TL_messageActionGiftCode) this.currentMessageObject.messageOwner.action;
        int i = tL_messageActionGiftCode.months;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(tL_messageActionGiftCode.boost_peer)));
        String str = chat == null ? null : chat.title;
        boolean z = tL_messageActionGiftCode.via_giveaway;
        if (tL_messageActionGiftCode.unclaimed) {
            string = LocaleController.getString("BoostingUnclaimedPrize", C2807R.string.BoostingUnclaimedPrize);
        } else {
            string = LocaleController.getString("BoostingCongratulations", C2807R.string.BoostingCongratulations);
        }
        String pluralString = i == 12 ? LocaleController.formatPluralString("BoldYears", 1, new Object[0]) : LocaleController.formatPluralString("BoldMonths", i, new Object[0]);
        if (z) {
            if (tL_messageActionGiftCode.unclaimed) {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.BoostingYouHaveUnclaimedPrize, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.BoostingUnclaimedPrizeDuration, pluralString)));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.BoostingReceivedPrizeFrom, str)));
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.BoostingReceivedPrizeDuration, pluralString)));
            }
        } else {
            spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(str == null ? LocaleController.getString(C2807R.string.BoostingReceivedGiftNoName) : LocaleController.formatString("BoostingReceivedGiftFrom", C2807R.string.BoostingReceivedGiftFrom, str)));
            spannableStringBuilder.append((CharSequence) "\n\n");
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.BoostingReceivedGiftDuration, pluralString)));
        }
        String string2 = LocaleController.getString("BoostingReceivedGiftOpenBtn", C2807R.string.BoostingReceivedGiftOpenBtn);
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(string);
        spannableStringBuilderValueOf.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf.length(), 33);
        TextPaint textPaint = this.giftTitlePaint;
        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
        this.giftPremiumTitleLayout = new StaticLayout(spannableStringBuilderValueOf, textPaint, iDp, alignment, 1.1f, 0.0f, false);
        this.giftPremiumSubtitleLayout = null;
        this.giftPremiumReleasedText = null;
        TextLayout textLayout = this.giftPremiumText;
        if (textLayout != null) {
            textLayout.detach();
        }
        TextLayout textLayout2 = new TextLayout();
        this.giftPremiumText = textLayout2;
        textLayout2.setText(spannableStringBuilder, this.giftTextPaint, iDp);
        SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(string2);
        spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableStringBuilderValueOf2.length(), 33);
        this.giftPremiumTextCollapsed = false;
        this.giftPremiumTextCollapsedHeight = 0;
        this.giftPremiumTextMore = null;
        StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), iDp, alignment, 1.0f, 0.0f, false);
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
        int iDp = i2 - AndroidUtilities.dp(16.0f);
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject != null && messageObject.type == 30) {
            iDp -= AndroidUtilities.dp(16.0f);
        }
        int i4 = iDp;
        if (charSequence != null) {
            MessageObject messageObject2 = this.currentMessageObject;
            if (messageObject2 != null && messageObject2.type == 30) {
                this.giftTitlePaint.setTextSize(AndroidUtilities.dp(14.0f));
            } else {
                this.giftTitlePaint.setTextSize(AndroidUtilities.dp(16.0f));
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
            this.giftSubtitlePaint.setTextSize(AndroidUtilities.dp(13.0f));
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
            this.giftTextPaint.setTextSize(AndroidUtilities.dp(14.3f));
        } else if (messageObject3 != null && (isNewStyleButtonLayout() || (i3 = this.currentMessageObject.type) == 30 || i3 == 18 || i3 == 31 || i3 == 37 || i3 == 33)) {
            this.giftTextPaint.setTextSize(AndroidUtilities.dp(13.0f));
        } else {
            this.giftTextPaint.setTextSize(AndroidUtilities.dp(15.0f));
        }
        int iDp2 = i4 - AndroidUtilities.dp(12.0f);
        MessageObject messageObject4 = this.currentMessageObject;
        if (messageObject4 != null && messageObject4.type == 22 && messageObject4.getDialogId() >= 0 && (iCutInFancyHalf = HintView2.cutInFancyHalf(charSequenceReplaceEmoji, this.giftTextPaint)) < iDp2 && iCutInFancyHalf > iDp2 / 5.0f) {
            iDp2 = iCutInFancyHalf;
        }
        TextLayout textLayout = this.giftPremiumText;
        if (charSequenceReplaceEmoji == 0) {
            if (textLayout != null) {
                textLayout.detach();
                this.giftPremiumText = null;
            }
            this.giftPremiumTextCollapsed = r4;
        } else {
            if (textLayout == null) {
                this.giftPremiumText = new TextLayout();
            }
            try {
                charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceReplaceEmoji, this.giftTextPaint.getFontMetricsInt(), r4);
            } catch (Exception unused) {
            }
            this.giftPremiumText.setText(charSequenceReplaceEmoji, this.giftTextPaint, iDp2);
            if (z && this.giftPremiumText.layout.getLineCount() > 3) {
                this.giftPremiumTextCollapsed = !this.giftPremiumTextUncollapsed;
                this.giftPremiumTextCollapsedHeight = this.giftPremiumText.layout.getLineBottom(2);
                this.giftPremiumTextMore = new Text(LocaleController.getString(C2807R.string.Gift2CaptionMore), this.giftTextPaint.getTextSize() / AndroidUtilities.density, AndroidUtilities.bold());
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
                textLayout2.setText(charSequenceSubSequence, this.giftTextPaint, iDp2);
            }
        }
        if (charSequence5 != null) {
            SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(charSequence5);
            spannableStringBuilderValueOf2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), r4, spannableStringBuilderValueOf2.length(), 33);
            boolean z4 = 1;
            StaticLayout staticLayout = new StaticLayout(spannableStringBuilderValueOf2, (TextPaint) getThemedPaint("paintChatActionText"), i4, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            this.giftPremiumButtonLayout = staticLayout;
            if (!z2 || this.giftPremiumTextCollapsed) {
                z4 = r4;
            }
            this.buttonClickableAsImage = z4;
            this.giftPremiumButtonWidth = measureLayoutWidth(staticLayout);
        } else {
            this.giftPremiumButtonLayout = null;
            this.buttonClickableAsImage = r4;
            this.giftPremiumButtonWidth = 0.0f;
        }
        if (charSequence6 != null) {
            if (this.giftRibbonPaintEffect == null) {
                this.giftRibbonPaintEffect = new CornerPathEffect(AndroidUtilities.dp(5.0f));
            }
            if (this.giftRibbonPath == null) {
                Path path = new Path();
                this.giftRibbonPath = path;
                GiftSheet.RibbonDrawable.fillRibbonPath(path, 1.35f, r4);
            }
            Text text2 = new Text(charSequence6, i, AndroidUtilities.bold());
            this.giftRibbonText = text2;
            text2.ellipsize(AndroidUtilities.dp(62.0f));
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

    /* JADX WARN: Removed duplicated region for block: B:218:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x073f  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x07e6  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0b03  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0c95  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0c9c  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0cab  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0cb8  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0ccc  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0d00  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0e12  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x0e1c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fe  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i;
        int i2;
        ChatActionCell chatActionCell;
        float fDp;
        int iDp;
        int i3;
        int i4;
        char c2;
        float fDp2;
        int i5;
        float f4;
        ChatActionCell chatActionCell2;
        float f5;
        float f6;
        float f7;
        float f8;
        Text text;
        TextLayout textLayout;
        StaticLayout staticLayout;
        Theme.ResourcesProvider resourcesProvider;
        boolean z;
        int i6;
        int i7;
        int i8;
        Text text2;
        float fDp3;
        TextPaint textPaint;
        Canvas canvas2 = canvas;
        canvas2.save();
        canvas2.translate(this.sideMenuWidth / 2.0f, getPaddingTop());
        MessageObject messageObject = this.currentMessageObject;
        float f9 = this.giftPremiumTextExpandedAnimated.set(!this.giftPremiumTextCollapsed);
        int imageSize = this.stickerSize;
        if (!hasStarGiftLayout() && this.birthdayLayout == null && isButtonLayout(messageObject)) {
            this.stickerSize = this.giftRectSize - AndroidUtilities.dp(106.0f);
            if (isNewStyleButtonLayout()) {
                imageSize = getImageSize(messageObject);
                f2 = 1.0f;
                float fDp4 = (this.previousWidth - imageSize) / 2.0f;
                float fDp5 = this.textY + this.textHeight + AndroidUtilities.dp(4.0f) + AndroidUtilities.dp(16.0f);
                if (messageObject.isStoryMention()) {
                    f = 16.0f;
                    this.avatarStoryParams.storyItem = messageObject.messageOwner.media.storyItem;
                } else {
                    f = 16.0f;
                }
                float f10 = imageSize;
                this.avatarStoryParams.originalAvatarRect.set(fDp4, fDp5, fDp4 + f10, f10 + fDp5);
                int i9 = messageObject.type;
                if (i9 == 31 || i9 == 33 || i9 == 34 || i9 == 35) {
                    fDp4 += AndroidUtilities.dp(10.0f);
                    fDp5 += AndroidUtilities.dp(10.0f);
                    imageSize -= AndroidUtilities.dp(20.0f);
                }
                if (messageObject.type == 37) {
                    fDp4 += AndroidUtilities.dp(2.0f);
                }
                this.imageReceiver.setImageCoords(fDp4, fDp5, Math.max(0, imageSize), Math.max(0, imageSize));
                int i10 = messageObject.type;
                if (i10 == 31 || i10 == 33 || i10 == 34 || i10 == 35) {
                    imageSize += AndroidUtilities.dp(20.0f);
                }
                this.imageReceiver.setRoundRadius(ExteraConfig.getAvatarCorners(imageSize, true, messageObject.type == 37 ? AvatarCornerType.COMMUNITY : AvatarCornerType.DEFAULT));
            } else {
                f = 16.0f;
                f2 = 1.0f;
                int i11 = messageObject.type;
                if (i11 == 11) {
                    ImageReceiver imageReceiver = this.imageReceiver;
                    int i12 = this.previousWidth;
                    int i13 = this.stickerSize;
                    imageReceiver.setImageCoords((i12 - i13) / 2.0f, this.textY + this.textHeight + (this.giftRectSize * 0.075f), i13, i13);
                } else {
                    if (i11 == 25) {
                        imageSize = (int) (this.stickerSize * (AndroidUtilities.isTablet() ? 1.0f : 1.2f));
                        float f11 = imageSize;
                        this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.dp(22.0f), f11, f11);
                    } else if (messageObject.isStarGiftAction()) {
                        float f12 = imageSize;
                        this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, this.textY + this.textHeight + (this.giftRectSize * 0.075f) + AndroidUtilities.dp(2.0f), f12, f12);
                    } else {
                        int i14 = messageObject.type;
                        int i15 = this.stickerSize;
                        if (i14 == 30) {
                            imageSize = (int) (i15 * 1.1f);
                            TLRPC.Message message = messageObject.messageOwner;
                            if (message != null && !(message.action instanceof TLRPC.TL_messageActionStarGift)) {
                                float f13 = imageSize;
                                this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.dp(22.0f), f13, f13);
                            } else {
                                float f14 = imageSize;
                                this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.dp(12.0f), f14, f14);
                            }
                        } else {
                            imageSize = (int) (i15 * 1.0f);
                            float f15 = imageSize;
                            this.imageReceiver.setImageCoords((this.previousWidth - imageSize) / 2.0f, ((this.textY + this.textHeight) + (this.giftRectSize * 0.075f)) - AndroidUtilities.dp(4.0f), f15, f15);
                        }
                    }
                    textPaint = (TextPaint) getThemedPaint("paintChatActionText");
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
                }
            }
            textPaint = (TextPaint) getThemedPaint("paintChatActionText");
            this.textPaint = textPaint;
            if (textPaint != null) {
            }
        } else {
            f = 16.0f;
            f2 = 1.0f;
        }
        int i16 = imageSize;
        drawBackground(canvas2, false);
        if (hasWalletActionLayout()) {
            canvas2.save();
            float width = (getWidth() - this.walletActionLayout.getWidth()) / 2.0f;
            this.walletActionLayoutX = width;
            float walletActionTop = getWalletActionTop();
            this.walletActionLayoutY = walletActionTop;
            canvas2.translate(width, walletActionTop);
            this.walletActionLayout.setSurfaceOrigin(this.walletActionLayoutX + (this.sideMenuWidth / 2.0f), this.walletActionLayoutY + getPaddingTop());
            this.walletActionLayout.draw(canvas2);
            canvas2.restore();
        }
        if (hasStarGiftLayout()) {
            canvas2.save();
            float width2 = (getWidth() - this.starGiftLayout.getWidth()) / 2.0f;
            this.starGiftLayoutX = width2;
            if (this.starGiftLayout.repost) {
                fDp3 = AndroidUtilities.dp(4.0f);
                f3 = 14.0f;
            } else {
                f3 = 14.0f;
                fDp3 = this.textY + this.textHeight + AndroidUtilities.dp(f);
            }
            this.starGiftLayoutY = fDp3;
            canvas2.translate(width2, fDp3);
            this.starGiftLayout.draw(canvas2);
            ChatActionCellDelegate chatActionCellDelegate = this.delegate;
            if (chatActionCellDelegate == null || chatActionCellDelegate.canDrawOutboundsContent()) {
                this.starGiftLayout.drawOutbounds(canvas2);
            }
            canvas2.restore();
        } else {
            f3 = 14.0f;
            if (this.birthdayLayout != null) {
                canvas2.save();
                this.birthdayLayout.draw(canvas2);
                canvas2.restore();
            } else if (isButtonLayout(messageObject) || (messageObject != null && messageObject.type == 11)) {
                GiftSheet.CardBackground cardBackground = this.cardBackground;
                if (cardBackground != null && ((i = messageObject.type) == 31 || i == 37 || i == 33)) {
                    cardBackground.setBounds((int) (this.imageReceiver.getImageX() - AndroidUtilities.dp(13.33f)), (int) (this.imageReceiver.getImageY() - AndroidUtilities.dp(14.0f)), (int) (this.imageReceiver.getImageX() + this.imageReceiver.getImageWidth() + AndroidUtilities.dp(13.33f)), (int) (this.imageReceiver.getImageY() + this.imageReceiver.getImageHeight() + AndroidUtilities.dp(14.0f)));
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
                    this.clipPath.addCircle(this.imageReceiver.getImageWidth() / 2.0f, this.imageReceiver.getImageHeight() / 2.0f, this.imageReceiver.getImageWidth() / 2.0f, Path.Direction.CW);
                    canvas2.clipPath(this.clipPath);
                    this.wallpaperPreviewDrawable.setBounds(0, 0, (int) this.imageReceiver.getImageWidth(), (int) this.imageReceiver.getImageHeight());
                    this.wallpaperPreviewDrawable.draw(canvas2);
                    canvas2.restore();
                } else if (messageObject.isStoryMention()) {
                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                    long j = messageMedia.user_id;
                    StoriesUtilities.AvatarStoryParams avatarStoryParams = this.avatarStoryParams;
                    avatarStoryParams.storyId = messageMedia.id;
                    StoriesUtilities.drawAvatarWithStory(j, canvas2, this.imageReceiver, avatarStoryParams);
                } else {
                    this.imageReceiver.draw(canvas2);
                }
                if (messageObject.type == 37) {
                    DrawableUtils.drawCommunityCardDrawable(canvas2, Theme.dialogs_communityCardsDrawable, this.imageReceiver.getImageX() + AndroidUtilities.dp(26.0f), this.imageReceiver.getImageY() + AndroidUtilities.dp(26.0f), AndroidUtilities.dp(52.0f));
                }
                this.radialProgress.setProgressRect(this.imageReceiver.getImageX(), this.imageReceiver.getImageY(), this.imageReceiver.getImageX() + this.imageReceiver.getImageWidth(), this.imageReceiver.getImageY() + this.imageReceiver.getImageHeight());
                int i17 = messageObject.type;
                if (i17 == 21) {
                    ImageUpdater imageUpdater = MessagesController.getInstance(this.currentAccount).photoSuggestion.get(messageObject.messageOwner.local_id);
                    if (imageUpdater != null) {
                        this.radialProgress.setProgress(imageUpdater.getCurrentImageProgress(), true);
                        this.radialProgress.setCircleRadius(((int) (this.imageReceiver.getImageWidth() * 0.5f)) + 1);
                        this.radialProgress.setMaxIconSize(AndroidUtilities.dp(24.0f));
                        this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                        float currentImageProgress = imageUpdater.getCurrentImageProgress();
                        RadialProgress2 radialProgress2 = this.radialProgress;
                        if (currentImageProgress == f2) {
                            radialProgress2.setIcon(4, true, true);
                        } else {
                            radialProgress2.setIcon(3, true, true);
                        }
                    }
                    this.radialProgress.draw(canvas2);
                } else if (i17 == 22) {
                    float uploadingInfoProgress = getUploadingInfoProgress(messageObject);
                    this.radialProgress.setProgress(uploadingInfoProgress, true);
                    this.radialProgress.setCircleRadius(AndroidUtilities.dp(26.0f));
                    this.radialProgress.setMaxIconSize(AndroidUtilities.dp(24.0f));
                    this.radialProgress.setColorKeys(Theme.key_chat_mediaLoaderPhoto, Theme.key_chat_mediaLoaderPhotoSelected, Theme.key_chat_mediaLoaderPhotoIcon, Theme.key_chat_mediaLoaderPhotoIconSelected);
                    RadialProgress2 radialProgress22 = this.radialProgress;
                    if (uploadingInfoProgress == f2) {
                        radialProgress22.setIcon(4, true, true);
                    } else {
                        radialProgress22.setIcon(3, true, true);
                    }
                    this.radialProgress.draw(canvas2);
                }
            }
        }
        if (this.textPaint == null || this.textLayout == null) {
            i2 = 22;
        } else {
            canvas2.save();
            canvas2.translate(this.textXLeft, this.textY);
            if (this.textLayout.getPaint() != this.textPaint) {
                buildLayout();
            }
            canvas2.save();
            SpoilerEffect.clipOutCanvas(canvas2, this.spoilers);
            SpoilerEffect.layoutDrawMaybe(this.textLayout, canvas2);
            ChatActionCellDelegate chatActionCellDelegate2 = this.delegate;
            if (chatActionCellDelegate2 == null || chatActionCellDelegate2.canDrawOutboundsContent()) {
                StaticLayout staticLayout2 = this.textLayout;
                i2 = 22;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, staticLayout2, this.animatedEmojiStack, 0.0f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout2 == null ? null : getAdaptiveEmojiColorFilter(staticLayout2.getPaint().getColor()));
            } else {
                i2 = 22;
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
            ChatActionCellDelegate chatActionCellDelegate3 = this.delegate;
            if (chatActionCellDelegate3 == null || chatActionCellDelegate3.canDrawOutboundsContent()) {
                StaticLayout staticLayout3 = this.titleLayout;
                AnimatedEmojiSpan.EmojiGroupedSpans emojiGroupedSpans = this.animatedEmojiStack;
                List<SpoilerEffect> list = this.spoilers;
                StaticLayout staticLayout4 = this.textLayout;
                AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, staticLayout3, emojiGroupedSpans, 0.0f, list, 0.0f, 0.0f, 0.0f, 1.0f, staticLayout4 == null ? null : getAdaptiveEmojiColorFilter(staticLayout4.getPaint().getColor()));
            }
            canvas2.restore();
            for (SpoilerEffect spoilerEffect2 : this.spoilers) {
                spoilerEffect2.setColor(this.titleLayout.getPaint().getColor());
                spoilerEffect2.draw(canvas2);
            }
            canvas2.restore();
        }
        if (hasStarGiftLayout() || !isButtonLayout(messageObject)) {
            chatActionCell = this;
        } else {
            canvas2.save();
            float fDp6 = (this.previousWidth - this.giftRectSize) / 2.0f;
            if (messageObject.type != i2) {
                fDp6 += AndroidUtilities.dp(8.0f);
            }
            float f16 = fDp6;
            if (isNewStyleButtonLayout()) {
                RectF rectF = this.backgroundRect;
                fDp = rectF != null ? rectF.top : this.textY + this.textHeight + AndroidUtilities.dp(4.0f);
                iDp = AndroidUtilities.dp(f);
                if (i16 > 0) {
                    iDp = (iDp * 2) + i16;
                }
            } else {
                float f17 = this.textY + this.textHeight + (this.giftRectSize * 0.075f);
                if (messageObject.type != 21) {
                    i16 = this.stickerSize;
                }
                fDp = f17 + i16 + AndroidUtilities.dp(4.0f);
                if (messageObject.type == 21) {
                    fDp += AndroidUtilities.dp(f);
                }
                if (messageObject.isStarGiftAction()) {
                    iDp = AndroidUtilities.dp(12.0f);
                } else {
                    if (messageObject.type == 30 && !messageObject.isStarGiftAction()) {
                        fDp -= AndroidUtilities.dp(3.66f);
                    }
                    i3 = messageObject.type;
                    if (i3 == 31) {
                        c2 = '%';
                        i4 = 33;
                        if (i3 == 37 || i3 == 33) {
                        }
                        canvas2.translate(f16, fDp);
                        if (this.giftPremiumTitleLayout != null) {
                            canvas2.save();
                            canvas2.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumTitleLayout.getWidth()) / 2.0f, 0.0f);
                            this.giftPremiumTitleLayout.draw(canvas2);
                            canvas2.restore();
                            float height = this.giftPremiumTitleLayout.getHeight() + fDp;
                            if (this.giftPremiumSubtitleLayout != null) {
                                canvas2.save();
                                canvas2.translate(((this.giftRectSize - AndroidUtilities.dp(f)) - this.giftPremiumSubtitleLayout.getWidth()) / 2.0f, this.giftPremiumTitleLayout.getHeight() + AndroidUtilities.dp(4.0f));
                                this.giftPremiumSubtitleLayout.draw(canvas2);
                                canvas2.restore();
                                height += this.giftPremiumSubtitleLayout.getHeight() + AndroidUtilities.dp(10.0f);
                            }
                            fDp2 = height + AndroidUtilities.dp(messageObject.type == 25 ? 6.0f : 0.0f);
                        } else {
                            fDp2 = fDp - AndroidUtilities.dp(4.0f);
                        }
                        float fDp7 = fDp2;
                        canvas2.restore();
                        if (this.giftPremiumTitleLayout == null || (text2 = this.giftPremiumReleasedText) == null) {
                            i5 = i4;
                            f4 = 0.0f;
                        } else {
                            float width3 = text2.getWidth() + AndroidUtilities.dp(12.0f);
                            float fDp8 = (((this.giftRectSize - AndroidUtilities.dp(f)) - width3) / 2.0f) + f16;
                            float height2 = fDp + this.giftPremiumTitleLayout.getHeight() + AndroidUtilities.dp(f3);
                            if (this.giftReleasedBackgroundPaint == null) {
                                this.giftReleasedBackgroundPaint = new Paint(1);
                            }
                            this.giftReleasedBackgroundPaint.setColor(Theme.isCurrentThemeDark() ? 285212671 : 268435456);
                            RectF rectF2 = AndroidUtilities.rectTmp;
                            rectF2.set(fDp8, height2 - AndroidUtilities.dp(8.0f), width3 + fDp8, AndroidUtilities.dp(8.0f) + height2);
                            canvas2.drawRoundRect(rectF2, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), this.giftReleasedBackgroundPaint);
                            f4 = 0.0f;
                            i5 = 33;
                            this.giftPremiumReleasedText.draw(canvas, AndroidUtilities.dp(6.0f) + fDp8, height2, -855638017, 1.0f);
                            canvas2 = canvas;
                            fDp7 += AndroidUtilities.dp(24.0f);
                        }
                        float fDp9 = fDp7 + AndroidUtilities.dp(4.0f);
                        if (messageObject.type == 18) {
                            fDp9 += AndroidUtilities.dp(2.0f);
                        }
                        float f18 = fDp9;
                        canvas2.save();
                        canvas2.translate(f16, f18);
                        if (messageObject.type != i2) {
                            if (this.radialProgress.getTransitionProgress() == 1.0f) {
                                i6 = 4;
                                if (this.radialProgress.getIcon() == 4) {
                                    if (this.giftPremiumText != null) {
                                        canvas2.save();
                                        canvas2.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / 2.0f, f4);
                                        this.giftPremiumText.f1069x = f16 + ((this.giftRectSize - r3.layout.getWidth()) / 2.0f);
                                        this.giftPremiumText.f1070y = f18;
                                        int color = this.giftTextPaint.getColor();
                                        TextLayout textLayout2 = this.giftPremiumText;
                                        f6 = f4;
                                        f7 = 8.0f;
                                        f5 = 0.2f;
                                        SpoilerEffect.renderWithRipple(this, false, color, 0, textLayout2.patchedLayout, 1, textLayout2.layout, textLayout2.spoilers, canvas, false);
                                        TextLayout textLayout3 = this.giftPremiumText;
                                        f8 = 1.0f;
                                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout3.layout, textLayout3.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                        canvas2 = canvas;
                                        canvas2.restore();
                                        chatActionCell = this;
                                    } else {
                                        f6 = f4;
                                        f7 = 8.0f;
                                        f8 = 1.0f;
                                        f5 = 0.2f;
                                        chatActionCell = this;
                                    }
                                    canvas2.restore();
                                    if (chatActionCell.giftPremiumTitleLayout == null) {
                                        AndroidUtilities.dp(f7);
                                    }
                                    textLayout = chatActionCell.giftPremiumText;
                                    if (textLayout != null) {
                                        AndroidUtilities.lerp(chatActionCell.giftPremiumTextCollapsedHeight, textLayout.layout.getHeight(), f9);
                                    }
                                    staticLayout = chatActionCell.giftPremiumButtonLayout;
                                    if (staticLayout != null) {
                                        staticLayout.getHeight();
                                    }
                                    chatActionCell.getHeight();
                                    AndroidUtilities.dp(f7);
                                    resourcesProvider = chatActionCell.themeDelegate;
                                    if (resourcesProvider != null) {
                                        resourcesProvider.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX, chatActionCell.viewTop + AndroidUtilities.dp(4.0f));
                                    } else {
                                        Theme.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX, chatActionCell.viewTop + AndroidUtilities.dp(4.0f));
                                    }
                                    float scale = chatActionCell.bounce.getScale(0.02f);
                                    canvas2.save();
                                    canvas2.scale(scale, scale, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                    if (chatActionCell.giftPremiumButtonLayout != null) {
                                        canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), chatActionCell.getThemedPaint("paintChatActionBackgroundSelected"));
                                        if (chatActionCell.hasGradientService()) {
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), chatActionCell.getThemedPaint("paintChatActionBackgroundDarken"));
                                        }
                                        if (chatActionCell.dimAmount > f6) {
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), chatActionCell.dimPaint);
                                        }
                                        if (chatActionCell.getMessageObject().type == 31 || chatActionCell.getMessageObject().type == 37 || chatActionCell.getMessageObject().type == 33) {
                                            Theme.ResourcesProvider resourcesProvider2 = chatActionCell.themeDelegate;
                                            boolean zIsDark = resourcesProvider2 != null ? resourcesProvider2.isDark() : Theme.isCurrentThemeDark();
                                            int color2 = chatActionCell.dimPaint.getColor();
                                            chatActionCell.dimPaint.setColor(zIsDark ? 620756991 : 268435456);
                                            canvas2.drawRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), chatActionCell.dimPaint);
                                            chatActionCell.dimPaint.setColor(color2);
                                        }
                                        if (chatActionCell.getMessageObject().type != 31 && chatActionCell.getMessageObject().type != 37 && chatActionCell.getMessageObject().type != 33 && chatActionCell.getMessageObject().type != 21 && chatActionCell.getMessageObject().type != 22 && chatActionCell.getMessageObject().type != 24) {
                                            chatActionCell.starsPath.rewind();
                                            chatActionCell.starsPath.addRoundRect(chatActionCell.giftButtonRect, AndroidUtilities.dp(f), AndroidUtilities.dp(f), Path.Direction.CW);
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
                                        float f19 = chatActionCell.progressToProgress;
                                        if (f19 != f8) {
                                            chatActionCell.progressToProgress = f19 + 0.10666667f;
                                        } else if (!z) {
                                            float f20 = chatActionCell.progressToProgress;
                                            if (f20 != f6) {
                                                chatActionCell.progressToProgress = f20 - 0.10666667f;
                                            }
                                        }
                                        float fClamp = Utilities.clamp(chatActionCell.progressToProgress, f8, f6);
                                        chatActionCell.progressToProgress = fClamp;
                                        if (fClamp != f6) {
                                            if (chatActionCell.progressView == null) {
                                                chatActionCell.progressView = new RadialProgressView(chatActionCell.getContext());
                                            }
                                            int iDp2 = AndroidUtilities.dp(f);
                                            canvas2.save();
                                            float f21 = chatActionCell.progressToProgress;
                                            canvas2.scale(f21, f21, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                            chatActionCell.progressView.setSize(iDp2);
                                            chatActionCell.progressView.setProgressColor(Theme.getColor(Theme.key_chat_serviceText));
                                            chatActionCell.progressView.draw(canvas2, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                            canvas2.restore();
                                        }
                                        if (chatActionCell.progressToProgress != 1.0f && chatActionCell.giftPremiumButtonLayout != null) {
                                            canvas2.save();
                                            float f22 = 1.0f - chatActionCell.progressToProgress;
                                            canvas2.scale(f22, f22, chatActionCell.giftButtonRect.centerX(), chatActionCell.giftButtonRect.centerY());
                                            canvas2.translate(chatActionCell.giftButtonRect.centerX() - (chatActionCell.giftPremiumButtonLayout.getWidth() / 2.0f), chatActionCell.giftButtonRect.top + AndroidUtilities.dp(7.0f));
                                            chatActionCell.giftPremiumButtonLayout.draw(canvas2);
                                            canvas2.restore();
                                        }
                                        boolean z2 = messageObject.flickerLoading;
                                        LoadingDrawable loadingDrawable = chatActionCell.loadingDrawable;
                                        if (z2) {
                                            if (loadingDrawable == null) {
                                                LoadingDrawable loadingDrawable2 = new LoadingDrawable(chatActionCell.themeDelegate);
                                                chatActionCell.loadingDrawable = loadingDrawable2;
                                                loadingDrawable2.setGradientScale(2.0f);
                                                chatActionCell.loadingDrawable.setAppearByGradient(true);
                                                float f23 = f5;
                                                chatActionCell.loadingDrawable.setColors(Theme.multAlpha(-1, 0.08f), Theme.multAlpha(-1, f23), Theme.multAlpha(-1, f23), Theme.multAlpha(-1, 0.7f));
                                                chatActionCell.loadingDrawable.strokePaint.setStrokeWidth(AndroidUtilities.dp(1.0f));
                                            }
                                            chatActionCell.loadingDrawable.resetDisappear();
                                            chatActionCell.loadingDrawable.setBounds(chatActionCell.giftButtonRect);
                                            chatActionCell.loadingDrawable.setRadiiDp(f);
                                            chatActionCell.loadingDrawable.draw(canvas2);
                                        } else {
                                            float f24 = f;
                                            if (loadingDrawable != null) {
                                                loadingDrawable.setBounds(chatActionCell.giftButtonRect);
                                                chatActionCell.loadingDrawable.setRadiiDp(f24);
                                                chatActionCell.loadingDrawable.disappear();
                                                chatActionCell.loadingDrawable.draw(canvas2);
                                                if (chatActionCell.loadingDrawable.isDisappeared()) {
                                                    chatActionCell.loadingDrawable.reset();
                                                }
                                            }
                                        }
                                        canvas2.restore();
                                        if (chatActionCell.backgroundRect != null && chatActionCell.giftRibbonPath != null && chatActionCell.giftRibbonText != null) {
                                            Paint themedPaint = chatActionCell.getThemedPaint("paintChatActionBackground");
                                            Paint themedPaint2 = chatActionCell.getThemedPaint("paintChatActionBackgroundDarken");
                                            float fDp10 = (chatActionCell.backgroundRect.right - AndroidUtilities.dp(65.0f)) + AndroidUtilities.dp(2.0f);
                                            float fDp11 = chatActionCell.backgroundRect.top - AndroidUtilities.dp(2.0f);
                                            Theme.ResourcesProvider resourcesProvider3 = chatActionCell.themeDelegate;
                                            if (resourcesProvider3 != null) {
                                                resourcesProvider3.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX + fDp10, chatActionCell.viewTop + AndroidUtilities.dp(4.0f) + fDp11);
                                            } else {
                                                Theme.applyServiceShaderMatrix(chatActionCell.getMeasuredWidth(), chatActionCell.backgroundHeight, chatActionCell.viewTranslationX + fDp10, chatActionCell.viewTop + AndroidUtilities.dp(4.0f) + fDp11);
                                            }
                                            canvas2.save();
                                            canvas2.translate(fDp10, fDp11);
                                            ColorFilter colorFilter = themedPaint.getColorFilter();
                                            PathEffect pathEffect = themedPaint.getPathEffect();
                                            Theme.ResourcesProvider resourcesProvider4 = chatActionCell.themeDelegate;
                                            boolean zIsDark2 = resourcesProvider4 != null ? resourcesProvider4.isDark() : Theme.isCurrentThemeDark();
                                            if (chatActionCell.giftRibbonPaintFilter == null || chatActionCell.giftRibbonPaintFilterDark != zIsDark2) {
                                                ColorMatrix colorMatrix = new ColorMatrix();
                                                if ((themedPaint.getColorFilter() instanceof ColorMatrixColorFilter) && Build.VERSION.SDK_INT >= 26) {
                                                    ((ColorMatrixColorFilter) themedPaint.getColorFilter()).getColorMatrix(colorMatrix);
                                                }
                                                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, zIsDark2 ? 0.1f : -0.08f);
                                                AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, zIsDark2 ? 0.15f : 0.1f);
                                                chatActionCell.giftRibbonPaintFilter = new ColorMatrixColorFilter(colorMatrix);
                                                chatActionCell.giftRibbonPaintFilterDark = zIsDark2;
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
                                            canvas2.rotate(45.0f, AndroidUtilities.dp(40.43f), AndroidUtilities.dp(24.56f));
                                            chatActionCell.giftRibbonText.draw(canvas2, AndroidUtilities.dp(40.43f) - (chatActionCell.giftRibbonText.getCurrentWidth() / 2.0f), AndroidUtilities.dp(26.0f), -1, 1.0f);
                                            canvas2.restore();
                                        }
                                    }
                                }
                            } else {
                                i6 = 4;
                            }
                            f6 = f4;
                            f7 = 8.0f;
                            f8 = 1.0f;
                            int i18 = i5;
                            f5 = 0.2f;
                            if (this.settingWallpaperLayout == null) {
                                TextPaint textPaint5 = new TextPaint();
                                this.settingWallpaperPaint = textPaint5;
                                textPaint5.setTextSize(AndroidUtilities.dp(13.0f));
                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2807R.string.ActionSettingWallpaper));
                                int iIndexOf = spannableStringBuilder.toString().indexOf("...");
                                if (iIndexOf < 0) {
                                    iIndexOf = spannableStringBuilder.toString().indexOf("…");
                                    i8 = 1;
                                } else {
                                    i8 = 3;
                                }
                                if (iIndexOf >= 0) {
                                    SpannableString spannableString = new SpannableString("…");
                                    UploadingDotsSpannable uploadingDotsSpannable = new UploadingDotsSpannable();
                                    uploadingDotsSpannable.fixTop = true;
                                    uploadingDotsSpannable.setParent(this, false);
                                    spannableString.setSpan(uploadingDotsSpannable, 0, spannableString.length(), i18);
                                    spannableStringBuilder.replace(iIndexOf, iIndexOf + i8, (CharSequence) spannableString);
                                }
                                TextPaint textPaint6 = this.settingWallpaperPaint;
                                TextLayout textLayout4 = this.giftPremiumText;
                                this.settingWallpaperLayout = new StaticLayout(spannableStringBuilder, textPaint6, textLayout4 == null ? 1 : textLayout4.width, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                            }
                            float uploadingInfoProgress2 = getUploadingInfoProgress(messageObject);
                            if (this.settingWallpaperProgressTextLayout == null || this.settingWallpaperProgress != uploadingInfoProgress2) {
                                this.settingWallpaperProgress = uploadingInfoProgress2;
                                String str = ((int) (uploadingInfoProgress2 * 100.0f)) + "%";
                                TextPaint textPaint7 = this.giftTextPaint;
                                TextLayout textLayout5 = this.giftPremiumText;
                                this.settingWallpaperProgressTextLayout = new StaticLayout(str, textPaint7, textLayout5 == null ? 1 : textLayout5.width, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                            }
                            this.settingWallpaperPaint.setColor(this.giftTextPaint.getColor());
                            if (this.radialProgress.getIcon() == i6) {
                                float transitionProgress = this.radialProgress.getTransitionProgress();
                                int color3 = this.giftTextPaint.getColor();
                                float f25 = 1.0f - transitionProgress;
                                this.settingWallpaperPaint.setAlpha((int) (Color.alpha(color3) * f25));
                                this.giftTextPaint.setAlpha((int) (Color.alpha(color3) * transitionProgress));
                                TextPaint textPaint8 = this.giftTextPaint;
                                textPaint8.linkColor = textPaint8.getColor();
                                if (this.giftPremiumText != null) {
                                    float f26 = (transitionProgress * 0.2f) + 0.8f;
                                    canvas2.save();
                                    canvas2.scale(f26, f26, this.giftRectSize / 2.0f, this.giftPremiumText.layout.getHeight() / 2.0f);
                                    canvas2.translate((this.giftRectSize - this.giftPremiumText.layout.getWidth()) / 2.0f, f6);
                                    this.giftPremiumText.f1069x = f16 + ((this.giftRectSize - r0.layout.getWidth()) / 2.0f);
                                    this.giftPremiumText.f1070y = f18;
                                    int color4 = this.giftTextPaint.getColor();
                                    TextLayout textLayout6 = this.giftPremiumText;
                                    i7 = color3;
                                    SpoilerEffect.renderWithRipple(this, false, color4, 0, textLayout6.patchedLayout, 1, textLayout6.layout, textLayout6.spoilers, canvas, false);
                                    TextLayout textLayout7 = this.giftPremiumText;
                                    chatActionCell2 = this;
                                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout7.layout, textLayout7.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(this.giftTextPaint.getColor()));
                                    canvas2 = canvas;
                                    canvas2.restore();
                                } else {
                                    chatActionCell2 = this;
                                    i7 = color3;
                                }
                                chatActionCell2.giftTextPaint.setAlpha((int) (Color.alpha(i7) * f25));
                                TextPaint textPaint9 = chatActionCell2.giftTextPaint;
                                textPaint9.linkColor = textPaint9.getColor();
                                float f27 = (f25 * 0.2f) + 0.8f;
                                canvas2.save();
                                canvas2.scale(f27, f27, chatActionCell2.giftRectSize / 2.0f, chatActionCell2.settingWallpaperLayout.getHeight() / 2.0f);
                                canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperLayout.getWidth()) / 2.0f, f6);
                                SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperLayout, canvas2);
                                canvas2.restore();
                                canvas2.save();
                                canvas2.translate(f6, chatActionCell2.settingWallpaperLayout.getHeight() + AndroidUtilities.dp(4.0f));
                                canvas2.scale(f27, f27, chatActionCell2.giftRectSize / 2.0f, chatActionCell2.settingWallpaperProgressTextLayout.getHeight() / 2.0f);
                                canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperProgressTextLayout.getWidth()) / 2.0f, f6);
                                SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperProgressTextLayout, canvas2);
                                canvas2.restore();
                                chatActionCell2.giftTextPaint.setColor(i7);
                                chatActionCell2.giftTextPaint.linkColor = i7;
                            } else {
                                chatActionCell2 = this;
                                canvas2.save();
                                canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperLayout.getWidth()) / 2.0f, f6);
                                chatActionCell2.settingWallpaperLayout.draw(canvas2);
                                canvas2.restore();
                                canvas2.save();
                                canvas2.translate((chatActionCell2.giftRectSize - chatActionCell2.settingWallpaperProgressTextLayout.getWidth()) / 2.0f, chatActionCell2.settingWallpaperLayout.getHeight() + AndroidUtilities.dp(4.0f));
                                SpoilerEffect.layoutDrawMaybe(chatActionCell2.settingWallpaperProgressTextLayout, canvas2);
                                canvas2.restore();
                            }
                            chatActionCell = chatActionCell2;
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
                            AndroidUtilities.dp(f7);
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
                        } else {
                            chatActionCell2 = this;
                            f5 = 0.2f;
                            f6 = f4;
                            f7 = 8.0f;
                            f8 = 1.0f;
                            TextLayout textLayout8 = chatActionCell2.giftPremiumText;
                            if (textLayout8 != null) {
                                float height3 = textLayout8.layout.getHeight();
                                if (f9 < 1.0f) {
                                    height3 = AndroidUtilities.lerp(chatActionCell2.giftPremiumTextCollapsedHeight, height3, f9);
                                    RectF rectF3 = AndroidUtilities.rectTmp;
                                    rectF3.set(f6, -AndroidUtilities.dp(20.0f), chatActionCell2.getWidth(), height3);
                                    canvas2.saveLayerAlpha(rectF3, 255, 31);
                                } else {
                                    canvas2.save();
                                }
                                canvas2.translate(((chatActionCell2.giftRectSize - AndroidUtilities.dp(f)) - chatActionCell2.giftPremiumText.layout.getWidth()) / 2.0f, f6);
                                chatActionCell2.giftPremiumText.f1069x = f16 + (((chatActionCell2.giftRectSize - AndroidUtilities.dp(f)) - chatActionCell2.giftPremiumText.layout.getWidth()) / 2.0f);
                                TextLayout textLayout9 = chatActionCell2.giftPremiumText;
                                textLayout9.f1070y = f18;
                                int color5 = textLayout9.paint.getColor();
                                TextLayout textLayout10 = chatActionCell2.giftPremiumText;
                                float f28 = height3;
                                SpoilerEffect.renderWithRipple(chatActionCell2, false, color5, 0, textLayout10.patchedLayout, 1, textLayout10.layout, textLayout10.spoilers, canvas, false);
                                TextLayout textLayout11 = chatActionCell2.giftPremiumText;
                                chatActionCell = chatActionCell2;
                                AnimatedEmojiSpan.drawAnimatedEmojis(canvas, textLayout11.layout, textLayout11.emoji, 0.0f, null, 0.0f, 0.0f, 0.0f, 1.0f, chatActionCell2.getAdaptiveEmojiColorFilter(chatActionCell2.giftTextPaint.getColor()));
                                canvas2 = canvas;
                                if (f9 < 1.0f && chatActionCell.giftPremiumTextMore != null) {
                                    canvas2.save();
                                    if (chatActionCell.giftPremiumTextClip == null) {
                                        chatActionCell.giftPremiumTextClip = new GradientClip();
                                    }
                                    canvas2.translate((-((chatActionCell.giftRectSize - AndroidUtilities.dp(f)) - chatActionCell.giftPremiumText.layout.getWidth())) / 2.0f, f6);
                                    RectF rectF4 = AndroidUtilities.rectTmp;
                                    rectF4.set((chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.dp(8.0f), (chatActionCell.giftPremiumTextMoreY - chatActionCell.giftPremiumTextMoreH) - AndroidUtilities.dp(6.0f), chatActionCell.giftPremiumTextMoreX + AndroidUtilities.dp(6.0f), chatActionCell.giftPremiumTextMoreY);
                                    float f29 = 1.0f - f9;
                                    chatActionCell.giftPremiumTextClip.clipOut(canvas2, rectF4, f29);
                                    rectF4.set((chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) - AndroidUtilities.dp(f), (chatActionCell.giftPremiumTextMoreY - chatActionCell.giftPremiumTextMoreH) - AndroidUtilities.dp(6.0f), (chatActionCell.giftPremiumTextMoreX - chatActionCell.giftPremiumTextMore.getCurrentWidth()) + AndroidUtilities.dp(8.0f), chatActionCell.giftPremiumTextMoreY);
                                    chatActionCell.giftPremiumTextClip.draw(canvas2, rectF4, 2, f29);
                                    rectF4.set(f6, f28 - AndroidUtilities.dp(12.0f), chatActionCell.getWidth(), f28);
                                    chatActionCell.giftPremiumTextClip.draw(canvas2, rectF4, 3, f29 * 4.0f * (1.0f - f29));
                                    canvas2.restore();
                                }
                                canvas2.restore();
                                if (f9 < 1.0f && (text = chatActionCell.giftPremiumTextMore) != null) {
                                    text.draw(canvas2, (chatActionCell.giftPremiumTextMoreX - text.getCurrentWidth()) + AndroidUtilities.dp(5.0f), (chatActionCell.giftPremiumTextMoreY - (chatActionCell.giftPremiumTextMoreH / 2.0f)) - AndroidUtilities.dp(1.0f), chatActionCell.giftPremiumText.paint.getColor(), 1.0f - f9);
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
                            AndroidUtilities.dp(f7);
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
                    } else {
                        i4 = 33;
                        c2 = '%';
                    }
                    fDp -= AndroidUtilities.dp(3.66f);
                    canvas2.translate(f16, fDp);
                    if (this.giftPremiumTitleLayout != null) {
                    }
                    float fDp72 = fDp2;
                    canvas2.restore();
                    if (this.giftPremiumTitleLayout == null) {
                        i5 = i4;
                        f4 = 0.0f;
                        float fDp92 = fDp72 + AndroidUtilities.dp(4.0f);
                        if (messageObject.type == 18) {
                        }
                        float f182 = fDp92;
                        canvas2.save();
                        canvas2.translate(f16, f182);
                        if (messageObject.type != i2) {
                        }
                    }
                }
            }
            fDp += iDp;
            i3 = messageObject.type;
            if (i3 == 31) {
            }
            fDp -= AndroidUtilities.dp(3.66f);
            canvas2.translate(f16, fDp);
            if (this.giftPremiumTitleLayout != null) {
            }
            float fDp722 = fDp2;
            canvas2.restore();
            if (this.giftPremiumTitleLayout == null) {
            }
        }
        chatActionCell.drawReactions(canvas2, false, null);
        chatActionCell.transitionParams.recordDrawingState();
        canvas2.restore();
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
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
        int iDp;
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
                this.overrideTextPaint.setTextSize(AndroidUtilities.dp(Math.max(16, SharedConfig.fontSize) - 2));
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
            int iDp2 = AndroidUtilities.dp(11.0f);
            int iDp3 = AndroidUtilities.dp(8.0f);
            int i7 = 0;
            int i8 = 0;
            while (i7 < lineCount) {
                boolean z3 = z2;
                int iCeil = (int) Math.ceil(this.textLayout.getLineWidth(i7));
                if (i7 == 0 || (i5 = i8 - iCeil) <= 0) {
                    f8 = f9;
                } else {
                    f8 = f9;
                    if (i5 <= (iDp2 * 1.5f) + iDp3) {
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
                int iIntValue2 = this.lineWidths.get(i9).intValue();
                int i10 = i8 - iIntValue2;
                if (i10 <= 0 || i10 > (iDp2 * 1.5f) + iDp3) {
                    i8 = iIntValue2;
                }
                this.lineWidths.set(i9, Integer.valueOf(i8));
            }
            int iDp4 = AndroidUtilities.dp(4.0f);
            int measuredWidth = getMeasuredWidth() / 2;
            int iDp5 = AndroidUtilities.dp(3.0f);
            int iDp6 = AndroidUtilities.dp(6.0f);
            int i11 = iDp2 - iDp5;
            f2 = 4.0f;
            this.lineHeights.clear();
            this.backgroundPath.reset();
            f4 = 2.0f;
            float f10 = measuredWidth;
            this.backgroundPath.moveTo(f10, iDp4);
            int i12 = 0;
            int i13 = 0;
            while (i12 < lineCount) {
                int iIntValue3 = this.lineWidths.get(i12).intValue();
                int i14 = i13;
                int lineBottom = this.textLayout.getLineBottom(i12);
                int i15 = lineCount - 1;
                float f11 = f10;
                if (i12 < i15) {
                    i2 = lineCount;
                    iIntValue = this.lineWidths.get(i12 + 1).intValue();
                } else {
                    i2 = lineCount;
                    iIntValue = 0;
                }
                int iDp7 = lineBottom - i14;
                if (i12 == 0 || iIntValue3 > i8) {
                    iDp7 += AndroidUtilities.dp(3.0f);
                }
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    iDp7 += AndroidUtilities.dp(3.0f);
                }
                int i16 = iDp7;
                float f12 = f11 + (iIntValue3 / 2.0f);
                int i17 = (i12 == i15 || iIntValue3 >= iIntValue || i12 == 0 || iIntValue3 >= i8) ? iDp3 : iDp6;
                if (i12 == 0 || iIntValue3 > i8) {
                    paint3 = themedPaint2;
                    f7 = f12;
                    i3 = iDp3;
                    i4 = iDp6;
                    this.rect.set((f7 - iDp5) - iDp2, iDp4, f7 + i11, (iDp2 * 2) + iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, 90.0f);
                } else if (iIntValue3 < i8) {
                    f7 = f12;
                    i3 = iDp3;
                    float f13 = f7 + i11;
                    i4 = iDp6;
                    paint3 = themedPaint2;
                    this.rect.set(f13, iDp4, (i17 * 2) + f13, r1 + iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, -90.0f, -90.0f);
                } else {
                    paint3 = themedPaint2;
                    f7 = f12;
                    i3 = iDp3;
                    i4 = iDp6;
                }
                iDp4 += i16;
                if (i12 == i15 || iIntValue3 >= iIntValue) {
                    iDp = i16;
                } else {
                    iDp4 -= AndroidUtilities.dp(3.0f);
                    iDp = i16 - AndroidUtilities.dp(3.0f);
                }
                if (i12 != 0 && iIntValue3 < i8) {
                    iDp4 -= AndroidUtilities.dp(3.0f);
                    iDp -= AndroidUtilities.dp(3.0f);
                }
                this.lineHeights.add(Integer.valueOf(iDp));
                if (i12 == i15 || iIntValue3 > iIntValue) {
                    this.rect.set((f7 - iDp5) - iDp2, iDp4 - (iDp2 * 2), f7 + i11, iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 0.0f, 90.0f);
                } else if (iIntValue3 < iIntValue) {
                    float f14 = f7 + i11;
                    this.rect.set(f14, iDp4 - r3, (i17 * 2) + f14, iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 180.0f, -90.0f);
                }
                i12++;
                i8 = iIntValue3;
                i13 = lineBottom;
                f10 = f11;
                lineCount = i2;
                iDp3 = i3;
                iDp6 = i4;
                themedPaint2 = paint3;
            }
            paint = themedPaint2;
            float f15 = f10;
            int i18 = iDp3;
            int i19 = iDp6;
            int i20 = lineCount - 1;
            int i21 = i20;
            while (i21 >= 0) {
                int iIntValue4 = i21 != 0 ? this.lineWidths.get(i21 - 1).intValue() : 0;
                int iIntValue5 = this.lineWidths.get(i21).intValue();
                int iIntValue6 = i21 != i20 ? this.lineWidths.get(i21 + 1).intValue() : 0;
                this.textLayout.getLineBottom(i21);
                float f16 = measuredWidth - (iIntValue5 / 2);
                int i22 = (i21 == i20 || iIntValue5 >= iIntValue6 || i21 == 0 || iIntValue5 >= iIntValue4) ? i18 : i19;
                if (i21 == i20 || iIntValue5 > iIntValue6) {
                    f6 = f16;
                    this.rect.set(f6 - i11, iDp4 - (iDp2 * 2), f6 + iDp5 + iDp2, iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, 90.0f);
                } else if (iIntValue5 < iIntValue6) {
                    float f17 = f16 - i11;
                    f6 = f16;
                    this.rect.set(f17 - (i22 * 2), iDp4 - r14, f17, iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 90.0f, -90.0f);
                } else {
                    f6 = f16;
                }
                iDp4 -= this.lineHeights.get(i21).intValue();
                if (i21 == 0 || iIntValue5 > iIntValue4) {
                    this.rect.set(f6 - i11, iDp4, f6 + iDp5 + iDp2, (iDp2 * 2) + iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 180.0f, 90.0f);
                } else if (iIntValue5 < iIntValue4) {
                    float f18 = f6 - i11;
                    this.rect.set(f18 - (i22 * 2), iDp4, f18, r10 + iDp4);
                    checkLeftRightBounds();
                    this.backgroundPath.arcTo(this.rect, 0.0f, -90.0f);
                }
                i21--;
            }
            this.backgroundPath.close();
            if (isMessageActionSuggestedPostApproval() && !isNewStyleButtonLayout()) {
                this.rect.left = (f15 - (this.textWidth / 2.0f)) - AndroidUtilities.dp(17.0f);
                RectF rectF = this.rect;
                rectF.top = iDp4;
                rectF.right = f15 + (this.textWidth / 2.0f) + AndroidUtilities.dp(17.0f);
                this.rect.bottom = iDp4 + this.textHeight + this.titleHeight + AndroidUtilities.dp(28.0f);
                this.backgroundPath.reset();
                this.backgroundPath.addRoundRect(this.rect, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(15.0f), Path.Direction.CW);
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
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(f2));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(f2));
        }
        if (!z || getAlpha() == 1.0f) {
            paint2 = paint;
            alpha = -1;
            alpha2 = -1;
        } else {
            alpha = themedPaint.getAlpha();
            alpha2 = paint.getAlpha();
            themedPaint.setAlpha((int) (alpha * getAlpha()));
            paint2 = paint;
            paint2.setAlpha((int) (alpha2 * getAlpha()));
        }
        MessageObject messageObject = this.currentMessageObject;
        if (messageObject == null || !messageObject.isRepostPreview) {
            canvas2 = canvas;
            canvas2.drawPath(this.backgroundPath, themedPaint);
            if (hasGradientService() && paint2.getAlpha() > 0) {
                canvas2.drawPath(this.backgroundPath, paint2);
            }
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
        }
        if (hasWalletActionLayout()) {
            float width = (getWidth() - this.walletActionLayout.getWidth()) / f4;
            float walletActionTop = getWalletActionTop();
            this.walletActionRect.set(width, walletActionTop, this.walletActionLayout.getWidth() + width, this.walletActionLayout.getHeight() + walletActionTop);
            canvas2.save();
            this.walletActionLayout.applyCardTransform(canvas2, width, walletActionTop);
            canvas2.drawRoundRect(this.walletActionRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), themedPaint);
            if (hasGradientService() && paint2.getAlpha() > 0) {
                canvas2.drawRoundRect(this.walletActionRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), paint2);
            }
            f5 = 0.0f;
            if (this.dimAmount > 0.0f) {
                int alpha4 = this.dimPaint.getAlpha();
                if (z) {
                    this.dimPaint.setAlpha((int) (alpha4 * getAlpha()));
                }
                canvas2.drawRoundRect(this.walletActionRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), this.dimPaint);
                this.dimPaint.setAlpha(alpha4);
            }
            canvas2.restore();
        } else {
            f5 = 0.0f;
        }
        MessageObject messageObject2 = this.currentMessageObject;
        if (hasStarGiftLayout()) {
            float width2 = this.starGiftLayout.getWidth() + AndroidUtilities.dp(f);
            float width3 = (getWidth() - width2) / f4;
            float fDp = this.starGiftLayout.repost ? f5 : this.textY + this.textHeight + AndroidUtilities.dp(12.0f);
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.set(width3, fDp, width2 + width3, this.starGiftLayout.getHeight() + fDp + AndroidUtilities.dp(f));
            if (this.backgroundRect == null) {
                this.backgroundRect = new RectF();
            }
            this.backgroundRect.set(rectF2);
            canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), themedPaint);
            if (hasGradientService()) {
                canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), paint2);
            }
        } else {
            SuggestBirthdayActionLayout suggestBirthdayActionLayout = this.birthdayLayout;
            if (suggestBirthdayActionLayout != null) {
                float fWidth = suggestBirthdayActionLayout.width();
                float fHeight = this.birthdayLayout.height();
                float width4 = (getWidth() - fWidth) / f4;
                if (this.backgroundRect == null) {
                    this.backgroundRect = new RectF();
                }
                this.backgroundRect.set(width4, AndroidUtilities.dp(f2), fWidth + width4, AndroidUtilities.dp(f2) + fHeight);
                canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), themedPaint);
                if (hasGradientService()) {
                    canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), paint2);
                }
            } else if (isButtonLayout(messageObject2)) {
                float width5 = (getWidth() - this.giftRectSize) / f4;
                float f19 = this.textY + this.textHeight;
                if (isNewStyleButtonLayout()) {
                    float fDp2 = f19 + AndroidUtilities.dp(f2);
                    AndroidUtilities.rectTmp.set(width5, fDp2, this.giftRectSize + width5, this.backgroundRectHeight + fDp2);
                } else {
                    float fDp3 = f19 + AndroidUtilities.dp(12.0f);
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    int i23 = this.giftRectSize;
                    rectF3.set(width5, fDp3, i23 + width5, i23 + fDp3 + this.giftPremiumAdditionalHeight);
                }
                if (messageObject2 != null && messageObject2.type == 18 && !this.giftPremiumTextCollapsed && (textLayout = this.giftPremiumText) != null && this.giftPremiumTextCollapsedHeight > 0) {
                    AndroidUtilities.rectTmp.bottom -= (textLayout.layout.getHeight() - this.giftPremiumTextCollapsedHeight) * (1.0f - this.giftPremiumTextExpandedAnimated.get());
                }
                if (this.backgroundRect == null) {
                    this.backgroundRect = new RectF();
                }
                this.backgroundRect.set(AndroidUtilities.rectTmp);
                if (messageObject2 != null && (((i = messageObject2.type) == 33 || i == 35) && this.botInlineButtons != null)) {
                    Arrays.fill(this.radii, AndroidUtilities.dp(16.0f));
                    float[] fArr = this.radii;
                    float fDp4 = AndroidUtilities.dp(f3);
                    fArr[7] = fDp4;
                    fArr[6] = fDp4;
                    fArr[5] = fDp4;
                    fArr[4] = fDp4;
                    this.backgroundPath2.rewind();
                    this.backgroundPath2.addRoundRect(this.backgroundRect, this.radii, Path.Direction.CW);
                    canvas2.drawPath(this.backgroundPath2, themedPaint);
                    if (hasGradientService()) {
                        canvas2.drawPath(this.backgroundPath2, paint2);
                    }
                } else {
                    canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), themedPaint);
                    if (hasGradientService()) {
                        canvas2.drawRoundRect(this.backgroundRect, AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), paint2);
                    }
                }
            }
        }
        if (alpha >= 0) {
            themedPaint.setAlpha(alpha);
            paint2.setAlpha(alpha2);
        }
    }

    private void drawBotButtons(Canvas canvas, ArrayList<BotButton> arrayList) {
        float f;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        float f2 = 4.0f;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        float f3 = 2.0f;
        float width = (getWidth() - this.giftRectSize) / 2.0f;
        float fDp = this.textY + this.textHeight + AndroidUtilities.dp(4.0f) + this.backgroundRectHeight + AndroidUtilities.dp(4.0f);
        float fDp2 = (this.giftRectSize - AndroidUtilities.dp(4.0f)) / 2.0f;
        int i = 0;
        while (i < arrayList.size()) {
            BotButton botButton = arrayList.get(i);
            float pressScale = botButton.getPressScale();
            float fDp3 = ((AndroidUtilities.dp(f2) + fDp2) * i) + width;
            float f4 = fDp3 + fDp2;
            this.rect.set(fDp3, fDp, f4, botButton.height + fDp);
            canvas.save();
            if (pressScale != 1.0f) {
                f = f2;
                canvas.scale(pressScale, pressScale, this.rect.centerX(), this.rect.centerY());
            } else {
                f = f2;
            }
            Arrays.fill(this.botButtonRadii, AndroidUtilities.dp(Math.min(6.75f, SharedConfig.bubbleRadius)));
            if (botButton.hasPositionFlag(9)) {
                float[] fArr = this.botButtonRadii;
                float fDp4 = AndroidUtilities.dp(SharedConfig.bubbleRadius);
                fArr[7] = fDp4;
                fArr[6] = fDp4;
            }
            if (botButton.hasPositionFlag(10)) {
                float[] fArr2 = this.botButtonRadii;
                float fDp5 = AndroidUtilities.dp(SharedConfig.bubbleRadius);
                fArr2[5] = fDp5;
                fArr2[4] = fDp5;
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
                int i2 = (int) fDp;
                drawable.setBounds((int) fDp3, i2, (int) f4, botButton.height + i2);
                botButton.selectorDrawable.setAlpha(255);
                botButton.selectorDrawable.draw(canvas);
            }
            canvas.restore();
            canvas.save();
            float fDp6 = botButton.iconDrawable != null ? AndroidUtilities.dp(26.0f) : 0;
            float width2 = fDp3 + (((fDp2 - (botButton.title.getWidth() + (botButton.iconDrawable != null ? AndroidUtilities.dp(f) : 0))) - fDp6) / f5);
            Drawable drawable2 = botButton.iconDrawable;
            if (drawable2 != null) {
                int i3 = (int) width2;
                drawable2.setBounds(i3, (int) (((botButton.height - AndroidUtilities.dp(24.0f)) / f5) + fDp), i3 + AndroidUtilities.dp(24.0f), ((int) (((botButton.height - AndroidUtilities.dp(24.0f)) / f5) + fDp)) + AndroidUtilities.dp(24.0f));
                botButton.iconDrawable.setAlpha(botButton.isLocked ? 128 : 255);
                botButton.iconDrawable.draw(canvas);
                width2 += fDp6;
            }
            botButton.title.ellipsize(Math.max(1, (((int) fDp2) - AndroidUtilities.dp(15.0f)) - r4));
            botButton.title.draw(canvas, width2, (AndroidUtilities.dp(40.0f) / f5) + fDp, botButton.isLocked ? 0.5f : 1.0f);
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
        float fDp = this.textY + this.textHeight + AndroidUtilities.dp(4.0f) + this.backgroundRectHeight + AndroidUtilities.dp(4.0f);
        float fDp2 = (this.giftRectSize - AndroidUtilities.dp(4.0f)) / 2.0f;
        if (motionEvent.getAction() == 0) {
            this.pressedBotButton = -1;
            for (int i2 = 0; i2 < this.botButtons.size(); i2++) {
                BotButton botButton = this.botButtons.get(i2);
                float fDp3 = ((AndroidUtilities.dp(4.0f) + fDp2) * i2) + width;
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(fDp3, fDp, fDp3 + fDp2, botButton.height + fDp);
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
                BotButton botButton2 = this.botButtons.get(this.pressedBotButton);
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
            BotButton botButton3 = this.botButtons.get(i);
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
        int i = buttonCustom.id;
        if (i == 5) {
            ChatActionCellDelegate chatActionCellDelegate = this.delegate;
            final BaseFragment baseFragment = chatActionCellDelegate != null ? chatActionCellDelegate.getBaseFragment() : null;
            if (baseFragment == null || this.currentMessageObject == null) {
                return;
            }
            AlertsCreator.showSimpleConfirmAlert(baseFragment, LocaleController.getString(C2807R.string.GiftOfferRejectConfirmTitle), AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.GiftOfferRejectConfirmText, DialogObject.getShortName(this.currentMessageObject.getDialogId()))), LocaleController.getString(C2807R.string.GiftOfferRejectConfirmConfirm), true, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didPressCustomBotButton$10(baseFragment);
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
                AlertsCreator.showSimpleConfirmAlert(baseFragment2, LocaleController.getString(tL_messageActionNoForwardsRequest.prev_value ? C2807R.string.SharingOfferDisableCancelTitle : C2807R.string.SharingOfferEnableCancelTitle), LocaleController.getString(tL_messageActionNoForwardsRequest.prev_value ? C2807R.string.SharingOfferDisableCancelText : C2807R.string.SharingOfferEnableCancelText), LocaleController.getString(C2807R.string.SharingOfferCancelYes), false, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didPressCustomBotButton$11(tL_messageActionNoForwardsRequest);
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
                AlertsCreator.showSimpleConfirmAlert(baseFragment3, LocaleController.getString(tL_messageActionNoForwardsRequest2.new_value ? C2807R.string.SharingOfferDisableCancelTitle : C2807R.string.SharingOfferEnableCancelTitle), LocaleController.getString(tL_messageActionNoForwardsRequest2.new_value ? C2807R.string.SharingOfferDisableConfirmText : C2807R.string.SharingOfferEnableConfirmText), LocaleController.getString(C2807R.string.SharingOfferCancelYes), false, new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didPressCustomBotButton$12(tL_messageActionNoForwardsRequest2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$10(final BaseFragment baseFragment) {
        TL_payments.TL_resolveStarGiftOffer tL_resolveStarGiftOffer = new TL_payments.TL_resolveStarGiftOffer();
        tL_resolveStarGiftOffer.offer_msg_id = getMessageObject().getId();
        tL_resolveStarGiftOffer.decline = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_resolveStarGiftOffer, new Utilities.Callback2() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$didPressCustomBotButton$9(baseFragment, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$9(final BaseFragment baseFragment, TLRPC.Updates updates, final TLRPC.TL_error tL_error) {
        if (updates != null) {
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
        }
        if (tL_error != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    BulletinFactory.of(baseFragment).showForError(tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$11(TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest) {
        MessagesController.getInstance(this.currentAccount).toggleChatNoForwards(this.currentMessageObject.getDialogId(), this.currentMessageObject.getId(), tL_messageActionNoForwardsRequest.prev_value, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didPressCustomBotButton$12(TLRPC.TL_messageActionNoForwardsRequest tL_messageActionNoForwardsRequest) {
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
        if (alpha <= 0.0f) {
            return;
        }
        Theme.ResourcesProvider resourcesProvider = this.themeDelegate;
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
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
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
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

    @Override // org.telegram.ui.Cells.BaseCell
    public int getBoundsLeft() {
        if (hasStarGiftLayout()) {
            int width = ((int) (getWidth() - (this.starGiftLayout.getWidth() + AndroidUtilities.dp(8.0f)))) / 2;
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

    @Override // org.telegram.ui.Cells.BaseCell
    public int getBoundsRight() {
        if (hasStarGiftLayout()) {
            int width = ((int) (getWidth() + (this.starGiftLayout.getWidth() + AndroidUtilities.dp(8.0f)))) / 2;
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
        accessibilityNodeInfo.setText(this.accessibilityText);
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

    public Paint getThemedPaint(String str) {
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
        if (hasStarGiftLayout()) {
            canvas.save();
            canvas.translate((getWidth() - this.starGiftLayout.getWidth()) / 2.0f, this.starGiftLayout.repost ? AndroidUtilities.dp(4.0f) : this.textY + this.textHeight + AndroidUtilities.dp(16.0f));
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

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
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
    public boolean verifyDrawable(Drawable drawable) {
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
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
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
            resourcesProvider.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        } else {
            Theme.applyServiceShaderMatrix(getMeasuredWidth(), this.backgroundHeight, this.viewTranslationX, this.viewTop + AndroidUtilities.dp(4.0f));
        }
        this.reactionsLayoutInBubble.setScrimProgress(f);
        this.reactionsLayoutInBubble.drawPreview(view, canvas, i, num);
    }

    public boolean checkUnreadReactions(float f, int i) {
        if (!this.reactionsLayoutInBubble.hasUnreadReactions) {
            return false;
        }
        float y = getY();
        float f2 = y + r3.f1159y;
        return f2 > f && (f2 + ((float) this.reactionsLayoutInBubble.height)) - ((float) AndroidUtilities.dp(16.0f)) < ((float) i);
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
