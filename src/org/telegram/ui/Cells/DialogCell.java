package org.telegram.ui.Cells;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
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
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
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
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ChatThemeController;
import org.telegram.messenger.CodeHighlighting;
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
        this.repostStoryDrawable = new ShareDialogCell.RepostStoryDrawable(getContext(), this, C2573R.drawable.forward_to_stories, this.resourcesProvider);
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
            this.openButtonText = new Text(LocaleController.getString(C2573R.string.BotOpen), 14.0f, AndroidUtilities.bold());
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
                return (((chat == null || chat.linked_community_id == 0) && (user == null || user.linked_community_id == 0)) || DialogCell.this.insideCommunityList) ? false : true;
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
        this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(52.0f));
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
                this.botVerification = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this, AndroidUtilities.dp(17.0f));
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
                FileLog.m898e(e);
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
                    strEscape = LocaleController.getString(C2573R.string.HiddenName);
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
                    strEscape = LocaleController.getString(C2573R.string.HiddenName);
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

    /* JADX WARN: Can't wrap try/catch for region: R(102:16|(1:18)|19|(1:26)(1:25)|27|(1:32)(1:31)|33|(1:35)|36|(1:47)(1:48)|49|(1:51)|52|(1:54)(1:55)|56|(7:58|(1:60)|2161|61|(1:63)|2162|64)(1:65)|66|(1:68)(1:69)|70|(9:72|(2:74|(2:83|(1:85)(1:86))(2:79|(1:81)(1:82)))(4:87|(1:92)(1:91)|93|(2:102|(1:104)(1:105))(2:98|(1:100)(1:101)))|106|(3:108|(1:110)(4:111|(1:113)|114|(1:120)(1:119))|121)(3:122|(1:124)|125)|126|(1:128)(1:129)|130|(1:132)(1:(1:134)(1:(1:136)(1:137)))|138)(13:139|(1:150)(1:149)|151|(2:160|(1:162)(1:163))(2:156|(1:158)(1:159))|164|(1:(2:167|(2:177|(1:179)(1:180))(2:172|(1:174)(1:176))))(7:(0)(4:184|(4:186|(1:188)(2:190|(1:192)(3:193|(1:195)(2:196|(5:201|(1:206)(1:205)|207|(1:212)(1:211)|213)(1:200))|214))|189|214)(3:215|(12:217|(1:219)(2:220|(1:222)(5:223|(1:228)(1:227)|229|(1:236)(1:235)|237))|238|(1:245)(1:244)|246|(1:252)(1:251)|253|(5:255|(0)(1:259)|262|(2:264|(1:266)(2:267|(1:269)(1:270)))(2:271|(1:273))|(0)(1:277))(1:260)|261|262|(0)(0)|(0))(1:279)|278)|280|(1:285)(1:284))|286|(1:290)|291|(6:293|(1:295)(1:296)|297|(1:299)(1:300)|301|(1:306)(1:305))(2:307|(5:313|(1:315)(1:316)|317|(1:319)(1:320)|321)(1:312))|322|(1:(2:339|(2:345|(2:347|(8:355|(1:368)(2:338|369)|370|(11:372|(1:374)(1:375)|376|(4:378|(1:380)|(1:382)|383)|384|(1:386)(1:387)|388|(1:390)(1:391)|392|(2:400|(1:402))(2:397|(1:399))|403)(3:404|(1:406)(3:(6:409|(1:411)(1:412)|413|(1:415)(1:416)|(1:418)(1:419)|420)(1:421)|422|(5:426|1020|(1:(7:1038|(1:1040)(2:1041|(2:1043|(1:1045))(1:1046))|1047|(2:1049|(3:1053|(1:1055)(1:1056)|1057))(2:1058|(1:1060))|1061|(1:1068)(1:1067)|1069)(2:1030|(2:1036|1026)(1:1037)))(1:1024)|1025|1026)(3:427|(1:429)(2:431|(2:433|(1:435)(2:436|(1:438)(3:439|(2:441|(1:443)(2:444|(1:446)(2:447|(1:449)(2:450|(2:452|(1:454)(1:455))))))(2:457|(0)(3:461|(1:466)(1:465)|467))|456)))(5:468|(1:470)(1:472)|471|473|(8:502|503|(1:505)(7:507|(4:509|(2:511|(2:513|(2:515|(1:517)(2:519|(1:521)(1:522)))(2:523|(1:525)(2:526|(1:528)(2:529|(1:531)(1:532)))))(0))(1:533)|518|534)(2:536|(8:547|(1:(2:562|(29:569|598|(1:607)(1:606)|608|(1:610)(1:611)|612|(1:628)(1:627)|(1:636)(1:635)|637|(2:660|(2:662|(2:680|(8:689|(1:691)(2:692|(5:694|(1:701)|700|702|(2:704|(1:706)))(2:707|(2:714|(2:716|(2:721|(1:723)(2:724|(1:726)(1:727)))(2:728|(2:772|(3:774|(2:776|(1:778)(1:779))(2:780|(1:782)(1:783))|784)(2:785|(4:787|(3:(1:790)(1:792)|791|793)(3:795|(1:797)(1:798)|799)|794|800)(5:801|(2:803|(4:805|(1:807)(1:808)|(1:810)(1:811)|812)(0))(2:814|(1:816)(2:817|(2:819|(1:824)(1:823))(2:825|(2:827|(1:832)(1:831))(2:833|(1:835)(2:836|(1:838)(2:839|(1:841)(2:842|(3:856|(4:863|(1:865)|866|(2:868|(3:870|(1:872)(1:873)|874)))(2:860|(1:862))|875)(2:846|(3:848|(2:850|(1:852))(1:853)|854)(1:855)))))))))|813|876|(2:880|(2:882|(2:884|(1:886))))(0))))(5:732|(1:734)(2:735|(1:737)(2:738|(1:740)(2:741|(1:743)(2:744|(1:746)(1:747)))))|748|(3:764|(3:766|(1:768)(1:769)|770)|771)(4:752|(2:754|(1:756)(1:757))|(1:761)|762)|763)))(0))(1:713)))|887|(1:889)|890|(6:892|(3:900|(1:902)|903)(2:896|(1:898)(1:899))|904|(1:906)|907|(3:909|(1:912)|911)(0))|(1:918)(1:916)|917)))(0))(1:650)|919|(2:(1:935)(1:(1:938))|(1:946)(1:945))(1:933)|947|(2:949|(2:951|(2:953|(2:955|(3:957|(1:963)(1:962)|964)))))|965|(1:971)(1:970)|(1:973)|974|(1:995)(4:(3:2144|985|986)(1:989)|990|2138|991)|996|(1:1000)|1001|(4:1003|(1:1005)|1006|(1:1008)(1:1009))|1010|555|1011|(1:1013)(2:1016|(1:1018)(2:1019|1015))|1014|1015)(10:570|(2:572|(4:574|(1:576)(1:578)|577|579)(3:580|(1:582)(1:583)|584))(2:586|(9:591|(0)|585|594|(1:596)(1:597)|1011|(0)(0)|1014|1015)(7:590|594|(0)(0)|1011|(0)(0)|1014|1015))|593|585|594|(0)(0)|1011|(0)(0)|1014|1015))(1:561))(1:553)|554|555|1011|(0)(0)|1014|1015)(3:540|(1:545)(1:544)|546))|535|1011|(0)(0)|1014|1015)|506|1011|(0)(0)|1014|1015)(2:487|(9:489|(8:491|(3:493|(1:495)(3:497|(1:499)(1:500)|501)|496)|(0)(0)|506|1011|(0)(0)|1014|1015)(0)|503|(0)(0)|506|1011|(0)(0)|1014|1015)(0))))|430))|407)|1070|(2:1072|(2:1074|(2:1076|(2:1078|(2:1080|(2:1082|(2:1084|(3:1086|(1:1090)|1091))))))))|1092|(6:1095|(1:1097)(2:1098|(1:1100)(2:1101|(1:1103)(1:1094)))|1104|(4:1108|1213|(1:1220)(1:1219)|1221)(4:1109|(4:1111|(1:(2:1114|1118)(1:1115))(1:1117)|1116|1118)(10:1119|(1:1121)(2:1123|(1:1125)(2:1126|(1:1128)(8:1129|1130|(1:1132)(1:1133)|1134|(3:1136|(1:1152)(1:1151)|1153)(1:1154)|1155|(1:1157)(1:1158)|1159)))|1122|1130|(0)(0)|1134|(0)(0)|1155|(0)(0)|1159)|1160|(2:1211|1212)(3:1165|(2:1167|(1:1169)(2:1170|(1:1172)(2:1173|(4:1175|(3:1177|(1:1179)(1:1180)|1181)(2:1183|(3:1185|(1:1196)(1:1197)|1198)(3:1199|(1:1207)(1:1206)|1208))|1182|1209)(1:1210))))(0)|1212))|1222|(7:1238|1237|1239|(1:1241)|1242|(2:1245|(1:1247)(3:1248|(3:1250|(5:1252|(1:1254)|1255|(1:1259)|(1:1261))(2:1263|(4:1265|(1:1267)|1268|(1:1270)(1:1271))(2:1272|(1:1280)(2:1276|(1:1278)(1:1279))))|1262)(3:1281|(3:1283|(1:1285)(2:1286|(1:1288)(2:1289|(2:1303|(4:1305|(1:1307)|1308|(1:1310)(1:1311))(1:1312))(2:1293|(1:1295)(2:1296|(1:1298)(3:1299|(1:1301)|1302)))))|1262)|1261)|(1:1316)))|1244)(2:1226|(6:1228|1239|(0)|1242|(0)|1244)(2:1229|(10:1231|(1:1233)|1234|(1:1236)(0)|1237|1239|(0)|1242|(0)|1244)(0))))(0))(0))(0))(0))(10:331|(0)|338|369|370|(0)(0)|1070|(0)|1092|(0)(0)))(0))|175|286|(2:288|290)|291|(0)(0)|322|(2:324|(3:327|339|(3:341|345|(0)(0))(0))(0))(0))|1317|(4:1319|(1:1321)(1:1322)|1323|(1:1325)(1:1326))(1:1327)|1328|(3:1330|(1:1332)(1:1333)|1334)(1:1335)|1336|(1:1338)(1:1339)|1340|(3:1342|(1:1344)|1345)|1346|(2:1348|(1:1350)(1:1351))(2:1353|(2:1355|(2:1357|(1:1359)(1:1360))(2:1361|(1:1363)(1:1364))))|1352|1365|(1:1379)(1:1380)|1381|(1:(4:1392|(1:1394)|1395|(1:1397))(2:1398|(2:1400|(1:1402))(2:1403|(2:1405|(1:1407))(2:1408|(2:1410|(1:1412))(2:1413|(4:1415|(1:1417)(1:1418)|1419|(1:1421)))))))(4:1385|(1:1387)|1388|(1:1390))|1422|(1:1424)|1425|(2:1427|(1:1429))|1430|2146|1431|(1:1433)|1434|(1:1436)|1439|2153|(5:1441|1442|1443|(1:1445)(1:1446)|1447)(2:1450|(3:1452|(1:1454)(1:1455)|1456))|1457|(1:1459)(1:1460)|1461|(1:1463)|1464|(1:1471)(1:1470)|1472|(1:1474)(1:1475)|1476|(1:1481)(1:1480)|1482|1485|(6:1489|1522|(1:1524)(1:1525)|1526|(2:1527|(5:1529|(1:1531)(1:1532)|1533|(2:1542|2182)(2:1541|2183)|1543)(1:2181))|1544)(10:1490|(1:1492)(1:1494)|1493|1495|(1:1497)(1:1498)|1499|(1:1501)(1:1502)|1503|(2:1504|(5:1506|(1:1508)(1:1509)|1510|(2:1519|2164)(2:1518|2165)|1520)(1:2163))|1521)|1545|(1:1547)(1:1548)|1549|(1:1551)|1552|(1:1562)|1563|(2:1565|(1:1567)(1:1568))|1569|(2:1571|(1:1573)(1:1574))(1:(6:(4:1612|(1:1614)(1:1616)|1615|1617)(1:1618)|(6:1620|(1:1622)(1:1623)|1624|(3:1626|(1:1628)(1:1629)|1630)(3:1632|(1:1634)(1:1635)|1636)|1631|1637)(1:1638)|1639|(2:1641|(4:1643|(3:1645|(1:1647)(1:1648)|1649)|1650|(3:1652|(1:1654)(1:1655)|1656))(5:1657|(3:1659|(1:1661)(1:1662)|1663)|1664|(3:1666|(1:1668)(1:1669)|1670)|1671))|1672|(2:1674|(6:1676|(1:1678)|1679|(3:1681|(1:1683)(1:1684)|1685)|1686|(3:1688|(1:1690)(1:1691)|1692))(7:1693|(1:1695)|1696|(3:1698|(1:1700)(1:1701)|1702)|1703|(3:1705|(1:1707)(1:1708)|1709)|1710)))(2:1582|(1:1610)(6:1594|(1:1603)(2:1599|(1:1601)(1:1602))|1604|(1:1606)(1:1608)|1607|1609)))|(7:(1:1713)|1714|(1:1716)|1717|(1:1725)(1:1726)|1727|(1:1731))|1732|(1:1738)(1:1737)|1739|(3:1747|(1:1749)(1:1750)|1751)|1752|(3:(1:1759)(1:1758)|1760|(2:1761|(1:1763)(1:2166)))(1:(34:1776|2155|1777|(8:1786|2159|1787|1792|(1:1797)(1:1796)|1798|(2:1799|(1:1801)(1:2180))|1802)(6:1781|(1:1783)(0)|2159|1787|1792|(5:1794|1797|1798|(3:1799|(0)(0)|1801)|1802)(0))|1820|(1:1822)|1823|2134|1824|(1:1826)(1:1827)|2133|1828|2148|1829|(2:1831|(2:1839|(5:1841|1842|2149|1843|1844)(7:1836|1847|1848|2140|1849|1850|1851))(0))|2157|1856|(3:1858|(6:1860|(1:1884)(5:1864|(2:1873|(0))|1886|(1:2170)(2:1890|2168)|1891)|1885|1886|(2:1888|2170)(1:2169)|1891)|2167)|1892|(1:1902)(9:1903|(2:1910|(2:1912|(2:1914|(1:1921)(1:1920))))(0)|1970|1976|(9:(8:1981|(1:1983)|1984|(1:1986)|1987|(2:1999|(1:2001)(1:2002))(2:2003|(1:2005)(2:2006|(1:2008)(2:2009|(1:2011)(2:2012|(3:2014|(1:2016)(1:2017)|2018)(1:2019)))))|2020|(2:2022|(1:2024)))|2025|(3:2029|(1:(1:2172)(2:2031|(1:2033)(2:2171|2034)))|(1:2036))|2037|(3:2041|(1:(1:2173)(2:2043|(1:2045)(2:2174|2046)))|(1:2048))|2049|(2:2055|(1:2057))|2058|(4:2062|(1:2064)|2175|2065))(9:(8:2069|(1:2071)|2072|(4:2074|(1:2076)|2077|(1:2079))|2080|(1:2082)|2083|(1:2085))|2086|(4:2090|(1:2092)|2176|2093)|2094|(4:2098|(1:2100)|2177|2101)|2102|(4:2106|(1:2108)|2178|2109)|2110|(1:2114))|2115|(3:(1:2125)(1:2124)|2126|(1:2128)(1:2129))|2130|2131)|1922|(1:1929)(1:1928)|1930|(1:1936)(1:1934)|1935|1937|(9:1943|(2:1946|1947)|1948|2151|1949|(1:1951)(1:1952)|1953|1954|1969)(10:1957|(2:1959|(1:1963))|1964|2136|1965|1966|2142|1967|1968|1969)|1970|1976|(0)(0)|2115|(3:2117|2119|(4:2122|2125|2126|(0)(0))(0))|2130|2131)(3:1768|1803|(4:1809|(1:1814)(1:1813)|1815|(2:1816|(1:1818)(1:2179)))(1:1808)))|1819|1820|(0)|1823|2134|1824|(0)(0)|2133|1828|2148|1829|(0)|2157|1856|(0)|1892|(7:1894|1896|1898|1900|1902|1922|(4:1924|1929|1930|(5:1932|1936|1935|1937|(11:1939|1941|1943|(2:1946|1947)|1948|2151|1949|(0)(0)|1953|1954|1969)(10:1941|1943|(0)|1948|2151|1949|(0)(0)|1953|1954|1969))(0))(0))(6:1896|1898|1900|1902|1922|(0)(0))|1970|1976|(0)(0)|2115|(0)|2130|2131) */
    /* JADX WARN: Can't wrap try/catch for region: R(85:16|(1:18)|19|(1:26)(1:25)|27|(1:32)(1:31)|33|(1:35)|36|(1:47)(1:48)|49|(1:51)|52|(1:54)(1:55)|56|(7:58|(1:60)|2161|61|(1:63)|2162|64)(1:65)|66|(1:68)(1:69)|70|(9:72|(2:74|(2:83|(1:85)(1:86))(2:79|(1:81)(1:82)))(4:87|(1:92)(1:91)|93|(2:102|(1:104)(1:105))(2:98|(1:100)(1:101)))|106|(3:108|(1:110)(4:111|(1:113)|114|(1:120)(1:119))|121)(3:122|(1:124)|125)|126|(1:128)(1:129)|130|(1:132)(1:(1:134)(1:(1:136)(1:137)))|138)(13:139|(1:150)(1:149)|151|(2:160|(1:162)(1:163))(2:156|(1:158)(1:159))|164|(1:(2:167|(2:177|(1:179)(1:180))(2:172|(1:174)(1:176))))(7:(0)(4:184|(4:186|(1:188)(2:190|(1:192)(3:193|(1:195)(2:196|(5:201|(1:206)(1:205)|207|(1:212)(1:211)|213)(1:200))|214))|189|214)(3:215|(12:217|(1:219)(2:220|(1:222)(5:223|(1:228)(1:227)|229|(1:236)(1:235)|237))|238|(1:245)(1:244)|246|(1:252)(1:251)|253|(5:255|(0)(1:259)|262|(2:264|(1:266)(2:267|(1:269)(1:270)))(2:271|(1:273))|(0)(1:277))(1:260)|261|262|(0)(0)|(0))(1:279)|278)|280|(1:285)(1:284))|286|(1:290)|291|(6:293|(1:295)(1:296)|297|(1:299)(1:300)|301|(1:306)(1:305))(2:307|(5:313|(1:315)(1:316)|317|(1:319)(1:320)|321)(1:312))|322|(1:(2:339|(2:345|(2:347|(8:355|(1:368)(2:338|369)|370|(11:372|(1:374)(1:375)|376|(4:378|(1:380)|(1:382)|383)|384|(1:386)(1:387)|388|(1:390)(1:391)|392|(2:400|(1:402))(2:397|(1:399))|403)(3:404|(1:406)(3:(6:409|(1:411)(1:412)|413|(1:415)(1:416)|(1:418)(1:419)|420)(1:421)|422|(5:426|1020|(1:(7:1038|(1:1040)(2:1041|(2:1043|(1:1045))(1:1046))|1047|(2:1049|(3:1053|(1:1055)(1:1056)|1057))(2:1058|(1:1060))|1061|(1:1068)(1:1067)|1069)(2:1030|(2:1036|1026)(1:1037)))(1:1024)|1025|1026)(3:427|(1:429)(2:431|(2:433|(1:435)(2:436|(1:438)(3:439|(2:441|(1:443)(2:444|(1:446)(2:447|(1:449)(2:450|(2:452|(1:454)(1:455))))))(2:457|(0)(3:461|(1:466)(1:465)|467))|456)))(5:468|(1:470)(1:472)|471|473|(8:502|503|(1:505)(7:507|(4:509|(2:511|(2:513|(2:515|(1:517)(2:519|(1:521)(1:522)))(2:523|(1:525)(2:526|(1:528)(2:529|(1:531)(1:532)))))(0))(1:533)|518|534)(2:536|(8:547|(1:(2:562|(29:569|598|(1:607)(1:606)|608|(1:610)(1:611)|612|(1:628)(1:627)|(1:636)(1:635)|637|(2:660|(2:662|(2:680|(8:689|(1:691)(2:692|(5:694|(1:701)|700|702|(2:704|(1:706)))(2:707|(2:714|(2:716|(2:721|(1:723)(2:724|(1:726)(1:727)))(2:728|(2:772|(3:774|(2:776|(1:778)(1:779))(2:780|(1:782)(1:783))|784)(2:785|(4:787|(3:(1:790)(1:792)|791|793)(3:795|(1:797)(1:798)|799)|794|800)(5:801|(2:803|(4:805|(1:807)(1:808)|(1:810)(1:811)|812)(0))(2:814|(1:816)(2:817|(2:819|(1:824)(1:823))(2:825|(2:827|(1:832)(1:831))(2:833|(1:835)(2:836|(1:838)(2:839|(1:841)(2:842|(3:856|(4:863|(1:865)|866|(2:868|(3:870|(1:872)(1:873)|874)))(2:860|(1:862))|875)(2:846|(3:848|(2:850|(1:852))(1:853)|854)(1:855)))))))))|813|876|(2:880|(2:882|(2:884|(1:886))))(0))))(5:732|(1:734)(2:735|(1:737)(2:738|(1:740)(2:741|(1:743)(2:744|(1:746)(1:747)))))|748|(3:764|(3:766|(1:768)(1:769)|770)|771)(4:752|(2:754|(1:756)(1:757))|(1:761)|762)|763)))(0))(1:713)))|887|(1:889)|890|(6:892|(3:900|(1:902)|903)(2:896|(1:898)(1:899))|904|(1:906)|907|(3:909|(1:912)|911)(0))|(1:918)(1:916)|917)))(0))(1:650)|919|(2:(1:935)(1:(1:938))|(1:946)(1:945))(1:933)|947|(2:949|(2:951|(2:953|(2:955|(3:957|(1:963)(1:962)|964)))))|965|(1:971)(1:970)|(1:973)|974|(1:995)(4:(3:2144|985|986)(1:989)|990|2138|991)|996|(1:1000)|1001|(4:1003|(1:1005)|1006|(1:1008)(1:1009))|1010|555|1011|(1:1013)(2:1016|(1:1018)(2:1019|1015))|1014|1015)(10:570|(2:572|(4:574|(1:576)(1:578)|577|579)(3:580|(1:582)(1:583)|584))(2:586|(9:591|(0)|585|594|(1:596)(1:597)|1011|(0)(0)|1014|1015)(7:590|594|(0)(0)|1011|(0)(0)|1014|1015))|593|585|594|(0)(0)|1011|(0)(0)|1014|1015))(1:561))(1:553)|554|555|1011|(0)(0)|1014|1015)(3:540|(1:545)(1:544)|546))|535|1011|(0)(0)|1014|1015)|506|1011|(0)(0)|1014|1015)(2:487|(9:489|(8:491|(3:493|(1:495)(3:497|(1:499)(1:500)|501)|496)|(0)(0)|506|1011|(0)(0)|1014|1015)(0)|503|(0)(0)|506|1011|(0)(0)|1014|1015)(0))))|430))|407)|1070|(2:1072|(2:1074|(2:1076|(2:1078|(2:1080|(2:1082|(2:1084|(3:1086|(1:1090)|1091))))))))|1092|(6:1095|(1:1097)(2:1098|(1:1100)(2:1101|(1:1103)(1:1094)))|1104|(4:1108|1213|(1:1220)(1:1219)|1221)(4:1109|(4:1111|(1:(2:1114|1118)(1:1115))(1:1117)|1116|1118)(10:1119|(1:1121)(2:1123|(1:1125)(2:1126|(1:1128)(8:1129|1130|(1:1132)(1:1133)|1134|(3:1136|(1:1152)(1:1151)|1153)(1:1154)|1155|(1:1157)(1:1158)|1159)))|1122|1130|(0)(0)|1134|(0)(0)|1155|(0)(0)|1159)|1160|(2:1211|1212)(3:1165|(2:1167|(1:1169)(2:1170|(1:1172)(2:1173|(4:1175|(3:1177|(1:1179)(1:1180)|1181)(2:1183|(3:1185|(1:1196)(1:1197)|1198)(3:1199|(1:1207)(1:1206)|1208))|1182|1209)(1:1210))))(0)|1212))|1222|(7:1238|1237|1239|(1:1241)|1242|(2:1245|(1:1247)(3:1248|(3:1250|(5:1252|(1:1254)|1255|(1:1259)|(1:1261))(2:1263|(4:1265|(1:1267)|1268|(1:1270)(1:1271))(2:1272|(1:1280)(2:1276|(1:1278)(1:1279))))|1262)(3:1281|(3:1283|(1:1285)(2:1286|(1:1288)(2:1289|(2:1303|(4:1305|(1:1307)|1308|(1:1310)(1:1311))(1:1312))(2:1293|(1:1295)(2:1296|(1:1298)(3:1299|(1:1301)|1302)))))|1262)|1261)|(1:1316)))|1244)(2:1226|(6:1228|1239|(0)|1242|(0)|1244)(2:1229|(10:1231|(1:1233)|1234|(1:1236)(0)|1237|1239|(0)|1242|(0)|1244)(0))))(0))(0))(0))(0))(10:331|(0)|338|369|370|(0)(0)|1070|(0)|1092|(0)(0)))(0))|175|286|(2:288|290)|291|(0)(0)|322|(2:324|(3:327|339|(3:341|345|(0)(0))(0))(0))(0))|1317|(4:1319|(1:1321)(1:1322)|1323|(1:1325)(1:1326))(1:1327)|1328|(3:1330|(1:1332)(1:1333)|1334)(1:1335)|1336|(1:1338)(1:1339)|1340|(3:1342|(1:1344)|1345)|1346|(2:1348|(1:1350)(1:1351))(2:1353|(2:1355|(2:1357|(1:1359)(1:1360))(2:1361|(1:1363)(1:1364))))|1352|1365|(1:1379)(1:1380)|1381|(1:(4:1392|(1:1394)|1395|(1:1397))(2:1398|(2:1400|(1:1402))(2:1403|(2:1405|(1:1407))(2:1408|(2:1410|(1:1412))(2:1413|(4:1415|(1:1417)(1:1418)|1419|(1:1421)))))))(4:1385|(1:1387)|1388|(1:1390))|1422|(1:1424)|1425|(2:1427|(1:1429))|1430|(6:2146|1431|(1:1433)|1434|(1:1436)|1439)|(13:2153|(5:1441|1442|1443|(1:1445)(1:1446)|1447)(2:1450|(3:1452|(1:1454)(1:1455)|1456))|1457|(1:1459)(1:1460)|1461|(1:1463)|1464|(1:1471)(1:1470)|1472|(1:1474)(1:1475)|1476|(1:1481)(1:1480)|1482)|1485|(6:1489|1522|(1:1524)(1:1525)|1526|(2:1527|(5:1529|(1:1531)(1:1532)|1533|(2:1542|2182)(2:1541|2183)|1543)(1:2181))|1544)(10:1490|(1:1492)(1:1494)|1493|1495|(1:1497)(1:1498)|1499|(1:1501)(1:1502)|1503|(2:1504|(5:1506|(1:1508)(1:1509)|1510|(2:1519|2164)(2:1518|2165)|1520)(1:2163))|1521)|1545|(1:1547)(1:1548)|1549|(1:1551)|1552|(1:1562)|1563|(2:1565|(1:1567)(1:1568))|1569|(2:1571|(1:1573)(1:1574))(1:(6:(4:1612|(1:1614)(1:1616)|1615|1617)(1:1618)|(6:1620|(1:1622)(1:1623)|1624|(3:1626|(1:1628)(1:1629)|1630)(3:1632|(1:1634)(1:1635)|1636)|1631|1637)(1:1638)|1639|(2:1641|(4:1643|(3:1645|(1:1647)(1:1648)|1649)|1650|(3:1652|(1:1654)(1:1655)|1656))(5:1657|(3:1659|(1:1661)(1:1662)|1663)|1664|(3:1666|(1:1668)(1:1669)|1670)|1671))|1672|(2:1674|(6:1676|(1:1678)|1679|(3:1681|(1:1683)(1:1684)|1685)|1686|(3:1688|(1:1690)(1:1691)|1692))(7:1693|(1:1695)|1696|(3:1698|(1:1700)(1:1701)|1702)|1703|(3:1705|(1:1707)(1:1708)|1709)|1710)))(2:1582|(1:1610)(6:1594|(1:1603)(2:1599|(1:1601)(1:1602))|1604|(1:1606)(1:1608)|1607|1609)))|(7:(1:1713)|1714|(1:1716)|1717|(1:1725)(1:1726)|1727|(1:1731))|1732|(1:1738)(1:1737)|1739|(3:1747|(1:1749)(1:1750)|1751)|1752|(3:(1:1759)(1:1758)|1760|(2:1761|(1:1763)(1:2166)))(1:(34:1776|2155|1777|(8:1786|2159|1787|1792|(1:1797)(1:1796)|1798|(2:1799|(1:1801)(1:2180))|1802)(6:1781|(1:1783)(0)|2159|1787|1792|(5:1794|1797|1798|(3:1799|(0)(0)|1801)|1802)(0))|1820|(1:1822)|1823|2134|1824|(1:1826)(1:1827)|2133|1828|2148|1829|(2:1831|(2:1839|(5:1841|1842|2149|1843|1844)(7:1836|1847|1848|2140|1849|1850|1851))(0))|2157|1856|(3:1858|(6:1860|(1:1884)(5:1864|(2:1873|(0))|1886|(1:2170)(2:1890|2168)|1891)|1885|1886|(2:1888|2170)(1:2169)|1891)|2167)|1892|(1:1902)(9:1903|(2:1910|(2:1912|(2:1914|(1:1921)(1:1920))))(0)|1970|1976|(9:(8:1981|(1:1983)|1984|(1:1986)|1987|(2:1999|(1:2001)(1:2002))(2:2003|(1:2005)(2:2006|(1:2008)(2:2009|(1:2011)(2:2012|(3:2014|(1:2016)(1:2017)|2018)(1:2019)))))|2020|(2:2022|(1:2024)))|2025|(3:2029|(1:(1:2172)(2:2031|(1:2033)(2:2171|2034)))|(1:2036))|2037|(3:2041|(1:(1:2173)(2:2043|(1:2045)(2:2174|2046)))|(1:2048))|2049|(2:2055|(1:2057))|2058|(4:2062|(1:2064)|2175|2065))(9:(8:2069|(1:2071)|2072|(4:2074|(1:2076)|2077|(1:2079))|2080|(1:2082)|2083|(1:2085))|2086|(4:2090|(1:2092)|2176|2093)|2094|(4:2098|(1:2100)|2177|2101)|2102|(4:2106|(1:2108)|2178|2109)|2110|(1:2114))|2115|(3:(1:2125)(1:2124)|2126|(1:2128)(1:2129))|2130|2131)|1922|(1:1929)(1:1928)|1930|(1:1936)(1:1934)|1935|1937|(9:1943|(2:1946|1947)|1948|2151|1949|(1:1951)(1:1952)|1953|1954|1969)(10:1957|(2:1959|(1:1963))|1964|2136|1965|1966|2142|1967|1968|1969)|1970|1976|(0)(0)|2115|(3:2117|2119|(4:2122|2125|2126|(0)(0))(0))|2130|2131)(3:1768|1803|(4:1809|(1:1814)(1:1813)|1815|(2:1816|(1:1818)(1:2179)))(1:1808)))|1819|1820|(0)|1823|2134|1824|(0)(0)|2133|1828|2148|1829|(0)|2157|1856|(0)|1892|(7:1894|1896|1898|1900|1902|1922|(4:1924|1929|1930|(5:1932|1936|1935|1937|(11:1939|1941|1943|(2:1946|1947)|1948|2151|1949|(0)(0)|1953|1954|1969)(10:1941|1943|(0)|1948|2151|1949|(0)(0)|1953|1954|1969))(0))(0))(6:1896|1898|1900|1902|1922|(0)(0))|1970|1976|(0)(0)|2115|(0)|2130|2131) */
    /* JADX WARN: Can't wrap try/catch for region: R(90:16|(1:18)|19|(1:26)(1:25)|27|(1:32)(1:31)|33|(1:35)|36|(1:47)(1:48)|49|(1:51)|52|(1:54)(1:55)|56|(7:58|(1:60)|2161|61|(1:63)|2162|64)(1:65)|66|(1:68)(1:69)|70|(9:72|(2:74|(2:83|(1:85)(1:86))(2:79|(1:81)(1:82)))(4:87|(1:92)(1:91)|93|(2:102|(1:104)(1:105))(2:98|(1:100)(1:101)))|106|(3:108|(1:110)(4:111|(1:113)|114|(1:120)(1:119))|121)(3:122|(1:124)|125)|126|(1:128)(1:129)|130|(1:132)(1:(1:134)(1:(1:136)(1:137)))|138)(13:139|(1:150)(1:149)|151|(2:160|(1:162)(1:163))(2:156|(1:158)(1:159))|164|(1:(2:167|(2:177|(1:179)(1:180))(2:172|(1:174)(1:176))))(7:(0)(4:184|(4:186|(1:188)(2:190|(1:192)(3:193|(1:195)(2:196|(5:201|(1:206)(1:205)|207|(1:212)(1:211)|213)(1:200))|214))|189|214)(3:215|(12:217|(1:219)(2:220|(1:222)(5:223|(1:228)(1:227)|229|(1:236)(1:235)|237))|238|(1:245)(1:244)|246|(1:252)(1:251)|253|(5:255|(0)(1:259)|262|(2:264|(1:266)(2:267|(1:269)(1:270)))(2:271|(1:273))|(0)(1:277))(1:260)|261|262|(0)(0)|(0))(1:279)|278)|280|(1:285)(1:284))|286|(1:290)|291|(6:293|(1:295)(1:296)|297|(1:299)(1:300)|301|(1:306)(1:305))(2:307|(5:313|(1:315)(1:316)|317|(1:319)(1:320)|321)(1:312))|322|(1:(2:339|(2:345|(2:347|(8:355|(1:368)(2:338|369)|370|(11:372|(1:374)(1:375)|376|(4:378|(1:380)|(1:382)|383)|384|(1:386)(1:387)|388|(1:390)(1:391)|392|(2:400|(1:402))(2:397|(1:399))|403)(3:404|(1:406)(3:(6:409|(1:411)(1:412)|413|(1:415)(1:416)|(1:418)(1:419)|420)(1:421)|422|(5:426|1020|(1:(7:1038|(1:1040)(2:1041|(2:1043|(1:1045))(1:1046))|1047|(2:1049|(3:1053|(1:1055)(1:1056)|1057))(2:1058|(1:1060))|1061|(1:1068)(1:1067)|1069)(2:1030|(2:1036|1026)(1:1037)))(1:1024)|1025|1026)(3:427|(1:429)(2:431|(2:433|(1:435)(2:436|(1:438)(3:439|(2:441|(1:443)(2:444|(1:446)(2:447|(1:449)(2:450|(2:452|(1:454)(1:455))))))(2:457|(0)(3:461|(1:466)(1:465)|467))|456)))(5:468|(1:470)(1:472)|471|473|(8:502|503|(1:505)(7:507|(4:509|(2:511|(2:513|(2:515|(1:517)(2:519|(1:521)(1:522)))(2:523|(1:525)(2:526|(1:528)(2:529|(1:531)(1:532)))))(0))(1:533)|518|534)(2:536|(8:547|(1:(2:562|(29:569|598|(1:607)(1:606)|608|(1:610)(1:611)|612|(1:628)(1:627)|(1:636)(1:635)|637|(2:660|(2:662|(2:680|(8:689|(1:691)(2:692|(5:694|(1:701)|700|702|(2:704|(1:706)))(2:707|(2:714|(2:716|(2:721|(1:723)(2:724|(1:726)(1:727)))(2:728|(2:772|(3:774|(2:776|(1:778)(1:779))(2:780|(1:782)(1:783))|784)(2:785|(4:787|(3:(1:790)(1:792)|791|793)(3:795|(1:797)(1:798)|799)|794|800)(5:801|(2:803|(4:805|(1:807)(1:808)|(1:810)(1:811)|812)(0))(2:814|(1:816)(2:817|(2:819|(1:824)(1:823))(2:825|(2:827|(1:832)(1:831))(2:833|(1:835)(2:836|(1:838)(2:839|(1:841)(2:842|(3:856|(4:863|(1:865)|866|(2:868|(3:870|(1:872)(1:873)|874)))(2:860|(1:862))|875)(2:846|(3:848|(2:850|(1:852))(1:853)|854)(1:855)))))))))|813|876|(2:880|(2:882|(2:884|(1:886))))(0))))(5:732|(1:734)(2:735|(1:737)(2:738|(1:740)(2:741|(1:743)(2:744|(1:746)(1:747)))))|748|(3:764|(3:766|(1:768)(1:769)|770)|771)(4:752|(2:754|(1:756)(1:757))|(1:761)|762)|763)))(0))(1:713)))|887|(1:889)|890|(6:892|(3:900|(1:902)|903)(2:896|(1:898)(1:899))|904|(1:906)|907|(3:909|(1:912)|911)(0))|(1:918)(1:916)|917)))(0))(1:650)|919|(2:(1:935)(1:(1:938))|(1:946)(1:945))(1:933)|947|(2:949|(2:951|(2:953|(2:955|(3:957|(1:963)(1:962)|964)))))|965|(1:971)(1:970)|(1:973)|974|(1:995)(4:(3:2144|985|986)(1:989)|990|2138|991)|996|(1:1000)|1001|(4:1003|(1:1005)|1006|(1:1008)(1:1009))|1010|555|1011|(1:1013)(2:1016|(1:1018)(2:1019|1015))|1014|1015)(10:570|(2:572|(4:574|(1:576)(1:578)|577|579)(3:580|(1:582)(1:583)|584))(2:586|(9:591|(0)|585|594|(1:596)(1:597)|1011|(0)(0)|1014|1015)(7:590|594|(0)(0)|1011|(0)(0)|1014|1015))|593|585|594|(0)(0)|1011|(0)(0)|1014|1015))(1:561))(1:553)|554|555|1011|(0)(0)|1014|1015)(3:540|(1:545)(1:544)|546))|535|1011|(0)(0)|1014|1015)|506|1011|(0)(0)|1014|1015)(2:487|(9:489|(8:491|(3:493|(1:495)(3:497|(1:499)(1:500)|501)|496)|(0)(0)|506|1011|(0)(0)|1014|1015)(0)|503|(0)(0)|506|1011|(0)(0)|1014|1015)(0))))|430))|407)|1070|(2:1072|(2:1074|(2:1076|(2:1078|(2:1080|(2:1082|(2:1084|(3:1086|(1:1090)|1091))))))))|1092|(6:1095|(1:1097)(2:1098|(1:1100)(2:1101|(1:1103)(1:1094)))|1104|(4:1108|1213|(1:1220)(1:1219)|1221)(4:1109|(4:1111|(1:(2:1114|1118)(1:1115))(1:1117)|1116|1118)(10:1119|(1:1121)(2:1123|(1:1125)(2:1126|(1:1128)(8:1129|1130|(1:1132)(1:1133)|1134|(3:1136|(1:1152)(1:1151)|1153)(1:1154)|1155|(1:1157)(1:1158)|1159)))|1122|1130|(0)(0)|1134|(0)(0)|1155|(0)(0)|1159)|1160|(2:1211|1212)(3:1165|(2:1167|(1:1169)(2:1170|(1:1172)(2:1173|(4:1175|(3:1177|(1:1179)(1:1180)|1181)(2:1183|(3:1185|(1:1196)(1:1197)|1198)(3:1199|(1:1207)(1:1206)|1208))|1182|1209)(1:1210))))(0)|1212))|1222|(7:1238|1237|1239|(1:1241)|1242|(2:1245|(1:1247)(3:1248|(3:1250|(5:1252|(1:1254)|1255|(1:1259)|(1:1261))(2:1263|(4:1265|(1:1267)|1268|(1:1270)(1:1271))(2:1272|(1:1280)(2:1276|(1:1278)(1:1279))))|1262)(3:1281|(3:1283|(1:1285)(2:1286|(1:1288)(2:1289|(2:1303|(4:1305|(1:1307)|1308|(1:1310)(1:1311))(1:1312))(2:1293|(1:1295)(2:1296|(1:1298)(3:1299|(1:1301)|1302)))))|1262)|1261)|(1:1316)))|1244)(2:1226|(6:1228|1239|(0)|1242|(0)|1244)(2:1229|(10:1231|(1:1233)|1234|(1:1236)(0)|1237|1239|(0)|1242|(0)|1244)(0))))(0))(0))(0))(0))(10:331|(0)|338|369|370|(0)(0)|1070|(0)|1092|(0)(0)))(0))|175|286|(2:288|290)|291|(0)(0)|322|(2:324|(3:327|339|(3:341|345|(0)(0))(0))(0))(0))|1317|(4:1319|(1:1321)(1:1322)|1323|(1:1325)(1:1326))(1:1327)|1328|(3:1330|(1:1332)(1:1333)|1334)(1:1335)|1336|(1:1338)(1:1339)|1340|(3:1342|(1:1344)|1345)|1346|(2:1348|(1:1350)(1:1351))(2:1353|(2:1355|(2:1357|(1:1359)(1:1360))(2:1361|(1:1363)(1:1364))))|1352|1365|(1:1379)(1:1380)|1381|(1:(4:1392|(1:1394)|1395|(1:1397))(2:1398|(2:1400|(1:1402))(2:1403|(2:1405|(1:1407))(2:1408|(2:1410|(1:1412))(2:1413|(4:1415|(1:1417)(1:1418)|1419|(1:1421)))))))(4:1385|(1:1387)|1388|(1:1390))|1422|(1:1424)|1425|(2:1427|(1:1429))|1430|2146|1431|(1:1433)|1434|(1:1436)|1439|(13:2153|(5:1441|1442|1443|(1:1445)(1:1446)|1447)(2:1450|(3:1452|(1:1454)(1:1455)|1456))|1457|(1:1459)(1:1460)|1461|(1:1463)|1464|(1:1471)(1:1470)|1472|(1:1474)(1:1475)|1476|(1:1481)(1:1480)|1482)|1485|(6:1489|1522|(1:1524)(1:1525)|1526|(2:1527|(5:1529|(1:1531)(1:1532)|1533|(2:1542|2182)(2:1541|2183)|1543)(1:2181))|1544)(10:1490|(1:1492)(1:1494)|1493|1495|(1:1497)(1:1498)|1499|(1:1501)(1:1502)|1503|(2:1504|(5:1506|(1:1508)(1:1509)|1510|(2:1519|2164)(2:1518|2165)|1520)(1:2163))|1521)|1545|(1:1547)(1:1548)|1549|(1:1551)|1552|(1:1562)|1563|(2:1565|(1:1567)(1:1568))|1569|(2:1571|(1:1573)(1:1574))(1:(6:(4:1612|(1:1614)(1:1616)|1615|1617)(1:1618)|(6:1620|(1:1622)(1:1623)|1624|(3:1626|(1:1628)(1:1629)|1630)(3:1632|(1:1634)(1:1635)|1636)|1631|1637)(1:1638)|1639|(2:1641|(4:1643|(3:1645|(1:1647)(1:1648)|1649)|1650|(3:1652|(1:1654)(1:1655)|1656))(5:1657|(3:1659|(1:1661)(1:1662)|1663)|1664|(3:1666|(1:1668)(1:1669)|1670)|1671))|1672|(2:1674|(6:1676|(1:1678)|1679|(3:1681|(1:1683)(1:1684)|1685)|1686|(3:1688|(1:1690)(1:1691)|1692))(7:1693|(1:1695)|1696|(3:1698|(1:1700)(1:1701)|1702)|1703|(3:1705|(1:1707)(1:1708)|1709)|1710)))(2:1582|(1:1610)(6:1594|(1:1603)(2:1599|(1:1601)(1:1602))|1604|(1:1606)(1:1608)|1607|1609)))|(7:(1:1713)|1714|(1:1716)|1717|(1:1725)(1:1726)|1727|(1:1731))|1732|(1:1738)(1:1737)|1739|(3:1747|(1:1749)(1:1750)|1751)|1752|(3:(1:1759)(1:1758)|1760|(2:1761|(1:1763)(1:2166)))(1:(34:1776|2155|1777|(8:1786|2159|1787|1792|(1:1797)(1:1796)|1798|(2:1799|(1:1801)(1:2180))|1802)(6:1781|(1:1783)(0)|2159|1787|1792|(5:1794|1797|1798|(3:1799|(0)(0)|1801)|1802)(0))|1820|(1:1822)|1823|2134|1824|(1:1826)(1:1827)|2133|1828|2148|1829|(2:1831|(2:1839|(5:1841|1842|2149|1843|1844)(7:1836|1847|1848|2140|1849|1850|1851))(0))|2157|1856|(3:1858|(6:1860|(1:1884)(5:1864|(2:1873|(0))|1886|(1:2170)(2:1890|2168)|1891)|1885|1886|(2:1888|2170)(1:2169)|1891)|2167)|1892|(1:1902)(9:1903|(2:1910|(2:1912|(2:1914|(1:1921)(1:1920))))(0)|1970|1976|(9:(8:1981|(1:1983)|1984|(1:1986)|1987|(2:1999|(1:2001)(1:2002))(2:2003|(1:2005)(2:2006|(1:2008)(2:2009|(1:2011)(2:2012|(3:2014|(1:2016)(1:2017)|2018)(1:2019)))))|2020|(2:2022|(1:2024)))|2025|(3:2029|(1:(1:2172)(2:2031|(1:2033)(2:2171|2034)))|(1:2036))|2037|(3:2041|(1:(1:2173)(2:2043|(1:2045)(2:2174|2046)))|(1:2048))|2049|(2:2055|(1:2057))|2058|(4:2062|(1:2064)|2175|2065))(9:(8:2069|(1:2071)|2072|(4:2074|(1:2076)|2077|(1:2079))|2080|(1:2082)|2083|(1:2085))|2086|(4:2090|(1:2092)|2176|2093)|2094|(4:2098|(1:2100)|2177|2101)|2102|(4:2106|(1:2108)|2178|2109)|2110|(1:2114))|2115|(3:(1:2125)(1:2124)|2126|(1:2128)(1:2129))|2130|2131)|1922|(1:1929)(1:1928)|1930|(1:1936)(1:1934)|1935|1937|(9:1943|(2:1946|1947)|1948|2151|1949|(1:1951)(1:1952)|1953|1954|1969)(10:1957|(2:1959|(1:1963))|1964|2136|1965|1966|2142|1967|1968|1969)|1970|1976|(0)(0)|2115|(3:2117|2119|(4:2122|2125|2126|(0)(0))(0))|2130|2131)(3:1768|1803|(4:1809|(1:1814)(1:1813)|1815|(2:1816|(1:1818)(1:2179)))(1:1808)))|1819|1820|(0)|1823|2134|1824|(0)(0)|2133|1828|2148|1829|(0)|2157|1856|(0)|1892|(7:1894|1896|1898|1900|1902|1922|(4:1924|1929|1930|(5:1932|1936|1935|1937|(11:1939|1941|1943|(2:1946|1947)|1948|2151|1949|(0)(0)|1953|1954|1969)(10:1941|1943|(0)|1948|2151|1949|(0)(0)|1953|1954|1969))(0))(0))(6:1896|1898|1900|1902|1922|(0)(0))|1970|1976|(0)(0)|2115|(0)|2130|2131) */
    /* JADX WARN: Code restructure failed: missing block: B:1837:0x2572, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1871:0x2604, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:1003:0x135b  */
    /* JADX WARN: Removed duplicated region for block: B:1013:0x13c1  */
    /* JADX WARN: Removed duplicated region for block: B:1016:0x13cf  */
    /* JADX WARN: Removed duplicated region for block: B:1072:0x14fa  */
    /* JADX WARN: Removed duplicated region for block: B:1094:0x1576  */
    /* JADX WARN: Removed duplicated region for block: B:1095:0x1579  */
    /* JADX WARN: Removed duplicated region for block: B:1132:0x161f  */
    /* JADX WARN: Removed duplicated region for block: B:1133:0x1624  */
    /* JADX WARN: Removed duplicated region for block: B:1136:0x162b  */
    /* JADX WARN: Removed duplicated region for block: B:1154:0x165c  */
    /* JADX WARN: Removed duplicated region for block: B:1157:0x1663  */
    /* JADX WARN: Removed duplicated region for block: B:1158:0x1665  */
    /* JADX WARN: Removed duplicated region for block: B:1211:0x171b  */
    /* JADX WARN: Removed duplicated region for block: B:1238:0x17b6 A[PHI: r3
  0x17b6: PHI (r3v269 java.lang.String) = (r3v268 java.lang.String), (r3v268 java.lang.String), (r3v268 java.lang.String), (r3v276 java.lang.String) binds: [B:1223:0x175f, B:1225:0x1768, B:1230:0x1781, B:1235:0x17a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:1241:0x17bc  */
    /* JADX WARN: Removed duplicated region for block: B:1245:0x17d3  */
    /* JADX WARN: Removed duplicated region for block: B:1319:0x1972  */
    /* JADX WARN: Removed duplicated region for block: B:1327:0x19c1  */
    /* JADX WARN: Removed duplicated region for block: B:1330:0x19d2  */
    /* JADX WARN: Removed duplicated region for block: B:1335:0x19fc  */
    /* JADX WARN: Removed duplicated region for block: B:1338:0x1a01  */
    /* JADX WARN: Removed duplicated region for block: B:1339:0x1a11  */
    /* JADX WARN: Removed duplicated region for block: B:1342:0x1a30  */
    /* JADX WARN: Removed duplicated region for block: B:1348:0x1a4c  */
    /* JADX WARN: Removed duplicated region for block: B:1353:0x1a77  */
    /* JADX WARN: Removed duplicated region for block: B:1391:0x1b48  */
    /* JADX WARN: Removed duplicated region for block: B:1392:0x1b4a  */
    /* JADX WARN: Removed duplicated region for block: B:1398:0x1b73  */
    /* JADX WARN: Removed duplicated region for block: B:1424:0x1bfe  */
    /* JADX WARN: Removed duplicated region for block: B:1427:0x1c0b  */
    /* JADX WARN: Removed duplicated region for block: B:1433:0x1c24  */
    /* JADX WARN: Removed duplicated region for block: B:1436:0x1c29 A[Catch: Exception -> 0x1c34, TryCatch #6 {Exception -> 0x1c34, blocks: (B:1431:0x1c1b, B:1434:0x1c25, B:1436:0x1c29, B:1439:0x1c39, B:1441:0x1c3d), top: B:2146:0x1c1b }] */
    /* JADX WARN: Removed duplicated region for block: B:1441:0x1c3d A[Catch: Exception -> 0x1c34, TRY_LEAVE, TryCatch #6 {Exception -> 0x1c34, blocks: (B:1431:0x1c1b, B:1434:0x1c25, B:1436:0x1c29, B:1439:0x1c39, B:1441:0x1c3d), top: B:2146:0x1c1b }] */
    /* JADX WARN: Removed duplicated region for block: B:1450:0x1c6a A[Catch: Exception -> 0x1c67, TryCatch #10 {Exception -> 0x1c67, blocks: (B:1443:0x1c45, B:1447:0x1c59, B:1457:0x1c8c, B:1461:0x1ca2, B:1463:0x1ca8, B:1464:0x1cb4, B:1466:0x1cc7, B:1468:0x1ccd, B:1472:0x1cde, B:1474:0x1ce2, B:1476:0x1d20, B:1478:0x1d24, B:1480:0x1d2d, B:1482:0x1d35, B:1475:0x1cff, B:1450:0x1c6a, B:1452:0x1c70, B:1456:0x1c8a), top: B:2153:0x1c3b }] */
    /* JADX WARN: Removed duplicated region for block: B:1459:0x1c9f  */
    /* JADX WARN: Removed duplicated region for block: B:1460:0x1ca1  */
    /* JADX WARN: Removed duplicated region for block: B:1463:0x1ca8 A[Catch: Exception -> 0x1c67, TryCatch #10 {Exception -> 0x1c67, blocks: (B:1443:0x1c45, B:1447:0x1c59, B:1457:0x1c8c, B:1461:0x1ca2, B:1463:0x1ca8, B:1464:0x1cb4, B:1466:0x1cc7, B:1468:0x1ccd, B:1472:0x1cde, B:1474:0x1ce2, B:1476:0x1d20, B:1478:0x1d24, B:1480:0x1d2d, B:1482:0x1d35, B:1475:0x1cff, B:1450:0x1c6a, B:1452:0x1c70, B:1456:0x1c8a), top: B:2153:0x1c3b }] */
    /* JADX WARN: Removed duplicated region for block: B:1471:0x1cdc  */
    /* JADX WARN: Removed duplicated region for block: B:1474:0x1ce2 A[Catch: Exception -> 0x1c67, TryCatch #10 {Exception -> 0x1c67, blocks: (B:1443:0x1c45, B:1447:0x1c59, B:1457:0x1c8c, B:1461:0x1ca2, B:1463:0x1ca8, B:1464:0x1cb4, B:1466:0x1cc7, B:1468:0x1ccd, B:1472:0x1cde, B:1474:0x1ce2, B:1476:0x1d20, B:1478:0x1d24, B:1480:0x1d2d, B:1482:0x1d35, B:1475:0x1cff, B:1450:0x1c6a, B:1452:0x1c70, B:1456:0x1c8a), top: B:2153:0x1c3b }] */
    /* JADX WARN: Removed duplicated region for block: B:1475:0x1cff A[Catch: Exception -> 0x1c67, TryCatch #10 {Exception -> 0x1c67, blocks: (B:1443:0x1c45, B:1447:0x1c59, B:1457:0x1c8c, B:1461:0x1ca2, B:1463:0x1ca8, B:1464:0x1cb4, B:1466:0x1cc7, B:1468:0x1ccd, B:1472:0x1cde, B:1474:0x1ce2, B:1476:0x1d20, B:1478:0x1d24, B:1480:0x1d2d, B:1482:0x1d35, B:1475:0x1cff, B:1450:0x1c6a, B:1452:0x1c70, B:1456:0x1c8a), top: B:2153:0x1c3b }] */
    /* JADX WARN: Removed duplicated region for block: B:1481:0x1d34  */
    /* JADX WARN: Removed duplicated region for block: B:1489:0x1d5e  */
    /* JADX WARN: Removed duplicated region for block: B:1524:0x1ed8  */
    /* JADX WARN: Removed duplicated region for block: B:1525:0x1efb  */
    /* JADX WARN: Removed duplicated region for block: B:1529:0x1f39  */
    /* JADX WARN: Removed duplicated region for block: B:1547:0x1f8a  */
    /* JADX WARN: Removed duplicated region for block: B:1548:0x1fa1  */
    /* JADX WARN: Removed duplicated region for block: B:1551:0x1fb6  */
    /* JADX WARN: Removed duplicated region for block: B:1565:0x1fef  */
    /* JADX WARN: Removed duplicated region for block: B:1571:0x2017  */
    /* JADX WARN: Removed duplicated region for block: B:1575:0x204e  */
    /* JADX WARN: Removed duplicated region for block: B:1712:0x234b  */
    /* JADX WARN: Removed duplicated region for block: B:1738:0x23a8  */
    /* JADX WARN: Removed duplicated region for block: B:1749:0x23cc  */
    /* JADX WARN: Removed duplicated region for block: B:1750:0x23cf  */
    /* JADX WARN: Removed duplicated region for block: B:1754:0x23e0  */
    /* JADX WARN: Removed duplicated region for block: B:1764:0x2403  */
    /* JADX WARN: Removed duplicated region for block: B:1786:0x2448  */
    /* JADX WARN: Removed duplicated region for block: B:1797:0x247e  */
    /* JADX WARN: Removed duplicated region for block: B:1801:0x2485 A[LOOP:12: B:1799:0x2480->B:1801:0x2485, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:1822:0x24e0  */
    /* JADX WARN: Removed duplicated region for block: B:1826:0x2501 A[Catch: Exception -> 0x2550, TryCatch #0 {Exception -> 0x2550, blocks: (B:1824:0x24f9, B:1826:0x2501, B:1827:0x254d), top: B:2134:0x24f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1827:0x254d A[Catch: Exception -> 0x2550, TRY_LEAVE, TryCatch #0 {Exception -> 0x2550, blocks: (B:1824:0x24f9, B:1826:0x2501, B:1827:0x254d), top: B:2134:0x24f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:1831:0x2566 A[Catch: Exception -> 0x2572, TryCatch #7 {Exception -> 0x2572, blocks: (B:1829:0x2560, B:1831:0x2566, B:1833:0x256a, B:1847:0x25a2, B:1851:0x25c8, B:1839:0x2574, B:1841:0x257a, B:1844:0x259b), top: B:2148:0x2560 }] */
    /* JADX WARN: Removed duplicated region for block: B:1836:0x256f  */
    /* JADX WARN: Removed duplicated region for block: B:1858:0x25d5 A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1894:0x263f A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1896:0x2643 A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1914:0x2681 A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1924:0x26cf A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1929:0x26e9  */
    /* JADX WARN: Removed duplicated region for block: B:1936:0x26f8 A[Catch: Exception -> 0x2604, TryCatch #12 {Exception -> 0x2604, blocks: (B:1856:0x25d1, B:1858:0x25d5, B:1860:0x25e7, B:1862:0x25ed, B:1864:0x25f1, B:1866:0x25f9, B:1868:0x25ff, B:1885:0x2625, B:1886:0x2628, B:1888:0x262e, B:1890:0x2632, B:1891:0x2638, B:1873:0x2608, B:1875:0x260c, B:1877:0x2610, B:1879:0x2614, B:1881:0x2618, B:1892:0x263b, B:1894:0x263f, B:1903:0x265f, B:1905:0x2663, B:1914:0x2681, B:1916:0x2687, B:1918:0x268b, B:1920:0x269e, B:1922:0x26c9, B:1924:0x26cf, B:1926:0x26d5, B:1928:0x26dd, B:1930:0x26eb, B:1932:0x26ef, B:1934:0x26f3, B:1937:0x26fb, B:1939:0x26ff, B:1957:0x2741, B:1959:0x2745, B:1961:0x2759, B:1963:0x275f, B:1969:0x278f, B:1941:0x2703, B:1943:0x2709, B:1946:0x270f, B:1936:0x26f8, B:1921:0x26ba, B:1907:0x2667, B:1910:0x266f, B:1912:0x2677, B:1896:0x2643, B:1898:0x2649, B:1900:0x264d, B:1902:0x2652), top: B:2157:0x25d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:1945:0x270d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1951:0x2724  */
    /* JADX WARN: Removed duplicated region for block: B:1952:0x2727  */
    /* JADX WARN: Removed duplicated region for block: B:1978:0x27cf  */
    /* JADX WARN: Removed duplicated region for block: B:2066:0x29d8  */
    /* JADX WARN: Removed duplicated region for block: B:2117:0x2acc  */
    /* JADX WARN: Removed duplicated region for block: B:2125:0x2af7  */
    /* JADX WARN: Removed duplicated region for block: B:2128:0x2b0b  */
    /* JADX WARN: Removed duplicated region for block: B:2129:0x2b11  */
    /* JADX WARN: Removed duplicated region for block: B:2180:0x2497 A[EDGE_INSN: B:2180:0x2497->B:1802:0x2497 BREAK  A[LOOP:12: B:1799:0x2480->B:1801:0x2485], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:2181:0x1f84 A[EDGE_INSN: B:2181:0x1f84->B:1544:0x1f84 BREAK  A[LOOP:13: B:1527:0x1f34->B:1543:0x1f6e], SYNTHETIC] */
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
        String strSubstring;
        boolean z8;
        ArrayList<TLRPC.MessageEntity> arrayList;
        int i5;
        CharSequence charSequence3;
        boolean z9;
        CharSequence charSequence4;
        boolean z10;
        CharSequence charSequenceReplaceEmoji;
        TLRPC.Chat chat;
        CharSequence charSequence5;
        CharSequence string2;
        boolean z11;
        CharSequence charSequence6;
        MessageObject messageObject;
        int i6;
        CharSequence charSequence7;
        CharSequence charSequenceEllipsizeCenterEnd;
        String firstName;
        CharSequence string3;
        boolean zIsChannelAndNotMegaGroup;
        CharSequence pluralString;
        CharSequence string4;
        String pluralString2;
        String str;
        CharSequence charSequenceAppend;
        CharSequence charSequence8;
        CharSequence charSequenceReplaceNewLines;
        MessageObject messageObject2;
        TLRPC.Message message;
        CharSequence string5;
        MessageObject messageObject3;
        int i7;
        CharSequence charSequenceReplaceEmoji2;
        CharSequence charSequence9;
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
        CharSequence charSequence10;
        CharSequence charSequenceAddDialogMediaSpan;
        boolean z12;
        CharSequence charSequenceApplyThumbs;
        int i8;
        int i9;
        CharSequence string6;
        CharSequence archivedDialogNames;
        CharSequence charSequence11;
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList<TLRPC.MessagePeerReaction> arrayList2;
        CharSequence string7;
        CharSequence string8;
        CharSequence charSequence12;
        CharSequence charSequence13;
        CharSequence charSequence14;
        String strStringForMessageListDate;
        boolean z13;
        String str2;
        String str3;
        boolean z14;
        CharSequence charSequence15;
        CharSequence charSequence16;
        String string9;
        CharSequence string10;
        CharSequence charSequenceEscape;
        CharSequence charSequence17;
        int i10;
        CharSequence charSequence18;
        String strStringForMessageListDate2;
        CharSequence charSequence19;
        boolean z15;
        boolean z16;
        String str4;
        String str5;
        boolean z17;
        CharSequence charSequence20;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        MessageObject messageObject7;
        MessageObject messageObject8;
        TLRPC.Message message3;
        CharSequence charSequence21;
        CharSequence charSequenceReplaceEmoji3;
        float f4;
        int iDp;
        int intrinsicWidth;
        boolean z18;
        int i11;
        float f5;
        float f6;
        float f7;
        float f8;
        int iDp2;
        int measuredWidth;
        int iDp3;
        int iDp4;
        int i12;
        ImageReceiver[] imageReceiverArr;
        int i13;
        DialogCellTags dialogCellTags;
        int iDp5;
        boolean zIsForumCell;
        CharSequence charSequence22;
        int iDp6;
        int i14;
        ImageReceiver[] imageReceiverArr2;
        CharSequence charSequence23;
        MessageObject messageObject9;
        boolean z19;
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
        CharSequence charSequence24;
        Layout.Alignment alignment;
        int i16;
        int i17;
        CharSequence charSequenceReplaceTwoNewLinesToOne;
        CharSequence charSequenceHighlightText2;
        DialogCellTags dialogCellTags2;
        int iDp7;
        int iDp8;
        DialogCellTags dialogCellTags3;
        int iDp9;
        boolean z20;
        CharSequence charSequenceReplace;
        CharSequence charSequenceHighlightText3;
        CharSequence string11;
        CharSequence charSequence25;
        String str6;
        SpannableStringBuilder internal;
        if (this.isTransitionSupport) {
            return;
        }
        if (this.isDialogCell && !this.updateHelper.update() && this.currentDialogFolderId == 0 && this.currentDialogCommunityId == 0 && this.encryptedChat == null) {
            return;
        }
        if (!this.useForceThreeLines) {
            int i18 = SharedConfig.PASSCODE_TYPE_PIN;
        }
        boolean z21 = false;
        Theme.dialogs_namePaint[0].setTextSize(AndroidUtilities.dp(17.0f));
        Theme.dialogs_nameEncryptedPaint[0].setTextSize(AndroidUtilities.dp(17.0f));
        Theme.dialogs_messagePaint[0].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_messagePrintingPaint[0].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_namePaint[1].setTextSize(AndroidUtilities.dp(16.0f));
        Theme.dialogs_nameEncryptedPaint[1].setTextSize(AndroidUtilities.dp(16.0f));
        float f9 = 15.0f;
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
        boolean z22 = (UserObject.isUserSelf(this.user) || this.useMeForMyMessages) ? false : true;
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
        MessageObject messageObject10 = this.message;
        if (messageObject10 != null) {
            messageObject10.updateTranslation();
        }
        MessageObject messageObject11 = this.message;
        CharSequence charSequence26 = messageObject11 != null ? messageObject11.messageText : null;
        if (charSequence26 instanceof Spannable) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence26);
            f = 17.0f;
            URLSpanNoUnderlineBold[] uRLSpanNoUnderlineBoldArr = (URLSpanNoUnderlineBold[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpanNoUnderlineBold.class);
            int length2 = uRLSpanNoUnderlineBoldArr.length;
            f2 = 16.0f;
            int i19 = 0;
            while (i19 < length2) {
                spannableStringBuilder.removeSpan(uRLSpanNoUnderlineBoldArr[i19]);
                i19++;
                f9 = f9;
            }
            f3 = f9;
            for (URLSpanNoUnderline uRLSpanNoUnderline : (URLSpanNoUnderline[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpanNoUnderline.class)) {
                spannableStringBuilder.removeSpan(uRLSpanNoUnderline);
            }
            charSequence26 = spannableStringBuilder;
        } else {
            f = 17.0f;
            f2 = 16.0f;
            f3 = 15.0f;
        }
        this.lastMessageString = charSequence26;
        if (this.isShareToStoryCell) {
            this.drawPinBackground = true;
            z = false;
            z22 = false;
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
                string11 = LocaleController.getString(C2573R.string.FromYou);
                CustomDialog customDialog3 = this.customDialog;
                if (customDialog3.isMedia) {
                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                    internal = formatInternal(i, this.message.messageText, null);
                    internal.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_attachMessage, this.resourcesProvider), 0, internal.length(), 33);
                } else {
                    String strSubstring2 = customDialog3.message;
                    if (strSubstring2.length() > 150) {
                        strSubstring2 = strSubstring2.substring(0, 150);
                    }
                    if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                        internal = formatInternal(i, strSubstring2, string11);
                    } else {
                        internal = formatInternal(i, strSubstring2.replace('\n', ' '), string11);
                    }
                }
                CharSequence charSequenceReplaceEmoji4 = Emoji.replaceEmoji(internal, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                z10 = false;
                charSequence25 = charSequenceReplaceEmoji4;
            } else {
                CharSequence charSequence27 = customDialog2.message;
                if (customDialog2.isMedia) {
                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                }
                z10 = true;
                string11 = null;
                charSequence25 = charSequence27;
            }
            c2 = '\n';
            strStringForMessageListDate2 = LocaleController.stringForMessageListDate(this.customDialog.date);
            int i20 = this.customDialog.unread_count;
            if (i20 != 0) {
                this.drawCount = true;
                str6 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i20));
            } else {
                this.drawCount = false;
                str6 = null;
            }
            CustomDialog customDialog4 = this.customDialog;
            int i21 = customDialog4.sent;
            if (i21 == 0) {
                this.drawClock = true;
                this.drawCheck1 = false;
                this.drawCheck2 = false;
            } else if (i21 == 2) {
                this.drawCheck1 = true;
                this.drawCheck2 = true;
                this.drawClock = false;
            } else if (i21 == 1) {
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
            charSequence19 = string11;
            charSequence18 = null;
            str2 = str6;
            charSequence17 = _UrlKt.FRAGMENT_ENCODE_SET;
            i10 = -1;
            charSequenceReplaceEmoji3 = charSequence25;
            charSequence21 = str8;
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
            int i22 = this.currentDialogFolderId;
            if (encryptedChat == null) {
                if (i22 == 0 && !this.isTopic) {
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
                                z2 = z22;
                                swapAnimatedEmojiDrawable.set(DialogObject.getEmojiStatusDocumentId(this.chat.emoji_status), false);
                                this.emojiStatus.setParticles(DialogObject.isEmojiStatusCollectible(this.chat.emoji_status), false);
                            } else {
                                z2 = z22;
                                if (badge != null && !this.isTopic) {
                                    this.drawBadge = true;
                                    this.nameLayoutEllipsizeByGradient = true;
                                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.emojiStatus;
                                    swapAnimatedEmojiDrawable2.center = LocaleController.isRTL;
                                    swapAnimatedEmojiDrawable2.set(badge.getDocumentId(), false);
                                    this.emojiStatus.setParticles(true, false);
                                } else {
                                    boolean z23 = this.forbidVerified;
                                    this.drawVerified = !z23 && this.chat.verified;
                                    this.drawBotVerified = (z23 || this.chat.bot_verification_icon == 0) ? false : true;
                                }
                            }
                            i2 = 2;
                            charSequence = charSequence26;
                            botVerificationIcon = botVerificationIcon2;
                        }
                        z2 = z22;
                        i2 = 2;
                        charSequence = charSequence26;
                        botVerificationIcon = botVerificationIcon2;
                    } else {
                        z2 = z22;
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
                                boolean z24 = this.forbidVerified;
                                this.drawVerified = !z24 && user5.verified;
                                this.drawBotVerified = (z24 || UserObject.isUserSelf(user5) || this.user.bot_verification_icon == 0) ? false : true;
                            }
                            BadgesController badgesController = BadgesController.INSTANCE;
                            BadgeDTO badge2 = badgesController.getBadge(this.user);
                            BadgeDTO secondaryBadge = badgesController.getSecondaryBadge(this.user);
                            boolean z25 = (badge2 == null || (user = this.user) == null || UserObject.isUserSelf(user)) ? false : true;
                            boolean z26 = this.drawScam != 0 || this.drawVerified;
                            this.drawBadge = false;
                            i2 = 2;
                            if (MessagesController.getInstance(this.currentAccount).isPremiumUser(this.user)) {
                                badgeDTO = secondaryBadge;
                                long j = UserConfig.getInstance(this.currentAccount).clientUserId;
                                charSequence = charSequence26;
                                long j2 = this.user.id;
                                if (j != j2 && j2 != 0) {
                                    z3 = true;
                                }
                                this.drawPremium = z3;
                                if (z3) {
                                    z4 = true;
                                    if (z25) {
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
                                        z26 = true;
                                    } else {
                                        z4 = true;
                                        if (z25) {
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
                                if (badgeDTO == null && z25 && z26) {
                                    botVerificationIcon = badgeDTO.getDocumentId();
                                    this.drawBotVerified = z4;
                                    z21 = true;
                                }
                            } else {
                                badgeDTO = secondaryBadge;
                                charSequence = charSequence26;
                            }
                            z3 = false;
                            this.drawPremium = z3;
                            if (z3) {
                            }
                            if (badgeDTO == null) {
                            }
                        } else {
                            i2 = 2;
                            charSequence = charSequence26;
                            botVerificationIcon = 0;
                        }
                        z21 = false;
                    }
                    this.botVerification.setParticles(z21, false, 5);
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
                    boolean z27 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                    this.draftVoice = z27;
                    TLRPC.DraftMessage draft = !z27 ? MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, getTopicId()) : null;
                    this.draftMessage = draft;
                    if (draft != null && TextUtils.isEmpty(draft.message)) {
                        this.draftMessage = null;
                    }
                } else if (this.isDialogCell || this.isSavedDialogCell) {
                    boolean z28 = MediaDataController.getInstance(this.currentAccount).getDraftVoice(this.currentDialogId, (long) getTopicId()) != null;
                    this.draftVoice = z28;
                    this.draftMessage = !z28 ? MediaDataController.getInstance(this.currentAccount).getDraft(this.currentDialogId, 0L) : null;
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
                        CharSequence charSequence28 = charSequence12;
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
                                        MessageObject messageObject12 = this.message;
                                        CharSequence messageStringFormatted = this.message != null ? getMessageStringFormatted(i, messageObject12 != null ? MessagesController.getInstance(messageObject12.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason) : null, string, true) : _UrlKt.FRAGMENT_ENCODE_SET;
                                        if (this.applyName && messageStringFormatted.length() >= 0 && string != null) {
                                            SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(messageStringFormatted);
                                            spannableStringBuilderValueOf.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_name, this.resourcesProvider), 0, Math.min(spannableStringBuilderValueOf.length(), string.length() + 1), 0);
                                            charSequence20 = spannableStringBuilderValueOf;
                                            if (shouldDrawForwardPreviewIcon(this.message)) {
                                                prependForwardedIcon(spannableStringBuilderValueOf, Math.min(string.length() + 2, spannableStringBuilderValueOf.length()));
                                                charSequence20 = spannableStringBuilderValueOf;
                                            }
                                        } else {
                                            charSequence20 = messageStringFormatted;
                                            if (shouldDrawForwardPreviewIcon(this.message)) {
                                                SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(messageStringFormatted);
                                                prependForwardedIcon(spannableStringBuilderValueOf2, 0);
                                                charSequence20 = spannableStringBuilderValueOf2;
                                            }
                                        }
                                        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                        charSequence13 = charSequence20;
                                        charSequence14 = _UrlKt.FRAGMENT_ENCODE_SET;
                                        z9 = z2;
                                        z10 = true;
                                        i5 = -1;
                                        charSequence12 = topicsNames;
                                    } else {
                                        if (!TextUtils.isEmpty(this.customMessage)) {
                                            this.draftMessage = null;
                                            this.draftVoice = false;
                                            CharSequence charSequence29 = this.customMessage;
                                            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                            charSequence4 = _UrlKt.FRAGMENT_ENCODE_SET;
                                            z9 = z2;
                                            string = null;
                                            z10 = true;
                                            i5 = -1;
                                            string7 = charSequence29;
                                        } else {
                                            if (printingString != null) {
                                                this.lastPrintString = printingString;
                                                int iIntValue = MessagesController.getInstance(this.currentAccount).getPrintingStringType(this.currentDialogId, getTopicId()).intValue();
                                                this.printingStringType = iIntValue;
                                                StatusDrawable chatStatusDrawable = Theme.getChatStatusDrawable(iIntValue);
                                                int intrinsicWidth2 = chatStatusDrawable != null ? chatStatusDrawable.getIntrinsicWidth() + AndroidUtilities.dp(3.0f) : 0;
                                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                                CharSequence charSequenceReplace2 = TextUtils.replace(printingString, new String[]{"..."}, new String[]{_UrlKt.FRAGMENT_ENCODE_SET});
                                                int iIndexOf = this.printingStringType == 5 ? charSequenceReplace2.toString().indexOf("**oo**") : -1;
                                                if (iIndexOf >= 0) {
                                                    spannableStringBuilder2.append(charSequenceReplace2).setSpan(new FixedWidthSpan(Theme.getChatStatusDrawable(this.printingStringType).getIntrinsicWidth()), iIndexOf, iIndexOf + 6, 0);
                                                } else {
                                                    spannableStringBuilder2.append((CharSequence) " ").append(charSequenceReplace2).setSpan(new FixedWidthSpan(intrinsicWidth2), 0, 1, 0);
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
                                                int i23 = i4;
                                                CharSequence charSequence30 = charSequence2;
                                                string = LocaleController.getString(C2573R.string.Draft);
                                                TLRPC.DraftMessage draftMessage5 = this.draftMessage;
                                                if (draftMessage5 != null && draftMessage5.rich_message != null) {
                                                    SpannableStringBuilder spannableStringBuilderAppend = SpannableStringBuilder.valueOf(string).append((CharSequence) ": ");
                                                    spannableStringBuilderAppend.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length(), 33);
                                                    spannableStringBuilderAppend.append(MessageObject.formatRichMessage(this.draftMessage.rich_message, false, false, 512));
                                                    charSequenceReplaceEmoji = spannableStringBuilderAppend;
                                                } else if (draftMessage5 != null && TextUtils.isEmpty(draftMessage5.message)) {
                                                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                                                        i5 = i23;
                                                        charSequence3 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        z9 = z2;
                                                        charSequence4 = charSequence30;
                                                        z10 = false;
                                                        string7 = charSequence3;
                                                    } else {
                                                        SpannableStringBuilder spannableStringBuilderValueOf3 = SpannableStringBuilder.valueOf(string);
                                                        spannableStringBuilderValueOf3.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_draft, this.resourcesProvider), 0, string.length(), 33);
                                                        charSequenceReplaceEmoji = spannableStringBuilderValueOf3;
                                                    }
                                                } else {
                                                    if (this.draftVoice) {
                                                        strSubstring = LocaleController.getString(C2573R.string.AttachAudio);
                                                    } else {
                                                        TLRPC.DraftMessage draftMessage6 = this.draftMessage;
                                                        if (draftMessage6 != null) {
                                                            strSubstring = draftMessage6.message;
                                                            if (strSubstring.length() > 150) {
                                                                strSubstring = strSubstring.substring(0, 150);
                                                            }
                                                        } else {
                                                            strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        }
                                                    }
                                                    SpannableString spannableString = new SpannableString(strSubstring);
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
                                                    charSequenceReplaceEmoji = Emoji.replaceEmoji(internal2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), z8);
                                                }
                                                i5 = i23;
                                                charSequence3 = charSequenceReplaceEmoji;
                                                z9 = z2;
                                                charSequence4 = charSequence30;
                                                z10 = false;
                                                string7 = charSequence3;
                                            } else {
                                                if (this.clearingDialog) {
                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                    string8 = LocaleController.getString(C2573R.string.HistoryCleared);
                                                } else {
                                                    MessageObject messageObject13 = this.message;
                                                    if (messageObject13 != null) {
                                                        String restrictionReason = MessagesController.getInstance(messageObject13.currentAccount).getRestrictionReason(this.message.messageOwner.restriction_reason);
                                                        long fromChatId = this.message.getFromChatId();
                                                        boolean zIsUserDialog = DialogObject.isUserDialog(fromChatId);
                                                        int i24 = this.currentAccount;
                                                        if (zIsUserDialog) {
                                                            MessagesController.getInstance(i24).getUser(Long.valueOf(fromChatId));
                                                            chat = null;
                                                        } else {
                                                            chat = MessagesController.getInstance(i24).getChat(Long.valueOf(-fromChatId));
                                                        }
                                                        this.drawCount2 = true;
                                                        if (this.dialogsType != 0 || this.currentDialogId <= 0 || !this.message.isOutOwner() || (tL_messageReactions = this.message.messageOwner.reactions) == null || (arrayList2 = tL_messageReactions.recent_reactions) == null || arrayList2.isEmpty() || this.reactionMentionCount <= 0) {
                                                            charSequence5 = charSequence2;
                                                            string2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                            z11 = false;
                                                            charSequence6 = charSequence5;
                                                            if (z11) {
                                                                i6 = i4;
                                                                charSequence11 = string2;
                                                            } else {
                                                                int i25 = this.dialogsType;
                                                                if (i25 == i2) {
                                                                    TLRPC.Chat chat9 = this.chat;
                                                                    if (chat9 == null) {
                                                                        string6 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                    } else if (ChatObject.isChannel(chat9)) {
                                                                        TLRPC.Chat chat10 = this.chat;
                                                                        if (!chat10.megagroup) {
                                                                            int i26 = chat10.participants_count;
                                                                            if (i26 != 0) {
                                                                                string6 = LocaleController.formatPluralStringComma("Subscribers", i26);
                                                                            } else if (!ChatObject.isPublic(chat10)) {
                                                                                string6 = LocaleController.getString(C2573R.string.ChannelPrivate).toLowerCase();
                                                                            } else {
                                                                                string6 = LocaleController.getString(C2573R.string.ChannelPublic).toLowerCase();
                                                                            }
                                                                        } else {
                                                                            TLRPC.Chat chat11 = this.chat;
                                                                            int i27 = chat11.participants_count;
                                                                            if (i27 != 0) {
                                                                                string6 = LocaleController.formatPluralStringComma("Members", i27);
                                                                            } else if (chat11.has_geo) {
                                                                                string6 = LocaleController.getString(C2573R.string.MegaLocation);
                                                                            } else if (!ChatObject.isPublic(chat11)) {
                                                                                string6 = LocaleController.getString(C2573R.string.MegaPrivate).toLowerCase();
                                                                            } else {
                                                                                string6 = LocaleController.getString(C2573R.string.MegaPublic).toLowerCase();
                                                                            }
                                                                        }
                                                                    }
                                                                    this.drawCount2 = false;
                                                                } else if (i25 == 3 && UserObject.isUserSelf(this.user)) {
                                                                    DialogsActivity dialogsActivity = this.parentFragment;
                                                                    string6 = LocaleController.getString((dialogsActivity == null || !dialogsActivity.isQuote) ? C2573R.string.SavedMessagesInfo : C2573R.string.SavedMessagesInfoQuote);
                                                                } else {
                                                                    boolean z29 = this.useForceThreeLines;
                                                                    if (!z29 && !SharedConfig.useThreeLinesLayout && this.currentDialogCommunityId != 0) {
                                                                        charSequenceReplaceEmoji2 = formatCommunityDialogNames();
                                                                    } else if (!z29 && !SharedConfig.useThreeLinesLayout && this.currentDialogFolderId != 0) {
                                                                        charSequenceReplaceEmoji2 = formatArchivedDialogNames();
                                                                    } else {
                                                                        MessageObject messageObject14 = this.message;
                                                                        if ((messageObject14.messageOwner instanceof TLRPC.TL_messageService) && (!MessageObject.isTopicActionMessage(messageObject14) || (this.message.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate))) {
                                                                            MessageObject messageObject15 = this.message;
                                                                            TLRPC.MessageAction messageAction = messageObject15.messageOwner.action;
                                                                            if (messageAction instanceof TLRPC.TL_messageActionPhoneCall) {
                                                                                TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction;
                                                                                if (messageObject15.isOutOwner()) {
                                                                                    if (tL_messageActionPhoneCall.video) {
                                                                                        i9 = C2573R.drawable.dialog_media_outgoing_video_call_20;
                                                                                    } else {
                                                                                        i9 = C2573R.drawable.dialog_media_outgoing_call_20;
                                                                                    }
                                                                                    charSequenceAddDialogMediaSpan = DialogMediaIconsHelper.addDialogMediaSpan(charSequence, i9, false);
                                                                                } else {
                                                                                    CharSequence charSequence31 = charSequence;
                                                                                    if (tL_messageActionPhoneCall.video) {
                                                                                        i8 = C2573R.drawable.dialog_media_incoming_video_call_20;
                                                                                    } else {
                                                                                        i8 = C2573R.drawable.dialog_media_incoming_call_20;
                                                                                    }
                                                                                    charSequenceAddDialogMediaSpan = DialogMediaIconsHelper.addDialogMediaSpan(charSequence31, i8, false);
                                                                                }
                                                                            } else {
                                                                                charSequence10 = charSequence;
                                                                                if (!ChatObject.isChannelAndNotMegaGroup(this.chat) || !(this.message.messageOwner.action instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                                                    charSequenceAddDialogMediaSpan = this.message.messageTextShort;
                                                                                    if (charSequenceAddDialogMediaSpan != null) {
                                                                                    }
                                                                                    z12 = z2;
                                                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                    if (this.message.type == 21) {
                                                                                        updateMessageThumbs();
                                                                                        z2 = z12;
                                                                                        charSequence9 = null;
                                                                                        i6 = i4;
                                                                                        charSequenceApplyThumbs = applyThumbs(charSequence10);
                                                                                    } else {
                                                                                        z2 = z12;
                                                                                        charSequence9 = null;
                                                                                        i6 = i4;
                                                                                        charSequenceApplyThumbs = charSequence10;
                                                                                    }
                                                                                    if (this.currentDialogCommunityId == 0) {
                                                                                    }
                                                                                    z10 = z7;
                                                                                    string = archivedDialogNames;
                                                                                    i5 = i6;
                                                                                    z9 = z2;
                                                                                    charSequence4 = charSequence6;
                                                                                    string7 = charSequenceApplyThumbs;
                                                                                } else {
                                                                                    charSequence10 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                                    z12 = false;
                                                                                    this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                    if (this.message.type == 21) {
                                                                                    }
                                                                                    if (this.currentDialogCommunityId == 0) {
                                                                                    }
                                                                                    z10 = z7;
                                                                                    string = archivedDialogNames;
                                                                                    i5 = i6;
                                                                                    z9 = z2;
                                                                                    charSequence4 = charSequence6;
                                                                                    string7 = charSequenceApplyThumbs;
                                                                                }
                                                                            }
                                                                            charSequence10 = charSequenceAddDialogMediaSpan;
                                                                            z12 = z2;
                                                                            this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                            if (this.message.type == 21) {
                                                                            }
                                                                            if (this.currentDialogCommunityId == 0) {
                                                                            }
                                                                            z10 = z7;
                                                                            string = archivedDialogNames;
                                                                            i5 = i6;
                                                                            z9 = z2;
                                                                            charSequence4 = charSequence6;
                                                                            string7 = charSequenceApplyThumbs;
                                                                        } else {
                                                                            CharSequence charSequence32 = charSequence;
                                                                            this.needEmoji = true;
                                                                            updateMessageThumbs();
                                                                            CharSequence charSequenceEscape2 = (this.isSavedDialog || (user3 = this.user) == null || !user3.self || this.message.isOutOwner()) ? null : AndroidUtilities.escape(getMessageNameString());
                                                                            boolean z30 = this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
                                                                            boolean zShouldDrawForwardPreviewIcon = shouldDrawForwardPreviewIcon(this.message);
                                                                            boolean z31 = z30 && (messageObject6 = this.message) != null && (!messageObject6.isOutOwner() || zShouldDrawForwardPreviewIcon) && ((chat3 = this.chat) == null || !ChatObject.isChannel(chat3) || ChatObject.isMegagroup(this.chat) || this.chat.signature_profiles);
                                                                            boolean z32 = z30 && (messageObject5 = this.message) != null && messageObject5.isOutOwner() && !zShouldDrawForwardPreviewIcon;
                                                                            boolean z33 = z7;
                                                                            if ((z32 || !this.isSavedDialog || (user2 = this.user) == null || user2.self || (messageObject4 = this.message) == null || !messageObject4.isOutOwner()) && !z31 && ((z32 || charSequenceEscape2 == null) && ((messageObject = this.message) == null || (message = messageObject.messageOwner) == null || message.guestchat_via_from == null))) {
                                                                                TLRPC.Chat chat12 = this.chat;
                                                                                i6 = i4;
                                                                                charSequence7 = charSequenceEscape2;
                                                                                if (chat12 != null) {
                                                                                    long j3 = chat12.id;
                                                                                    if (j3 <= 0 || ((((chat != null && chat.id == j3) || (ChatObject.isChannel(chat12) && !ChatObject.isMegagroup(this.chat) && previewMessageNameString == null)) && (!ChatObject.isChannel(this.chat) || ChatObject.isMegagroup(this.chat) || !this.chat.signature_profiles)) || ForumUtilities.isTopicCreateMessage(this.message))) {
                                                                                        TLRPC.User user6 = this.user;
                                                                                        if (user6 == null || user6.id != UserObject.VERIFY || (messageObject2 = this.message) == null || messageObject2.getForwardedFromId() == null) {
                                                                                            if (TextUtils.isEmpty(restrictionReason)) {
                                                                                                boolean zIsTopicActionMessage = MessageObject.isTopicActionMessage(this.message);
                                                                                                MessageObject messageObject16 = this.message;
                                                                                                if (zIsTopicActionMessage) {
                                                                                                    CharSequence charSequence33 = messageObject16.messageTextShort;
                                                                                                    if (charSequence33 == null || ((messageObject16.messageOwner.action instanceof TLRPC.TL_messageActionTopicCreate) && this.isTopic)) {
                                                                                                        charSequence33 = messageObject16.messageText;
                                                                                                    }
                                                                                                    CharSequence charSequence34 = charSequence33;
                                                                                                    string4 = charSequence34;
                                                                                                    if (messageObject16.topicIconDrawable[0] instanceof ForumBubbleDrawable) {
                                                                                                        TLRPC.TL_forumTopic tL_forumTopicFindTopic = MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.message.getDialogId(), MessageObject.getTopicId(this.currentAccount, this.message.messageOwner, true));
                                                                                                        string4 = charSequence34;
                                                                                                        if (tL_forumTopicFindTopic != null) {
                                                                                                            ((ForumBubbleDrawable) this.message.topicIconDrawable[0]).setColor(tL_forumTopicFindTopic.icon_color);
                                                                                                            string4 = charSequence34;
                                                                                                        }
                                                                                                    }
                                                                                                } else {
                                                                                                    TLRPC.MessageMedia messageMedia = messageObject16.messageOwner.media;
                                                                                                    if ((messageMedia instanceof TLRPC.TL_messageMediaPhoto) && (messageMedia.photo instanceof TLRPC.TL_photoEmpty) && messageMedia.ttl_seconds != 0) {
                                                                                                        string4 = LocaleController.getString(C2573R.string.AttachPhotoExpired);
                                                                                                    } else if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                                                                                                        TLRPC.Document document = messageMedia.document;
                                                                                                        if (((document instanceof TLRPC.TL_documentEmpty) || document == null) && messageMedia.ttl_seconds != 0) {
                                                                                                            if (messageMedia.voice) {
                                                                                                                string4 = LocaleController.getString(C2573R.string.AttachVoiceExpired);
                                                                                                            } else if (messageMedia.round) {
                                                                                                                string4 = LocaleController.getString(C2573R.string.AttachRoundExpired);
                                                                                                            } else {
                                                                                                                string4 = LocaleController.getString(C2573R.string.AttachVideoExpired);
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
                                                                                                            MessageObject messageObject17 = this.message;
                                                                                                            TLRPC.Message message4 = messageObject17.messageOwner;
                                                                                                            TLRPC.MessageMedia messageMedia2 = message4.media;
                                                                                                            if (messageMedia2 instanceof TLRPC.TL_messageMediaPaidMedia) {
                                                                                                                int size = ((TLRPC.TL_messageMediaPaidMedia) messageMedia2).extended_media.size();
                                                                                                                if (this.hasVideoThumb) {
                                                                                                                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Media", size, new Object[0]) : LocaleController.getString(C2573R.string.AttachVideo);
                                                                                                                } else {
                                                                                                                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Photos", size, new Object[0]) : LocaleController.getString(C2573R.string.AttachPhoto);
                                                                                                                }
                                                                                                                CharSequence charSequenceReplaceStars = StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.AttachPaidMedia, pluralString2));
                                                                                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                                string4 = charSequenceReplaceStars;
                                                                                                            } else if (this.thumbsCount > 1) {
                                                                                                                boolean z34 = this.hasVideoThumb;
                                                                                                                ArrayList<MessageObject> arrayList5 = this.groupMessages;
                                                                                                                if (z34) {
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
                                                                                                                        string3 = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2573R.string.BoostingGiveawayChannelStarted : C2573R.string.BoostingGiveawayGroupStarted);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                                                                                                    string3 = LocaleController.getString(C2573R.string.BoostingGiveawayResults);
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaPoll) {
                                                                                                                    TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia2;
                                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities = tL_messageMediaPoll.poll.question;
                                                                                                                    if (tL_textWithEntities != null && tL_textWithEntities.entities != null) {
                                                                                                                        SpannableString spannableString3 = new SpannableString(tL_messageMediaPoll.poll.question.text);
                                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageMediaPoll.poll.question;
                                                                                                                        MediaDataController.addTextStyleRuns(tL_textWithEntities2.entities, tL_textWithEntities2.text, spannableString3);
                                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaPoll.poll.question.entities, spannableString3, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(spannableString3, C2573R.drawable.dialog_media_poll_20, false);
                                                                                                                    } else {
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities.text, C2573R.drawable.dialog_media_poll_20, false);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaToDo) {
                                                                                                                    TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia2;
                                                                                                                    TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaToDo.todo.title;
                                                                                                                    if (tL_textWithEntities3 != null && tL_textWithEntities3.entities != null) {
                                                                                                                        SpannableString spannableString4 = new SpannableString(tL_messageMediaToDo.todo.title.text);
                                                                                                                        TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaToDo.todo.title;
                                                                                                                        MediaDataController.addTextStyleRuns(tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString4);
                                                                                                                        MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString4, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(spannableString4, C2573R.drawable.dialog_media_checklist_20, false);
                                                                                                                    } else {
                                                                                                                        string3 = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities3.text, C2573R.drawable.dialog_media_checklist_20, false);
                                                                                                                    }
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaGame) {
                                                                                                                    string3 = DialogMediaIconsHelper.addDialogMediaSpan(messageMedia2.game.title, C2573R.drawable.dialog_media_game_20, false);
                                                                                                                } else if (messageMedia2 instanceof TLRPC.TL_messageMediaInvoice) {
                                                                                                                    string3 = messageMedia2.title;
                                                                                                                } else if (messageObject17.type == 14) {
                                                                                                                    string3 = String.format("🎧 %s - %s", messageObject17.getMusicAuthor(), this.message.getMusicTitle());
                                                                                                                } else if ((messageMedia2 instanceof TLRPC.TL_messageMediaStory) && messageMedia2.via_mention) {
                                                                                                                    if (messageObject17.isOut()) {
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
                                                                                                                        string3 = LocaleController.formatString(C2573R.string.StoryYouMentionInDialog, firstName);
                                                                                                                    } else {
                                                                                                                        string3 = LocaleController.getString(C2573R.string.StoryMentionInDialog);
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    if (messageObject17.hasHighlightedWords() && !TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                                                        CharSequence charSequence35 = this.message.messageTrimmedToHighlight;
                                                                                                                        int measuredWidth3 = getMeasuredWidth() - AndroidUtilities.dp(this.messagePaddingStart + 23);
                                                                                                                        MessageObject messageObject18 = this.message;
                                                                                                                        charSequenceEllipsizeCenterEnd = charSequence35;
                                                                                                                        if (messageObject18.messageTrimmedToHighlightCut) {
                                                                                                                            charSequenceEllipsizeCenterEnd = AndroidUtilities.ellipsizeCenterEnd(charSequence35, messageObject18.highlightedWords.get(0), measuredWidth3, this.currentMessagePaint, 130);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        SpannableString spannableString5 = new SpannableString(charSequence32);
                                                                                                                        MessageObject messageObject19 = this.message;
                                                                                                                        if (messageObject19 != null) {
                                                                                                                            messageObject19.spoilLoginCode();
                                                                                                                        }
                                                                                                                        MediaDataController.addTextStyleRuns(this.message, spannableString5, GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED);
                                                                                                                        MessageObject messageObject20 = this.message;
                                                                                                                        charSequenceEllipsizeCenterEnd = spannableString5;
                                                                                                                        if (messageObject20 != null) {
                                                                                                                            TLRPC.Message message5 = messageObject20.messageOwner;
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
                                                                                                                CharSequence charSequence36 = string3;
                                                                                                                MessageObject messageObject21 = this.message;
                                                                                                                if (messageObject21.messageOwner.media == null || messageObject21.isMediaEmpty()) {
                                                                                                                    TL_iv.RichMessage richMessage = this.message.messageOwner.rich_message;
                                                                                                                    string4 = charSequence36;
                                                                                                                    if (richMessage != null) {
                                                                                                                        string4 = charSequence36;
                                                                                                                        if (richMessage.blocks.size() == 1) {
                                                                                                                            string4 = charSequence36;
                                                                                                                            if (MessageObject.isBlueBlock(this.message.messageOwner.rich_message.blocks.get(0))) {
                                                                                                                                this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                                                                                string4 = charSequence36;
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
                                                                                            CharSequence charSequence37 = string4;
                                                                                            if (this.message.isReplyToStory()) {
                                                                                                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string4);
                                                                                                spannableStringBuilder3.insert(0, (CharSequence) "d ");
                                                                                                spannableStringBuilder3.setSpan(new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2573R.drawable.msg_mini_replystory).mutate()), 0, 1, 0);
                                                                                                charSequence37 = spannableStringBuilder3;
                                                                                            }
                                                                                            CharSequence charSequence38 = charSequence37;
                                                                                            if (this.thumbsCount > 0) {
                                                                                                if (this.message.hasHighlightedWords() && !TextUtils.isEmpty(this.message.messageOwner.message)) {
                                                                                                    charSequenceReplaceNewLines = this.message.messageTrimmedToHighlight;
                                                                                                    int measuredWidth4 = getMeasuredWidth() - AndroidUtilities.dp(((this.messagePaddingStart + 23) + ((this.thumbSize + 2) * this.thumbsCount)) + 3);
                                                                                                    MessageObject messageObject22 = this.message;
                                                                                                    if (messageObject22.messageTrimmedToHighlightCut) {
                                                                                                        charSequenceReplaceNewLines = AndroidUtilities.ellipsizeCenterEnd(charSequenceReplaceNewLines, messageObject22.highlightedWords.get(0), measuredWidth4, this.currentMessagePaint, 130);
                                                                                                    }
                                                                                                } else {
                                                                                                    int length3 = charSequence37.length();
                                                                                                    CharSequence charSequenceSubSequence = charSequence37;
                                                                                                    if (length3 > 150) {
                                                                                                        charSequenceSubSequence = charSequence37.subSequence(0, 150);
                                                                                                    }
                                                                                                    charSequenceReplaceNewLines = AndroidUtilities.replaceNewLines(charSequenceSubSequence);
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
                                                                                                    CharSequence charSequence39 = charSequenceHighlightText4;
                                                                                                    if (charSequenceHighlightText4 == null) {
                                                                                                        charSequence39 = charSequenceReplaceEmoji5;
                                                                                                    }
                                                                                                    z33 = false;
                                                                                                    charSequence38 = charSequence39;
                                                                                                }
                                                                                            }
                                                                                            if (!zShouldDrawForwardPreviewIcon || separateMessageNameLine()) {
                                                                                                charSequence8 = charSequence38;
                                                                                            } else {
                                                                                                this.drawForwardIcon = true;
                                                                                                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(charSequence38);
                                                                                                spannableStringBuilder5.insert(0, (CharSequence) "d ");
                                                                                                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2573R.drawable.mini_forwarded).mutate());
                                                                                                coloredImageSpan.setAlpha(0.9f);
                                                                                                spannableStringBuilder5.setSpan(coloredImageSpan, 0, 1, 0);
                                                                                                charSequence8 = spannableStringBuilder5;
                                                                                            }
                                                                                            z7 = z33;
                                                                                            charSequence11 = charSequence8;
                                                                                        }
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                i6 = i4;
                                                                                charSequence7 = charSequenceEscape2;
                                                                            }
                                                                            if (this.message != null && (chat2 = this.chat) != null && ChatObject.isChannel(chat2) && !ChatObject.isMegagroup(this.chat) && this.chat.signature_profiles && (message2 = this.message.messageOwner) != null && message2.out) {
                                                                                string5 = LocaleController.getString(C2573R.string.FromYou);
                                                                            } else {
                                                                                if (charSequence7 != null) {
                                                                                    previewMessageNameString = charSequence7;
                                                                                } else if (previewMessageNameString == null) {
                                                                                    previewMessageNameString = getPreviewMessageNameString();
                                                                                }
                                                                                string5 = (previewMessageNameString == null && z30 && (messageObject3 = this.message) != null && messageObject3.isOutOwner()) ? LocaleController.getString(C2573R.string.FromYou) : previewMessageNameString;
                                                                            }
                                                                            TLRPC.Chat chat13 = this.chat;
                                                                            CharSequence charSequence40 = string5;
                                                                            if (chat13 != null) {
                                                                                charSequence40 = string5;
                                                                                if (chat13.forum) {
                                                                                    charSequence40 = string5;
                                                                                    if (!this.isTopic) {
                                                                                        charSequence40 = string5;
                                                                                        if (!this.useFromUserAsAvatar) {
                                                                                            CharSequence topicIconName = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopicIconName(this.chat, this.message, this.currentMessagePaint);
                                                                                            charSequence40 = string5;
                                                                                            if (!TextUtils.isEmpty(topicIconName)) {
                                                                                                SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder("-");
                                                                                                ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(ContextCompat.getDrawable(ApplicationLoader.applicationContext, C2573R.drawable.msg_mini_forumarrow).mutate());
                                                                                                coloredImageSpan2.setColorKey((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? -1 : Theme.key_chats_nameMessage);
                                                                                                spannableStringBuilder6.setSpan(coloredImageSpan2, 0, 1, 0);
                                                                                                SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                                                                                spannableStringBuilder7.append(string5).append((CharSequence) spannableStringBuilder6).append(topicIconName);
                                                                                                charSequence40 = spannableStringBuilder7;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            CharSequence charSequenceAddSenderAvatar = addSenderAvatar(charSequence40, this.message);
                                                                            SpannableStringBuilder messageStringFormatted2 = getMessageStringFormatted(i, restrictionReason, charSequenceAddSenderAvatar, false);
                                                                            int i28 = (!zShouldDrawForwardPreviewIcon || separateMessageNameLine() || charSequenceAddSenderAvatar == null) ? 0 : 3;
                                                                            if (i28 != 0) {
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
                                                                                        FileLog.m898e(e);
                                                                                        charSequenceReplaceEmoji2 = Emoji.replaceEmoji(messageStringFormatted2, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                        if (this.message.hasHighlightedWords()) {
                                                                                            charSequenceReplaceEmoji2 = charSequenceHighlightText;
                                                                                        }
                                                                                        if (this.thumbsCount > 0) {
                                                                                        }
                                                                                        charSequence9 = charSequenceAddSenderAvatar;
                                                                                        charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                                        z7 = false;
                                                                                        if (this.currentDialogCommunityId == 0) {
                                                                                        }
                                                                                        z10 = z7;
                                                                                        string = archivedDialogNames;
                                                                                        i5 = i6;
                                                                                        z9 = z2;
                                                                                        charSequence4 = charSequence6;
                                                                                        string7 = charSequenceApplyThumbs;
                                                                                        charSequence13 = null;
                                                                                        charSequence12 = string7;
                                                                                        charSequence14 = charSequence4;
                                                                                        CharSequence charSequence282 = charSequence12;
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
                                                                                        z20 = charSequence21 instanceof String;
                                                                                        charSequenceReplace = charSequence21;
                                                                                        if (z20) {
                                                                                        }
                                                                                        if (!this.nameLayoutEllipsizeByGradient) {
                                                                                        }
                                                                                        float f10 = iDp9;
                                                                                        this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(charSequenceReplace.toString()) <= f10;
                                                                                        CharSequence charSequenceEllipsize2 = charSequenceReplace;
                                                                                        if (!this.twoLinesForName) {
                                                                                        }
                                                                                        CharSequence charSequenceReplaceEmoji6 = Emoji.replaceEmoji(charSequenceEllipsize2, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
                                                                                        MessageObject messageObject23 = this.message;
                                                                                        if (messageObject23 == null) {
                                                                                            if (!this.twoLinesForName) {
                                                                                            }
                                                                                            if (this.nameLayoutEllipsizeByGradient) {
                                                                                                this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? 0.0f : -AndroidUtilities.dp(c2);
                                                                                                this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
                                                                                            }
                                                                                        }
                                                                                        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
                                                                                        if (!this.useForceThreeLines) {
                                                                                            f5 = 8.0f;
                                                                                            f6 = 0.0f;
                                                                                            f7 = 13.0f;
                                                                                            f8 = 20.0f;
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
                                                                                        boolean z35 = this.useForceThreeLines;
                                                                                        if (!zIsForumCell) {
                                                                                        }
                                                                                        charSequence23 = charSequence19;
                                                                                        if (this.twoLinesForName) {
                                                                                        }
                                                                                        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
                                                                                        this.buttonCreated = false;
                                                                                        if (!TextUtils.isEmpty(charSequence18)) {
                                                                                        }
                                                                                        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
                                                                                        if (!TextUtils.isEmpty(charSequence17)) {
                                                                                        }
                                                                                        if (charSequenceReplaceEmoji3 instanceof Spannable) {
                                                                                        }
                                                                                        if (this.useForceThreeLines) {
                                                                                        }
                                                                                        int i29 = iMax;
                                                                                        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                                                                                        z19 = LocaleController.isRTL;
                                                                                        StaticLayout staticLayout2 = this.nameLayout;
                                                                                        if (!z19) {
                                                                                        }
                                                                                        staticLayout = this.typingLayout;
                                                                                        if (staticLayout != null) {
                                                                                        }
                                                                                        updateThumbsPosition();
                                                                                    }
                                                                                } else {
                                                                                    length = 0;
                                                                                }
                                                                                i7 = length + i28;
                                                                                try {
                                                                                    messageStringFormatted2.setSpan(new ForegroundColorSpanThemable(Theme.key_chats_nameMessage, this.resourcesProvider), 0, i7, 33);
                                                                                } catch (Exception e2) {
                                                                                    e = e2;
                                                                                    FileLog.m898e(e);
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
                                                                            charSequence9 = charSequenceAddSenderAvatar;
                                                                            charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                            z7 = false;
                                                                            if (this.currentDialogCommunityId == 0) {
                                                                                archivedDialogNames = formatCommunityDialogNames();
                                                                            } else if (this.currentDialogFolderId != 0) {
                                                                                archivedDialogNames = formatArchivedDialogNames();
                                                                            } else {
                                                                                z10 = z7;
                                                                                i5 = i6;
                                                                                string = charSequence9;
                                                                                z9 = z2;
                                                                                charSequence4 = charSequence6;
                                                                                string7 = charSequenceApplyThumbs;
                                                                            }
                                                                            z10 = z7;
                                                                            string = archivedDialogNames;
                                                                            i5 = i6;
                                                                            z9 = z2;
                                                                            charSequence4 = charSequence6;
                                                                            string7 = charSequenceApplyThumbs;
                                                                        }
                                                                    }
                                                                    i6 = i4;
                                                                    charSequence9 = null;
                                                                    charSequenceApplyThumbs = charSequenceReplaceEmoji2;
                                                                    z7 = false;
                                                                    if (this.currentDialogCommunityId == 0) {
                                                                    }
                                                                    z10 = z7;
                                                                    string = archivedDialogNames;
                                                                    i5 = i6;
                                                                    z9 = z2;
                                                                    charSequence4 = charSequence6;
                                                                    string7 = charSequenceApplyThumbs;
                                                                }
                                                                i6 = i4;
                                                                charSequenceApplyThumbs = string6;
                                                                z = false;
                                                                charSequence9 = null;
                                                                z2 = false;
                                                                if (this.currentDialogCommunityId == 0) {
                                                                }
                                                                z10 = z7;
                                                                string = archivedDialogNames;
                                                                i5 = i6;
                                                                z9 = z2;
                                                                charSequence4 = charSequence6;
                                                                string7 = charSequenceApplyThumbs;
                                                            }
                                                            charSequence9 = null;
                                                            charSequenceApplyThumbs = charSequence11;
                                                            if (this.currentDialogCommunityId == 0) {
                                                            }
                                                            z10 = z7;
                                                            string = archivedDialogNames;
                                                            i5 = i6;
                                                            z9 = z2;
                                                            charSequence4 = charSequence6;
                                                            string7 = charSequenceApplyThumbs;
                                                        } else {
                                                            TLRPC.MessagePeerReaction messagePeerReaction = this.message.messageOwner.reactions.recent_reactions.get(0);
                                                            if (messagePeerReaction.unread) {
                                                                long j4 = messagePeerReaction.peer_id.user_id;
                                                                if (j4 != 0) {
                                                                    CharSequence charSequence41 = charSequence2;
                                                                    charSequence5 = charSequence41;
                                                                    if (j4 != UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                                        ReactionsLayoutInBubble.VisibleReaction visibleReactionFromTL = ReactionsLayoutInBubble.VisibleReaction.fromTL(messagePeerReaction.reaction);
                                                                        this.currentMessagePaint = Theme.dialogs_messagePrintingPaint[this.paintIndex];
                                                                        String str9 = visibleReactionFromTL.emojicon;
                                                                        if (str9 != null) {
                                                                            string2 = LocaleController.formatString(C2573R.string.ReactionInDialog, str9);
                                                                        } else {
                                                                            String string12 = LocaleController.formatString(C2573R.string.ReactionInDialog, "**reaction**");
                                                                            int iIndexOf3 = string12.indexOf("**reaction**");
                                                                            SpannableStringBuilder spannableStringBuilder9 = new SpannableStringBuilder(string12.replace("**reaction**", "d"));
                                                                            long j5 = visibleReactionFromTL.documentId;
                                                                            TextPaint textPaint6 = this.currentMessagePaint;
                                                                            spannableStringBuilder9.setSpan(new AnimatedEmojiSpan(j5, textPaint6 == null ? null : textPaint6.getFontMetricsInt()), iIndexOf3, iIndexOf3 + 1, 0);
                                                                            string2 = spannableStringBuilder9;
                                                                        }
                                                                        z11 = true;
                                                                        charSequence6 = charSequence41;
                                                                    }
                                                                    if (z11) {
                                                                    }
                                                                    charSequence9 = null;
                                                                    charSequenceApplyThumbs = charSequence11;
                                                                    if (this.currentDialogCommunityId == 0) {
                                                                    }
                                                                    z10 = z7;
                                                                    string = archivedDialogNames;
                                                                    i5 = i6;
                                                                    z9 = z2;
                                                                    charSequence4 = charSequence6;
                                                                    string7 = charSequenceApplyThumbs;
                                                                }
                                                                string2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                                z11 = false;
                                                                charSequence6 = charSequence5;
                                                                if (z11) {
                                                                }
                                                                charSequence9 = null;
                                                                charSequenceApplyThumbs = charSequence11;
                                                                if (this.currentDialogCommunityId == 0) {
                                                                }
                                                                z10 = z7;
                                                                string = archivedDialogNames;
                                                                i5 = i6;
                                                                z9 = z2;
                                                                charSequence4 = charSequence6;
                                                                string7 = charSequenceApplyThumbs;
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
                                                                string8 = LocaleController.getString(C2573R.string.EncryptionProcessing);
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChatWaiting) {
                                                                string8 = LocaleController.formatString(C2573R.string.AwaitingEncryption, UserObject.getFirstName(this.user));
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChatDiscarded) {
                                                                string8 = LocaleController.getString(C2573R.string.EncryptionRejected);
                                                            } else if (encryptedChat2 instanceof TLRPC.TL_encryptedChat) {
                                                                if (encryptedChat2.admin_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                                    string8 = LocaleController.formatString(C2573R.string.EncryptedChatStartedOutgoing, UserObject.getFirstName(this.user));
                                                                } else {
                                                                    string8 = LocaleController.getString(C2573R.string.EncryptedChatStartedIncoming);
                                                                }
                                                            }
                                                        } else if (this.dialogsType == 3 && UserObject.isUserSelf(this.user)) {
                                                            DialogsActivity dialogsActivity2 = this.parentFragment;
                                                            z10 = z7;
                                                            i5 = i4;
                                                            string7 = LocaleController.getString((dialogsActivity2 == null || !dialogsActivity2.isQuote) ? C2573R.string.SavedMessagesInfo : C2573R.string.SavedMessagesInfoQuote);
                                                            string = null;
                                                            z = false;
                                                            z9 = false;
                                                            charSequence4 = charSequence2;
                                                        }
                                                        z10 = z7;
                                                        i5 = i4;
                                                        string7 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                        z9 = z2;
                                                        string = null;
                                                        charSequence4 = charSequence2;
                                                    }
                                                }
                                                i5 = i4;
                                                charSequence12 = string8;
                                                z9 = z2;
                                                charSequence13 = null;
                                                z10 = z7;
                                                string = null;
                                                charSequence14 = charSequence2;
                                            }
                                        }
                                        charSequence13 = null;
                                        charSequence12 = string7;
                                        charSequence14 = charSequence4;
                                    }
                                    CharSequence charSequence2822 = charSequence12;
                                    if (!this.drawForwardIcon) {
                                        charSequence2822 = charSequence12;
                                        if (!isFolderCell()) {
                                            charSequence2822 = charSequence12;
                                            if (!isForumCell()) {
                                                charSequence2822 = charSequence12;
                                                if (!isDialogFolder()) {
                                                    charSequence2822 = charSequence12;
                                                    if (this.draftMessage == null) {
                                                        MessageObject messageObject24 = this.message;
                                                        charSequence2822 = charSequence12;
                                                        if (messageObject24 != null) {
                                                            TLRPC.Message message6 = messageObject24.messageOwner;
                                                            charSequence2822 = charSequence12;
                                                            if (message6 != null) {
                                                                charSequence2822 = charSequence12;
                                                                if (message6.action instanceof TLRPC.TL_messageActionStarGift) {
                                                                    this.drawGiftIcon = true;
                                                                    SpannableStringBuilder spannableStringBuilder10 = new SpannableStringBuilder(charSequence12);
                                                                    spannableStringBuilder10.insert(0, (CharSequence) "d ");
                                                                    ColoredImageSpan coloredImageSpan3 = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2573R.drawable.mini_gift).mutate());
                                                                    coloredImageSpan3.setScale(1.25f, 1.25f);
                                                                    coloredImageSpan3.spaceScaleX = 0.9f;
                                                                    coloredImageSpan3.setAlpha(0.9f);
                                                                    spannableStringBuilder10.setSpan(coloredImageSpan3, 0, 1, 0);
                                                                    TLRPC.TL_textWithEntities tL_textWithEntities5 = ((TLRPC.TL_messageActionStarGift) this.message.messageOwner.action).message;
                                                                    if (tL_textWithEntities5 != null && !TextUtils.isEmpty(tL_textWithEntities5.text)) {
                                                                        this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
                                                                    }
                                                                    charSequence2822 = spannableStringBuilder10;
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
                                            int i30 = this.lastMessageDate;
                                            if (i30 != 0) {
                                                strStringForMessageListDate = LocaleController.stringForMessageListDate(i30);
                                            } else {
                                                strStringForMessageListDate = this.message != null ? LocaleController.stringForMessageListDate(r3.messageOwner.date) : _UrlKt.FRAGMENT_ENCODE_SET;
                                            }
                                        }
                                        MessageObject messageObject25 = this.message;
                                        if (messageObject25 == null || this.isSavedDialog) {
                                            this.drawCheck1 = false;
                                            this.drawCheck2 = false;
                                            this.drawClock = messageObject25 != null && messageObject25.isSending() && this.currentDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
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
                                                int i31 = this.unreadCount;
                                                int i32 = this.mentionCount;
                                                if (i31 + i32 <= 0) {
                                                    z17 = false;
                                                    this.drawCount = false;
                                                    this.drawMention = false;
                                                    str5 = null;
                                                } else if (i31 > i32) {
                                                    this.drawCount = true;
                                                    z17 = false;
                                                    this.drawMention = false;
                                                    str4 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i31 + i32));
                                                    str5 = null;
                                                    this.drawReactionMention = z17;
                                                    this.drawPollVotesMention = z17;
                                                } else {
                                                    z17 = false;
                                                    this.drawCount = false;
                                                    this.drawMention = true;
                                                    str5 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i31 + i32));
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
                                                    int i33 = this.unreadCount;
                                                    if (i33 != 0) {
                                                        z15 = true;
                                                        this.drawCount = true;
                                                        str4 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i33));
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
                                                MessageObject messageObject26 = this.message;
                                                if (!(messageObject26.messageOwner.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                                                    if (messageObject26.isSending()) {
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
                                                                int i34 = this.readOutboxMaxId;
                                                                this.drawCheck1 = (i34 > 0 && i34 >= this.message.getId()) || !this.message.isUnread() || (ChatObject.isChannel(this.chat) && !this.chat.megagroup);
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
                                            int i35 = messagesController.promoDialogType;
                                            if (i35 == MessagesController.PROMO_TYPE_PROXY) {
                                                charSequence16 = charSequence2822;
                                                string9 = LocaleController.getString(C2573R.string.UseProxySponsor);
                                                z14 = false;
                                                if (this.isForChannelSubscriberCell) {
                                                }
                                                string10 = this.titleOverride;
                                                if (string10 == null) {
                                                }
                                                charSequence17 = charSequence14;
                                                str7 = str3;
                                                i10 = i5;
                                                charSequence18 = charSequence13;
                                                strStringForMessageListDate2 = string9;
                                                charSequence19 = string;
                                                charSequenceReplaceEmoji3 = charSequence16;
                                                charSequence21 = string10;
                                            } else if (i35 == MessagesController.PROMO_TYPE_PSA) {
                                                strStringForMessageListDate = LocaleController.getString("PsaType_" + messagesController.promoPsaType);
                                                if (TextUtils.isEmpty(strStringForMessageListDate)) {
                                                    strStringForMessageListDate = LocaleController.getString(C2573R.string.PsaTypeDefault);
                                                }
                                                if (!TextUtils.isEmpty(messagesController.promoPsaMessage)) {
                                                    CharSequence charSequence42 = messagesController.promoPsaMessage;
                                                    z14 = false;
                                                    this.thumbsCount = 0;
                                                    charSequence15 = charSequence42;
                                                }
                                                String str10 = strStringForMessageListDate;
                                                charSequence16 = charSequence15;
                                                string9 = str10;
                                                if (this.isForChannelSubscriberCell) {
                                                }
                                                string10 = this.titleOverride;
                                                if (string10 == null) {
                                                }
                                                charSequence17 = charSequence14;
                                                str7 = str3;
                                                i10 = i5;
                                                charSequence18 = charSequence13;
                                                strStringForMessageListDate2 = string9;
                                                charSequence19 = string;
                                                charSequenceReplaceEmoji3 = charSequence16;
                                                charSequence21 = string10;
                                            }
                                        } else {
                                            z14 = false;
                                            charSequence15 = charSequence2822;
                                            String str102 = strStringForMessageListDate;
                                            charSequence16 = charSequence15;
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
                                                    string10 = LocaleController.getString(C2573R.string.ArchivedChats);
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
                                                            boolean z36 = this.showTopicIconInName;
                                                            TLRPC.TL_forumTopic tL_forumTopic2 = this.forumTopic;
                                                            charSequenceEscape = z36 ? ForumUtilities.getTopicSpannedName(tL_forumTopic2, Theme.dialogs_namePaint[this.paintIndex], drawableArr, false) : AndroidUtilities.escape(tL_forumTopic2.title);
                                                        } else if (chat14.monoforum && chat14.linked_monoforum_id != 0) {
                                                            TLRPC.Chat chat15 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chat.linked_monoforum_id));
                                                            if (chat15 != null) {
                                                                SpannableStringBuilder spannableStringBuilder11 = new SpannableStringBuilder(AndroidUtilities.escape(chat15.title));
                                                                spannableStringBuilder11.append((CharSequence) " ");
                                                                int length4 = spannableStringBuilder11.length();
                                                                spannableStringBuilder11.append((CharSequence) LocaleController.getString(C2573R.string.MonoforumSpan));
                                                                spannableStringBuilder11.setSpan(new FilterCreateActivity.TextSpan(LocaleController.getString(C2573R.string.MonoforumSpan), 9.33f, Theme.key_windowBackgroundWhiteGrayText, this.resourcesProvider), length4, spannableStringBuilder11.length(), 33);
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
                                                                charSequenceEscape = LocaleController.getString(C2573R.string.RepliesTitle);
                                                            } else if (UserObject.isAnonymous(this.user)) {
                                                                charSequenceEscape = LocaleController.getString(C2573R.string.AnonymousForward);
                                                            } else if (UserObject.isUserSelf(this.user) && !this.isMonoForumTopicDialog) {
                                                                if (this.isSavedDialog) {
                                                                    charSequenceEscape = LocaleController.getString(C2573R.string.MyNotes);
                                                                } else if (this.useMeForMyMessages) {
                                                                    charSequenceEscape = LocaleController.getString(C2573R.string.FromYou);
                                                                } else {
                                                                    if (this.dialogsType == 3) {
                                                                        this.drawPinBackground = true;
                                                                    }
                                                                    charSequenceEscape = LocaleController.getString(C2573R.string.SavedMessages);
                                                                }
                                                            } else if (this.isTopic) {
                                                                if (this.topicIconInName == null) {
                                                                    this.topicIconInName = new Drawable[1];
                                                                }
                                                                Drawable[] drawableArr2 = this.topicIconInName;
                                                                drawableArr2[0] = null;
                                                                boolean z37 = this.showTopicIconInName;
                                                                TLRPC.TL_forumTopic tL_forumTopic3 = this.forumTopic;
                                                                charSequenceEscape = z37 ? ForumUtilities.getTopicSpannedName(tL_forumTopic3, Theme.dialogs_namePaint[this.paintIndex], drawableArr2, false) : AndroidUtilities.escape(tL_forumTopic3.title);
                                                            } else {
                                                                charSequenceEscape = AndroidUtilities.escape(UserObject.getUserName(this.user));
                                                            }
                                                            string10 = charSequenceEscape;
                                                        }
                                                        string10 = _UrlKt.FRAGMENT_ENCODE_SET;
                                                    }
                                                    if (string10 != null && string10.length() == 0) {
                                                        string10 = LocaleController.getString(C2573R.string.HiddenName);
                                                    }
                                                }
                                            }
                                            charSequence17 = charSequence14;
                                            str7 = str3;
                                            i10 = i5;
                                            charSequence18 = charSequence13;
                                            strStringForMessageListDate2 = string9;
                                            charSequence19 = string;
                                            charSequenceReplaceEmoji3 = charSequence16;
                                            charSequence21 = string10;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (i22 == 0) {
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
            z2 = z22;
            i2 = 2;
            charSequence = charSequence26;
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
            boolean z38 = LocaleController.isRTL;
            int i36 = this.timeLeft;
            if (z38) {
                this.lock2Left = i36 + iDp + AndroidUtilities.dp(4.0f);
            } else {
                this.lock2Left = (i36 - Theme.dialogs_lock2Drawable.getIntrinsicWidth()) - AndroidUtilities.dp(4.0f);
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
            this.nameWidth -= intrinsicWidth3;
            boolean z39 = LocaleController.isRTL;
            int i37 = this.timeLeft;
            if (!z39) {
                this.clockDrawLeft = (i37 - intrinsicWidth) - intrinsicWidth3;
            } else {
                this.clockDrawLeft = i37 + iDp + AndroidUtilities.dp(5.0f);
                this.nameLeft += intrinsicWidth3;
            }
        } else if (this.drawCheck2) {
            int intrinsicWidth4 = Theme.dialogs_checkDrawable.getIntrinsicWidth() + AndroidUtilities.dp(5.0f);
            int i38 = this.nameWidth - intrinsicWidth4;
            this.nameWidth = i38;
            if (this.drawCheck1) {
                this.nameWidth = i38 - (Theme.dialogs_halfCheckDrawable.getIntrinsicWidth() - AndroidUtilities.dp(8.0f));
                boolean z40 = LocaleController.isRTL;
                int i39 = this.timeLeft;
                if (!z40) {
                    int i40 = (i39 - intrinsicWidth) - intrinsicWidth4;
                    this.halfCheckDrawLeft = i40;
                    this.checkDrawLeft = i40 - AndroidUtilities.dp(5.5f);
                } else {
                    int iDp10 = i39 + iDp + AndroidUtilities.dp(5.0f);
                    this.checkDrawLeft = iDp10;
                    this.halfCheckDrawLeft = iDp10 + AndroidUtilities.dp(5.5f);
                    this.nameLeft += (intrinsicWidth4 + Theme.dialogs_halfCheckDrawable.getIntrinsicWidth()) - AndroidUtilities.dp(8.0f);
                }
            } else {
                boolean z41 = LocaleController.isRTL;
                int i41 = this.timeLeft;
                if (!z41) {
                    this.checkDrawLeft1 = (i41 - intrinsicWidth) - intrinsicWidth4;
                } else {
                    this.checkDrawLeft1 = i41 + iDp + AndroidUtilities.dp(5.0f);
                    this.nameLeft += intrinsicWidth4;
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
            z20 = charSequence21 instanceof String;
            charSequenceReplace = charSequence21;
            if (z20) {
                charSequenceReplace = ((String) charSequence21).replace(c2, ' ');
            }
        } catch (Exception e3) {
            e = e3;
            c2 = 0;
        }
        try {
            if (!this.nameLayoutEllipsizeByGradient) {
                c2 = 0;
                this.nameLayoutFits = charSequenceReplace.length() == TextUtils.ellipsize(charSequenceReplace, Theme.dialogs_namePaint[this.paintIndex], (float) iDp9, TextUtils.TruncateAt.END).length();
                iDp9 += AndroidUtilities.dp(48.0f);
                this.channelShouldUseLineWidth = this.nameLayoutFits;
            } else {
                c2 = 0;
                if (this.isForChannelSubscriberCell) {
                    this.channelShouldUseLineWidth = charSequenceReplace.length() == TextUtils.ellipsize(charSequenceReplace, Theme.dialogs_namePaint[this.paintIndex], (float) iDp9, TextUtils.TruncateAt.END).length();
                }
            }
            float f102 = iDp9;
            this.nameIsEllipsized = Theme.dialogs_namePaint[this.paintIndex].measureText(charSequenceReplace.toString()) <= f102;
            CharSequence charSequenceEllipsize22 = charSequenceReplace;
            if (!this.twoLinesForName) {
                charSequenceEllipsize22 = TextUtils.ellipsize(charSequenceReplace, Theme.dialogs_namePaint[this.paintIndex], f102, TextUtils.TruncateAt.END);
            }
            CharSequence charSequenceReplaceEmoji62 = Emoji.replaceEmoji(charSequenceEllipsize22, Theme.dialogs_namePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject232 = this.message;
            CharSequence charSequence43 = (messageObject232 == null && messageObject232.hasHighlightedWords() && (charSequenceHighlightText3 = AndroidUtilities.highlightText(charSequenceReplaceEmoji62, this.message.highlightedWords, this.resourcesProvider)) != null) ? charSequenceHighlightText3 : charSequenceReplaceEmoji62;
            if (!this.twoLinesForName) {
                this.nameLayout = StaticLayoutEx.createStaticLayout(charSequence43, Theme.dialogs_namePaint[this.paintIndex], iDp9, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iDp9, 2);
            } else {
                this.nameLayout = new StaticLayout(charSequence43, Theme.dialogs_namePaint[this.paintIndex], Math.max(iDp9, this.nameWidth), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            this.nameLayoutTranslateX = (this.nameLayoutEllipsizeByGradient || !this.nameLayout.isRtlCharAt(0)) ? 0.0f : -AndroidUtilities.dp(c2);
            this.nameLayoutEllipsizeLeft = this.nameLayout.isRtlCharAt(0);
        } catch (Exception e4) {
            e = e4;
            FileLog.m898e(e);
        }
        this.animatedEmojiStackName = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStackName, this.nameLayout);
        if (!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
            f5 = 8.0f;
            f6 = 0.0f;
            f7 = 13.0f;
            f8 = 20.0f;
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
            measuredWidth = getMeasuredWidth() - AndroidUtilities.dp((this.messagePaddingStart + 20) - (LocaleController.isRTL ? 0 : 12));
            if (LocaleController.isRTL) {
                int iDp20 = AndroidUtilities.dp(22.0f);
                this.messageNameLeft = iDp20;
                this.messageLeft = iDp20;
                this.typingLeft = iDp20;
                this.buttonLeft = iDp20;
                f7 = 13.0f;
                iDp7 = getMeasuredWidth() - AndroidUtilities.dp(this.avatarStart + 52);
                f8 = 20.0f;
                iDp8 = iDp7 - AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 9);
            } else {
                f7 = 13.0f;
                f8 = 20.0f;
                int iDp21 = AndroidUtilities.dp(this.messagePaddingStart + 4);
                this.messageNameLeft = iDp21;
                this.messageLeft = iDp21;
                this.typingLeft = iDp21;
                this.buttonLeft = iDp21;
                iDp7 = AndroidUtilities.dp(this.avatarStart);
                iDp8 = AndroidUtilities.dp(67.0f) + iDp7;
            }
            f5 = 8.0f;
            f6 = 0.0f;
            this.storyParams.originalAvatarRect.set(iDp7, iDp19, iDp7 + AndroidUtilities.dp(52.0f), iDp19 + AndroidUtilities.dp(52.0f));
            int i42 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr3 = this.thumbImage;
                if (i42 >= imageReceiverArr3.length) {
                    break;
                }
                imageReceiverArr3[i42].setImageCoords(((this.thumbSize + 2) * i42) + iDp8, ((AndroidUtilities.dp(30.0f) + iDp19) + (this.twoLinesForName ? AndroidUtilities.dp(f8) : 0)) - ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout || (dialogCellTags3 = this.tags) == null || dialogCellTags3.isEmpty()) ? 0 : AndroidUtilities.dp(9.0f)), AndroidUtilities.dp(this.thumbSize), AndroidUtilities.dp(this.thumbSize));
                i42++;
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
            this.messageNameTop += AndroidUtilities.dp(f8);
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
        } else if (str2 != null || str7 != null || this.drawReactionMention || this.drawPollVotesMention) {
            if (str2 != null) {
                this.countWidth = Math.max(AndroidUtilities.dp(f5), (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str2)));
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
                    this.mentionWidth = Math.max(AndroidUtilities.dp(f5), (int) Math.ceil(Theme.dialogs_countTextPaint2.measureText(str7)));
                    this.mentionLayout = new StaticLayout(str7, Theme.dialogs_countTextPaint2, this.mentionWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                } else {
                    this.mentionWidth = AndroidUtilities.dp(f5);
                }
                int iDp24 = this.mentionWidth + AndroidUtilities.dp(f);
                measuredWidth -= iDp24;
                if (!LocaleController.isRTL) {
                    int measuredWidth5 = (getMeasuredWidth() - (this.mentionWidth + AndroidUtilities.dp(12.666f))) - AndroidUtilities.dp(15.666f);
                    int i43 = this.countWidth;
                    this.mentionLeft = measuredWidth5 - (i43 != 0 ? i43 + AndroidUtilities.dp(f) : 0);
                } else {
                    int iDp25 = AndroidUtilities.dp(15.666f);
                    int i44 = this.countWidth;
                    this.mentionLeft = iDp25 + (i44 != 0 ? i44 + AndroidUtilities.dp(f) : 0);
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
                        int i45 = this.mentionWidth;
                        this.reactionMentionLeft = measuredWidth6 - (i45 != 0 ? i45 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i46 = this.reactionMentionLeft;
                        int i47 = this.countWidth;
                        this.reactionMentionLeft = i46 - (i47 != 0 ? i47 + AndroidUtilities.dp(f) : 0);
                    }
                } else {
                    int iDp27 = AndroidUtilities.dp(15.666f);
                    this.reactionMentionLeft = iDp27;
                    if (this.drawMention) {
                        int i48 = this.mentionWidth;
                        this.reactionMentionLeft = iDp27 + (i48 != 0 ? i48 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i49 = this.reactionMentionLeft;
                        int i50 = this.countWidth;
                        this.reactionMentionLeft = i49 + (i50 != 0 ? i50 + AndroidUtilities.dp(f) : 0);
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
                        int i51 = this.pollVotesMentionLeft;
                        int i52 = this.mentionWidth;
                        this.pollVotesMentionLeft = i51 - (i52 != 0 ? i52 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i53 = this.pollVotesMentionLeft;
                        int i54 = this.countWidth;
                        this.pollVotesMentionLeft = i53 - (i54 != 0 ? i54 + AndroidUtilities.dp(f) : 0);
                    }
                } else {
                    int iDp29 = AndroidUtilities.dp(15.666f);
                    this.pollVotesMentionLeft = iDp29;
                    if (this.drawReactionMention) {
                        this.pollVotesMentionLeft = iDp29 + AndroidUtilities.dp(25.0f);
                    }
                    if (this.drawMention) {
                        int i55 = this.pollVotesMentionLeft;
                        int i56 = this.mentionWidth;
                        this.pollVotesMentionLeft = i55 + (i56 != 0 ? i56 + AndroidUtilities.dp(f) : 0);
                    }
                    if (this.drawCount) {
                        int i57 = this.pollVotesMentionLeft;
                        int i58 = this.countWidth;
                        this.pollVotesMentionLeft = i57 + (i58 != 0 ? i58 + AndroidUtilities.dp(f) : 0);
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
            int iDp31 = AndroidUtilities.dp(f7);
            measuredWidth -= iDp30;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                iDp5 = AndroidUtilities.dp(40.0f);
            } else {
                iDp5 = this.isTopic ? AndroidUtilities.dp(33.0f) : AndroidUtilities.dp(c2);
            }
            boolean z42 = LocaleController.isRTL;
            RectF rectF = this.openButtonRect;
            if (!z42) {
                rectF.set((getMeasuredWidth() - iDp30) - AndroidUtilities.dp(f7), iDp5, getMeasuredWidth() - AndroidUtilities.dp(f7), iDp5 + AndroidUtilities.dp(28.0f));
            } else {
                rectF.set(AndroidUtilities.dp(f7), iDp5, AndroidUtilities.dp(f7) + iDp30, iDp5 + AndroidUtilities.dp(28.0f));
                int i59 = iDp30 + iDp31;
                this.messageLeft += i59;
                this.typingLeft += i59;
                this.buttonLeft += i59;
                this.messageNameLeft += i59;
            }
            this.drawCount = false;
            this.drawMention = false;
        } else {
            this.drawCount = false;
            this.drawMention = false;
        }
        if (z10) {
            if (charSequenceReplaceEmoji3 == null) {
                charSequenceReplaceEmoji3 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            int length5 = charSequenceReplaceEmoji3.length();
            CharSequence charSequenceSubSequence2 = charSequenceReplaceEmoji3;
            if (length5 > 150) {
                charSequenceSubSequence2 = charSequenceReplaceEmoji3.subSequence(0, 150);
            }
            if ((!this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || hasTags() || charSequence19 != null) {
                charSequenceReplaceTwoNewLinesToOne = AndroidUtilities.replaceNewLines(charSequenceSubSequence2);
            } else {
                charSequenceReplaceTwoNewLinesToOne = AndroidUtilities.replaceTwoNewLinesToOne(charSequenceSubSequence2);
            }
            charSequenceReplaceEmoji3 = Emoji.replaceEmoji(charSequenceReplaceTwoNewLinesToOne, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
            MessageObject messageObject27 = this.message;
            if (messageObject27 != null && (charSequenceHighlightText2 = AndroidUtilities.highlightText(charSequenceReplaceEmoji3, messageObject27.highlightedWords, this.resourcesProvider)) != null) {
                charSequenceReplaceEmoji3 = charSequenceHighlightText2;
            }
        }
        int iMax2 = Math.max(AndroidUtilities.dp(12.0f), measuredWidth);
        this.buttonTop = AndroidUtilities.dp((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) ? 58.0f : 62.0f);
        if (((this.useForceThreeLines && !SharedConfig.useThreeLinesLayout) || isForumCell()) && hasTags()) {
            this.buttonTop -= AndroidUtilities.dp(isForumCell() ? 10.0f : 12.0f);
        }
        zIsForumCell = isForumCell();
        boolean z352 = this.useForceThreeLines;
        if (!zIsForumCell) {
            this.messageTop = AndroidUtilities.dp((z352 || SharedConfig.useThreeLinesLayout) ? 34.0f : 39.0f);
            int i60 = 0;
            while (true) {
                ImageReceiver[] imageReceiverArr4 = this.thumbImage;
                if (i60 >= imageReceiverArr4.length) {
                    break;
                }
                imageReceiverArr4[i60].setImageY(this.buttonTop);
                i60++;
            }
        } else {
            if ((z352 || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence19 != null && (this.currentDialogFolderId == 0 || this.currentDialogFolderDialogsCount == 1)) {
                CharSequence charSequenceReplaceEmoji7 = Emoji.replaceEmoji(charSequence19, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt(), false);
                try {
                    messageObject9 = this.message;
                } catch (Exception e5) {
                    e = e5;
                }
                if (messageObject9 != null && messageObject9.hasHighlightedWords()) {
                    CharSequence charSequenceHighlightText5 = AndroidUtilities.highlightText(charSequenceReplaceEmoji7, this.message.highlightedWords, this.resourcesProvider);
                    if (charSequenceHighlightText5 != null) {
                        charSequence22 = charSequenceHighlightText5;
                    }
                    this.messageNameLayout = StaticLayoutEx.createStaticLayout(charSequence22, Theme.dialogs_messageNamePaint, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iMax2, 1);
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
                        charSequence23 = charSequence22;
                    }
                } else {
                    charSequence22 = charSequenceReplaceEmoji7;
                    try {
                        this.messageNameLayout = StaticLayoutEx.createStaticLayout(charSequence22, Theme.dialogs_messageNamePaint, iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, iMax2, 1);
                    } catch (Exception e6) {
                        e = e6;
                        charSequenceReplaceEmoji7 = charSequence22;
                        FileLog.m898e(e);
                        charSequence22 = charSequenceReplaceEmoji7;
                    }
                    this.messageTop = AndroidUtilities.dp(51.0f);
                    iDp6 = (this.nameIsEllipsized || !this.isTopic) ? 0 : AndroidUtilities.dp(f8);
                    i14 = 0;
                    while (true) {
                        imageReceiverArr2 = this.thumbImage;
                        if (i14 < imageReceiverArr2.length) {
                            break;
                        }
                        imageReceiverArr2[i14].setImageY(i13 + iDp6 + AndroidUtilities.dp(40.0f));
                        i14++;
                    }
                    charSequence23 = charSequence22;
                }
                if (this.twoLinesForName) {
                    this.messageTop += AndroidUtilities.dp(f8);
                }
                this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
                this.buttonCreated = false;
                if (!TextUtils.isEmpty(charSequence18)) {
                    this.buttonLayout = new StaticLayout(TextUtils.ellipsize(Emoji.replaceEmoji(charSequence18, this.currentMessagePaint.getFontMetricsInt(), false), this.currentMessagePaint, iMax2 - AndroidUtilities.dp(26.0f), TextUtils.TruncateAt.END), this.currentMessagePaint, iMax2 - AndroidUtilities.dp(f8), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                    this.spoilersPool2.addAll(this.spoilers2);
                    this.spoilers2.clear();
                    SpoilerEffect.addSpoilers(this, this.buttonLayout, this.spoilersPool2, this.spoilers2);
                } else {
                    this.buttonLayout = null;
                }
                this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
                if (!TextUtils.isEmpty(charSequence17)) {
                    if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                        if (!hasTags()) {
                            try {
                                this.typingLayout = StaticLayoutEx.createStaticLayout(charSequence17, Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, iMax2, 1);
                            } catch (Exception e7) {
                                e = e7;
                                iMax2 = iMax2;
                                FileLog.m898e(e);
                            }
                        } else {
                            try {
                                this.typingLayout = new StaticLayout(TextUtils.ellipsize(charSequence17, this.currentMessagePaint, iMax2 - AndroidUtilities.dp(12.0f), TextUtils.TruncateAt.END), Theme.dialogs_messagePrintingPaint[this.paintIndex], iMax2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                            } catch (Exception e8) {
                                e = e8;
                                iMax2 = iMax2;
                                FileLog.m898e(e);
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
                    charSequenceEllipsize = charSequence23;
                    charSequence23 = null;
                } else {
                    if ((this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags() && charSequence23 == null) {
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
                    int i292 = iMax2;
                    this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                    z19 = LocaleController.isRTL;
                    StaticLayout staticLayout22 = this.nameLayout;
                    if (!z19) {
                        if (staticLayout22 != null && staticLayout22.getLineCount() > 0) {
                            float lineLeft = this.nameLayout.getLineLeft(0);
                            double dCeil = Math.ceil(this.nameLayout.getLineWidth(0));
                            int iDp32 = this.nameLeft + AndroidUtilities.dp(12.0f);
                            this.nameLeft = iDp32;
                            if (this.drawBotVerified) {
                                this.nameLeft = iDp32 + AndroidUtilities.dp(21.0f);
                            }
                            if (this.nameLayoutEllipsizeByGradient) {
                                dCeil = Math.min(this.nameWidth, dCeil);
                            }
                            if ((this.dialogMuted || this.drawUnmute || this.dialogMutedProgress > f6) && !this.drawVerified && !this.drawBadge && this.drawScam == 0) {
                                boolean z43 = this.drawPremium;
                                int i61 = this.nameLeft;
                                if (z43) {
                                    int iDp33 = (int) ((((double) i61) + ((((double) this.nameWidth) - dCeil) - ((double) lineLeft))) - ((double) AndroidUtilities.dp(f4)));
                                    this.nameMuteLeft = iDp33;
                                    this.nameMutedIconLeft = (iDp33 - AndroidUtilities.dp(6.0f)) - Theme.dialogs_muteDrawable.getIntrinsicWidth();
                                } else {
                                    this.nameMuteLeft = (int) (((((double) i61) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_muteDrawable.getIntrinsicWidth()));
                                }
                            } else if (this.drawVerified) {
                                this.nameMuteLeft = (int) (((((double) this.nameLeft) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_verifiedDrawable.getIntrinsicWidth()));
                            } else if (this.drawBadge) {
                                this.nameMuteLeft = (int) (((((double) this.nameLeft) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) AndroidUtilities.dp(f4)));
                            } else if (this.drawPremium) {
                                int iDp34 = (int) ((((double) this.nameLeft) + ((((double) this.nameWidth) - dCeil) - ((double) lineLeft))) - ((double) AndroidUtilities.dp(f4)));
                                this.nameMuteLeft = iDp34;
                                this.nameMutedIconLeft = (iDp34 - AndroidUtilities.dp(6.0f)) - Theme.dialogs_muteDrawable.getIntrinsicWidth();
                            } else {
                                int i62 = this.drawScam;
                                int i63 = this.nameLeft;
                                if (i62 != 0) {
                                    this.nameMuteLeft = (int) (((((double) i63) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) (this.drawScam == 1 ? Theme.dialogs_scamDrawable : Theme.dialogs_fakeDrawable).getIntrinsicWidth()));
                                } else {
                                    this.nameMuteLeft = (int) (((((double) i63) + (((double) this.nameWidth) - dCeil)) - ((double) AndroidUtilities.dp(6.0f))) - ((double) Theme.dialogs_muteDrawable.getIntrinsicWidth()));
                                }
                            }
                            if (lineLeft == f6) {
                                int i64 = this.nameWidth;
                                if (dCeil < i64) {
                                    this.nameLeft = (int) (((double) this.nameLeft) + (((double) i64) - dCeil));
                                }
                            }
                        }
                        StaticLayout staticLayout3 = this.messageLayout;
                        int iMin = Integer.MAX_VALUE;
                        if (staticLayout3 != null && (lineCount6 = staticLayout3.getLineCount()) > 0) {
                            int iMin2 = Integer.MAX_VALUE;
                            int i65 = 0;
                            while (true) {
                                if (i65 >= lineCount6) {
                                    break;
                                }
                                if (this.messageLayout.getLineLeft(i65) != f6) {
                                    iMin2 = 0;
                                    break;
                                } else {
                                    iMin2 = Math.min(iMin2, (int) (((double) i292) - Math.ceil(this.messageLayout.getLineWidth(i65))));
                                    i65++;
                                }
                            }
                            if (iMin2 != Integer.MAX_VALUE) {
                                this.messageLeft += iMin2;
                            }
                        }
                        StaticLayout staticLayout4 = this.typingLayout;
                        if (staticLayout4 != null && (lineCount5 = staticLayout4.getLineCount()) > 0) {
                            int iMin3 = Integer.MAX_VALUE;
                            int i66 = 0;
                            while (true) {
                                if (i66 >= lineCount5) {
                                    break;
                                }
                                if (this.typingLayout.getLineLeft(i66) != f6) {
                                    iMin3 = 0;
                                    break;
                                } else {
                                    iMin3 = Math.min(iMin3, (int) (((double) i292) - Math.ceil(this.typingLayout.getLineWidth(i66))));
                                    i66++;
                                }
                            }
                            if (iMin3 != Integer.MAX_VALUE) {
                                this.typingLeft += iMin3;
                            }
                        }
                        StaticLayout staticLayout5 = this.messageNameLayout;
                        if (staticLayout5 != null && staticLayout5.getLineCount() > 0 && this.messageNameLayout.getLineLeft(0) == f6) {
                            double dCeil2 = Math.ceil(this.messageNameLayout.getLineWidth(0));
                            double d = i292;
                            if (dCeil2 < d) {
                                this.messageNameLeft = (int) (((double) this.messageNameLeft) + (d - dCeil2));
                            }
                        }
                        StaticLayout staticLayout6 = this.buttonLayout;
                        if (staticLayout6 != null && (lineCount4 = staticLayout6.getLineCount()) > 0) {
                            for (int i67 = 0; i67 < lineCount4; i67++) {
                                iMin = (int) Math.min(iMin, this.buttonLayout.getWidth() - this.buttonLayout.getLineRight(i67));
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
                                int i68 = this.nameWidth;
                                if (dCeil3 < i68) {
                                    this.nameLeft = (int) (((double) this.nameLeft) - (((double) i68) - dCeil3));
                                }
                            }
                            if (this.drawBotVerified) {
                                this.nameLeft += AndroidUtilities.dp(21.0f);
                            }
                            int iDp35 = (int) (this.nameLeft + lineRight + AndroidUtilities.dp(6.0f));
                            this.nameMuteLeft = iDp35;
                            if (this.drawPremium) {
                                this.nameMutedIconLeft = iDp35 + AndroidUtilities.dp(30.0f);
                            }
                        }
                        StaticLayout staticLayout7 = this.messageLayout;
                        if (staticLayout7 != null && (lineCount3 = staticLayout7.getLineCount()) > 0) {
                            float fMin = 2.1474836E9f;
                            for (int i69 = 0; i69 < lineCount3; i69++) {
                                fMin = Math.min(fMin, this.messageLayout.getLineLeft(i69));
                            }
                            this.messageLeft = (int) (this.messageLeft - fMin);
                        }
                        StaticLayout staticLayout8 = this.buttonLayout;
                        if (staticLayout8 != null && (lineCount2 = staticLayout8.getLineCount()) > 0) {
                            float fMin2 = 2.1474836E9f;
                            for (int i70 = 0; i70 < lineCount2; i70++) {
                                fMin2 = Math.min(fMin2, this.buttonLayout.getLineLeft(i70));
                            }
                            this.buttonLeft = (int) (this.buttonLeft - fMin2);
                        }
                        StaticLayout staticLayout9 = this.typingLayout;
                        if (staticLayout9 != null && (lineCount = staticLayout9.getLineCount()) > 0) {
                            float fMin3 = 2.1474836E9f;
                            for (int i71 = 0; i71 < lineCount; i71++) {
                                fMin3 = Math.min(fMin3, this.typingLayout.getLineLeft(i71));
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
                        int i72 = this.typingLeft;
                        if (primaryHorizontal >= primaryHorizontal2) {
                            this.statusDrawableLeft = (int) (i72 + primaryHorizontal);
                        } else {
                            this.statusDrawableLeft = (int) (i72 + primaryHorizontal2 + AndroidUtilities.dp(3.0f));
                        }
                    }
                    updateThumbsPosition();
                }
                if (separateMessageNameLine() && !isForumCell() && shouldDrawForwardPreviewIcon(this.message)) {
                    SpannableStringBuilder spannableStringBuilder12 = new SpannableStringBuilder(charSequenceEllipsize);
                    prependForwardedIcon(spannableStringBuilder12, 0);
                    charSequence24 = spannableStringBuilder12;
                } else {
                    charSequence24 = charSequenceEllipsize;
                }
                alignment = (this.isForum || !LocaleController.isRTL) ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                if ((!this.useForceThreeLines || SharedConfig.useThreeLinesLayout) && !hasTags()) {
                    if (this.thumbsCount > 0 && charSequence23 != null) {
                        iMax2 += AndroidUtilities.dp(5.0f);
                    }
                    i16 = iMax2;
                    try {
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence24, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence23 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    } catch (Exception e9) {
                        e = e9;
                        iMax2 = i16;
                        this.messageLayout = null;
                        FileLog.m898e(e);
                    }
                } else {
                    if (this.thumbsCount > 0) {
                        iMax2 += AndroidUtilities.dp((r0 * (this.thumbSize + 2)) + 3);
                        if (LocaleController.isRTL && !isForumCell()) {
                            this.messageLeft -= AndroidUtilities.dp((this.thumbsCount * (this.thumbSize + 2)) + 3);
                        }
                    }
                    try {
                        i17 = iMax2;
                    } catch (Exception e10) {
                        e = e10;
                    }
                    try {
                        this.messageLayout = new StaticLayout(charSequence24, this.currentMessagePaint, i17, alignment, 1.0f, 0.0f, false);
                        iMax2 = i17;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    } catch (Exception e11) {
                        e = e11;
                        iMax2 = i17;
                        this.messageLayout = null;
                        FileLog.m898e(e);
                    }
                }
                int i2922 = iMax2;
                this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
                z19 = LocaleController.isRTL;
                StaticLayout staticLayout222 = this.nameLayout;
                if (!z19) {
                }
                staticLayout = this.typingLayout;
                if (staticLayout != null) {
                    if (i10 < 0) {
                        primaryHorizontal = this.typingLayout.getPrimaryHorizontal(0);
                        primaryHorizontal2 = this.typingLayout.getPrimaryHorizontal(1);
                        int i722 = this.typingLeft;
                        if (primaryHorizontal >= primaryHorizontal2) {
                        }
                    }
                }
                updateThumbsPosition();
            }
            this.messageNameLayout = null;
            if (this.useForceThreeLines || SharedConfig.useThreeLinesLayout) {
                this.messageTop = AndroidUtilities.dp(32.0f);
                int iDp36 = (this.nameIsEllipsized && this.isTopic) ? AndroidUtilities.dp(f8) : 0;
                int i73 = 0;
                while (true) {
                    ImageReceiver[] imageReceiverArr5 = this.thumbImage;
                    if (i73 >= imageReceiverArr5.length) {
                        break;
                    }
                    imageReceiverArr5[i73].setImageY(i13 + iDp36 + AndroidUtilities.dp(21.0f));
                    i73++;
                }
            } else {
                this.messageTop = AndroidUtilities.dp(39.0f);
            }
        }
        charSequence23 = charSequence19;
        if (this.twoLinesForName) {
        }
        this.animatedEmojiStack2 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack2, this.messageNameLayout);
        this.buttonCreated = false;
        if (!TextUtils.isEmpty(charSequence18)) {
        }
        this.animatedEmojiStack3 = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack3, this.buttonLayout);
        if (!TextUtils.isEmpty(charSequence17)) {
        }
        if (charSequenceReplaceEmoji3 instanceof Spannable) {
        }
        if (this.useForceThreeLines) {
            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
            charSequenceEllipsize = charSequence23;
            charSequence23 = null;
            if (separateMessageNameLine()) {
                charSequence24 = charSequenceEllipsize;
                if (this.isForum) {
                    alignment = (this.isForum || !LocaleController.isRTL) ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                    if (!this.useForceThreeLines) {
                        if (this.thumbsCount > 0) {
                            iMax2 += AndroidUtilities.dp(5.0f);
                        }
                        i16 = iMax2;
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence24, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence23 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    } else {
                        if (this.thumbsCount > 0) {
                        }
                        i16 = iMax2;
                        this.messageLayout = StaticLayoutEx.createStaticLayout(charSequence24, this.currentMessagePaint, i16, alignment, 1.0f, AndroidUtilities.dp(1.0f), false, TextUtils.TruncateAt.END, i16, charSequence23 != null ? 1 : 2);
                        iMax2 = i16;
                        this.spoilersPool.addAll(this.spoilers);
                        this.spoilers.clear();
                        SpoilerEffect.addSpoilers(this, this.messageLayout, -2, -2, this.spoilersPool, this.spoilers);
                    }
                }
            }
        } else {
            this.currentMessagePaint = Theme.dialogs_messagePaint[this.paintIndex];
            charSequenceEllipsize = charSequence23;
            charSequence23 = null;
            if (separateMessageNameLine()) {
            }
        }
        int i29222 = iMax2;
        this.animatedEmojiStack = AnimatedEmojiSpan.update(0, this, this.animatedEmojiStack, this.messageLayout);
        z19 = LocaleController.isRTL;
        StaticLayout staticLayout2222 = this.nameLayout;
        if (!z19) {
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
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2573R.drawable.mini_forwarded).mutate());
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
                FileLog.m898e(e);
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
                CheckBox2 checkBox22 = new CheckBox2(getContext(), 21, this.resourcesProvider) { // from class: org.telegram.ui.Cells.DialogCell.3
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

    public boolean update(int i) {
        return update(i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0596 A[PHI: r3
  0x0596: PHI (r3v98 boolean) = (r3v97 boolean), (r3v104 boolean), (r3v104 boolean), (r3v104 boolean) binds: [B:262:0x04ad, B:269:0x04c6, B:298:0x0574, B:306:0x0586] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x05c8  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x05da  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0700  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x072f  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0855  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0863  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0874  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x08d9  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0907  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0991  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x09a3  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x09a5  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x09b3  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x09b5  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x09bd  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x09bf  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x09c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0a12  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0a23  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0a28  */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0a2c  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.telegram.tgnet.TLRPC$Chat, org.telegram.tgnet.TLRPC$EncryptedChat, org.telegram.tgnet.TLRPC$User] */
    /* JADX WARN: Type inference failed for: r7v81 */
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
            this.avatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(52.0f));
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
                            this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.4
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
                            this.reactionsMentionsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.5
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
                            avatarCorners = ExteraConfig.getAvatarCorners(56.0f, false, (chat10 != null && chat10.forum && this.currentDialogFolderId == 0 && !this.useFromUserAsAvatar) || (!this.isSavedDialog && (user = this.user) != null && user.self && MessagesController.getInstance(this.currentAccount).savedViewAsChats), (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStories(getDialogId()) && getDialogId() != UserConfig.getInstance(this.currentAccount).clientUserId) || (this.currentDialogFolderId != 0 && MessagesController.getInstance(this.currentAccount).getStoriesController().hasHiddenStories()));
                            this.avatarImage.setRoundRadius(avatarCorners);
                            z8 = z5;
                            z13 = z4;
                        }
                        z7 = false;
                        this.avatarImage.setRoundRadius(avatarCorners);
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
                    this.countAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.4
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
                        this.avatarImage.setRoundRadius(avatarCorners);
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

    /* JADX WARN: Type update failed for variable: r49v0 'this'  ??, new type: org.telegram.ui.Cells.DialogCell
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 74541. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyInvokeTypes(TypeUpdate.java:381)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.invokeListener(TypeUpdate.java:364)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
     */
    /* JADX WARN: Type update failed for variable: r49v0 'this'  ??, new type: org.telegram.ui.Cells.DialogCell
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 74541. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
     */
    /* JADX WARN: Type update failed for variable: r7v41 ??, new type: org.telegram.ui.Cells.DialogCell
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 74541. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
     */
    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    public void onDraw(android.graphics.Canvas r50) {
        /*
            Method dump skipped, instruction units count: 7454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.ui.Cells.DialogCell.onDraw(android.graphics.Canvas):void");
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
                this.starBg = getContext().getResources().getDrawable(C2573R.drawable.star_small_outline).mutate();
            }
            int color = Theme.getColor(Theme.key_windowBackgroundWhite);
            if (this.starBgColor != color) {
                Drawable drawable = this.starBg;
                this.starBgColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
            }
            if (this.starFg == null) {
                this.starFg = getContext().getResources().getDrawable(C2573R.drawable.star_small_inner).mutate();
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
                Drawable drawableMutate = getContext().getResources().getDrawable(C2573R.drawable.msg_mini_lock2).mutate();
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
        this.statusDrawableAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Cells.DialogCell.6
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
        if (i == C2573R.id.acc_action_chat_preview && (dialogsActivity = this.parentFragment) != null) {
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
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(C2573R.id.acc_action_chat_preview, LocaleController.getString(C2573R.string.AccActionChatPreview)));
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
            sb.append(LocaleController.getString(C2573R.string.ArchivedChats));
            sb.append(". ");
        } else {
            if (this.encryptedChat != null) {
                sb.append(LocaleController.getString(C2573R.string.AccDescrSecretChat));
                sb.append(". ");
            }
            if (this.isTopic && this.forumTopic != null) {
                sb.append(LocaleController.getString(C2573R.string.AccDescrTopic));
                sb.append(". ");
                sb.append(this.forumTopic.title);
                sb.append(". ");
            } else {
                TLRPC.User user2 = this.user;
                if (user2 != null) {
                    if (UserObject.isReplyUser(user2)) {
                        sb.append(LocaleController.getString(C2573R.string.RepliesTitle));
                    } else if (UserObject.isAnonymous(this.user)) {
                        sb.append(LocaleController.getString(C2573R.string.AnonymousForward));
                    } else {
                        if (this.user.bot) {
                            sb.append(LocaleController.getString(C2573R.string.Bot));
                            sb.append(". ");
                        }
                        TLRPC.User user3 = this.user;
                        if (user3.self) {
                            sb.append(LocaleController.getString(C2573R.string.SavedMessages));
                        } else {
                            sb.append(ContactsController.formatName(user3.first_name, user3.last_name));
                        }
                    }
                    sb.append(". ");
                } else {
                    TLRPC.Chat chat = this.chat;
                    if (chat != null) {
                        if (chat.broadcast) {
                            sb.append(LocaleController.getString(C2573R.string.AccDescrChannel));
                        } else {
                            sb.append(LocaleController.getString(C2573R.string.AccDescrGroup));
                        }
                        sb.append(". ");
                        sb.append(this.chat.title);
                        sb.append(". ");
                    }
                }
            }
        }
        if (this.drawVerified) {
            sb.append(LocaleController.getString(C2573R.string.AccDescrVerified));
            sb.append(". ");
        }
        if (this.dialogMuted) {
            sb.append(LocaleController.getString(C2573R.string.AccDescrNotificationsMuted));
            sb.append(". ");
        }
        if (isOnline()) {
            sb.append(LocaleController.getString(C2573R.string.AccDescrUserOnline));
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
            sb.append(LocaleController.getString(C2573R.string.AccDescrMentionReaction));
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
            sb.append(LocaleController.formatString("AccDescrSentDate", C2573R.string.AccDescrSentDate, dateAudio));
        } else {
            sb.append(LocaleController.formatString("AccDescrReceivedDate", C2573R.string.AccDescrReceivedDate, dateAudio));
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
            return LocaleController.getString(C2573R.string.FromYou);
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
                return LocaleController.getString(C2573R.string.HiddenName);
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
            return LocaleController.getString(C2573R.string.FromYou);
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
                    FileLog.m898e(e);
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
                    string = DialogMediaIconsHelper.addDialogMediaSpan(spannableString2, C2573R.drawable.dialog_media_poll_20, true);
                } else {
                    string = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities.text, C2573R.drawable.dialog_media_poll_20, true);
                }
            } else if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
                TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
                TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageMediaToDo.todo.title;
                if (tL_textWithEntities3 != null && tL_textWithEntities3.entities != null) {
                    SpannableString spannableString3 = new SpannableString(tL_messageMediaToDo.todo.title.text.replace('\n', ' '));
                    TLRPC.TL_textWithEntities tL_textWithEntities4 = tL_messageMediaToDo.todo.title;
                    MediaDataController.addTextStyleRuns(tL_textWithEntities4.entities, tL_textWithEntities4.text, spannableString3);
                    MediaDataController.addAnimatedEmojiSpans(tL_messageMediaToDo.todo.title.entities, spannableString3, Theme.dialogs_messagePaint[this.paintIndex].getFontMetricsInt());
                    string = DialogMediaIconsHelper.addDialogMediaSpan(spannableString3, C2573R.drawable.dialog_media_checklist_20, true);
                } else {
                    string = DialogMediaIconsHelper.addDialogMediaSpan(tL_textWithEntities3.text, C2573R.drawable.dialog_media_checklist_20, true);
                }
            } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
                string = DialogMediaIconsHelper.addDialogMediaSpan(messageMedia.game.title, C2573R.drawable.dialog_media_game_20, true);
            } else if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
                string = messageMedia.title;
            } else if (messageObject3.type == 14) {
                string = String.format("🎧 \u2068%s - %s\u2069", messageObject3.getMusicAuthor(), this.message.getMusicTitle());
            } else if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
                int size = ((TLRPC.TL_messageMediaPaidMedia) messageMedia).extended_media.size();
                if (this.hasVideoThumb) {
                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Media", size, new Object[0]) : LocaleController.getString(C2573R.string.AttachVideo);
                } else {
                    pluralString2 = size > 1 ? LocaleController.formatPluralString("Photos", size, new Object[0]) : LocaleController.getString(C2573R.string.AttachPhoto);
                }
                string = StarsIntroActivity.replaceStars(LocaleController.formatString(C2573R.string.AttachPaidMedia, pluralString2));
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
                    FileLog.m898e(e2);
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
                        this.formattedNames = LocaleController.getString(ChatObject.isMonoForum(chat) ? C2573R.string.NoMonoforumTopicsCreated : C2573R.string.NoTopicsCreated);
                        return;
                    }
                    MessagesController.getInstance(i).getTopicsController().preloadTopics(chat.id);
                    this.formattedNames = LocaleController.getString(C2573R.string.Loading);
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
