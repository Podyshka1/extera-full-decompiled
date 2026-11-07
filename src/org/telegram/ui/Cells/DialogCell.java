package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ReplacementSpan;
import android.text.style.StyleSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.collection.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.AvatarCornerType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.function.ToIntFunction;
import me.vkryl.android.animator.BoolAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.DialogsAdapter;
import org.telegram.ui.AvatarSpan;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.ShareDialogCell;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BubbleCounterPath;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CanvasButton;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DialogCellTags;
import org.telegram.ui.Components.EmptyStubSpan;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.PhotoBubbleClip;
import org.telegram.ui.Components.Premium.PremiumGradient;
import org.telegram.ui.Components.PullForegroundDrawable;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Components.StatusDrawable;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TimerDrawable;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanNoUnderlineBold;
import org.telegram.ui.Components.VectorAvatarThumbDrawable;
import org.telegram.ui.Components.dialogs.DialogMediaIconsHelper;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.FilterCreateActivity;
import org.telegram.ui.RightSlidingDialogContainer;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesListPlaceProvider;
import org.telegram.ui.Stories.StoriesUtilities;
import org.telegram.ui.Stories.StoryViewer;
import org.telegram.ui.community.CommunityArrowDrawable;
import org.telegram.ui.community.CommunitySheet;
import org.telegram.utils.code.highlight.CodeHighlighting;

/* JADX INFO: loaded from: classes3.dex */
public class DialogCell extends BaseCell implements StoriesListPlaceProvider.AvatarOverlaysView, Theme.Colorable {
    private int[] adaptiveEmojiColor;
    private ColorFilter[] adaptiveEmojiColorFilter;
    public int addForumHeightForTags;
    public int addHeightForTags;
    private boolean allowBotOpenButton;
    private int animateFromStatusDrawableParams;
    private int animateToStatusDrawableParams;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack2;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStack3;
    private AnimatedEmojiSpan.EmojiGroupedSpans animatedEmojiStackName;
    private boolean animatingArchiveAvatar;
    private float animatingArchiveAvatarProgress;
    private BoolAnimator animatorPollVotesMentionVisible;
    private boolean applyName;
    private float archiveBackgroundProgress;
    private GradientDrawable archiveFadeGradientDrawable;
    private int archiveFadeGradientDrawableColor;
    private boolean archiveHidden;
    protected PullForegroundDrawable archivedChatsDrawable;
    private boolean attachedToWindow;
    private AvatarDrawable avatarDrawable;
    public ImageReceiver avatarImage;
    public int avatarStart;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable botVerification;
    private final View botVerificationView;
    private int bottomClip;
    private PhotoBubbleClip bubbleClip;
    private Paint buttonBackgroundPaint;
    private boolean buttonCreated;
    private StaticLayout buttonLayout;
    private int buttonLeft;
    private int buttonTop;
    CanvasButton canvasButton;
    public boolean channelShouldUseLineWidth;
    private TLRPC.Chat chat;
    private float chatCallProgress;
    protected CheckBox2 checkBox;
    private int checkDrawLeft;
    private int checkDrawLeft1;
    private int checkDrawTop;
    public float chekBoxPaddingTop;
    private boolean clearingDialog;
    private float clipProgress;
    private int clockDrawLeft;
    public float collapseOffset;
    public boolean collapsed;
    private CommunityArrowDrawable communityArrowDrawable;
    private float cornerProgress;
    private StaticLayout countAnimationInLayout;
    private boolean countAnimationIncrement;
    private StaticLayout countAnimationStableLayout;
    private ValueAnimator countAnimator;
    private float countChangeProgress;
    private StaticLayout countLayout;
    private int countLeft;
    private int countLeftOld;
    private StaticLayout countOldLayout;
    private int countTop;
    private int countWidth;
    private int countWidthOld;
    private Paint counterPaintOutline;
    private Path counterPath;
    private RectF counterPathRect;
    private int currentAccount;
    private long currentDialogCommunityId;
    private int currentDialogFolderDialogsCount;
    private int currentDialogFolderId;
    private long currentDialogId;
    private int currentEditDate;
    private TextPaint currentMessagePaint;
    private float currentRevealBounceProgress;
    private float currentRevealProgress;
    private CustomDialog customDialog;
    private String customMessage;
    DialogCellDelegate delegate;
    private boolean dialogMuted;
    private float dialogMutedProgress;
    private int dialogsType;
    private TLRPC.DraftMessage draftMessage;
    private boolean draftVoice;
    public boolean drawArchive;
    public boolean drawAvatar;
    public boolean drawAvatarSelector;
    private boolean drawBadge;
    private boolean drawBotVerified;
    private boolean drawCheck1;
    private boolean drawCheck2;
    private boolean drawClock;
    private boolean drawCommunityAvatar;
    private boolean drawCount;
    private boolean drawCount2;
    private boolean drawError;
    private boolean drawForwardIcon;
    private boolean drawGiftIcon;
    private boolean drawGramTransfer;
    private boolean drawMention;
    public boolean drawMonoforumAvatar;
    private boolean drawNameLock;
    private boolean drawPin;
    private boolean drawPinBackground;
    private boolean drawPinForced;
    private boolean[] drawPlay;
    private boolean drawPollVotesMention;
    private boolean drawPremium;
    private boolean drawReactionMention;
    private boolean drawReorder;
    private boolean drawRevealBackground;
    private int drawScam;
    private boolean[] drawSpoiler;
    private boolean drawUnmute;
    private boolean drawVerified;
    private final AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable emojiStatus;
    private final View emojiStatusView;
    private TLRPC.EncryptedChat encryptedChat;
    private int errorLeft;
    private int errorTop;
    private Paint fadePaint;
    private Paint fadePaintBack;
    private int folderId;
    protected boolean forbidDraft;
    protected boolean forbidVerified;
    private ForumFormattedNames forumFormattedNames;
    public TLRPC.TL_forumTopic forumTopic;
    public boolean fullSeparator;
    public boolean fullSeparator2;
    private int gramTransferColor;
    private LayerDrawable gramTransferDrawable;
    private int gramTransferLeft;
    private ArrayList<MessageObject> groupMessages;
    private int halfCheckDrawLeft;
    private boolean hasCall;
    private boolean hasNameInMessage;
    private boolean hasUnmutedCommunityDialogs;
    private boolean hasUnmutedTopics;
    private boolean hasVideoThumb;
    public int heightDefault;
    public int heightThreeLines;
    public boolean inPreviewMode;
    private float innerProgress;
    public boolean insideCommunityList;
    public boolean insideCommunityListNoDialog;
    private BounceInterpolator interpolator;
    public boolean isDialogCell;
    public boolean isForChannelSubscriberCell;
    private boolean isForum;
    public boolean isHiddenInCommunity;
    public boolean isMonoForumTopicDialog;
    public boolean isSavedDialog;
    public boolean isSavedDialogCell;
    private boolean isSelected;
    private boolean isShareToStoryCell;
    private boolean isSliding;
    private boolean isTopic;
    public boolean isTransitionSupport;
    long lastDialogChangedTime;
    private int lastDrawSwipeMessageStringId;
    private RLottieDrawable lastDrawTranslationDrawable;
    private int lastMessageDate;
    private CharSequence lastMessageString;
    private CharSequence lastPrintString;
    private int lastSendState;
    int lastSize;
    private int lastStatusDrawableParams;
    private boolean lastTopicMessageUnread;
    private boolean lastUnreadState;
    private int lock2Left;
    private Drawable lockDrawable;
    private boolean markUnread;
    private int mentionCount;
    private StaticLayout mentionLayout;
    private int mentionLeft;
    private int mentionWidth;
    private MessageObject message;
    private final AvatarSpan messageAvatarSpan;
    private int messageId;
    private StaticLayout messageLayout;
    private int messageLeft;
    private StaticLayout messageNameLayout;
    private int messageNameLeft;
    private int messageNameTop;
    public int messagePaddingStart;
    private int messageTop;
    boolean moving;
    public int nameAdditionalsForChannelSubscriber;
    private boolean nameIsEllipsized;
    public StaticLayout nameLayout;
    private boolean nameLayoutEllipsizeByGradient;
    private boolean nameLayoutEllipsizeLeft;
    private boolean nameLayoutFits;
    public float nameLayoutTranslateX;
    public int nameLeft;
    private int nameLockLeft;
    private int nameLockTop;
    private int nameMuteLeft;
    private int nameMutedIconLeft;
    public int namePaddingEnd;
    public int nameWidth;
    private boolean needEmoji;
    private Utilities.Callback<TLRPC.User> onOpenButtonClick;
    private float onlineProgress;
    private boolean openBot;
    private final Paint openButtonBackgroundPaint;
    private final ButtonBounce openButtonBounce;
    private final RectF openButtonRect;
    private Text openButtonText;
    protected boolean overrideSwipeAction;
    protected int overrideSwipeActionBackgroundColorKey;
    protected RLottieDrawable overrideSwipeActionDrawable;
    protected int overrideSwipeActionRevealBackgroundColorKey;
    protected int overrideSwipeActionStringId;
    protected String overrideSwipeActionStringKey;
    private int paintIndex;
    private DialogsActivity parentFragment;
    private int pinLeft;
    private int pinTop;
    private int pollVotesMentionCount;
    private int pollVotesMentionLeft;
    private DialogsAdapter.DialogsPreloader preloader;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private int printingStringType;
    private int progressStage;
    private boolean promoDialog;
    private int reactionMentionCount;
    private int reactionMentionLeft;
    private ValueAnimator reactionsMentionsAnimator;
    private float reactionsMentionsChangeProgress;
    private int readOutboxMaxId;
    private RectF rect;
    private int reorderGradientLastColor;
    private Paint reorderGradientPaint;
    private float reorderIconProgress;
    public ShareDialogCell.RepostStoryDrawable repostStoryDrawable;
    private final Theme.ResourcesProvider resourcesProvider;
    public float rightFragmentOffset;
    private float rightFragmentOpenedProgress;
    private boolean showTopicIconInName;
    private boolean showTtl;
    private List<SpoilerEffect> spoilers;
    private List<SpoilerEffect> spoilers2;
    private Stack<SpoilerEffect> spoilersPool;
    private Stack<SpoilerEffect> spoilersPool2;
    private Drawable starBg;
    private int starBgColor;
    private Drawable starFg;
    private final AnimatedFloat starsBlockedT;
    private long starsPriceBlocked;
    private boolean statusDrawableAnimationInProgress;
    private ValueAnimator statusDrawableAnimator;
    private int statusDrawableLeft;
    private float statusDrawableProgress;
    public final StoriesUtilities.AvatarStoryParams storyParams;
    public boolean swipeCanceled;
    private int swipeMessageTextId;
    private StaticLayout swipeMessageTextLayout;
    private int swipeMessageWidth;
    public DialogCellTags tags;
    private int tagsLeft;
    private int tagsRight;
    private Paint thumbBackgroundPaint;
    private ImageReceiver[] thumbImage;
    private boolean[] thumbImageSeen;
    private Path thumbPath;
    int thumbSize;
    private SpoilerEffect thumbSpoiler;
    private int thumbsCount;
    private StaticLayout timeLayout;
    private int timeLeft;
    private int timeTop;
    private TimerDrawable timerDrawable;
    private Paint timerPaint;
    private Paint timerPaint2;
    private String titleOverride;
    private int topClip;
    int topMessageTopicEndIndex;
    int topMessageTopicStartIndex;
    private Paint topicCounterPaint;
    protected Drawable[] topicIconInName;
    private boolean topicMuted;
    protected int translateY;
    private boolean translationAnimationStarted;
    private RLottieDrawable translationDrawable;
    protected float translationX;
    private int ttlPeriod;
    private float ttlProgress;
    private boolean twoLinesForName;
    private StaticLayout typingLayout;
    private int typingLeft;
    private int unreadCount;
    private Runnable unsubscribePremiumBlocked;
    private final DialogUpdateHelper updateHelper;
    private boolean updateLayout;
    public boolean useForceThreeLines;
    public boolean useFromUserAsAvatar;
    private boolean useMeForMyMessages;
    public boolean useSeparator;
    private TLRPC.User user;
    private boolean visibleOnScreen;
    private boolean wasDrawnOnline;
    protected float xOffset;

    public static class BounceInterpolator implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (f < 0.33f) {
                return (f / 0.33f) * 0.1f;
            }
            float f2 = f - 0.33f;
            return f2 < 0.33f ? 0.1f - ((f2 / 0.34f) * 0.15f) : (((f2 - 0.34f) / 0.33f) * 0.05f) - 0.05f;
        }
    }

    public static class CustomDialog {
        public int date;
        public int id;
        public boolean isMedia;
        public String message;
        public boolean muted;
        public String name;
        public boolean pinned;
        public int sent = -1;
        public int type;
        public int unread_count;
        public boolean verified;
    }

    public interface DialogCellDelegate {
        boolean canClickButtonInside();

        void onButtonClicked(DialogCell dialogCell);

        void onButtonLongPress(DialogCell dialogCell);

        void openHiddenStories();

        void openStory(DialogCell dialogCell, Runnable runnable);

        void showChatPreview(DialogCell dialogCell);
    }

    public boolean checkCurrentDialogIndex(boolean z) {
        return false;
    }

    public boolean drawLock2() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public /* bridge */ /* synthetic */ int[] getColorKeys() {
        return super.getColorKeys();
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
    }

    public static class ThumbnailSpan extends FixedWidthSpan {
        public ThumbnailSpan(int i) {
            super(i);
        }
    }

    public void setMoving(boolean z) {
        this.moving = z;
    }

    public boolean isMoving() {
        return this.moving;
    }

    public void setForumTopic(TLRPC.TL_forumTopic tL_forumTopic, long j, MessageObject messageObject, boolean z, boolean z2) {
        PullForegroundDrawable pullForegroundDrawable;
        this.forumTopic = tL_forumTopic;
        this.isTopic = tL_forumTopic != null;
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        if (messageObject != null) {
            Drawable drawable = messageObject.topicIconDrawable[0];
            if (drawable instanceof ForumBubbleDrawable) {
                ((ForumBubbleDrawable) drawable).setColor(tL_forumTopic.icon_color);
            }
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.isDialogCell = false;
        this.showTopicIconInName = z;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            this.lastMessageDate = message.date;
            this.currentEditDate = message.edit_date;
            this.markUnread = false;
            this.messageId = messageObject.getId();
            this.lastUnreadState = messageObject.isUnread();
        }
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        if (!z2) {
            this.lastStatusDrawableParams = -1;
        }
        if (tL_forumTopic != null) {
            this.groupMessages = tL_forumTopic.groupedMessages;
        }
        TLRPC.TL_forumTopic tL_forumTopic2 = this.forumTopic;
        if (tL_forumTopic2 != null && tL_forumTopic2.id == 1 && (pullForegroundDrawable = this.archivedChatsDrawable) != null) {
            pullForegroundDrawable.setCell(this);
        }
        update(0, z2);
    }

    public void setRightFragmentOpenedProgress(float f) {
        if (this.rightFragmentOpenedProgress != f) {
            this.rightFragmentOpenedProgress = f;
            invalidate();
        }
    }

    public void setCurrentDialogId(long j) {
        this.currentDialogId = j;
    }

    public void setIsTransitionSupport(boolean z) {
        this.isTransitionSupport = z;
    }

    public void setIsShareToStoryCell() {
        this.repostStoryDrawable = new ShareDialogCell.RepostStoryDrawable(getContext(), this, C2807R.drawable.forward_to_stories, this.resourcesProvider);
        this.isShareToStoryCell = true;
    }

    public void checkHeight() {
        if (getMeasuredHeight() <= 0 || getMeasuredHeight() == computeHeight()) {
            return;
        }
        requestLayout();
    }

    public void setVisible(boolean z) {
        if (this.visibleOnScreen == z) {
            return;
        }
        this.visibleOnScreen = z;
        if (z) {
            invalidate();
        }
    }

    public static class FixedWidthSpan extends ReplacementSpan {
        private int width;

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        }

        public FixedWidthSpan(int i) {
            this.width = i;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            if (fontMetricsInt == null) {
                fontMetricsInt = paint.getFontMetricsInt();
            }
            if (fontMetricsInt != null) {
                int i3 = 1 - (fontMetricsInt.descent - fontMetricsInt.ascent);
                fontMetricsInt.descent = i3;
                fontMetricsInt.bottom = i3;
                fontMetricsInt.ascent = -1;
                fontMetricsInt.top = -1;
            }
            return this.width;
        }
    }

    public void setOpenBotButton(boolean z) {
        if (this.openBot == z) {
            return;
        }
        if (this.openButtonText == null) {
            this.openButtonText = new Text(LocaleController.getString(C2807R.string.BotOpen), 14.0f, AndroidUtilities.bold());
        }
        this.openBot = z;
        this.openButtonBounce.setPressed(false);
    }

    public DialogCell allowBotOpenButton(boolean z, Utilities.Callback<TLRPC.User> callback) {
        this.allowBotOpenButton = z;
        this.onOpenButtonClick = callback;
        return this;
    }

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    public long getStarsPrice() {
        return this.starsPriceBlocked;
    }

    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2) {
        this(dialogsActivity, context, z, z2, UserConfig.selectedAccount, null);
    }

    public DialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.drawArchive = true;
        this.drawAvatar = true;
        this.drawMonoforumAvatar = false;
        this.avatarStart = 11;
        this.messagePaddingStart = 72;
        this.heightDefault = 70;
        this.heightThreeLines = 76;
        this.addHeightForTags = 3;
        this.addForumHeightForTags = 11;
        this.chekBoxPaddingTop = 42.0f;
        StoriesUtilities.AvatarStoryParams avatarStoryParams = new StoriesUtilities.AvatarStoryParams(false) { // from class: org.telegram.ui.Cells.DialogCell.1
            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public boolean isAvatarClickable(long j, TLRPC.Chat chat, TLRPC.User user) {
                if (DialogCell.this.parentFragment != null) {
                    return (((chat == null || chat.linked_community_id == 0) && (user == null || user.linked_community_id == 0)) || DialogCell.this.insideCommunityList) ? false : true;
                }
                return false;
            }

            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public boolean onAvatarClick(View view, long j) {
                if (DialogCell.this.parentFragment != null) {
                    DialogCell dialogCell = DialogCell.this;
                    if (!dialogCell.insideCommunityList) {
                        if (j > 0) {
                            TLRPC.User user = MessagesController.getInstance(dialogCell.currentAccount).getUser(Long.valueOf(j));
                            if (user != null && user.linked_community_id != 0) {
                                DialogCell.this.parentFragment.showDialog(new CommunitySheet(DialogCell.this.parentFragment, user.linked_community_id));
                                return true;
                            }
                        } else {
                            TLRPC.Chat chat = MessagesController.getInstance(dialogCell.currentAccount).getChat(Long.valueOf(-j));
                            if (chat != null && chat.linked_community_id != 0) {
                                DialogCell.this.parentFragment.showDialog(new CommunitySheet(DialogCell.this.parentFragment, chat.linked_community_id));
                                return true;
                            }
                        }
                    }
                }
                return super.onAvatarClick(view, j);
            }

            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void openStory(long j, Runnable runnable) {
                DialogCell dialogCell = DialogCell.this;
                if (dialogCell.delegate == null) {
                    return;
                }
                int i2 = dialogCell.currentDialogFolderId;
                DialogCell dialogCell2 = DialogCell.this;
                if (i2 != 0) {
                    dialogCell2.delegate.openHiddenStories();
                    return;
                }
                DialogCellDelegate dialogCellDelegate = dialogCell2.delegate;
                if (dialogCellDelegate != null) {
                    dialogCellDelegate.openStory(dialogCell2, runnable);
                }
            }

            @Override // org.telegram.ui.Stories.StoriesUtilities.AvatarStoryParams
            public void onLongPress() {
                DialogCell dialogCell = DialogCell.this;
                DialogCellDelegate dialogCellDelegate = dialogCell.delegate;
                if (dialogCellDelegate == null) {
                    return;
                }
                dialogCellDelegate.showChatPreview(dialogCell);
            }
        };
        this.storyParams = avatarStoryParams;
        this.visibleOnScreen = true;
        this.collapseOffset = 0.0f;
        this.hasUnmutedTopics = false;
        this.hasUnmutedCommunityDialogs = false;
        this.openButtonBounce = new ButtonBounce(this);
        this.openButtonBackgroundPaint = new Paint(1);
        this.openButtonRect = new RectF();
        this.overrideSwipeAction = false;
        this.thumbImageSeen = new boolean[3];
        this.thumbImage = new ImageReceiver[3];
        this.drawPlay = new boolean[3];
        this.drawSpoiler = new boolean[3];
        this.avatarImage = new ImageReceiver(this);
        this.avatarDrawable = new AvatarDrawable();
        this.interpolator = new BounceInterpolator();
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.starsBlockedT = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.spoilersPool = new Stack<>();
        this.spoilers = new ArrayList();
        this.spoilersPool2 = new Stack<>();
        this.spoilers2 = new ArrayList();
        this.drawCount2 = true;
        this.animatorPollVotesMentionVisible = new BoolAnimator(this, cubicBezierInterpolator, 320L);
        this.countChangeProgress = 1.0f;
        this.reactionsMentionsChangeProgress = 1.0f;
        this.rect = new RectF();
        this.lastStatusDrawableParams = -1;
        this.readOutboxMaxId = -1;
        this.updateHelper = new DialogUpdateHelper();
        avatarStoryParams.allowLongress = true;
        this.resourcesProvider = resourcesProvider;
        this.parentFragment = dialogsActivity;
        Theme.createDialogsResources(context);
        this.drawMonoforumAvatar = false;
        this.drawCommunityAvatar = false;
        int i2 = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i2 < imageReceiverArr.length) {
                imageReceiverArr[i2] = new ImageReceiver(this);
                ImageReceiver imageReceiver = this.thumbImage[i2];
                imageReceiver.ignoreNotifications = true;
                imageReceiver.setRoundRadius(AndroidUtilities.dp(2.0f));
                this.thumbImage[i2].setAllowLoadingOnAttachedOnly(true);
                i2++;
            } else {
                this.useForceThreeLines = z2;
                this.currentAccount = i;
                setAvatarRadius(ExteraConfig.getAvatarCorners(getAvatarSizeDp()));
                View view = new View(context) { // from class: org.telegram.ui.Cells.DialogCell.2
                    @Override // android.view.View
                    public void onDraw(Canvas canvas) {
                        DialogCell.this.emojiStatus.setBounds(0, 0, getWidth(), getHeight());
                        DialogCell.this.emojiStatus.draw(canvas);
                    }
                };
                this.emojiStatusView = view;
                addView(view);
                this.emojiStatus = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view, AndroidUtilities.dp(22.0f));
                View view2 = new View(context) { // from class: org.telegram.ui.Cells.DialogCell.3
                    @Override // android.view.View
                    public void onDraw(Canvas canvas) {
                        DialogCell.this.botVerification.setBounds(0, 0, getWidth(), getHeight());
                        DialogCell.this.botVerification.draw(canvas);
                    }
                };
                this.botVerificationView = view2;
                addView(view2);
                this.botVerification = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(view2, AndroidUtilities.dp(17.0f));
                this.avatarImage.setAllowLoadingOnAttachedOnly(true);
                AvatarSpan avatarSpan = new AvatarSpan(this, this.currentAccount, 18.0f);
                this.messageAvatarSpan = avatarSpan;
                avatarSpan.needDrawShadow = false;
                return;
            }
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (getParent() != null && getParent().isLayoutRequested()) {
            getParent().requestLayout();
        }
        super.requestLayout();
    }

    public void setCustomMessageWithoutRebuild(String str) {
        this.customMessage = str;
    }

    public void setCustomMessage(String str) {
        if (TextUtils.equals(this.customMessage, str)) {
            return;
        }
        this.customMessage = str;
        buildLayout();
        requestLayout();
    }

    public void setDialog(TLRPC.Dialog dialog, int i, int i2) {
        if (this.currentDialogId != dialog.id) {
            ValueAnimator valueAnimator = this.statusDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.statusDrawableAnimator.cancel();
            }
            this.statusDrawableAnimationInProgress = false;
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = dialog.id;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.isDialogCell = true;
        if (dialog instanceof TLRPC.TL_dialogCommunity) {
            this.currentDialogCommunityId = dialog.community_id;
        } else {
            this.currentDialogCommunityId = 0L;
        }
        if (dialog instanceof TLRPC.TL_dialogFolder) {
            this.currentDialogFolderId = ((TLRPC.TL_dialogFolder) dialog).folder.id;
            PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
            if (pullForegroundDrawable != null) {
                pullForegroundDrawable.setCell(this);
            }
        } else {
            this.currentDialogFolderId = 0;
        }
        this.dialogsType = i;
        showPremiumBlocked(i == 3);
        if (this.tags == null) {
            this.tags = new DialogCellTags(this);
        }
        this.folderId = i2;
        this.messageId = 0;
        if (update(0, false)) {
            requestLayout();
        }
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    public void setDialog(CustomDialog customDialog) {
        this.customDialog = customDialog;
        this.messageId = 0;
        update(0);
        checkOnline();
        checkGroupCall();
        checkChatTheme();
        checkTtl();
    }

    private void checkOnline() {
        TLRPC.User user;
        if (this.user != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id))) != null) {
            this.user = user;
        }
        this.onlineProgress = isOnline() ? 1.0f : 0.0f;
    }

    private boolean isOnline() {
        TLRPC.User user;
        if (!isForumCell() && !this.storyParams.drawnLive && (user = this.user) != null && !user.self) {
            TLRPC.UserStatus userStatus = user.status;
            if (userStatus != null && userStatus.expires <= 0 && MessagesController.getInstance(this.currentAccount).onlinePrivacy.containsKey(Long.valueOf(this.user.id))) {
                return true;
            }
            TLRPC.UserStatus userStatus2 = this.user.status;
            if (userStatus2 != null && userStatus2.expires > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
                return true;
            }
        }
        return false;
    }

    private void checkGroupCall() {
        TLRPC.Chat chat = this.chat;
        boolean z = chat != null && chat.call_active && chat.call_not_empty;
        this.hasCall = z;
        this.chatCallProgress = z ? 1.0f : 0.0f;
    }

    private void checkTtl() {
        CheckBox2 checkBox2;
        boolean z = this.ttlPeriod > 0 && !this.hasCall && !isOnline() && ((checkBox2 = this.checkBox) == null || !checkBox2.isChecked()) && !this.storyParams.drawnLive;
        this.showTtl = z;
        this.ttlProgress = z ? 1.0f : 0.0f;
    }

    private void checkChatTheme() {
        TLRPC.Message message;
        MessageObject messageObject = this.message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return;
        }
        TLRPC.MessageAction messageAction = message.action;
        if ((messageAction instanceof TLRPC.TL_messageActionSetChatTheme) && this.lastUnreadState) {
            ChatThemeController.getInstance(this.currentAccount).setDialogTheme(this.currentDialogId, ((TLRPC.TL_messageActionSetChatTheme) messageAction).theme, false);
        }
    }

    public void setDialog(long j, MessageObject messageObject, int i, boolean z, boolean z2) {
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.useMeForMyMessages = z;
        this.isDialogCell = false;
        this.lastMessageDate = i;
        this.currentEditDate = messageObject != null ? messageObject.messageOwner.edit_date : 0;
        this.unreadCount = 0;
        this.markUnread = false;
        this.messageId = messageObject != null ? messageObject.getId() : 0;
        this.mentionCount = 0;
        this.reactionMentionCount = 0;
        this.pollVotesMentionCount = 0;
        this.lastUnreadState = messageObject != null && messageObject.isUnread();
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        update(0, z2);
    }

    public void setDialog(long j, MessageObject messageObject, ArrayList<MessageObject> arrayList, int i, boolean z, boolean z2) {
        if (this.currentDialogId != j) {
            this.lastStatusDrawableParams = -1;
        }
        this.currentDialogId = j;
        this.lastDialogChangedTime = System.currentTimeMillis();
        this.message = messageObject;
        this.useMeForMyMessages = z;
        this.isDialogCell = false;
        this.lastMessageDate = i;
        this.currentEditDate = messageObject != null ? messageObject.messageOwner.edit_date : 0;
        this.unreadCount = 0;
        this.markUnread = false;
        this.messageId = messageObject != null ? messageObject.getId() : 0;
        this.mentionCount = 0;
        this.reactionMentionCount = 0;
        this.pollVotesMentionCount = 0;
        this.lastUnreadState = messageObject != null && messageObject.isUnread();
        this.groupMessages = arrayList;
        MessageObject messageObject2 = this.message;
        if (messageObject2 != null) {
            this.lastSendState = messageObject2.messageOwner.send_state;
        }
        update(0, z2);
    }

    public long getDialogId() {
        return this.currentDialogId;
    }

    public int getMessageId() {
        return this.messageId;
    }

    public void setPreloader(DialogsAdapter.DialogsPreloader dialogsPreloader) {
        this.preloader = dialogsPreloader;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isSliding = false;
        this.drawRevealBackground = false;
        this.currentRevealProgress = 0.0f;
        this.attachedToWindow = false;
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : 0.0f;
        this.avatarImage.onDetachedFromWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onDetachedFromWindow();
            i++;
        }
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null) {
            rLottieDrawable.stop();
            this.translationDrawable.setProgress(0.0f);
            this.translationDrawable.setCallback(null);
            this.translationDrawable = null;
            this.translationAnimationStarted = false;
        }
        DialogsAdapter.DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.remove(this.currentDialogId);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.detach();
        }
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack2);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStack3);
        AnimatedEmojiSpan.release(this, this.animatedEmojiStackName);
        this.storyParams.onDetachFromWindow();
        this.canvasButton = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.avatarImage.onAttachedToWindow();
        int i = 0;
        while (true) {
            ImageReceiver[] imageReceiverArr = this.thumbImage;
            if (i >= imageReceiverArr.length) {
                break;
            }
            imageReceiverArr[i].onAttachedToWindow();
            i++;
        }
        resetPinnedArchiveState();
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 != null) {
            swapAnimatedEmojiDrawable2.attach();
        }
    }

    public void resetPinnedArchiveState() {
        boolean z = SharedConfig.archiveHidden;
        this.archiveHidden = z;
        float f = z ? 0.0f : 1.0f;
        this.archiveBackgroundProgress = f;
        this.avatarDrawable.setArchivedAvatarHiddenProgress(f);
        this.clipProgress = 0.0f;
        this.isSliding = false;
        this.reorderIconProgress = (getIsPinned() && this.drawReorder) ? 1.0f : 0.0f;
        this.attachedToWindow = true;
        this.cornerProgress = 0.0f;
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
        if (swapAnimatedEmojiDrawable != null && this.attachedToWindow) {
            swapAnimatedEmojiDrawable.attach();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.botVerification;
        if (swapAnimatedEmojiDrawable2 == null || !this.attachedToWindow) {
            return;
        }
        swapAnimatedEmojiDrawable2.attach();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.emojiStatusView;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(22.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(22.0f), TLObject.FLAG_30));
        }
        View view2 = this.botVerificationView;
        if (view2 != null) {
            view2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(17.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(17.0f), TLObject.FLAG_30));
        }
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            checkBox2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(24.0f), TLObject.FLAG_30));
        }
        if (this.isTopic) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.dp(((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + ((!hasTags() || ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !isForumCell())) ? 0 : isForumCell() ? this.addForumHeightForTags : this.addHeightForTags)) + (this.useSeparator ? 1 : 0));
            checkTwoLinesForName();
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), computeHeight());
        this.topClip = 0;
        this.bottomClip = getMeasuredHeight();
    }

    private int computeHeight() {
        if (isForumCell() && !this.isTransitionSupport && !this.collapsed) {
            int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 86.0f : 91.0f);
            if (this.useSeparator) {
                iDp++;
            }
            return hasTags() ? iDp + AndroidUtilities.dp(this.addForumHeightForTags) : iDp;
        }
        return getCollapsedHeight();
    }

    private int getCollapsedHeight() {
        int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? this.heightThreeLines : this.heightDefault) + 1;
        if (this.twoLinesForName) {
            iDp += AndroidUtilities.dp(20.0f);
        }
        if (!hasTags()) {
            return iDp;
        }
        if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !isForumCell()) {
            return iDp;
        }
        return iDp + AndroidUtilities.dp(isForumCell() ? this.addForumHeightForTags : this.addHeightForTags);
    }

    private void checkTwoLinesForName() {
        this.twoLinesForName = false;
        if (!this.isTopic || hasTags()) {
            return;
        }
        buildLayout();
        if (this.nameIsEllipsized) {
            this.twoLinesForName = true;
            buildLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iDp;
        if (this.currentDialogId == 0 && this.customDialog == null) {
            return;
        }
        View view = this.emojiStatusView;
        if (view != null) {
            view.layout(0, 0, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(22.0f));
        }
        View view2 = this.botVerificationView;
        if (view2 != null) {
            view2.layout(0, 0, AndroidUtilities.dp(17.0f), AndroidUtilities.dp(17.0f));
        }
        if (this.checkBox != null) {
            int iDp2 = AndroidUtilities.dp(this.messagePaddingStart - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 26 : 28));
            if (this.inPreviewMode) {
                iDp2 = AndroidUtilities.dp(8.0f);
                iDp = (getMeasuredHeight() - this.checkBox.getMeasuredHeight()) >> 1;
            } else {
                if (LocaleController.isRTL) {
                    iDp2 = (i3 - i) - iDp2;
                }
                iDp = AndroidUtilities.dp(this.chekBoxPaddingTop + ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 4 : 0));
            }
            CheckBox2 checkBox2 = this.checkBox;
            checkBox2.layout(iDp2, iDp, checkBox2.getMeasuredWidth() + iDp2, this.checkBox.getMeasuredHeight() + iDp);
        }
        int measuredHeight = (getMeasuredHeight() + getMeasuredWidth()) << 16;
        if (measuredHeight != this.lastSize || this.updateLayout) {
            this.updateLayout = false;
            this.lastSize = measuredHeight;
            try {
                buildLayout();
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    public boolean getHasUnread() {
        return this.unreadCount != 0 || this.markUnread;
    }

    public boolean getIsMuted() {
        return this.dialogMuted;
    }

    public boolean getIsPinned() {
        return this.drawPin || this.drawPinForced;
    }

    public void setPinForced(boolean z) {
        this.drawPinForced = z;
        if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0) {
            buildLayout();
        }
        invalidate();
    }

    private CharSequence formatArchivedDialogNames() {
        TLRPC.User user;
        String strEscape;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList<TLRPC.Dialog> dialogs = messagesController.getDialogs(this.currentDialogFolderId);
        this.currentDialogFolderDialogsCount = dialogs.size();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = dialogs.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Dialog dialog = dialogs.get(i);
            if (!messagesController.isHiddenByUndo(dialog.id)) {
                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(dialog.id);
                long j = dialog.id;
                TLRPC.Chat chat = null;
                if (zIsEncryptedDialog) {
                    TLRPC.EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                    user = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else {
                    boolean zIsUserDialog = DialogObject.isUserDialog(j);
                    long j2 = dialog.id;
                    if (zIsUserDialog) {
                        user = messagesController.getUser(Long.valueOf(j2));
                    } else {
                        chat = messagesController.getChat(Long.valueOf(-j2));
                        user = null;
                    }
                }
                if (chat != null) {
                    strEscape = chat.title.replace('\n', ' ');
                } else if (user == null) {
                    continue;
                } else if (UserObject.isDeleted(user)) {
                    strEscape = LocaleController.getString(C2807R.string.HiddenName);
                } else {
                    strEscape = AndroidUtilities.escape(ContactsController.formatName(user.first_name, user.last_name).replace('\n', ' '));
                }
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder.append((CharSequence) ", ");
                }
                int length = spannableStringBuilder.length();
                int length2 = strEscape.length() + length;
                spannableStringBuilder.append((CharSequence) strEscape);
                if (dialog.unread_count > 0) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold(), 0, Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider)), length, length2, 33);
                }
                if (spannableStringBuilder.length() > 150) {
                    break;
                }
            }
        }
        if (MessagesController.getInstance(this.currentAccount).storiesController.getTotalStoriesCount(true) > 0) {
            int iMax = Math.max(1, MessagesController.getInstance(this.currentAccount).storiesController.getTotalStoriesCount(true));
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("Stories", iMax, new Object[0]));
        }
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
    }

    private CharSequence formatCommunityDialogNames() {
        TLRPC.User user;
        String strEscape;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList<TLRPC.Dialog> dialogsByCommunity = messagesController.getDialogsByCommunity(-this.currentDialogId);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int size = dialogsByCommunity.size();
        for (int i = 0; i < size; i++) {
            TLRPC.Dialog dialog = dialogsByCommunity.get(i);
            if (!messagesController.isHiddenByUndo(dialog.id)) {
                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(dialog.id);
                long j = dialog.id;
                TLRPC.Chat chat = null;
                if (zIsEncryptedDialog) {
                    TLRPC.EncryptedChat encryptedChat = messagesController.getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                    user = encryptedChat != null ? messagesController.getUser(Long.valueOf(encryptedChat.user_id)) : null;
                } else {
                    boolean zIsUserDialog = DialogObject.isUserDialog(j);
                    long j2 = dialog.id;
                    if (zIsUserDialog) {
                        user = messagesController.getUser(Long.valueOf(j2));
                    } else {
                        chat = messagesController.getChat(Long.valueOf(-j2));
                        user = null;
                    }
                }
                if (chat != null) {
                    strEscape = chat.title.replace('\n', ' ');
                } else if (user == null) {
                    continue;
                } else if (UserObject.isDeleted(user)) {
                    strEscape = LocaleController.getString(C2807R.string.HiddenName);
                } else {
                    strEscape = AndroidUtilities.escape(ContactsController.formatName(user.first_name, user.last_name).replace('\n', ' '));
                }
                if (spannableStringBuilder.length() > 0) {
                    spannableStringBuilder.append((CharSequence) ", ");
                }
                int length = spannableStringBuilder.length();
                int length2 = strEscape.length() + length;
                spannableStringBuilder.append((CharSequence) strEscape);
                if (dialog.unread_count > 0) {
                    spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold(), 0, Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider)), length, length2, 33);
                }
                if (spannableStringBuilder.length() > 150) {
                    break;
                }
            }
        }
        return Emoji.replaceEmoji(spannableStringBuilder, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
    }

    public boolean hasTags() {
        DialogCellTags dialogCellTags = this.tags;
        return (dialogCellTags == null || dialogCellTags.isEmpty()) ? false : true;
    }

    public boolean separateMessageNameLine() {
        return (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(105:16|(1:18)|19|(1:26)(1:25)|27|(1:32)(1:31)|33|(1:35)|36|(1:47)(1:48)|49|(1:51)|52|(1:54)(1:55)|56|(7:58|(1:60)|2216|61|(1:63)|2217|64)(1:65)|66|(1:68)(1:69)|70|(9:72|(2:74|(2:83|(1:85)(1:86))(2:79|(1:81)(1:82)))(4:87|(1:92)(1:91)|93|(2:102|(1:104)(1:105))(2:98|(1:100)(1:101)))|106|(3:108|(1:110)(4:111|(1:113)|114|(1:120)(1:119))|121)(3:122|(1:124)|125)|126|(1:128)(1:129)|130|(1:132)(1:(1:134)(1:(1:136)(1:137)))|138)(13:139|(1:150)(1:149)|151|(2:160|(1:162)(1:163))(2:156|(1:158)(1:159))|164|(1:(2:167|(2:177|(1:179)(1:180))(2:172|(1:174)(1:176))))(7:(0)(4:184|(4:186|(1:188)(2:190|(1:192)(3:193|(1:195)(2:196|(5:201|(1:206)(1:205)|207|(1:212)(1:211)|213)(1:200))|214))|189|214)(3:215|(12:217|(1:219)(2:220|(1:222)(5:223|(1:228)(1:227)|229|(1:236)(1:235)|237))|238|(1:245)(1:244)|246|(1:252)(1:251)|253|(5:255|(0)(1:259)|262|(2:264|(1:266)(2:267|(1:269)(1:270)))(2:271|(1:273))|(0)(1:277))(1:260)|261|262|(0)(0)|(0))(1:279)|278)|280|(1:285)(1:284))|286|(1:290)|291|(6:293|(1:295)(1:296)|297|(1:299)(1:300)|301|(1:306)(1:305))(2:307|(5:313|(1:315)(1:316)|317|(1:319)(1:320)|321)(1:312))|322|(1:(2:339|(2:345|(2:347|(8:355|(1:368)(2:338|369)|370|(11:372|(1:374)(1:375)|376|(4:378|(1:380)|(1:382)|383)|384|(1:386)(1:387)|388|(1:390)(1:391)|392|(2:400|(1:402))(2:397|(1:399))|403)(3:404|(1:406)(3:(6:409|(1:411)(1:412)|413|(1:415)(1:416)|(1:418)(1:419)|420)(1:421)|422|(4:426|1020|(7:1035|(2:1040|(1:1042)(1:(2:1044|(1:1046))(1:1047)))(1:1039)|1048|(2:1050|(3:1054|(1:1056)(1:1057)|1058))(2:1059|(1:1061))|1062|(1:1069)(1:1068)|1070)(2:1026|(1:1032)(2:1034|1015))|1033)(3:427|(1:429)(2:431|(2:433|(1:435)(2:436|(1:438)(3:439|(2:441|(1:443)(2:444|(1:446)(2:447|(1:449)(2:450|(2:452|(1:454)(1:455))))))(2:457|(0)(3:461|(1:466)(1:465)|467))|456)))(5:468|(1:470)(1:472)|471|473|(8:502|503|(1:505)(7:507|(4:509|(2:511|(2:513|(2:515|(1:517)(2:519|(1:521)(1:522)))(2:523|(1:525)(2:526|(1:528)(2:529|(1:531)(1:532)))))(0))(1:533)|518|534)(2:536|(8:547|(1:(2:562|(29:569|598|(1:607)(1:606)|608|(1:610)(1:611)|612|(1:628)(1:627)|(1:636)(1:635)|637|(2:660|(2:662|(2:680|(8:689|(1:691)(2:692|(5:694|(1:701)|700|702|(2:704|(1:706)))(2:707|(2:714|(2:716|(2:721|(1:723)(2:724|(1:726)(1:727)))(2:728|(2:772|(3:774|(2:776|(1:778)(1:779))(2:780|(1:782)(1:783))|784)(2:785|(4:787|(3:(1:790)(1:792)|791|793)(3:795|(1:797)(1:798)|799)|794|800)(5:801|(2:803|(4:805|(1:807)(1:808)|(1:810)(1:811)|812)(0))(2:814|(1:816)(2:817|(2:819|(1:824)(1:823))(2:825|(2:827|(1:832)(1:831))(2:833|(1:835)(2:836|(1:838)(2:839|(1:841)(2:842|(3:856|(4:863|(1:865)|866|(2:868|(3:870|(1:872)(1:873)|874)))(2:860|(1:862))|875)(2:846|(3:848|(2:850|(1:852))(1:853)|854)(1:855)))))))))|813|876|(2:880|(2:882|(2:884|(1:886))))(0))))(5:732|(1:734)(2:735|(1:737)(2:738|(1:740)(2:741|(1:743)(2:744|(1:746)(1:747)))))|748|(3:764|(3:766|(1:768)(1:769)|770)|771)(4:752|(2:754|(1:756)(1:757))|(1:761)|762)|763)))(0))(1:713)))|887|(1:889)|890|(6:892|(3:900|(1:902)|903)(2:896|(1:898)(1:899))|904|(1:906)|907|(3:909|(1:912)|911)(0))|(1:918)(1:916)|917)))(0))(1:650)|919|(2:(1:935)(1:(1:938))|(1:946)(1:945))(1:933)|947|(2:949|(2:951|(2:953|(2:955|(3:957|(1:963)(1:962)|964)))))|965|(1:971)(1:970)|(1:973)|974|(1:995)(4:(3:2194|985|986)(1:989)|990|2192|991)|996|(1:1000)|1001|(4:1003|(1:1005)|1006|(1:1008)(1:1009))|1010|555|1011|(1:1013)(2:1016|(1:1018)(2:1019|1015))|1014|1015)(10:570|(2:572|(4:574|(1:576)(1:578)|577|579)(3:580|(1:582)(1:583)|584))(2:586|(9:591|(0)|585|594|(1:596)(1:597)|1011|(0)(0)|1014|1015)(7:590|594|(0)(0)|1011|(0)(0)|1014|1015))|593|585|594|(0)(0)|1011|(0)(0)|1014|1015))(1:561))(1:553)|554|555|1011|(0)(0)|1014|1015)(3:540|(1:545)(1:544)|546))|535|1011|(0)(0)|1014|1015)|506|1011|(0)(0)|1014|1015)(2:487|(9:489|(8:491|(3:493|(1:495)(3:497|(1:499)(1:500)|501)|496)|(0)(0)|506|1011|(0)(0)|1014|1015)(0)|503|(0)(0)|506|1011|(0)(0)|1014|1015)(0))))|430))|407)|1071|(2:1073|(2:1075|(2:1077|(2:1079|(2:1081|(2:1083|(2:1085|(3:1087|(1:1091)|1092))))))))|1093|(6:1096|(1:1098)(2:1099|(1:1101)(2:1102|(1:1104)(1:1095)))|1105|(4:1109|1214|(1:1221)(1:1220)|1222)(4:1110|(4:1112|(1:(2:1115|1119)(1:1116))(1:1118)|1117|1119)(10:1120|(1:1122)(2:1124|(1:1126)(2:1127|(1:1129)(8:1130|1131|(1:1133)(1:1134)|1135|(3:1137|(1:1153)(1:1152)|1154)(1:1155)|1156|(1:1158)(1:1159)|1160)))|1123|1131|(0)(0)|1135|(0)(0)|1156|(0)(0)|1160)|1161|(2:1212|1213)(3:1166|(2:1168|(1:1170)(2:1171|(1:1173)(2:1174|(4:1176|(3:1178|(1:1180)(1:1181)|1182)(2:1184|(3:1186|(1:1197)(1:1198)|1199)(3:1200|(1:1208)(1:1207)|1209))|1183|1210)(1:1211))))(0)|1213))|1223|(7:1239|1238|1240|(1:1242)|1243|(2:1246|(1:1248)(3:1249|(3:1251|(5:1253|(1:1255)|1256|(1:1260)|(1:1262))(2:1264|(4:1266|(1:1268)|1269|(1:1271)(1:1272))(2:1273|(1:1281)(2:1277|(1:1279)(1:1280))))|1263)(3:1282|(3:1284|(1:1286)(2:1287|(1:1289)(2:1290|(2:1304|(4:1306|(1:1308)|1309|(1:1311)(1:1312))(1:1313))(2:1294|(1:1296)(2:1297|(1:1299)(3:1300|(1:1302)|1303)))))|1263)|1262)|(1:1317)))|1245)(2:1227|(6:1229|1240|(0)|1243|(0)|1245)(2:1230|(10:1232|(1:1234)|1235|(1:1237)(0)|1238|1240|(0)|1243|(0)|1245)(0))))(0))(0))(0))(0))(10:331|(0)|338|369|370|(0)(0)|1071|(0)|1093|(0)(0)))(0))|175|286|(2:288|290)|291|(0)(0)|322|(2:324|(3:327|339|(3:341|345|(0)(0))(0))(0))(0))|1318|(4:1320|(1:1322)(1:1323)|1324|(1:1326)(1:1327))(1:1328)|1329|(3:1331|(1:1333)(1:1334)|1335)(1:1336)|1337|(1:1339)(1:1340)|1341|(3:1343|(1:1345)(1:1346)|1347)|1348|(2:1350|(1:1352)(1:1353))(2:1355|(2:1357|(2:1359|(1:1361)(1:1362))(2:1363|(1:1365)(1:1366))))|1354|1367|(1:1381)(1:1382)|1383|(1:(4:1394|(1:1396)|1397|(1:1399))(2:1400|(2:1402|(1:1404))(2:1405|(2:1407|(1:1409))(2:1410|(2:1412|(1:1414))(2:1415|(4:1417|(1:1419)(1:1420)|1421|(1:1423)))))))(4:1387|(1:1389)|1390|(1:1392))|1424|(1:1426)|1427|(2:1429|(1:1431))|1432|2209|1433|(1:1435)|1436|(1:1438)|1441|2198|(5:1443|1444|1445|(1:1447)(1:1448)|1449)(2:1452|(3:1454|(1:1456)(1:1457)|1458))|1459|(1:1461)(1:1462)|1463|(1:1465)|1466|(1:1473)(1:1472)|1474|(1:1476)(1:1477)|1478|(1:1483)(1:1482)|1484|1487|(6:1491|1524|(1:1526)(1:1527)|1528|(2:1529|(5:1531|(1:1533)(1:1534)|1535|(2:1544|2237)(2:1543|2238)|1545)(1:2236))|1546)(10:1492|(1:1494)(1:1496)|1495|1497|(1:1499)(1:1500)|1501|(1:1503)(1:1504)|1505|(2:1506|(5:1508|(1:1510)(1:1511)|1512|(2:1521|2219)(2:1520|2220)|1522)(1:2218))|1523)|1547|(1:1549)(1:1550)|1551|(1:1553)|1554|(1:1564)|1565|(2:1567|(1:1569)(1:1570))|1571|(3:1573|(1:1575)(1:1576)|1577)(1:(7:1584|(4:1615|(1:1617)(1:1619)|1618|1620)(1:1621)|(6:1623|(1:1625)(1:1626)|1627|(3:1629|(1:1631)(1:1632)|1633)(3:1635|(1:1637)(1:1638)|1639)|1634|1640)(1:1641)|1642|(2:1644|(4:1646|(3:1648|(1:1650)(1:1651)|1652)|1653|(3:1655|(1:1657)(1:1658)|1659))(5:1660|(3:1662|(1:1664)(1:1665)|1666)|1667|(3:1669|(1:1671)(1:1672)|1673)|1674))|1675|(2:1677|(6:1679|(1:1681)|1682|(3:1684|(1:1686)(1:1687)|1688)|1689|(3:1691|(1:1693)(1:1694)|1695))(7:1696|(1:1698)|1699|(3:1701|(1:1703)(1:1704)|1705)|1706|(3:1708|(1:1710)(1:1711)|1712)|1713)))(2:1585|(1:1613)(6:1597|(1:1606)(2:1602|(1:1604)(1:1605))|1607|(1:1609)(1:1611)|1610|1612)))|1714|(1:1735)(1:1734)|1736|(14:1738|(1:1743)(1:1742)|1744|(1:1748)|1749|(1:1751)|1752|(1:1754)|1755|(1:1757)|1758|(1:1760)(1:1761)|1762|(1:1764))|(7:(1:1767)|1768|(1:1770)|1771|(1:1779)(1:1780)|1781|(1:1785))|1786|(1:1792)(1:1791)|1793|(3:1801|(1:1803)(1:1804)|1805)|1806|(3:(1:1813)(1:1812)|1814|(2:1815|(1:1817)(1:2221)))(1:(33:1830|2206|1831|(8:1840|2211|1841|1846|(1:1851)(1:1850)|1852|(2:1853|(1:1855)(1:2235))|1856)(6:1835|(1:1837)(0)|2211|1841|1846|(5:1848|1851|1852|(3:1853|(0)(0)|1855)|1856)(0))|1874|(1:1876)|1877|2213|1878|(3:1880|(1:1882)|1883)(1:1884)|1885|2208|1886|(2:1888|(2:1896|(5:1898|1899|2200|1900|1901)(7:1893|1904|1905|2202|1906|1907|1908))(0))|2196|1913|(3:1915|(6:1917|(1:1941)(5:1921|(2:1930|(0))|1943|(1:2225)(2:1947|2223)|1948)|1942|1943|(2:1945|2225)(1:2224)|1948)|2222)|1949|(1:1959)(9:1960|(2:1967|(2:1969|(2:1971|(1:1978)(1:1977))))(0)|2027|2033|(9:(8:2038|(1:2040)|2041|(1:2043)|2044|(2:2056|(1:2058)(1:2059))(2:2060|(1:2062)(2:2063|(1:2065)(2:2066|(1:2068)(2:2069|(3:2071|(1:2073)(1:2074)|2075)(1:2076)))))|2077|(2:2079|(1:2081)))|2082|(3:2086|(1:(1:2226)(2:2088|(1:2090)(2:2227|2091)))|(1:2093))|2094|(3:2098|(1:(1:2228)(2:2100|(1:2102)(2:2229|2103)))|(1:2105))|2106|(2:2112|(1:2114))|2115|(4:2119|(1:2121)|2230|2122))(9:(8:2126|(1:2128)|2129|(4:2131|(1:2133)|2134|(1:2136))|2137|(1:2139)|2140|(1:2142))|2143|(4:2147|(1:2149)|2231|2150)|2151|(4:2155|(1:2157)|2232|2158)|2159|(4:2163|(1:2165)|2233|2166)|2167|(1:2171))|2172|(3:(1:2182)(1:2181)|2183|(1:2185)(1:2186))|2187|2188)|1979|(1:1986)(1:1985)|1987|(1:1993)(1:1991)|1992|1994|(9:2000|(2:2003|2004)|2005|2190|2006|(1:2008)(1:2009)|2010|2011|2026)(10:2014|(2:2016|(1:2020))|2021|2214|2022|2023|2204|2024|2025|2026)|2027|2033|(0)(0)|2172|(3:2174|2176|(4:2179|2182|2183|(0)(0))(0))|2187|2188)(3:1822|1857|(4:1863|(1:1868)(1:1867)|1869|(2:1870|(1:1872)(1:2234)))(1:1862)))|1873|1874|(0)|1877|2213|1878|(0)(0)|1885|2208|1886|(0)|2196|1913|(0)|1949|(7:1951|1953|1955|1957|1959|1979|(4:1981|1986|1987|(5:1989|1993|1992|1994|(11:1996|1998|2000|(2:2003|2004)|2005|2190|2006|(0)(0)|2010|2011|2026)(10:1998|2000|(0)|2005|2190|2006|(0)(0)|2010|2011|2026))(0))(0))(6:1953|1955|1957|1959|1979|(0)(0))|2027|2033|(0)(0)|2172|(0)|2187|2188) */
    /* JADX WARN: Can't wrap try/catch for region: R(87:16|(1:18)|19|(1:26)(1:25)|27|(1:32)(1:31)|33|(1:35)|36|(1:47)(1:48)|49|(1:51)|52|(1:54)(1:55)|56|(7:58|(1:60)|2216|61|(1:63)|2217|64)(1:65)|66|(1:68)(1:69)|70|(9:72|(2:74|(2:83|(1:85)(1:86))(2:79|(1:81)(1:82)))(4:87|(1:92)(1:91)|93|(2:102|(1:104)(1:105))(2:98|(1:100)(1:101)))|106|(3:108|(1:110)(4:111|(1:113)|114|(1:120)(1:119))|121)(3:122|(1:124)|125)|126|(1:128)(1:129)|130|(1:132)(1:(1:134)(1:(1:136)(1:137)))|138)(13:139|(1:150)(1:149)|151|(2:160|(1:162)(1:163))(2:156|(1:158)(1:159))|164|(1:(2:167|(2:177|(1:179)(1:180))(2:172|(1:174)(1:176))))(7:(0)(4:184|(4:186|(1:188)(2:190|(1:192)(3:193|(1:195)(2:196|(5:201|(1:206)(1:205)|207|(1:212)(1:211)|213)(1:200))|214))|189|214)(3:215|(12:217|(1:219)(2:220|(1:222)(5:223|(1:228)(1:227)|229|(1:236)(1:235)|237))|238|(1:245)(1:244)|246|(1:252)(1:251)|253|(5:255|(0)(1:259)|262|(2:264|(1:266)(2:267|(1:269)(1:270)))(2:271|(1:273))|(0)(1:277))(1:260)|261|262|(0)(0)|(0))(1:279)|278)|280|(1:285)(1:284))|286|(1:290)|291|(6:293|(1:295)(1:296)|297|(1:299)(1:300)|301|(1:306)(1:305))(2:307|(5:313|(1:315)(1:316)|317|(1:319)(1:320)|321)(1:312))|322|(1:(2:339|(2:345|(2:347|(8:355|(1:368)(2:338|369)|370|(11:372|(1:374)(1:375)|376|(4:378|(1:380)|(1:382)|383)|384|(1:386)(1:387)|388|(1:390)(1:391)|392|(2:400|(1:402))(2:397|(1:399))|403)(3:404|(1:406)(3:(6:409|(1:411)(1:412)|413|(1:415)(1:416)|(1:418)(1:419)|420)(1:421)|422|(4:426|1020|(7:1035|(2:1040|(1:1042)(1:(2:1044|(1:1046))(1:1047)))(1:1039)|1048|(2:1050|(3:1054|(1:1056)(1:1057)|1058))(2:1059|(1:1061))|1062|(1:1069)(1:1068)|1070)(2:1026|(1:1032)(2:1034|1015))|1033)(3:427|(1:429)(2:431|(2:433|(1:435)(2:436|(1:438)(3:439|(2:441|(1:443)(2:444|(1:446)(2:447|(1:449)(2:450|(2:452|(1:454)(1:455))))))(2:457|(0)(3:461|(1:466)(1:465)|467))|456)))(5:468|(1:470)(1:472)|471|473|(8:502|503|(1:505)(7:507|(4:509|(2:511|(2:513|(2:515|(1:517)(2:519|(1:521)(1:522)))(2:523|(1:525)(2:526|(1:528)(2:529|(1:531)(1:532)))))(0))(1:533)|518|534)(2:536|(8:547|(1:(2:562|(29:569|598|(1:607)(1:606)|608|(1:610)(1:611)|612|(1:628)(1:627)|(1:636)(1:635)|637|(2:660|(2:662|(2:680|(8:689|(1:691)(2:692|(5:694|(1:701)|700|702|(2:704|(1:706)))(2:707|(2:714|(2:716|(2:721|(1:723)(2:724|(1:726)(1:727)))(2:728|(2:772|(3:774|(2:776|(1:778)(1:779))(2:780|(1:782)(1:783))|784)(2:785|(4:787|(3:(1:790)(1:792)|791|793)(3:795|(1:797)(1:798)|799)|794|800)(5:801|(2:803|(4:805|(1:807)(1:808)|(1:810)(1:811)|812)(0))(2:814|(1:816)(2:817|(2:819|(1:824)(1:823))(2:825|(2:827|(1:832)(1:831))(2:833|(1:835)(2:836|(1:838)(2:839|(1:841)(2:842|(3:856|(4:863|(1:865)|866|(2:868|(3:870|(1:872)(1:873)|874)))(2:860|(1:862))|875)(2:846|(3:848|(2:850|(1:852))(1:853)|854)(1:855)))))))))|813|876|(2:880|(2:882|(2:884|(1:886))))(0))))(5:732|(1:734)(2:735|(1:737)(2:738|(1:740)(2:741|(1:743)(2:744|(1:746)(1:747)))))|748|(3:764|(3:766|(1:768)(1:769)|770)|771)(4:752|(2:754|(1:756)(1:757))|(1:761)|762)|763)))(0))(1:713)))|887|(1:889)|890|(6:892|(3:900|(1:902)|903)(2:896|(1:898)(1:899))|904|(1:906)|907|(3:909|(1:912)|911)(0))|(1:918)(1:916)|917)))(0))(1:650)|919|(2:(1:935)(1:(1:938))|(1:946)(1:945))(1:933)|947|(2:949|(2:951|(2:953|(2:955|(3:957|(1:963)(1:962)|964)))))|965|(1:971)(1:970)|(1:973)|974|(1:995)(4:(3:2194|985|986)(1:989)|990|2192|991)|996|(1:1000)|1001|(4:1003|(1:1005)|1006|(1:1008)(1:1009))|1010|555|1011|(1:1013)(2:1016|(1:1018)(2:1019|1015))|1014|1015)(10:570|(2:572|(4:574|(1:576)(1:578)|577|579)(3:580|(1:582)(1:583)|584))(2:586|(9:591|(0)|585|594|(1:596)(1:597)|1011|(0)(0)|1014|1015)(7:590|594|(0)(0)|1011|(0)(0)|1014|1015))|593|585|594|(0)(0)|1011|(0)(0)|1014|1015))(1:561))(1:553)|554|555|1011|(0)(0)|1014|1015)(3:540|(1:545)(1:544)|546))|535|1011|(0)(0)|1014|1015)|506|1011|(0)(0)|1014|1015)(2:487|(9:489|(8:491|(3:493|(1:495)(3:497|(1:499)(1:500)|501)|496)|(0)(0)|506|1011|(0)(0)|1014|1015)(0)|503|(0)(0)|506|1011|(0)(0)|1014|1015)(0))))|430))|407)|1071|(2:1073|(2:1075|(2:1077|(2:1079|(2:1081|(2:1083|(2:1085|(3:1087|(1:1091)|1092))))))))|1093|(6:1096|(1:1098)(2:1099|(1:1101)(2:1102|(1:1104)(1:1095)))|1105|(4:1109|1214|(1:1221)(1:1220)|1222)(4:1110|(4:1112|(1:(2:1115|1119)(1:1116))(1:1118)|1117|1119)(10:1120|(1:1122)(2:1124|(1:1126)(2:1127|(1:1129)(8:1130|1131|(1:1133)(1:1134)|1135|(3:1137|(1:1153)(1:1152)|1154)(1:1155)|1156|(1:1158)(1:1159)|1160)))|1123|1131|(0)(0)|1135|(0)(0)|1156|(0)(0)|1160)|1161|(2:1212|1213)(3:1166|(2:1168|(1:1170)(2:1171|(1:1173)(2:1174|(4:1176|(3:1178|(1:1180)(1:1181)|1182)(2:1184|(3:1186|(1:1197)(1:1198)|1199)(3:1200|(1:1208)(1:1207)|1209))|1183|1210)(1:1211))))(0)|1213))|1223|(7:1239|1238|1240|(1:1242)|1243|(2:1246|(1:1248)(3:1249|(3:1251|(5:1253|(1:1255)|1256|(1:1260)|(1:1262))(2:1264|(4:1266|(1:1268)|1269|(1:1271)(1:1272))(2:1273|(1:1281)(2:1277|(1:1279)(1:1280))))|1263)(3:1282|(3:1284|(1:1286)(2:1287|(1:1289)(2:1290|(2:1304|(4:1306|(1:1308)|1309|(1:1311)(1:1312))(1:1313))(2:1294|(1:1296)(2:1297|(1:1299)(3:1300|(1:1302)|1303)))))|1263)|1262)|(1:1317)))|1245)(2:1227|(6:1229|1240|(0)|1243|(0)|1245)(2:1230|(10:1232|(1:1234)|1235|(1:1237)(0)|1238|1240|(0)|1243|(0)|1245)(0))))(0))(0))(0))(0))(10:331|(0)|338|369|370|(0)(0)|1071|(0)|1093|(0)(0)))(0))|175|286|(2:288|290)|291|(0)(0)|322|(2:324|(3:327|339|(3:341|345|(0)(0))(0))(0))(0))|1318|(4:1320|(1:1322)(1:1323)|1324|(1:1326)(1:1327))(1:1328)|1329|(3:1331|(1:1333)(1:1334)|1335)(1:1336)|1337|(1:1339)(1:1340)|1341|(3:1343|(1:1345)(1:1346)|1347)|1348|(2:1350|(1:1352)(1:1353))(2:1355|(2:1357|(2:1359|(1:1361)(1:1362))(2:1363|(1:1365)(1:1366))))|1354|1367|(1:1381)(1:1382)|1383|(1:(4:1394|(1:1396)|1397|(1:1399))(2:1400|(2:1402|(1:1404))(2:1405|(2:1407|(1:1409))(2:1410|(2:1412|(1:1414))(2:1415|(4:1417|(1:1419)(1:1420)|1421|(1:1423)))))))(4:1387|(1:1389)|1390|(1:1392))|1424|(1:1426)|1427|(2:1429|(1:1431))|1432|(19:2209|1433|(1:1435)|1436|(1:1438)|1441|2198|(5:1443|1444|1445|(1:1447)(1:1448)|1449)(2:1452|(3:1454|(1:1456)(1:1457)|1458))|1459|(1:1461)(1:1462)|1463|(1:1465)|1466|(1:1473)(1:1472)|1474|(1:1476)(1:1477)|1478|(1:1483)(1:1482)|1484)|1487|(6:1491|1524|(1:1526)(1:1527)|1528|(2:1529|(5:1531|(1:1533)(1:1534)|1535|(2:1544|2237)(2:1543|2238)|1545)(1:2236))|1546)(10:1492|(1:1494)(1:1496)|1495|1497|(1:1499)(1:1500)|1501|(1:1503)(1:1504)|1505|(2:1506|(5:1508|(1:1510)(1:1511)|1512|(2:1521|2219)(2:1520|2220)|1522)(1:2218))|1523)|1547|(1:1549)(1:1550)|1551|(1:1553)|1554|(1:1564)|1565|(2:1567|(1:1569)(1:1570))|1571|(3:1573|(1:1575)(1:1576)|1577)(1:(7:1584|(4:1615|(1:1617)(1:1619)|1618|1620)(1:1621)|(6:1623|(1:1625)(1:1626)|1627|(3:1629|(1:1631)(1:1632)|1633)(3:1635|(1:1637)(1:1638)|1639)|1634|1640)(1:1641)|1642|(2:1644|(4:1646|(3:1648|(1:1650)(1:1651)|1652)|1653|(3:1655|(1:1657)(1:1658)|1659))(5:1660|(3:1662|(1:1664)(1:1665)|1666)|1667|(3:1669|(1:1671)(1:1672)|1673)|1674))|1675|(2:1677|(6:1679|(1:1681)|1682|(3:1684|(1:1686)(1:1687)|1688)|1689|(3:1691|(1:1693)(1:1694)|1695))(7:1696|(1:1698)|1699|(3:1701|(1:1703)(1:1704)|1705)|1706|(3:1708|(1:1710)(1:1711)|1712)|1713)))(2:1585|(1:1613)(6:1597|(1:1606)(2:1602|(1:1604)(1:1605))|1607|(1:1609)(1:1611)|1610|1612)))|1714|(1:1735)(1:1734)|1736|(14:1738|(1:1743)(1:1742)|1744|(1:1748)|1749|(1:1751)|1752|(1:1754)|1755|(1:1757)|1758|(1:1760)(1:1761)|1762|(1:1764))|(7:(1:1767)|1768|(1:1770)|1771|(1:1779)(1:1780)|1781|(1:1785))|1786|(1:1792)(1:1791)|1793|(3:1801|(1:1803)(1:1804)|1805)|1806|(3:(1:1813)(1:1812)|1814|(2:1815|(1:1817)(1:2221)))(1:(33:1830|2206|1831|(8:1840|2211|1841|1846|(1:1851)(1:1850)|1852|(2:1853|(1:1855)(1:2235))|1856)(6:1835|(1:1837)(0)|2211|1841|1846|(5:1848|1851|1852|(3:1853|(0)(0)|1855)|1856)(0))|1874|(1:1876)|1877|2213|1878|(3:1880|(1:1882)|1883)(1:1884)|1885|2208|1886|(2:1888|(2:1896|(5:1898|1899|2200|1900|1901)(7:1893|1904|1905|2202|1906|1907|1908))(0))|2196|1913|(3:1915|(6:1917|(1:1941)(5:1921|(2:1930|(0))|1943|(1:2225)(2:1947|2223)|1948)|1942|1943|(2:1945|2225)(1:2224)|1948)|2222)|1949|(1:1959)(9:1960|(2:1967|(2:1969|(2:1971|(1:1978)(1:1977))))(0)|2027|2033|(9:(8:2038|(1:2040)|2041|(1:2043)|2044|(2:2056|(1:2058)(1:2059))(2:2060|(1:2062)(2:2063|(1:2065)(2:2066|(1:2068)(2:2069|(3:2071|(1:2073)(1:2074)|2075)(1:2076)))))|2077|(2:2079|(1:2081)))|2082|(3:2086|(1:(1:2226)(2:2088|(1:2090)(2:2227|2091)))|(1:2093))|2094|(3:2098|(1:(1:2228)(2:2100|(1:2102)(2:2229|2103)))|(1:2105))|2106|(2:2112|(1:2114))|2115|(4:2119|(1:2121)|2230|2122))(9:(8:2126|(1:2128)|2129|(4:2131|(1:2133)|2134|(1:2136))|2137|(1:2139)|2140|(1:2142))|2143|(4:2147|(1:2149)|2231|2150)|2151|(4:2155|(1:2157)|2232|2158)|2159|(4:2163|(1:2165)|2233|2166)|2167|(1:2171))|2172|(3:(1:2182)(1:2181)|2183|(1:2185)(1:2186))|2187|2188)|1979|(1:1986)(1:1985)|1987|(1:1993)(1:1991)|1992|1994|(9:2000|(2:2003|2004)|2005|2190|2006|(1:2008)(1:2009)|2010|2011|2026)(10:2014|(2:2016|(1:2020))|2021|2214|2022|2023|2204|2024|2025|2026)|2027|2033|(0)(0)|2172|(3:2174|2176|(4:2179|2182|2183|(0)(0))(0))|2187|2188)(3:1822|1857|(4:1863|(1:1868)(1:1867)|1869|(2:1870|(1:1872)(1:2234)))(1:1862)))|1873|1874|(0)|1877|2213|1878|(0)(0)|1885|2208|1886|(0)|2196|1913|(0)|1949|(7:1951|1953|1955|1957|1959|1979|(4:1981|1986|1987|(5:1989|1993|1992|1994|(11:1996|1998|2000|(2:2003|2004)|2005|2190|2006|(0)(0)|2010|2011|2026)(10:1998|2000|(0)|2005|2190|2006|(0)(0)|2010|2011|2026))(0))(0))(6:1953|1955|1957|1959|1979|(0)(0))|2027|2033|(0)(0)|2172|(0)|2187|2188) */
    /* JADX WARN: Code restructure failed: missing block: B:1894:0x2645, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1928:0x26d7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x135b  */
    /* JADX WARN: Removed duplicated region for block: B:1013:0x13c1  */
    /* JADX WARN: Removed duplicated region for block: B:1016:0x13cf  */
    /* JADX WARN: Removed duplicated region for block: B:1073:0x14e0  */
    /* JADX WARN: Removed duplicated region for block: B:1095:0x155c  */
    /* JADX WARN: Removed duplicated region for block: B:1096:0x155f  */
    /* JADX WARN: Removed duplicated region for block: B:1133:0x1605  */
    /* JADX WARN: Removed duplicated region for block: B:1134:0x160a  */
    /* JADX WARN: Removed duplicated region for block: B:1137:0x1611  */
    /* JADX WARN: Removed duplicated region for block: B:1155:0x1642  */
    /* JADX WARN: Removed duplicated region for block: B:1158:0x1649  */
    /* JADX WARN: Removed duplicated region for block: B:1159:0x164b  */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x1701  */
    /* JADX WARN: Removed duplicated region for block: B:1239:0x179c A[PHI: r3
  0x179c: PHI (r3v265 java.lang.String) = (r3v264 java.lang.String), (r3v264 java.lang.String), (r3v264 java.lang.String), (r3v272 java.lang.String) binds: [B:1224:0x1745, B:1226:0x174e, B:1231:0x1767, B:1236:0x178f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:1242:0x17a2  */
    /* JADX WARN: Removed duplicated region for block: B:1246:0x17b9  */
    /* JADX WARN: Removed duplicated region for block: B:1320:0x1958  */
    /* JADX WARN: Removed duplicated region for block: B:1328:0x19a7  */
    /* JADX WARN: Removed duplicated region for block: B:1331:0x19b8  */
    /* JADX WARN: Removed duplicated region for block: B:1336:0x19e2  */
    /* JADX WARN: Removed duplicated region for block: B:1339:0x19e7  */
    /* JADX WARN: Removed duplicated region for block: B:1340:0x19f7  */
    /* JADX WARN: Removed duplicated region for block: B:1343:0x1a16  */
    /* JADX WARN: Removed duplicated region for block: B:1350:0x1a37  */
    /* JADX WARN: Removed duplicated region for block: B:1355:0x1a65  */
    /* JADX WARN: Removed duplicated region for block: B:1393:0x1b38  */
    /* JADX WARN: Removed duplicated region for block: B:1394:0x1b3a  */
    /* JADX WARN: Removed duplicated region for block: B:1400:0x1b63  */
    /* JADX WARN: Removed duplicated region for block: B:1426:0x1bee  */
    /* JADX WARN: Removed duplicated region for block: B:1429:0x1bfb  */
    /* JADX WARN: Removed duplicated region for block: B:1435:0x1c14  */
    /* JADX WARN: Removed duplicated region for block: B:1438:0x1c19 A[Catch: Exception -> 0x1c24, TryCatch #10 {Exception -> 0x1c24, blocks: (B:1433:0x1c0b, B:1436:0x1c15, B:1438:0x1c19, B:1441:0x1c29, B:1443:0x1c2d), top: B:2209:0x1c0b }] */
    /* JADX WARN: Removed duplicated region for block: B:1443:0x1c2d A[Catch: Exception -> 0x1c24, TRY_LEAVE, TryCatch #10 {Exception -> 0x1c24, blocks: (B:1433:0x1c0b, B:1436:0x1c15, B:1438:0x1c19, B:1441:0x1c29, B:1443:0x1c2d), top: B:2209:0x1c0b }] */
    /* JADX WARN: Removed duplicated region for block: B:1452:0x1c5a A[Catch: Exception -> 0x1c57, TryCatch #4 {Exception -> 0x1c57, blocks: (B:1445:0x1c35, B:1449:0x1c49, B:1459:0x1c7c, B:1463:0x1c92, B:1465:0x1c98, B:1466:0x1ca4, B:1468:0x1cb7, B:1470:0x1cbd, B:1474:0x1cce, B:1476:0x1cd2, B:1478:0x1d10, B:1480:0x1d14, B:1482:0x1d1d, B:1484:0x1d25, B:1477:0x1cf3, B:1452:0x1c5a, B:1454:0x1c60, B:1458:0x1c7a), top: B:2198:0x1c2b }] */
    /* JADX WARN: Removed duplicated region for block: B:1461:0x1c8f  */
    /* JADX WARN: Removed duplicated region for block: B:1462:0x1c91  */
    /* JADX WARN: Removed duplicated region for block: B:1465:0x1c98 A[Catch: Exception -> 0x1c57, TryCatch #4 {Exception -> 0x1c57, blocks: (B:1445:0x1c35, B:1449:0x1c49, B:1459:0x1c7c, B:1463:0x1c92, B:1465:0x1c98, B:1466:0x1ca4, B:1468:0x1cb7, B:1470:0x1cbd, B:1474:0x1cce, B:1476:0x1cd2, B:1478:0x1d10, B:1480:0x1d14, B:1482:0x1d1d, B:1484:0x1d25, B:1477:0x1cf3, B:1452:0x1c5a, B:1454:0x1c60, B:1458:0x1c7a), top: B:2198:0x1c2b }] */
    /* JADX WARN: Removed duplicated region for block: B:1473:0x1ccc  */
    /* JADX WARN: Removed duplicated region for block: B:1476:0x1cd2 A[Catch: Exception -> 0x1c57, TryCatch #4 {Exception -> 0x1c57, blocks: (B:1445:0x1c35, B:1449:0x1c49, B:1459:0x1c7c, B:1463:0x1c92, B:1465:0x1c98, B:1466:0x1ca4, B:1468:0x1cb7, B:1470:0x1cbd, B:1474:0x1cce, B:1476:0x1cd2, B:1478:0x1d10, B:1480:0x1d14, B:1482:0x1d1d, B:1484:0x1d25, B:1477:0x1cf3, B:1452:0x1c5a, B:1454:0x1c60, B:1458:0x1c7a), top: B:2198:0x1c2b }] */
    /* JADX WARN: Removed duplicated region for block: B:1477:0x1cf3 A[Catch: Exception -> 0x1c57, TryCatch #4 {Exception -> 0x1c57, blocks: (B:1445:0x1c35, B:1449:0x1c49, B:1459:0x1c7c, B:1463:0x1c92, B:1465:0x1c98, B:1466:0x1ca4, B:1468:0x1cb7, B:1470:0x1cbd, B:1474:0x1cce, B:1476:0x1cd2, B:1478:0x1d10, B:1480:0x1d14, B:1482:0x1d1d, B:1484:0x1d25, B:1477:0x1cf3, B:1452:0x1c5a, B:1454:0x1c60, B:1458:0x1c7a), top: B:2198:0x1c2b }] */
    /* JADX WARN: Removed duplicated region for block: B:1483:0x1d24  */
    /* JADX WARN: Removed duplicated region for block: B:1491:0x1d4c  */
    /* JADX WARN: Removed duplicated region for block: B:1526:0x1ec8  */
    /* JADX WARN: Removed duplicated region for block: B:1527:0x1eeb  */
    /* JADX WARN: Removed duplicated region for block: B:1531:0x1f29  */
    /* JADX WARN: Removed duplicated region for block: B:1549:0x1f7c  */
    /* JADX WARN: Removed duplicated region for block: B:1550:0x1f93  */
    /* JADX WARN: Removed duplicated region for block: B:1553:0x1fa8  */
    /* JADX WARN: Removed duplicated region for block: B:1567:0x1fe1  */
    /* JADX WARN: Removed duplicated region for block: B:1573:0x2009  */
    /* JADX WARN: Removed duplicated region for block: B:1578:0x2041  */
    /* JADX WARN: Removed duplicated region for block: B:1735:0x237c  */
    /* JADX WARN: Removed duplicated region for block: B:1738:0x2381  */
    /* JADX WARN: Removed duplicated region for block: B:1766:0x240d  */
    /* JADX WARN: Removed duplicated region for block: B:1792:0x246a  */
    /* JADX WARN: Removed duplicated region for block: B:1803:0x248e  */
    /* JADX WARN: Removed duplicated region for block: B:1804:0x2491  */
    /* JADX WARN: Removed duplicated region for block: B:1808:0x24a2  */
    /* JADX WARN: Removed duplicated region for block: B:1818:0x24c5  */
    /* JADX WARN: Removed duplicated region for block: B:1840:0x250a  */
    /* JADX WARN: Removed duplicated region for block: B:1851:0x2540  */
    /* JADX WARN: Removed duplicated region for block: B:1855:0x2547 A[LOOP:12: B:1853:0x2542->B:1855:0x2547, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:1876:0x25a0  */
    /* JADX WARN: Removed duplicated region for block: B:1880:0x25c1 A[Catch: Exception -> 0x2623, TryCatch #12 {Exception -> 0x2623, blocks: (B:1878:0x25b9, B:1880:0x25c1, B:1882:0x25cf, B:1883:0x25de, B:1884:0x2620), top: B:2213:0x25b9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1884:0x2620 A[Catch: Exception -> 0x2623, TRY_LEAVE, TryCatch #12 {Exception -> 0x2623, blocks: (B:1878:0x25b9, B:1880:0x25c1, B:1882:0x25cf, B:1883:0x25de, B:1884:0x2620), top: B:2213:0x25b9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1888:0x2639 A[Catch: Exception -> 0x2645, TryCatch #9 {Exception -> 0x2645, blocks: (B:1886:0x2633, B:1888:0x2639, B:1890:0x263d, B:1904:0x2675, B:1908:0x269b, B:1896:0x2647, B:1898:0x264d, B:1901:0x266e), top: B:2208:0x2633 }] */
    /* JADX WARN: Removed duplicated region for block: B:1893:0x2642  */
    /* JADX WARN: Removed duplicated region for block: B:1915:0x26a8 A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1951:0x2712 A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1953:0x2716 A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1971:0x2754 A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1981:0x27a2 A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:1986:0x27bc  */
    /* JADX WARN: Removed duplicated region for block: B:1993:0x27cb A[Catch: Exception -> 0x26d7, TryCatch #3 {Exception -> 0x26d7, blocks: (B:1913:0x26a4, B:1915:0x26a8, B:1917:0x26ba, B:1919:0x26c0, B:1921:0x26c4, B:1923:0x26cc, B:1925:0x26d2, B:1942:0x26f8, B:1943:0x26fb, B:1945:0x2701, B:1947:0x2705, B:1948:0x270b, B:1930:0x26db, B:1932:0x26df, B:1934:0x26e3, B:1936:0x26e7, B:1938:0x26eb, B:1949:0x270e, B:1951:0x2712, B:1960:0x2732, B:1962:0x2736, B:1971:0x2754, B:1973:0x275a, B:1975:0x275e, B:1977:0x2771, B:1979:0x279c, B:1981:0x27a2, B:1983:0x27a8, B:1985:0x27b0, B:1987:0x27be, B:1989:0x27c2, B:1991:0x27c6, B:1994:0x27ce, B:1996:0x27d2, B:2014:0x2814, B:2016:0x2818, B:2018:0x282c, B:2020:0x2832, B:2026:0x2862, B:1998:0x27d6, B:2000:0x27dc, B:2003:0x27e2, B:1993:0x27cb, B:1978:0x278d, B:1964:0x273a, B:1967:0x2742, B:1969:0x274a, B:1953:0x2716, B:1955:0x271c, B:1957:0x2720, B:1959:0x2725), top: B:2196:0x26a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:2002:0x27e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:2008:0x27f7  */
    /* JADX WARN: Removed duplicated region for block: B:2009:0x27fa  */
    /* JADX WARN: Removed duplicated region for block: B:2035:0x28a2  */
    /* JADX WARN: Removed duplicated region for block: B:2123:0x2aab  */
    /* JADX WARN: Removed duplicated region for block: B:2174:0x2b9f  */
    /* JADX WARN: Removed duplicated region for block: B:2182:0x2bca  */
    /* JADX WARN: Removed duplicated region for block: B:2185:0x2bde  */
    /* JADX WARN: Removed duplicated region for block: B:2186:0x2be4  */
    /* JADX WARN: Removed duplicated region for block: B:2235:0x2559 A[EDGE_INSN: B:2235:0x2559->B:1856:0x2559 BREAK  A[LOOP:12: B:1853:0x2542->B:1855:0x2547], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:2236:0x1f76 A[EDGE_INSN: B:2236:0x1f76->B:1546:0x1f76 BREAK  A[LOOP:13: B:1529:0x1f24->B:1545:0x1f60], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x05fb  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x06f4  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0700  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0748  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x080a  */
    /* JADX WARN: Removed duplicated region for block: B:502:0x0a7a  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0a81  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x0a87  */
    /* JADX WARN: Removed duplicated region for block: B:523:0x0ac5  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0bd4  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x0be3  */
    /* JADX WARN: Removed duplicated region for block: B:680:0x0cda  */
    /* JADX WARN: Removed duplicated region for block: B:728:0x0da3  */
    /* JADX WARN: Removed duplicated region for block: B:808:0x0f22  */
    /* JADX WARN: Removed duplicated region for block: B:886:0x1100  */
    /* JADX WARN: Removed duplicated region for block: B:912:0x11e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void buildLayout() {
        int i;
        float f;
        float f2;
        float f3;
        boolean z;
        char c2;
        boolean z2;
        int i2;
        CharSequence charSequence;
        long botVerificationIcon;
        BadgeDTO badgeDTO;
        boolean z3;
        boolean z4;
        TLRPC.User user;
        int i3;
        boolean z5;
        TLRPC.DraftMessage draftMessage;
        TLRPC.DraftMessage draftMessage2;
        TLRPC.InputReplyTo inputReplyTo;
        TLRPC.DraftMessage draftMessage3;
        boolean z6;
        int i4;
        CharSequence charSequence2;
        boolean z7;
        CharSequence string;
        CharSequence charSequenceSubSequence;
        boolean z8;
        int i5;
        ArrayList<TLRPC.MessageEntity> arrayList;
        TL_iv.RichMessage richMessage;
        CharSequence charSequenceReplaceEmoji;
        boolean z9;
        CharSequence charSequence3;
        boolean z10;
        CharSequence charSequence4;
        CharSequence charSequence5;
        TLRPC.Chat chat;
        CharSequence charSequence6;
        CharSequence string2;
        boolean z11;
        CharSequence charSequence7;
        MessageObject messageObject;
        int i6;
        CharSequence charSequence8;
        CharSequence charSequenceEllipsizeCenterEnd;
        String firstName;
        CharSequence string3;
        boolean zIsChannelAndNotMegaGroup;
        CharSequence pluralString;
        CharSequence string4;
        String pluralString2;
        String str;
        CharSequence charSequenceAppend;
        CharSequence charSequence9;
        CharSequence charSequenceReplaceNewLines;
        MessageObject messageObject2;
        TLRPC.Message message;
        CharSequence string5;
        MessageObject messageObject3;
        int i7;
        CharSequence charSequenceReplaceEmoji2;
        CharSequence charSequence10;
        CharSequence charSequenceHighlightText;
        int length;
        TLRPC.Chat chat2;
        TLRPC.Message message2;
        TLRPC.User user2;
        MessageObject messageObject4;
        MessageObject messageObject5;
        MessageObject messageObject6;
        TLRPC.Chat chat3;
        TLRPC.User user3;
        CharSequence charSequence11;
        CharSequence charSequenceAddDialogMediaSpan;
        boolean z12;
        CharSequence charSequenceApplyThumbs;
        int i8;
        int i9;
        CharSequence string6;
        CharSequence archivedDialogNames;
        CharSequence charSequence12;
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList<TLRPC.MessagePeerReaction> arrayList2;
        CharSequence string7;
        CharSequence string8;
        CharSequence charSequence13;
        CharSequence charSequence14;
        CharSequence charSequence15;
        String strStringForMessageListDate;
        boolean z13;
        String str2;
        String str3;
        boolean z14;
        CharSequence charSequence16;
        CharSequence charSequence17;
        String string9;
        CharSequence string10;
        CharSequence charSequenceEscape;
        CharSequence charSequence18;
        int i10;
        CharSequence charSequence19;
        String strStringForMessageListDate2;
        CharSequence charSequence20;
        boolean z15;
        boolean z16;
        String str4;
        String str5;
        boolean z17;
        CharSequence charSequence21;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        MessageObject messageObject7;
        MessageObject messageObject8;
        TLRPC.Message message3;
        CharSequence charSequence22;
        CharSequence charSequenceReplaceEmoji3;
        float f4;
        int iDp;
        int intrinsicWidth;
        float f5;
        boolean z18;
        int i11;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        int iDp2;
        int measuredWidth;
        int iDp3;
        int iDp4;
        int i12;
        ImageReceiver[] imageReceiverArr;
        int i13;
        DialogCellTags dialogCellTags;
        float f11;
        int iDp5;
        boolean z19;
        boolean zIsForumCell;
        CharSequence charSequence23;
        int iDp6;
        int i14;
        ImageReceiver[] imageReceiverArr2;
        CharSequence charSequence24;
        MessageObject messageObject9;
        boolean z20;
        int lineCount;
        int lineCount2;
        int lineCount3;
        StaticLayout staticLayout;
        float primaryHorizontal;
        float primaryHorizontal2;
        int i15;
        int lineCount4;
        int lineCount5;
        int lineCount6;
        CharSequence charSequenceEllipsize;
        CharSequence charSequence25;
        Layout.Alignment alignment;
        int i16;
        CharSequence charSequenceReplaceTwoNewLinesToOne;
        CharSequence charSequenceHighlightText2;
        MessageObject messageObject10;
        DialogCellTags dialogCellTags2;
        int iDp7;
        int iDp8;
        DialogCellTags dialogCellTags3;
        int iDp9;
        boolean z21;
        CharSequence charSequenceHighlightText3;
        CharSequence string11;
        CharSequence charSequence26;
        String str6;
        SpannableStringBuilder internal;
        if (this.isTransitionSupport) {
            return;
        }
        if (this.isDialogCell && !this.updateHelper.update() && this.currentDialogFolderId == 0 && this.currentDialogCommunityId == 0 && this.encryptedChat == null) {
            return;
        }
        if (!this.useForceThreeLines) {
            int i17 = SharedConfig.PASSCODE_TYPE_PIN;
        }
        boolean z22 = false;
        Theme.dialogs_namePaint[0].setTextSize(AndroidUtilities.dp(17.0f));
        Theme.dialogs_nameEncryptedPaint[0].setTextSize(AndroidUtilities.dp(17.0f));
        Theme.dialogs_messagePaint[0].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_messagePrintingPaint[0].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_namePaint[1].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_nameEncryptedPaint[1].setTextSize(AndroidUtilities.dp(16.0f));
        float f12 = 15.0f;
        Theme.dialogs_messagePaint[1].setTextSize(AndroidUtilities.dp(15.0f));
        Theme.dialogs_messagePaint[1].setTypeface(AndroidUtilities.regular());
        Theme.dialogs_messagePrintingPaint[1].setTextSize(AndroidUtilities.dp(15.0f));
        com.exteragram.messenger.utils.ui.TextPaint textPaint = Theme.dialogs_messagePaint[1];
        int color = Theme.getColor(Theme.key_chats_message_threeLines, this.resourcesProvider);
        ((TextPaint) textPaint).linkColor = color;
        textPaint.setColor(color);
        this.paintIndex = 1;
        this.thumbSize = 18;
        this.currentDialogFolderDialogsCount = 0;
        String str7 = null;
        CharSequence printingString = (isForumCell() || !(this.isDialogCell || this.isTopic)) ? null : MessagesController.getInstance(this.currentAccount).getPrintingString(this.currentDialogId, getTopicId(), true);
        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
        this.drawNameLock = false;
        this.drawVerified = false;
        this.drawBotVerified = false;
        this.drawBadge = false;
        this.drawPremium = false;
        this.drawForwardIcon = false;
        this.drawGiftIcon = false;
        this.drawScam = 0;
        this.drawPinBackground = false;
        this.thumbsCount = 0;
        this.hasVideoThumb = false;
        this.nameLayoutEllipsizeByGradient = false;
        boolean z23 = (UserObject.isUserSelf(this.user) || this.useMeForMyMessages) ? false : true;
        this.printingStringType = -1;
        if (!isForumCell()) {
            this.buttonLayout = null;
        }
        setOpenBotButton(false);
        if ((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || this.currentDialogFolderId != 0 || isForumCell() || hasTags()) {
            this.hasNameInMessage = true;
            i = 1;
        } else {
            this.hasNameInMessage = false;
            i = 2;
        }
        MessageObject messageObject11 = this.message;
        if (messageObject11 != null) {
            messageObject11.updateTranslation();
        }
        MessageObject messageObject12 = this.message;
        CharSequence charSequence27 = messageObject12 != null ? messageObject12.messageText : null;
        if (charSequence27 instanceof Spannable) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence27);
            f = 17.0f;
            URLSpanNoUnderlineBold[] uRLSpanNoUnderlineBoldArr = (URLSpanNoUnderlineBold[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpanNoUnderlineBold.class);
            int length2 = uRLSpanNoUnderlineBoldArr.length;
            f2 = 16.0f;
            int i18 = 0;
            while (i18 < length2) {
                spannableStringBuilder.removeSpan(uRLSpanNoUnderlineBoldArr[i18]);
                i18++;
                f12 = f12;
            }
            f3 = f12;
            for (URLSpanNoUnderline uRLSpanNoUnderline : (URLSpanNoUnderline[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpanNoUnderline.class)) {
                spannableStringBuilder.removeSpan(uRLSpanNoUnderline);
            }
            charSequence27 = spannableStringBuilder;
        } else {
            f = 17.0f;
            f2 = 16.0f;
            f3 = 15.0f;
        }
        this.lastMessageString = charSequence27;
        if (this.isShareToStoryCell) {
            this.drawPinBackground = true;
            z = false;
            z23 = false;
        } else {
            z = true;
        }
        CustomDialog customDialog = this.customDialog;
        if (customDialog != null) {
            if (customDialog.type == 2) {
                this.drawNameLock = true;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    this.nameLockTop = AndroidUtilities.dp(12.5f);
                    if (!LocaleController.isRTL) {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                        this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 10) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                    } else {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 6)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        this.nameLeft = AndroidUtilities.dp(22.0f);
                    }
                } else {
                    this.nameLockTop = AndroidUtilities.dp(16.5f);
                    if (!LocaleController.isRTL) {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
                        this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 8) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                    } else {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 4)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        this.nameLeft = AndroidUtilities.dp(18.0f);
                    }
                }
            } else {
                this.drawVerified = !this.forbidVerified && customDialog.verified;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    if (!LocaleController.isRTL) {
                        this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                    } else {
                        this.nameLeft = AndroidUtilities.dp(22.0f);
                    }
                } else if (!LocaleController.isRTL) {
                    this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
                } else {
                    this.nameLeft = AndroidUtilities.dp(18.0f);
                }
            }
            CustomDialog customDialog2 = this.customDialog;
            if (customDialog2.type == 1) {
                string11 = LocaleController.getString(C2807R.string.FromYou);
                CustomDialog customDialog3 = this.customDialog;
                if (customDialog3.isMedia) {
                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                    internal = formatInternal(i, this.message.messageText, null);
                    internal.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage, this.resourcesProvider), 0, internal.length(), 33);
                } else {
                    String strSubstring = customDialog3.message;
                    if (strSubstring.length() > 150) {
                        strSubstring = strSubstring.substring(0, 150);
                    }
                    if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                        internal = formatInternal(i, strSubstring, string11);
                    } else {
                        internal = formatInternal(i, strSubstring.replace('\n', ' '), string11);
                    }
                }
                CharSequence charSequenceReplaceEmoji4 = Emoji.replaceEmoji(internal, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                z10 = false;
                charSequence26 = charSequenceReplaceEmoji4;
            } else {
                CharSequence charSequence28 = customDialog2.message;
                if (customDialog2.isMedia) {
                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                }
                z10 = true;
                string11 = null;
                charSequence26 = charSequence28;
            }
            c2 = '\n';
            strStringForMessageListDate2 = LocaleController.stringForMessageListDate(this.customDialog.date);
            int i19 = this.customDialog.unread_count;
            if (i19 != 0) {
                this.drawCount = true;
                str6 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i19));
            } else {
                this.drawCount = false;
                str6 = null;
            }
            CustomDialog customDialog4 = this.customDialog;
            int i20 = customDialog4.sent;
            if (i20 == 0) {
                this.drawClock = true;
                this.drawCheck1 = false;
                this.drawCheck2 = false;
            } else if (i20 == 2) {
                this.drawCheck1 = true;
                this.drawCheck2 = true;
                this.drawClock = false;
            } else if (i20 == 1) {
                this.drawCheck1 = false;
                this.drawCheck2 = true;
                this.drawClock = false;
            } else {
                this.drawClock = false;
                this.drawCheck1 = false;
                this.drawCheck2 = false;
            }
            this.drawError = false;
            String str8 = customDialog4.name;
            charSequence20 = string11;
            charSequence19 = null;
            str2 = str6;
            charSequence18 = _UrlKt.FRAGMENT_ENCODE_SET;
            i10 = -1;
            charSequenceReplaceEmoji3 = charSequence26;
            charSequence22 = str8;
        } else {
            c2 = '\n';
            TLRPC.Chat chat4 = this.chat;
            CharSequence previewMessageNameString = (chat4 == null || chat4.megagroup || (messageObject8 = this.message) == null || (message3 = messageObject8.messageOwner) == null || TextUtils.isEmpty(message3.post_author)) ? null : this.message.messageOwner.post_author;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                if (!LocaleController.isRTL) {
                    this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                } else {
                    this.nameLeft = AndroidUtilities.dp(22.0f);
                }
            } else if (!LocaleController.isRTL) {
                this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
            } else {
                this.nameLeft = AndroidUtilities.dp(18.0f);
            }
            TLRPC.EncryptedChat encryptedChat = this.encryptedChat;
            int i21 = this.currentDialogFolderId;
            if (encryptedChat == null) {
                if (i21 == 0 && !this.isTopic) {
                    TLRPC.Chat chat5 = this.chat;
                    if (chat5 != null) {
                        long botVerificationIcon2 = DialogObject.getBotVerificationIcon(chat5);
                        BadgeDTO badge = BadgesController.INSTANCE.getBadge(this.chat);
                        TLRPC.Chat chat6 = this.chat;
                        if (chat6.scam) {
                            this.drawScam = 1;
                            Theme.dialogs_scamDrawable.checkText();
                        } else if (chat6.fake) {
                            this.drawScam = 2;
                            Theme.dialogs_fakeDrawable.checkText();
                        } else {
                            if (DialogObject.getEmojiStatusDocumentId(chat6.emoji_status) != 0) {
                                this.drawPremium = true;
                                this.nameLayoutEllipsizeByGradient = true;
                                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.emojiStatus;
                                swapAnimatedEmojiDrawable.center = LocaleController.isRTL;
                                z2 = z23;
                                swapAnimatedEmojiDrawable.set(DialogObject.getEmojiStatusDocumentId(this.chat.emoji_status), false);
                                this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.chat.emoji_status), false);
                            } else {
                                z2 = z23;
                                if (badge != null && !this.isTopic) {
                                    this.drawBadge = true;
                                    this.nameLayoutEllipsizeByGradient = true;
                                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatus;
                                    swapAnimatedEmojiDrawable2.center = LocaleController.isRTL;
                                    swapAnimatedEmojiDrawable2.set(badge.getDocumentId(), false);
                                    this.emojiStatus.setParticles(true, false);
                                } else {
                                    boolean z24 = this.forbidVerified;
                                    this.drawVerified = !z24 && this.chat.verified;
                                    this.drawBotVerified = (z24 || this.chat.bot_verification_icon == 0) ? false : true;
                                }
                            }
                            i2 = 2;
                            charSequence = charSequence27;
                            botVerificationIcon = botVerificationIcon2;
                        }
                        z2 = z23;
                        i2 = 2;
                        charSequence = charSequence27;
                        botVerificationIcon = botVerificationIcon2;
                    } else {
                        z2 = z23;
                        TLRPC.User user4 = this.user;
                        if (user4 != null) {
                            botVerificationIcon = DialogObject.getBotVerificationIcon(user4);
                            TLRPC.User user5 = this.user;
                            if (user5.scam) {
                                this.drawScam = 1;
                                Theme.dialogs_scamDrawable.checkText();
                            } else if (user5.fake) {
                                this.drawScam = 2;
                                Theme.dialogs_fakeDrawable.checkText();
                            } else {
                                boolean z25 = this.forbidVerified;
                                this.drawVerified = !z25 && user5.verified;
                                this.drawBotVerified = (z25 || UserObject.isUserSelf(user5) || this.user.bot_verification_icon == 0) ? false : true;
                            }
                            BadgesController badgesController = BadgesController.INSTANCE;
                            BadgeDTO badge2 = badgesController.getBadge(this.user);
                            BadgeDTO secondaryBadge = badgesController.getSecondaryBadge(this.user);
                            boolean z26 = (badge2 == null || (user = this.user) == null || UserObject.isUserSelf(user)) ? false : true;
                            boolean z27 = this.drawScam != 0 || this.drawVerified;
                            this.drawBadge = false;
                            i2 = 2;
                            if (MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                                badgeDTO = secondaryBadge;
                                long j = UserConfig.getInstance(this.currentAccount).clientUserId;
                                charSequence = charSequence27;
                                long j2 = this.user.id;
                                if (j != j2 && j2 != 0) {
                                    z3 = true;
                                }
                                this.drawPremium = z3;
                                if (z3) {
                                    z4 = true;
                                    if (z26) {
                                        this.drawBadge = true;
                                        this.emojiStatus.set(badge2.getDocumentId(), false);
                                        z4 = true;
                                        this.emojiStatus.setParticles(true, false);
                                    }
                                } else {
                                    Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(this.user);
                                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable3 = this.emojiStatus;
                                    swapAnimatedEmojiDrawable3.center = LocaleController.isRTL;
                                    if (emojiStatusDocumentId != null) {
                                        z4 = true;
                                        this.nameLayoutEllipsizeByGradient = true;
                                        swapAnimatedEmojiDrawable3.set(emojiStatusDocumentId.longValue(), false);
                                        this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.user.emoji_status), false);
                                        z27 = true;
                                    } else {
                                        z4 = true;
                                        if (z26) {
                                            this.drawBadge = true;
                                            swapAnimatedEmojiDrawable3.set(badge2.getDocumentId(), false);
                                            z4 = true;
                                            this.emojiStatus.setParticles(true, false);
                                        } else {
                                            this.nameLayoutEllipsizeByGradient = true;
                                            swapAnimatedEmojiDrawable3.set(PremiumGradient.getInstance().premiumStarDrawableMini, false);
                                            this.emojiStatus.setParticles(false, false);
                                        }
                                    }
                                }
                                if (badgeDTO == null && z26 && z27) {
                                    botVerificationIcon = badgeDTO.getDocumentId();
                                    this.drawBotVerified = z4;
                                    z22 = true;
                                }
                            } else {
                                badgeDTO = secondaryBadge;
                                charSequence = charSequence27;
                            }
                            z3 = false;
                            this.drawPremium = z3;
                            if (z3) {
                            }
                            if (badgeDTO == null) {
                            }
                        } else {
                            i2 = 2;
                            charSequence = charSequence27;
                            botVerificationIcon = 0;
                        }
                        z22 = false;
                    }
                    this.botVerification.setParticles(z22, false, 5);
                    if (botVerificationIcon != 0 && this.drawBotVerified) {
                        this.botVerification.set(botVerificationIcon, false);
                    } else {
                        this.botVerification.set((Drawable) null, false);
                    }
                }
                i3 = this.lastMessageDate;
                if (i3 == 0 && (messageObject7 = this.message) != null) {
                    i3 = messageObject7.messageOwner.date;
                }
                if (!this.isTopic) {
                    boolean z28 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                    this.draftVoice = z28;
                    TLRPC.DraftMessage draft = !z28 ? MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, getTopicId()) : null;
                    this.draftMessage = draft;
                    if (draft != null && TextUtils.isEmpty(draft.message)) {
                        this.draftMessage = null;
                    }
                } else if (this.isDialogCell || this.isSavedDialogCell) {
                    boolean z29 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                    this.draftVoice = z29;
                    this.draftMessage = !z29 ? MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, 0L) : null;
                } else {
                    this.draftVoice = false;
                    this.draftMessage = null;
                }
                z5 = this.draftVoice;
                if (!z5 || this.draftMessage != null) {
                    if (z5 && (draftMessage2 = this.draftMessage) != null && TextUtils.isEmpty(draftMessage2.message)) {
                        TLRPC.DraftMessage draftMessage4 = this.draftMessage;
                        if (draftMessage4.rich_message != null || ((inputReplyTo = draftMessage4.reply_to) != null && inputReplyTo.reply_to_msg_id != 0)) {
                        }
                        draftMessage3 = null;
                        this.draftMessage = null;
                        z6 = false;
                        this.draftVoice = false;
                        if (!isForumCell()) {
                        }
                        CharSequence charSequence29 = charSequence13;
                        if (!this.drawForwardIcon) {
                        }
                        if (TextUtils.isEmpty(this.customMessage)) {
                        }
                    } else {
                        draftMessage = this.draftMessage;
                        if (draftMessage != null || i3 <= draftMessage.date || this.unreadCount == 0) {
                            if (!ChatObject.isChannel(this.chat)) {
                                TLRPC.Chat chat7 = this.chat;
                                if (chat7.megagroup || chat7.creator || ((tL_chatAdminRights = chat7.admin_rights) != null && tL_chatAdminRights.post_messages)) {
                                    TLRPC.Chat chat8 = this.chat;
                                    if ((chat8 == null || !(chat8.left || chat8.kicked)) && !this.forbidDraft && (!ChatObject.isForum(chat8) || this.isTopic)) {
                                        z6 = false;
                                        draftMessage3 = null;
                                    } else {
                                        draftMessage3 = null;
                                        this.draftMessage = null;
                                        z6 = false;
                                        this.draftVoice = false;
                                    }
                                    if (!isForumCell()) {
                                        this.draftMessage = draftMessage3;
                                        this.draftVoice = z6;
                                        this.needEmoji = true;
                                        updateMessageThumbs();
                                        string = addSenderAvatar(ChatObject.isMonoForum(this.chat) ? null : AndroidUtilities.escape(getMessageNameString()), this.message);
                                        if (ChatObject.isMonoForum(this.chat)) {
                                            if (i == 1) {
                                                i = i2;
                                            }
                                            if (i == 3) {
                                                i = 4;
                                            }
                                            string = null;
                                        }
                                        CharSequence topicsNames = formatTopicsNames();
                                        MessageObject messageObject13 = this.message;
                                        CharSequence messageStringFormatted = this.message != null ? getMessageStringFormatted(i, messageObject13 != null ? MessagesController.getInstance(messageObject13.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason) : null, string, true) : _UrlKt.FRAGMENT_ENCODE_SET;
                                        if (this.applyName && messageStringFormatted.length() >= 0 && string != null) {
                                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(messageStringFormatted);
                                            spannableStringBuilderValueOf.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_name, this.resourcesProvider), 0, Math.min(spannableStringBuilderValueOf.length(), string.length() + 1), 0);
                                            charSequence21 = spannableStringBuilderValueOf;
                                            if (shouldDrawForwardPreviewIcon(this.message)) {
                                                prependForwardedIcon(spannableStringBuilderValueOf, Math.min(string.length() + 2, spannableStringBuilderValueOf.length()));
                                                charSequence21 = spannableStringBuilderValueOf;
                                            }
                                        } else {
                                            charSequence21 = messageStringFormatted;
                                            if (shouldDrawForwardPreviewIcon(this.message)) {
                                                SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(messageStringFormatted);
                                                prependForwardedIcon(spannableStringBuilderValueOf2, 0);
                                                charSequence21 = spannableStringBuilderValueOf2;
                                            }
                                        }
                                        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                        charSequence14 = charSequence21;
                                        charSequence15 = _UrlKt.FRAGMENT_ENCODE_SET;
                                        z9 = z2;
                                        z10 = true;
                                        i5 = -1;
                                        charSequence13 = topicsNames;
                                    } else {
                                        if (!TextUtils.isEmpty(this.customMessage)) {
                                            this.draftMessage = null;
                                            this.draftVoice = false;
                                            CharSequence charSequence30 = this.customMessage;
                                            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                            charSequence3 = _UrlKt.FRAGMENT_ENCODE_SET;
                                            z9 = z2;
                                            string = null;
                                            z10 = true;
                                            i5 = -1;
                                            string7 = charSequence30;
                                        } else {
                                            if (printingString != null) {
                                                this.lastPrintString = printingString;
                                                int iIntValue = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.currentDialogId, getTopicId()).intValue();
                                                this.printingStringType = iIntValue;
                                                StatusDrawable chatStatusDrawable = Theme.getChatStatusDrawable(iIntValue);
                                                int intrinsicWidth2 = chatStatusDrawable != null ? chatStatusDrawable.getIntrinsicWidth() + AndroidUtilities.dp(3.0f) : 0;
                                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                                CharSequence charSequenceReplace = TextUtils.replace(printingString, new String[]{"..."}, new String[]{_UrlKt.FRAGMENT_ENCODE_SET});
                                                int iIndexOf = this.printingStringType == 5 ? charSequenceReplace.toString().indexOf("**oo**") : -1;
                                                if (iIndexOf >= 0) {
                                                    spannableStringBuilder2.append(charSequenceReplace).setSpan(new FixedWidthSpan(Theme.getChatStatusDrawable(this.printingStringType).getIntrinsicWidth()), iIndexOf, iIndexOf + 6, 0);
                                                } else {
                                                    spannableStringBuilder2.append((CharSequence) " ").append(charSequenceReplace).setSpan(new FixedWidthSpan(intrinsicWidth2), 0, 1, 0);
                                                }
                                                i4 = iIndexOf;
                                                z7 = false;
                                                charSequence2 = spannableStringBuilder2;
                                            } else {
                                                this.lastPrintString = null;
                                                this.printingStringType = -1;
                                                i4 = -1;
                                                charSequence2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                z7 = true;
                                            }
                                            if (this.draftVoice || this.draftMessage != null) {
                                                int i22 = i4;
                                                CharSequence charSequence31 = charSequence2;
                                                string = LocaleController.getString(C2807R.string.Draft);
                                                TLRPC.DraftMessage draftMessage5 = this.draftMessage;
                                                if (draftMessage5 != null && TextUtils.isEmpty(draftMessage5.message) && this.draftMessage.rich_message == null) {
                                                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                                        i5 = i22;
                                                        charSequenceReplaceEmoji = _UrlKt.FRAGMENT_ENCODE_SET;
                                                    } else {
                                                        SpannableStringBuilder spannableStringBuilderValueOf3 = SpannableStringBuilder.valueOf(string);
                                                        spannableStringBuilderValueOf3.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length(), 33);
                                                        i5 = i22;
                                                        z10 = false;
                                                        charSequence5 = spannableStringBuilderValueOf3;
                                                        charSequence4 = charSequence31;
                                                        z9 = z2;
                                                        charSequence3 = charSequence4;
                                                        string7 = charSequence5;
                                                    }
                                                } else {
                                                    TLRPC.DraftMessage draftMessage6 = this.draftMessage;
                                                    if (draftMessage6 != null && (richMessage = draftMessage6.rich_message) != null) {
                                                        charSequenceSubSequence = MessageObject.formatRichMessage(richMessage, false, false, 150);
                                                    } else if (this.draftVoice) {
                                                        charSequenceSubSequence = LocaleController.getString(C2807R.string.AttachAudio);
                                                    } else if (draftMessage6 != null) {
                                                        charSequenceSubSequence = draftMessage6.message;
                                                        if (charSequenceSubSequence.length() > 150) {
                                                            charSequenceSubSequence = charSequenceSubSequence.subSequence(0, 150);
                                                        }
                                                    } else {
                                                        charSequenceSubSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                                                    }
                                                    SpannableString spannableString = new SpannableString(charSequenceSubSequence);
                                                    TLRPC.DraftMessage draftMessage7 = this.draftMessage;
                                                    if (draftMessage7 != null) {
                                                        MediaDataController.addTextStyleRuns(draftMessage7, spannableString, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
                                                        TLRPC.DraftMessage draftMessage8 = this.draftMessage;
                                                        if (draftMessage8 != null && (arrayList = draftMessage8.entities) != null) {
                                                            LocaleUtils.parseCustomEmojis(draftMessage8.message, arrayList);
                                                            ArrayList<TLRPC.MessageEntity> arrayList3 = this.draftMessage.entities;
                                                            TextPaint textPaint2 = this.currentMessagePaint;
                                                            MediaDataController.addAnimatedEmojiSpans(arrayList3, spannableString, textPaint2 == null ? null : textPaint2.getFontMetricsInt());
                                                        }
                                                    } else if (this.draftVoice) {
                                                        spannableString.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_actionMessage, this.resourcesProvider), 0, spannableString.length(), 33);
                                                    }
                                                    SpannableStringBuilder internal2 = formatInternal(i, AndroidUtilities.replaceNewLines(spannableString), string);
                                                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                                        z8 = false;
                                                    } else {
                                                        z8 = false;
                                                        internal2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length() + 1, 33);
                                                    }
                                                    i5 = i22;
                                                    charSequenceReplaceEmoji = Emoji.replaceEmoji(internal2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), z8);
                                                }
                                                z9 = z2;
                                                charSequence3 = charSequence31;
                                                z10 = false;
                                                string7 = charSequenceReplaceEmoji;
                                            } else {
                                                if (this.clearingDialog) {
                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                    string8 = LocaleController.getString(C2807R.string.HistoryCleared);
                                                } else {
                                                    MessageObject messageObject14 = this.message;
                                                    if (messageObject14 != null) {
                                                        String restrictionReason = MessagesController.getInstance(messageObject14.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason);
                                                        long fromChatId = this.message.getFromChatId();
                                                        boolean zIsUserDialog = DialogObject.isUserDialog(fromChatId);
                                                        int i23 = this.currentAccount;
                                                        if (zIsUserDialog) {
                                                            MessagesController.getInstance(i23).getUser(Long.valueOf(fromChatId));
                                                            chat = null;
                                                        } else {
                                                            chat = MessagesController.getInstance(i23).getChat(Long.valueOf(-fromChatId));
                                                        }
                                                        this.drawCount2 = true;
                                                        if (this.dialogsType != 0 || this.currentDialogId <= 0 || !this.message.isOutOwner() || (tL_messageReactions = this.message.messageOwner.reactions) == null || (arrayList2 = tL_messageReactions.recent_reactions) == null || arrayList2.isEmpty() || this.reactionMentionCount <= 0) {
                                                            charSequence6 = charSequence2;
                                                            string2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                            z11 = false;
                                                            charSequence7 = charSequence6;
                                                            if (z11) {
                                                                i6 = i4;
                                                                charSequence12 = string2;
                                                            } else {
                                                                int i24 = this.dialogsType;
                                                                if (i24 == i2) {
                                                                    TLRPC.Chat chat9 = this.chat;
                                                                    if (chat9 == null) {
                                                                        string6 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                    } else if (ChatObject.isChannel(chat9)) {
                                                                        TLRPC.Chat chat10 = this.chat;
                                                                        if (!chat10.megagroup) {
                                                                            int i25 = chat10.participants_count;
                                                                            if (i25 != 0) {
                                                                                string6 = LocaleController.formatPluralStringComma("Subscribers", i25);
                                                                            } else if (!ChatObject.isPublic(chat10)) {
                                                                                string6 = LocaleController.getString(C2807R.string.ChannelPrivate).toLowerCase();
                                                                            } else {
                                                                                string6 = LocaleController.getString(C2807R.string.ChannelPublic).toLowerCase();
                                                                            }
                                                                        } else {
                                                                            TLRPC.Chat chat11 = this.chat;
                                                                            int i26 = chat11.participants_count;
                                                                            if (i26 != 0) {
                                                                                string6 = LocaleController.formatPluralStringComma("Members", i26);
                                                                            } else if (chat11.has_geo) {
                                                                                string6 = LocaleController.getString(C2807R.string.MegaLocation);
                                                                            } else if (!ChatObject.isPublic(chat11)) {
                                                                                string6 = LocaleController.getString(C2807R.string.MegaPrivate).toLowerCase();
                                                                            } else {
                                                                                string6 = LocaleController.getString(C2807R.string.MegaPublic).toLowerCase();
                                                                            }
                                                                        }
                                                                    }
                                                                    this.drawCount2 = false;
                                                                } else if (i24 == 3 && UserObject.isUserSelf(this.user)) {
                                                                    DialogsActivity dialogsActivity = this.parentFragment;
                                                                    string6 = LocaleController.getString((dialogsActivity == null || !dialogsActivity.isQuote) ? C2807R.string.SavedMessagesInfo : C2807R.string.SavedMessagesInfoQuote);
                                                                } else {
                                                                    boolean z30 = this.useForceThreeLines;
                                                                    if (!z30 && !SharedConfig.useThreeLinesLayout && this.currentDialogCommunityId != 0) {
                                                                        charSequenceReplaceEmoji2 = formatCommunityDialogNames();
                                                                    } else if (!z30 && !SharedConfig.useThreeLinesLayout && this.currentDialogFolderId != 0) {
                                                                        charSequenceReplaceEmoji2 = formatArchivedDialogNames();
                                                                    } else {
                                                                        MessageObject messageObject15 = this.message;
                                                                        if ((messageObject15.messageOwner instanceof TLRPC.TL_messageService) && (!MessageObject.isTopicActionMessage(messageObject15) || (this.message.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate))) {
                                                                            MessageObject messageObject16 = this.message;
                                                                            TLRPC.MessageAction messageAction = messageObject16.messageOwner.action;
                                                                            if (messageAction instanceof TLRPC.TL_messageActionPhoneCall) {
                                                                                TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction;
                                                                                if (messageObject16.isOutOwner()) {
                                                                                    if (tL_messageActionPhoneCall.video) {
                                                                                        i9 = C2807R.drawable.dialog_media_outgoing_video_call_20;
                                                                                    } else {
                                                                                        i9 = C2807R.drawable.dialog_media_outgoing_call_20;
                                                                                    }
                                                                                    charSequenceAddDialogMediaSpan = DialogMediaIconsHelper.addDialogMediaSpan(charSequence, i9, false);
                                                                                } else {
                                                                                    CharSequence charSequence32 = charSequence;
                                                                                    if (tL_messageActionPhoneCall.video) {
                                                                                        i8 = C2807R.drawable.dialog_media_incoming_video_call_20;
                                                                                    } else {
                                                                                        i8 = C2807R.drawable.dialog_media_incoming_call_20;
                                                                                    }
                                                                                    charSequenceAddDialogMediaSpan = DialogMediaIconsHelper.addDialogMediaSpan(charSequence32, i8, false);
                                                                                }
                                                                            } else {
                                                                                charSequence11 = charSequence;
                                                                                if (!ChatObject.isChannelAndNotMegaGroup(this.chat) || !(this.message.messageOwner.action instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                                                    charSequenceAddDialogMediaSpan = this.message.messageTextShort;
                                                                                    if (charSequenceAddDialogMediaSpan != null) {
                                                                                    }
                                                                                    z12 = z2;
                                                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                    if (this.message.type == 21) {
                                                                                        updateMessageThumbs();
                                                                                        z2 = z12;
                                                                                        charSequence10 = null;
                                                                                        i6 = i4;
                                                                                        charSequenceApplyThumbs = applyThumbs(charSequence11);
                                                                                    } else {
                                                                                        z2 = z12;
                                                                                        charSequence10 = null;
                                                                                        i6 = i4;
                                                                                        charSequenceApplyThumbs = charSequence11;
                                                                                    }
                                                                                    if (this.currentDialogCommunityId == 0) {
                                                                                    }
                                                                                    z10 = z7;
                                                                                    string = archivedDialogNames;
                                                                                    i5 = i6;
                                                                                    charSequence5 = charSequenceApplyThumbs;
                                                                                    charSequence4 = charSequence7;
                                                                                    z9 = z2;
                                                                                    charSequence3 = charSequence4;
                                                                                    string7 = charSequence5;
                                                                                } else {
                                                                                    charSequence11 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                                    z12 = false;
                                                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                    if (this.message.type == 21) {
                                                                                    }
                                                                                    if (this.currentDialogCommunityId == 0) {
                                                                                    }
                                                                                    z10 = z7;
                                                                                    string = archivedDialogNames;
                                                                                    i5 = i6;
                                                                                    charSequence5 = charSequenceApplyThumbs;
                                                                                    charSequence4 = charSequence7;
                                                                                    z9 = z2;
                                                                                    charSequence3 = charSequence4;
                                                                                    string7 = charSequence5;
                                                                                }
                                                                            }
                                                                            charSequence11 = charSequenceAddDialogMediaSpan;
                                                                            z12 = z2;
                                                                            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                            if (this.message.type == 21) {
                                                                            }
                                                                            if (this.currentDialogCommunityId == 0) {
                                                                            }
                                                                            z10 = z7;
                                                                            string = archivedDialogNames;
                                                                            i5 = i6;
                                                                            charSequence5 = charSequenceApplyThumbs;
                                                                            charSequence4 = charSequence7;
                                                                            z9 = z2;
                                                                            charSequence3 = charSequence4;
                                                                            string7 = charSequence5;
                                                                        } else {
                                                                            CharSequence charSequence33 = charSequence;
                                                                            this.needEmoji = true;
                                                                            updateMessageThumbs();
                                                                            CharSequence charSequenceEscape2 = (this.isSavedDialog || (user3 = this.user) == null || !user3.self || this.message.isOutOwner()) ? null : AndroidUtilities.escape(getMessageNameString());
                                                                            boolean z31 = this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                                                                            boolean zShouldDrawForwardPreviewIcon = shouldDrawForwardPreviewIcon(this.message);
                                                                            boolean z32 = z31 && (messageObject6 = this.message) != null && (!messageObject6.isOutOwner() || zShouldDrawForwardPreviewIcon) && ((chat3 = this.chat) == null || !ChatObject.isChannel(chat3) || ChatObject.isMegagroup(this.chat) || this.chat.signature_profiles);
                                                                            boolean z33 = z31 && (messageObject5 = this.message) != null && messageObject5.isOutOwner() && !zShouldDrawForwardPreviewIcon;
                                                                            boolean z34 = z7;
                                                                            if ((z33 || !this.isSavedDialog || (user2 = this.user) == null || user2.self || (messageObject4 = this.message) == null || !messageObject4.isOutOwner()) && !z32 && ((z33 || charSequenceEscape2 == null) && ((messageObject = this.message) == null || (message = messageObject.messageOwner) == null || message.guestchat_via_from == null))) {
                                                                                TLRPC.Chat chat12 = this.chat;
                                                                                i6 = i4;
                                                                                charSequence8 = charSequenceEscape2;
                                                                                if (chat12 != null) {
                                                                                    long j3 = chat12.id;
                                                                                    if (j3 <= 0 || ((((chat != null && chat.id == j3) || (ChatObject.isChannel(chat12) && !ChatObject.isMegagroup(this.chat) && previewMessageNameString == null)) && (!ChatObject.isChannel(this.chat) || ChatObject.isMegagroup(this.chat) || !this.chat.signature_profiles)) || ForumUtilities.isTopicCreateMessage(this.message))) {
                                                                                        TLRPC.User user6 = this.user;
                                                                                        if (user6 == null || user6.id != UserObject.VERIFY || (messageObject2 = this.message) == null || messageObject2.getForwardedFromId() == null) {
                                                                                            if (TextUtils.isEmpty(restrictionReason)) {
                                                                                                boolean zIsTopicActionMessage = MessageObject.isTopicActionMessage(this.message);
                                                                                                MessageObject messageObject17 = this.message;
                                                                                                if (zIsTopicActionMessage) {
                                                                                                    CharSequence charSequence34 = messageObject17.messageTextShort;
                                                                                                    if (charSequence34 == null || ((messageObject17.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate) && this.isTopic)) {
                                                                                                        charSequence34 = messageObject17.messageText;
                                                                                                    }
                                                                                                    CharSequence charSequence35 = charSequence34;
                                                                                                    string4 = charSequence35;
                                                                                                    if (messageObject17.topicIconDrawable[0] instanceof ForumBubbleDrawable) {
                                                                                                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true));
                                                                                                        string4 = charSequence35;
                                                                                                        if (tL_forumTopicFindTopic != null) {
                                                                                                            ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(tL_forumTopicFindTopic.icon_color);
                                                                                                            string4 = charSequence35;
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    TLRPC.MessageMedia messageMedia = messageObject17.messageOwner.media;
                                                                                                    if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia.photo instanceof TLRPC.TL_photoEmpty) && messageMedia.ttl_seconds != 0) {
                                                                                                        string4 = LocaleController.getString(C2807R.string.AttachPhotoExpired);
                                                                                                    } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                                                                                                        TLRPC.Document document = messageMedia.document;
                                                                                                        if (((document instanceof TLRPC.TL_documentEmpty) || document == null) && messageMedia.ttl_seconds != 0) {
                                                                                                            if (messageMedia.voice) {
                                                                                                                string4 = LocaleController.getString(C2807R.string.AttachVoiceExpired);
                                                                                                            } else if (messageMedia.round) {
                                                                                                                string4 = LocaleController.getString(C2807R.string.AttachRoundExpired);
                                                                                                            } else {
                                                                                                                string4 = LocaleController.getString(C2807R.string.AttachVideoExpired);
                                                                                                            }
                                                                                                        } else if (getCaptionMessage() != null && !(this.message.messageOwner.media instanceof TLRPC.TL_messageMediaPoll)) {
                                                                                                            MessageObject captionMessage = getCaptionMessage();
                                                                                                            if (!this.needEmoji) {
                                                                                                                str = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                                                            } else if (captionMessage.isVideo()) {
                                                                                                                str = "📹 ";
                                                                                                            } else if (captionMessage.isVoice()) {
                                                                                                                str = "🎤 ";
                                                                                                            } else if (captionMessage.isMusic()) {
                                                                                                                str = "🎧 ";
                                                                                                            } else if (captionMessage.isPhoto()) {
                                                                                                                str = "🖼 ";
                                                                                                            } else {
                                                                                                                str = "📎 ";
                                                                                                            }
                                                                                                            if (captionMessage.hasHighlightedWords() && !TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                                                                                                                CharSequence charSequenceEllipsizeCenterEnd2 = captionMessage.messageTrimmedToHighlight;
                                                                                                                int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 47);
                                                                                                                if (this.hasNameInMessage) {
                                                                                                                    boolean zIsEmpty = TextUtils.isEmpty(null);
                                                                                                                    TextPaint textPaint3 = this.currentMessagePaint;
                                                                                                                    if (!zIsEmpty) {
                                                                                                                        throw null;
                                                                                                                    }
                                                                                                                    measuredWidth2 = (int) (measuredWidth2 - textPaint3.measureText(": "));
                                                                                                                }
                                                                                                                if (measuredWidth2 > 0 && captionMessage.messageTrimmedToHighlightCut) {
                                                                                                                    charSequenceEllipsizeCenterEnd2 = AndroidUtilities.ellipsizeCenterEnd(charSequenceEllipsizeCenterEnd2, captionMessage.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, 130);
                                                                                                                }
                                                                                                                charSequenceAppend = new SpannableStringBuilder(str).append(charSequenceEllipsizeCenterEnd2);
                                                                                                            } else {
                                                                                                                SpannableString spannableString2 = new SpannableString(captionMessage.caption);
                                                                                                                if (captionMessage.messageOwner != null) {
                                                                                                                    captionMessage.spoilLoginCode();
                                                                                                                    MediaDataController.addTextStyleRuns(captionMessage.messageOwner.entities, captionMessage.caption, spannableString2, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
                                                                                                                    ArrayList<TLRPC.MessageEntity> arrayList4 = captionMessage.messageOwner.entities;
                                                                                                                    TextPaint textPaint4 = this.currentMessagePaint;
                                                                                                                    MediaDataController.addAnimatedEmojiSpans(arrayList4, spannableString2, textPaint4 == null ? null : textPaint4.getFontMetricsInt());
                                                                                                                }
                                                                                                                charSequenceAppend = new SpannableStringBuilder(str).append((CharSequence) spannableString2);
                                                                                                            }
                                                                                                            string4 = charSequenceAppend;
                                                                                                        } else {
                                                                                                            MessageObject messageObject18 = this.message;
                                                                                                            TLRPC.Message message4 = messageObject18.messageOwner;
                                                                                                            TLRPC.MessageMedia messageMedia2 = message4.media;
                                                                                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                                                                                                int size = ((TLRPC.TL_messageMediaPaidMedia) messageMedia2).extended_media.size();
                                                                                                                if (this.hasVideoThumb) {
                                                                                                                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Media", size, new Object[0]) : LocaleController.getString(C2807R.string.AttachVideo);
                                                                                                                } else {
                                                                                                                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Photos", size, new Object[0]) : LocaleController.getString(C2807R.string.AttachPhoto);
                                                                                                                }
                                                                                                                CharSequence charSequenceReplaceStars = StarsIntroActivity.replaceStars(LocaleController.formatString(C2807R.string.AttachPaidMedia, pluralString2));
                                                                                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                                string4 = charSequenceReplaceStars;
                                                                                                            } else if (this.thumbsCount > 1) {
                                                                                                                boolean z35 = this.hasVideoThumb;
                                                                                                                ArrayList<MessageObject> arrayList5 = this.groupMessages;
                                                                                                                if (z35) {
                                                                                                                    pluralString = LocaleController.formatPluralString("Media", arrayList5 == null ? 0 : arrayList5.size(), new Object[0]);
                                                                                                                } else {
                                                                                                                    pluralString = LocaleController.formatPluralString("Photos", arrayList5 == null ? 0 : arrayList5.size(), new Object[0]);
                                                                                                                }
                                                                                                                string4 = pluralString;
                                                                                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                            } else {
                                                                                                                if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveaway) {
                                                                                                                    TLRPC.MessageFwdHeader messageFwdHeader = message4.fwd_from;
                                                                                                                    if (messageFwdHeader != null) {
                                                                                                                        TLRPC.Peer peer = messageFwdHeader.from_id;
                                                                                                                        if (peer instanceof TLRPC.TL_peerChannel) {
                                                                                                                            zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(peer.channel_id, this.currentAccount);
                                                                                                                        } else {
                                                                                                                            zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.chat);
                                                                                                                        }
                                                                                                                        string3 = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2807R.string.BoostingGiveawayChannelStarted : C2807R.string.BoostingGiveawayGroupStarted);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                                                                                                    string3 = LocaleController.getString(C2807R.string.BoostingGiveawayResults);
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                                                                                                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia2;
                                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageMediaPoll.poll.question;
                                                                                                                    if (tL_textWithEntities != null && tL_textWithEntities.entities != null) {
                                                                                                                        SpannableString spannableString3 = new SpannableString(tL_messageMediaPoll.poll.question.text);
                                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageMediaPoll.poll.question;
                                                                                                                        MediaDataController.addTextStyleRuns(tL_textWithEntities2.entities, tL_textWithEntities2.text, spannableString3);
                                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaPoll.poll.question.entities, spannableString3, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(spannableString3, C2807R.drawable.dialog_media_poll_20, false);
                                                                                                                    } else {
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities.text, C2807R.drawable.dialog_media_poll_20, false);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                                                                                                                    TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia2;
                                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaToDo.todo.title;
                                                                                                                    if (tL_textWithEntities3 != null && tL_textWithEntities3.entities != null) {
                                                                                                                        SpannableString spannableString4 = new SpannableString(tL_messageMediaToDo.todo.title.text);
                                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaToDo.todo.title;
                                                                                                                        MediaDataController.addTextStyleRuns(tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString4);
                                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString4, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(spannableString4, C2807R.drawable.dialog_media_checklist_20, false);
                                                                                                                    } else {
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities3.text, C2807R.drawable.dialog_media_checklist_20, false);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                                                                                                    string3 = DialogMediaIconsHelper.addDialogMediaSpan(messageMedia2.game.title, C2807R.drawable.dialog_media_game_20, false);
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaInvoice) {
                                                                                                                    string3 = messageMedia2.title;
                                                                                                                } else if (messageObject18.type == 14) {
                                                                                                                    string3 = String.format("🎧 %s - %s", messageObject18.getMusicAuthor(), this.message.getMusicTitle());
                                                                                                                } else if ((messageMedia2 instanceof TLRPC.TL_messageMediaStory) && messageMedia2.via_mention) {
                                                                                                                    if (messageObject18.isOut()) {
                                                                                                                        TLRPC.User user7 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.getDialogId()));
                                                                                                                        if (user7 != null) {
                                                                                                                            firstName = UserObject.getFirstName(user7);
                                                                                                                            int iIndexOf2 = firstName.indexOf(32);
                                                                                                                            if (iIndexOf2 >= 0) {
                                                                                                                                firstName = firstName.substring(0, iIndexOf2);
                                                                                                                            }
                                                                                                                        } else {
                                                                                                                            firstName = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                                                                        }
                                                                                                                        string3 = LocaleController.formatString(C2807R.string.StoryYouMentionInDialog, firstName);
                                                                                                                    } else {
                                                                                                                        string3 = LocaleController.getString(C2807R.string.StoryMentionInDialog);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (messageObject18.hasHighlightedWords() && !TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                                                        CharSequence charSequence36 = this.message.messageTrimmedToHighlight;
                                                                                                                        int measuredWidth3 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 23);
                                                                                                                        MessageObject messageObject19 = this.message;
                                                                                                                        charSequenceEllipsizeCenterEnd = charSequence36;
                                                                                                                        if (messageObject19.messageTrimmedToHighlightCut) {
                                                                                                                            charSequenceEllipsizeCenterEnd = AndroidUtilities.ellipsizeCenterEnd(charSequence36, messageObject19.highlightedWords.get(0), measuredWidth3, this.currentMessagePaint, 130);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        SpannableString spannableString5 = new SpannableString(charSequence33);
                                                                                                                        MessageObject messageObject20 = this.message;
                                                                                                                        if (messageObject20 != null) {
                                                                                                                            messageObject20.spoilLoginCode();
                                                                                                                        }
                                                                                                                        MediaDataController.addTextStyleRuns(this.message, spannableString5, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
                                                                                                                        MessageObject messageObject21 = this.message;
                                                                                                                        charSequenceEllipsizeCenterEnd = spannableString5;
                                                                                                                        if (messageObject21 != null) {
                                                                                                                            TLRPC.Message message5 = messageObject21.messageOwner;
                                                                                                                            charSequenceEllipsizeCenterEnd = spannableString5;
                                                                                                                            if (message5 != null) {
                                                                                                                                ArrayList<TLRPC.MessageEntity> arrayList6 = message5.entities;
                                                                                                                                TextPaint textPaint5 = this.currentMessagePaint;
                                                                                                                                MediaDataController.addAnimatedEmojiSpans(arrayList6, spannableString5, textPaint5 == null ? null : textPaint5.getFontMetricsInt());
                                                                                                                                charSequenceEllipsizeCenterEnd = spannableString5;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    AndroidUtilities.highlightText(charSequenceEllipsizeCenterEnd, this.message.highlightedWords, this.resourcesProvider);
                                                                                                                    string3 = charSequenceEllipsizeCenterEnd;
                                                                                                                }
                                                                                                                CharSequence charSequence37 = string3;
                                                                                                                MessageObject messageObject22 = this.message;
                                                                                                                if (messageObject22.messageOwner.media == null || messageObject22.isMediaEmpty()) {
                                                                                                                    TL_iv.RichMessage richMessage2 = this.message.messageOwner.rich_message;
                                                                                                                    string4 = charSequence37;
                                                                                                                    if (richMessage2 != null) {
                                                                                                                        string4 = charSequence37;
                                                                                                                        if (richMessage2.blocks.size() == 1) {
                                                                                                                            string4 = charSequence37;
                                                                                                                            if (MessageObject.isBlueBlock(this.message.messageOwner.rich_message.blocks.get(0))) {
                                                                                                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                                                string4 = charSequence37;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            } else {
                                                                                                string4 = restrictionReason;
                                                                                            }
                                                                                            CharSequence charSequence38 = string4;
                                                                                            if (this.message.isReplyToStory()) {
                                                                                                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string4);
                                                                                                spannableStringBuilder3.insert(0, (CharSequence) "d ");
                                                                                                spannableStringBuilder3.setSpan(new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2807R.drawable.msg_mini_replystory).mutate()), 0, 1, 0);
                                                                                                charSequence38 = spannableStringBuilder3;
                                                                                            }
                                                                                            CharSequence charSequence39 = charSequence38;
                                                                                            if (this.thumbsCount > 0) {
                                                                                                if (this.message.hasHighlightedWords() && !TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                                    charSequenceReplaceNewLines = this.message.messageTrimmedToHighlight;
                                                                                                    int measuredWidth4 = getMeasuredWidth() - AndroidUtilities.dp(((this.messagePaddingStart + 23) + ((this.thumbSize + 2) * this.thumbsCount)) + 3);
                                                                                                    MessageObject messageObject23 = this.message;
                                                                                                    if (messageObject23.messageTrimmedToHighlightCut) {
                                                                                                        charSequenceReplaceNewLines = AndroidUtilities.ellipsizeCenterEnd(charSequenceReplaceNewLines, messageObject23.highlightedWords.get(0), measuredWidth4, this.currentMessagePaint, 130);
                                                                                                    }
                                                                                                } else {
                                                                                                    int length3 = charSequence38.length();
                                                                                                    CharSequence charSequenceSubSequence2 = charSequence38;
                                                                                                    if (length3 > 150) {
                                                                                                        charSequenceSubSequence2 = charSequence38.subSequence(0, 150);
                                                                                                    }
                                                                                                    charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceSubSequence2);
                                                                                                }
                                                                                                if (!(charSequenceReplaceNewLines instanceof SpannableStringBuilder)) {
                                                                                                    charSequenceReplaceNewLines = new SpannableStringBuilder(charSequenceReplaceNewLines);
                                                                                                }
                                                                                                SpannableStringBuilder spannableStringBuilder4 = (SpannableStringBuilder) charSequenceReplaceNewLines;
                                                                                                spannableStringBuilder4.insert(0, (CharSequence) " ");
                                                                                                spannableStringBuilder4.setSpan(new ThumbnailSpan(AndroidUtilities.dp(((this.thumbSize + 2) * this.thumbsCount) + 3)), 0, 1, 33);
                                                                                                CharSequence charSequenceReplaceEmoji5 = Emoji.replaceEmoji(spannableStringBuilder4, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                                if (this.message.hasHighlightedWords()) {
                                                                                                    CharSequence charSequenceHighlightText4 = AndroidUtilities.highlightText(spannableStringBuilder4, this.message.highlightedWords, this.resourcesProvider);
                                                                                                    CharSequence charSequence40 = charSequenceHighlightText4;
                                                                                                    if (charSequenceHighlightText4 == null) {
                                                                                                        charSequence40 = charSequenceReplaceEmoji5;
                                                                                                    }
                                                                                                    z34 = false;
                                                                                                    charSequence39 = charSequence40;
                                                                                                }
                                                                                            }
                                                                                            if (!zShouldDrawForwardPreviewIcon || separateMessageNameLine()) {
                                                                                                charSequence9 = charSequence39;
                                                                                            } else {
                                                                                                this.drawForwardIcon = true;
                                                                                                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(charSequence39);
                                                                                                spannableStringBuilder5.insert(0, (CharSequence) "d ");
                                                                                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2807R.drawable.mini_forwarded).mutate());
                                                                                                coloredImageSpan.setAlpha(0.9f);
                                                                                                spannableStringBuilder5.setSpan(coloredImageSpan, 0, 1, 0);
                                                                                                charSequence9 = spannableStringBuilder5;
                                                                                            }
                                                                                            z7 = z34;
                                                                                            charSequence12 = charSequence9;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                i6 = i4;
                                                                                charSequence8 = charSequenceEscape2;
                                                                            }
                                                                            if (this.message != null && (chat2 = this.chat) != null && ChatObject.isChannel(chat2) && !ChatObject.isMegagroup(this.chat) && this.chat.signature_profiles && (message2 = this.message.messageOwner) != null && message2.out) {
                                                                                string5 = LocaleController.getString(C2807R.string.FromYou);
                                                                            } else {
                                                                                if (charSequence8 != null) {
                                                                                    previewMessageNameString = charSequence8;
                                                                                } else if (previewMessageNameString == null) {
                                                                                    previewMessageNameString = getPreviewMessageNameString();
                                                                                }
                                                                                string5 = (previewMessageNameString == null && z31 && (messageObject3 = this.message) != null && messageObject3.isOutOwner()) ? LocaleController.getString(C2807R.string.FromYou) : previewMessageNameString;
                                                                            }
                                                                            TLRPC.Chat chat13 = this.chat;
                                                                            CharSequence charSequence41 = string5;
                                                                            if (chat13 != null) {
                                                                                charSequence41 = string5;
                                                                                if (chat13.forum) {
                                                                                    charSequence41 = string5;
                                                                                    if (!this.isTopic) {
                                                                                        charSequence41 = string5;
                                                                                        if (!this.useFromUserAsAvatar) {
                                                                                            CharSequence topicIconName = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconName(this.chat, this.message, this.currentMessagePaint);
                                                                                            charSequence41 = string5;
                                                                                            if (!TextUtils.isEmpty(topicIconName)) {
                                                                                                SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder("-");
                                                                                                ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2807R.drawable.msg_mini_forumarrow).mutate());
                                                                                                coloredImageSpan2.setColorKey((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? -1 : Theme.key_chats_nameMessage);
                                                                                                spannableStringBuilder6.setSpan(coloredImageSpan2, 0, 1, 0);
                                                                                                SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                                                                                spannableStringBuilder7.append(string5).append((CharSequence) spannableStringBuilder6).append(topicIconName);
                                                                                                charSequence41 = spannableStringBuilder7;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            CharSequence charSequenceAddSenderAvatar = addSenderAvatar(charSequence41, this.message);
                                                                            SpannableStringBuilder messageStringFormatted2 = getMessageStringFormatted(i, restrictionReason, charSequenceAddSenderAvatar, false);
                                                                            int i27 = (!zShouldDrawForwardPreviewIcon || separateMessageNameLine() || charSequenceAddSenderAvatar == null) ? 0 : 3;
                                                                            if (i27 != 0) {
                                                                                prependForwardedIcon(messageStringFormatted2, charSequenceAddSenderAvatar.length() + 2);
                                                                            }
                                                                            if (this.useFromUserAsAvatar || ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && (this.currentDialogFolderId == 0 || messageStringFormatted2.length() <= 0))) {
                                                                                i7 = 0;
                                                                            } else {
                                                                                if (charSequenceAddSenderAvatar != null) {
                                                                                    try {
                                                                                        length = charSequenceAddSenderAvatar.length() + 1;
                                                                                    } catch (Exception e) {
                                                                                        e = e;
                                                                                        i7 = 0;
                                                                                        FileLog.m1040e(e);
                                                                                        charSequenceReplaceEmoji2 = Emoji.replaceEmoji(messageStringFormatted2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                        if (this.message.hasHighlightedWords()) {
                                                                                            charSequenceReplaceEmoji2 = charSequenceHighlightText;
                                                                                        }
                                                                                        if (this.thumbsCount > 0) {
                                                                                        }
                                                                                        charSequence10 = charSequenceAddSenderAvatar;
                                                                                        charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                                        z7 = false;
                                                                                        if (this.currentDialogCommunityId == 0) {
                                                                                        }
                                                                                        z10 = z7;
                                                                                        string = archivedDialogNames;
                                                                                        i5 = i6;
                                                                                        charSequence5 = charSequenceApplyThumbs;
                                                                                        charSequence4 = charSequence7;
                                                                                        z9 = z2;
                                                                                        charSequence3 = charSequence4;
                                                                                        string7 = charSequence5;
                                                                                        charSequence14 = null;
                                                                                        charSequence13 = string7;
                                                                                        charSequence15 = charSequence3;
                                                                                        CharSequence charSequence292 = charSequence13;
                                                                                        if (!this.drawForwardIcon) {
                                                                                        }
                                                                                        if (TextUtils.isEmpty(this.customMessage)) {
                                                                                        }
                                                                                        if (!z) {
                                                                                        }
                                                                                        if (drawLock2()) {
                                                                                        }
                                                                                        if (LocaleController.isRTL) {
                                                                                        }
                                                                                        if (this.drawNameLock) {
                                                                                        }
                                                                                        if (!this.drawClock) {
                                                                                        }
                                                                                        this.nameAdditionalsForChannelSubscriber = 0;
                                                                                        z18 = this.dialogMuted ? true : true;
                                                                                        if (!this.drawPremium) {
                                                                                            if (!z18) {
                                                                                            }
                                                                                        }
                                                                                        if (this.drawBotVerified) {
                                                                                        }
                                                                                        i11 = this.namePaddingEnd;
                                                                                        if (i11 > 0) {
                                                                                        }
                                                                                        iDp9 = this.nameWidth - AndroidUtilities.dp(12.0f);
                                                                                        if (iDp9 < 0) {
                                                                                        }
                                                                                        z21 = charSequence22 instanceof String;
                                                                                        CharSequence charSequenceReplace2 = charSequence22;
                                                                                        if (z21) {
                                                                                        }
                                                                                        try {
                                                                                            if (!this.nameLayoutEllipsizeByGradient) {
                                                                                            }
                                                                                            float f13 = iDp9;
                                                                                            this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(charSequenceReplace2.toString()) <= f13;
                                                                                            CharSequence charSequenceEllipsize2 = charSequenceReplace2;
                                                                                            if (!this.twoLinesForName) {
                                                                                            }
                                                                                            CharSequence charSequenceReplaceEmoji6 = Emoji.replaceEmoji(charSequenceEllipsize2, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                            MessageObject messageObject24 = this.message;
                                                                                            if (messageObject24 == null) {
                                                                                                if (!this.twoLinesForName) {
                                                                                                }
                                                                                                if (this.nameLayoutEllipsizeByGradient) {
                                                                                                    this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? 0.0f : -AndroidUtilities.dp(c2);
                                                                                                    this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
                                                                                                }
                                                                                            }
                                                                                        } catch (Exception e2) {
                                                                                            e = e2;
                                                                                            FileLog.m1040e(e);
                                                                                        }
                                                                                        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
                                                                                        if (!this.useForceThreeLines) {
                                                                                            f6 = 8.0f;
                                                                                            f7 = 0.0f;
                                                                                            f8 = 32.0f;
                                                                                            f9 = 13.0f;
                                                                                            f10 = 20.0f;
                                                                                            iDp2 = AndroidUtilities.dp(11.0f);
                                                                                            this.messageNameTop = AndroidUtilities.dp(32.0f);
                                                                                            this.timeTop = AndroidUtilities.dp(13.0f);
                                                                                            this.errorTop = AndroidUtilities.dp(42.33f);
                                                                                            this.pinTop = AndroidUtilities.dp(43.0f);
                                                                                            this.countTop = AndroidUtilities.dp(42.33f);
                                                                                            this.checkDrawTop = AndroidUtilities.dp(13.0f);
                                                                                            measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 21);
                                                                                            if (!LocaleController.isRTL) {
                                                                                            }
                                                                                            this.storyParams.originalAvatarRect.set(iDp3, iDp2, iDp3 + AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f) + iDp2);
                                                                                            i12 = 0;
                                                                                            while (true) {
                                                                                                imageReceiverArr = this.thumbImage;
                                                                                                if (i12 < imageReceiverArr.length) {
                                                                                                }
                                                                                                imageReceiverArr[i12].setImageCoords(((this.thumbSize + 2) * i12) + iDp4, ((AndroidUtilities.dp(31.0f) + iDp2) + (this.twoLinesForName ? AndroidUtilities.dp(20.0f) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags = this.tags) == null || dialogCellTags.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f));
                                                                                                i12++;
                                                                                                iDp2 = iDp2;
                                                                                            }
                                                                                            i13 = iDp2;
                                                                                        }
                                                                                        if (!LocaleController.isRTL) {
                                                                                        }
                                                                                        if (this.twoLinesForName) {
                                                                                        }
                                                                                        if (this.useForceThreeLines) {
                                                                                            this.timeTop -= AndroidUtilities.dp(6.0f);
                                                                                            this.checkDrawTop -= AndroidUtilities.dp(6.0f);
                                                                                        } else {
                                                                                            this.timeTop -= AndroidUtilities.dp(6.0f);
                                                                                            this.checkDrawTop -= AndroidUtilities.dp(6.0f);
                                                                                        }
                                                                                        if (getIsPinned()) {
                                                                                        }
                                                                                        if (!this.drawError) {
                                                                                        }
                                                                                        if (this.drawError) {
                                                                                        }
                                                                                        this.drawGramTransfer = z19;
                                                                                        if (z19) {
                                                                                        }
                                                                                        if (z10) {
                                                                                        }
                                                                                        int iMax = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
                                                                                        this.buttonTop = AndroidUtilities.dp((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
                                                                                        if (this.useForceThreeLines) {
                                                                                            this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
                                                                                        } else {
                                                                                            this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
                                                                                        }
                                                                                        zIsForumCell = isForumCell();
                                                                                        boolean z36 = this.useForceThreeLines;
                                                                                        if (!zIsForumCell) {
                                                                                        }
                                                                                        charSequence24 = charSequence20;
                                                                                        if (this.twoLinesForName) {
                                                                                        }
                                                                                        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
                                                                                        this.buttonCreated = false;
                                                                                        if (!TextUtils.isEmpty(charSequence19)) {
                                                                                        }
                                                                                        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
                                                                                        if (!TextUtils.isEmpty(charSequence18)) {
                                                                                        }
                                                                                        if (charSequenceReplaceEmoji3 instanceof Spannable) {
                                                                                        }
                                                                                        if (this.useForceThreeLines) {
                                                                                        }
                                                                                        int i28 = iMax;
                                                                                        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                                                                                        z20 = LocaleController.isRTL;
                                                                                        StaticLayout staticLayout2 = this.nameLayout;
                                                                                        if (!z20) {
                                                                                        }
                                                                                        staticLayout = this.typingLayout;
                                                                                        if (staticLayout != null) {
                                                                                        }
                                                                                        updateThumbsPosition();
                                                                                    }
                                                                                } else {
                                                                                    length = 0;
                                                                                }
                                                                                i7 = length + i27;
                                                                                try {
                                                                                    messageStringFormatted2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage, this.resourcesProvider), 0, i7, 33);
                                                                                } catch (Exception e3) {
                                                                                    e = e3;
                                                                                    FileLog.m1040e(e);
                                                                                }
                                                                            }
                                                                            charSequenceReplaceEmoji2 = Emoji.replaceEmoji(messageStringFormatted2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                            if (this.message.hasHighlightedWords() && (charSequenceHighlightText = AndroidUtilities.highlightText(charSequenceReplaceEmoji2, this.message.highlightedWords, this.resourcesProvider)) != null) {
                                                                                charSequenceReplaceEmoji2 = charSequenceHighlightText;
                                                                            }
                                                                            if (this.thumbsCount > 0) {
                                                                                if (!(charSequenceReplaceEmoji2 instanceof SpannableStringBuilder)) {
                                                                                    charSequenceReplaceEmoji2 = new SpannableStringBuilder(charSequenceReplaceEmoji2);
                                                                                }
                                                                                SpannableStringBuilder spannableStringBuilder8 = (SpannableStringBuilder) charSequenceReplaceEmoji2;
                                                                                if (i7 >= spannableStringBuilder8.length()) {
                                                                                    spannableStringBuilder8.append((CharSequence) " ");
                                                                                    spannableStringBuilder8.setSpan(new ThumbnailSpan(AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3)), spannableStringBuilder8.length() - 1, spannableStringBuilder8.length(), 33);
                                                                                } else {
                                                                                    spannableStringBuilder8.insert(i7, (CharSequence) " ");
                                                                                    spannableStringBuilder8.setSpan(new ThumbnailSpan(AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3)), i7, i7 + 1, 33);
                                                                                }
                                                                            }
                                                                            charSequence10 = charSequenceAddSenderAvatar;
                                                                            charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                            z7 = false;
                                                                            if (this.currentDialogCommunityId == 0) {
                                                                                archivedDialogNames = formatCommunityDialogNames();
                                                                            } else if (this.currentDialogFolderId != 0) {
                                                                                archivedDialogNames = formatArchivedDialogNames();
                                                                            } else {
                                                                                z10 = z7;
                                                                                i5 = i6;
                                                                                string = charSequence10;
                                                                                charSequence5 = charSequenceApplyThumbs;
                                                                                charSequence4 = charSequence7;
                                                                                z9 = z2;
                                                                                charSequence3 = charSequence4;
                                                                                string7 = charSequence5;
                                                                            }
                                                                            z10 = z7;
                                                                            string = archivedDialogNames;
                                                                            i5 = i6;
                                                                            charSequence5 = charSequenceApplyThumbs;
                                                                            charSequence4 = charSequence7;
                                                                            z9 = z2;
                                                                            charSequence3 = charSequence4;
                                                                            string7 = charSequence5;
                                                                        }
                                                                    }
                                                                    i6 = i4;
                                                                    charSequence10 = null;
                                                                    charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                    z7 = false;
                                                                    if (this.currentDialogCommunityId == 0) {
                                                                    }
                                                                    z10 = z7;
                                                                    string = archivedDialogNames;
                                                                    i5 = i6;
                                                                    charSequence5 = charSequenceApplyThumbs;
                                                                    charSequence4 = charSequence7;
                                                                    z9 = z2;
                                                                    charSequence3 = charSequence4;
                                                                    string7 = charSequence5;
                                                                }
                                                                i6 = i4;
                                                                charSequenceApplyThumbs = string6;
                                                                z = false;
                                                                charSequence10 = null;
                                                                z2 = false;
                                                                if (this.currentDialogCommunityId == 0) {
                                                                }
                                                                z10 = z7;
                                                                string = archivedDialogNames;
                                                                i5 = i6;
                                                                charSequence5 = charSequenceApplyThumbs;
                                                                charSequence4 = charSequence7;
                                                                z9 = z2;
                                                                charSequence3 = charSequence4;
                                                                string7 = charSequence5;
                                                            }
                                                            charSequence10 = null;
                                                            charSequenceApplyThumbs = charSequence12;
                                                            if (this.currentDialogCommunityId == 0) {
                                                            }
                                                            z10 = z7;
                                                            string = archivedDialogNames;
                                                            i5 = i6;
                                                            charSequence5 = charSequenceApplyThumbs;
                                                            charSequence4 = charSequence7;
                                                            z9 = z2;
                                                            charSequence3 = charSequence4;
                                                            string7 = charSequence5;
                                                        } else {
                                                            TLRPC.MessagePeerReaction messagePeerReaction = this.message.messageOwner.reactions.recent_reactions.get(0);
                                                            if (messagePeerReaction.unread) {
                                                                long j4 = messagePeerReaction.peer_id.user_id;
                                                                if (j4 != 0) {
                                                                    CharSequence charSequence42 = charSequence2;
                                                                    charSequence6 = charSequence42;
                                                                    if (j4 != UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                                        ReactionsLayoutInBubble.VisibleReaction visibleReactionFromTL = ReactionsLayoutInBubble.VisibleReaction.fromTL(messagePeerReaction.reaction);
                                                                        this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                        String str9 = visibleReactionFromTL.emojicon;
                                                                        if (str9 != null) {
                                                                            string2 = LocaleController.formatString(C2807R.string.ReactionInDialog, str9);
                                                                        } else {
                                                                            String string12 = LocaleController.formatString(C2807R.string.ReactionInDialog, "**reaction**");
                                                                            int iIndexOf3 = string12.indexOf("**reaction**");
                                                                            SpannableStringBuilder spannableStringBuilder9 = new SpannableStringBuilder(string12.replace("**reaction**", "d"));
                                                                            long j5 = visibleReactionFromTL.documentId;
                                                                            TextPaint textPaint6 = this.currentMessagePaint;
                                                                            spannableStringBuilder9.setSpan(new AnimatedEmojiSpan(j5, textPaint6 == null ? null : textPaint6.getFontMetricsInt()), iIndexOf3, iIndexOf3 + 1, 0);
                                                                            string2 = spannableStringBuilder9;
                                                                        }
                                                                        z11 = true;
                                                                        charSequence7 = charSequence42;
                                                                    }
                                                                    if (z11) {
                                                                    }
                                                                    charSequence10 = null;
                                                                    charSequenceApplyThumbs = charSequence12;
                                                                    if (this.currentDialogCommunityId == 0) {
                                                                    }
                                                                    z10 = z7;
                                                                    string = archivedDialogNames;
                                                                    i5 = i6;
                                                                    charSequence5 = charSequenceApplyThumbs;
                                                                    charSequence4 = charSequence7;
                                                                    z9 = z2;
                                                                    charSequence3 = charSequence4;
                                                                    string7 = charSequence5;
                                                                }
                                                                string2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                z11 = false;
                                                                charSequence7 = charSequence6;
                                                                if (z11) {
                                                                }
                                                                charSequence10 = null;
                                                                charSequenceApplyThumbs = charSequence12;
                                                                if (this.currentDialogCommunityId == 0) {
                                                                }
                                                                z10 = z7;
                                                                string = archivedDialogNames;
                                                                i5 = i6;
                                                                charSequence5 = charSequenceApplyThumbs;
                                                                charSequence4 = charSequence7;
                                                                z9 = z2;
                                                                charSequence3 = charSequence4;
                                                                string7 = charSequence5;
                                                            }
                                                        }
                                                    } else if (this.currentDialogCommunityId != 0) {
                                                        string8 = formatCommunityDialogNames();
                                                    } else if (this.currentDialogFolderId != 0) {
                                                        string8 = formatArchivedDialogNames();
                                                    } else {
                                                        TLRPC.EncryptedChat encryptedChat2 = this.encryptedChat;
                                                        if (encryptedChat2 != null) {
                                                            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                            if (encryptedChat2 instanceof TLRPC.TL_encryptedChatRequested) {
                                                                string8 = LocaleController.getString(C2807R.string.EncryptionProcessing);
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChatWaiting) {
                                                                string8 = LocaleController.formatString(C2807R.string.AwaitingEncryption, UserObject.getFirstName(this.user));
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChatDiscarded) {
                                                                string8 = LocaleController.getString(C2807R.string.EncryptionRejected);
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChat) {
                                                                if (encryptedChat2.admin_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                                    string8 = LocaleController.formatString(C2807R.string.EncryptedChatStartedOutgoing, UserObject.getFirstName(this.user));
                                                                } else {
                                                                    string8 = LocaleController.getString(C2807R.string.EncryptedChatStartedIncoming);
                                                                }
                                                            }
                                                        } else if (this.dialogsType == 3 && UserObject.isUserSelf(this.user)) {
                                                            DialogsActivity dialogsActivity2 = this.parentFragment;
                                                            z10 = z7;
                                                            i5 = i4;
                                                            string7 = LocaleController.getString((dialogsActivity2 == null || !dialogsActivity2.isQuote) ? C2807R.string.SavedMessagesInfo : C2807R.string.SavedMessagesInfoQuote);
                                                            string = null;
                                                            z = false;
                                                            z9 = false;
                                                            charSequence3 = charSequence2;
                                                        }
                                                        z10 = z7;
                                                        i5 = i4;
                                                        string7 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        z9 = z2;
                                                        string = null;
                                                        charSequence3 = charSequence2;
                                                    }
                                                }
                                                i5 = i4;
                                                charSequence13 = string8;
                                                z9 = z2;
                                                charSequence14 = null;
                                                z10 = z7;
                                                string = null;
                                                charSequence15 = charSequence2;
                                            }
                                        }
                                        charSequence14 = null;
                                        charSequence13 = string7;
                                        charSequence15 = charSequence3;
                                    }
                                    CharSequence charSequence2922 = charSequence13;
                                    if (!this.drawForwardIcon) {
                                        charSequence2922 = charSequence13;
                                        if (!isFolderCell()) {
                                            charSequence2922 = charSequence13;
                                            if (!isForumCell()) {
                                                charSequence2922 = charSequence13;
                                                if (!isDialogFolder()) {
                                                    charSequence2922 = charSequence13;
                                                    if (this.draftMessage == null) {
                                                        MessageObject messageObject25 = this.message;
                                                        charSequence2922 = charSequence13;
                                                        if (messageObject25 != null) {
                                                            TLRPC.Message message6 = messageObject25.messageOwner;
                                                            charSequence2922 = charSequence13;
                                                            if (message6 != null) {
                                                                charSequence2922 = charSequence13;
                                                                if (message6.action instanceof TLRPC.TL_messageActionStarGift) {
                                                                    this.drawGiftIcon = true;
                                                                    SpannableStringBuilder spannableStringBuilder10 = new SpannableStringBuilder(charSequence13);
                                                                    spannableStringBuilder10.insert(0, (CharSequence) "d ");
                                                                    ColoredImageSpan coloredImageSpan3 = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2807R.drawable.mini_gift).mutate());
                                                                    coloredImageSpan3.setScale(1.25f, 1.25f);
                                                                    coloredImageSpan3.spaceScaleX = 0.9f;
                                                                    coloredImageSpan3.setAlpha(0.9f);
                                                                    spannableStringBuilder10.setSpan(coloredImageSpan3, 0, 1, 0);
                                                                    TLRPC.TL_textWithEntities tL_textWithEntities5 = ((TLRPC.TL_messageActionStarGift) this.message.messageOwner.action).message;
                                                                    if (tL_textWithEntities5 != null && !TextUtils.isEmpty(tL_textWithEntities5.text)) {
                                                                        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                                                    }
                                                                    charSequence2922 = spannableStringBuilder10;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (TextUtils.isEmpty(this.customMessage)) {
                                        if (this.draftMessage != null) {
                                            strStringForMessageListDate = LocaleController.stringForMessageListDate(r3.date);
                                        } else {
                                            int i29 = this.lastMessageDate;
                                            if (i29 != 0) {
                                                strStringForMessageListDate = LocaleController.stringForMessageListDate(i29);
                                            } else {
                                                strStringForMessageListDate = this.message != null ? LocaleController.stringForMessageListDate(r3.messageOwner.date) : _UrlKt.FRAGMENT_ENCODE_SET;
                                            }
                                        }
                                        MessageObject messageObject26 = this.message;
                                        if (messageObject26 == null || this.isSavedDialog) {
                                            this.drawCheck1 = false;
                                            this.drawCheck2 = false;
                                            this.drawClock = messageObject26 != null && messageObject26.isSending() && this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                                            z13 = false;
                                            this.drawCount = false;
                                            this.drawMention = false;
                                            this.drawReactionMention = false;
                                            this.drawPollVotesMention = false;
                                            this.drawError = false;
                                            str2 = null;
                                            str3 = null;
                                        } else {
                                            if (this.currentDialogFolderId != 0) {
                                                int i30 = this.unreadCount;
                                                int i31 = this.mentionCount;
                                                if (i30 + i31 <= 0) {
                                                    z17 = false;
                                                    this.drawCount = false;
                                                    this.drawMention = false;
                                                    str5 = null;
                                                } else if (i30 > i31) {
                                                    this.drawCount = true;
                                                    z17 = false;
                                                    this.drawMention = false;
                                                    str4 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i30 + i31));
                                                    str5 = null;
                                                    this.drawReactionMention = z17;
                                                    this.drawPollVotesMention = z17;
                                                } else {
                                                    z17 = false;
                                                    this.drawCount = false;
                                                    this.drawMention = true;
                                                    str5 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i30 + i31));
                                                }
                                                str4 = null;
                                                this.drawReactionMention = z17;
                                                this.drawPollVotesMention = z17;
                                            } else {
                                                if (this.clearingDialog) {
                                                    this.drawCount = false;
                                                    z9 = false;
                                                    str4 = null;
                                                    z15 = true;
                                                } else {
                                                    int i32 = this.unreadCount;
                                                    if (i32 != 0) {
                                                        z15 = true;
                                                        this.drawCount = true;
                                                        str4 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i32));
                                                    } else {
                                                        z15 = true;
                                                        if (this.markUnread) {
                                                            this.drawCount = true;
                                                            str4 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        } else {
                                                            z16 = false;
                                                            this.drawCount = false;
                                                            str4 = null;
                                                            if (this.mentionCount == 0) {
                                                                this.drawMention = z15;
                                                                str5 = "@";
                                                            } else {
                                                                this.drawMention = z16;
                                                                str5 = null;
                                                            }
                                                            if (this.reactionMentionCount <= 0) {
                                                                this.drawReactionMention = !(ExteraConfig.getHideReactionsInChannels() && ChatObject.isChannelAndNotMegaGroup(this.chat)) && (!ExteraConfig.getHideReactionsInGroups() || ChatObject.isChannelAndNotMegaGroup(this.chat) || this.chat == null) && (!ExteraConfig.getHideReactionsInPrivateChats() || this.user == null);
                                                            } else {
                                                                this.drawReactionMention = false;
                                                            }
                                                            this.drawPollVotesMention = this.pollVotesMentionCount <= 0;
                                                        }
                                                    }
                                                }
                                                z16 = false;
                                                if (this.mentionCount == 0) {
                                                }
                                                if (this.reactionMentionCount <= 0) {
                                                }
                                                this.drawPollVotesMention = this.pollVotesMentionCount <= 0;
                                            }
                                            if (this.message.isOut() && this.draftMessage == null && z9) {
                                                MessageObject messageObject27 = this.message;
                                                if (!(messageObject27.messageOwner.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                                                    if (messageObject27.isSending()) {
                                                        z13 = false;
                                                        this.drawCheck1 = false;
                                                        this.drawCheck2 = false;
                                                        this.drawClock = true;
                                                        this.drawError = false;
                                                    } else {
                                                        z13 = false;
                                                        if (this.message.isSendError()) {
                                                            this.drawCheck1 = false;
                                                            this.drawCheck2 = false;
                                                            this.drawClock = false;
                                                            this.drawError = true;
                                                            this.drawCount = false;
                                                            this.drawMention = false;
                                                        } else if (this.message.isSent()) {
                                                            TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
                                                            if (tL_forumTopic != null) {
                                                                this.drawCheck1 = tL_forumTopic.read_outbox_max_id >= this.message.getId();
                                                            } else if (this.isDialogCell) {
                                                                int i33 = this.readOutboxMaxId;
                                                                this.drawCheck1 = (i33 > 0 && i33 >= this.message.getId()) || !this.message.isUnread() || (ChatObject.isChannel(this.chat) && !this.chat.megagroup);
                                                            } else {
                                                                this.drawCheck1 = !this.message.isUnread() || (ChatObject.isChannel(this.chat) && !this.chat.megagroup);
                                                            }
                                                            this.drawCheck2 = true;
                                                            z13 = false;
                                                            this.drawClock = false;
                                                            this.drawError = false;
                                                        } else {
                                                            z13 = false;
                                                        }
                                                    }
                                                }
                                                str3 = str5;
                                                str2 = str4;
                                            } else {
                                                z13 = false;
                                                this.drawCheck1 = false;
                                                this.drawCheck2 = false;
                                                this.drawClock = false;
                                                this.drawError = false;
                                                str3 = str5;
                                                str2 = str4;
                                            }
                                        }
                                        this.promoDialog = z13;
                                        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                                        if (this.dialogsType == 0 && messagesController.isPromoDialog(this.currentDialogId, true)) {
                                            this.drawPinBackground = true;
                                            this.promoDialog = true;
                                            int i34 = messagesController.promoDialogType;
                                            if (i34 == MessagesController.PROMO_TYPE_PROXY) {
                                                charSequence17 = charSequence2922;
                                                string9 = LocaleController.getString(C2807R.string.UseProxySponsor);
                                                z14 = false;
                                                if (this.isForChannelSubscriberCell) {
                                                }
                                                string10 = this.titleOverride;
                                                if (string10 == null) {
                                                }
                                                charSequence18 = charSequence15;
                                                str7 = str3;
                                                i10 = i5;
                                                charSequence19 = charSequence14;
                                                strStringForMessageListDate2 = string9;
                                                charSequence20 = string;
                                                charSequenceReplaceEmoji3 = charSequence17;
                                                charSequence22 = string10;
                                            } else if (i34 == MessagesController.PROMO_TYPE_PSA) {
                                                strStringForMessageListDate = LocaleController.getString("PsaType_" + messagesController.promoPsaType);
                                                if (TextUtils.isEmpty(strStringForMessageListDate)) {
                                                    strStringForMessageListDate = LocaleController.getString(C2807R.string.PsaTypeDefault);
                                                }
                                                if (!TextUtils.isEmpty(messagesController.promoPsaMessage)) {
                                                    CharSequence charSequence43 = messagesController.promoPsaMessage;
                                                    z14 = false;
                                                    this.thumbsCount = 0;
                                                    charSequence16 = charSequence43;
                                                }
                                                String str10 = strStringForMessageListDate;
                                                charSequence17 = charSequence16;
                                                string9 = str10;
                                                if (this.isForChannelSubscriberCell) {
                                                }
                                                string10 = this.titleOverride;
                                                if (string10 == null) {
                                                }
                                                charSequence18 = charSequence15;
                                                str7 = str3;
                                                i10 = i5;
                                                charSequence19 = charSequence14;
                                                strStringForMessageListDate2 = string9;
                                                charSequence20 = string;
                                                charSequenceReplaceEmoji3 = charSequence17;
                                                charSequence22 = string10;
                                            }
                                        } else {
                                            z14 = false;
                                            charSequence16 = charSequence2922;
                                            String str102 = strStringForMessageListDate;
                                            charSequence17 = charSequence16;
                                            string9 = str102;
                                            if (this.isForChannelSubscriberCell) {
                                                this.drawCheck1 = z14;
                                                this.drawCheck2 = z14;
                                                this.drawClock = z14;
                                                this.drawError = z14;
                                            }
                                            string10 = this.titleOverride;
                                            if (string10 == null) {
                                                if (this.currentDialogFolderId != 0) {
                                                    string10 = LocaleController.getString(C2807R.string.ArchivedChats);
                                                } else {
                                                    TLRPC.Chat chat14 = this.chat;
                                                    if (chat14 != null) {
                                                        if (this.useFromUserAsAvatar) {
                                                            if (this.topicIconInName == null) {
                                                                this.topicIconInName = new Drawable[1];
                                                            }
                                                            this.topicIconInName[0] = null;
                                                            charSequenceEscape = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconName(this.chat, this.message, this.currentMessagePaint, this.topicIconInName);
                                                            if (charSequenceEscape == null && this.message != null) {
                                                                charSequenceEscape = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconNameSafe(this.chat, this.message.getTopicId(), this.currentMessagePaint, this.topicIconInName);
                                                            }
                                                            if (charSequenceEscape == null) {
                                                                string10 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                            }
                                                        } else if (this.isTopic) {
                                                            if (this.topicIconInName == null) {
                                                                this.topicIconInName = new Drawable[1];
                                                            }
                                                            Drawable[] drawableArr = this.topicIconInName;
                                                            drawableArr[0] = null;
                                                            boolean z37 = this.showTopicIconInName;
                                                            TLRPC.TL_forumTopic tL_forumTopic2 = this.forumTopic;
                                                            charSequenceEscape = z37 ? ForumUtilities.getTopicSpannedName(tL_forumTopic2, Theme.dialogs_namePaint[this.paintIndex], drawableArr, false) : AndroidUtilities.escape(tL_forumTopic2.title);
                                                        } else if (chat14.monoforum && chat14.linked_monoforum_id != 0) {
                                                            TLRPC.Chat chat15 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.linked_monoforum_id));
                                                            if (chat15 != null) {
                                                                SpannableStringBuilder spannableStringBuilder11 = new SpannableStringBuilder(AndroidUtilities.escape(chat15.title));
                                                                spannableStringBuilder11.append((CharSequence) " ");
                                                                int length4 = spannableStringBuilder11.length();
                                                                spannableStringBuilder11.append((CharSequence) LocaleController.getString(C2807R.string.MonoforumSpan));
                                                                spannableStringBuilder11.setSpan(new FilterCreateActivity.TextSpan(LocaleController.getString(C2807R.string.MonoforumSpan), 9.33f, Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider), length4, spannableStringBuilder11.length(), 33);
                                                                string10 = spannableStringBuilder11;
                                                            } else {
                                                                string10 = AndroidUtilities.escape(this.chat.title);
                                                            }
                                                        } else {
                                                            charSequenceEscape = AndroidUtilities.escape(chat14.title);
                                                        }
                                                        string10 = charSequenceEscape;
                                                    } else {
                                                        TLRPC.User user8 = this.user;
                                                        if (user8 != null) {
                                                            if (UserObject.isReplyUser(user8)) {
                                                                charSequenceEscape = LocaleController.getString(C2807R.string.RepliesTitle);
                                                            } else if (UserObject.isAnonymous(this.user)) {
                                                                charSequenceEscape = LocaleController.getString(C2807R.string.AnonymousForward);
                                                            } else if (UserObject.isUserSelf(this.user) && !this.isMonoForumTopicDialog) {
                                                                if (this.isSavedDialog) {
                                                                    charSequenceEscape = LocaleController.getString(C2807R.string.MyNotes);
                                                                } else if (this.useMeForMyMessages) {
                                                                    charSequenceEscape = LocaleController.getString(C2807R.string.FromYou);
                                                                } else {
                                                                    if (this.dialogsType == 3) {
                                                                        this.drawPinBackground = true;
                                                                    }
                                                                    charSequenceEscape = LocaleController.getString(C2807R.string.SavedMessages);
                                                                }
                                                            } else if (this.isTopic) {
                                                                if (this.topicIconInName == null) {
                                                                    this.topicIconInName = new Drawable[1];
                                                                }
                                                                Drawable[] drawableArr2 = this.topicIconInName;
                                                                drawableArr2[0] = null;
                                                                boolean z38 = this.showTopicIconInName;
                                                                TLRPC.TL_forumTopic tL_forumTopic3 = this.forumTopic;
                                                                charSequenceEscape = z38 ? ForumUtilities.getTopicSpannedName(tL_forumTopic3, Theme.dialogs_namePaint[this.paintIndex], drawableArr2, false) : AndroidUtilities.escape(tL_forumTopic3.title);
                                                            } else {
                                                                charSequenceEscape = AndroidUtilities.escape(UserObject.getUserName(this.user));
                                                            }
                                                            string10 = charSequenceEscape;
                                                        }
                                                        string10 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                    }
                                                    if (string10 != null && string10.length() == 0) {
                                                        string10 = LocaleController.getString(C2807R.string.HiddenName);
                                                    }
                                                }
                                            }
                                            charSequence18 = charSequence15;
                                            str7 = str3;
                                            i10 = i5;
                                            charSequence19 = charSequence14;
                                            strStringForMessageListDate2 = string9;
                                            charSequence20 = string;
                                            charSequenceReplaceEmoji3 = charSequence17;
                                            charSequence22 = string10;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (i21 == 0) {
                this.drawNameLock = true;
                if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                    this.nameLockTop = AndroidUtilities.dp(12.5f);
                    if (!LocaleController.isRTL) {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 6);
                        this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 10) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                    } else {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 6)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        this.nameLeft = AndroidUtilities.dp(22.0f);
                    }
                } else {
                    this.nameLockTop = AndroidUtilities.dp(16.5f);
                    if (!LocaleController.isRTL) {
                        this.nameLockLeft = AndroidUtilities.dp(this.messagePaddingStart + 4);
                        this.nameLeft = AndroidUtilities.dp(this.messagePaddingStart + 8) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
                    } else {
                        this.nameLockLeft = (getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 4)) - Theme.dialogs_lockDrawable.getIntrinsicWidth();
                        this.nameLeft = AndroidUtilities.dp(18.0f);
                    }
                }
            }
            z2 = z23;
            i2 = 2;
            charSequence = charSequence27;
            i3 = this.lastMessageDate;
            if (i3 == 0) {
                i3 = messageObject7.messageOwner.date;
            }
            if (!this.isTopic) {
            }
            z5 = this.draftVoice;
            if (!z5) {
                if (z5) {
                    draftMessage = this.draftMessage;
                    if (draftMessage != null) {
                        if (!ChatObject.isChannel(this.chat)) {
                        }
                    }
                }
            }
        }
        if (!z) {
            TextPaint timeTextPaint = getTimeTextPaint();
            f4 = 24.0f;
            int iCeil = (int) Math.ceil(timeTextPaint.measureText(strStringForMessageListDate2));
            this.timeLayout = new StaticLayout(strStringForMessageListDate2, timeTextPaint, iCeil, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            iDp = iCeil + AndroidUtilities.dp(getIsPinned() ? 24.0f : 0.0f);
            if (!LocaleController.isRTL) {
                this.timeLeft = (getMeasuredWidth() - AndroidUtilities.dp(f3)) - iDp;
            } else {
                this.timeLeft = AndroidUtilities.dp(f3);
            }
        } else {
            f4 = 24.0f;
            this.timeLayout = null;
            this.timeLeft = 0;
            iDp = 0;
        }
        if (drawLock2()) {
            intrinsicWidth = 0;
        } else {
            boolean z39 = LocaleController.isRTL;
            int i35 = this.timeLeft;
            if (z39) {
                this.lock2Left = i35 + iDp + AndroidUtilities.dp(4.0f);
            } else {
                this.lock2Left = (i35 - Theme.dialogs_lock2Drawable.getIntrinsicWidth()) - AndroidUtilities.dp(4.0f);
            }
            intrinsicWidth = Theme.dialogs_lock2Drawable.getIntrinsicWidth() + AndroidUtilities.dp(4.0f);
            iDp += intrinsicWidth;
        }
        if (LocaleController.isRTL) {
            this.nameWidth = ((getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(22.0f)) - iDp;
        } else {
            this.nameWidth = ((getMeasuredWidth() - this.nameLeft) - AndroidUtilities.dp(this.messagePaddingStart + 13)) - iDp;
            this.nameLeft += iDp;
        }
        if (this.drawNameLock) {
            this.nameWidth -= AndroidUtilities.dp(LocaleController.isRTL ? 8.0f : 4.0f) + Theme.dialogs_lockDrawable.getIntrinsicWidth();
        }
        if (!this.drawClock) {
            int intrinsicWidth3 = Theme.dialogs_clockDrawable.getIntrinsicWidth() + AndroidUtilities.dp(5.0f);
            f5 = 4.0f;
            this.nameWidth -= intrinsicWidth3;
            boolean z40 = LocaleController.isRTL;
            int i36 = this.timeLeft;
            if (!z40) {
                this.clockDrawLeft = (i36 - intrinsicWidth) - intrinsicWidth3;
            } else {
                this.clockDrawLeft = i36 + iDp + AndroidUtilities.dp(5.0f);
                this.nameLeft += intrinsicWidth3;
            }
        } else {
            f5 = 4.0f;
            if (this.drawCheck2) {
                int intrinsicWidth4 = Theme.dialogs_checkDrawable.getIntrinsicWidth() + AndroidUtilities.dp(5.0f);
                int i37 = this.nameWidth - intrinsicWidth4;
                this.nameWidth = i37;
                if (this.drawCheck1) {
                    this.nameWidth = i37 - (Theme.dialogs_halfCheckDrawable.getIntrinsicWidth() - AndroidUtilities.dp(8.0f));
                    boolean z41 = LocaleController.isRTL;
                    int i38 = this.timeLeft;
                    if (!z41) {
                        int i39 = (i38 - intrinsicWidth) - intrinsicWidth4;
                        this.halfCheckDrawLeft = i39;
                        this.checkDrawLeft = i39 - AndroidUtilities.dp(5.5f);
                    } else {
                        int iDp10 = i38 + iDp + AndroidUtilities.dp(5.0f);
                        this.checkDrawLeft = iDp10;
                        this.halfCheckDrawLeft = iDp10 + AndroidUtilities.dp(5.5f);
                        this.nameLeft += (intrinsicWidth4 + Theme.dialogs_halfCheckDrawable.getIntrinsicWidth()) - AndroidUtilities.dp(8.0f);
                    }
                } else {
                    boolean z42 = LocaleController.isRTL;
                    int i40 = this.timeLeft;
                    if (!z42) {
                        this.checkDrawLeft1 = (i40 - intrinsicWidth) - intrinsicWidth4;
                    } else {
                        this.checkDrawLeft1 = i40 + iDp + AndroidUtilities.dp(5.0f);
                        this.nameLeft += intrinsicWidth4;
                    }
                }
            }
        }
        this.nameAdditionalsForChannelSubscriber = 0;
        if ((this.dialogMuted && !this.isHiddenInCommunity && !this.drawUnmute && this.dialogMutedProgress <= 0.0f) || this.drawVerified || this.drawBadge || this.drawScam != 0) {
            z18 = false;
        }
        if (!this.drawPremium && this.emojiStatus.getDrawable() != null) {
            int iDp11 = AndroidUtilities.dp(36.0f);
            if (z18) {
                iDp11 += AndroidUtilities.dp(6.0f) + Theme.dialogs_muteDrawable.getIntrinsicWidth();
            }
            this.nameWidth -= iDp11;
            this.nameAdditionalsForChannelSubscriber += iDp11;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp11;
            }
        } else if (!z18) {
            int iDp12 = AndroidUtilities.dp(6.0f) + Theme.dialogs_muteDrawable.getIntrinsicWidth();
            if (this.drawPremium) {
                iDp12 += AndroidUtilities.dp(36.0f);
            }
            this.nameWidth -= iDp12;
            this.nameAdditionalsForChannelSubscriber += iDp12;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp12;
            }
        } else if (this.drawVerified) {
            int iDp13 = AndroidUtilities.dp(6.0f) + Theme.dialogs_verifiedDrawable.getIntrinsicWidth();
            this.nameWidth -= iDp13;
            this.nameAdditionalsForChannelSubscriber += iDp13;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp13;
            }
        } else if (this.drawBadge) {
            int iDp14 = AndroidUtilities.dp(36.0f);
            this.nameWidth -= iDp14;
            this.nameAdditionalsForChannelSubscriber += iDp14;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp14;
            }
        } else if (this.drawPremium) {
            int iDp15 = AndroidUtilities.dp(36.0f);
            this.nameWidth -= iDp15;
            this.nameAdditionalsForChannelSubscriber += iDp15;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp15;
            }
        } else if (this.drawScam != 0) {
            int iDp16 = AndroidUtilities.dp(6.0f) + (this.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).getIntrinsicWidth();
            this.nameWidth -= iDp16;
            this.nameAdditionalsForChannelSubscriber += iDp16;
            if (LocaleController.isRTL) {
                this.nameLeft += iDp16;
            }
        }
        if (this.drawBotVerified) {
            this.nameWidth -= AndroidUtilities.dp(21.0f);
        }
        i11 = this.namePaddingEnd;
        if (i11 > 0) {
            this.nameWidth -= i11;
            if (LocaleController.isRTL) {
                this.nameLeft += i11;
            }
        }
        try {
            iDp9 = this.nameWidth - AndroidUtilities.dp(12.0f);
            if (iDp9 < 0) {
                iDp9 = 0;
            }
            z21 = charSequence22 instanceof String;
            CharSequence charSequenceReplace22 = charSequence22;
            if (z21) {
                charSequenceReplace22 = ((String) charSequence22).replace(c2, ' ');
            }
            if (!this.nameLayoutEllipsizeByGradient) {
                c2 = 0;
                this.nameLayoutFits = charSequenceReplace22.length() == TextUtils.ellipsize(charSequenceReplace22, Theme.dialogs_namePaint[this.paintIndex], (float) iDp9, TextUtils.TruncateAt.END).length();
                iDp9 += AndroidUtilities.dp(48.0f);
                this.channelShouldUseLineWidth = this.nameLayoutFits;
            } else {
                c2 = 0;
                if (this.isForChannelSubscriberCell) {
                    this.channelShouldUseLineWidth = charSequenceReplace22.length() == TextUtils.ellipsize(charSequenceReplace22, Theme.dialogs_namePaint[this.paintIndex], (float) iDp9, TextUtils.TruncateAt.END).length();
                }
            }
            float f132 = iDp9;
            this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(charSequenceReplace22.toString()) <= f132;
            CharSequence charSequenceEllipsize22 = charSequenceReplace22;
            if (!this.twoLinesForName) {
                charSequenceEllipsize22 = TextUtils.ellipsize(charSequenceReplace22, Theme.dialogs_namePaint[this.paintIndex], f132, TextUtils.TruncateAt.END);
            }
            CharSequence charSequenceReplaceEmoji62 = Emoji.replaceEmoji(charSequenceEllipsize22, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject242 = this.message;
            CharSequence charSequence44 = (messageObject242 == null && messageObject242.hasHighlightedWords() && (charSequenceHighlightText3 = AndroidUtilities.highlightText(charSequenceReplaceEmoji62, this.message.highlightedWords, this.resourcesProvider)) != null) ? charSequenceHighlightText3 : charSequenceReplaceEmoji62;
            if (!this.twoLinesForName) {
                this.nameLayout = StaticLayoutEx.createStaticLayout(charSequence44, Theme.dialogs_namePaint[this.paintIndex], iDp9, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iDp9, 2);
            } else {
                this.nameLayout = new StaticLayout(charSequence44, Theme.dialogs_namePaint[this.paintIndex], Math.max(iDp9, this.nameWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? 0.0f : -AndroidUtilities.dp(c2);
            this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
        } catch (Exception e4) {
            e = e4;
            c2 = 0;
        }
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        if (!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
            f6 = 8.0f;
            f7 = 0.0f;
            f8 = 32.0f;
            f9 = 13.0f;
            f10 = 20.0f;
            iDp2 = AndroidUtilities.dp(11.0f);
            this.messageNameTop = AndroidUtilities.dp(32.0f);
            this.timeTop = AndroidUtilities.dp(13.0f);
            this.errorTop = AndroidUtilities.dp(42.33f);
            this.pinTop = AndroidUtilities.dp(43.0f);
            this.countTop = AndroidUtilities.dp(42.33f);
            this.checkDrawTop = AndroidUtilities.dp(13.0f);
            measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 21);
            if (!LocaleController.isRTL) {
                int iDp17 = AndroidUtilities.dp(f2);
                this.messageNameLeft = iDp17;
                this.messageLeft = iDp17;
                this.typingLeft = iDp17;
                this.buttonLeft = iDp17;
                iDp3 = getMeasuredWidth() - AndroidUtilities.dp(this.avatarStart + 56);
                iDp4 = iDp3 - AndroidUtilities.dp(31.0f);
            } else {
                int iDp18 = AndroidUtilities.dp(this.messagePaddingStart + 6);
                this.messageNameLeft = iDp18;
                this.messageLeft = iDp18;
                this.typingLeft = iDp18;
                this.buttonLeft = iDp18;
                iDp3 = AndroidUtilities.dp(this.avatarStart);
                iDp4 = AndroidUtilities.dp(69.0f) + iDp3;
            }
            this.storyParams.originalAvatarRect.set(iDp3, iDp2, iDp3 + AndroidUtilities.dp(56.0f), AndroidUtilities.dp(56.0f) + iDp2);
            i12 = 0;
            while (true) {
                imageReceiverArr = this.thumbImage;
                if (i12 < imageReceiverArr.length) {
                    break;
                }
                imageReceiverArr[i12].setImageCoords(((this.thumbSize + 2) * i12) + iDp4, ((AndroidUtilities.dp(31.0f) + iDp2) + (this.twoLinesForName ? AndroidUtilities.dp(20.0f) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags = this.tags) == null || dialogCellTags.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f));
                i12++;
                iDp2 = iDp2;
            }
            i13 = iDp2;
        } else {
            int iDp19 = AndroidUtilities.dp(9.0f);
            this.messageNameTop = AndroidUtilities.dp(31.0f);
            this.timeTop = AndroidUtilities.dp(f2);
            this.errorTop = AndroidUtilities.dp(38.0f);
            this.pinTop = AndroidUtilities.dp(39.0f);
            this.countTop = AndroidUtilities.dp(this.isTopic ? 35.0f : 38.0f);
            this.checkDrawTop = AndroidUtilities.dp(f);
            f9 = 13.0f;
            measuredWidth = getMeasuredWidth() - AndroidUtilities.dp((this.messagePaddingStart + 20) - (LocaleController.isRTL ? 0 : 12));
            if (LocaleController.isRTL) {
                int iDp20 = AndroidUtilities.dp(22.0f);
                this.messageNameLeft = iDp20;
                this.messageLeft = iDp20;
                this.typingLeft = iDp20;
                this.buttonLeft = iDp20;
                f8 = 32.0f;
                iDp7 = getMeasuredWidth() - AndroidUtilities.dp(this.avatarStart + 52);
                f10 = 20.0f;
                iDp8 = iDp7 - AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 9);
            } else {
                f8 = 32.0f;
                f10 = 20.0f;
                int iDp21 = AndroidUtilities.dp(this.messagePaddingStart + 4);
                this.messageNameLeft = iDp21;
                this.messageLeft = iDp21;
                this.typingLeft = iDp21;
                this.buttonLeft = iDp21;
                iDp7 = AndroidUtilities.dp(this.avatarStart);
                iDp8 = AndroidUtilities.dp(67.0f) + iDp7;
            }
            f6 = 8.0f;
            f7 = 0.0f;
            this.storyParams.originalAvatarRect.set(iDp7, iDp19, iDp7 + AndroidUtilities.dp(52.0f), iDp19 + AndroidUtilities.dp(52.0f));
            int i41 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr3 = this.thumbImage;
                if (i41 >= imageReceiverArr3.length) {
                    break;
                }
                imageReceiverArr3[i41].setImageCoords(((this.thumbSize + 2) * i41) + iDp8, ((AndroidUtilities.dp(30.0f) + iDp19) + (this.twoLinesForName ? AndroidUtilities.dp(f10) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags3 = this.tags) == null || dialogCellTags3.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(this.thumbSize), AndroidUtilities.dp(this.thumbSize));
                i41++;
                iDp19 = iDp19;
            }
            i13 = iDp19;
        }
        if (!LocaleController.isRTL) {
            this.tagsRight = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart);
            this.tagsLeft = AndroidUtilities.dp(64.0f);
        } else {
            this.tagsLeft = this.messageLeft;
            this.tagsRight = getMeasuredWidth() - AndroidUtilities.dp(64.0f);
        }
        if (this.twoLinesForName) {
            this.messageNameTop += AndroidUtilities.dp(f10);
        }
        if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && (dialogCellTags2 = this.tags) != null && !dialogCellTags2.isEmpty()) {
            this.timeTop -= AndroidUtilities.dp(6.0f);
            this.checkDrawTop -= AndroidUtilities.dp(6.0f);
        }
        if (getIsPinned()) {
            if (!LocaleController.isRTL) {
                this.pinLeft = (getMeasuredWidth() - Theme.dialogs_pinnedDrawable.getIntrinsicWidth()) - AndroidUtilities.dp(14.0f);
            } else {
                this.pinLeft = AndroidUtilities.dp(14.0f);
            }
        }
        if (!this.drawError) {
            int iDp22 = AndroidUtilities.dp(29.0f);
            measuredWidth -= iDp22;
            if (!LocaleController.isRTL) {
                this.errorLeft = getMeasuredWidth() - AndroidUtilities.dp(36.3333f);
            } else {
                this.errorLeft = AndroidUtilities.dp(15.666f);
                this.messageLeft += iDp22;
                this.typingLeft += iDp22;
                this.buttonLeft += iDp22;
                this.messageNameLeft += iDp22;
            }
            f11 = 25.0f;
        } else if (str2 != null || str7 != null || this.drawReactionMention || this.drawPollVotesMention) {
            f11 = 25.0f;
            if (str2 != null) {
                this.countWidth = Math.max(AndroidUtilities.dp(f6), (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str2)));
                this.countLayout = new StaticLayout(str2, Theme.dialogs_countTextPaint2, this.countWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                int iDp23 = this.countWidth + AndroidUtilities.dp(f);
                measuredWidth -= iDp23;
                if (!LocaleController.isRTL) {
                    this.countLeft = (getMeasuredWidth() - AndroidUtilities.dp(15.666f)) - (this.countWidth + AndroidUtilities.dp(12.666f));
                } else {
                    this.countLeft = AndroidUtilities.dp(15.666f);
                    this.messageLeft += iDp23;
                    this.typingLeft += iDp23;
                    this.buttonLeft += iDp23;
                    this.messageNameLeft += iDp23;
                }
                this.drawCount = true;
            } else {
                this.countWidth = 0;
            }
            if (str7 != null) {
                if (this.currentDialogFolderId != 0) {
                    this.mentionWidth = Math.max(AndroidUtilities.dp(f6), (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str7)));
                    this.mentionLayout = new StaticLayout(str7, Theme.dialogs_countTextPaint2, this.mentionWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                } else {
                    this.mentionWidth = AndroidUtilities.dp(f6);
                }
                int iDp24 = this.mentionWidth + AndroidUtilities.dp(f);
                measuredWidth -= iDp24;
                if (!LocaleController.isRTL) {
                    int measuredWidth5 = (getMeasuredWidth() - (this.mentionWidth + AndroidUtilities.dp(12.666f))) - AndroidUtilities.dp(15.666f);
                    int i42 = this.countWidth;
                    this.mentionLeft = measuredWidth5 - (i42 != 0 ? i42 + AndroidUtilities.dp(f) : 0);
                } else {
                    int iDp25 = AndroidUtilities.dp(15.666f);
                    int i43 = this.countWidth;
                    this.mentionLeft = iDp25 + (i43 != 0 ? i43 + AndroidUtilities.dp(f) : 0);
                    this.messageLeft += iDp24;
                    this.typingLeft += iDp24;
                    this.buttonLeft += iDp24;
                    this.messageNameLeft += iDp24;
                }
                this.drawMention = true;
            } else {
                this.mentionWidth = 0;
            }
            if (this.drawReactionMention) {
                int iDp26 = AndroidUtilities.dp(25.0f);
                measuredWidth -= iDp26;
                if (!LocaleController.isRTL) {
                    int measuredWidth6 = getMeasuredWidth() - AndroidUtilities.dp(36.332f);
                    this.reactionMentionLeft = measuredWidth6;
                    if (this.drawMention) {
                        int i44 = this.mentionWidth;
                        this.reactionMentionLeft = measuredWidth6 - (i44 != 0 ? i44 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i45 = this.reactionMentionLeft;
                        int i46 = this.countWidth;
                        this.reactionMentionLeft = i45 - (i46 != 0 ? i46 + AndroidUtilities.dp(f) : 0);
                    }
                } else {
                    int iDp27 = AndroidUtilities.dp(15.666f);
                    this.reactionMentionLeft = iDp27;
                    if (this.drawMention) {
                        int i47 = this.mentionWidth;
                        this.reactionMentionLeft = iDp27 + (i47 != 0 ? i47 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i48 = this.reactionMentionLeft;
                        int i49 = this.countWidth;
                        this.reactionMentionLeft = i48 + (i49 != 0 ? i49 + AndroidUtilities.dp(f) : 0);
                    }
                    this.messageLeft += iDp26;
                    this.typingLeft += iDp26;
                    this.buttonLeft += iDp26;
                    this.messageNameLeft += iDp26;
                }
            }
            if (this.drawPollVotesMention) {
                int iDp28 = AndroidUtilities.dp(25.0f);
                measuredWidth -= iDp28;
                if (!LocaleController.isRTL) {
                    int measuredWidth7 = getMeasuredWidth() - AndroidUtilities.dp(36.332f);
                    this.pollVotesMentionLeft = measuredWidth7;
                    if (this.drawReactionMention) {
                        this.pollVotesMentionLeft = measuredWidth7 - AndroidUtilities.dp(25.0f);
                    }
                    if (this.drawMention) {
                        int i50 = this.pollVotesMentionLeft;
                        int i51 = this.mentionWidth;
                        this.pollVotesMentionLeft = i50 - (i51 != 0 ? i51 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i52 = this.pollVotesMentionLeft;
                        int i53 = this.countWidth;
                        this.pollVotesMentionLeft = i52 - (i53 != 0 ? i53 + AndroidUtilities.dp(f) : 0);
                    }
                } else {
                    int iDp29 = AndroidUtilities.dp(15.666f);
                    this.pollVotesMentionLeft = iDp29;
                    if (this.drawReactionMention) {
                        this.pollVotesMentionLeft = iDp29 + AndroidUtilities.dp(25.0f);
                    }
                    if (this.drawMention) {
                        int i54 = this.pollVotesMentionLeft;
                        int i55 = this.mentionWidth;
                        this.pollVotesMentionLeft = i54 + (i55 != 0 ? i55 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i56 = this.pollVotesMentionLeft;
                        int i57 = this.countWidth;
                        this.pollVotesMentionLeft = i56 + (i57 != 0 ? i57 + AndroidUtilities.dp(f) : 0);
                    }
                    this.messageLeft += iDp28;
                    this.typingLeft += iDp28;
                    this.buttonLeft += iDp28;
                    this.messageNameLeft += iDp28;
                }
            }
        } else if (this.allowBotOpenButton && !isFolderCell() && !isForumCell() && !isDialogFolder() && UserObject.isBot(this.user) && this.user.bot_has_main_app) {
            setOpenBotButton(true);
            int iDp30 = (int) (AndroidUtilities.dp(26.0f) + this.openButtonText.getCurrentWidth());
            int iDp31 = AndroidUtilities.dp(f9);
            measuredWidth -= iDp30;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                iDp5 = AndroidUtilities.dp(40.0f);
            } else {
                iDp5 = this.isTopic ? AndroidUtilities.dp(33.0f) : AndroidUtilities.dp(c2);
            }
            boolean z43 = LocaleController.isRTL;
            RectF rectF = this.openButtonRect;
            if (!z43) {
                rectF.set((getMeasuredWidth() - iDp30) - AndroidUtilities.dp(f9), iDp5, getMeasuredWidth() - AndroidUtilities.dp(f9), iDp5 + AndroidUtilities.dp(28.0f));
                f11 = 25.0f;
            } else {
                f11 = 25.0f;
                rectF.set(AndroidUtilities.dp(f9), iDp5, AndroidUtilities.dp(f9) + iDp30, iDp5 + AndroidUtilities.dp(28.0f));
                int i58 = iDp30 + iDp31;
                this.messageLeft += i58;
                this.typingLeft += i58;
                this.buttonLeft += i58;
                this.messageNameLeft += i58;
            }
            this.drawCount = false;
            this.drawMention = false;
        } else {
            f11 = 25.0f;
            this.drawCount = false;
            this.drawMention = false;
        }
        z19 = this.drawError && this.customDialog == null && !isFolderCell() && !isForumCell() && !isDialogFolder() && (this.unreadCount > 0 || this.markUnread) && (messageObject10 = this.message) != null && !messageObject10.isOutOwner() && (this.message.messageOwner.action instanceof TLRPC.TL_messageActionGramTransfer);
        this.drawGramTransfer = z19;
        if (z19) {
            int iDp32 = (this.drawCount && this.drawCount2) ? this.countWidth + AndroidUtilities.dp(f) : 0;
            if (this.drawMention && this.drawCount2) {
                iDp32 += this.mentionWidth + AndroidUtilities.dp(f);
            }
            if (this.drawReactionMention) {
                iDp32 += AndroidUtilities.dp(f11);
            }
            if (this.drawPollVotesMention) {
                iDp32 += AndroidUtilities.dp(f11);
            }
            if (this.openBot) {
                iDp32 += ((int) this.openButtonRect.width()) + AndroidUtilities.dp(f5);
            }
            this.gramTransferLeft = LocaleController.isRTL ? AndroidUtilities.dp(15.666f) + iDp32 : (getMeasuredWidth() - AndroidUtilities.dp(43.666f)) - iDp32;
            measuredWidth -= AndroidUtilities.dp(f8);
            if (LocaleController.isRTL) {
                this.messageLeft += AndroidUtilities.dp(f8);
                this.typingLeft += AndroidUtilities.dp(f8);
                this.buttonLeft += AndroidUtilities.dp(f8);
                this.messageNameLeft += AndroidUtilities.dp(f8);
            }
        }
        if (z10) {
            if (charSequenceReplaceEmoji3 == null) {
                charSequenceReplaceEmoji3 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            int length5 = charSequenceReplaceEmoji3.length();
            CharSequence charSequenceSubSequence3 = charSequenceReplaceEmoji3;
            if (length5 > 150) {
                charSequenceSubSequence3 = charSequenceReplaceEmoji3.subSequence(0, 150);
            }
            if ((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || hasTags() || charSequence20 != null) {
                charSequenceReplaceTwoNewLinesToOne = AndroidUtilities.replaceNewLines(charSequenceSubSequence3);
            } else {
                charSequenceReplaceTwoNewLinesToOne = AndroidUtilities.replaceTwoNewLinesToOne(charSequenceSubSequence3);
            }
            charSequenceReplaceEmoji3 = Emoji.replaceEmoji(charSequenceReplaceTwoNewLinesToOne, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject28 = this.message;
            if (messageObject28 != null && (charSequenceHighlightText2 = AndroidUtilities.highlightText(charSequenceReplaceEmoji3, messageObject28.highlightedWords, this.resourcesProvider)) != null) {
                charSequenceReplaceEmoji3 = charSequenceHighlightText2;
            }
        }
        int iMax2 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
        this.buttonTop = AndroidUtilities.dp((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
        if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
            this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
        }
        zIsForumCell = isForumCell();
        boolean z362 = this.useForceThreeLines;
        if (!zIsForumCell) {
            this.messageTop = AndroidUtilities.dp((z362 || SharedConfig.useThreeLinesLayout) ? 34.0f : 39.0f);
            int i59 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr4 = this.thumbImage;
                if (i59 >= imageReceiverArr4.length) {
                    break;
                }
                imageReceiverArr4[i59].setImageY(this.buttonTop);
                i59++;
            }
        } else {
            if ((z362 || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence20 != null && (this.currentDialogFolderId == 0 || this.currentDialogFolderDialogsCount == 1)) {
                CharSequence charSequenceReplaceEmoji7 = Emoji.replaceEmoji(charSequence20, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                try {
                    messageObject9 = this.message;
                } catch (Exception e5) {
                    e = e5;
                }
                if (messageObject9 != null && messageObject9.hasHighlightedWords()) {
                    CharSequence charSequenceHighlightText5 = AndroidUtilities.highlightText(charSequenceReplaceEmoji7, this.message.highlightedWords, this.resourcesProvider);
                    if (charSequenceHighlightText5 != null) {
                        charSequence23 = charSequenceHighlightText5;
                    }
                    this.messageNameLayout = StaticLayoutEx.createStaticLayout(charSequence23, Theme.dialogs_messageNamePaint, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iMax2, 1);
                    this.messageTop = AndroidUtilities.dp(51.0f);
                    if (this.nameIsEllipsized) {
                        i14 = 0;
                        while (true) {
                            imageReceiverArr2 = this.thumbImage;
                            if (i14 < imageReceiverArr2.length) {
                            }
                            imageReceiverArr2[i14].setImageY(i13 + iDp6 + AndroidUtilities.dp(40.0f));
                            i14++;
                        }
                        charSequence24 = charSequence23;
                    }
                } else {
                    charSequence23 = charSequenceReplaceEmoji7;
                    try {
                        this.messageNameLayout = StaticLayoutEx.createStaticLayout(charSequence23, Theme.dialogs_messageNamePaint, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iMax2, 1);
                    } catch (Exception e6) {
                        e = e6;
                        charSequenceReplaceEmoji7 = charSequence23;
                        FileLog.m1040e(e);
                        charSequence23 = charSequenceReplaceEmoji7;
                    }
                    this.messageTop = AndroidUtilities.dp(51.0f);
                    iDp6 = (this.nameIsEllipsized || !this.isTopic) ? 0 : AndroidUtilities.dp(f10);
                    i14 = 0;
                    while (true) {
                        imageReceiverArr2 = this.thumbImage;
                        if (i14 < imageReceiverArr2.length) {
                            break;
                        }
                        imageReceiverArr2[i14].setImageY(i13 + iDp6 + AndroidUtilities.dp(40.0f));
                        i14++;
                    }
                    charSequence24 = charSequence23;
                }
                if (this.twoLinesForName) {
                    this.messageTop += AndroidUtilities.dp(f10);
                }
                this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
                this.buttonCreated = false;
                if (!TextUtils.isEmpty(charSequence19)) {
                    CharSequence charSequenceReplaceEmoji8 = Emoji.replaceEmoji(charSequence19, this.currentMessagePaint.getFontMetricsInt(), false);
                    if (!LocaleController.isRTL) {
                        charSequenceReplaceEmoji8 = TextUtils.concat("\u200e", charSequenceReplaceEmoji8);
                    }
                    this.buttonLayout = new StaticLayout(TextUtils.ellipsize(charSequenceReplaceEmoji8, this.currentMessagePaint, iMax2 - AndroidUtilities.dp(26.0f), TextUtils.TruncateAt.END), this.currentMessagePaint, iMax2 - AndroidUtilities.dp(f10), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                    this.spoilersPool2.addAll(this.spoilers2);
                    this.spoilers2.clear();
                    SpoilerEffect.addSpoilers(this, this.buttonLayout, this.spoilersPool2, this.spoilers2);
                } else {
                    this.buttonLayout = null;
                }
                this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
                if (!TextUtils.isEmpty(charSequence18)) {
                    if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                        if (!hasTags()) {
                            try {
                                this.typingLayout = StaticLayoutEx.createStaticLayout(charSequence18, Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, 1);
                            } catch (Exception e7) {
                                e = e7;
                                iMax2 = iMax2;
                                FileLog.m1040e(e);
                            }
                        } else {
                            try {
                                this.typingLayout = new StaticLayout(TextUtils.ellipsize(charSequence18, this.currentMessagePaint, iMax2 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                            } catch (Exception e8) {
                                e = e8;
                                iMax2 = iMax2;
                                FileLog.m1040e(e);
                            }
                        }
                    }
                }
                if (charSequenceReplaceEmoji3 instanceof Spannable) {
                    Spannable spannable = (Spannable) charSequenceReplaceEmoji3;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof ClickableSpan) && !(obj instanceof CodeHighlighting.Span)) {
                            if (this.currentDialogCommunityId != 0 || isFolderCell() || !(obj instanceof TypefaceSpan)) {
                                if ((obj instanceof CodeHighlighting.ColorSpan) || (obj instanceof QuoteSpan) || (obj instanceof QuoteSpan.QuoteStyleSpan) || ((obj instanceof StyleSpan) && ((StyleSpan) obj).getStyle() == 1)) {
                                }
                            }
                            if (!Theme.isCurrentThemeMonet() && (obj instanceof URLSpanMono)) {
                                ((URLSpanMono) obj).setCurrentType((byte) 2);
                            }
                        }
                        spannable.removeSpan(obj);
                        if (!Theme.isCurrentThemeMonet()) {
                        }
                    }
                }
                if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags() && this.currentDialogFolderId != 0 && this.currentDialogFolderDialogsCount > 1) {
                    this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                    charSequenceEllipsize = charSequence24;
                    charSequence24 = null;
                } else {
                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence24 == null) {
                        charSequenceEllipsize = charSequenceReplaceEmoji3;
                        if (ChatObject.isMonoForum(this.chat)) {
                            charSequenceEllipsize = charSequenceReplaceEmoji3;
                            if (ChatObject.canManageMonoForum(this.currentAccount, this.chat)) {
                                if (!isForumCell() && (charSequenceReplaceEmoji3 instanceof Spanned) && ((FixedWidthSpan[]) ((Spanned) charSequenceReplaceEmoji3).getSpans(0, charSequenceReplaceEmoji3.length(), FixedWidthSpan.class)).length <= 0) {
                                    charSequenceEllipsize = TextUtils.ellipsize(charSequenceReplaceEmoji3, this.currentMessagePaint, iMax2 - AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 15), TextUtils.TruncateAt.END);
                                } else {
                                    charSequenceEllipsize = TextUtils.ellipsize(charSequenceReplaceEmoji3, this.currentMessagePaint, iMax2 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END);
                                }
                            }
                        }
                    }
                    int i282 = iMax2;
                    this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                    z20 = LocaleController.isRTL;
                    StaticLayout staticLayout22 = this.nameLayout;
                    if (!z20) {
                        if (staticLayout22 != null && staticLayout22.getLineCount() > 0) {
                            float lineLeft = this.nameLayout.getLineLeft(0);
                            double dCeil = Math.ceil(this.nameLayout.getLineWidth(0));
                            int iDp33 = this.nameLeft + AndroidUtilities.dp(12.0f);
                            this.nameLeft = iDp33;
                            if (this.drawBotVerified) {
                                this.nameLeft = iDp33 + AndroidUtilities.dp(21.0f);
                            }
                            if (this.nameLayoutEllipsizeByGradient) {
                                dCeil = Math.min(this.nameWidth, dCeil);
                            }
                            if ((this.dialogMuted || this.drawUnmute || this.dialogMutedProgress > f7) && !this.drawVerified && !this.drawBadge && this.drawScam == 0) {
                                boolean z44 = this.drawPremium;
                                int i60 = this.nameLeft;
                                if (z44) {
                                    int iDp34 = (int) ((((double) i60) + ((((double) this.nameWidth) - dCeil) - ((double) lineLeft))) - ((double) AndroidUtilities.dp(f4)));
                                    this.nameMuteLeft = iDp34;
                                    this.nameMutedIconLeft = (iDp34 - AndroidUtilities.dp(6.0f)) - Theme.dialogs_muteDrawable.getIntrinsicWidth();
                                } else {
                                    this.nameMuteLeft = (int) (((((double) i60) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_muteDrawable.getIntrinsicWidth()));
                                }
                            } else if (this.drawVerified) {
                                this.nameMuteLeft = (int) (((((double) this.nameLeft) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_verifiedDrawable.getIntrinsicWidth()));
                            } else if (this.drawBadge) {
                                this.nameMuteLeft = (int) (((((double) this.nameLeft) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) AndroidUtilities.dp(f4)));
                            } else if (this.drawPremium) {
                                int iDp35 = (int) ((((double) this.nameLeft) + ((((double) this.nameWidth) - dCeil) - ((double) lineLeft))) - ((double) AndroidUtilities.dp(f4)));
                                this.nameMuteLeft = iDp35;
                                this.nameMutedIconLeft = (iDp35 - AndroidUtilities.dp(6.0f)) - Theme.dialogs_muteDrawable.getIntrinsicWidth();
                            } else {
                                int i61 = this.drawScam;
                                int i62 = this.nameLeft;
                                if (i61 != 0) {
                                    this.nameMuteLeft = (int) (((((double) i62) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) (this.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).getIntrinsicWidth()));
                                } else {
                                    this.nameMuteLeft = (int) (((((double) i62) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_muteDrawable.getIntrinsicWidth()));
                                }
                            }
                            if (lineLeft == f7) {
                                int i63 = this.nameWidth;
                                if (dCeil < i63) {
                                    this.nameLeft = (int) (((double) this.nameLeft) + (((double) i63) - dCeil));
                                }
                            }
                        }
                        StaticLayout staticLayout3 = this.messageLayout;
                        int iMin = Integer.MAX_VALUE;
                        if (staticLayout3 != null && (lineCount6 = staticLayout3.getLineCount()) > 0) {
                            int iMin2 = Integer.MAX_VALUE;
                            int i64 = 0;
                            while (true) {
                                if (i64 >= lineCount6) {
                                    break;
                                }
                                if (this.messageLayout.getLineLeft(i64) != f7) {
                                    iMin2 = 0;
                                    break;
                                } else {
                                    iMin2 = Math.min(iMin2, (int) (((double) i282) - Math.ceil(this.messageLayout.getLineWidth(i64))));
                                    i64++;
                                }
                            }
                            if (iMin2 != Integer.MAX_VALUE) {
                                this.messageLeft += iMin2;
                            }
                        }
                        StaticLayout staticLayout4 = this.typingLayout;
                        if (staticLayout4 != null && (lineCount5 = staticLayout4.getLineCount()) > 0) {
                            int iMin3 = Integer.MAX_VALUE;
                            int i65 = 0;
                            while (true) {
                                if (i65 >= lineCount5) {
                                    break;
                                }
                                if (this.typingLayout.getLineLeft(i65) != f7) {
                                    iMin3 = 0;
                                    break;
                                } else {
                                    iMin3 = Math.min(iMin3, (int) (((double) i282) - Math.ceil(this.typingLayout.getLineWidth(i65))));
                                    i65++;
                                }
                            }
                            if (iMin3 != Integer.MAX_VALUE) {
                                this.typingLeft += iMin3;
                            }
                        }
                        StaticLayout staticLayout5 = this.messageNameLayout;
                        if (staticLayout5 != null && staticLayout5.getLineCount() > 0 && this.messageNameLayout.getLineLeft(0) == f7) {
                            double dCeil2 = Math.ceil(this.messageNameLayout.getLineWidth(0));
                            double d = i282;
                            if (dCeil2 < d) {
                                this.messageNameLeft = (int) (((double) this.messageNameLeft) + (d - dCeil2));
                            }
                        }
                        StaticLayout staticLayout6 = this.buttonLayout;
                        if (staticLayout6 != null && (lineCount4 = staticLayout6.getLineCount()) > 0) {
                            for (int i66 = 0; i66 < lineCount4; i66++) {
                                iMin = (int) Math.min(iMin, this.buttonLayout.getWidth() - this.buttonLayout.getLineRight(i66));
                            }
                            this.buttonLeft += iMin;
                        }
                    } else {
                        if (staticLayout22 != null && staticLayout22.getLineCount() > 0) {
                            float lineRight = this.nameLayout.getLineRight(0);
                            if (this.nameLayoutEllipsizeByGradient) {
                                lineRight = Math.min(this.nameWidth, lineRight);
                            }
                            if (lineRight == this.nameWidth) {
                                double dCeil3 = Math.ceil(this.nameLayout.getLineWidth(0));
                                if (this.nameLayoutEllipsizeByGradient) {
                                    dCeil3 = Math.min(this.nameWidth, dCeil3);
                                }
                                int i67 = this.nameWidth;
                                if (dCeil3 < i67) {
                                    this.nameLeft = (int) (((double) this.nameLeft) - (((double) i67) - dCeil3));
                                }
                            }
                            if (this.drawBotVerified) {
                                this.nameLeft += AndroidUtilities.dp(21.0f);
                            }
                            int iDp36 = (int) (this.nameLeft + lineRight + AndroidUtilities.dp(6.0f));
                            this.nameMuteLeft = iDp36;
                            if (this.drawPremium) {
                                this.nameMutedIconLeft = iDp36 + AndroidUtilities.dp(30.0f);
                            }
                        }
                        StaticLayout staticLayout7 = this.messageLayout;
                        if (staticLayout7 != null && (lineCount3 = staticLayout7.getLineCount()) > 0) {
                            float fMin = 2.1474836E9f;
                            for (int i68 = 0; i68 < lineCount3; i68++) {
                                fMin = Math.min(fMin, this.messageLayout.getLineLeft(i68));
                            }
                            this.messageLeft = (int) (this.messageLeft - fMin);
                        }
                        StaticLayout staticLayout8 = this.buttonLayout;
                        if (staticLayout8 != null && (lineCount2 = staticLayout8.getLineCount()) > 0) {
                            float fMin2 = 2.1474836E9f;
                            for (int i69 = 0; i69 < lineCount2; i69++) {
                                fMin2 = Math.min(fMin2, this.buttonLayout.getLineLeft(i69));
                            }
                            this.buttonLeft = (int) (this.buttonLeft - fMin2);
                        }
                        StaticLayout staticLayout9 = this.typingLayout;
                        if (staticLayout9 != null && (lineCount = staticLayout9.getLineCount()) > 0) {
                            float fMin3 = 2.1474836E9f;
                            for (int i70 = 0; i70 < lineCount; i70++) {
                                fMin3 = Math.min(fMin3, this.typingLayout.getLineLeft(i70));
                            }
                            this.typingLeft = (int) (this.typingLeft - fMin3);
                        }
                        StaticLayout staticLayout10 = this.messageNameLayout;
                        if (staticLayout10 != null && staticLayout10.getLineCount() > 0) {
                            this.messageNameLeft = (int) (this.messageNameLeft - this.messageNameLayout.getLineLeft(0));
                        }
                    }
                    staticLayout = this.typingLayout;
                    if (staticLayout != null && this.printingStringType >= 0 && staticLayout.getText().length() > 0) {
                        if (i10 < 0 && (i15 = i10 + 1) < this.typingLayout.getText().length()) {
                            primaryHorizontal = this.typingLayout.getPrimaryHorizontal(i10);
                            primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(i15);
                        } else {
                            primaryHorizontal = this.typingLayout.getPrimaryHorizontal(0);
                            primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(1);
                        }
                        int i71 = this.typingLeft;
                        if (primaryHorizontal >= primaryHorizontal2) {
                            this.statusDrawableLeft = (int) (i71 + primaryHorizontal);
                        } else {
                            this.statusDrawableLeft = (int) (i71 + primaryHorizontal2 + AndroidUtilities.dp(3.0f));
                        }
                    }
                    updateThumbsPosition();
                }
                if (separateMessageNameLine() && !isForumCell() && shouldDrawForwardPreviewIcon(this.message)) {
                    SpannableStringBuilder spannableStringBuilder12 = new SpannableStringBuilder(charSequenceEllipsize);
                    prependForwardedIcon(spannableStringBuilder12, 0);
                    charSequence25 = spannableStringBuilder12;
                } else {
                    charSequence25 = charSequenceEllipsize;
                }
                alignment = (this.isForum || !LocaleController.isRTL) ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                if ((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                    if (this.thumbsCount > 0 && charSequence24 != null) {
                        iMax2 += AndroidUtilities.dp(5.0f);
                    }
                    i16 = iMax2;
                    try {
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence24 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    } catch (Exception e9) {
                        e = e9;
                        iMax2 = i16;
                        this.messageLayout = null;
                        FileLog.m1040e(e);
                    }
                } else {
                    if (this.thumbsCount > 0) {
                        iMax2 += AndroidUtilities.dp((r0 * (this.thumbSize + 2)) + 3);
                        if (LocaleController.isRTL && !isForumCell()) {
                            this.messageLeft -= AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3);
                        }
                    }
                    try {
                        int i72 = iMax2;
                        try {
                            this.messageLayout = new StaticLayout(charSequence25, this.currentMessagePaint, i72, alignment, 1.0f, 0.0f, false);
                            iMax2 = i72;
                            this.spoilersPool.addAll(this.spoilers);
                            this.spoilers.clear();
                            SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                        } catch (Exception e10) {
                            e = e10;
                            iMax2 = i72;
                            this.messageLayout = null;
                            FileLog.m1040e(e);
                        }
                    } catch (Exception e11) {
                        e = e11;
                    }
                }
                int i2822 = iMax2;
                this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                z20 = LocaleController.isRTL;
                StaticLayout staticLayout222 = this.nameLayout;
                if (!z20) {
                }
                staticLayout = this.typingLayout;
                if (staticLayout != null) {
                    if (i10 < 0) {
                        primaryHorizontal = this.typingLayout.getPrimaryHorizontal(0);
                        primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(1);
                        int i712 = this.typingLeft;
                        if (primaryHorizontal >= primaryHorizontal2) {
                        }
                    }
                }
                updateThumbsPosition();
            }
            this.messageNameLayout = null;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                this.messageTop = AndroidUtilities.dp(f8);
                int iDp37 = (this.nameIsEllipsized && this.isTopic) ? AndroidUtilities.dp(f10) : 0;
                int i73 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr5 = this.thumbImage;
                    if (i73 >= imageReceiverArr5.length) {
                        break;
                    }
                    imageReceiverArr5[i73].setImageY(i13 + iDp37 + AndroidUtilities.dp(21.0f));
                    i73++;
                }
            } else {
                this.messageTop = AndroidUtilities.dp(39.0f);
            }
        }
        charSequence24 = charSequence20;
        if (this.twoLinesForName) {
        }
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.buttonCreated = false;
        if (!TextUtils.isEmpty(charSequence19)) {
        }
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        if (!TextUtils.isEmpty(charSequence18)) {
        }
        if (charSequenceReplaceEmoji3 instanceof Spannable) {
        }
        if (this.useForceThreeLines) {
            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
            charSequenceEllipsize = charSequence24;
            charSequence24 = null;
            if (separateMessageNameLine()) {
                charSequence25 = charSequenceEllipsize;
                if (this.isForum) {
                    alignment = (this.isForum || !LocaleController.isRTL) ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                    if (!this.useForceThreeLines) {
                        if (this.thumbsCount > 0) {
                            iMax2 += AndroidUtilities.dp(5.0f);
                        }
                        i16 = iMax2;
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence24 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    } else {
                        if (this.thumbsCount > 0) {
                        }
                        i16 = iMax2;
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence25, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence24 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    }
                }
            }
        } else {
            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
            charSequenceEllipsize = charSequence24;
            charSequence24 = null;
            if (separateMessageNameLine()) {
            }
        }
        int i28222 = iMax2;
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
        z20 = LocaleController.isRTL;
        StaticLayout staticLayout2222 = this.nameLayout;
        if (!z20) {
        }
        staticLayout = this.typingLayout;
        if (staticLayout != null) {
        }
        updateThumbsPosition();
    }

    private CharSequence addSenderAvatar(CharSequence charSequence, MessageObject messageObject) {
        if (ExteraConfig.getSenderMiniAvatars() && messageObject != null && !TextUtils.isEmpty(charSequence)) {
            long fromChatId = messageObject.getFromChatId();
            if (fromChatId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.messageAvatarSpan.setDialogId(fromChatId);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("A ");
                spannableStringBuilder.setSpan(this.messageAvatarSpan, 0, 1, 33);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append((CharSequence) " ");
                spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.dp(1.0f)), length, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append(charSequence);
                return spannableStringBuilder;
            }
        }
        return charSequence;
    }

    public void setTitleOverride(String str) {
        this.titleOverride = str;
    }

    private boolean shouldDrawForwardPreviewIcon(MessageObject messageObject) {
        TLRPC.Message message;
        TLRPC.Chat chat;
        if (messageObject == null || (message = messageObject.messageOwner) == null || this.currentDialogFolderId != 0 || message.fwd_from == null) {
            return false;
        }
        if (messageObject.needDrawForwarded()) {
            return true;
        }
        if (messageObject.isOutOwner()) {
            return !(messageObject.isSaved || this.isSavedDialog || (chat = this.chat) == null || (ChatObject.isChannel(chat) && !ChatObject.isMegagroup(this.chat))) || messageObject.isSaved || this.isSavedDialog || this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
        }
        return false;
    }

    private void prependForwardedIcon(SpannableStringBuilder spannableStringBuilder, int i) {
        this.drawForwardIcon = true;
        spannableStringBuilder.insert(i, "d ");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2807R.drawable.mini_forwarded).mutate());
        coloredImageSpan.setAlpha(0.9f);
        spannableStringBuilder.setSpan(coloredImageSpan, i, i + 1, 33);
    }

    private SpannableStringBuilder formatInternal(int i, CharSequence charSequence, CharSequence charSequence2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (i == 1) {
            spannableStringBuilder.append(charSequence2).append((CharSequence) ": \u2068").append(charSequence).append((CharSequence) "\u2069");
            return spannableStringBuilder;
        }
        if (i == 2) {
            spannableStringBuilder.append((CharSequence) "\u2068").append(charSequence).append((CharSequence) "\u2069");
            return spannableStringBuilder;
        }
        if (i == 3) {
            spannableStringBuilder.append(charSequence2).append((CharSequence) ": ").append(charSequence);
            return spannableStringBuilder;
        }
        if (i != 4) {
            return spannableStringBuilder;
        }
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void updateThumbsPosition() {
        if (this.thumbsCount > 0) {
            StaticLayout staticLayout = isForumCell() ? this.buttonLayout : this.messageLayout;
            int i = isForumCell() ? this.buttonLeft : this.messageLeft;
            if (staticLayout == null) {
                return;
            }
            try {
                CharSequence text = staticLayout.getText();
                if (text instanceof Spanned) {
                    ThumbnailSpan[] thumbnailSpanArr = (ThumbnailSpan[]) ((Spanned) text).getSpans(0, text.length(), ThumbnailSpan.class);
                    if (thumbnailSpanArr == null || thumbnailSpanArr.length <= 0) {
                        for (int i2 = 0; i2 < 3; i2++) {
                            this.thumbImageSeen[i2] = false;
                        }
                        return;
                    }
                    int spanStart = ((Spanned) text).getSpanStart(thumbnailSpanArr[0]);
                    if (spanStart < 0) {
                        spanStart = 0;
                    }
                    int iCeil = (int) Math.ceil(Math.min(staticLayout.getPrimaryHorizontal(spanStart), staticLayout.getPrimaryHorizontal(spanStart + 1)));
                    if (iCeil != 0 && !this.drawForwardIcon && !this.drawGiftIcon) {
                        iCeil += AndroidUtilities.dp(3.0f);
                    }
                    for (int i3 = 0; i3 < this.thumbsCount; i3++) {
                        this.thumbImage[i3].setImageX(i + iCeil + AndroidUtilities.dp((this.thumbSize + 2) * i3));
                        this.thumbImageSeen[i3] = true;
                    }
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    private CharSequence applyThumbs(CharSequence charSequence) {
        if (this.thumbsCount <= 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence);
        spannableStringBuilderValueOf.insert(0, (CharSequence) " ");
        spannableStringBuilderValueOf.setSpan(new ThumbnailSpan(AndroidUtilities.dp(((this.thumbSize + 2) * this.thumbsCount) + 3)), 0, 1, 33);
        return spannableStringBuilderValueOf;
    }

    private CharSequence formatTopicsNames() {
        if (this.forumFormattedNames == null) {
            this.forumFormattedNames = new ForumFormattedNames(this);
        }
        this.forumFormattedNames.formatTopicsNames(this.currentAccount, this.message, this.chat);
        ForumFormattedNames forumFormattedNames = this.forumFormattedNames;
        this.topMessageTopicStartIndex = forumFormattedNames.topMessageTopicStartIndex;
        this.topMessageTopicEndIndex = forumFormattedNames.topMessageTopicEndIndex;
        this.lastTopicMessageUnread = forumFormattedNames.lastTopicMessageUnread;
        return forumFormattedNames.formattedNames;
    }

    public boolean isForumCell() {
        TLRPC.Chat chat;
        if (isDialogFolder() || this.insideCommunityListNoDialog || (chat = this.chat) == null) {
            return false;
        }
        return (chat.forum || (ChatObject.isMonoForum(chat) && ChatObject.canManageMonoForum(this.currentAccount, this.chat))) && !this.isTopic;
    }

    private void drawCheckStatus(Canvas canvas, boolean z, boolean z2, boolean z3, boolean z4, float f) {
        if (f != 0.0f || z4) {
            float f2 = (f * 0.5f) + 0.5f;
            if (z) {
                BaseCell.setDrawableBounds(Theme.dialogs_clockDrawable, this.clockDrawLeft, this.checkDrawTop);
                if (f != 1.0f) {
                    canvas.save();
                    canvas.scale(f2, f2, Theme.dialogs_clockDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                    Theme.dialogs_clockDrawable.setAlpha((int) (f * 255.0f));
                }
                Theme.dialogs_clockDrawable.draw(canvas);
                if (f != 1.0f) {
                    canvas.restore();
                    Theme.dialogs_clockDrawable.setAlpha(255);
                }
                invalidate();
                return;
            }
            if (z3) {
                if (z2) {
                    BaseCell.setDrawableBounds(Theme.dialogs_halfCheckDrawable, this.halfCheckDrawLeft, this.checkDrawTop);
                    if (z4) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        Theme.dialogs_halfCheckDrawable.setAlpha((int) (f * 255.0f));
                    }
                    if (!z4 && f != 0.0f) {
                        canvas.save();
                        canvas.scale(f2, f2, Theme.dialogs_halfCheckDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                        int i = (int) (255.0f * f);
                        Theme.dialogs_halfCheckDrawable.setAlpha(i);
                        Theme.dialogs_checkReadDrawable.setAlpha(i);
                    }
                    Theme.dialogs_halfCheckDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        canvas.save();
                        canvas.translate(AndroidUtilities.dp(4.0f) * (1.0f - f), 0.0f);
                    }
                    BaseCell.setDrawableBounds(Theme.dialogs_checkReadDrawable, this.checkDrawLeft, this.checkDrawTop);
                    Theme.dialogs_checkReadDrawable.draw(canvas);
                    if (z4) {
                        canvas.restore();
                        Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    }
                    if (z4 || f == 0.0f) {
                        return;
                    }
                    canvas.restore();
                    Theme.dialogs_halfCheckDrawable.setAlpha(255);
                    Theme.dialogs_checkReadDrawable.setAlpha(255);
                    return;
                }
                BaseCell.setDrawableBounds(Theme.dialogs_checkDrawable, this.checkDrawLeft1, this.checkDrawTop);
                if (f != 1.0f) {
                    canvas.save();
                    canvas.scale(f2, f2, Theme.dialogs_checkDrawable.getBounds().centerX(), Theme.dialogs_halfCheckDrawable.getBounds().centerY());
                    Theme.dialogs_checkDrawable.setAlpha((int) (f * 255.0f));
                }
                Theme.dialogs_checkDrawable.draw(canvas);
                if (f != 1.0f) {
                    canvas.restore();
                    Theme.dialogs_checkDrawable.setAlpha(255);
                }
            }
        }
    }

    public boolean isPointInsideAvatar(float f, float f2) {
        return !LocaleController.isRTL ? f >= 0.0f && f < ((float) AndroidUtilities.dp(60.0f)) : f >= ((float) (getMeasuredWidth() - AndroidUtilities.dp(60.0f))) && f < ((float) getMeasuredWidth());
    }

    public void setDialogSelected(boolean z) {
        if (this.isSelected != z) {
            invalidate();
        }
        this.isSelected = z;
    }

    public void animateArchiveAvatar() {
        if (this.avatarDrawable.getAvatarType() != 2) {
            return;
        }
        this.animatingArchiveAvatar = true;
        this.animatingArchiveAvatarProgress = 0.0f;
        Theme.dialogs_archiveAvatarDrawable.setProgress(0.0f);
        Theme.dialogs_archiveAvatarDrawable.start();
        invalidate();
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null || z) {
            if (checkBox2 == null) {
                CheckBox2 checkBox22 = new CheckBox2(getContext(), 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.4
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        DialogCell.this.invalidate();
                    }
                };
                this.checkBox = checkBox22;
                checkBox22.setColor(-1, Theme.key_windowBackgroundWhite, Theme.key_checkboxCheck);
                this.checkBox.setDrawUnchecked(false);
                this.checkBox.setDrawBackgroundAsArc(3);
                addView(this.checkBox);
            }
            this.checkBox.setChecked(z, z2);
            checkTtl();
        }
    }

    private MessageObject findFolderTopMessage() {
        ArrayList<TLRPC.Dialog> dialogsArray;
        DialogsActivity dialogsActivity = this.parentFragment;
        if (dialogsActivity == null || (dialogsArray = dialogsActivity.getDialogsArray(this.currentAccount, this.dialogsType, this.currentDialogFolderId, false)) == null || dialogsArray.isEmpty()) {
            return null;
        }
        int size = dialogsArray.size();
        MessageObject messageObject = null;
        for (int i = 0; i < size; i++) {
            TLRPC.Dialog dialog = dialogsArray.get(i);
            LongSparseArray<ArrayList<MessageObject>> longSparseArray = MessagesController.getInstance(this.currentAccount).dialogMessage;
            if (longSparseArray != null) {
                ArrayList<MessageObject> arrayList = longSparseArray.get(dialog.id);
                MessageObject messageObject2 = (arrayList == null || arrayList.isEmpty()) ? null : arrayList.get(0);
                if (messageObject2 != null && (messageObject == null || messageObject2.messageOwner.date > messageObject.messageOwner.date)) {
                    messageObject = messageObject2;
                }
                if (dialog.pinnedNum == 0 && messageObject != null) {
                    return messageObject;
                }
            }
        }
        return messageObject;
    }

    public boolean isFolderCell() {
        return this.currentDialogFolderId != 0;
    }

    private int getAvatarSizeDp() {
        return (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 56 : 52;
    }

    private void setAvatarRadius(int i) {
        this.storyParams.avatarRadius = i;
        this.avatarImage.setRoundRadius(i);
    }

    public boolean update(int i) {
        return update(i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0597 A[PHI: r3
  0x0597: PHI (r3v98 boolean) = (r3v97 boolean), (r3v104 boolean), (r3v104 boolean), (r3v104 boolean) binds: [B:262:0x04ae, B:269:0x04c7, B:298:0x0575, B:306:0x0587] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x05b1  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x05b9  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x05c9  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0701  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0708  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0730  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0856  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0864  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0875  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x087b  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x08da  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0908  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x09a4  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x09a6  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x09b4  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x09b6  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x09be  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x09c0  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x09c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0a13  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0a24  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0a29  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0a2c  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$EncryptedChat, org.telegram.tgnet.TLRPC$User] */
    /* JADX WARN: Type inference failed for: r7v68 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean update(int i, boolean z) {
        long j;
        int i2;
        char c2;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        int i4;
        long dialogId;
        boolean z5;
        MessageObject messageObject;
        float f;
        boolean z6;
        TLRPC.User user;
        boolean z7;
        int avatarCorners;
        boolean z8;
        TLRPC.Chat chat;
        int i5;
        int i6;
        ValueAnimator valueAnimator;
        String str;
        String str2;
        TLRPC.Chat chat2;
        boolean z9;
        boolean z10;
        MessageObject messageObject2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int archiveUnreadCount;
        TLRPC.Chat chat3;
        MessageObject messageObject3;
        long botVerificationIcon;
        boolean z11;
        boolean z12;
        TLRPC.User user2;
        boolean zIsForumCell = isForumCell();
        boolean z13 = false;
        this.drawAvatarSelector = false;
        this.ttlPeriod = 0;
        CustomDialog customDialog = this.customDialog;
        ?? r7 = 0;
        if (customDialog != null) {
            this.lastMessageDate = customDialog.date;
            int i12 = customDialog.unread_count;
            this.lastUnreadState = i12 != 0;
            this.unreadCount = i12;
            this.drawPin = customDialog.pinned;
            this.dialogMuted = customDialog.muted;
            this.hasUnmutedTopics = false;
            this.hasUnmutedCommunityDialogs = false;
            this.avatarDrawable.setInfo(customDialog.id, customDialog.name, null);
            boolean z14 = this.isShareToStoryCell;
            ImageReceiver imageReceiver = this.avatarImage;
            if (z14) {
                imageReceiver.setImage(null, "50_50", this.repostStoryDrawable, null, 0L);
            } else {
                imageReceiver.setImage(null, "50_50", this.avatarDrawable, null, 0L);
            }
            int i13 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr = this.thumbImage;
                if (i13 >= imageReceiverArr.length) {
                    break;
                }
                imageReceiverArr[i13].setImageBitmap((Drawable) null);
                i13++;
            }
            this.drawMonoforumAvatar = false;
            this.drawCommunityAvatar = false;
            setAvatarRadius(ExteraConfig.getAvatarCorners(getAvatarSizeDp()));
            this.drawUnmute = false;
            z8 = false;
            z3 = false;
            z7 = false;
            f = 0.0f;
        } else {
            int i14 = this.unreadCount;
            boolean z15 = this.reactionMentionCount != 0;
            boolean z16 = this.markUnread;
            this.hasUnmutedTopics = false;
            this.hasUnmutedCommunityDialogs = false;
            this.readOutboxMaxId = -1;
            if (this.isDialogCell) {
                TLRPC.Dialog dialog = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.currentDialogId);
                if (dialog != null) {
                    this.readOutboxMaxId = dialog.read_outbox_max_id;
                    this.ttlPeriod = dialog.ttl_period;
                    if (i == 0) {
                        j = 0;
                        this.clearingDialog = MessagesController.getInstance(this.currentAccount).isClearingDialog(dialog.id);
                        ArrayList<MessageObject> arrayList = MessagesController.getInstance(this.currentAccount).dialogMessage.get(dialog.id);
                        this.groupMessages = arrayList;
                        MessageObject messageObject4 = (arrayList == null || arrayList.size() <= 0) ? null : this.groupMessages.get(0);
                        this.message = messageObject4;
                        this.lastUnreadState = messageObject4 != null && messageObject4.isUnread();
                        TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog.id));
                        if (chat4 != null && chat4.forum) {
                            boolean z17 = this.isTopic;
                        }
                        if (chat4 != null && (chat4.forum || (chat4.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat4)))) {
                            int[] forumUnreadCount = MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(chat4.id);
                            this.unreadCount = forumUnreadCount[0];
                            this.mentionCount = forumUnreadCount[1];
                            this.reactionMentionCount = forumUnreadCount[2];
                            this.hasUnmutedTopics = forumUnreadCount[3] != 0;
                            this.pollVotesMentionCount = forumUnreadCount[4];
                        } else if (dialog instanceof TLRPC.TL_dialogFolder) {
                            this.unreadCount = MessagesStorage.getInstance(this.currentAccount).getArchiveUnreadCount();
                            this.mentionCount = 0;
                            this.reactionMentionCount = 0;
                            this.pollVotesMentionCount = 0;
                        } else if (dialog instanceof TLRPC.TL_dialogCommunity) {
                            MessagesController.UnreadCounts communityUnreadCount = MessagesController.getInstance(this.currentAccount).getCommunityUnreadCount(-dialog.id);
                            this.unreadCount = communityUnreadCount.unreadCount;
                            this.mentionCount = communityUnreadCount.mentionCount;
                            this.reactionMentionCount = communityUnreadCount.reactionMentionCount;
                            this.pollVotesMentionCount = communityUnreadCount.pollVotesMentionCount;
                            this.hasUnmutedCommunityDialogs = communityUnreadCount.hasUnmutedUnreadDialogs;
                        } else {
                            this.unreadCount = dialog.unread_count;
                            this.mentionCount = dialog.unread_mentions_count;
                            this.reactionMentionCount = dialog.unread_reactions_count;
                            this.pollVotesMentionCount = dialog.unread_poll_votes_count;
                        }
                        if (ChatObject.isMonoForum(chat4)) {
                            this.mentionCount = 0;
                        }
                        this.markUnread = dialog.unread_mark;
                        MessageObject messageObject5 = this.message;
                        this.currentEditDate = messageObject5 != null ? messageObject5.messageOwner.edit_date : 0;
                        this.lastMessageDate = dialog.last_message_date;
                        int i15 = this.dialogsType;
                        if (i15 == 7 || i15 == 8) {
                            MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(this.currentAccount).selectedDialogFilter[this.dialogsType == 8 ? (char) 1 : (char) 0];
                            this.drawPin = dialogFilter != null && dialogFilter.pinnedDialogs.indexOfKey(dialog.id) >= 0;
                        } else {
                            this.drawPin = this.currentDialogFolderId == 0 && dialog.pinned;
                        }
                        MessageObject messageObject6 = this.message;
                        if (messageObject6 != null) {
                            this.lastSendState = messageObject6.messageOwner.send_state;
                        }
                    } else {
                        j = 0;
                    }
                } else {
                    j = 0;
                    this.unreadCount = 0;
                    this.mentionCount = 0;
                    this.reactionMentionCount = 0;
                    this.pollVotesMentionCount = 0;
                    this.currentEditDate = 0;
                    this.lastMessageDate = 0;
                    this.clearingDialog = false;
                }
                long j2 = this.currentDialogId;
                this.drawAvatarSelector = j2 != j && j2 == RightSlidingDialogContainer.fragmentDialogId;
            } else {
                j = 0;
                this.drawPin = false;
            }
            TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
            if (tL_forumTopic != null) {
                this.unreadCount = tL_forumTopic.unread_count;
                this.mentionCount = tL_forumTopic.unread_mentions_count;
                this.reactionMentionCount = tL_forumTopic.unread_reactions_count;
                this.pollVotesMentionCount = tL_forumTopic.unread_poll_votes_count;
            }
            if (this.dialogsType == 2) {
                this.drawPin = false;
            }
            DialogCellTags dialogCellTags = this.tags;
            if (dialogCellTags != null) {
                boolean zIsEmpty = dialogCellTags.isEmpty();
                i2 = 2;
                c2 = 4;
                if (this.tags.update(this.currentAccount, this.dialogsType, this.currentDialogId)) {
                    z2 = zIsEmpty != this.tags.isEmpty();
                    z3 = z2;
                    z4 = true;
                }
                if (i == 0) {
                    TLRPC.User user3 = this.user;
                    if (user3 != null && !MessagesController.isSupportUser(user3) && !this.user.bot && (i & MessagesController.UPDATE_MASK_STATUS) != 0) {
                        this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id));
                        if (this.wasDrawnOnline != isOnline()) {
                            z4 = true;
                        }
                    }
                    if ((i & MessagesController.UPDATE_MASK_EMOJI_STATUS) != 0) {
                        if (this.user != null) {
                            TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.user.id));
                            this.user = user4;
                            if (user4 != null) {
                                this.nameLayoutEllipsizeByGradient = true;
                                BadgesController badgesController = BadgesController.INSTANCE;
                                BadgeDTO badge = badgesController.getBadge(user4);
                                BadgeDTO secondaryBadge = badgesController.getSecondaryBadge(this.user);
                                boolean z18 = (badge == null || (user2 = this.user) == null || UserObject.isUserSelf(user2)) ? false : true;
                                if (this.forbidVerified || !this.user.verified) {
                                    TLRPC.User user5 = this.user;
                                    i4 = i2;
                                    if (!user5.scam && !user5.fake) {
                                        z12 = false;
                                    }
                                    if (DialogObject.getEmojiStatusDocumentId(this.user.emoji_status) == j) {
                                        i3 = i14;
                                        this.emojiStatus.set(DialogObject.getEmojiStatusDocumentId(this.user.emoji_status), z);
                                        this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.user.emoji_status), z);
                                        z12 = true;
                                    } else {
                                        i3 = i14;
                                        if (badge != null && z18) {
                                            this.emojiStatus.set(badge.getDocumentId(), z);
                                            this.emojiStatus.setParticles(true, z);
                                        }
                                    }
                                    if (secondaryBadge == null && z18 && z12) {
                                        botVerificationIcon = secondaryBadge.getDocumentId();
                                        z11 = true;
                                        z4 = true;
                                    } else {
                                        botVerificationIcon = DialogObject.getBotVerificationIcon(this.user);
                                    }
                                } else {
                                    i4 = i2;
                                }
                                z12 = true;
                                if (DialogObject.getEmojiStatusDocumentId(this.user.emoji_status) == j) {
                                }
                                if (secondaryBadge == null) {
                                }
                                botVerificationIcon = DialogObject.getBotVerificationIcon(this.user);
                            } else {
                                i3 = i14;
                                i4 = i2;
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(PremiumGradient.getInstance().premiumStarDrawableMini, z);
                                this.emojiStatus.setParticles(false, z);
                                botVerificationIcon = j;
                            }
                            z11 = false;
                            z4 = true;
                        } else {
                            i3 = i14;
                            i4 = i2;
                            botVerificationIcon = j;
                            z11 = false;
                        }
                        if (this.chat != null) {
                            TLRPC.Chat chat5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.id));
                            this.chat = chat5;
                            if (chat5 != null && DialogObject.getEmojiStatusDocumentId(chat5.emoji_status) != j) {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(DialogObject.getEmojiStatusDocumentId(this.chat.emoji_status), z);
                                this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.chat.emoji_status), z);
                            } else {
                                this.nameLayoutEllipsizeByGradient = true;
                                this.emojiStatus.set(PremiumGradient.getInstance().premiumStarDrawableMini, z);
                                this.emojiStatus.setParticles(false, z);
                            }
                            botVerificationIcon = DialogObject.getBotVerificationIcon(this.chat);
                            z4 = true;
                        }
                        this.botVerification.setParticles(z11, z, 5);
                        boolean z19 = this.drawBotVerified;
                        if (botVerificationIcon != j) {
                            z9 = !z19;
                            this.botVerification.set(botVerificationIcon, z);
                        } else {
                            this.botVerification.set((Drawable) null, z);
                            z9 = z19;
                        }
                    } else {
                        i3 = i14;
                        i4 = i2;
                        z9 = false;
                    }
                    if ((this.isDialogCell || this.isTopic) && (i & MessagesController.UPDATE_MASK_USER_PRINT) != 0) {
                        CharSequence printingString = MessagesController.getInstance(this.currentAccount).getPrintingString(this.currentDialogId, getTopicId(), true);
                        CharSequence charSequence = this.lastPrintString;
                        if ((charSequence != null && printingString == null) || ((charSequence == null && printingString != null) || (charSequence != null && !charSequence.equals(printingString)))) {
                            z9 = true;
                        }
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_MESSAGE_TEXT) != 0 && (messageObject3 = this.message) != null && messageObject3.messageText != this.lastMessageString) {
                        z9 = true;
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_CHAT) != 0 && this.chat != null) {
                        TLRPC.Chat chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.id));
                        if ((chat6 != null && chat6.call_active && chat6.call_not_empty) != this.hasCall) {
                            z9 = true;
                        }
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_AVATAR) != 0 && ((chat3 = this.chat) == null || (chat3.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat3)))) {
                        ForumFormattedNames forumFormattedNames = this.forumFormattedNames;
                        if (forumFormattedNames != null) {
                            forumFormattedNames.invalidateSpans();
                        }
                        z9 = true;
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_NAME) != 0 && this.chat == null) {
                        z9 = true;
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_CHAT_AVATAR) != 0 && this.user == null) {
                        z9 = true;
                    }
                    if (!z9 && (i & MessagesController.UPDATE_MASK_CHAT_NAME) != 0 && this.user == null) {
                        z9 = true;
                    }
                    if (!z9) {
                        MessageObject messageObject7 = this.message;
                        if (messageObject7 != null && this.lastUnreadState != messageObject7.isUnread()) {
                            this.lastUnreadState = this.message.isUnread();
                            z9 = true;
                        }
                        if (this.isDialogCell) {
                            TLRPC.Dialog dialog2 = MessagesController.getInstance(this.currentAccount).dialogs_dict.get(this.currentDialogId);
                            TLRPC.Chat chat7 = dialog2 == null ? null : MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog2.id));
                            if (chat7 != null && (chat7.forum || (chat7.monoforum && ChatObject.canManageMonoForum(this.currentAccount, chat7)))) {
                                int[] forumUnreadCount2 = MessagesController.getInstance(this.currentAccount).getTopicsController().getForumUnreadCount(chat7.id);
                                int i16 = forumUnreadCount2[0];
                                int i17 = forumUnreadCount2[1];
                                int i18 = forumUnreadCount2[i4];
                                this.hasUnmutedTopics = forumUnreadCount2[3] != 0;
                                i9 = forumUnreadCount2[c2];
                                archiveUnreadCount = i16;
                                i10 = i17;
                                i11 = i18;
                            } else if (dialog2 instanceof TLRPC.TL_dialogFolder) {
                                archiveUnreadCount = MessagesStorage.getInstance(this.currentAccount).getArchiveUnreadCount();
                                i9 = 0;
                                i10 = 0;
                                i11 = 0;
                            } else if (dialog2 instanceof TLRPC.TL_dialogCommunity) {
                                MessagesController.UnreadCounts communityUnreadCount2 = MessagesController.getInstance(this.currentAccount).getCommunityUnreadCount(-dialog2.id);
                                int i19 = communityUnreadCount2.unreadCount;
                                i10 = communityUnreadCount2.mentionCount;
                                i11 = communityUnreadCount2.reactionMentionCount;
                                int i20 = communityUnreadCount2.pollVotesMentionCount;
                                this.hasUnmutedCommunityDialogs = communityUnreadCount2.hasUnmutedUnreadDialogs;
                                i9 = i20;
                                archiveUnreadCount = i19;
                            } else if (dialog2 != null) {
                                archiveUnreadCount = dialog2.unread_count;
                                int i21 = dialog2.unread_mentions_count;
                                int i22 = dialog2.unread_reactions_count;
                                i10 = i21;
                                i9 = dialog2.unread_poll_votes_count;
                                i11 = i22;
                            } else {
                                i9 = 0;
                                i10 = 0;
                                i11 = 0;
                                archiveUnreadCount = 0;
                            }
                            if (ChatObject.isMonoForum(chat7)) {
                                i10 = 0;
                            }
                            if (dialog2 != null && (this.unreadCount != archiveUnreadCount || this.markUnread != dialog2.unread_mark || this.mentionCount != i10 || this.reactionMentionCount != i11)) {
                                this.unreadCount = archiveUnreadCount;
                                this.mentionCount = i10;
                                this.markUnread = dialog2.unread_mark;
                                this.reactionMentionCount = i11;
                                this.pollVotesMentionCount = i9;
                                z10 = true;
                            }
                            if (!z10) {
                                i7 = this.lastSendState;
                                i8 = messageObject2.messageOwner.send_state;
                                if (i7 != i8) {
                                }
                            }
                            if (z10) {
                            }
                        }
                    } else {
                        z10 = z9;
                        if (!z10 && (i & MessagesController.UPDATE_MASK_SEND_STATE) != 0 && (messageObject2 = this.message) != null) {
                            i7 = this.lastSendState;
                            i8 = messageObject2.messageOwner.send_state;
                            if (i7 != i8) {
                                this.lastSendState = i8;
                                z10 = true;
                            }
                        }
                        if (z10) {
                            if (z4) {
                                invalidate();
                            }
                            return z2;
                        }
                        r7 = 0;
                    }
                } else {
                    i3 = i14;
                    i4 = i2;
                }
                this.user = r7;
                this.chat = r7;
                this.encryptedChat = r7;
                if (this.currentDialogCommunityId != j) {
                    this.message = MessagesController.getInstance(this.currentAccount).findCommunityLastMessage(this.currentDialogCommunityId);
                }
                if (this.currentDialogFolderId == 0) {
                    this.dialogMuted = false;
                    this.drawUnmute = false;
                    MessageObject messageObjectFindFolderTopMessage = findFolderTopMessage();
                    this.message = messageObjectFindFolderTopMessage;
                    dialogId = messageObjectFindFolderTopMessage != null ? messageObjectFindFolderTopMessage.getDialogId() : j;
                } else {
                    this.drawUnmute = false;
                    if (this.forumTopic != null) {
                        boolean zIsDialogMuted = MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, j);
                        boolean zIsDialogMuted2 = MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, this.forumTopic.id);
                        this.topicMuted = zIsDialogMuted2;
                        if (zIsDialogMuted == zIsDialogMuted2) {
                            this.dialogMuted = false;
                            this.drawUnmute = false;
                        } else {
                            this.dialogMuted = zIsDialogMuted2;
                            this.drawUnmute = !zIsDialogMuted2;
                        }
                    } else {
                        this.dialogMuted = this.isDialogCell && MessagesController.getInstance(this.currentAccount).isDialogMuted(this.currentDialogId, (long) getTopicId());
                    }
                    dialogId = this.currentDialogId;
                    j = 0;
                }
                if (dialogId != j) {
                    if (DialogObject.isEncryptedDialog(dialogId)) {
                        TLRPC.EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)));
                        this.encryptedChat = encryptedChat;
                        if (encryptedChat != null) {
                            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.encryptedChat.user_id));
                        }
                    } else {
                        boolean zIsUserDialog = DialogObject.isUserDialog(dialogId);
                        int i23 = this.currentAccount;
                        if (zIsUserDialog) {
                            this.user = MessagesController.getInstance(i23).getUser(Long.valueOf(dialogId));
                        } else {
                            TLRPC.Chat chat8 = MessagesController.getInstance(i23).getChat(Long.valueOf(-dialogId));
                            this.chat = chat8;
                            if (!this.isDialogCell && chat8 != null && chat8.migrated_to != null && (chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.migrated_to.channel_id))) != null) {
                                this.chat = chat2;
                            }
                        }
                    }
                    if (this.useMeForMyMessages && this.user != null && this.message.isOutOwner()) {
                        this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
                    }
                }
                this.drawCommunityAvatar = this.insideCommunityList && ChatObject.isCommunity(this.chat) && this.isDialogCell;
                if (this.currentDialogFolderId == 0) {
                    Theme.dialogs_archiveAvatarDrawable.setCallback(this);
                    this.avatarDrawable.setAvatarType(i4);
                    this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                } else if (this.useFromUserAsAvatar && (messageObject = this.message) != null) {
                    this.avatarDrawable.setInfo(this.currentAccount, messageObject.getFromPeerObject());
                    this.avatarImage.setForUserOrChat(this.message.getFromPeerObject(), this.avatarDrawable);
                } else {
                    TLRPC.User user6 = this.user;
                    if (user6 != null) {
                        this.avatarDrawable.setInfo(this.currentAccount, user6);
                        if (UserObject.isReplyUser(this.user)) {
                            this.avatarDrawable.setAvatarType(12);
                            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                        } else if (UserObject.isAnonymous(this.user)) {
                            this.avatarDrawable.setAvatarType(21);
                            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                        } else if (UserObject.isUserSelf(this.user) && this.isSavedDialog && !this.isMonoForumTopicDialog) {
                            this.avatarDrawable.setAvatarType(22);
                            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                        } else if (UserObject.isUserSelf(this.user) && !this.useMeForMyMessages && !this.isMonoForumTopicDialog) {
                            this.avatarDrawable.setAvatarType(1);
                            this.avatarImage.setImage(null, null, this.avatarDrawable, null, this.user, 0);
                        } else {
                            this.avatarImage.setForUserOrChat(this.user, this.avatarDrawable, null, true, 1, false);
                        }
                    } else {
                        TLRPC.Chat chat9 = this.chat;
                        if (chat9 != null) {
                            if (chat9.monoforum) {
                                ForumUtilities.setMonoForumAvatar(this.currentAccount, chat9, this.avatarDrawable, this.avatarImage);
                                this.avatarDrawable.setScaleSize(1.0f);
                            } else {
                                this.avatarDrawable.setInfo(this.currentAccount, chat9);
                                this.avatarImage.setForUserOrChat(chat9, this.avatarDrawable);
                            }
                        }
                        z5 = z2;
                        if (z && ((i5 = i3) != this.unreadCount || z16 != this.markUnread)) {
                            if (this.isDialogCell) {
                                i6 = i5;
                            } else {
                                i6 = i5;
                                if (System.currentTimeMillis() - this.lastDialogChangedTime > 100) {
                                }
                            }
                            valueAnimator = this.countAnimator;
                            if (valueAnimator != null) {
                                valueAnimator.cancel();
                            }
                            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                            this.countAnimator = valueAnimatorOfFloat;
                            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    this.f$0.lambda$update$0(valueAnimator2);
                                }
                            });
                            this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.5
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    DialogCell.this.countChangeProgress = 1.0f;
                                    DialogCell.this.countOldLayout = null;
                                    DialogCell.this.countAnimationStableLayout = null;
                                    DialogCell.this.countAnimationInLayout = null;
                                    DialogCell.this.invalidate();
                                }
                            });
                            if ((i6 != 0 || this.markUnread) && (this.markUnread || !z16)) {
                                this.countAnimator.setDuration(220L);
                                this.countAnimator.setInterpolator(new OvershootInterpolator());
                            } else {
                                int i24 = this.unreadCount;
                                ValueAnimator valueAnimator2 = this.countAnimator;
                                if (i24 == 0) {
                                    valueAnimator2.setDuration(150L);
                                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                                } else {
                                    valueAnimator2.setDuration(430L);
                                    this.countAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                                }
                            }
                            if (this.drawCount && this.drawCount2 && this.countLayout != null) {
                                str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i6));
                                str2 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.unreadCount));
                                if (str.length() != str2.length()) {
                                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str2);
                                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(str2);
                                    for (int i25 = 0; i25 < str.length(); i25++) {
                                        if (str.charAt(i25) == str2.charAt(i25)) {
                                            int i26 = i25 + 1;
                                            spannableStringBuilder.setSpan(new EmptyStubSpan(), i25, i26, 0);
                                            spannableStringBuilder2.setSpan(new EmptyStubSpan(), i25, i26, 0);
                                        } else {
                                            spannableStringBuilder3.setSpan(new EmptyStubSpan(), i25, i25 + 1, 0);
                                        }
                                    }
                                    int iMax = Math.max(AndroidUtilities.dp(8.0f), (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str)));
                                    com.exteragram.messenger.utils.ui.TextPaint textPaint = Theme.dialogs_countTextPaint2;
                                    Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                                    this.countOldLayout = new StaticLayout(spannableStringBuilder, textPaint, iMax, alignment, 1.0f, 0.0f, false);
                                    this.countAnimationStableLayout = new StaticLayout(spannableStringBuilder3, Theme.dialogs_countTextPaint2, iMax, alignment, 1.0f, 0.0f, false);
                                    this.countAnimationInLayout = new StaticLayout(spannableStringBuilder2, Theme.dialogs_countTextPaint2, iMax, alignment, 1.0f, 0.0f, false);
                                } else {
                                    this.countOldLayout = this.countLayout;
                                }
                            }
                            this.countWidthOld = this.countWidth;
                            this.countLeftOld = this.countLeft;
                            this.countAnimationIncrement = this.unreadCount > i6;
                            this.countAnimator.start();
                        }
                        this.animatorPollVotesMentionVisible.setValue(this.pollVotesMentionCount != 0, z);
                        boolean z20 = this.reactionMentionCount != 0;
                        if (!z || z20 == z15) {
                            f = 0.0f;
                        } else {
                            ValueAnimator valueAnimator3 = this.reactionsMentionsAnimator;
                            if (valueAnimator3 != null) {
                                valueAnimator3.cancel();
                            }
                            f = 0.0f;
                            this.reactionsMentionsChangeProgress = 0.0f;
                            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                            this.reactionsMentionsAnimator = valueAnimatorOfFloat2;
                            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                                    this.f$0.lambda$update$1(valueAnimator4);
                                }
                            });
                            this.reactionsMentionsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.6
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    DialogCell.this.reactionsMentionsChangeProgress = 1.0f;
                                    DialogCell.this.invalidate();
                                }
                            });
                            ValueAnimator valueAnimator4 = this.reactionsMentionsAnimator;
                            if (z20) {
                                valueAnimator4.setDuration(220L);
                                this.reactionsMentionsAnimator.setInterpolator(new OvershootInterpolator());
                            } else {
                                valueAnimator4.setDuration(150L);
                                this.reactionsMentionsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                            }
                            this.reactionsMentionsAnimator.start();
                        }
                        z6 = isFolderCell() && (chat = this.chat) != null && chat.monoforum;
                        this.drawMonoforumAvatar = z6;
                        if (!z6) {
                            avatarCorners = 1;
                        } else if (this.drawCommunityAvatar) {
                            avatarCorners = ExteraConfig.getAvatarCorners(48.0f, false, AvatarCornerType.COMMUNITY);
                        } else {
                            TLRPC.Chat chat10 = this.chat;
                            z7 = false;
                            avatarCorners = ExteraConfig.getAvatarCorners(getAvatarSizeDp(), false, (chat10 != null && chat10.forum && this.currentDialogFolderId == 0 && !this.useFromUserAsAvatar) || (!this.isSavedDialog && (user = this.user) != null && user.self && MessagesController.getInstance(this.currentAccount).savedViewAsChats));
                            setAvatarRadius(avatarCorners);
                            z8 = z5;
                            z13 = z4;
                        }
                        z7 = false;
                        setAvatarRadius(avatarCorners);
                        z8 = z5;
                        z13 = z4;
                    }
                }
                z5 = z2;
                if (z) {
                    if (this.isDialogCell) {
                    }
                    valueAnimator = this.countAnimator;
                    if (valueAnimator != null) {
                    }
                    ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
                    this.countAnimator = valueAnimatorOfFloat3;
                    valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator22) {
                            this.f$0.lambda$update$0(valueAnimator22);
                        }
                    });
                    this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            DialogCell.this.countChangeProgress = 1.0f;
                            DialogCell.this.countOldLayout = null;
                            DialogCell.this.countAnimationStableLayout = null;
                            DialogCell.this.countAnimationInLayout = null;
                            DialogCell.this.invalidate();
                        }
                    });
                    if (i6 != 0) {
                        this.countAnimator.setDuration(220L);
                        this.countAnimator.setInterpolator(new OvershootInterpolator());
                        if (this.drawCount) {
                            str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i6));
                            str2 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.unreadCount));
                            if (str.length() != str2.length()) {
                            }
                        }
                        this.countWidthOld = this.countWidth;
                        this.countLeftOld = this.countLeft;
                        this.countAnimationIncrement = this.unreadCount > i6;
                        this.countAnimator.start();
                    } else {
                        this.countAnimator.setDuration(220L);
                        this.countAnimator.setInterpolator(new OvershootInterpolator());
                        if (this.drawCount) {
                        }
                        this.countWidthOld = this.countWidth;
                        this.countLeftOld = this.countLeft;
                        this.countAnimationIncrement = this.unreadCount > i6;
                        this.countAnimator.start();
                    }
                }
                this.animatorPollVotesMentionVisible.setValue(this.pollVotesMentionCount != 0, z);
                if (this.reactionMentionCount != 0) {
                }
                if (z) {
                    f = 0.0f;
                    if (isFolderCell()) {
                        this.drawMonoforumAvatar = z6;
                        if (!z6) {
                        }
                        z7 = false;
                        setAvatarRadius(avatarCorners);
                        z8 = z5;
                        z13 = z4;
                    }
                }
            } else {
                i2 = 2;
                c2 = 4;
            }
            z2 = false;
            z3 = false;
            z4 = false;
            if (i == 0) {
            }
            this.user = r7;
            this.chat = r7;
            this.encryptedChat = r7;
            if (this.currentDialogCommunityId != j) {
            }
            if (this.currentDialogFolderId == 0) {
            }
            if (dialogId != j) {
            }
            if (this.insideCommunityList) {
                this.drawCommunityAvatar = this.insideCommunityList && ChatObject.isCommunity(this.chat) && this.isDialogCell;
                if (this.currentDialogFolderId == 0) {
                }
                z5 = z2;
                if (z) {
                }
                this.animatorPollVotesMentionVisible.setValue(this.pollVotesMentionCount != 0, z);
                if (this.reactionMentionCount != 0) {
                }
                if (z) {
                }
            }
        }
        if (!this.isTopic && (getMeasuredWidth() != 0 || getMeasuredHeight() != 0)) {
            z3 = true;
        }
        if (!z13) {
            boolean z21 = this.storyParams.currentState == 0 ? true : z7;
            if (StoriesUtilities.getPredictiveUnreadState(MessagesController.getInstance(this.currentAccount).getStoriesController(), getDialogId()) == 0) {
                z7 = true;
            }
            if (!z7 || (!z21 && z7)) {
                z13 = true;
            }
        }
        if (!z) {
            if (this.dialogMuted || this.drawUnmute) {
                f = 1.0f;
            }
            this.dialogMutedProgress = f;
            ValueAnimator valueAnimator5 = this.countAnimator;
            if (valueAnimator5 != null) {
                valueAnimator5.cancel();
            }
        }
        boolean z22 = isForumCell() != zIsForumCell ? true : z8;
        if (z3) {
            if (this.attachedToWindow) {
                buildLayout();
            } else {
                this.updateLayout = true;
            }
        }
        if (z13 || z3) {
            invalidate();
        }
        updatePremiumBlocked(z);
        return z22;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$0(ValueAnimator valueAnimator) {
        this.countChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$update$1(ValueAnimator valueAnimator) {
        this.reactionsMentionsChangeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTopicId() {
        TLRPC.TL_forumTopic tL_forumTopic = this.forumTopic;
        if (tL_forumTopic == null) {
            return 0;
        }
        return tL_forumTopic.id;
    }

    @Override // android.view.View
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        if (f == this.translationX) {
            return;
        }
        this.translationX = f;
        RLottieDrawable rLottieDrawable = this.translationDrawable;
        if (rLottieDrawable != null && f == 0.0f) {
            rLottieDrawable.setProgress(0.0f);
            this.translationAnimationStarted = false;
            this.archiveHidden = SharedConfig.archiveHidden;
            this.currentRevealProgress = 0.0f;
            this.isSliding = false;
        }
        float f2 = this.translationX;
        if (f2 != 0.0f) {
            this.isSliding = true;
        } else {
            this.currentRevealBounceProgress = 0.0f;
            this.currentRevealProgress = 0.0f;
            this.drawRevealBackground = false;
        }
        if (this.isSliding && !this.swipeCanceled) {
            boolean z = this.drawRevealBackground;
            boolean z2 = Math.abs(f2) >= ((float) getMeasuredWidth()) * 0.45f;
            this.drawRevealBackground = z2;
            if (z != z2 && this.archiveHidden == SharedConfig.archiveHidden) {
                try {
                    performHapticFeedback(3, 2);
                } catch (Exception unused) {
                }
            }
        }
        invalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1009:0x1b82  */
    /* JADX WARN: Removed duplicated region for block: B:1036:0x1c03  */
    /* JADX WARN: Removed duplicated region for block: B:1039:0x1c0d  */
    /* JADX WARN: Removed duplicated region for block: B:1042:0x1c16  */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x1c5d  */
    /* JADX WARN: Removed duplicated region for block: B:1058:0x1ccd  */
    /* JADX WARN: Removed duplicated region for block: B:1060:0x1cd1  */
    /* JADX WARN: Removed duplicated region for block: B:1066:0x1ce4  */
    /* JADX WARN: Removed duplicated region for block: B:1075:0x1cfd  */
    /* JADX WARN: Removed duplicated region for block: B:1084:0x1d25  */
    /* JADX WARN: Removed duplicated region for block: B:1094:0x1d51  */
    /* JADX WARN: Removed duplicated region for block: B:1099:0x1d66  */
    /* JADX WARN: Removed duplicated region for block: B:1102:0x1d6d  */
    /* JADX WARN: Removed duplicated region for block: B:1114:0x1d95  */
    /* JADX WARN: Removed duplicated region for block: B:1124:0x1db7  */
    /* JADX WARN: Removed duplicated region for block: B:1125:0x1db9  */
    /* JADX WARN: Removed duplicated region for block: B:1128:0x1dc2  */
    /* JADX WARN: Removed duplicated region for block: B:1129:0x1dc4  */
    /* JADX WARN: Removed duplicated region for block: B:1132:0x1dcb  */
    /* JADX WARN: Removed duplicated region for block: B:1154:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0cce  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0cd7  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0cf9  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0cfc  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0d0e  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0d43  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0d53  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0df7  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x0ff7  */
    /* JADX WARN: Removed duplicated region for block: B:591:0x10a7  */
    /* JADX WARN: Removed duplicated region for block: B:594:0x10b4  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x113e  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x1143  */
    /* JADX WARN: Removed duplicated region for block: B:625:0x114e  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x115c  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x1185  */
    /* JADX WARN: Removed duplicated region for block: B:700:0x12a6  */
    /* JADX WARN: Removed duplicated region for block: B:717:0x12fa  */
    /* JADX WARN: Removed duplicated region for block: B:787:0x1413  */
    /* JADX WARN: Removed duplicated region for block: B:789:0x141b  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x141f  */
    /* JADX WARN: Removed duplicated region for block: B:795:0x147e  */
    /* JADX WARN: Removed duplicated region for block: B:797:0x14d1  */
    /* JADX WARN: Removed duplicated region for block: B:854:0x16d0  */
    /* JADX WARN: Removed duplicated region for block: B:867:0x1745  */
    /* JADX WARN: Removed duplicated region for block: B:904:0x18cf  */
    /* JADX WARN: Removed duplicated region for block: B:916:0x191f  */
    /* JADX WARN: Removed duplicated region for block: B:931:0x195d  */
    /* JADX WARN: Removed duplicated region for block: B:935:0x19a5  */
    /* JADX WARN: Removed duplicated region for block: B:970:0x1a64  */
    /* JADX WARN: Removed duplicated region for block: B:974:0x1aa1  */
    /* JADX WARN: Removed duplicated region for block: B:985:0x1b12  */
    /* JADX WARN: Removed duplicated region for block: B:988:0x1b1b  */
    /* JADX WARN: Removed duplicated region for block: B:991:0x1b24  */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r5v43 */
    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        int color;
        int color2;
        int i;
        String string;
        long j;
        float f;
        float f2;
        int i2;
        boolean z;
        String str;
        int i3;
        int i4;
        float f3;
        int i5;
        int i6;
        float f4;
        int i7;
        RLottieDrawable rLottieDrawable;
        float f5;
        float f6;
        float f7;
        DialogCell dialogCell;
        int i8;
        int i9;
        float f8;
        float f9;
        int i10;
        float f10;
        boolean z2;
        boolean z3;
        boolean z4;
        DialogCell dialogCell2;
        boolean z5;
        float f11;
        Canvas canvas2;
        boolean z6;
        float f12;
        boolean z7;
        boolean z8;
        int i11;
        boolean z9;
        boolean z10;
        TLRPC.TL_forumTopic tL_forumTopic;
        TLRPC.Chat chat;
        TLRPC.User user;
        TLRPC.TL_forumTopic tL_forumTopic2;
        PullForegroundDrawable pullForegroundDrawable;
        int iSaveLayerAlpha;
        float f13;
        float f14;
        int i12;
        float f15;
        float f16;
        int i13;
        float f17;
        DialogCell dialogCell3;
        boolean z11;
        boolean z12;
        boolean z13;
        int i14;
        int i15;
        float fDp;
        float f18;
        boolean z14;
        boolean z15;
        int i16;
        float fDp2;
        float f19;
        boolean z16;
        float fDp3;
        StaticLayout staticLayout;
        float fDp4;
        int i17;
        Drawable drawable;
        float f20;
        int i18;
        DialogsActivity dialogsActivity;
        RightSlidingDialogContainer rightSlidingDialogContainer;
        TLRPC.TL_forumTopic tL_forumTopic3;
        PullForegroundDrawable pullForegroundDrawable2;
        TLRPC.TL_forumTopic tL_forumTopic4;
        Canvas canvas3 = canvas;
        if (!(this.currentDialogId == 0 && this.customDialog == null) && this.visibleOnScreen) {
            boolean z17 = this.drawArchive;
            if (z17 && ((this.currentDialogFolderId != 0 || (this.isTopic && (tL_forumTopic4 = this.forumTopic) != null && tL_forumTopic4.id == 1)) && (pullForegroundDrawable2 = this.archivedChatsDrawable) != null && pullForegroundDrawable2.outProgress == 0.0f && this.translationX == 0.0f)) {
                canvas3.save();
                canvas3.translate(0.0f, (-this.translateY) - this.rightFragmentOffset);
                canvas3.clipRect(0.0f, getMeasuredHeight() * (1.0f - this.archivedChatsDrawable.getPullProgress()), getMeasuredWidth(), getMeasuredHeight());
                this.archivedChatsDrawable.draw(canvas3);
                canvas3.restore();
                this.emojiStatusView.setVisibility(4);
                this.botVerificationView.setVisibility(4);
                return;
            }
            ?? r16 = z17 && (this.currentDialogFolderId != 0 || (this.isTopic && (tL_forumTopic3 = this.forumTopic) != null && tL_forumTopic3.id == 1)) && this.archivedChatsDrawable != null && this.translationX == 0.0f && (dialogsActivity = this.parentFragment) != null && dialogsActivity.hasHiddenArchive() && ((rightSlidingDialogContainer = this.parentFragment.rightSlidingDialogContainer) == null || !rightSlidingDialogContainer.hasFragment());
            PullForegroundDrawable pullForegroundDrawable3 = this.archivedChatsDrawable;
            float pullProgress = pullForegroundDrawable3 != null ? pullForegroundDrawable3.getPullProgress() : 1.0f;
            if (r16 != false) {
                canvas3.save();
                canvas3.clipRect(0.0f, getMeasuredHeight() * (1.0f - pullProgress), getMeasuredWidth(), getMeasuredHeight());
            }
            if (this.clipProgress != 0.0f && Build.VERSION.SDK_INT != 24) {
                canvas3.save();
                canvas3.clipRect(0.0f, this.topClip * this.clipProgress, getMeasuredWidth(), getMeasuredHeight() - ((int) (this.bottomClip * this.clipProgress)));
            }
            if (this.translationX != 0.0f || this.cornerProgress != 0.0f) {
                canvas3.save();
                canvas3.translate(0.0f, -this.translateY);
                if (this.overrideSwipeAction) {
                    color = Theme.getColor(this.overrideSwipeActionBackgroundColorKey, this.resourcesProvider);
                    color2 = Theme.getColor(this.overrideSwipeActionRevealBackgroundColorKey, this.resourcesProvider);
                    String str2 = this.overrideSwipeActionStringKey;
                    i = this.overrideSwipeActionStringId;
                    string = LocaleController.getString(str2, i);
                    this.translationDrawable = this.overrideSwipeActionDrawable;
                } else if (this.currentDialogFolderId != 0) {
                    if (this.archiveHidden) {
                        color = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                        color2 = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                        i = C2807R.string.UnhideFromTop;
                        string = LocaleController.getString(i);
                        this.translationDrawable = Theme.dialogs_unpinArchiveDrawable;
                    } else {
                        color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                        color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                        i = C2807R.string.HideOnTop;
                        string = LocaleController.getString(i);
                        this.translationDrawable = Theme.dialogs_pinArchiveDrawable;
                    }
                } else if (this.promoDialog) {
                    color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                    color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                    i = C2807R.string.PsaHide;
                    string = LocaleController.getString(i);
                    this.translationDrawable = Theme.dialogs_hidePsaDrawable;
                } else if (this.folderId == 0) {
                    color = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                    color2 = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                    if (ChatObject.isCommunity(this.chat)) {
                        i = C2807R.string.SwipeUngroupCommunity;
                        string = LocaleController.getString(i);
                        color = Theme.getColor(Theme.key_dialogSwipeRemove, this.resourcesProvider);
                        this.translationDrawable = Theme.dialogs_swipeCommunityUngroup;
                        color2 = color;
                    } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 3) {
                        if (this.dialogMuted) {
                            i = C2807R.string.SwipeUnmute;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipeUnmuteDrawable;
                        } else {
                            i = C2807R.string.SwipeMute;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipeMuteDrawable;
                        }
                    } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 4) {
                        i = C2807R.string.SwipeDeleteChat;
                        string = LocaleController.getString(i);
                        color = Theme.getColor(Theme.key_dialogSwipeRemove, this.resourcesProvider);
                        this.translationDrawable = Theme.dialogs_swipeDeleteDrawable;
                    } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 1) {
                        if (this.unreadCount > 0 || this.markUnread) {
                            i = C2807R.string.SwipeMarkAsRead;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipeReadDrawable;
                        } else {
                            i = C2807R.string.SwipeMarkAsUnread;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipeUnreadDrawable;
                        }
                    } else if (SharedConfig.getChatSwipeAction(this.currentAccount) == 0) {
                        if (getIsPinned()) {
                            i = C2807R.string.SwipeUnpin;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipeUnpinDrawable;
                        } else {
                            i = C2807R.string.SwipePin;
                            string = LocaleController.getString(i);
                            this.translationDrawable = Theme.dialogs_swipePinDrawable;
                        }
                    } else {
                        i = C2807R.string.Archive;
                        string = LocaleController.getString(i);
                        this.translationDrawable = Theme.dialogs_archiveDrawable;
                    }
                } else {
                    color = Theme.getColor(Theme.key_chats_archivePinBackground, this.resourcesProvider);
                    color2 = Theme.getColor(Theme.key_chats_archiveBackground, this.resourcesProvider);
                    i = C2807R.string.Unarchive;
                    string = LocaleController.getString(i);
                    this.translationDrawable = Theme.dialogs_unarchiveDrawable;
                }
                String str3 = string;
                if (this.swipeCanceled && (rLottieDrawable = this.lastDrawTranslationDrawable) != null) {
                    this.translationDrawable = rLottieDrawable;
                    i = this.lastDrawSwipeMessageStringId;
                } else {
                    this.lastDrawTranslationDrawable = this.translationDrawable;
                    this.lastDrawSwipeMessageStringId = i;
                }
                if (!this.translationAnimationStarted && Math.abs(this.translationX) > AndroidUtilities.dp(43.0f)) {
                    this.translationAnimationStarted = true;
                    this.translationDrawable.setProgress(0.0f);
                    this.translationDrawable.setCallback(this);
                    this.translationDrawable.start();
                }
                float measuredWidth = getMeasuredWidth() + this.translationX;
                j = 0;
                if (this.currentRevealProgress < 1.0f) {
                    Theme.dialogs_pinnedPaint.setColor(color);
                    f = 1.0f;
                    f2 = 0.0f;
                    i2 = 0;
                    z = true;
                    f3 = measuredWidth;
                    i4 = i;
                    i3 = 2;
                    i5 = color2;
                    str = str3;
                    canvas3.drawRect(measuredWidth - AndroidUtilities.dp(8.0f), 0.0f, getMeasuredWidth(), getMeasuredHeight(), Theme.dialogs_pinnedPaint);
                    if (this.currentRevealProgress == 0.0f) {
                        if (Theme.dialogs_archiveDrawableRecolored) {
                            Theme.dialogs_archiveDrawable.setLayerColor("Arrow", Theme.getNonAnimatedColor(Theme.key_chats_archiveBackground));
                            Theme.dialogs_archiveDrawableRecolored = false;
                        }
                        if (Theme.dialogs_hidePsaDrawableRecolored) {
                            Theme.dialogs_hidePsaDrawable.beginApplyLayerColors();
                            RLottieDrawable rLottieDrawable2 = Theme.dialogs_hidePsaDrawable;
                            int i19 = Theme.key_chats_archiveBackground;
                            rLottieDrawable2.setLayerColor("Line 1", Theme.getNonAnimatedColor(i19));
                            Theme.dialogs_hidePsaDrawable.setLayerColor("Line 2", Theme.getNonAnimatedColor(i19));
                            Theme.dialogs_hidePsaDrawable.setLayerColor("Line 3", Theme.getNonAnimatedColor(i19));
                            Theme.dialogs_hidePsaDrawable.commitApplyLayerColors();
                            Theme.dialogs_hidePsaDrawableRecolored = false;
                        }
                    }
                } else {
                    f = 1.0f;
                    f2 = 0.0f;
                    i2 = 0;
                    z = true;
                    str = str3;
                    i3 = 2;
                    i4 = i;
                    f3 = measuredWidth;
                    i5 = color2;
                }
                int measuredWidth2 = (getMeasuredWidth() - AndroidUtilities.dp(43.0f)) - (this.translationDrawable.getIntrinsicWidth() / i3);
                int measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(52.0f)) / i3;
                int intrinsicWidth = (this.translationDrawable.getIntrinsicWidth() / i3) + measuredWidth2;
                int intrinsicHeight = (this.translationDrawable.getIntrinsicHeight() / i3) + measuredHeight;
                if (this.currentRevealProgress > f2) {
                    canvas3.save();
                    i6 = i3;
                    i7 = i4;
                    f4 = f3;
                    canvas3.clipRect(f3 - AndroidUtilities.dp(8.0f), f2, getMeasuredWidth(), getMeasuredHeight());
                    Theme.dialogs_pinnedPaint.setColor(i5);
                    canvas3.drawCircle(intrinsicWidth, intrinsicHeight, ((float) Math.sqrt((intrinsicWidth * intrinsicWidth) + ((intrinsicHeight - getMeasuredHeight()) * (intrinsicHeight - getMeasuredHeight())))) * AndroidUtilities.accelerateInterpolator.getInterpolation(this.currentRevealProgress), Theme.dialogs_pinnedPaint);
                    canvas3.restore();
                    if (!Theme.dialogs_archiveDrawableRecolored) {
                        Theme.dialogs_archiveDrawable.setLayerColor("Arrow", Theme.getNonAnimatedColor(Theme.key_chats_archivePinBackground));
                        Theme.dialogs_archiveDrawableRecolored = z;
                    }
                    if (!Theme.dialogs_hidePsaDrawableRecolored) {
                        Theme.dialogs_hidePsaDrawable.beginApplyLayerColors();
                        RLottieDrawable rLottieDrawable3 = Theme.dialogs_hidePsaDrawable;
                        int i20 = Theme.key_chats_archivePinBackground;
                        rLottieDrawable3.setLayerColor("Line 1", Theme.getNonAnimatedColor(i20));
                        Theme.dialogs_hidePsaDrawable.setLayerColor("Line 2", Theme.getNonAnimatedColor(i20));
                        Theme.dialogs_hidePsaDrawable.setLayerColor("Line 3", Theme.getNonAnimatedColor(i20));
                        Theme.dialogs_hidePsaDrawable.commitApplyLayerColors();
                        Theme.dialogs_hidePsaDrawableRecolored = z;
                    }
                } else {
                    i6 = i3;
                    f4 = f3;
                    i7 = i4;
                }
                canvas3.save();
                canvas3.translate(measuredWidth2, measuredHeight);
                float f21 = this.currentRevealBounceProgress;
                if (f21 != 0.0f && f21 != f) {
                    float interpolation = this.interpolator.getInterpolation(f21) + f;
                    canvas3.scale(interpolation, interpolation, this.translationDrawable.getIntrinsicWidth() / 2, this.translationDrawable.getIntrinsicHeight() / 2);
                }
                int i21 = i2;
                BaseCell.setDrawableBounds((Drawable) this.translationDrawable, i21, i21);
                this.translationDrawable.draw(canvas3);
                canvas3.restore();
                canvas3.clipRect(f4, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                int iCeil = (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str));
                int i22 = i7;
                if (this.swipeMessageTextId != i22 || this.swipeMessageWidth != getMeasuredWidth()) {
                    this.swipeMessageTextId = i22;
                    this.swipeMessageWidth = getMeasuredWidth();
                    com.exteragram.messenger.utils.ui.TextPaint textPaint = Theme.dialogs_archiveTextPaint;
                    int iMin = Math.min(AndroidUtilities.dp(80.0f), iCeil);
                    Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                    String str4 = str;
                    StaticLayout staticLayout2 = new StaticLayout(str4, textPaint, iMin, alignment, 1.0f, 0.0f, false);
                    this.swipeMessageTextLayout = staticLayout2;
                    if (staticLayout2.getLineCount() > z) {
                        this.swipeMessageTextLayout = new StaticLayout(str4, Theme.dialogs_archiveTextPaintSmall, Math.min(AndroidUtilities.dp(82.0f), iCeil), alignment, 1.0f, 0.0f, false);
                    }
                }
                if (this.swipeMessageTextLayout != null) {
                    canvas3.save();
                    canvas3.translate((getMeasuredWidth() - AndroidUtilities.dp(43.0f)) - (this.swipeMessageTextLayout.getWidth() / 2.0f), measuredHeight + AndroidUtilities.dp(36.0f) + (this.swipeMessageTextLayout.getLineCount() > 1 ? -AndroidUtilities.dp(4.0f) : 0.0f));
                    this.swipeMessageTextLayout.draw(canvas3);
                    canvas3.restore();
                }
                canvas3.restore();
            } else {
                RLottieDrawable rLottieDrawable4 = this.translationDrawable;
                if (rLottieDrawable4 != null) {
                    rLottieDrawable4.stop();
                    this.translationDrawable.setProgress(0.0f);
                    this.translationDrawable.setCallback(null);
                    this.translationDrawable = null;
                    this.translationAnimationStarted = false;
                }
                f = 1.0f;
                j = 0;
                i6 = 2;
            }
            if (this.translationX != 0.0f) {
                canvas3.save();
                canvas3.translate(this.translationX, 0.0f);
                f5 = this.translationX + 0.0f;
            } else {
                f5 = 0.0f;
            }
            float fDp5 = AndroidUtilities.dp(8.0f) * this.cornerProgress;
            if (this.isSelected) {
                f6 = 0.0f;
                this.rect.set(0.0f, 0.0f, getMeasuredWidth(), AndroidUtilities.lerp(getMeasuredHeight(), getCollapsedHeight(), this.rightFragmentOpenedProgress));
                this.rect.offset(0.0f, (-this.translateY) + this.collapseOffset);
                canvas3.drawRoundRect(this.rect, fDp5, fDp5, Theme.dialogs_tabletSeletedPaint);
            } else {
                f6 = 0.0f;
            }
            canvas3.save();
            canvas3.translate(f6, (-this.rightFragmentOffset) * this.rightFragmentOpenedProgress);
            if (this.currentDialogFolderId != 0 && (!SharedConfig.archiveHidden || this.archiveBackgroundProgress != f6)) {
                float f22 = f;
                Theme.dialogs_pinnedPaint.setColor(AndroidUtilities.getOffsetColor(0, Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider), this.archiveBackgroundProgress, f22));
                Theme.dialogs_pinnedPaint.setAlpha((int) (r3.getAlpha() * (f22 - this.rightFragmentOpenedProgress)));
            } else if (getIsPinned() || this.drawPinBackground) {
                Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider));
                Theme.dialogs_pinnedPaint.setAlpha((int) (r3.getAlpha() * (1.0f - this.rightFragmentOpenedProgress)));
            }
            canvas3.restore();
            this.updateHelper.updateAnimationValues();
            if (this.collapseOffset != 0.0f) {
                canvas3.save();
                canvas3.translate(0.0f, this.collapseOffset);
                f7 = this.collapseOffset + 0.0f;
            } else {
                f7 = 0.0f;
            }
            float f23 = this.rightFragmentOpenedProgress;
            if (f23 != 1.0f) {
                if (f23 != 0.0f) {
                    float fClamp = Utilities.clamp(f23 / 0.4f, 1.0f, 0.0f);
                    if (SharedConfig.getDevicePerformanceClass() >= i6) {
                        f8 = 6.0f;
                        iSaveLayerAlpha = canvas3.saveLayerAlpha(AndroidUtilities.dp(RightSlidingDialogContainer.getRightPaddingSize() + 1) - (AndroidUtilities.dp(8.0f) * (1.0f - fClamp)), 0.0f, getMeasuredWidth(), getMeasuredHeight(), (int) ((1.0f - this.rightFragmentOpenedProgress) * 255.0f), 31);
                    } else {
                        f8 = 6.0f;
                        int iSave = canvas3.save();
                        canvas3.clipRect(AndroidUtilities.dp(RightSlidingDialogContainer.getRightPaddingSize() + 1) - (AndroidUtilities.dp(8.0f) * (1.0f - fClamp)), 0.0f, getMeasuredWidth(), getMeasuredHeight());
                        iSaveLayerAlpha = iSave;
                    }
                    canvas3.translate((-(getMeasuredWidth() - AndroidUtilities.dp(74.0f))) * 0.7f * this.rightFragmentOpenedProgress, 0.0f);
                    f5 += (-(getMeasuredWidth() - AndroidUtilities.dp(74.0f))) * 0.7f * this.rightFragmentOpenedProgress;
                } else {
                    f8 = 6.0f;
                    iSaveLayerAlpha = -1;
                }
                float f24 = f5;
                if (this.translationX != 0.0f || this.cornerProgress != 0.0f) {
                    canvas3.save();
                    Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                    this.rect.set(getMeasuredWidth() - AndroidUtilities.dp(64.0f), 0.0f, getMeasuredWidth(), getMeasuredHeight());
                    this.rect.offset(0.0f, -this.translateY);
                    canvas3.drawRoundRect(this.rect, fDp5, fDp5, Theme.dialogs_pinnedPaint);
                    if (this.isSelected) {
                        canvas3.drawRoundRect(this.rect, fDp5, fDp5, Theme.dialogs_tabletSeletedPaint);
                    }
                    if (this.currentDialogFolderId != 0 && (!SharedConfig.archiveHidden || this.archiveBackgroundProgress != 0.0f)) {
                        Theme.dialogs_pinnedPaint.setColor(AndroidUtilities.getOffsetColor(0, Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider), this.archiveBackgroundProgress, 1.0f));
                        Theme.dialogs_pinnedPaint.setAlpha((int) (r0.getAlpha() * (1.0f - this.rightFragmentOpenedProgress)));
                    } else if (getIsPinned() || this.drawPinBackground) {
                        Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider));
                        Theme.dialogs_pinnedPaint.setAlpha((int) (r0.getAlpha() * (1.0f - this.rightFragmentOpenedProgress)));
                    }
                    canvas3.restore();
                }
                float f25 = this.translationX;
                float f26 = this.cornerProgress;
                if (f25 != 0.0f) {
                    f14 = 1.0f;
                    if (f26 < 1.0f) {
                        float f27 = f26 + 0.10666667f;
                        this.cornerProgress = f27;
                        if (f27 > 1.0f) {
                            this.cornerProgress = 1.0f;
                        }
                        f13 = 0.0f;
                        z4 = true;
                    } else {
                        f13 = 0.0f;
                        z4 = false;
                    }
                } else {
                    f13 = 0.0f;
                    f14 = 1.0f;
                    if (f26 > 0.0f) {
                        float f28 = f26 - 0.10666667f;
                        this.cornerProgress = f28;
                        if (f28 < 0.0f) {
                            this.cornerProgress = 0.0f;
                        }
                        z4 = true;
                    }
                    z4 = false;
                }
                if (this.drawNameLock) {
                    BaseCell.setDrawableBounds(Theme.dialogs_lockDrawable, this.nameLockLeft, this.nameLockTop);
                    Theme.dialogs_lockDrawable.draw(canvas3);
                }
                int iDp = AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 10.0f : 14.0f);
                if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                    iDp -= AndroidUtilities.dp(isForumCell() ? 8.0f : 9.0f);
                }
                if (this.nameLayout != null) {
                    if (!this.nameLayoutEllipsizeByGradient || this.nameLayoutFits) {
                        i12 = iSaveLayerAlpha;
                        f20 = f13;
                        f9 = 5.0f;
                    } else {
                        if (this.nameLayoutEllipsizeLeft && this.fadePaint == null) {
                            Paint paint = new Paint();
                            this.fadePaint = paint;
                            paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(24.0f), 0.0f, new int[]{-1, 0}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                            this.fadePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                        } else if (this.fadePaintBack == null) {
                            Paint paint2 = new Paint();
                            this.fadePaintBack = paint2;
                            paint2.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(24.0f), 0.0f, new int[]{0, -1}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                            this.fadePaintBack.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                        }
                        f20 = f13;
                        i12 = iSaveLayerAlpha;
                        f9 = 5.0f;
                        canvas3.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
                        int i23 = this.nameLeft;
                        canvas3.clipRect(i23, 0, this.nameWidth + i23, getMeasuredHeight());
                    }
                    if (Theme.dialogs_namePaint == null) {
                        Theme.createDialogsResources(getContext());
                    }
                    if (this.currentDialogFolderId != 0) {
                        com.exteragram.messenger.utils.ui.TextPaint textPaint2 = Theme.dialogs_namePaint[this.paintIndex];
                        int color3 = Theme.getColor(Theme.key_chats_nameArchived, this.resourcesProvider);
                        ((TextPaint) textPaint2).linkColor = color3;
                        textPaint2.setColor(color3);
                        i18 = 2;
                    } else {
                        if (this.encryptedChat == null) {
                            CustomDialog customDialog = this.customDialog;
                            if (customDialog != null) {
                                i18 = 2;
                                if (customDialog.type == 2) {
                                }
                            } else {
                                i18 = 2;
                            }
                            com.exteragram.messenger.utils.ui.TextPaint textPaint3 = Theme.dialogs_namePaint[this.paintIndex];
                            int color4 = Theme.getColor(Theme.key_chats_name, this.resourcesProvider);
                            ((TextPaint) textPaint3).linkColor = color4;
                            textPaint3.setColor(color4);
                        } else {
                            i18 = 2;
                        }
                        com.exteragram.messenger.utils.ui.TextPaint textPaint4 = Theme.dialogs_namePaint[this.paintIndex];
                        int color5 = Theme.getColor(Theme.key_chats_secretName, this.resourcesProvider);
                        ((TextPaint) textPaint4).linkColor = color5;
                        textPaint4.setColor(color5);
                    }
                    canvas3.save();
                    canvas3.translate(this.nameLeft + this.nameLayoutTranslateX, iDp);
                    SpoilerEffect.layoutDrawMaybe(this.nameLayout, canvas3);
                    StaticLayout staticLayout3 = this.nameLayout;
                    i13 = -1;
                    f15 = f20;
                    i9 = i18;
                    f10 = 19.0f;
                    f16 = f14;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout3, this.animatedEmojiStackName, -0.075f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(0, staticLayout3.getPaint().getColor()));
                    canvas3.restore();
                    if (this.nameLayoutEllipsizeByGradient && !this.nameLayoutFits) {
                        canvas3.save();
                        boolean z18 = this.nameLayoutEllipsizeLeft;
                        int i24 = this.nameLeft;
                        if (z18) {
                            canvas3.translate(i24, f15);
                            canvas3.drawRect(0.0f, 0.0f, AndroidUtilities.dp(24.0f), getMeasuredHeight(), this.fadePaint);
                        } else {
                            canvas3.translate((i24 + this.nameWidth) - AndroidUtilities.dp(24.0f), f15);
                            canvas3.drawRect(0.0f, 0.0f, AndroidUtilities.dp(24.0f), getMeasuredHeight(), this.fadePaintBack);
                        }
                        canvas3.restore();
                        canvas3.restore();
                    }
                } else {
                    i12 = iSaveLayerAlpha;
                    f15 = f13;
                    f16 = f14;
                    i13 = -1;
                    i9 = 2;
                    f9 = 5.0f;
                    f10 = 19.0f;
                }
                if (this.timeLayout != null && this.currentDialogFolderId == 0) {
                    canvas3.save();
                    canvas3.translate(this.timeLeft, this.timeTop);
                    TextPaint timeTextPaint = getTimeTextPaint();
                    if (getIsPinned()) {
                        canvas3.translate(AndroidUtilities.dp(20.0f), f15);
                        float height = (this.timeLayout.getHeight() / 2.0f) - AndroidUtilities.dp(8.5f);
                        float f29 = -AndroidUtilities.dp(20.0f);
                        float width = this.timeLayout.getWidth() + AndroidUtilities.dp(f8);
                        if (this.drawCount && !isCounterMuted()) {
                            drawable = Theme.dialogs_pinnedDrawable2Accent;
                        } else {
                            drawable = Theme.dialogs_pinnedDrawable2;
                        }
                        Drawable drawable2 = drawable;
                        int iDp2 = (int) (((AndroidUtilities.dp(17.0f) - drawable2.getIntrinsicHeight()) / 2.0f) + height);
                        int iDp3 = ((int) f29) + AndroidUtilities.dp(4.0f);
                        drawable2.setBounds(iDp3, iDp2, drawable2.getIntrinsicWidth() + iDp3, drawable2.getIntrinsicHeight() + iDp2);
                        int alpha = timeTextPaint.getAlpha();
                        timeTextPaint.setAlpha(27);
                        canvas3.drawRoundRect(f29, height, width, AndroidUtilities.dp(17.0f) + height, AndroidUtilities.dp(8.5f), AndroidUtilities.dp(8.5f), timeTextPaint);
                        timeTextPaint.setAlpha(alpha);
                        drawable2.draw(canvas3);
                    }
                    int color6 = this.timeLayout.getPaint().getColor();
                    boolean z19 = color6 != timeTextPaint.getColor();
                    if (z19) {
                        this.timeLayout.getPaint().setColor(timeTextPaint.getColor());
                    }
                    SpoilerEffect.layoutDrawMaybe(this.timeLayout, canvas3);
                    if (z19) {
                        this.timeLayout.getPaint().setColor(color6);
                    }
                    canvas3.restore();
                }
                if (drawLock2()) {
                    Theme.dialogs_lock2Drawable.setBounds(this.lock2Left, this.timeTop + ((this.timeLayout.getHeight() - Theme.dialogs_lock2Drawable.getIntrinsicHeight()) / i9), this.lock2Left + Theme.dialogs_lock2Drawable.getIntrinsicWidth(), this.timeTop + ((this.timeLayout.getHeight() - Theme.dialogs_lock2Drawable.getIntrinsicHeight()) / i9) + Theme.dialogs_lock2Drawable.getIntrinsicHeight());
                    Theme.dialogs_lock2Drawable.draw(canvas3);
                }
                if (this.messageNameLayout != null && !isForumCell()) {
                    if (this.currentDialogFolderId != 0) {
                        com.exteragram.messenger.utils.ui.TextPaint textPaint5 = Theme.dialogs_messageNamePaint;
                        int color7 = Theme.getColor(Theme.key_chats_nameMessageArchived_threeLines, this.resourcesProvider);
                        ((TextPaint) textPaint5).linkColor = color7;
                        textPaint5.setColor(color7);
                    } else if (this.draftMessage != null) {
                        com.exteragram.messenger.utils.ui.TextPaint textPaint6 = Theme.dialogs_messageNamePaint;
                        int color8 = Theme.getColor(Theme.key_chats_draft, this.resourcesProvider);
                        ((TextPaint) textPaint6).linkColor = color8;
                        textPaint6.setColor(color8);
                    } else {
                        com.exteragram.messenger.utils.ui.TextPaint textPaint7 = Theme.dialogs_messageNamePaint;
                        int color9 = Theme.getColor(Theme.key_chats_nameMessage_threeLines, this.resourcesProvider);
                        ((TextPaint) textPaint7).linkColor = color9;
                        textPaint7.setColor(color9);
                    }
                    canvas3.save();
                    canvas3.translate(this.messageNameLeft, this.messageNameTop);
                    try {
                        SpoilerEffect.layoutDrawMaybe(this.messageNameLayout, canvas3);
                        StaticLayout staticLayout4 = this.messageNameLayout;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout4, this.animatedEmojiStack2, -0.075f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(1, staticLayout4.getPaint().getColor()));
                    } catch (Exception e) {
                        FileLog.m1040e(e);
                    }
                    canvas3.restore();
                }
                if (this.messageLayout != null) {
                    if (this.currentDialogFolderId != 0) {
                        if (this.chat != null) {
                            com.exteragram.messenger.utils.ui.TextPaint textPaint8 = Theme.dialogs_messagePaint[this.paintIndex];
                            int color10 = Theme.getColor(Theme.key_chats_nameMessageArchived, this.resourcesProvider);
                            ((TextPaint) textPaint8).linkColor = color10;
                            textPaint8.setColor(color10);
                        } else {
                            com.exteragram.messenger.utils.ui.TextPaint textPaint9 = Theme.dialogs_messagePaint[this.paintIndex];
                            int color11 = Theme.getColor(Theme.key_chats_messageArchived, this.resourcesProvider);
                            ((TextPaint) textPaint9).linkColor = color11;
                            textPaint9.setColor(color11);
                        }
                    } else {
                        com.exteragram.messenger.utils.ui.TextPaint textPaint10 = Theme.dialogs_messagePaint[this.paintIndex];
                        int color12 = Theme.getColor(Theme.key_chats_message, this.resourcesProvider);
                        ((TextPaint) textPaint10).linkColor = color12;
                        textPaint10.setColor(color12);
                    }
                    float fDp6 = AndroidUtilities.dp(14.0f);
                    DialogUpdateHelper dialogUpdateHelper = this.updateHelper;
                    boolean z20 = dialogUpdateHelper.typingOutToTop;
                    int i25 = this.messageTop;
                    if (z20) {
                        fDp2 = i25 - (dialogUpdateHelper.typingProgres * fDp6);
                    } else {
                        fDp2 = i25 + (dialogUpdateHelper.typingProgres * fDp6);
                    }
                    if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                        fDp2 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                    }
                    if (this.updateHelper.typingProgres != f16) {
                        canvas3.save();
                        canvas3.translate(this.messageLeft, fDp2);
                        int alpha2 = this.messageLayout.getPaint().getAlpha();
                        this.messageLayout.getPaint().setAlpha((int) (alpha2 * (f16 - this.updateHelper.typingProgres)));
                        if (!this.spoilers.isEmpty()) {
                            try {
                                canvas3.save();
                                SpoilerEffect.clipOutCanvas(canvas3, this.spoilers);
                                SpoilerEffect.layoutDrawMaybe(this.messageLayout, canvas3);
                                try {
                                    StaticLayout staticLayout5 = this.messageLayout;
                                    try {
                                        try {
                                            f19 = fDp6;
                                            f17 = f15;
                                            i17 = alpha2;
                                        } catch (Exception e2) {
                                            e = e2;
                                            f19 = fDp6;
                                            f17 = f15;
                                            i17 = alpha2;
                                        }
                                        try {
                                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout5, this.animatedEmojiStack, -0.075f, this.spoilers, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(i9, staticLayout5.getPaint().getColor()));
                                            canvas3.restore();
                                            for (int i26 = 0; i26 < this.spoilers.size(); i26++) {
                                                SpoilerEffect spoilerEffect = this.spoilers.get(i26);
                                                spoilerEffect.setColor(this.messageLayout.getPaint().getColor());
                                                spoilerEffect.draw(canvas3);
                                            }
                                        } catch (Exception e3) {
                                            e = e3;
                                            FileLog.m1040e(e);
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                        f19 = fDp6;
                                        f17 = f15;
                                        i17 = alpha2;
                                    }
                                } catch (Exception e5) {
                                    e = e5;
                                    f19 = fDp6;
                                    f17 = f15;
                                    i17 = alpha2;
                                    FileLog.m1040e(e);
                                    this.messageLayout.getPaint().setAlpha(i17);
                                    canvas3.restore();
                                    canvas3.save();
                                    DialogUpdateHelper dialogUpdateHelper2 = this.updateHelper;
                                    z16 = dialogUpdateHelper2.typingOutToTop;
                                    int i27 = this.messageTop;
                                    if (!z16) {
                                    }
                                    if (this.useForceThreeLines) {
                                        fDp3 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                        canvas3.translate(this.typingLeft, fDp3);
                                        staticLayout = this.typingLayout;
                                        if (staticLayout != null) {
                                            int alpha3 = staticLayout.getPaint().getAlpha();
                                            this.typingLayout.getPaint().setAlpha((int) (alpha3 * this.updateHelper.typingProgres));
                                            this.typingLayout.draw(canvas3);
                                            this.typingLayout.getPaint().setAlpha(alpha3);
                                        }
                                        canvas3.restore();
                                        if (this.typingLayout != null) {
                                        }
                                        if (this.buttonLayout != null) {
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                        }
                                        float f30 = 12.5f;
                                        if (dialogCell3.drawBotVerified) {
                                        }
                                    } else {
                                        fDp3 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                        canvas3.translate(this.typingLeft, fDp3);
                                        staticLayout = this.typingLayout;
                                        if (staticLayout != null) {
                                        }
                                        canvas3.restore();
                                        if (this.typingLayout != null) {
                                        }
                                        if (this.buttonLayout != null) {
                                        }
                                        if (this.currentDialogFolderId == 0) {
                                        }
                                        float f302 = 12.5f;
                                        if (dialogCell3.drawBotVerified) {
                                        }
                                    }
                                    if (dialogCell.animatingArchiveAvatar) {
                                    }
                                    if (dialogCell.drawAvatar) {
                                        if (!dialogCell.drawMonoforumAvatar) {
                                        }
                                        if (!dialogCell.insideCommunityList) {
                                            float fCenterX = dialogCell.storyParams.originalAvatarRect.centerX() + AndroidUtilities.dp(20.33f);
                                            float fCenterY = dialogCell.storyParams.originalAvatarRect.centerY() + AndroidUtilities.dp(f10);
                                            if (dialogCell.communityArrowDrawable == null) {
                                            }
                                            DrawableUtils.setBounds(dialogCell.communityArrowDrawable, fCenterX, fCenterY, i8);
                                            canvas3.drawCircle(dialogCell.communityArrowDrawable.getBounds().exactCenterX(), dialogCell.communityArrowDrawable.getBounds().exactCenterY(), AndroidUtilities.dp(8.0f), Theme.fillingPaint(Theme.getColor(Theme.key_windowBackgroundWhite, dialogCell.resourcesProvider)));
                                            dialogCell.communityArrowDrawable.draw(canvas3);
                                        }
                                    }
                                    if (dialogCell.animatingArchiveAvatar) {
                                    }
                                    if (dialogCell.avatarImage.getVisible()) {
                                        z4 = true;
                                    }
                                    if (dialogCell.rightFragmentOpenedProgress > 0.0f) {
                                        dialogCell2 = dialogCell;
                                    }
                                    if (dialogCell2.collapseOffset != 0.0f) {
                                    }
                                    if (dialogCell2.translationX != 0.0f) {
                                    }
                                    if (dialogCell2.drawArchive) {
                                        canvas3.save();
                                        canvas3.translate(0.0f, (-dialogCell2.translateY) - (dialogCell2.rightFragmentOffset * dialogCell2.rightFragmentOpenedProgress));
                                        canvas3.clipRect(0.0f, dialogCell2.getMeasuredHeight() * (1.0f - dialogCell2.archivedChatsDrawable.getPullProgress()), dialogCell2.getMeasuredWidth(), dialogCell2.getMeasuredHeight());
                                        dialogCell2.archivedChatsDrawable.draw(canvas3);
                                        canvas3.restore();
                                    }
                                    if (dialogCell2.useSeparator) {
                                    }
                                    if (dialogCell2.clipProgress == f11) {
                                    }
                                    if (r16 != false) {
                                    }
                                    z6 = dialogCell2.drawReorder;
                                    if (z6) {
                                        float f31 = dialogCell2.reorderIconProgress;
                                        if (z6) {
                                        }
                                    }
                                    z8 = dialogCell2.archiveHidden;
                                    float f32 = dialogCell2.archiveBackgroundProgress;
                                    if (z8) {
                                    }
                                    if (dialogCell2.animatingArchiveAvatar) {
                                    }
                                    z9 = dialogCell2.drawRevealBackground;
                                    float f33 = dialogCell2.currentRevealBounceProgress;
                                    if (!z9) {
                                    }
                                    dialogCell2.emojiStatusView.setVisibility(!z3 ? i11 : i10);
                                    dialogCell2.botVerificationView.setVisibility(!z2 ? i11 : i10);
                                    if (z10) {
                                    }
                                }
                            } catch (Exception e6) {
                                e = e6;
                                f19 = fDp6;
                            }
                        } else {
                            f19 = fDp6;
                            f17 = f15;
                            i17 = alpha2;
                            SpoilerEffect.layoutDrawMaybe(this.messageLayout, canvas3);
                            StaticLayout staticLayout6 = this.messageLayout;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout6, this.animatedEmojiStack, -0.075f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(i9, staticLayout6.getPaint().getColor()));
                        }
                        this.messageLayout.getPaint().setAlpha(i17);
                        canvas3.restore();
                    } else {
                        f19 = fDp6;
                        f17 = f15;
                    }
                    canvas3.save();
                    DialogUpdateHelper dialogUpdateHelper22 = this.updateHelper;
                    z16 = dialogUpdateHelper22.typingOutToTop;
                    int i272 = this.messageTop;
                    if (!z16) {
                        fDp3 = i272 + (f19 * (f16 - dialogUpdateHelper22.typingProgres));
                    } else {
                        fDp3 = i272 - (f19 * (f16 - dialogUpdateHelper22.typingProgres));
                    }
                    if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                        fDp3 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                    }
                    canvas3.translate(this.typingLeft, fDp3);
                    staticLayout = this.typingLayout;
                    if (staticLayout != null && this.updateHelper.typingProgres > f17) {
                        int alpha32 = staticLayout.getPaint().getAlpha();
                        this.typingLayout.getPaint().setAlpha((int) (alpha32 * this.updateHelper.typingProgres));
                        this.typingLayout.draw(canvas3);
                        this.typingLayout.getPaint().setAlpha(alpha32);
                    }
                    canvas3.restore();
                    if (this.typingLayout != null) {
                        int i28 = this.printingStringType;
                        if (i28 < 0) {
                            DialogUpdateHelper dialogUpdateHelper3 = this.updateHelper;
                            if (dialogUpdateHelper3.typingProgres > f17 && dialogUpdateHelper3.lastKnownTypingType >= 0) {
                                if (i28 < 0) {
                                    i28 = this.updateHelper.lastKnownTypingType;
                                }
                                StatusDrawable chatStatusDrawable = Theme.getChatStatusDrawable(i28);
                                if (chatStatusDrawable != null) {
                                    canvas3.save();
                                    chatStatusDrawable.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chats_actionMessage), (int) (Color.alpha(r4) * this.updateHelper.typingProgres)));
                                    DialogUpdateHelper dialogUpdateHelper4 = this.updateHelper;
                                    boolean z21 = dialogUpdateHelper4.typingOutToTop;
                                    int i29 = this.messageTop;
                                    if (z21) {
                                        fDp4 = i29 + (f19 * (f16 - dialogUpdateHelper4.typingProgres));
                                    } else {
                                        fDp4 = i29 - (f19 * (f16 - dialogUpdateHelper4.typingProgres));
                                    }
                                    if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                        fDp4 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                    }
                                    if (i28 == 1 || i28 == 4) {
                                        canvas3.translate(this.statusDrawableLeft, fDp4 + (i28 == 1 ? AndroidUtilities.dp(f16) : 0));
                                    } else {
                                        canvas3.translate(this.statusDrawableLeft, fDp4 + ((AndroidUtilities.dp(18.0f) - chatStatusDrawable.getIntrinsicHeight()) / 2.0f));
                                    }
                                    chatStatusDrawable.draw(canvas3);
                                    invalidate();
                                    canvas3.restore();
                                }
                            }
                        }
                    }
                } else {
                    f17 = f15;
                }
                if (this.buttonLayout != null) {
                    canvas3.save();
                    if (this.buttonBackgroundPaint == null) {
                        this.buttonBackgroundPaint = new Paint(1);
                    }
                    if (this.canvasButton == null) {
                        CanvasButton canvasButton = new CanvasButton(this);
                        this.canvasButton = canvasButton;
                        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onDraw$2();
                            }
                        });
                        this.canvasButton.setLongPress(new Runnable() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onDraw$3();
                            }
                        });
                    }
                    if (this.lastTopicMessageUnread && this.topMessageTopicEndIndex != this.topMessageTopicStartIndex && ((i16 = this.dialogsType) == 0 || i16 == 7 || i16 == 8)) {
                        this.canvasButton.setColor(ColorUtils.setAlphaComponent(this.currentMessagePaint.getColor(), Theme.isCurrentThemeDark() ? 36 : 26));
                        if (!this.buttonCreated) {
                            this.canvasButton.rewind();
                            int i30 = this.topMessageTopicEndIndex;
                            if (i30 != this.topMessageTopicStartIndex && i30 > 0) {
                                float fDp7 = this.messageTop;
                                if (((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
                                    fDp7 -= AndroidUtilities.dp(isForumCell() ? 10.0f : 11.0f);
                                }
                                RectF rectF = AndroidUtilities.rectTmp;
                                float fDp8 = this.messageLeft + AndroidUtilities.dp(2.0f) + this.messageLayout.getPrimaryHorizontal(0);
                                float f34 = this.messageLeft;
                                StaticLayout staticLayout7 = this.messageLayout;
                                rectF.set(fDp8, fDp7, (f34 + staticLayout7.getPrimaryHorizontal(Math.min(staticLayout7.getText().length(), this.topMessageTopicEndIndex))) - AndroidUtilities.dp(3.0f), this.buttonTop - AndroidUtilities.dp(4.0f));
                                rectF.inset(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(4.0f));
                                if (rectF.right > rectF.left) {
                                    this.canvasButton.addRect(rectF);
                                }
                            }
                            float lineLeft = this.buttonLayout.getLineLeft(0);
                            RectF rectF2 = AndroidUtilities.rectTmp;
                            rectF2.set(this.buttonLeft + lineLeft + AndroidUtilities.dp(2.0f), this.buttonTop + AndroidUtilities.dp(2.0f), this.buttonLeft + lineLeft + this.buttonLayout.getLineWidth(0) + AndroidUtilities.dp(12.0f), this.buttonTop + this.buttonLayout.getHeight());
                            rectF2.inset(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(3.0f));
                            this.canvasButton.addRect(rectF2);
                        }
                        this.canvasButton.draw(canvas3);
                        Theme.dialogs_forum_arrowDrawable.setAlpha(125);
                        Drawable drawable3 = Theme.dialogs_forum_arrowDrawable;
                        RectF rectF3 = AndroidUtilities.rectTmp;
                        BaseCell.setDrawableBounds(drawable3, rectF3.right - AndroidUtilities.dp(18.0f), rectF3.top + ((rectF3.height() - Theme.dialogs_forum_arrowDrawable.getIntrinsicHeight()) / 2.0f));
                        Theme.dialogs_forum_arrowDrawable.draw(canvas3);
                    }
                    canvas3.translate(this.buttonLeft, this.buttonTop);
                    if (!this.spoilers2.isEmpty()) {
                        try {
                            canvas3.save();
                            SpoilerEffect.clipOutCanvas(canvas3, this.spoilers2);
                            SpoilerEffect.layoutDrawMaybe(this.buttonLayout, canvas3);
                            StaticLayout staticLayout8 = this.buttonLayout;
                            AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout8, this.animatedEmojiStack3, -0.075f, this.spoilers2, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(3, staticLayout8.getPaint().getColor()));
                            canvas3.restore();
                            for (int i31 = 0; i31 < this.spoilers2.size(); i31++) {
                                SpoilerEffect spoilerEffect2 = this.spoilers2.get(i31);
                                spoilerEffect2.setColor(this.buttonLayout.getPaint().getColor());
                                spoilerEffect2.draw(canvas3);
                            }
                        } catch (Exception e7) {
                            FileLog.m1040e(e7);
                        }
                    } else {
                        SpoilerEffect.layoutDrawMaybe(this.buttonLayout, canvas3);
                        StaticLayout staticLayout9 = this.buttonLayout;
                        AnimatedEmojiSpan.drawAnimatedEmojis(canvas3, staticLayout9, this.animatedEmojiStack3, -0.075f, null, 0.0f, 0.0f, 0.0f, 1.0f, getAdaptiveEmojiColorFilter(3, staticLayout9.getPaint().getColor()));
                    }
                    canvas.restore();
                }
                if (this.currentDialogFolderId == 0) {
                    int i32 = (this.drawClock ? 1 : 0) + (this.drawCheck1 ? i9 : 0) + (this.drawCheck2 ? 4 : 0);
                    int i33 = this.lastStatusDrawableParams;
                    if (i33 >= 0 && i33 != i32 && !this.statusDrawableAnimationInProgress) {
                        createStatusDrawableAnimator(i33, i32);
                    }
                    boolean z22 = this.statusDrawableAnimationInProgress;
                    if (z22) {
                        i32 = this.animateToStatusDrawableParams;
                    }
                    boolean z23 = (i32 & 1) != 0;
                    boolean z24 = (i32 & 2) != 0;
                    boolean z25 = (i32 & 4) != 0;
                    if (z22) {
                        int i34 = this.animateFromStatusDrawableParams;
                        boolean z26 = (i34 & 1) != 0;
                        boolean z27 = (i34 & 2) != 0;
                        i10 = 4;
                        if ((i34 & 4) != 0) {
                            z14 = z25;
                            z15 = true;
                        } else {
                            z14 = z25;
                            z15 = false;
                        }
                        if (!z23 && !z26 && z15 && !z27 && z24 && z14) {
                            drawCheckStatus(canvas, z23, z24, z14, true, this.statusDrawableProgress);
                        } else {
                            drawCheckStatus(canvas, z26, z27, z15, false, f16 - this.statusDrawableProgress);
                            drawCheckStatus(canvas, z23, z24, z14, false, this.statusDrawableProgress);
                        }
                        dialogCell3 = this;
                        canvas3 = canvas;
                    } else {
                        i10 = 4;
                        canvas3 = canvas;
                        drawCheckStatus(canvas3, z23, z24, z25, false, 1.0f);
                        dialogCell3 = this;
                    }
                    dialogCell3.lastStatusDrawableParams = (dialogCell3.drawClock ? 1 : 0) + (dialogCell3.drawCheck1 ? i9 : 0) + (dialogCell3.drawCheck2 ? i10 : 0);
                } else {
                    canvas3 = canvas;
                    dialogCell3 = this;
                    i10 = 4;
                }
                float f3022 = 12.5f;
                if (dialogCell3.drawBotVerified) {
                    int iDp4 = AndroidUtilities.dp((dialogCell3.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 12.5f : 15.5f);
                    if (((!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || dialogCell3.isForumCell()) && dialogCell3.hasTags()) {
                        iDp4 -= AndroidUtilities.dp(9.0f);
                    }
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = dialogCell3.botVerification;
                    if (swapAnimatedEmojiDrawable != null) {
                        swapAnimatedEmojiDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, dialogCell3.resourcesProvider)));
                        dialogCell3.botVerificationView.setTranslationX((f24 + dialogCell3.nameLeft) - AndroidUtilities.dp(f10));
                        dialogCell3.botVerificationView.setTranslationY(iDp4 + f7 + AndroidUtilities.dp(-1.0f));
                        if (dialogCell3.rightFragmentOpenedProgress > f17) {
                            dialogCell3.botVerification.setBounds(dialogCell3.nameLeft - AndroidUtilities.dp(f10), AndroidUtilities.dp(-1.0f) + iDp4, dialogCell3.nameLeft - AndroidUtilities.dp(2.0f), iDp4 + AndroidUtilities.dp(16.0f));
                            dialogCell3.botVerification.draw(canvas3);
                            z11 = false;
                            if (dialogCell3.drawUnmute) {
                                if (dialogCell3.dialogsType != i9) {
                                    i8 = 17;
                                    if (!dialogCell3.drawVerified) {
                                    }
                                    z13 = false;
                                    if (dialogCell3.drawReorder) {
                                    }
                                }
                            }
                        } else {
                            z11 = true;
                            if (dialogCell3.drawUnmute) {
                            }
                        }
                    }
                } else {
                    z11 = false;
                    boolean z28 = dialogCell3.drawUnmute || dialogCell3.dialogMuted || dialogCell3.isHiddenInCommunity;
                    if (dialogCell3.dialogsType != i9 || ((!z28 && dialogCell3.dialogMutedProgress <= f17) || dialogCell3.drawVerified || dialogCell3.drawBadge || dialogCell3.drawScam != 0)) {
                        i8 = 17;
                    } else if (z28) {
                        float f35 = dialogCell3.dialogMutedProgress;
                        if (f35 != f16) {
                            float f36 = f35 + 0.10666667f;
                            dialogCell3.dialogMutedProgress = f36;
                            if (f36 > f16) {
                                dialogCell3.dialogMutedProgress = f16;
                            } else {
                                dialogCell3.invalidate();
                            }
                        } else if (!z28) {
                            float f37 = dialogCell3.dialogMutedProgress;
                            if (f37 != f17) {
                                float f38 = f37 - 0.10666667f;
                                dialogCell3.dialogMutedProgress = f38;
                                if (f38 < f17) {
                                    dialogCell3.dialogMutedProgress = f17;
                                } else {
                                    dialogCell3.invalidate();
                                }
                            }
                        }
                        float fDp9 = (dialogCell3.drawPremium ? dialogCell3.nameMutedIconLeft : dialogCell3.nameMuteLeft) - AndroidUtilities.dp((dialogCell3.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 0.0f : 1.0f);
                        float fDp10 = AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 13.5f : 17.5f);
                        if (((!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || dialogCell3.isForumCell()) && dialogCell3.hasTags()) {
                            fDp10 -= AndroidUtilities.dp(dialogCell3.isForumCell() ? 8.0f : 9.0f);
                        }
                        BaseCell.setDrawableBounds(Theme.dialogs_muteDrawable, fDp9, fDp10);
                        BaseCell.setDrawableBounds(Theme.dialogs_unmuteDrawable, fDp9, fDp10);
                        i8 = 17;
                        DrawableUtils.setBounds(Theme.dialogs_hiddenDrawable, Theme.dialogs_muteDrawable.getBounds().exactCenterX() + AndroidUtilities.dp(2.0f), Theme.dialogs_muteDrawable.getBounds().exactCenterY(), 17);
                        if (dialogCell3.dialogMutedProgress != 1.0f) {
                            canvas3.save();
                            float f39 = dialogCell3.dialogMutedProgress;
                            canvas3.scale(f39, f39, Theme.dialogs_muteDrawable.getBounds().centerX(), Theme.dialogs_muteDrawable.getBounds().centerY());
                            if (dialogCell3.isHiddenInCommunity) {
                                Theme.dialogs_hiddenDrawable.setAlpha((int) (dialogCell3.dialogMutedProgress * 255.0f));
                                Theme.dialogs_hiddenDrawable.draw(canvas3);
                                Theme.dialogs_hiddenDrawable.setAlpha(255);
                            } else if (dialogCell3.drawUnmute) {
                                Theme.dialogs_unmuteDrawable.setAlpha((int) (dialogCell3.dialogMutedProgress * 255.0f));
                                Theme.dialogs_unmuteDrawable.draw(canvas3);
                                Theme.dialogs_unmuteDrawable.setAlpha(255);
                            } else {
                                Theme.dialogs_muteDrawable.setAlpha((int) (dialogCell3.dialogMutedProgress * 255.0f));
                                Theme.dialogs_muteDrawable.draw(canvas3);
                                Theme.dialogs_muteDrawable.setAlpha(255);
                            }
                            canvas3.restore();
                        } else if (dialogCell3.isHiddenInCommunity) {
                            Theme.dialogs_hiddenDrawable.draw(canvas3);
                        } else if (dialogCell3.drawUnmute) {
                            Theme.dialogs_unmuteDrawable.draw(canvas3);
                        } else {
                            Theme.dialogs_muteDrawable.draw(canvas3);
                        }
                    }
                    if (!dialogCell3.drawVerified) {
                        float fDp11 = AndroidUtilities.dp((dialogCell3.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 13.5f : 16.5f);
                        if (((!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || dialogCell3.isForumCell()) && dialogCell3.hasTags()) {
                            fDp11 -= AndroidUtilities.dp(9.0f);
                        }
                        BaseCell.setDrawableBounds(Theme.dialogs_verifiedDrawable, dialogCell3.nameMuteLeft - AndroidUtilities.dp(1.0f), fDp11);
                        BaseCell.setDrawableBounds(Theme.dialogs_verifiedCheckDrawable, dialogCell3.nameMuteLeft - AndroidUtilities.dp(1.0f), fDp11);
                        Theme.dialogs_verifiedDrawable.draw(canvas3);
                        Theme.dialogs_verifiedCheckDrawable.draw(canvas3);
                    } else if (dialogCell3.drawPremium || dialogCell3.drawBadge) {
                        int iDp5 = AndroidUtilities.dp((dialogCell3.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 12.5f : 15.5f);
                        if (((!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || dialogCell3.isForumCell()) && dialogCell3.hasTags()) {
                            iDp5 -= AndroidUtilities.dp(9.0f);
                        }
                        if (dialogCell3.emojiStatus != null && (dialogCell3.drawPremium || dialogCell3.drawBadge)) {
                            dialogCell3.emojiStatusView.setTranslationX((f24 + dialogCell3.nameMuteLeft) - AndroidUtilities.dp(2.0f));
                            dialogCell3.emojiStatusView.setTranslationY((f7 + iDp5) - AndroidUtilities.dp(4.0f));
                            if (dialogCell3.rightFragmentOpenedProgress > 0.0f) {
                                dialogCell3.emojiStatus.setBounds(dialogCell3.nameMuteLeft - AndroidUtilities.dp(2.0f), iDp5 - AndroidUtilities.dp(4.0f), dialogCell3.nameMuteLeft + AndroidUtilities.dp(20.0f), (iDp5 - AndroidUtilities.dp(4.0f)) + AndroidUtilities.dp(22.0f));
                                dialogCell3.emojiStatus.draw(canvas3);
                                z12 = false;
                            } else {
                                z12 = true;
                            }
                            dialogCell3.emojiStatus.setColor(Integer.valueOf(Theme.getColor(Theme.key_chats_verifiedBackground, dialogCell3.resourcesProvider)));
                        } else {
                            Drawable drawable4 = PremiumGradient.getInstance().premiumStarDrawableMini;
                            int iDp6 = dialogCell3.nameMuteLeft - AndroidUtilities.dp(1.0f);
                            if (!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                                f3022 = 15.5f;
                            }
                            BaseCell.setDrawableBounds(drawable4, iDp6, AndroidUtilities.dp(f3022));
                            drawable4.draw(canvas3);
                            z12 = false;
                        }
                        z13 = z12;
                        if (dialogCell3.drawReorder || dialogCell3.reorderIconProgress != 0.0f) {
                            if (!LocaleController.isRTL) {
                                Paint paintReorderGradient = dialogCell3.getPaintReorderGradient();
                                paintReorderGradient.setAlpha((int) (dialogCell3.reorderIconProgress * 255.0f));
                                canvas3.save();
                                canvas3.translate(dialogCell3.pinLeft - AndroidUtilities.dp(24.0f), dialogCell3.pinTop);
                                canvas.drawRect(0.0f, 0.0f, dialogCell3.getMeasuredWidth() - (dialogCell3.pinLeft - AndroidUtilities.dp(24.0f)), AndroidUtilities.dp(24.0f), paintReorderGradient);
                                canvas3 = canvas;
                                canvas3.restore();
                            }
                            Theme.dialogs_reorderDrawable.setAlpha((int) (dialogCell3.reorderIconProgress * 255.0f));
                            BaseCell.setDrawableBounds(Theme.dialogs_reorderDrawable, dialogCell3.pinLeft, dialogCell3.pinTop);
                            Theme.dialogs_reorderDrawable.draw(canvas3);
                        }
                        float floatValue = dialogCell3.animatorPollVotesMentionVisible.getFloatValue();
                        if (!dialogCell3.drawError) {
                            Theme.dialogs_errorDrawable.setAlpha((int) ((1.0f - dialogCell3.reorderIconProgress) * 255.0f));
                            dialogCell3.rect.set(dialogCell3.errorLeft, dialogCell3.errorTop, r1 + AndroidUtilities.dp(20.666f), dialogCell3.errorTop + AndroidUtilities.dp(20.666f));
                            RectF rectF4 = dialogCell3.rect;
                            float f40 = AndroidUtilities.density;
                            canvas3.drawRoundRect(rectF4, 10.5f * f40, f40 * 10.5f, Theme.dialogs_errorPaint);
                            BaseCell.setDrawableBounds(Theme.dialogs_errorDrawable, dialogCell3.errorLeft + AndroidUtilities.dp(4.5f), dialogCell3.errorTop + AndroidUtilities.dp(f9));
                            Theme.dialogs_errorDrawable.draw(canvas3);
                        } else if (((dialogCell3.drawCount || dialogCell3.drawMention) && dialogCell3.drawCount2) || dialogCell3.countChangeProgress != 1.0f || dialogCell3.drawReactionMention || dialogCell3.reactionsMentionsChangeProgress != 1.0f || dialogCell3.drawPollVotesMention || floatValue > 0.0f) {
                            boolean zIsCounterMuted = dialogCell3.isCounterMuted();
                            canvas3 = canvas;
                            drawCounter(canvas3, zIsCounterMuted, dialogCell3.countTop, dialogCell3.countLeft, dialogCell3.countLeftOld, 1.0f, false);
                            dialogCell = this;
                            if (dialogCell.drawMention) {
                                Theme.dialogs_countPaint.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                if (dialogCell.mentionLayout != null) {
                                    dialogCell.rect.set(dialogCell.mentionLeft, dialogCell.countTop, r1 + dialogCell.mentionWidth + AndroidUtilities.dp(12.666f), dialogCell.countTop + AndroidUtilities.dp(20.666f));
                                    Paint paint3 = (!zIsCounterMuted || dialogCell.folderId == 0) ? Theme.dialogs_countPaint : Theme.dialogs_countGrayPaint;
                                    RectF rectF5 = dialogCell.rect;
                                    canvas3.drawRoundRect(rectF5, rectF5.height() / 2.0f, dialogCell.rect.height() / 2.0f, paint3);
                                    Theme.dialogs_countTextPaint2.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                    canvas3.save();
                                    canvas3.translate(dialogCell.mentionLeft + AndroidUtilities.dp(6.333f), dialogCell.countTop + AndroidUtilities.dp(4.0f));
                                    dialogCell.mentionLayout.draw(canvas3);
                                    canvas3.restore();
                                } else {
                                    Drawable drawable5 = Theme.dialogs_mentionDrawable;
                                    drawable5.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                    DrawableUtils.setBounds(drawable5, dialogCell.mentionLeft + AndroidUtilities.dp(10.333f), dialogCell.countTop + AndroidUtilities.dp(10.333f), i8);
                                    drawable5.draw(canvas3);
                                }
                            }
                            if (dialogCell.drawReactionMention || dialogCell.reactionsMentionsChangeProgress != 1.0f) {
                                dialogCell.rect.set(dialogCell.reactionMentionLeft, dialogCell.countTop, AndroidUtilities.dp(20.666f) + r1, dialogCell.countTop + AndroidUtilities.dp(20.666f));
                                float f41 = dialogCell.reactionsMentionsChangeProgress;
                                if (f41 == 1.0f) {
                                    f41 = 1.0f;
                                } else if (!dialogCell.drawReactionMention) {
                                    f41 = 1.0f - f41;
                                }
                                Drawable drawable6 = Theme.dialogs_reactionsMentionDrawable;
                                drawable6.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                DrawableUtils.setBounds(drawable6, r1 + AndroidUtilities.dp(10.333f), dialogCell.countTop + AndroidUtilities.dp(10.333f), i8);
                                DrawableUtils.drawWithScale(canvas3, drawable6, f41);
                            }
                            if ((dialogCell.drawPollVotesMention || floatValue > 0.0f) && floatValue != 0.0f) {
                                dialogCell.rect.set(dialogCell.pollVotesMentionLeft, dialogCell.countTop, AndroidUtilities.dp(20.666f) + r1, dialogCell.countTop + AndroidUtilities.dp(20.666f));
                                Drawable drawable7 = Theme.dialogs_pollMentionDrawable;
                                drawable7.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                DrawableUtils.setBounds(drawable7, r1 + AndroidUtilities.dp(10.333f), dialogCell.countTop + AndroidUtilities.dp(10.333f), i8);
                                DrawableUtils.drawWithScale(canvas3, drawable7, floatValue);
                            }
                            if (dialogCell.drawGramTransfer) {
                                if (dialogCell.gramTransferDrawable == null) {
                                    dialogCell.gramTransferDrawable = (LayerDrawable) ContextCompat.getDrawable(dialogCell.getContext(), C2807R.drawable.dialog_gram_transfer).mutate();
                                }
                                int color13 = Theme.getColor(dialogCell.isCounterMuted() ? Theme.key_chats_unreadCounterMuted : Theme.key_chats_unreadCounter, dialogCell.resourcesProvider);
                                if (dialogCell.gramTransferColor != color13) {
                                    Drawable drawable8 = dialogCell.gramTransferDrawable.getDrawable(0);
                                    dialogCell.gramTransferColor = color13;
                                    drawable8.setColorFilter(new PorterDuffColorFilter(color13, PorterDuff.Mode.SRC_IN));
                                }
                                int iDp7 = dialogCell.countTop + ((AndroidUtilities.dp(20.666f) - AndroidUtilities.dp(28.0f)) / i9);
                                LayerDrawable layerDrawable = dialogCell.gramTransferDrawable;
                                int i35 = dialogCell.gramTransferLeft;
                                layerDrawable.setBounds(i35, iDp7, AndroidUtilities.dp(28.0f) + i35, AndroidUtilities.dp(28.0f) + iDp7);
                                dialogCell.gramTransferDrawable.setAlpha((int) ((1.0f - dialogCell.reorderIconProgress) * 255.0f));
                                dialogCell.gramTransferDrawable.draw(canvas3);
                            }
                            if (dialogCell.thumbsCount > 0) {
                                float f42 = dialogCell.updateHelper.typingProgres;
                                if (f42 != 1.0f) {
                                    if (f42 > 0.0f) {
                                        canvas.saveLayerAlpha(0.0f, 0.0f, dialogCell.getWidth(), dialogCell.getHeight(), (int) ((1.0f - f42) * 255.0f), 31);
                                        canvas3 = canvas;
                                        if (dialogCell.updateHelper.typingOutToTop) {
                                            fDp = -AndroidUtilities.dp(14.0f);
                                            f18 = dialogCell.updateHelper.typingProgres;
                                        } else {
                                            fDp = AndroidUtilities.dp(14.0f);
                                            f18 = dialogCell.updateHelper.typingProgres;
                                        }
                                        canvas3.translate(0.0f, fDp * f18);
                                    }
                                    int i36 = 0;
                                    while (i36 < dialogCell.thumbsCount) {
                                        if (dialogCell.thumbImageSeen[i36]) {
                                            if (dialogCell.thumbBackgroundPaint == null) {
                                                Paint paint4 = new Paint(1);
                                                dialogCell.thumbBackgroundPaint = paint4;
                                                paint4.setShadowLayer(AndroidUtilities.dp(1.34f), 0.0f, AndroidUtilities.dp(0.34f), 402653184);
                                                dialogCell.thumbBackgroundPaint.setColor(0);
                                            }
                                            RectF rectF6 = AndroidUtilities.rectTmp;
                                            rectF6.set(dialogCell.thumbImage[i36].getImageX(), dialogCell.thumbImage[i36].getImageY(), dialogCell.thumbImage[i36].getImageX2(), dialogCell.thumbImage[i36].getImageY2());
                                            dialogCell.thumbImage[i36].draw(canvas3);
                                            if (dialogCell.drawSpoiler[i36]) {
                                                Path path = dialogCell.thumbPath;
                                                if (path == null) {
                                                    dialogCell.thumbPath = new Path();
                                                } else {
                                                    path.rewind();
                                                }
                                                dialogCell.thumbPath.addRoundRect(rectF6, dialogCell.thumbImage[i36].getRoundRadius()[0], dialogCell.thumbImage[i36].getRoundRadius()[1], Path.Direction.CW);
                                                canvas3.save();
                                                canvas3.clipPath(dialogCell.thumbPath);
                                                if (dialogCell.thumbSpoiler == null) {
                                                    dialogCell.thumbSpoiler = new SpoilerEffect();
                                                }
                                                i15 = i13;
                                                dialogCell.thumbSpoiler.setColor(ColorUtils.setAlphaComponent(i15, (int) (Color.alpha(i13) * 0.325f)));
                                                dialogCell.thumbSpoiler.setBounds((int) dialogCell.thumbImage[i36].getImageX(), (int) dialogCell.thumbImage[i36].getImageY(), (int) dialogCell.thumbImage[i36].getImageX2(), (int) dialogCell.thumbImage[i36].getImageY2());
                                                dialogCell.thumbSpoiler.draw(canvas3);
                                                dialogCell.invalidate();
                                                canvas3.restore();
                                            } else {
                                                i15 = i13;
                                            }
                                            if (dialogCell.drawPlay[i36]) {
                                                BaseCell.setDrawableBounds(Theme.dialogs_playDrawable, (int) (dialogCell.thumbImage[i36].getCenterX() - (Theme.dialogs_playDrawable.getIntrinsicWidth() / i9)), (int) (dialogCell.thumbImage[i36].getCenterY() - (Theme.dialogs_playDrawable.getIntrinsicHeight() / i9)));
                                                Theme.dialogs_playDrawable.draw(canvas3);
                                            }
                                        } else {
                                            i15 = i13;
                                        }
                                        i36++;
                                        i13 = i15;
                                    }
                                    i14 = i13;
                                    if (dialogCell.updateHelper.typingProgres > 0.0f) {
                                        canvas3.restore();
                                    }
                                } else {
                                    i14 = i13;
                                }
                                DialogCellTags dialogCellTags = dialogCell.tags;
                                if (dialogCellTags != null && !dialogCellTags.isEmpty()) {
                                    canvas3.save();
                                    canvas3.translate(dialogCell.tagsLeft, (dialogCell.getMeasuredHeight() - AndroidUtilities.dp(21.66f)) - (dialogCell.useSeparator ? 1 : 0));
                                    dialogCell.tags.draw(canvas3, dialogCell.tagsRight - dialogCell.tagsLeft);
                                    canvas3.restore();
                                }
                                if (i12 != i14) {
                                    canvas3.restoreToCount(i12);
                                }
                                z2 = z11;
                                z3 = z13;
                            }
                        } else {
                            if (dialogCell3.openBot) {
                                canvas3.save();
                                float scale = dialogCell3.openButtonBounce.getScale(0.05f);
                                canvas3.scale(scale, scale, dialogCell3.openButtonRect.centerX(), dialogCell3.openButtonRect.centerY());
                                dialogCell3.openButtonBackgroundPaint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, dialogCell3.resourcesProvider));
                                RectF rectF7 = dialogCell3.openButtonRect;
                                canvas3.drawRoundRect(rectF7, rectF7.height() / 2.0f, dialogCell3.openButtonRect.height() / 2.0f, dialogCell3.openButtonBackgroundPaint);
                                Text text = dialogCell3.openButtonText;
                                if (text != null) {
                                    text.draw(canvas3, dialogCell3.openButtonRect.left + AndroidUtilities.dp(13.0f), dialogCell3.openButtonRect.centerY(), Theme.getColor(Theme.key_featuredStickers_buttonText, dialogCell3.resourcesProvider), 1.0f);
                                }
                                canvas.restore();
                            }
                            canvas3 = canvas;
                        }
                        dialogCell = dialogCell3;
                        if (dialogCell.drawGramTransfer) {
                        }
                        if (dialogCell.thumbsCount > 0) {
                        }
                    } else if (dialogCell3.drawScam != 0) {
                        int iDp8 = AndroidUtilities.dp((dialogCell3.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 12.0f : 15.0f);
                        if (((!dialogCell3.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || dialogCell3.isForumCell()) && dialogCell3.hasTags()) {
                            iDp8 -= AndroidUtilities.dp(9.0f);
                        }
                        BaseCell.setDrawableBounds((Drawable) (dialogCell3.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable), dialogCell3.nameMuteLeft, iDp8);
                        (dialogCell3.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).draw(canvas3);
                    }
                    z13 = false;
                    if (dialogCell3.drawReorder) {
                        if (!LocaleController.isRTL) {
                        }
                        Theme.dialogs_reorderDrawable.setAlpha((int) (dialogCell3.reorderIconProgress * 255.0f));
                        BaseCell.setDrawableBounds(Theme.dialogs_reorderDrawable, dialogCell3.pinLeft, dialogCell3.pinTop);
                        Theme.dialogs_reorderDrawable.draw(canvas3);
                        float floatValue2 = dialogCell3.animatorPollVotesMentionVisible.getFloatValue();
                        if (!dialogCell3.drawError) {
                        }
                        dialogCell = dialogCell3;
                        if (dialogCell.drawGramTransfer) {
                        }
                        if (dialogCell.thumbsCount > 0) {
                        }
                    }
                }
            } else {
                dialogCell = this;
                i8 = 17;
                i9 = i6;
                f8 = 6.0f;
                f9 = 5.0f;
                i10 = 4;
                f10 = 19.0f;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            if (dialogCell.animatingArchiveAvatar) {
                canvas3.save();
                float interpolation2 = dialogCell.interpolator.getInterpolation(dialogCell.animatingArchiveAvatarProgress / 170.0f) + 1.0f;
                canvas3.scale(interpolation2, interpolation2, dialogCell.avatarImage.getCenterX(), dialogCell.avatarImage.getCenterY());
            }
            if (dialogCell.drawAvatar && (!dialogCell.isTopic || (tL_forumTopic2 = dialogCell.forumTopic) == null || tL_forumTopic2.id != 1 || (pullForegroundDrawable = dialogCell.archivedChatsDrawable) == null || !pullForegroundDrawable.isDraw())) {
                if (!dialogCell.drawMonoforumAvatar) {
                    if (dialogCell.bubbleClip == null) {
                        dialogCell.bubbleClip = new PhotoBubbleClip();
                    }
                    dialogCell.bubbleClip.setBounds((int) dialogCell.storyParams.originalAvatarRect.centerX(), (int) dialogCell.storyParams.originalAvatarRect.centerY(), (int) (dialogCell.storyParams.originalAvatarRect.width() / 2.0f));
                    canvas3.save();
                    canvas3.clipPath(dialogCell.bubbleClip);
                    dialogCell.avatarImage.setImageCoords(dialogCell.storyParams.originalAvatarRect);
                    dialogCell.avatarImage.draw(canvas3);
                    canvas3.restore();
                } else if (dialogCell.drawCommunityAvatar) {
                    DrawableUtils.setBounds(dialogCell.avatarImage, dialogCell.storyParams.originalAvatarRect.centerX() + AndroidUtilities.dpf2(1.0f), dialogCell.storyParams.originalAvatarRect.centerY(), AndroidUtilities.dp(48.0f), AndroidUtilities.dp(48.0f), 17);
                    DrawableUtils.drawCommunityCardDrawable(canvas3, Theme.dialogs_communityCardsDrawable, dialogCell.avatarImage.getCenterX(), dialogCell.avatarImage.getCenterY(), AndroidUtilities.dp(48.0f));
                    dialogCell.avatarImage.draw(canvas3);
                } else {
                    StoriesUtilities.AvatarStoryParams avatarStoryParams = dialogCell.storyParams;
                    boolean z29 = dialogCell.isShareToStoryCell;
                    avatarStoryParams.drawHiddenStoriesAsSegments = z29 || dialogCell.currentDialogFolderId != 0;
                    int i37 = avatarStoryParams.forceState;
                    if (z29) {
                        avatarStoryParams.forceState = 1;
                    }
                    StoriesUtilities.drawAvatarWithStory(dialogCell.currentDialogId, canvas3, dialogCell.avatarImage, avatarStoryParams);
                    if (dialogCell.storyParams.drawnLive) {
                        dialogCell.checkTtl();
                    }
                    dialogCell.storyParams.forceState = i37;
                }
                if (!dialogCell.insideCommunityList && ((((chat = dialogCell.chat) != null && chat.linked_community_id != j) || ((user = dialogCell.user) != null && user.linked_community_id != j)) && !dialogCell.drawCommunityAvatar && dialogCell.isDialogCell && !dialogCell.isDialogFolder())) {
                    float fCenterX2 = dialogCell.storyParams.originalAvatarRect.centerX() + AndroidUtilities.dp(20.33f);
                    float fCenterY2 = dialogCell.storyParams.originalAvatarRect.centerY() + AndroidUtilities.dp(f10);
                    if (dialogCell.communityArrowDrawable == null) {
                        dialogCell.communityArrowDrawable = new CommunityArrowDrawable();
                    }
                    DrawableUtils.setBounds(dialogCell.communityArrowDrawable, fCenterX2, fCenterY2, i8);
                    canvas3.drawCircle(dialogCell.communityArrowDrawable.getBounds().exactCenterX(), dialogCell.communityArrowDrawable.getBounds().exactCenterY(), AndroidUtilities.dp(8.0f), Theme.fillingPaint(Theme.getColor(Theme.key_windowBackgroundWhite, dialogCell.resourcesProvider)));
                    dialogCell.communityArrowDrawable.draw(canvas3);
                }
            }
            if (dialogCell.animatingArchiveAvatar) {
                canvas3.restore();
            }
            if (dialogCell.avatarImage.getVisible() && drawAvatarOverlays(canvas)) {
                z4 = true;
            }
            if (dialogCell.rightFragmentOpenedProgress > 0.0f || dialogCell.currentDialogFolderId != 0) {
                dialogCell2 = dialogCell;
            } else {
                boolean zIsCounterMuted2 = dialogCell.isCounterMuted();
                RectF rectF8 = dialogCell.storyParams.originalAvatarRect;
                int iWidth = (int) (((rectF8.left + rectF8.width()) - dialogCell.countWidth) - AndroidUtilities.dp(f9));
                RectF rectF9 = dialogCell.storyParams.originalAvatarRect;
                drawCounter(canvas3, zIsCounterMuted2, (int) ((dialogCell.avatarImage.getImageY() + dialogCell.storyParams.originalAvatarRect.height()) - AndroidUtilities.dp(22.0f)), iWidth, (int) (((rectF9.left + rectF9.width()) - dialogCell.countWidthOld) - AndroidUtilities.dp(f9)), dialogCell.rightFragmentOpenedProgress, true);
                dialogCell2 = this;
            }
            if (dialogCell2.collapseOffset != 0.0f) {
                canvas3.restore();
            }
            if (dialogCell2.translationX != 0.0f) {
                canvas3.restore();
            }
            if (dialogCell2.drawArchive && ((dialogCell2.currentDialogFolderId != 0 || (dialogCell2.isTopic && (tL_forumTopic = dialogCell2.forumTopic) != null && tL_forumTopic.id == 1)) && dialogCell2.translationX == 0.0f && dialogCell2.archivedChatsDrawable != null)) {
                canvas3.save();
                canvas3.translate(0.0f, (-dialogCell2.translateY) - (dialogCell2.rightFragmentOffset * dialogCell2.rightFragmentOpenedProgress));
                canvas3.clipRect(0.0f, dialogCell2.getMeasuredHeight() * (1.0f - dialogCell2.archivedChatsDrawable.getPullProgress()), dialogCell2.getMeasuredWidth(), dialogCell2.getMeasuredHeight());
                dialogCell2.archivedChatsDrawable.draw(canvas3);
                canvas3.restore();
            }
            if (dialogCell2.useSeparator) {
                int iDp9 = (dialogCell2.fullSeparator || !(dialogCell2.currentDialogFolderId == 0 || !dialogCell2.archiveHidden || dialogCell2.fullSeparator2) || (dialogCell2.fullSeparator2 && !dialogCell2.archiveHidden)) ? 0 : AndroidUtilities.dp(dialogCell2.messagePaddingStart);
                if (dialogCell2.rightFragmentOpenedProgress != 1.0f) {
                    int alpha4 = Theme.dividerPaint.getAlpha();
                    float f43 = dialogCell2.rightFragmentOpenedProgress;
                    if (f43 != 0.0f) {
                        Theme.dividerPaint.setAlpha((int) (alpha4 * (1.0f - f43)));
                    }
                    z5 = true;
                    float measuredHeight2 = (dialogCell2.getMeasuredHeight() - 1) - (dialogCell2.rightFragmentOffset * dialogCell2.rightFragmentOpenedProgress);
                    if (LocaleController.isRTL) {
                        canvas.drawLine(0.0f, measuredHeight2, dialogCell2.getMeasuredWidth() - iDp9, measuredHeight2, Theme.dividerPaint);
                    } else {
                        canvas.drawLine(iDp9, measuredHeight2, dialogCell2.getMeasuredWidth(), measuredHeight2, Theme.dividerPaint);
                    }
                    f11 = 0.0f;
                    if (dialogCell2.rightFragmentOpenedProgress != 0.0f) {
                        Theme.dividerPaint.setAlpha(alpha4);
                    }
                }
            } else {
                z5 = true;
                f11 = 0.0f;
            }
            if (dialogCell2.clipProgress == f11) {
                canvas2 = canvas;
            } else if (Build.VERSION.SDK_INT != 24) {
                canvas.restore();
                canvas2 = canvas;
            } else {
                Theme.dialogs_pinnedPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, dialogCell2.resourcesProvider));
                canvas.drawRect(0.0f, 0.0f, dialogCell2.getMeasuredWidth(), dialogCell2.topClip * dialogCell2.clipProgress, Theme.dialogs_pinnedPaint);
                canvas.drawRect(0.0f, dialogCell2.getMeasuredHeight() - ((int) (dialogCell2.bottomClip * dialogCell2.clipProgress)), dialogCell2.getMeasuredWidth(), dialogCell2.getMeasuredHeight(), Theme.dialogs_pinnedPaint);
                canvas2 = canvas;
            }
            if (r16 != false) {
                float f44 = 1.0f - pullProgress;
                int measuredHeight3 = (int) (dialogCell2.getMeasuredHeight() * f44);
                int color14 = Theme.getColor(Theme.key_windowBackgroundWhite);
                if (dialogCell2.archiveFadeGradientDrawable == null) {
                    dialogCell2.archiveFadeGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, null);
                }
                if (dialogCell2.archiveFadeGradientDrawableColor != color14) {
                    dialogCell2.archiveFadeGradientDrawableColor = color14;
                    dialogCell2.archiveFadeGradientDrawable.setColors(new int[]{color14, 16777215 & color14});
                }
                float fClamp2 = MathUtils.clamp((f44 - 0.05f) * 10.0f, 0.0f, 1.0f);
                dialogCell2.archiveFadeGradientDrawable.setBounds(0, measuredHeight3, dialogCell2.getMeasuredWidth(), AndroidUtilities.dp(f8) + measuredHeight3);
                dialogCell2.archiveFadeGradientDrawable.setAlpha((int) (fClamp2 * 255.0f));
                dialogCell2.archiveFadeGradientDrawable.draw(canvas2);
                canvas2.restore();
            }
            z6 = dialogCell2.drawReorder;
            if (z6 && dialogCell2.reorderIconProgress == 0.0f) {
                f12 = 0.0f;
                z7 = z4;
            } else {
                float f312 = dialogCell2.reorderIconProgress;
                if (z6) {
                    f12 = 0.0f;
                    if (f312 > 0.0f) {
                        float f45 = f312 - 0.09411765f;
                        dialogCell2.reorderIconProgress = f45;
                        if (f45 < 0.0f) {
                            dialogCell2.reorderIconProgress = 0.0f;
                        }
                        z7 = z5;
                    } else {
                        z7 = z4;
                    }
                } else {
                    if (f312 < 1.0f) {
                        float f46 = f312 + 0.09411765f;
                        dialogCell2.reorderIconProgress = f46;
                        if (f46 > 1.0f) {
                            dialogCell2.reorderIconProgress = 1.0f;
                        }
                        z7 = z5;
                        f12 = 0.0f;
                    }
                    f12 = 0.0f;
                    z7 = z4;
                }
            }
            z8 = dialogCell2.archiveHidden;
            float f322 = dialogCell2.archiveBackgroundProgress;
            if (z8) {
                if (f322 < 1.0f) {
                    float f47 = f322 + 0.069565214f;
                    dialogCell2.archiveBackgroundProgress = f47;
                    if (f47 > 1.0f) {
                        dialogCell2.archiveBackgroundProgress = 1.0f;
                    }
                    if (dialogCell2.avatarDrawable.getAvatarType() == i9) {
                        dialogCell2.avatarDrawable.setArchivedAvatarHiddenProgress(CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(dialogCell2.archiveBackgroundProgress));
                    }
                    z7 = z5;
                }
            } else if (f322 > f12) {
                float f48 = f322 - 0.069565214f;
                dialogCell2.archiveBackgroundProgress = f48;
                if (f48 < f12) {
                    dialogCell2.archiveBackgroundProgress = f12;
                }
                if (dialogCell2.avatarDrawable.getAvatarType() == i9) {
                    dialogCell2.avatarDrawable.setArchivedAvatarHiddenProgress(CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(dialogCell2.archiveBackgroundProgress));
                }
                z7 = z5;
            }
            if (dialogCell2.animatingArchiveAvatar) {
                i11 = 0;
            } else {
                float f49 = dialogCell2.animatingArchiveAvatarProgress + 16.0f;
                dialogCell2.animatingArchiveAvatarProgress = f49;
                if (f49 >= 170.0f) {
                    dialogCell2.animatingArchiveAvatarProgress = 170.0f;
                    i11 = 0;
                    dialogCell2.animatingArchiveAvatar = false;
                } else {
                    i11 = 0;
                }
                z7 = z5;
            }
            z9 = dialogCell2.drawRevealBackground;
            float f332 = dialogCell2.currentRevealBounceProgress;
            if (!z9) {
                if (f332 < 1.0f) {
                    float f50 = f332 + 0.09411765f;
                    dialogCell2.currentRevealBounceProgress = f50;
                    if (f50 > 1.0f) {
                        dialogCell2.currentRevealBounceProgress = 1.0f;
                        z7 = z5;
                    }
                }
                float f51 = dialogCell2.currentRevealProgress;
                if (f51 < 1.0f) {
                    float f52 = f51 + 0.053333335f;
                    dialogCell2.currentRevealProgress = f52;
                    if (f52 > 1.0f) {
                        dialogCell2.currentRevealProgress = 1.0f;
                    }
                    z10 = z5;
                }
                z10 = z7;
            } else {
                if (f332 == 1.0f) {
                    dialogCell2.currentRevealBounceProgress = 0.0f;
                    z7 = z5;
                }
                float f53 = dialogCell2.currentRevealProgress;
                if (f53 > 0.0f) {
                    float f54 = f53 - 0.053333335f;
                    dialogCell2.currentRevealProgress = f54;
                    if (f54 < 0.0f) {
                        dialogCell2.currentRevealProgress = 0.0f;
                    }
                    z10 = z5;
                }
                z10 = z7;
            }
            dialogCell2.emojiStatusView.setVisibility(!z3 ? i11 : i10);
            dialogCell2.botVerificationView.setVisibility(!z2 ? i11 : i10);
            if (z10) {
                return;
            }
            dialogCell2.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$2() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonClicked(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDraw$3() {
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate != null) {
            dialogCellDelegate.onButtonLongPress(this);
        }
    }

    private TextPaint getTimeTextPaint() {
        return this.drawCount ? isCounterMuted() ? Theme.dialogs_timePaintBold : Theme.dialogs_timePaintBoldAccent : Theme.dialogs_timePaint;
    }

    private boolean isCounterMuted() {
        if (isDialogCommunity()) {
            return !this.hasUnmutedCommunityDialogs;
        }
        if (this.isTopic) {
            return this.topicMuted;
        }
        TLRPC.Chat chat = this.chat;
        return (chat != null && chat.forum && this.forumTopic == null) ? !this.hasUnmutedTopics : this.dialogMuted;
    }

    private Paint getPaintReorderGradient() {
        int color = Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider);
        if (this.reorderGradientLastColor != color || this.reorderGradientPaint == null) {
            this.reorderGradientLastColor = color;
            if (this.reorderGradientPaint == null) {
                this.reorderGradientPaint = new Paint(1);
            }
            this.reorderGradientPaint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.dp(24.0f), 0.0f, new int[]{0, color}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
        }
        return this.reorderGradientPaint;
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x065c  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x06be  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0225  */
    @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.AvatarOverlaysView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean drawAvatarOverlays(Canvas canvas) {
        boolean z;
        float fDp;
        int i;
        float f;
        float fDp2;
        float fDp3;
        float fDp4;
        float f2;
        float fDp5;
        float fDp6;
        float f3;
        float f4;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        float fDp7;
        TLRPC.Chat chat = this.chat;
        boolean z6 = false;
        if (chat == null || (chat.flags2 & 2048) == 0) {
            z = false;
        } else {
            float imageY2 = this.avatarImage.getImageY2();
            float imageX2 = this.avatarImage.getImageX2();
            CheckBox2 checkBox2 = this.checkBox;
            float progress = (checkBox2 == null || !checkBox2.isChecked()) ? 1.0f : 1.0f - this.checkBox.getProgress();
            if (this.starBg == null) {
                this.starBg = getContext().getResources().getDrawable(C2807R.drawable.star_small_outline).mutate();
            }
            int color = Theme.getColor(Theme.key_windowBackgroundWhite);
            if (this.starBgColor != color) {
                Drawable drawable = this.starBg;
                this.starBgColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            if (this.starFg == null) {
                this.starFg = getContext().getResources().getDrawable(C2807R.drawable.star_small_inner).mutate();
            }
            int iDp = AndroidUtilities.dp(19.33f);
            Rect rect = AndroidUtilities.rectTmp2;
            int i2 = (int) imageX2;
            int i3 = (int) imageY2;
            int i4 = i3 - iDp;
            rect.set((AndroidUtilities.dp(1.66f) + i2) - iDp, i4, AndroidUtilities.dp(1.66f) + i2, i3);
            rect.inset(-AndroidUtilities.dp(1.0f), -AndroidUtilities.dp(1.0f));
            this.starBg.setBounds(rect);
            int i5 = (int) (progress * 255.0f);
            this.starBg.setAlpha(i5);
            this.starBg.draw(canvas);
            rect.set((AndroidUtilities.dp(1.66f) + i2) - iDp, i4, i2 + AndroidUtilities.dp(1.66f), i3);
            this.starFg.setBounds(rect);
            this.starFg.setAlpha(i5);
            this.starFg.draw(canvas);
            z = true;
        }
        float f5 = this.premiumBlockedT.set(this.premiumBlocked && !z);
        float f6 = 10.0f;
        if (f5 > 0.0f) {
            float centerY = this.avatarImage.getCenterY() + AndroidUtilities.dp(18.0f);
            float centerX = this.avatarImage.getCenterX() + AndroidUtilities.dp(18.0f);
            canvas.save();
            Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
            canvas.drawCircle(centerX, centerY, AndroidUtilities.dp(11.33f) * f5, Theme.dialogs_onlineCirclePaint);
            if (this.premiumGradient == null) {
                this.premiumGradient = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, this.resourcesProvider);
            }
            this.premiumGradient.gradientMatrix((int) (centerX - AndroidUtilities.dp(10.0f)), (int) (centerY - AndroidUtilities.dp(10.0f)), (int) (AndroidUtilities.dp(10.0f) + centerX), (int) (AndroidUtilities.dp(10.0f) + centerY), 0.0f, 0.0f);
            canvas.drawCircle(centerX, centerY, AndroidUtilities.dp(10.0f) * f5, this.premiumGradient.paint);
            if (this.lockDrawable == null) {
                Drawable drawableMutate = getContext().getResources().getDrawable(C2807R.drawable.msg_mini_lock2).mutate();
                this.lockDrawable = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            }
            this.lockDrawable.setBounds((int) (centerX - (((r4.getIntrinsicWidth() / 2.0f) * 0.875f) * f5)), (int) (centerY - (((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f) * f5)), (int) (centerX + ((this.lockDrawable.getIntrinsicWidth() / 2.0f) * 0.875f * f5)), (int) (centerY + ((this.lockDrawable.getIntrinsicHeight() / 2.0f) * 0.875f * f5)));
            this.lockDrawable.setAlpha((int) (f5 * 255.0f));
            this.lockDrawable.draw(canvas);
            canvas.restore();
            return false;
        }
        if (!this.isDialogCell || this.currentDialogFolderId != 0 || z) {
            return false;
        }
        boolean z7 = (this.ttlPeriod <= 0 || isOnline() || this.hasCall || this.storyParams.drawnLive) ? false : true;
        this.showTtl = z7;
        if (this.rightFragmentOpenedProgress != 1.0f && (z7 || this.ttlProgress > 0.0f)) {
            TimerDrawable timerDrawable = this.timerDrawable;
            if (timerDrawable != null) {
                int time = timerDrawable.getTime();
                int i6 = this.ttlPeriod;
                if (time != i6 && i6 > 0) {
                    this.timerDrawable = TimerDrawable.getTtlIconForDialogs(this.ttlPeriod);
                }
                if (this.timerPaint == null) {
                    this.timerPaint = new Paint(1);
                    Paint paint = new Paint(1);
                    this.timerPaint2 = paint;
                    paint.setColor(838860800);
                }
                int imageY22 = (int) (this.avatarImage.getImageY2() - AndroidUtilities.dp(9.0f));
                boolean z8 = LocaleController.isRTL;
                StoriesUtilities.AvatarStoryParams avatarStoryParams = this.storyParams;
                if (z8) {
                    fDp7 = avatarStoryParams.originalAvatarRect.left + AndroidUtilities.dp(9.0f);
                } else {
                    fDp7 = avatarStoryParams.originalAvatarRect.right - AndroidUtilities.dp(9.0f);
                }
                int i7 = (int) fDp7;
                this.timerDrawable.setBounds(0, 0, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(22.0f));
                this.timerDrawable.setTime(this.ttlPeriod);
                if (this.avatarImage.updateThumbShaderMatrix()) {
                    ImageReceiver imageReceiver = this.avatarImage;
                    BitmapShader bitmapShader = imageReceiver.thumbShader;
                    if (bitmapShader != null) {
                        this.timerPaint.setShader(bitmapShader);
                    } else {
                        BitmapShader bitmapShader2 = imageReceiver.staticThumbShader;
                        if (bitmapShader2 != null) {
                            this.timerPaint.setShader(bitmapShader2);
                        }
                    }
                } else {
                    this.timerPaint.setShader(null);
                    if (this.avatarImage.getBitmap() != null && !this.avatarImage.getBitmap().isRecycled()) {
                        this.timerPaint.setColor(AndroidUtilities.getDominantColor(this.avatarImage.getBitmap()));
                    } else if (this.avatarImage.getDrawable() instanceof VectorAvatarThumbDrawable) {
                        this.timerPaint.setColor(((VectorAvatarThumbDrawable) this.avatarImage.getDrawable()).gradientTools.getAverageColor());
                    } else {
                        this.timerPaint.setColor(this.avatarDrawable.getColor2());
                    }
                }
                canvas.save();
                float progress2 = this.ttlProgress * (1.0f - this.rightFragmentOpenedProgress);
                CheckBox2 checkBox22 = this.checkBox;
                if (checkBox22 != null) {
                    progress2 *= 1.0f - checkBox22.getProgress();
                }
                float f7 = i7;
                float f8 = imageY22;
                canvas.scale(progress2, progress2, f7, f8);
                canvas.drawCircle(f7, f8, AndroidUtilities.dpf2(11.0f), this.timerPaint);
                canvas.drawCircle(f7, f8, AndroidUtilities.dpf2(11.0f), this.timerPaint2);
                canvas.save();
                canvas.translate(f7 - AndroidUtilities.dpf2(11.0f), f8 - AndroidUtilities.dpf2(11.0f));
                this.timerDrawable.draw(canvas);
                canvas.restore();
                canvas.restore();
            }
        }
        TLRPC.User user = this.user;
        if (user != null && !MessagesController.isSupportUser(user) && !this.user.bot) {
            boolean zIsOnline = isOnline();
            this.wasDrawnOnline = zIsOnline;
            if (zIsOnline || this.onlineProgress != 0.0f) {
                float onlineDotOuterRadius = ExteraConfig.getOnlineDotOuterRadius();
                float onlineDotInnerRadius = ExteraConfig.getOnlineDotInnerRadius();
                float onlineDotOffset = ExteraConfig.getOnlineDotOffset(AndroidUtilities.dp(6.0f), onlineDotOuterRadius);
                float onlineDotOffset2 = ExteraConfig.getOnlineDotOffset(AndroidUtilities.dp(8.0f), onlineDotOuterRadius);
                RectF rectF = this.storyParams.originalAvatarRect;
                float f9 = rectF.bottom - onlineDotOffset2;
                float f10 = LocaleController.isRTL ? rectF.left + onlineDotOffset : rectF.right - onlineDotOffset;
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                canvas.drawCircle(f10, f9, onlineDotOuterRadius * this.onlineProgress, Theme.dialogs_onlineCirclePaint);
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_chats_onlineCircle, this.resourcesProvider));
                canvas.drawCircle(f10, f9, onlineDotInnerRadius * this.onlineProgress, Theme.dialogs_onlineCirclePaint);
                float f11 = this.onlineProgress;
                if (zIsOnline) {
                    if (f11 < 1.0f) {
                        float f12 = f11 + 0.10666667f;
                        this.onlineProgress = f12;
                        if (f12 > 1.0f) {
                            this.onlineProgress = 1.0f;
                        }
                        z6 = true;
                    }
                } else if (f11 > 0.0f) {
                    float f13 = f11 - 0.10666667f;
                    this.onlineProgress = f13;
                    if (f13 < 0.0f) {
                        this.onlineProgress = 0.0f;
                    }
                    z6 = true;
                }
                z4 = this.showTtl;
                float f14 = this.ttlProgress;
                if (z4) {
                }
                this.ttlProgress = Utilities.clamp(this.ttlProgress, 1.0f, 0.0f);
                return z5;
            }
        } else {
            TLRPC.Chat chat2 = this.chat;
            if (chat2 != null) {
                boolean z9 = chat2.call_active && chat2.call_not_empty;
                this.hasCall = z9;
                if ((z9 || this.chatCallProgress != 0.0f) && this.rightFragmentOpenedProgress < 1.0f) {
                    CheckBox2 checkBox23 = this.checkBox;
                    float progress3 = (checkBox23 == null || !checkBox23.isChecked()) ? 1.0f : 1.0f - this.checkBox.getProgress();
                    int iDp2 = (int) (this.storyParams.originalAvatarRect.bottom - AndroidUtilities.dp((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 6.0f : 8.0f));
                    boolean z10 = LocaleController.isRTL;
                    StoriesUtilities.AvatarStoryParams avatarStoryParams2 = this.storyParams;
                    if (z10) {
                        float f15 = avatarStoryParams2.originalAvatarRect.left;
                        if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                            f6 = 6.0f;
                        }
                        fDp = f15 + AndroidUtilities.dp(f6);
                    } else {
                        float f16 = avatarStoryParams2.originalAvatarRect.right;
                        if (!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) {
                            f6 = 6.0f;
                        }
                        fDp = f16 - AndroidUtilities.dp(f6);
                    }
                    int i8 = (int) fDp;
                    if (this.rightFragmentOpenedProgress != 0.0f) {
                        canvas.save();
                        float f17 = 1.0f - this.rightFragmentOpenedProgress;
                        canvas.scale(f17, f17, i8, iDp2);
                    }
                    Paint paint2 = Theme.dialogs_onlineCirclePaint;
                    int i9 = Theme.key_windowBackgroundWhite;
                    paint2.setColor(Theme.getColor(i9, this.resourcesProvider));
                    float f18 = i8;
                    float f19 = iDp2;
                    canvas.drawCircle(f18, f19, AndroidUtilities.dp(11.0f) * this.chatCallProgress * progress3, Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(Theme.key_chats_onlineCircle, this.resourcesProvider));
                    canvas.drawCircle(f18, f19, AndroidUtilities.dp(9.0f) * this.chatCallProgress * progress3, Theme.dialogs_onlineCirclePaint);
                    Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(i9, this.resourcesProvider));
                    if (!LiteMode.isEnabled(LiteMode.FLAGS_CHAT)) {
                        this.innerProgress = 0.65f;
                    }
                    int i10 = this.progressStage;
                    if (i10 == 0) {
                        i = 360928;
                        fDp2 = AndroidUtilities.dp(1.0f) + (AndroidUtilities.dp(4.0f) * this.innerProgress);
                        fDp5 = AndroidUtilities.dp(3.0f);
                        fDp6 = AndroidUtilities.dp(2.0f);
                        f = 0.10666667f;
                        f3 = this.innerProgress;
                    } else {
                        i = 360928;
                        f = 0.10666667f;
                        if (i10 == 1) {
                            fDp2 = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                            fDp3 = AndroidUtilities.dp(1.0f);
                            fDp4 = AndroidUtilities.dp(4.0f);
                            f2 = this.innerProgress;
                        } else if (i10 == 2) {
                            fDp2 = (AndroidUtilities.dp(2.0f) * this.innerProgress) + AndroidUtilities.dp(1.0f);
                            fDp5 = AndroidUtilities.dp(5.0f);
                            fDp6 = AndroidUtilities.dp(4.0f);
                            f3 = this.innerProgress;
                        } else if (i10 == 3) {
                            fDp2 = AndroidUtilities.dp(3.0f) - (AndroidUtilities.dp(2.0f) * this.innerProgress);
                            fDp3 = AndroidUtilities.dp(1.0f);
                            fDp4 = AndroidUtilities.dp(2.0f);
                            f2 = this.innerProgress;
                        } else if (i10 == 4) {
                            fDp2 = (AndroidUtilities.dp(4.0f) * this.innerProgress) + AndroidUtilities.dp(1.0f);
                            fDp5 = AndroidUtilities.dp(3.0f);
                            fDp6 = AndroidUtilities.dp(2.0f);
                            f3 = this.innerProgress;
                        } else if (i10 == 5) {
                            fDp2 = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                            fDp3 = AndroidUtilities.dp(1.0f);
                            fDp4 = AndroidUtilities.dp(4.0f);
                            f2 = this.innerProgress;
                        } else if (i10 == 6) {
                            fDp2 = (AndroidUtilities.dp(4.0f) * this.innerProgress) + AndroidUtilities.dp(1.0f);
                            fDp5 = AndroidUtilities.dp(5.0f);
                            fDp6 = AndroidUtilities.dp(4.0f);
                            f3 = this.innerProgress;
                        } else {
                            fDp2 = AndroidUtilities.dp(5.0f) - (AndroidUtilities.dp(4.0f) * this.innerProgress);
                            fDp3 = AndroidUtilities.dp(1.0f);
                            fDp4 = AndroidUtilities.dp(2.0f);
                            f2 = this.innerProgress;
                        }
                        f4 = fDp3 + (fDp4 * f2);
                        if (this.chatCallProgress >= 1.0f || progress3 < 1.0f) {
                            canvas.save();
                            float f20 = this.chatCallProgress;
                            canvas.scale(f20 * progress3, f20 * progress3, f18, f19);
                        }
                        z2 = true;
                        this.rect.set(i8 - AndroidUtilities.dp(1.0f), f19 - fDp2, i8 + AndroidUtilities.dp(1.0f), fDp2 + f19);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        float f21 = f19 - f4;
                        float f22 = f19 + f4;
                        this.rect.set(i8 - AndroidUtilities.dp(5.0f), f21, i8 - AndroidUtilities.dp(3.0f), f22);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        this.rect.set(AndroidUtilities.dp(3.0f) + i8, f21, i8 + AndroidUtilities.dp(5.0f), f22);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        if (this.chatCallProgress >= 1.0f || progress3 < 1.0f) {
                            canvas.restore();
                        }
                        if (LiteMode.isEnabled(i)) {
                            float f23 = this.innerProgress + 0.04f;
                            this.innerProgress = f23;
                            if (f23 >= 1.0f) {
                                this.innerProgress = 0.0f;
                                int i11 = this.progressStage + 1;
                                this.progressStage = i11;
                                if (i11 >= 8) {
                                    this.progressStage = 0;
                                }
                            }
                            z6 = true;
                        }
                        z3 = this.hasCall;
                        float f24 = this.chatCallProgress;
                        if (z3) {
                            if (f24 > 0.0f) {
                                float f25 = f24 - f;
                                this.chatCallProgress = f25;
                                if (f25 < 0.0f) {
                                    this.chatCallProgress = 0.0f;
                                }
                            }
                        } else if (f24 < 1.0f) {
                            float f26 = f24 + f;
                            this.chatCallProgress = f26;
                            if (f26 > 1.0f) {
                                this.chatCallProgress = 1.0f;
                            }
                        }
                        if (this.rightFragmentOpenedProgress != 0.0f) {
                            canvas.restore();
                        }
                    }
                    f4 = fDp5 - (fDp6 * f3);
                    if (this.chatCallProgress >= 1.0f) {
                        canvas.save();
                        float f202 = this.chatCallProgress;
                        canvas.scale(f202 * progress3, f202 * progress3, f18, f19);
                        z2 = true;
                        this.rect.set(i8 - AndroidUtilities.dp(1.0f), f19 - fDp2, i8 + AndroidUtilities.dp(1.0f), fDp2 + f19);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        float f212 = f19 - f4;
                        float f222 = f19 + f4;
                        this.rect.set(i8 - AndroidUtilities.dp(5.0f), f212, i8 - AndroidUtilities.dp(3.0f), f222);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        this.rect.set(AndroidUtilities.dp(3.0f) + i8, f212, i8 + AndroidUtilities.dp(5.0f), f222);
                        canvas.drawRoundRect(this.rect, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), Theme.dialogs_onlineCirclePaint);
                        if (this.chatCallProgress >= 1.0f) {
                            canvas.restore();
                            if (LiteMode.isEnabled(i)) {
                            }
                            z3 = this.hasCall;
                            float f242 = this.chatCallProgress;
                            if (z3) {
                            }
                            if (this.rightFragmentOpenedProgress != 0.0f) {
                            }
                        }
                    }
                }
            }
            z4 = this.showTtl;
            float f142 = this.ttlProgress;
            if (z4) {
                if (f142 < 1.0f) {
                    this.ttlProgress = f142 + f;
                    z5 = z2;
                }
                z5 = z6;
            } else {
                if (f142 > 0.0f) {
                    this.ttlProgress = f142 - f;
                    z5 = z2;
                }
                z5 = z6;
            }
            this.ttlProgress = Utilities.clamp(this.ttlProgress, 1.0f, 0.0f);
            return z5;
        }
        z2 = true;
        f = 0.10666667f;
        z4 = this.showTtl;
        float f1422 = this.ttlProgress;
        if (z4) {
        }
        this.ttlProgress = Utilities.clamp(this.ttlProgress, 1.0f, 0.0f);
        return z5;
    }

    private void drawCounter(Canvas canvas, boolean z, int i, int i2, int i3, float f, boolean z2) {
        Paint paint;
        boolean z3;
        RectF rectF;
        float interpolation;
        RectF rectF2;
        boolean z4 = isForumCell() || isFolderCell();
        if (!(this.drawCount && this.drawCount2) && this.countChangeProgress == 1.0f) {
            return;
        }
        float f2 = (this.unreadCount != 0 || this.markUnread) ? this.countChangeProgress : 1.0f - this.countChangeProgress;
        int i4 = 255;
        if (z2) {
            if (this.counterPaintOutline == null) {
                Paint paint2 = new Paint();
                this.counterPaintOutline = paint2;
                paint2.setStyle(Paint.Style.STROKE);
                this.counterPaintOutline.setStrokeWidth(AndroidUtilities.dp(2.0f));
                this.counterPaintOutline.setStrokeJoin(Paint.Join.ROUND);
                this.counterPaintOutline.setStrokeCap(Paint.Cap.ROUND);
            }
            this.counterPaintOutline.setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhite), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chats_pinnedOverlay), 255), Color.alpha(r13) / 255.0f));
        }
        if (this.isTopic && this.forumTopic.read_inbox_max_id == 0) {
            if (this.topicCounterPaint == null) {
                this.topicCounterPaint = new Paint();
            }
            paint = this.topicCounterPaint;
            int color = Theme.getColor(z ? Theme.key_topics_unreadCounterMuted : Theme.key_topics_unreadCounter, this.resourcesProvider);
            paint.setColor(color);
            Theme.dialogs_countTextPaint2.setColor(color);
            i4 = z ? 30 : 40;
            z3 = true;
        } else {
            paint = (z || this.currentDialogFolderId != 0) ? Theme.dialogs_countGrayPaint : Theme.dialogs_countPaint;
            z3 = false;
        }
        StaticLayout staticLayout = this.countOldLayout;
        if (staticLayout == null || this.unreadCount == 0) {
            if (this.unreadCount != 0) {
                staticLayout = this.countLayout;
            }
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint2.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            float f3 = i;
            this.rect.set(i2, f3, this.countWidth + i2 + AndroidUtilities.dp(12.666f), i + AndroidUtilities.dp(20.666f));
            int iSave = canvas.save();
            if (f != 1.0f) {
                canvas.scale(f, f, this.rect.centerX(), this.rect.centerY());
            }
            if (f2 != 1.0f) {
                canvas.scale(f2, f2, this.rect.centerX(), this.rect.centerY());
            }
            if (z4) {
                if (this.counterPath == null || (rectF = this.counterPathRect) == null || !rectF.equals(this.rect)) {
                    RectF rectF3 = this.counterPathRect;
                    if (rectF3 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF3.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.dp(10.333f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(10.333f), AndroidUtilities.dp(10.333f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(10.333f), AndroidUtilities.dp(10.333f), this.counterPaintOutline);
                }
            }
            if (staticLayout != null) {
                canvas.save();
                canvas.translate(AndroidUtilities.dp(6.333f) + i2, f3 + AndroidUtilities.dpf2(3.0f));
                staticLayout.draw(canvas);
                canvas.restore();
            }
            canvas.restoreToCount(iSave);
        } else {
            paint.setAlpha((int) ((1.0f - this.reorderIconProgress) * i4));
            Theme.dialogs_countTextPaint2.setAlpha((int) ((1.0f - this.reorderIconProgress) * 255.0f));
            float f4 = f2 * 2.0f;
            float f5 = f4 > 1.0f ? 1.0f : f4;
            float f6 = 1.0f - f5;
            float f7 = (i2 * f5) + (i3 * f6);
            float f8 = i;
            this.rect.set(f7, f8, (this.countWidth * f5) + f7 + (this.countWidthOld * f6) + AndroidUtilities.dp(12.666f), i + AndroidUtilities.dp(20.666f));
            if (f2 <= 0.5f) {
                interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f4);
            } else {
                interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(1.0f - ((f2 - 0.5f) * 2.0f));
            }
            float f9 = (interpolation * 0.1f) + 1.0f;
            canvas.save();
            float f10 = f9 * f;
            canvas.scale(f10, f10, this.rect.centerX(), this.rect.centerY());
            if (z4) {
                if (this.counterPath == null || (rectF2 = this.counterPathRect) == null || !rectF2.equals(this.rect)) {
                    RectF rectF4 = this.counterPathRect;
                    if (rectF4 == null) {
                        this.counterPathRect = new RectF(this.rect);
                    } else {
                        rectF4.set(this.rect);
                    }
                    if (this.counterPath == null) {
                        this.counterPath = new Path();
                    }
                    BubbleCounterPath.addBubbleRect(this.counterPath, this.counterPathRect, AndroidUtilities.dp(10.333f));
                }
                canvas.drawPath(this.counterPath, paint);
                if (z2) {
                    canvas.drawPath(this.counterPath, this.counterPaintOutline);
                }
            } else {
                canvas.drawRoundRect(this.rect, AndroidUtilities.dp(10.333f), AndroidUtilities.dp(10.333f), paint);
                if (z2) {
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(10.333f), AndroidUtilities.dp(10.333f), this.counterPaintOutline);
                }
            }
            if (this.countAnimationStableLayout != null) {
                canvas.save();
                canvas.translate(AndroidUtilities.dpf2(6.333f) + f7, AndroidUtilities.dpf2(3.0f) + f8);
                this.countAnimationStableLayout.draw(canvas);
                canvas.restore();
            }
            int alpha = Theme.dialogs_countTextPaint2.getAlpha();
            float f11 = alpha;
            Theme.dialogs_countTextPaint2.setAlpha((int) (f11 * f5));
            if (this.countAnimationInLayout != null) {
                canvas.save();
                canvas.translate(AndroidUtilities.dpf2(6.333f) + f7, ((this.countAnimationIncrement ? AndroidUtilities.dp(17.0f) : -AndroidUtilities.dp(17.0f)) * f6) + f8 + AndroidUtilities.dpf2(3.0f));
                this.countAnimationInLayout.draw(canvas);
                canvas.restore();
            } else if (this.countLayout != null) {
                canvas.save();
                canvas.translate(AndroidUtilities.dpf2(6.333f) + f7, ((this.countAnimationIncrement ? AndroidUtilities.dp(17.0f) : -AndroidUtilities.dp(17.0f)) * f6) + f8 + AndroidUtilities.dpf2(3.0f));
                this.countLayout.draw(canvas);
                canvas.restore();
            }
            if (this.countOldLayout != null) {
                Theme.dialogs_countTextPaint2.setAlpha((int) (f11 * f6));
                canvas.save();
                canvas.translate(f7 + AndroidUtilities.dpf2(6.333f), ((this.countAnimationIncrement ? -AndroidUtilities.dp(17.0f) : AndroidUtilities.dp(17.0f)) * f5) + f8 + AndroidUtilities.dpf2(3.0f));
                this.countOldLayout.draw(canvas);
                canvas.restore();
            }
            Theme.dialogs_countTextPaint2.setAlpha(alpha);
            canvas.restore();
        }
        if (z3) {
            Theme.dialogs_countTextPaint2.setColor(Theme.getColor(Theme.key_chats_unreadCounterText));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createStatusDrawableAnimator(int i, int i2) {
        this.statusDrawableProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.statusDrawableAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(220L);
        this.statusDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animateFromStatusDrawableParams = i;
        this.animateToStatusDrawableParams = i2;
        this.statusDrawableAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$createStatusDrawableAnimator$4(valueAnimator);
            }
        });
        this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i3 = (DialogCell.this.drawClock ? 1 : 0) + (DialogCell.this.drawCheck1 ? 2 : 0) + (DialogCell.this.drawCheck2 ? 4 : 0);
                int i4 = DialogCell.this.animateToStatusDrawableParams;
                DialogCell dialogCell = DialogCell.this;
                if (i4 != i3) {
                    dialogCell.createStatusDrawableAnimator(dialogCell.animateToStatusDrawableParams, i3);
                } else {
                    dialogCell.statusDrawableAnimationInProgress = false;
                    DialogCell dialogCell2 = DialogCell.this;
                    dialogCell2.lastStatusDrawableParams = dialogCell2.animateToStatusDrawableParams;
                }
                DialogCell.this.invalidate();
            }
        });
        this.statusDrawableAnimationInProgress = true;
        this.statusDrawableAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createStatusDrawableAnimator$4(ValueAnimator valueAnimator) {
        this.statusDrawableProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void startOutAnimation() {
        PullForegroundDrawable pullForegroundDrawable = this.archivedChatsDrawable;
        if (pullForegroundDrawable != null) {
            if (this.isTopic) {
                pullForegroundDrawable.outCy = AndroidUtilities.dp(24.0f);
                this.archivedChatsDrawable.outCx = AndroidUtilities.dp(24.0f);
                PullForegroundDrawable pullForegroundDrawable2 = this.archivedChatsDrawable;
                pullForegroundDrawable2.outRadius = 0.0f;
                pullForegroundDrawable2.outImageSize = 0.0f;
            } else {
                pullForegroundDrawable.outCy = this.storyParams.originalAvatarRect.centerY();
                this.archivedChatsDrawable.outCx = this.storyParams.originalAvatarRect.centerX();
                this.archivedChatsDrawable.outRadius = this.storyParams.originalAvatarRect.width() / 2.0f;
                if (MessagesController.getInstance(this.currentAccount).getStoriesController().hasHiddenStories()) {
                    this.archivedChatsDrawable.outRadius -= AndroidUtilities.dpf2(3.5f);
                }
                this.archivedChatsDrawable.outImageSize = this.avatarImage.getBitmapWidth();
            }
            this.archivedChatsDrawable.startOutAnimation();
        }
    }

    public void onReorderStateChanged(boolean z, boolean z2) {
        if ((!getIsPinned() && z) || this.drawReorder == z) {
            if (getIsPinned()) {
                return;
            }
            this.drawReorder = false;
        } else {
            this.drawReorder = z;
            if (z2) {
                this.reorderIconProgress = z ? 0.0f : 1.0f;
            } else {
                this.reorderIconProgress = z ? 1.0f : 0.0f;
            }
            invalidate();
        }
    }

    public void setSliding(boolean z) {
        this.isSliding = z;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.translationDrawable || drawable == Theme.dialogs_archiveAvatarDrawable) {
            invalidate(drawable.getBounds());
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        DialogsActivity dialogsActivity;
        if (i == C2807R.id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
            dialogsActivity.showChatPreview(this);
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        PullForegroundDrawable pullForegroundDrawable;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isFolderCell() && (pullForegroundDrawable = this.archivedChatsDrawable) != null && SharedConfig.archiveHidden && pullForegroundDrawable.getPullProgress() == 0.0f) {
            accessibilityNodeInfo.setVisibleToUser(false);
        } else {
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(32);
            if (!isFolderCell() && this.parentFragment != null) {
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C2807R.id.acc_action_chat_preview, LocaleController.getString(C2807R.string.AccActionChatPreview)));
            }
        }
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 == null || !checkBox2.isChecked()) {
            return;
        }
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(true);
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        MessageObject captionMessage;
        TLRPC.User user;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        StringBuilder sb = new StringBuilder();
        String str = this.titleOverride;
        if (str != null) {
            sb.append(str);
            sb.append(". ");
        } else if (this.currentDialogFolderId == 1) {
            sb.append(LocaleController.getString(C2807R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString(C2807R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString(C2807R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC.User user2 = this.user;
                if (user2 != null) {
                    if (UserObject.isReplyUser(user2)) {
                        sb.append(LocaleController.getString(C2807R.string.RepliesTitle));
                    } else if (UserObject.isAnonymous(this.user)) {
                        sb.append(LocaleController.getString(C2807R.string.AnonymousForward));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString(C2807R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC.User user3 = this.user;
                        if (user3.self) {
                            sb.append(LocaleController.getString(C2807R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(user3.first_name, user3.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC.Chat chat = this.chat;
                    if (chat != null) {
                        if (chat.broadcast) {
                            sb.append(LocaleController.getString(C2807R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString(C2807R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString(C2807R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString(C2807R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString(C2807R.string.AccDescrUserOnline));
            sb.append(". ");
        }
        int i = this.unreadCount;
        if (i > 0) {
            sb.append(LocaleController.formatPluralString("NewMessages", i, new Object[0]));
            sb.append(". ");
        }
        int i2 = this.mentionCount;
        if (i2 > 0) {
            sb.append(LocaleController.formatPluralString("AccDescrMentionCount", i2, new Object[0]));
            sb.append(". ");
        }
        if (this.reactionMentionCount > 0) {
            sb.append(LocaleController.getString(C2807R.string.AccDescrMentionReaction));
            sb.append(". ");
        }
        MessageObject messageObject = this.message;
        if (messageObject == null || this.currentDialogFolderId != 0) {
            accessibilityEvent.setContentDescription(sb);
            setContentDescription(sb);
            return;
        }
        int i3 = this.lastMessageDate;
        if (i3 == 0) {
            i3 = messageObject.messageOwner.date;
        }
        String dateAudio = LocaleController.formatDateAudio(i3, true);
        if (this.message.isOut()) {
            sb.append(LocaleController.formatString("AccDescrSentDate", C2807R.string.AccDescrSentDate, dateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C2807R.string.AccDescrReceivedDate, dateAudio));
        }
        sb.append(". ");
        if (this.chat != null && !this.message.isOut() && this.message.isFromUser() && this.message.messageOwner.action == null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            sb.append(ContactsController.formatName(user.first_name, user.last_name));
            sb.append(". ");
        }
        if (this.encryptedChat == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.message.messageText);
            if (!this.message.isMediaEmpty() && (captionMessage = getCaptionMessage()) != null && !TextUtils.isEmpty(captionMessage.caption)) {
                if (sb2.length() > 0) {
                    sb2.append(". ");
                }
                sb2.append(captionMessage.caption);
            }
            StaticLayout staticLayout = this.messageLayout;
            int length = staticLayout == null ? -1 : staticLayout.getText().length();
            if (length > 0) {
                int length2 = sb2.length();
                int iIndexOf = sb2.indexOf("\n", length);
                if (iIndexOf < length2 && iIndexOf >= 0) {
                    length2 = iIndexOf;
                }
                int iIndexOf2 = sb2.indexOf("\t", length);
                if (iIndexOf2 < length2 && iIndexOf2 >= 0) {
                    length2 = iIndexOf2;
                }
                int iIndexOf3 = sb2.indexOf(" ", length);
                if (iIndexOf3 < length2 && iIndexOf3 >= 0) {
                    length2 = iIndexOf3;
                }
                sb.append(sb2.substring(0, length2));
            } else {
                sb.append((CharSequence) sb2);
            }
        }
        accessibilityEvent.setContentDescription(sb);
        setContentDescription(sb);
    }

    private MessageObject getCaptionMessage() {
        CharSequence charSequence;
        if (this.groupMessages == null) {
            MessageObject messageObject = this.message;
            if (messageObject == null || messageObject.caption == null) {
                return null;
            }
            return messageObject;
        }
        int i = 0;
        MessageObject messageObject2 = null;
        for (int i2 = 0; i2 < this.groupMessages.size(); i2++) {
            MessageObject messageObject3 = this.groupMessages.get(i2);
            if (messageObject3 != null && (charSequence = messageObject3.caption) != null) {
                if (!TextUtils.isEmpty(charSequence)) {
                    i++;
                }
                messageObject2 = messageObject3;
            }
        }
        if (i > 1) {
            return null;
        }
        return messageObject2;
    }

    public void updateMessageThumbs() {
        TLRPC.Message message;
        int i;
        MessageObject messageObject = this.message;
        if (messageObject == null) {
            return;
        }
        String restrictionReason = MessagesController.getInstance(messageObject.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason);
        MessageObject messageObject2 = this.message;
        int i2 = 0;
        if (messageObject2 != null && (message = messageObject2.messageOwner) != null) {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
                this.thumbsCount = 0;
                this.hasVideoThumb = false;
                TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
                int i3 = 0;
                while (i2 < tL_messageMediaPaidMedia.extended_media.size() && this.thumbsCount < 3) {
                    TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i2);
                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                        i = i3 + 1;
                        setThumb(i3, ((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).thumb);
                    } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                        i = i3 + 1;
                        setThumb(i3, ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media);
                    } else {
                        i2++;
                    }
                    i3 = i;
                    i2++;
                }
                return;
            }
        }
        ArrayList<MessageObject> arrayList = this.groupMessages;
        if (arrayList != null && arrayList.size() > 1 && TextUtils.isEmpty(restrictionReason) && this.currentDialogFolderId == 0 && this.encryptedChat == null) {
            this.thumbsCount = 0;
            this.hasVideoThumb = false;
            Collections.sort(this.groupMessages, Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda4
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((MessageObject) obj).getId();
                }
            }));
            while (i2 < Math.min(3, this.groupMessages.size())) {
                MessageObject messageObject3 = this.groupMessages.get(i2);
                if (messageObject3 != null && !messageObject3.needDrawBluredPreview() && (messageObject3.isPhoto() || messageObject3.isNewGif() || messageObject3.isVideo() || messageObject3.isRoundVideo() || messageObject3.isStoryMedia())) {
                    String str = messageObject3.isWebpage() ? messageObject3.messageOwner.media.webpage.type : null;
                    if (!Common.ASSET_APP.equals(str) && !"profile".equals(str) && !"article".equals(str) && (str == null || !str.startsWith("telegram_"))) {
                        setThumb(i2, messageObject3);
                    }
                }
                i2++;
            }
            return;
        }
        MessageObject messageObject4 = this.message;
        if (messageObject4 == null || this.currentDialogFolderId != 0) {
            return;
        }
        this.thumbsCount = 0;
        this.hasVideoThumb = false;
        if (messageObject4.needDrawBluredPreview()) {
            return;
        }
        if (this.message.isPhoto() || this.message.isNewGif() || this.message.isVideo() || this.message.isRoundVideo() || this.message.isStoryMedia()) {
            String str2 = this.message.isWebpage() ? this.message.messageOwner.media.webpage.type : null;
            if (Common.ASSET_APP.equals(str2) || "profile".equals(str2) || "article".equals(str2)) {
                return;
            }
            if (str2 == null || !str2.startsWith("telegram_")) {
                setThumb(0, this.message);
            }
        }
    }

    private void setThumb(int i, MessageObject messageObject) {
        TLRPC.MessageMedia messageMedia;
        ArrayList<TLRPC.PhotoSize> arrayList = messageObject.photoThumbs;
        TLObject tLObject = messageObject.photoThumbsObject;
        if (messageObject.isStoryMedia()) {
            TL_stories.StoryItem storyItem = messageObject.messageOwner.media.storyItem;
            if (storyItem == null || (messageMedia = storyItem.media) == null) {
                return;
            }
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                arrayList = document.thumbs;
                tLObject = document;
            } else {
                TLRPC.Photo photo = messageMedia.photo;
                if (photo != null) {
                    arrayList = photo.sizes;
                    tLObject = photo;
                }
            }
        }
        TLRPC.PhotoSize strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
        if (strippedPhotoSize == null) {
            strippedPhotoSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 40);
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
        TLRPC.PhotoSize photoSize = strippedPhotoSize != closestPhotoSizeWithSize ? closestPhotoSizeWithSize : null;
        if (photoSize == null || !DownloadController.getInstance(this.currentAccount).canDownloadMedia(messageObject)) {
            photoSize = strippedPhotoSize;
        }
        if (strippedPhotoSize != null) {
            this.hasVideoThumb = this.hasVideoThumb || messageObject.isVideo() || messageObject.isRoundVideo();
            int i2 = this.thumbsCount;
            if (i2 < 3) {
                this.thumbsCount = i2 + 1;
                this.drawPlay[i] = (messageObject.isVideo() || messageObject.isRoundVideo()) && !messageObject.hasMediaSpoilers();
                this.drawSpoiler[i] = messageObject.hasMediaSpoilers();
                int i3 = (messageObject.type != 1 || photoSize == null) ? 0 : photoSize.size;
                String str = messageObject.hasMediaSpoilers() ? "5_5_b" : "20_20";
                this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, tLObject), str, ImageLocation.getForObject(strippedPhotoSize, tLObject), str, i3, null, messageObject, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(messageObject.isRoundVideo() ? 18.0f : 2.0f));
                this.needEmoji = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setThumb(int i, TLRPC.MessageMedia messageMedia) {
        TLRPC.Photo photo;
        ArrayList<TLRPC.PhotoSize> arrayList;
        boolean z;
        TLObject tLObject;
        TLRPC.PhotoSize strippedPhotoSize;
        TLRPC.PhotoSize photoSize;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            TLRPC.Photo photo2 = messageMedia.photo;
            arrayList = photo2.sizes;
            photo = photo2;
        } else {
            if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                boolean zIsVideoDocument = MessageObject.isVideoDocument(messageMedia.document);
                TLRPC.Document document = messageMedia.document;
                z = zIsVideoDocument;
                arrayList = document.thumbs;
                tLObject = document;
                strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
                if (strippedPhotoSize == null) {
                    strippedPhotoSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, 40);
                }
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
                photoSize = strippedPhotoSize != closestPhotoSizeWithSize ? closestPhotoSizeWithSize : null;
                if (photoSize != null || !DownloadController.getInstance(this.currentAccount).canDownloadMedia(1, photoSize.size)) {
                    photoSize = strippedPhotoSize;
                }
                if (strippedPhotoSize == null) {
                    this.hasVideoThumb = this.hasVideoThumb || z;
                    int i2 = this.thumbsCount;
                    if (i2 < 3) {
                        this.thumbsCount = i2 + 1;
                        this.drawPlay[i] = z;
                        this.drawSpoiler[i] = false;
                        this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, tLObject), "20_20", ImageLocation.getForObject(strippedPhotoSize, tLObject), "20_20", (z || photoSize == null) ? 0 : photoSize.size, null, this.message, 0);
                        this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(2.0f));
                        this.needEmoji = false;
                        return;
                    }
                    return;
                }
                return;
            }
            photo = null;
            arrayList = null;
        }
        z = false;
        tLObject = photo;
        strippedPhotoSize = FileLoader.getStrippedPhotoSize(arrayList);
        if (strippedPhotoSize == null) {
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize(), false, null, true);
        if (strippedPhotoSize != closestPhotoSizeWithSize2) {
        }
        if (photoSize != null) {
            photoSize = strippedPhotoSize;
        }
        if (strippedPhotoSize == null) {
        }
    }

    private void setThumb(int i, TLRPC.PhotoSize photoSize) {
        if (i < 3 && photoSize != null) {
            this.hasVideoThumb = false;
            int i2 = this.thumbsCount;
            if (i2 < 3) {
                this.thumbsCount = i2 + 1;
                this.drawPlay[i] = false;
                this.drawSpoiler[i] = true;
                this.thumbImage[i].setImage(ImageLocation.getForObject(photoSize, this.message.messageOwner), "2_2_b", null, null, 0L, null, this.message, 0);
                this.thumbImage[i].setRoundRadius(AndroidUtilities.dp(2.0f));
                this.needEmoji = false;
            }
        }
    }

    public String getMessageNameString() {
        TLRPC.Chat chat;
        TLRPC.User user;
        String str;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        String str2;
        MessageObject messageObject;
        TLRPC.Message message2;
        TLRPC.User user2;
        MessageObject messageObject2;
        TLRPC.Message message3;
        TLRPC.MessageFwdHeader messageFwdHeader2;
        TLRPC.Message message4;
        TLRPC.MessageFwdHeader messageFwdHeader3;
        TLRPC.MessageFwdHeader messageFwdHeader4;
        MessageObject messageObject3 = this.message;
        if (messageObject3 == null) {
            return null;
        }
        long fromChatId = messageObject3.getFromChatId();
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (!this.isSavedDialog && this.currentDialogId == clientUserId) {
            long savedDialogId = this.message.getSavedDialogId();
            if (savedDialogId == clientUserId) {
                return null;
            }
            if (savedDialogId != UserObject.ANONYMOUS) {
                TLRPC.Message message5 = this.message.messageOwner;
                if (message5 != null && (messageFwdHeader4 = message5.fwd_from) != null) {
                    long peerDialogId = DialogObject.getPeerDialogId(messageFwdHeader4.saved_from_id);
                    if (peerDialogId == 0) {
                        peerDialogId = DialogObject.getPeerDialogId(this.message.messageOwner.fwd_from.from_id);
                    }
                    if (peerDialogId > 0 && peerDialogId != savedDialogId) {
                        return null;
                    }
                }
                fromChatId = savedDialogId;
            }
        }
        if (this.isSavedDialog && (message4 = this.message.messageOwner) != null && (messageFwdHeader3 = message4.fwd_from) != null) {
            fromChatId = DialogObject.getPeerDialogId(messageFwdHeader3.saved_from_id);
            if (fromChatId == 0) {
                fromChatId = DialogObject.getPeerDialogId(this.message.messageOwner.fwd_from.from_id);
            }
        }
        boolean zIsUserDialog = DialogObject.isUserDialog(fromChatId);
        int i = this.currentAccount;
        if (zIsUserDialog) {
            user = MessagesController.getInstance(i).getUser(Long.valueOf(fromChatId));
            chat = null;
        } else {
            chat = MessagesController.getInstance(i).getChat(Long.valueOf(-fromChatId));
            user = null;
        }
        long j = this.currentDialogId;
        if (j == clientUserId) {
            if (user != null) {
                return AndroidUtilities.escape(UserObject.getFirstName(user).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
            }
            if (chat != null) {
                return AndroidUtilities.escape(chat.title.replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
            }
            return null;
        }
        if (j == UserObject.VERIFY && (messageObject2 = this.message) != null && (message3 = messageObject2.messageOwner) != null && (messageFwdHeader2 = message3.fwd_from) != null) {
            String str3 = messageFwdHeader2.from_name;
            if (str3 != null) {
                return AndroidUtilities.escape(str3);
            }
            long peerDialogId2 = DialogObject.getPeerDialogId(messageFwdHeader2.from_id);
            boolean zIsUserDialog2 = DialogObject.isUserDialog(peerDialogId2);
            int i2 = this.currentAccount;
            if (zIsUserDialog2) {
                return UserObject.getUserName(MessagesController.getInstance(i2).getUser(Long.valueOf(peerDialogId2)));
            }
            TLRPC.Chat chat2 = MessagesController.getInstance(i2).getChat(Long.valueOf(-peerDialogId2));
            return chat2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat2.title;
        }
        if (this.message.isOutOwner() && user != null) {
            return LocaleController.getString(C2807R.string.FromYou);
        }
        if (!this.isSavedDialog && (messageObject = this.message) != null && (message2 = messageObject.messageOwner) != null && (message2.from_id instanceof TLRPC.TL_peerUser) && (user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.message.messageOwner.from_id.user_id))) != null) {
            return AndroidUtilities.escape(UserObject.getFirstName(user2).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
        }
        MessageObject messageObject4 = this.message;
        if (messageObject4 != null && (message = messageObject4.messageOwner) != null && (messageFwdHeader = message.fwd_from) != null && (str2 = messageFwdHeader.from_name) != null) {
            return AndroidUtilities.escape(str2);
        }
        if (user == null) {
            if (chat != null && (str = chat.title) != null) {
                return AndroidUtilities.escape(str.replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
            }
            return "DELETED";
        }
        if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
            if (UserObject.isDeleted(user)) {
                return LocaleController.getString(C2807R.string.HiddenName);
            }
            return AndroidUtilities.escape(ContactsController.formatName(user.first_name, user.last_name).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
        }
        return AndroidUtilities.escape(UserObject.getFirstName(user).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
    }

    private CharSequence getPreviewMessageNameString() {
        MessageObject messageObject;
        TLRPC.Chat chat;
        String str;
        String str2;
        TLRPC.Peer peer;
        String messageNameString = getMessageNameString();
        if (messageNameString != null || (messageObject = this.message) == null || messageObject.messageOwner == null) {
            return messageNameString;
        }
        if (this.currentDialogId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return null;
        }
        if (this.message.isOutOwner()) {
            return LocaleController.getString(C2807R.string.FromYou);
        }
        TLRPC.MessageFwdHeader messageFwdHeader = this.message.messageOwner.fwd_from;
        if (messageFwdHeader != null) {
            if (!TextUtils.isEmpty(messageFwdHeader.from_name)) {
                return AndroidUtilities.escape(messageFwdHeader.from_name);
            }
            if (!TextUtils.isEmpty(messageFwdHeader.saved_from_name)) {
                return AndroidUtilities.escape(messageFwdHeader.saved_from_name);
            }
            TLRPC.Peer peer2 = messageFwdHeader.from_id;
            long peerDialogId = peer2 != null ? DialogObject.getPeerDialogId(peer2) : 0L;
            if (peerDialogId == 0 && (peer = messageFwdHeader.saved_from_peer) != null) {
                peerDialogId = DialogObject.getPeerDialogId(peer);
            }
            if (peerDialogId != 0) {
                boolean zIsUserDialog = DialogObject.isUserDialog(peerDialogId);
                int i = this.currentAccount;
                if (zIsUserDialog) {
                    TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerDialogId));
                    if (user != null) {
                        return AndroidUtilities.escape(UserObject.getFirstName(user).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
                    }
                } else {
                    TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-peerDialogId));
                    if (chat2 != null && (str2 = chat2.title) != null) {
                        return AndroidUtilities.escape(str2.replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
                    }
                }
            }
        }
        TLRPC.Peer peer3 = this.message.messageOwner.from_id;
        if (peer3 == null) {
            return null;
        }
        long peerDialogId2 = DialogObject.getPeerDialogId(peer3);
        if (DialogObject.isUserDialog(peerDialogId2)) {
            TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId2));
            if (user2 != null) {
                return AndroidUtilities.escape(UserObject.getFirstName(user2).replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
            }
            return null;
        }
        if (peerDialogId2 == 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId2))) == null || (str = chat.title) == null) {
            return null;
        }
        return AndroidUtilities.escape(str.replace("\n", _UrlKt.FRAGMENT_ENCODE_SET));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.view.View, org.telegram.ui.Cells.DialogCell] */
    /* JADX WARN: Type inference failed for: r13v5, types: [android.text.Spannable, android.text.SpannableString, java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.CharSequence] */
    public SpannableStringBuilder getMessageStringFormatted(int i, String str, CharSequence charSequence, boolean z) {
        TLRPC.Message message;
        CharSequence string;
        String pluralString;
        String pluralString2;
        CharSequence charSequence2;
        String str2;
        SpannableStringBuilder spannableStringBuilderValueOf;
        TLRPC.TL_forumTopic tL_forumTopicFindTopic;
        MessageObject captionMessage = getCaptionMessage();
        MessageObject messageObject = this.message;
        CharSequence charSequence3 = messageObject != null ? messageObject.messageText : null;
        this.applyName = true;
        if (!TextUtils.isEmpty(str)) {
            return formatInternal(i, str, charSequence);
        }
        MessageObject messageObject2 = this.message;
        TLRPC.Message message2 = messageObject2.messageOwner;
        if (message2 instanceof TLRPC.TL_messageService) {
            CharSequence charSequence4 = messageObject2.messageTextShort;
            if (charSequence4 == null || ((message2.action instanceof TLRPC.TL_messageActionTopicCreate) && this.isTopic)) {
                charSequence4 = messageObject2.messageText;
            }
            if (MessageObject.isTopicActionMessage(messageObject2)) {
                spannableStringBuilderValueOf = formatInternal(i, charSequence4, charSequence);
                if ((this.message.topicIconDrawable[0] instanceof ForumBubbleDrawable) && (tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true))) != null) {
                    ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(tL_forumTopicFindTopic.icon_color);
                }
            } else {
                this.applyName = false;
                spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(charSequence4);
            }
            if (z) {
                applyThumbs(spannableStringBuilderValueOf);
            }
            return spannableStringBuilderValueOf;
        }
        if (captionMessage != null && (charSequence2 = captionMessage.caption) != null) {
            CharSequence string2 = charSequence2.toString();
            if (!this.needEmoji) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else if (captionMessage.isVideo()) {
                str2 = "📹 ";
            } else if (captionMessage.isVoice()) {
                str2 = "🎤 ";
            } else if (captionMessage.isMusic()) {
                str2 = "🎧 ";
            } else if (captionMessage.isPhoto()) {
                str2 = "🖼 ";
            } else {
                str2 = "📎 ";
            }
            if (captionMessage.hasHighlightedWords() && !TextUtils.isEmpty(captionMessage.messageOwner.message)) {
                CharSequence charSequenceEllipsizeCenterEnd = captionMessage.messageTrimmedToHighlight;
                int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 47);
                if (this.hasNameInMessage) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(charSequence.toString()));
                    }
                    measuredWidth = (int) (measuredWidth - this.currentMessagePaint.measureText(": "));
                }
                if (measuredWidth > 0 && captionMessage.messageTrimmedToHighlightCut) {
                    charSequenceEllipsizeCenterEnd = AndroidUtilities.ellipsizeCenterEnd(charSequenceEllipsizeCenterEnd, captionMessage.highlightedWords.get(0), measuredWidth, this.currentMessagePaint, 130);
                }
                return new SpannableStringBuilder(str2).append(charSequenceEllipsizeCenterEnd);
            }
            if (string2.length() > 150) {
                string2 = string2.subSequence(0, 150);
            }
            SpannableString spannableString = new SpannableString(string2);
            captionMessage.spoilLoginCode();
            MediaDataController.addTextStyleRuns(captionMessage.messageOwner.entities, string2, spannableString, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
            TLRPC.Message message3 = captionMessage.messageOwner;
            if (message3 != null) {
                ArrayList<TLRPC.MessageEntity> arrayList = message3.entities;
                TextPaint textPaint = this.currentMessagePaint;
                MediaDataController.addAnimatedEmojiSpans(arrayList, spannableString, textPaint != null ? textPaint.getFontMetricsInt() : null);
            }
            CharSequence charSequenceAppend = new SpannableStringBuilder(str2).append(AndroidUtilities.replaceNewLines(spannableString));
            if (z) {
                charSequenceAppend = applyThumbs(charSequenceAppend);
            }
            return formatInternal(i, charSequenceAppend, charSequence);
        }
        TL_iv.RichMessage richMessage = message2.rich_message;
        if (richMessage != null) {
            boolean zIsBlueBlock = richMessage.blocks.size() == 1 ? MessageObject.isBlueBlock(this.message.messageOwner.rich_message.blocks.get(0)) : false;
            SpannableStringBuilder internal = formatInternal(i, this.message.messageText, charSequence);
            if (zIsBlueBlock && !isForumCell()) {
                try {
                    internal.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_actionMessage, this.resourcesProvider), this.hasNameInMessage ? charSequence.length() + 2 : 0, internal.length(), 33);
                    return internal;
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
            return internal;
        }
        if (message2.media != null && !messageObject2.isMediaEmpty()) {
            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
            int i2 = Theme.key_chats_attachMessage;
            MessageObject messageObject3 = this.message;
            TLRPC.MessageMedia messageMedia = messageObject3.messageOwner.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageMediaPoll.poll.question;
                if (tL_textWithEntities != null && tL_textWithEntities.entities != null) {
                    SpannableString spannableString2 = new SpannableString(tL_messageMediaPoll.poll.question.text.replace('\n', ' '));
                    TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageMediaPoll.poll.question;
                    MediaDataController.addTextStyleRuns(tL_textWithEntities2.entities, tL_textWithEntities2.text, spannableString2);
                    MediaDataController.addAnimatedEmojiSpans(tL_messageMediaPoll.poll.question.entities, spannableString2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                    string = DialogMediaIconsHelper.addDialogMediaSpan(spannableString2, C2807R.drawable.dialog_media_poll_20, true);
                } else {
                    string = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities.text, C2807R.drawable.dialog_media_poll_20, true);
                }
            } else if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
                TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaToDo.todo.title;
                if (tL_textWithEntities3 != null && tL_textWithEntities3.entities != null) {
                    SpannableString spannableString3 = new SpannableString(tL_messageMediaToDo.todo.title.text.replace('\n', ' '));
                    TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaToDo.todo.title;
                    MediaDataController.addTextStyleRuns(tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString3);
                    MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString3, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                    string = DialogMediaIconsHelper.addDialogMediaSpan(spannableString3, C2807R.drawable.dialog_media_checklist_20, true);
                } else {
                    string = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities3.text, C2807R.drawable.dialog_media_checklist_20, true);
                }
            } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                string = DialogMediaIconsHelper.addDialogMediaSpan(messageMedia.game.title, C2807R.drawable.dialog_media_game_20, true);
            } else if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
                string = messageMedia.title;
            } else if (messageObject3.type == 14) {
                string = String.format("🎧 \u2068%s - %s\u2069", messageObject3.getMusicAuthor(), this.message.getMusicTitle());
            } else if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
                int size = ((TLRPC.TL_messageMediaPaidMedia) messageMedia).extended_media.size();
                if (this.hasVideoThumb) {
                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Media", size, new Object[0]) : LocaleController.getString(C2807R.string.AttachVideo);
                } else {
                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Photos", size, new Object[0]) : LocaleController.getString(C2807R.string.AttachPhoto);
                }
                string = StarsIntroActivity.replaceStars(LocaleController.formatString(C2807R.string.AttachPaidMedia, pluralString2));
                i2 = Theme.key_chats_actionMessage;
            } else if (this.thumbsCount > 1) {
                boolean z2 = this.hasVideoThumb;
                ArrayList<MessageObject> arrayList2 = this.groupMessages;
                if (z2) {
                    pluralString = LocaleController.formatPluralString("Media", arrayList2 == null ? 0 : arrayList2.size(), new Object[0]);
                } else {
                    pluralString = LocaleController.formatPluralString("Photos", arrayList2 == null ? 0 : arrayList2.size(), new Object[0]);
                }
                string = pluralString;
                i2 = Theme.key_chats_actionMessage;
            } else {
                string = charSequence3.toString();
                i2 = Theme.key_chats_actionMessage;
            }
            if (string instanceof String) {
                string = ((String) string).replace('\n', ' ');
            }
            if (z) {
                string = applyThumbs(string);
            }
            SpannableStringBuilder internal2 = formatInternal(i, string, charSequence);
            if (!isForumCell()) {
                try {
                    internal2.setSpan(new ForegroundColorSpanThemable(i2, this.resourcesProvider), this.hasNameInMessage ? charSequence.length() + 2 : 0, internal2.length(), 33);
                } catch (Exception e2) {
                    FileLog.m1040e(e2);
                }
            }
            return internal2;
        }
        MessageObject messageObject4 = this.message;
        CharSequence charSequenceReplaceNewLines = messageObject4.messageOwner.message;
        if (charSequenceReplaceNewLines != null) {
            if (messageObject4.hasHighlightedWords()) {
                CharSequence charSequence5 = this.message.messageTrimmedToHighlight;
                if (charSequence5 != null) {
                    charSequenceReplaceNewLines = charSequence5;
                }
                int measuredWidth2 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 33);
                if (this.hasNameInMessage) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(charSequence.toString()));
                    }
                    measuredWidth2 = (int) (measuredWidth2 - this.currentMessagePaint.measureText(": "));
                }
                if (measuredWidth2 > 0) {
                    charSequenceReplaceNewLines = AndroidUtilities.ellipsizeCenterEnd(charSequenceReplaceNewLines, this.message.highlightedWords.get(0), measuredWidth2, this.currentMessagePaint, 130);
                }
            } else {
                if (charSequenceReplaceNewLines.length() > 150) {
                    charSequenceReplaceNewLines = charSequenceReplaceNewLines.subSequence(0, 150);
                }
                charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceReplaceNewLines);
            }
            ?? spannableString4 = new SpannableString(charSequenceReplaceNewLines);
            MessageObject messageObject5 = this.message;
            if (messageObject5 != null) {
                messageObject5.spoilLoginCode();
            }
            MediaDataController.addTextStyleRuns(this.message, (Spannable) spannableString4, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
            MessageObject messageObject6 = this.message;
            if (messageObject6 != null && (message = messageObject6.messageOwner) != null) {
                ArrayList<TLRPC.MessageEntity> arrayList3 = message.entities;
                TextPaint textPaint2 = this.currentMessagePaint;
                MediaDataController.addAnimatedEmojiSpans(arrayList3, spannableString4, textPaint2 != null ? textPaint2.getFontMetricsInt() : null);
            }
            if (z) {
                spannableString4 = applyThumbs(spannableString4);
            }
            return formatInternal(i, spannableString4, charSequence);
        }
        return new SpannableStringBuilder();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.rightFragmentOpenedProgress != 0.0f || this.isTopic || this.isShareToStoryCell || !this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((!this.isTopic && !this.isShareToStoryCell && motionEvent.getAction() == 1) || motionEvent.getAction() == 3) {
            this.storyParams.checkOnTouchEvent(motionEvent, this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        CanvasButton canvasButton;
        int i;
        if (this.rightFragmentOpenedProgress == 0.0f && !this.isTopic && !this.isShareToStoryCell && this.storyParams.checkOnTouchEvent(motionEvent, this)) {
            return true;
        }
        DialogCellDelegate dialogCellDelegate = this.delegate;
        if (dialogCellDelegate == null || dialogCellDelegate.canClickButtonInside()) {
            if (this.openBot) {
                boolean zContains = this.openButtonRect.contains(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    this.openButtonBounce.setPressed(zContains);
                } else {
                    if (this.openButtonBounce.isPressed() && motionEvent.getAction() == 1) {
                        Utilities.Callback<TLRPC.User> callback = this.onOpenButtonClick;
                        if (callback != null) {
                            callback.run(this.user);
                        }
                        this.openButtonBounce.setPressed(false);
                        return true;
                    }
                    if (this.openButtonBounce.isPressed() && motionEvent.getAction() == 3) {
                        this.openButtonBounce.setPressed(false);
                        return true;
                    }
                }
                if (zContains) {
                    return true;
                }
            }
            if (this.lastTopicMessageUnread && (canvasButton = this.canvasButton) != null && this.buttonLayout != null && (((i = this.dialogsType) == 0 || i == 7 || i == 8) && canvasButton.checkTouchEvent(motionEvent))) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setClipProgress(float f) {
        this.clipProgress = f;
        invalidate();
    }

    public float getClipProgress() {
        return this.clipProgress;
    }

    public void setTopClip(int i) {
        this.topClip = i;
    }

    public void setBottomClip(int i) {
        this.bottomClip = i;
    }

    public void setArchivedPullAnimation(PullForegroundDrawable pullForegroundDrawable) {
        this.archivedChatsDrawable = pullForegroundDrawable;
    }

    public int getCurrentDialogFolderId() {
        return this.currentDialogFolderId;
    }

    public boolean isDialogFolder() {
        return this.currentDialogFolderId > 0;
    }

    public boolean isDialogCommunity() {
        return ChatObject.isCommunity(this.chat);
    }

    public MessageObject getMessage() {
        return this.message;
    }

    public void setDialogCellDelegate(DialogCellDelegate dialogCellDelegate) {
        this.delegate = dialogCellDelegate;
    }

    public class DialogUpdateHelper {
        public long lastDrawnDialogId;
        public boolean lastDrawnDialogIsFolder;
        public int lastDrawnDraftHash;
        public boolean lastDrawnHasCall;
        public long lastDrawnMessageId;
        public boolean lastDrawnPinned;
        public Integer lastDrawnPrintingType;
        public long lastDrawnReadState;
        public int lastDrawnSizeHash;
        public boolean lastDrawnTranslated;
        public int lastKnownTypingType;
        public int lastTopicsCount;
        long startWaitingTime;
        public boolean typingOutToTop;
        public float typingProgres;
        boolean waitngNewMessageFroTypingAnimation;

        private DialogUpdateHelper() {
            this.waitngNewMessageFroTypingAnimation = false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:144:0x02eb  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x02ef  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x02f4  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x016d  */
        /* JADX WARN: Type inference failed for: r10v21 */
        /* JADX WARN: Type inference failed for: r10v22 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v5, types: [int] */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference failed for: r8v10, types: [int] */
        /* JADX WARN: Type inference failed for: r8v34 */
        /* JADX WARN: Type inference failed for: r8v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean update() {
            Integer printingStringType;
            int size;
            boolean z;
            boolean z2;
            TLRPC.DraftMessage draft;
            ?? r4;
            ?? r10;
            TLRPC.Dialog dialog = MessagesController.getInstance(DialogCell.this.currentAccount).dialogs_dict.get(DialogCell.this.currentDialogId);
            DialogCell dialogCell = DialogCell.this;
            if (dialog == null) {
                if (dialogCell.dialogsType != 3 || this.lastDrawnDialogId == DialogCell.this.currentDialogId) {
                    return false;
                }
                this.lastDrawnDialogId = DialogCell.this.currentDialogId;
                return true;
            }
            int id = dialogCell.message == null ? 0 : DialogCell.this.message.getId() + DialogCell.this.message.hashCode();
            long j = ((long) dialog.read_inbox_max_id) + (((long) dialog.read_outbox_max_id) << 8) + (((long) (dialog.unread_count + (dialog.unread_mark ? -1 : 0))) << 16) + ((long) (dialog.unread_reactions_count > 0 ? 262144 : 0)) + ((long) (dialog.unread_mentions_count > 0 ? 524288 : 0)) + ((long) (dialog.unread_poll_votes_count > 0 ? TLObject.FLAG_21 : 0));
            if (DialogCell.this.isForumCell()) {
                int[] forumUnreadCount = MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().getForumUnreadCount(-DialogCell.this.currentDialogId);
                if (forumUnreadCount[2] > 0) {
                    j |= 1048576;
                }
                if (forumUnreadCount[4] > 0) {
                    j |= 4194304;
                }
            }
            if (!DialogCell.this.isForumCell()) {
                DialogCell dialogCell2 = DialogCell.this;
                printingStringType = ((dialogCell2.isDialogCell || dialogCell2.isTopic) && !TextUtils.isEmpty(MessagesController.getInstance(DialogCell.this.currentAccount).getPrintingString(DialogCell.this.currentDialogId, (long) DialogCell.this.getTopicId(), true))) ? MessagesController.getInstance(DialogCell.this.currentAccount).getPrintingStringType(DialogCell.this.currentDialogId, DialogCell.this.getTopicId()) : null;
            }
            int measuredWidth = DialogCell.this.getMeasuredWidth() + (DialogCell.this.getMeasuredHeight() << 16);
            if (DialogCell.this.isForumCell()) {
                ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().getTopics(-DialogCell.this.currentDialogId);
                size = topics == null ? -1 : topics.size();
                if (size == -1 && MessagesController.getInstance(DialogCell.this.currentAccount).getTopicsController().endIsReached(-DialogCell.this.currentDialogId)) {
                }
            } else {
                size = 0;
            }
            boolean z3 = DialogCell.this.isTopic;
            DialogCell dialogCell3 = DialogCell.this;
            if (z3) {
                z = false;
                z2 = MediaDataController.getInstance(dialogCell3.currentAccount).getDraftVoice(DialogCell.this.currentDialogId, (long) DialogCell.this.getTopicId()) != null;
                TLRPC.DraftMessage draft2 = !z2 ? MediaDataController.getInstance(DialogCell.this.currentAccount).getDraft(DialogCell.this.currentDialogId, DialogCell.this.getTopicId()) : null;
                draft = (draft2 == null || !TextUtils.isEmpty(draft2.message)) ? draft2 : null;
            } else {
                z = false;
                if (dialogCell3.isDialogCell) {
                    z2 = MediaDataController.getInstance(dialogCell3.currentAccount).getDraftVoice(DialogCell.this.currentDialogId, 0L) != null;
                    if (!z2) {
                        draft = MediaDataController.getInstance(DialogCell.this.currentAccount).getDraft(DialogCell.this.currentDialogId, 0L);
                    }
                } else {
                    z2 = false;
                }
            }
            if (draft == null) {
                r4 = z;
            } else {
                int iHashCode = draft.message.hashCode();
                TLRPC.InputReplyTo inputReplyTo = draft.reply_to;
                r4 = iHashCode + (inputReplyTo != null ? inputReplyTo.reply_to_msg_id << 16 : z);
            }
            boolean z4 = (DialogCell.this.chat != null && DialogCell.this.chat.call_active && DialogCell.this.chat.call_not_empty) ? true : z;
            boolean zIsTranslatingDialog = MessagesController.getInstance(DialogCell.this.currentAccount).getTranslateController().isTranslatingDialog(DialogCell.this.currentDialogId);
            if (this.lastDrawnSizeHash == measuredWidth && this.lastDrawnMessageId == id && this.lastDrawnTranslated == zIsTranslatingDialog && this.lastDrawnDialogId == DialogCell.this.currentDialogId && this.lastDrawnDialogIsFolder == dialog.isFolder && this.lastDrawnReadState == j && Objects.equals(this.lastDrawnPrintingType, printingStringType) && this.lastTopicsCount == size && r4 == this.lastDrawnDraftHash && this.lastDrawnPinned == DialogCell.this.drawPin && this.lastDrawnHasCall == z4 && DialogCell.this.draftVoice == z2) {
                return z;
            }
            if (this.lastDrawnDialogId != DialogCell.this.currentDialogId) {
                this.typingProgres = printingStringType == null ? 0.0f : 1.0f;
                this.waitngNewMessageFroTypingAnimation = z;
            } else {
                if (!Objects.equals(this.lastDrawnPrintingType, printingStringType) || this.waitngNewMessageFroTypingAnimation) {
                    boolean z5 = this.waitngNewMessageFroTypingAnimation;
                    if (z5 || printingStringType != null) {
                        if (z5 && this.lastDrawnMessageId != id) {
                            this.waitngNewMessageFroTypingAnimation = false;
                        }
                        ?? r102 = r4;
                        if (this.lastDrawnMessageId == id) {
                            this.typingOutToTop = false;
                            r10 = r102;
                        } else {
                            this.typingOutToTop = true;
                            r10 = r102;
                        }
                    } else {
                        this.waitngNewMessageFroTypingAnimation = true;
                        this.startWaitingTime = System.currentTimeMillis();
                    }
                    ?? r1022 = r4;
                    if (this.lastDrawnMessageId == id) {
                    }
                }
                if (printingStringType != null) {
                    this.lastKnownTypingType = printingStringType.intValue();
                }
                this.lastDrawnDialogId = DialogCell.this.currentDialogId;
                this.lastDrawnMessageId = id;
                this.lastDrawnDialogIsFolder = dialog.isFolder;
                this.lastDrawnReadState = j;
                this.lastDrawnPrintingType = printingStringType;
                this.lastDrawnSizeHash = measuredWidth;
                this.lastDrawnDraftHash = r10;
                this.lastTopicsCount = size;
                this.lastDrawnPinned = DialogCell.this.drawPin;
                this.lastDrawnHasCall = z4;
                this.lastDrawnTranslated = zIsTranslatingDialog;
                return true;
            }
            r10 = r4;
            if (printingStringType != null) {
            }
            this.lastDrawnDialogId = DialogCell.this.currentDialogId;
            this.lastDrawnMessageId = id;
            this.lastDrawnDialogIsFolder = dialog.isFolder;
            this.lastDrawnReadState = j;
            this.lastDrawnPrintingType = printingStringType;
            this.lastDrawnSizeHash = measuredWidth;
            this.lastDrawnDraftHash = r10;
            this.lastTopicsCount = size;
            this.lastDrawnPinned = DialogCell.this.drawPin;
            this.lastDrawnHasCall = z4;
            this.lastDrawnTranslated = zIsTranslatingDialog;
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void updateAnimationValues() {
            if (!this.waitngNewMessageFroTypingAnimation) {
                if (this.lastDrawnPrintingType != null && DialogCell.this.typingLayout != null) {
                    float f = this.typingProgres;
                    if (f != 1.0f) {
                        this.typingProgres = f + 0.08f;
                        DialogCell.this.invalidate();
                    }
                } else if (this.lastDrawnPrintingType == null) {
                    float f2 = this.typingProgres;
                    if (f2 != 0.0f) {
                        this.typingProgres = f2 - 0.08f;
                        DialogCell.this.invalidate();
                    }
                }
                this.typingProgres = Utilities.clamp(this.typingProgres, 1.0f, 0.0f);
                return;
            }
            if (System.currentTimeMillis() - this.startWaitingTime > 100) {
                this.waitngNewMessageFroTypingAnimation = false;
            }
            DialogCell.this.invalidate();
        }
    }

    @Override // org.telegram.ui.Cells.BaseCell, android.view.View
    public void invalidate() {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate(int i, int i2, int i3, int i4) {
        if (StoryViewer.animationInProgress) {
            return;
        }
        super.invalidate(i, i2, i3, i4);
    }

    public static class ForumFormattedNames {
        HashMap<Long, AvatarSpan> avatarSpans;
        CharSequence formattedNames;
        boolean isLoadingState;
        int lastMessageId;
        boolean lastTopicMessageUnread;
        private final DialogCell parent;
        int topMessageTopicEndIndex;
        int topMessageTopicStartIndex;

        public ForumFormattedNames(DialogCell dialogCell) {
            this.parent = dialogCell;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateSpans() {
            HashMap<Long, AvatarSpan> map = this.avatarSpans;
            if (map == null || map.isEmpty()) {
                return;
            }
            for (Map.Entry<Long, AvatarSpan> entry : this.avatarSpans.entrySet()) {
                entry.getValue().setDialogId(entry.getKey().longValue());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void formatTopicsNames(int i, MessageObject messageObject, TLRPC.Chat chat) {
            long topicId;
            boolean z;
            int length;
            int id = (messageObject == null || chat == null) ? 0 : messageObject.getId();
            if (this.lastMessageId != id || this.isLoadingState) {
                this.avatarSpans = null;
                this.topMessageTopicStartIndex = 0;
                this.topMessageTopicEndIndex = 0;
                this.lastTopicMessageUnread = false;
                this.isLoadingState = false;
                this.lastMessageId = id;
                com.exteragram.messenger.utils.ui.TextPaint textPaint = Theme.dialogs_messagePaint[0];
                if (chat != null) {
                    ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(i).getTopicsController().getTopics(chat.id);
                    boolean z2 = true;
                    if (topics != null && !topics.isEmpty()) {
                        ArrayList arrayList = new ArrayList(topics);
                        Collections.sort(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Cells.DialogCell$ForumFormattedNames$$ExternalSyntheticLambda0
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                return DialogCell.ForumFormattedNames.$r8$lambda$uICq3jFQRNqxUSEcmTlTge6AEXo((TLRPC.TL_forumTopic) obj);
                            }
                        }));
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        if (messageObject == null || ChatObject.isMonoForum(chat)) {
                            topicId = 0;
                            z = false;
                            length = 0;
                        } else {
                            topicId = MessageObject.getTopicId(i, messageObject.messageOwner, true);
                            TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(i).getTopicsController().findTopic(chat.id, topicId);
                            if (tL_forumTopicFindTopic != null) {
                                CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopicFindTopic, textPaint, false);
                                spannableStringBuilder.append(topicSpannedName);
                                length = tL_forumTopicFindTopic.unread_count > 0 ? topicSpannedName.length() : 0;
                                this.topMessageTopicStartIndex = 0;
                                this.topMessageTopicEndIndex = topicSpannedName.length();
                                if (messageObject.isOutOwner()) {
                                    this.lastTopicMessageUnread = false;
                                } else {
                                    this.lastTopicMessageUnread = tL_forumTopicFindTopic.unread_count > 0;
                                }
                            } else {
                                this.lastTopicMessageUnread = false;
                                length = 0;
                            }
                            if (this.lastTopicMessageUnread) {
                                spannableStringBuilder.append((CharSequence) " ");
                                spannableStringBuilder.setSpan(new FixedWidthSpan(AndroidUtilities.dp(3.0f)), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        if (ChatObject.isMonoForum(chat)) {
                            this.avatarSpans = new HashMap<>();
                            for (int i2 = 0; i2 < Math.min(4, arrayList.size()); i2++) {
                                if (spannableStringBuilder.length() != 0) {
                                    spannableStringBuilder.append((CharSequence) "  ");
                                }
                                long peerDialogId = DialogObject.getPeerDialogId(((TLRPC.TL_forumTopic) arrayList.get(i2)).from_id);
                                AvatarSpan avatarSpan = new AvatarSpan(this.parent, i);
                                avatarSpan.needDrawShadow = false;
                                avatarSpan.setDialogId(peerDialogId);
                                this.avatarSpans.put(Long.valueOf(peerDialogId), avatarSpan);
                                SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(DialogObject.getName(peerDialogId));
                                spannableStringBuilderValueOf.insert(0, (CharSequence) "  ");
                                spannableStringBuilderValueOf.setSpan(avatarSpan, 0, 1, 33);
                                spannableStringBuilder.append((CharSequence) spannableStringBuilderValueOf);
                            }
                        } else {
                            int i3 = 0;
                            for (int i4 = 4; i3 < Math.min(i4, arrayList.size()); i4 = 4) {
                                if (((TLRPC.TL_forumTopic) arrayList.get(i3)).id != topicId) {
                                    if (spannableStringBuilder.length() != 0) {
                                        if (z2 && z) {
                                            spannableStringBuilder.append((CharSequence) " ");
                                        } else {
                                            spannableStringBuilder.append((CharSequence) ", ");
                                        }
                                    }
                                    spannableStringBuilder.append(ForumUtilities.getTopicSpannedName((TLRPC.ForumTopic) arrayList.get(i3), textPaint, false));
                                    z2 = false;
                                }
                                i3++;
                            }
                        }
                        if (length > 0) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold(), 0, Theme.key_chats_name, null), 0, Math.min(spannableStringBuilder.length(), length + 2), 0);
                        }
                        this.formattedNames = spannableStringBuilder;
                        return;
                    }
                    if (MessagesController.getInstance(i).getTopicsController().endIsReached(chat.id)) {
                        this.formattedNames = LocaleController.getString(ChatObject.isMonoForum(chat) ? C2807R.string.NoMonoforumTopicsCreated : C2807R.string.NoTopicsCreated);
                        return;
                    }
                    MessagesController.getInstance(i).getTopicsController().preloadTopics(chat.id);
                    this.formattedNames = LocaleController.getString(C2807R.string.Loading);
                    this.isLoadingState = true;
                }
            }
        }

        public static /* synthetic */ int $r8$lambda$uICq3jFQRNqxUSEcmTlTge6AEXo(TLRPC.TL_forumTopic tL_forumTopic) {
            return -tL_forumTopic.top_message;
        }
    }

    private ColorFilter getAdaptiveEmojiColorFilter(int i, int i2) {
        if (this.adaptiveEmojiColorFilter == null) {
            this.adaptiveEmojiColor = new int[4];
            this.adaptiveEmojiColorFilter = new ColorFilter[4];
        }
        if (i2 != this.adaptiveEmojiColor[i] || this.adaptiveEmojiColorFilter[i] == null) {
            ColorFilter[] colorFilterArr = this.adaptiveEmojiColorFilter;
            this.adaptiveEmojiColor[i] = i2;
            colorFilterArr[i] = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN);
        }
        return this.adaptiveEmojiColorFilter[i];
    }

    public void showPremiumBlocked(boolean z) {
        Runnable runnable = this.unsubscribePremiumBlocked;
        if (z != (runnable != null)) {
            if (!z && runnable != null) {
                runnable.run();
                this.unsubscribePremiumBlocked = null;
            } else if (z) {
                this.unsubscribePremiumBlocked = NotificationCenter.getInstance(this.currentAccount).listen(this, NotificationCenter.userIsPremiumBlockedUpadted, new Utilities.Callback() { // from class: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$showPremiumBlocked$5((Object[]) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumBlocked$5(Object[] objArr) {
        updatePremiumBlocked(true);
    }

    private void updatePremiumBlocked(boolean z) {
        TL_account.RequirementToContact requirementToContactIsUserContactBlocked = (this.unsubscribePremiumBlocked == null || this.user == null) ? null : MessagesController.getInstance(this.currentAccount).isUserContactBlocked(this.user.id);
        if (this.premiumBlocked == DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked) && this.starsPriceBlocked == DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked)) {
            return;
        }
        this.premiumBlocked = DialogObject.isPremiumBlocked(requirementToContactIsUserContactBlocked);
        this.starsPriceBlocked = DialogObject.getMessagesStarsPrice(requirementToContactIsUserContactBlocked);
        if (!z) {
            this.premiumBlockedT.set(this.premiumBlocked, true);
            this.starsBlockedT.set(this.starsPriceBlocked > 0, true);
        }
        invalidate();
    }
}
