package org.telegram.messenger;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.URLSpan;
import android.util.Base64;
import android.view.View;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import com.android.dx.AppDataDirGuesser;
import com.android.dx.io.Opcodes;
import com.android.dx.rop.code.RegisterSpec;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.utils.chats.WidePosts;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.ui.TextPaint;
import j$.net.URLEncoder;
import java.io.BufferedReader;
import java.io.File;
import java.io.StringReader;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import kotlin.time.DurationKt;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TLKeyboardHelper;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_keyboard;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Business.QuickRepliesController;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.EllipsizeSpanAnimator;
import org.telegram.ui.Components.FormattedDateSpan;
import org.telegram.ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.QuoteSpan;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.Reactions.ReactionsUtils;
import org.telegram.ui.Components.SquigglyLinesSpan;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextStyleSpan;
import org.telegram.ui.Components.TranscribeButton;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.Components.URLSpanBotCommand;
import org.telegram.ui.Components.URLSpanBrowser;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanNoUnderlineBold;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.ui.Components.WebPlayerView;
import org.telegram.ui.Components.poll.PollAttachedMediaPack;
import org.telegram.ui.Components.spoilers.SpoilerEffect;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.MultiLayoutTypingAnimator;
import org.telegram.ui.PeerColorActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.community.CommunityUtils;
import org.telegram.ui.web.BotWebViewContainer;
import org.telegram.utils.code.highlight.CodeHighlighting;

/* JADX INFO: loaded from: classes.dex */
public class MessageObject {
    public static final int ENTITIES_ALL = 0;
    public static final int ENTITIES_ONLY_HASHTAGS = 1;
    private static final int LINES_PER_BLOCK = 10;
    private static final int LINES_PER_BLOCK_WITH_EMOJI = 5;
    private static final int MESSAGE_ID_EPHEMERAL_BITS_MASK = 1610612736;
    private static final int MESSAGE_ID_RESERVED_BITS_MASK = 1879048192;
    public static final int MESSAGE_SEND_STATE_EDITING = 3;
    public static final int MESSAGE_SEND_STATE_SENDING = 1;
    public static final int MESSAGE_SEND_STATE_SEND_ERROR = 2;
    public static final int MESSAGE_SEND_STATE_SENT = 0;
    public static final int POSITION_FLAG_BOTTOM = 8;
    public static final int POSITION_FLAG_LEFT = 1;
    public static final int POSITION_FLAG_RIGHT = 2;
    public static final int POSITION_FLAG_TOP = 4;
    public static final int SUGGESTION_FLAG_EDIT_MEDIA = 8;
    public static final int SUGGESTION_FLAG_EDIT_PRCIE = 1;
    public static final int SUGGESTION_FLAG_EDIT_TEXT = 4;
    public static final int SUGGESTION_FLAG_EDIT_TIME = 2;
    public static final int TYPE_ACTION_PHOTO = 11;
    public static final int TYPE_ACTION_WALLPAPER = 22;
    public static final int TYPE_ANIMATED_STICKER = 15;
    public static final int TYPE_ARTICLE = 36;
    public static final int TYPE_COMMUNITY_CHANGED = 37;
    public static final int TYPE_CONTACT = 12;
    public static final int TYPE_DATE = 10;
    public static final int TYPE_EMOJIS = 19;
    public static final int TYPE_EXTENDED_MEDIA_PREVIEW = 20;
    public static final int TYPE_FILE = 9;
    public static final int TYPE_GEO = 4;
    public static final int TYPE_GIF = 8;
    public static final int TYPE_GIFT_OFFER = 33;
    public static final int TYPE_GIFT_OFFER_REJECTED = 34;
    public static final int TYPE_GIFT_PREMIUM = 18;
    public static final int TYPE_GIFT_PREMIUM_CHANNEL = 25;
    public static final int TYPE_GIFT_STARS = 30;
    public static final int TYPE_GIFT_THEME_UPDATE = 31;
    public static final int TYPE_GIVEAWAY = 26;
    public static final int TYPE_GIVEAWAY_RESULTS = 28;
    public static final int TYPE_JOINED_CHANNEL = 27;
    public static final int TYPE_LOADING = 6;
    public static final int TYPE_MUSIC = 14;
    public static final int TYPE_PAID_MEDIA = 29;
    public static final int TYPE_PHONE_CALL = 16;
    public static final int TYPE_PHOTO = 1;
    public static final int TYPE_POLL = 17;
    public static final int TYPE_ROUND_VIDEO = 5;
    public static final int TYPE_SHARING_OFFER = 35;
    public static final int TYPE_STICKER = 13;
    public static final int TYPE_STORY = 23;
    public static final int TYPE_STORY_MENTION = 24;
    public static final int TYPE_SUGGEST_BIRTHDAY = 32;
    public static final int TYPE_SUGGEST_PHOTO = 21;
    public static final int TYPE_TEXT = 0;
    public static final int TYPE_UNSUPPORTED = 38;
    public static final int TYPE_VIDEO = 3;
    public static final int TYPE_VOICE = 2;
    private static CharSequence channelSpan;
    static final String[] excludeWords = {" vs. ", " vs ", " versus ", " ft. ", " ft ", " featuring ", " feat. ", " feat ", " presents ", " pres. ", " pres ", " and ", " & ", " . "};
    private static CharSequence groupSpan;
    public static Pattern instagramUrlPattern;
    private static Pattern loginCodePattern;
    public static Pattern urlPattern;
    private static CharSequence[] userSpan;
    public static Pattern videoTimeUrlPattern;
    public long actionDeleteGroupEventId;
    public boolean animateComments;
    public int animatedEmojiCount;
    public boolean attachPathExists;
    public double attributeDuration;
    public Bitmap audioCover;
    public int audioPlayerDuration;
    public float audioProgress;
    public int audioProgressMs;
    public int audioProgressSec;
    public StringBuilder botButtonsLayout;
    public float bufferedProgress;
    public boolean business;
    private Integer cachedApproximateHeight;
    public Boolean cachedIsSupergroup;
    public VideoPlayer.VideoUri cachedQuality;
    public Float cachedSavedTimestamp;
    private Integer cachedStartsTimestamp;
    private Integer cachedTextHeight;
    public boolean cancelEditing;
    public CharSequence caption;
    private boolean captionSummarized;
    private boolean captionTranslated;
    private boolean channelJoined;
    public boolean channelJoinedExpanded;
    public ArrayList<TLRPC.PollAnswer> checkedVotes;
    public int contentType;
    public int currentAccount;
    public TLRPC.TL_channelAdminLogEvent currentEvent;
    public Drawable customAvatarDrawable;
    public String customName;
    public String customReplyName;
    public String dateKey;
    public int dateKeyInt;
    public boolean deleted;
    public boolean deletedByThanos;
    public TLRPC.Document documentToPollAddOption;
    public boolean drawServiceWithDefaultTypeface;
    public CharSequence editingMessage;
    public ArrayList<TLRPC.MessageEntity> editingMessageEntities;
    public boolean editingMessageSearchWebPage;
    public TLRPC.Document emojiAnimatedSticker;
    public String emojiAnimatedStickerColor;
    public Long emojiAnimatedStickerId;
    private boolean emojiAnimatedStickerLoading;
    public TLRPC.VideoSize emojiMarkup;
    public int emojiOnlyCount;
    public long eventId;
    public boolean expandedExplanation;
    public HashSet<Integer> expandedQuotes;
    public long extendedMediaLastCheckTime;
    public boolean factCheckExpanded;
    private CharSequence factCheckText;
    public boolean flickerLoading;
    public boolean forceAvatar;
    public boolean forceExpired;
    public boolean forcePlayEffect;
    public float forceSeekTo;
    public boolean forceShowPollResults;
    public boolean forceUpdate;
    private float generatedWithDensity;
    private float generatedWithFontSize;
    private int generatedWithMinSize;
    public float gifState;
    public boolean hadAnimationNotReadyLoading;
    public boolean hasCode;
    public boolean hasCodeAtBottom;
    public boolean hasCodeAtTop;
    public boolean hasQuote;
    public boolean hasQuoteAtBottom;
    public boolean hasRtl;
    public boolean hasSingleCode;
    public boolean hasSingleQuote;
    private boolean hasUnwrappedEmoji;
    public boolean hasWideCode;
    public boolean hideSendersName;
    public VideoPlayer.VideoUri highestQuality;
    public ArrayList<String> highlightedWords;
    private BotInlineKeyboard.Source inlineKeyboardSource;
    public boolean isBotPendingDraft;
    public boolean isDateObject;
    public boolean isDownloadingFile;
    private Boolean isEmbedVideoCached;
    public boolean isLiveStoryPush;
    public boolean isMediaSpoilersRevealed;
    public boolean isMediaSpoilersRevealedInSharedMedia;
    public boolean isOauthPush;
    public Boolean isOutOwnerCached;
    public boolean isPlayingExplanationObject;
    public boolean isPrimaryGroupMessage;
    public boolean isReactionPush;
    public boolean isRepostPreview;
    public boolean isRepostVideoPreview;
    public boolean isRestrictedMessage;
    private int isRoundVideoCached;
    public boolean isSaved;
    public boolean isSavedFiltered;
    public Boolean isSensitiveCached;
    public boolean isSpoilersRevealed;
    public boolean isStoryMentionPush;
    public boolean isStoryPush;
    public boolean isStoryPushHidden;
    public boolean isStoryReactionPush;
    public boolean isTopicMainMessage;
    public boolean isVideoConversionObject;
    public Object lastGeoWebFileLoaded;
    public Object lastGeoWebFileSet;
    public int lastLineWidth;
    private boolean layoutCreated;
    public CharSequence linkDescription;
    public long loadedFileSize;
    public boolean loadingCancelled;
    public boolean localChannel;
    public boolean localEdit;
    public long localGroupId;
    public String localName;
    public long localSentGroupId;
    public boolean localSupergroup;
    public int localType;
    public String localUserName;
    public boolean mediaExists;
    public ImageLocation mediaSmallThumb;
    public ImageLocation mediaThumb;
    public TLRPC.Message messageOwner;
    public CharSequence messageText;
    public CharSequence messageTextForReply;
    public CharSequence messageTextShort;
    public CharSequence messageTrimmedToHighlight;
    public boolean messageTrimmedToHighlightCut;
    public String monthKey;
    public boolean notime;
    public boolean openedInViewer;
    public int overrideLinkColor;
    public long overrideLinkEmoji;
    public TLRPC.TL_peerColorCollectible overrideLinkPeerColor;
    public StoriesController.StoriesList parentStoriesList;
    public int parentWidth;
    public SvgHelper.SvgDrawable pathThumb;
    public ArrayList<TLRPC.PhotoSize> photoThumbs;
    public ArrayList<TLRPC.PhotoSize> photoThumbs2;
    public TLObject photoThumbsObject;
    public TLObject photoThumbsObject2;
    public boolean playedGiftAnimation;
    public long pollLastCheckTime;
    public ArrayList<Integer> pollMediaMapping;
    public boolean pollVisibleOnScreen;
    public boolean preview;
    public boolean previewForward;
    public String previousAttachPath;
    public TLRPC.MessageMedia previousMedia;
    public String previousMessage;
    public ArrayList<TLRPC.MessageEntity> previousMessageEntities;
    public boolean putInDownloadsStore;
    public TLRPC.Document qualityToSave;
    public String quick_reply_shortcut;
    public CharSequence quizExplanation;
    private byte[] randomWaveform;
    public boolean reactionsChanged;
    public long reactionsLastCheckTime;
    public int realDate;
    public MessageObject replyMessageObject;
    public boolean replyTextEllipsized;
    public boolean replyTextRevealed;
    public TLRPC.TL_forumTopic replyToForumTopic;
    public boolean resendAsIs;
    public boolean revealingMediaSpoilers;
    public boolean richCheckboxEcho;
    public RichMessageLayout richLayout;
    public int richMessageMediaType;
    public boolean scheduled;
    public boolean scheduledSent;
    public int searchType;
    private CharSequence secretOnceSpan;
    private CharSequence secretPlaySpan;
    public SendAnimationData sendAnimationData;
    public TLRPC.Peer sendAsPeer;
    public boolean sendPreview;
    public MediaController.PhotoEntry sendPreviewEntry;
    public boolean sentHighQuality;
    public boolean settingAvatar;
    public boolean shouldRemoveVideoEditedInfo;
    public boolean sideMenuEnabled;
    private boolean spoiledLoginCode;
    public String sponsoredAdditionalInfo;
    public String sponsoredButtonText;
    public boolean sponsoredCanReport;
    public TLRPC.PeerColor sponsoredColor;
    public byte[] sponsoredId;
    public String sponsoredInfo;
    public TLRPC.MessageMedia sponsoredMedia;
    public TLRPC.Photo sponsoredPhoto;
    public boolean sponsoredRecommended;
    public String sponsoredTitle;
    public String sponsoredUrl;
    public int stableId;
    public TL_stories.StoryItem storyItem;
    private TLRPC.WebPage storyMentionWebpage;
    public BitmapDrawable strippedThumb;
    public boolean summarized;
    public ArrayList<TextLayoutBlock> textLayoutBlocks;
    public int textWidth;
    public float textXOffset;
    public VideoPlayer.VideoUri thumbQuality;
    public Drawable[] topicIconDrawable;
    public int totalAnimatedEmojiCount;
    public boolean translated;
    public int type;
    public StoriesController.UploadingStory uploadingStory;
    public boolean useCustomPhoto;
    public CharSequence vCardData;
    public VideoEditedInfo videoEditedInfo;
    public ArrayList<VideoPlayer.Quality> videoQualities;
    private Boolean videoQualitiesCached;
    public boolean viewsReloaded;
    public int wantedBotKeyboardWidth;
    public boolean wasJustSent;
    public boolean wasUnread;
    public ArrayList<TLRPC.MessageEntity> webPageDescriptionEntities;
    private int widePostsTextWidth;
    public CharSequence youtubeDescription;

    public static class SendAnimationData {
        public float currentScale;
        public float currentX;
        public float currentY;
        public ChatMessageCell.TransitionParams fromParams;
        public boolean fromPreview;
        public float height;
        public float progress;
        public float timeAlpha;
        public float width;

        /* JADX INFO: renamed from: x */
        public float f968x;

        /* JADX INFO: renamed from: y */
        public float f969y;
    }

    public static void addPhoneLinks(CharSequence charSequence) {
    }

    public static int ephemeralMessageIdPack(int i) {
        return (i & (-1879048193)) | MESSAGE_ID_EPHEMERAL_BITS_MASK;
    }

    public static boolean isEphemeralMessageId(int i) {
        return (i & MESSAGE_ID_RESERVED_BITS_MASK) == MESSAGE_ID_EPHEMERAL_BITS_MASK;
    }

    public void checkForScam() {
    }

    @Deprecated
    public void generateSuggestionApprovalMessageText() {
    }

    public float getProgress() {
        return 0.0f;
    }

    public boolean shouldDrawReactionsInLayout() {
        return true;
    }

    public int getChatMode() {
        if (this.scheduled) {
            return 1;
        }
        if (isWelcomeMessage()) {
            return 9;
        }
        return isQuickReply() ? 5 : 0;
    }

    public static boolean hasUnreadReactions(TLRPC.Message message) {
        if (message == null) {
            return false;
        }
        return hasUnreadReactions(message.reactions);
    }

    public static boolean hasUnreadReactions(TLRPC.TL_messageReactions tL_messageReactions) {
        if (tL_messageReactions == null) {
            return false;
        }
        for (int i = 0; i < tL_messageReactions.recent_reactions.size(); i++) {
            if (tL_messageReactions.recent_reactions.get(i).unread) {
                return true;
            }
        }
        return false;
    }

    public static boolean isPremiumSticker(TLRPC.Document document) {
        if (document != null && document.thumbs != null) {
            for (int i = 0; i < document.video_thumbs.size(); i++) {
                if ("f".equals(document.video_thumbs.get(i).type)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static long getTopicId(MessageObject messageObject) {
        if (messageObject == null) {
            return 0L;
        }
        return getTopicId(messageObject.currentAccount, messageObject.messageOwner, false);
    }

    public static long getTopicId(int i, TLRPC.Message message) {
        return getTopicId(i, message, false);
    }

    public long getMonoForumTopicId() {
        return getMonoForumTopicId(this.messageOwner);
    }

    public static long getMonoForumTopicId(TLRPC.Message message) {
        TLRPC.Peer peer;
        if (message == null || (peer = message.saved_peer_id) == null) {
            return 0L;
        }
        long j = peer.chat_id;
        if (j != 0) {
            return -j;
        }
        long j2 = peer.channel_id;
        return j2 != 0 ? -j2 : peer.user_id;
    }

    public long getTopicId() {
        return getTopicId(this.currentAccount, this.messageOwner, getForumFlags(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId())), MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()))));
    }

    private static int getForumFlags(TLRPC.Chat chat, TLRPC.User user) {
        return BitwiseUtils.setFlag(BitwiseUtils.setFlag(BitwiseUtils.setFlag(0, 1, ChatObject.isForum(chat)), 4, ChatObject.isMonoForum(chat)), 8, UserObject.isBotForum(user));
    }

    public static long getTopicId(int i, TLRPC.Message message, int i2) {
        long topicId = getTopicId(i, message, BitwiseUtils.hasFlag(i2, 1), BitwiseUtils.hasFlag(i2, 4));
        if (topicId == 0 && BitwiseUtils.hasFlag(i2, 8)) {
            return -1L;
        }
        return topicId;
    }

    @Deprecated
    public static long getTopicId(int i, TLRPC.Message message, boolean z) {
        return getTopicId(i, message, z, false);
    }

    @Deprecated
    private static long getTopicId(int i, TLRPC.Message message, boolean z, boolean z2) {
        int i2;
        long clientUserId = UserConfig.getInstance(i).getClientUserId();
        if (z2) {
            return getMonoForumTopicId(message);
        }
        if ((message.flags & TLObject.FLAG_30) != 0 && DialogObject.getPeerDialogId(message.peer_id) == clientUserId) {
            i2 = message.quick_reply_shortcut_id;
        } else {
            if (!z && i >= 0 && DialogObject.getPeerDialogId(message.peer_id) == clientUserId) {
                return getSavedDialogId(clientUserId, message);
            }
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionTopicCreate) {
                i2 = message.id;
            } else {
                TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
                if (messageReplyHeader == null || !messageReplyHeader.forum_topic) {
                    return z ? 1L : 0L;
                }
                if ((message instanceof TLRPC.TL_messageService) && !(messageAction instanceof TLRPC.TL_messageActionPinMessage)) {
                    int i3 = messageReplyHeader.reply_to_msg_id;
                    if (i3 == 0) {
                        i3 = messageReplyHeader.reply_to_top_id;
                    }
                    return i3;
                }
                int i4 = messageReplyHeader.reply_to_top_id;
                if (i4 == 0) {
                    i4 = messageReplyHeader.reply_to_msg_id;
                }
                return i4;
            }
        }
        return i2;
    }

    public static boolean isTopicActionMessage(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return false;
        }
        TLRPC.MessageAction messageAction = message.action;
        return (messageAction instanceof TLRPC.TL_messageActionTopicCreate) || (messageAction instanceof TLRPC.TL_messageActionTopicEdit);
    }

    public static boolean canCreateStripedThubms() {
        return SharedConfig.getDevicePerformanceClass() == 2;
    }

    public static void normalizeFlags(TLRPC.Message message) {
        TLRPC.Peer peer = message.from_id;
        if (peer == null) {
            message.flags &= -257;
        }
        if (peer == null) {
            message.flags &= -5;
        }
        if (message.reply_to == null) {
            message.flags &= -9;
        }
        if (message.media == null) {
            message.flags &= -513;
        }
        if (message.reply_markup == null) {
            message.flags &= -65;
        }
        if (message.replies == null) {
            message.flags &= -8388609;
        }
        if (message.reactions == null) {
            message.flags &= -1048577;
        }
    }

    public static double getDocumentDuration(TLRPC.Document document) {
        if (document == null) {
            return 0.0d;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.duration;
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                return documentAttribute.duration;
            }
        }
        return 0.0d;
    }

    public static int getVideoWidth(TLRPC.Document document) {
        if (document == null) {
            return 0;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.f1017w;
            }
        }
        return 0;
    }

    public static int getVideoHeight(TLRPC.Document document) {
        if (document == null) {
            return 0;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.f1016h;
            }
        }
        return 0;
    }

    public static String getVideoCodec(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return ((TLRPC.TL_documentAttributeVideo) documentAttribute).video_codec;
            }
        }
        return null;
    }

    public boolean isWallpaperAction() {
        if (this.type == 22) {
            return true;
        }
        TLRPC.Message message = this.messageOwner;
        return message != null && (message.action instanceof TLRPC.TL_messageActionSetSameChatWallPaper);
    }

    public boolean isWallpaperForBoth() {
        TLRPC.Message message;
        if (!isWallpaperAction() || (message = this.messageOwner) == null) {
            return false;
        }
        TLRPC.MessageAction messageAction = message.action;
        return (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) && ((TLRPC.TL_messageActionSetChatWallPaper) messageAction).for_both;
    }

    public boolean isCurrentWallpaper() {
        TLRPC.Message message;
        TLRPC.MessageAction messageAction;
        TLRPC.UserFull userFull;
        TLRPC.WallPaper wallPaper;
        return (!isWallpaperAction() || (message = this.messageOwner) == null || (messageAction = message.action) == null || messageAction.wallpaper == null || (userFull = MessagesController.getInstance(this.currentAccount).getUserFull(getDialogId())) == null || (wallPaper = userFull.wallpaper) == null || !userFull.wallpaper_overridden || this.messageOwner.action.wallpaper.id != wallPaper.id) ? false : true;
    }

    public int getEmojiOnlyCount() {
        return this.emojiOnlyCount;
    }

    public boolean hasMediaSpoilers() {
        TLRPC.MessageMedia messageMedia;
        return (!this.isRepostPreview && (((messageMedia = this.messageOwner.media) != null && messageMedia.spoiler) || needDrawBluredPreview())) || isHiddenSensitive();
    }

    public boolean isSensitive() {
        TLRPC.Chat chat;
        Boolean bool = this.isSensitiveCached;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.messageOwner == null || !canBeSensitive()) {
            return false;
        }
        if (!this.messageOwner.restriction_reason.isEmpty()) {
            for (int i = 0; i < this.messageOwner.restriction_reason.size(); i++) {
                TLRPC.RestrictionReason restrictionReason = this.messageOwner.restriction_reason.get(i);
                if ("sensitive".equals(restrictionReason.reason) && ("all".equals(restrictionReason.platform) || (("android".equals(restrictionReason.platform) && (!BuildVars.isBetaApp() || BuildVars.DEBUG_PRIVATE_VERSION)) || "android-all".equals(restrictionReason.platform)))) {
                    this.isSensitiveCached = Boolean.TRUE;
                    return true;
                }
            }
        }
        if (getDialogId() < 0 && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) != null && chat.restriction_reason != null) {
            for (int i2 = 0; i2 < chat.restriction_reason.size(); i2++) {
                TLRPC.RestrictionReason restrictionReason2 = chat.restriction_reason.get(i2);
                if ("sensitive".equals(restrictionReason2.reason) && ("all".equals(restrictionReason2.platform) || (("android".equals(restrictionReason2.platform) && (!BuildVars.isBetaApp() || BuildVars.DEBUG_PRIVATE_VERSION)) || "android-all".equals(restrictionReason2.platform)))) {
                    this.isSensitiveCached = Boolean.TRUE;
                    return true;
                }
            }
        }
        this.isSensitiveCached = Boolean.FALSE;
        return false;
    }

    public boolean isHiddenSensitive() {
        return isSensitive() && !MessagesController.getInstance(this.currentAccount).showSensitiveContent();
    }

    public boolean canBeSensitive() {
        if (this.messageOwner == null) {
            return false;
        }
        int i = this.type;
        return ((i != 1 && i != 3 && i != 9 && i != 8 && i != 5) || this.sendPreview || this.isRepostPreview || isOutOwner() || this.messageOwner.send_state != 0) ? false : true;
    }

    public boolean shouldDrawReactions() {
        return !this.isRepostPreview;
    }

    public TLRPC.MessagePeerReaction getRandomUnreadReaction() {
        ArrayList<TLRPC.MessagePeerReaction> arrayList;
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || (arrayList = tL_messageReactions.recent_reactions) == null || arrayList.isEmpty()) {
            return null;
        }
        return this.messageOwner.reactions.recent_reactions.get(0);
    }

    public void markPollVotesAsRead() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                ((TLRPC.TL_messageMediaPoll) messageMedia).results.has_unread_votes = false;
            }
        }
    }

    public void markReactionsAsRead() {
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || tL_messageReactions.recent_reactions == null) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.messageOwner.reactions.recent_reactions.size(); i++) {
            if (this.messageOwner.reactions.recent_reactions.get(i).unread) {
                this.messageOwner.reactions.recent_reactions.get(i).unread = false;
                z = true;
            }
        }
        if (z) {
            MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            TLRPC.Message message = this.messageOwner;
            messagesStorage.markMessageReactionsAsRead(message.dialog_id, getTopicId(this.currentAccount, message), this.messageOwner.id);
        }
    }

    public boolean isPremiumSticker() {
        if (getMedia(this.messageOwner) == null || !getMedia(this.messageOwner).nopremium) {
            return isPremiumSticker(getDocument());
        }
        return false;
    }

    public TLRPC.VideoSize getPremiumStickerAnimation() {
        return getPremiumStickerAnimation(getDocument());
    }

    public static TLRPC.VideoSize getPremiumStickerAnimation(TLRPC.Document document) {
        if (document != null && document.thumbs != null) {
            for (int i = 0; i < document.video_thumbs.size(); i++) {
                if ("f".equals(document.video_thumbs.get(i).type)) {
                    return document.video_thumbs.get(i);
                }
            }
        }
        return null;
    }

    public void copyStableParams(MessageObject messageObject) {
        ArrayList<TextLayoutBlock> arrayList;
        TLRPC.MessageMedia messageMedia;
        ArrayList<TLRPC.ReactionCount> arrayList2;
        TLRPC.TL_messageReactions tL_messageReactions;
        this.stableId = messageObject.stableId;
        TLRPC.Message message = this.messageOwner;
        message.premiumEffectWasPlayed = messageObject.messageOwner.premiumEffectWasPlayed;
        this.forcePlayEffect = messageObject.forcePlayEffect;
        this.wasJustSent = messageObject.wasJustSent;
        TLRPC.TL_messageReactions tL_messageReactions2 = message.reactions;
        int i = 0;
        if (tL_messageReactions2 != null && (arrayList2 = tL_messageReactions2.results) != null && !arrayList2.isEmpty() && (tL_messageReactions = messageObject.messageOwner.reactions) != null && tL_messageReactions.results != null) {
            for (int i2 = 0; i2 < this.messageOwner.reactions.results.size(); i2++) {
                TLRPC.ReactionCount reactionCount = this.messageOwner.reactions.results.get(i2);
                for (int i3 = 0; i3 < messageObject.messageOwner.reactions.results.size(); i3++) {
                    TLRPC.ReactionCount reactionCount2 = messageObject.messageOwner.reactions.results.get(i3);
                    if (ReactionsLayoutInBubble.equalsTLReaction(reactionCount.reaction, reactionCount2.reaction)) {
                        reactionCount.lastDrawnPosition = reactionCount2.lastDrawnPosition;
                    }
                }
            }
        }
        boolean z = messageObject.isSpoilersRevealed;
        this.isSpoilersRevealed = z;
        TLRPC.Message message2 = this.messageOwner;
        TLRPC.Message message3 = messageObject.messageOwner;
        message2.replyStory = message3.replyStory;
        TLRPC.MessageMedia messageMedia2 = message2.media;
        if (messageMedia2 != null && (messageMedia = message3.media) != null) {
            messageMedia2.storyItem = messageMedia.storyItem;
        }
        if (!z || (arrayList = this.textLayoutBlocks) == null) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            TextLayoutBlock textLayoutBlock = arrayList.get(i);
            i++;
            textLayoutBlock.spoilers.clear();
        }
    }

    public ArrayList<ReactionsLayoutInBubble.VisibleReaction> getChoosenReactions() {
        ArrayList<ReactionsLayoutInBubble.VisibleReaction> arrayList = new ArrayList<>();
        if (this.messageOwner.reactions != null) {
            for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
                if (this.messageOwner.reactions.results.get(i).chosen) {
                    arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromTL(this.messageOwner.reactions.results.get(i).reaction));
                }
            }
        }
        return arrayList;
    }

    public boolean isReplyToStory() {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        MessageObject messageObject = this.replyMessageObject;
        return ((messageObject != null && (messageObject.messageOwner instanceof TLRPC.TL_messageEmpty)) || (messageReplyHeader = (message = this.messageOwner).reply_to) == null || messageReplyHeader.story_id == 0 || (message.flags & 8) == 0) ? false : true;
    }

    public boolean isUnsupported() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported;
    }

    public boolean isExpiredStory() {
        int i = this.type;
        return (i == 23 || i == 24) && (this.messageOwner.media.storyItem instanceof TL_stories.TL_storyItemDeleted);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class VCardData {
        private String company;
        private final ArrayList<String> emails = new ArrayList<>();
        private final ArrayList<String> phones = new ArrayList<>();

        public static CharSequence parse(String str) {
            CharSequence charSequence;
            String[] strArr;
            int i;
            byte[] bArrDecodeQuotedPrintable;
            int i2;
            try {
                BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
                int i3 = 0;
                boolean z = false;
                VCardData vCardData = null;
                StringBuilder sb = null;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (!line.startsWith("PHOTO")) {
                        if (line.indexOf(58) >= 0) {
                            if (line.startsWith("BEGIN:VCARD")) {
                                vCardData = new VCardData();
                            } else if (line.startsWith("END:VCARD") && vCardData != null) {
                                z = true;
                            }
                        }
                        if (sb != null) {
                            sb.append(line);
                            line = sb.toString();
                            sb = null;
                        }
                        if (line.contains("=QUOTED-PRINTABLE") && line.endsWith("=")) {
                            sb = new StringBuilder(line.substring(i3, line.length() - 1));
                        } else {
                            int iIndexOf = line.indexOf(":");
                            if (iIndexOf >= 0) {
                                strArr = new String[]{line.substring(i3, iIndexOf), line.substring(iIndexOf + 1).trim()};
                            } else {
                                strArr = new String[]{line.trim()};
                            }
                            if (strArr.length < 2 || vCardData == null) {
                                i = i3;
                            } else if (strArr[i3].startsWith("ORG")) {
                                String[] strArrSplit = strArr[i3].split(";");
                                int length = strArrSplit.length;
                                int i4 = i3;
                                String str2 = null;
                                String str3 = null;
                                while (i4 < length) {
                                    String[] strArrSplit2 = strArrSplit[i4].split("=");
                                    charSequence = null;
                                    try {
                                        if (strArrSplit2.length != 2) {
                                            i2 = i3;
                                        } else {
                                            i2 = i3;
                                            if (strArrSplit2[i3].equals("CHARSET")) {
                                                str3 = strArrSplit2[1];
                                            } else if (strArrSplit2[i2].equals("ENCODING")) {
                                                str2 = strArrSplit2[1];
                                            }
                                        }
                                        i4++;
                                        i3 = i2;
                                    } catch (Throwable unused) {
                                        return charSequence;
                                    }
                                }
                                i = i3;
                                vCardData.company = strArr[1];
                                if (str2 != null && str2.equalsIgnoreCase("QUOTED-PRINTABLE") && (bArrDecodeQuotedPrintable = AndroidUtilities.decodeQuotedPrintable(AndroidUtilities.getStringBytes(vCardData.company))) != null && bArrDecodeQuotedPrintable.length != 0 && str3 != null) {
                                    vCardData.company = new String(bArrDecodeQuotedPrintable, str3);
                                }
                                vCardData.company = vCardData.company.replace(';', ' ');
                            } else {
                                i = i3;
                                if (strArr[i].startsWith("TEL")) {
                                    if (strArr[1].length() > 0) {
                                        vCardData.phones.add(strArr[1]);
                                    }
                                } else if (strArr[i].startsWith("EMAIL")) {
                                    String str4 = strArr[1];
                                    if (str4.length() > 0) {
                                        vCardData.emails.add(str4);
                                    }
                                }
                            }
                            i3 = i;
                        }
                    }
                    return charSequence;
                }
                int i5 = i3;
                charSequence = null;
                try {
                    bufferedReader.close();
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
                if (!z) {
                    return null;
                }
                StringBuilder sb2 = new StringBuilder();
                for (int i6 = i5; i6 < vCardData.phones.size(); i6++) {
                    if (sb2.length() > 0) {
                        sb2.append('\n');
                    }
                    String str5 = vCardData.phones.get(i6);
                    if (str5.contains("#") || str5.contains("*")) {
                        sb2.append(str5);
                    } else {
                        sb2.append(PhoneFormat.getInstance().format(str5));
                    }
                }
                for (int i7 = i5; i7 < vCardData.emails.size(); i7++) {
                    if (sb2.length() > 0) {
                        sb2.append('\n');
                    }
                    sb2.append(PhoneFormat.getInstance().format(vCardData.emails.get(i7)));
                }
                if (!TextUtils.isEmpty(vCardData.company)) {
                    if (sb2.length() > 0) {
                        sb2.append('\n');
                    }
                    sb2.append(vCardData.company);
                }
                return sb2;
            } catch (Throwable unused2) {
                return null;
            }
        }
    }

    public static boolean expandedQuotesEquals(HashSet<Integer> hashSet, HashSet<Integer> hashSet2) {
        if (hashSet == null && hashSet2 == null) {
            return true;
        }
        return (hashSet == null ? 0 : hashSet.size()) == (hashSet2 == null ? 0 : hashSet2.size()) && hashSet != null && hashSet.equals(hashSet2);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class TextLayoutBlock implements MultiLayoutTypingAnimator.Block {
        public static final int FLAG_NOT_RTL = 2;
        public static final int FLAG_RTL = 1;
        public int charactersEnd;
        public int charactersOffset;
        public boolean code;
        public ButtonBounce collapsedBounce;
        public int collapsedHeight;
        public Drawable copyIcon;
        public int copyIconColor;
        public Drawable copySelector;
        public int copySelectorColor;
        public Paint copySeparator;
        public Text copyText;
        public byte directionFlags;
        public boolean first;
        public boolean hasCodeCopyButton;
        public int height;
        public int index;
        public String language;
        public int languageHeight;
        public Text languageLayout;
        public boolean last;
        public float maxRight;
        public MessageObject messageObject;
        public int originalWidth;
        public int padBottom;
        public int padTop;
        public boolean quote;
        public boolean quoteCollapse;
        public int start;
        public StaticLayout textLayout;
        public AtomicReference<Layout> spoilersPatchedTextLayout = new AtomicReference<>();
        public List<SpoilerEffect> spoilers = new ArrayList();

        @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
        public View getParentView() {
            return null;
        }

        @Override // org.telegram.ui.MultiLayoutTypingAnimator.Block
        public Layout getLayout() {
            return this.textLayout;
        }

        public int heightCollapsed() {
            return this.quoteCollapse ? this.collapsedHeight : this.height;
        }

        public int height() {
            return (this.quoteCollapse && collapsed()) ? this.collapsedHeight : this.height;
        }

        public int height(ChatMessageCell.TransitionParams transitionParams) {
            boolean z = this.quoteCollapse;
            int i = this.height;
            return !z ? i : AndroidUtilities.lerp(i, this.collapsedHeight, collapsed(transitionParams));
        }

        public float collapsed(ChatMessageCell.TransitionParams transitionParams) {
            boolean zCollapsed;
            if (transitionParams.animateExpandedQuotes) {
                HashSet<Integer> hashSet = transitionParams.animateExpandedQuotesFrom;
                zCollapsed = true;
                if (hashSet != null && hashSet.contains(Integer.valueOf(this.index))) {
                    zCollapsed = false;
                }
            } else {
                zCollapsed = collapsed();
            }
            return AndroidUtilities.lerp(zCollapsed ? 1.0f : 0.0f, collapsed() ? 1.0f : 0.0f, transitionParams.animateChangeProgress);
        }

        public boolean collapsed() {
            HashSet<Integer> hashSet;
            MessageObject messageObject = this.messageObject;
            return messageObject == null || (hashSet = messageObject.expandedQuotes) == null || !hashSet.contains(Integer.valueOf(this.index));
        }

        public float textYOffset(ArrayList<TextLayoutBlock> arrayList) {
            TextLayoutBlock textLayoutBlock;
            if (arrayList == null) {
                return 0.0f;
            }
            int iHeight = 0;
            for (int i = 0; i < arrayList.size() && (textLayoutBlock = arrayList.get(i)) != this; i++) {
                iHeight += textLayoutBlock.padTop + textLayoutBlock.height() + textLayoutBlock.padBottom;
            }
            return iHeight;
        }

        public float textYOffset(ArrayList<TextLayoutBlock> arrayList, ChatMessageCell.TransitionParams transitionParams) {
            TextLayoutBlock textLayoutBlock;
            if (arrayList == null) {
                return 0.0f;
            }
            int iHeight = 0;
            for (int i = 0; i < arrayList.size() && (textLayoutBlock = arrayList.get(i)) != this; i++) {
                iHeight += textLayoutBlock.padTop + textLayoutBlock.height(transitionParams) + textLayoutBlock.padBottom;
            }
            return iHeight;
        }

        public void layoutCode(String str, int i, boolean z) {
            boolean z2 = i >= 75 && !z;
            this.hasCodeCopyButton = z2;
            if (z2) {
                this.copyText = new Text(LocaleController.getString(C2807R.string.CopyCode).toUpperCase(), SharedConfig.fontSize - 3, AndroidUtilities.bold());
                Drawable drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2807R.drawable.msg_copy).mutate();
                this.copyIcon = drawableMutate;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(this.copyIconColor, PorterDuff.Mode.SRC_IN));
                this.copySelector = Theme.createRadSelectorDrawable(this.copySelectorColor, 0, 0, Math.min(5, SharedConfig.bubbleRadius), 0);
                this.copySeparator = new Paint(1);
            }
            if (TextUtils.isEmpty(str)) {
                this.language = null;
                this.languageLayout = null;
            } else {
                this.language = str;
                Text text = new Text(capitalizeLanguage(str), (SharedConfig.fontSize - 1) - (CodeHighlighting.getTextSizeDecrement(i) / 2), AndroidUtilities.bold());
                this.languageLayout = text;
                this.languageHeight = ((int) (text.getTextSize() * 1.714f)) + AndroidUtilities.dp(4.0f);
            }
        }

        public void drawCopyCodeButton(Canvas canvas, RectF rectF, int i, int i2, float f) {
            if (this.hasCodeCopyButton) {
                int iMultAlpha = Theme.multAlpha(i, 0.1f);
                if (this.copySelectorColor != iMultAlpha) {
                    Drawable drawable = this.copySelector;
                    this.copySelectorColor = iMultAlpha;
                    Theme.setSelectorDrawableColor(drawable, iMultAlpha, true);
                }
                this.copySelector.setBounds(((int) rectF.left) + AndroidUtilities.dp(3.0f), (int) (rectF.bottom - AndroidUtilities.dp(38.0f)), (int) rectF.right, (int) rectF.bottom);
                int i3 = (int) (255.0f * f);
                this.copySelector.setAlpha(i3);
                if (this.copySelector.getCallback() != null) {
                    this.copySelector.draw(canvas);
                }
                this.copySeparator.setColor(ColorUtils.setAlphaComponent(i2, 38));
                canvas.drawRect(rectF.left + AndroidUtilities.dp(10.0f), (rectF.bottom - AndroidUtilities.dp(38.0f)) - AndroidUtilities.getShadowHeight(), rectF.right - AndroidUtilities.dp(6.66f), rectF.bottom - AndroidUtilities.dp(38.0f), this.copySeparator);
                float fCenterX = rectF.centerX() - (Math.min(rectF.width() - AndroidUtilities.dp(12.0f), ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f)) + this.copyText.getCurrentWidth()) / 2.0f);
                float fDp = rectF.bottom - (AndroidUtilities.dp(38.0f) / 2.0f);
                if (this.copyIconColor != i) {
                    Drawable drawable2 = this.copyIcon;
                    this.copyIconColor = i;
                    drawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                }
                this.copyIcon.setAlpha(i3);
                this.copyIcon.setBounds((int) fCenterX, (int) (fDp - ((r1.getIntrinsicHeight() * 0.8f) / 2.0f)), (int) ((this.copyIcon.getIntrinsicWidth() * 0.8f) + fCenterX), (int) (((this.copyIcon.getIntrinsicHeight() * 0.8f) / 2.0f) + fDp));
                this.copyIcon.draw(canvas);
                this.copyText.ellipsize(((int) (r14 - ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f)))) + AndroidUtilities.dp(12.0f)).draw(canvas, fCenterX + (this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.dp(5.0f), fDp, i, f);
            }
        }

        public static String capitalizeLanguage(String str) {
            if (str == null) {
                return null;
            }
            String strReplaceAll = str.toLowerCase().replaceAll("\\W|lang$", _UrlKt.FRAGMENT_ENCODE_SET);
            strReplaceAll.getClass();
            switch (strReplaceAll) {
                case "actionscript":
                    return "ActionScript";
                case "aspnet":
                    return "ASP.NET";
                case "bbcode":
                    return "BBCode";
                case "csharp":
                case "cs":
                    return "C#";
                case "fsharp":
                    return "F#";
                case "matlab":
                case "r":
                case "tl":
                case "asm":
                case "css":
                case "csv":
                case "ini":
                case "jsx":
                case "php":
                case "qml":
                case "sql":
                case "tsx":
                case "xml":
                case "yml":
                case "glsl":
                case "hlsl":
                case "html":
                case "http":
                case "json":
                case "less":
                case "nasm":
                case "sass":
                case "scss":
                case "wasm":
                case "yaml":
                case "cobol":
                case "json5":
                case "jsonp":
                    return str.toUpperCase();
                case "python":
                case "py":
                    return "Python";
                case "typescript":
                case "ts":
                    return "TypeScript";
                case "js":
                case "javascript":
                    return "JavaScript";
                case "md":
                case "markdown":
                    return "Markdown";
                case "rb":
                case "ruby":
                    return "Ruby";
                case "cpp":
                    return "C++";
                case "tlb":
                case "tl-b":
                    return "TL-B";
                case "func":
                    return "FunC";
                case "objc":
                case "objectivec":
                    return "Objective-C";
                case "vbnet":
                    return "VB.NET";
                case "autohotkey":
                    return "AutoHotKey";
                case "visual-basic":
                    return "Visual Basic";
                case "gdscript":
                    return "GDScript";
                default:
                    return capitalizeFirst(str);
            }
        }

        private static String capitalizeFirst(String str) {
            return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
        }

        public boolean isRtl() {
            byte b2 = this.directionFlags;
            return (b2 & 1) != 0 && (b2 & 2) == 0;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class GroupedMessagePosition {
        public float aspectRatio;
        public boolean edge;
        public int flags;
        public boolean last;
        public float left;
        public int leftSpanOffset;
        public byte maxX;
        public byte maxY;
        public byte minX;
        public byte minY;
        public float ph;
        public int photoHeight;
        public int photoWidth;
        public int pw;
        public float[] siblingHeights;
        public int spanSize;
        public float top;

        public void set(int i, int i2, int i3, int i4, int i5, float f, int i6) {
            this.minX = (byte) i;
            this.maxX = (byte) i2;
            this.minY = (byte) i3;
            this.maxY = (byte) i4;
            this.pw = i5;
            this.spanSize = i5;
            this.ph = f;
            this.flags = (byte) i6;
        }
    }

    public static class GroupedMessages {
        public static final int GROUPED_AVATAR_OFFSET = 108;
        public boolean captionAbove;
        public MessageObject captionMessage;
        public long groupId;
        public boolean hasCaption;
        public boolean hasSibling;
        public boolean isDocuments;
        public boolean reversed;
        public ArrayList<MessageObject> messages = new ArrayList<>();
        public ArrayList<GroupedMessagePosition> posArray = new ArrayList<>();
        public HashMap<MessageObject, GroupedMessagePosition> positions = new HashMap<>();
        public LongSparseArray<GroupedMessagePosition> positionsArray = new LongSparseArray<>();
        public int cachedWidthForCaption = -1;
        private int maxSizeWidth = 800;
        public final TransitionParams transitionParams = new TransitionParams();

        public GroupedMessagePosition getPosition(MessageObject messageObject) {
            if (messageObject == null) {
                return null;
            }
            GroupedMessagePosition groupedMessagePosition = this.positions.get(messageObject);
            return groupedMessagePosition == null ? this.positionsArray.get(messageObject.getId()) : groupedMessagePosition;
        }

        /* JADX INFO: loaded from: classes6.dex */
        public static class MessageGroupedLayoutAttempt {
            public float[] heights;
            public int[] lineCounts;

            public MessageGroupedLayoutAttempt(int i, int i2, float f, float f2) {
                this.lineCounts = new int[]{i, i2};
                this.heights = new float[]{f, f2};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, float f, float f2, float f3) {
                this.lineCounts = new int[]{i, i2, i3};
                this.heights = new float[]{f, f2, f3};
            }

            public MessageGroupedLayoutAttempt(int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
                this.lineCounts = new int[]{i, i2, i3, i4};
                this.heights = new float[]{f, f2, f3, f4};
            }
        }

        private float multiHeight(float[] fArr, int i, int i2) {
            float f = 0.0f;
            while (i < i2) {
                f += fArr[i];
                i++;
            }
            return this.maxSizeWidth / f;
        }

        public void calculate() {
            calculateInternal();
            WidePosts.updateGroupedLayout(this, WidePosts.getDefaultGroupWidth());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:199:0x06e0  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:283:0x084c A[PHI: r15
  0x084c: PHI (r15v8 int) = (r15v7 int), (r15v9 int) binds: [B:278:0x083e, B:280:0x0842] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:288:0x0882  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0154  */
        /* JADX WARN: Type inference failed for: r15v30 */
        /* JADX WARN: Type inference failed for: r15v31, types: [boolean] */
        /* JADX WARN: Type inference failed for: r15v38 */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v35 */
        /* JADX WARN: Type inference failed for: r8v36 */
        /* JADX WARN: Type inference failed for: r8v37 */
        /* JADX WARN: Type inference failed for: r8v39 */
        /* JADX WARN: Type inference failed for: r8v40 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void calculateInternal() {
            int i;
            boolean z;
            int i2;
            int i3;
            int iMax;
            int i4;
            int i5;
            char c2;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            float f;
            int i12;
            byte b2;
            boolean z2;
            MessageObject messageObject;
            TLRPC.Message message;
            float f2;
            float f3;
            this.posArray.clear();
            this.positions.clear();
            this.positionsArray.clear();
            this.captionMessage = null;
            this.maxSizeWidth = 800;
            int size = this.messages.size();
            int i13 = 0;
            boolean z3 = true;
            if (size == 1) {
                this.captionMessage = this.messages.get(0);
                return;
            }
            if (size < 1) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            this.hasSibling = false;
            this.hasCaption = false;
            this.captionAbove = false;
            int i14 = this.reversed ? size - 1 : 0;
            ?? r8 = 0;
            boolean z4 = false;
            boolean zIsOutOwner = false;
            boolean z5 = true;
            float f4 = 1.0f;
            while (true) {
                if (this.reversed) {
                    if (i14 < 0) {
                        break;
                    }
                    messageObject = this.messages.get(i14);
                    if (i14 == (!this.reversed ? size - 1 : i13)) {
                        messageObject.isOutOwnerCached = null;
                        zIsOutOwner = messageObject.isOutOwner();
                        if (!zIsOutOwner) {
                            TLRPC.Message message2 = messageObject.messageOwner;
                            TLRPC.MessageFwdHeader messageFwdHeader = message2.fwd_from;
                            if (messageFwdHeader == null || messageFwdHeader.saved_from_peer == null) {
                                if (message2.from_id instanceof TLRPC.TL_peerUser) {
                                    TLRPC.Peer peer = message2.peer_id;
                                    if (peer.channel_id == 0 && peer.chat_id == 0 && !(MessageObject.getMedia(message2) instanceof TLRPC.TL_messageMediaGame) && !(MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                        if (messageObject.searchType == 4) {
                                        }
                                        if (messageObject.isMusic()) {
                                            this.isDocuments = z3;
                                        }
                                    }
                                }
                            }
                            r8 = z3;
                            if (messageObject.isMusic()) {
                            }
                        } else {
                            r8 = i13;
                            if (messageObject.isMusic() || messageObject.isDocument()) {
                                this.isDocuments = z3;
                            }
                        }
                    }
                    message = messageObject.messageOwner;
                    if (message != null && message.invert_media) {
                        this.captionAbove = z3;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition = new GroupedMessagePosition();
                    groupedMessagePosition.last = (this.reversed ? i14 != size + (-1) : i14 != 0) ? i13 : z3;
                    f2 = closestPhotoSizeWithSize != null ? 1.0f : closestPhotoSizeWithSize.f1019w / closestPhotoSizeWithSize.f1018h;
                    groupedMessagePosition.aspectRatio = f2;
                    if (f2 <= 1.2f) {
                        sb.append("w");
                    } else if (f2 < 0.8f) {
                        sb.append("n");
                    } else {
                        sb.append("q");
                    }
                    f3 = groupedMessagePosition.aspectRatio;
                    f4 += f3;
                    if (f3 > 2.0f) {
                        z4 = z3;
                    }
                    this.positions.put(messageObject, groupedMessagePosition);
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition);
                    this.posArray.add(groupedMessagePosition);
                    if (messageObject.caption != null) {
                        if (z5 && this.captionMessage == null) {
                            this.captionMessage = messageObject;
                            z5 = false;
                        } else if (!this.isDocuments) {
                            this.captionMessage = null;
                        }
                        this.hasCaption = true;
                    }
                    i14 = !this.reversed ? i14 - 1 : i14 + 1;
                    i13 = 0;
                    z3 = true;
                    r8 = r8;
                } else {
                    if (i14 >= size) {
                        break;
                    }
                    messageObject = this.messages.get(i14);
                    if (i14 == (!this.reversed ? size - 1 : i13)) {
                    }
                    message = messageObject.messageOwner;
                    if (message != null) {
                        this.captionAbove = z3;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition2 = new GroupedMessagePosition();
                    groupedMessagePosition2.last = (this.reversed ? i14 != size + (-1) : i14 != 0) ? i13 : z3;
                    if (closestPhotoSizeWithSize2 != null) {
                    }
                    groupedMessagePosition2.aspectRatio = f2;
                    if (f2 <= 1.2f) {
                    }
                    f3 = groupedMessagePosition2.aspectRatio;
                    f4 += f3;
                    if (f3 > 2.0f) {
                    }
                    this.positions.put(messageObject, groupedMessagePosition2);
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition2);
                    this.posArray.add(groupedMessagePosition2);
                    if (messageObject.caption != null) {
                    }
                    if (!this.reversed) {
                    }
                    i13 = 0;
                    z3 = true;
                    r8 = r8;
                }
            }
            if (this.isDocuments) {
                for (int i15 = 0; i15 < size; i15++) {
                    GroupedMessagePosition groupedMessagePosition3 = this.posArray.get(i15);
                    groupedMessagePosition3.flags = 3;
                    if (i15 == 0) {
                        groupedMessagePosition3.flags = 3 | 4;
                        b2 = 0;
                        groupedMessagePosition3.last = false;
                        z2 = true;
                    } else {
                        b2 = 0;
                        if (i15 == size - 1) {
                            groupedMessagePosition3.flags = 3 | 8;
                            z2 = true;
                            groupedMessagePosition3.last = true;
                        } else {
                            z2 = true;
                            groupedMessagePosition3.last = false;
                        }
                    }
                    groupedMessagePosition3.edge = z2;
                    groupedMessagePosition3.aspectRatio = 1.0f;
                    groupedMessagePosition3.minX = b2;
                    groupedMessagePosition3.maxX = b2;
                    byte b3 = (byte) i15;
                    groupedMessagePosition3.minY = b3;
                    groupedMessagePosition3.maxY = b3;
                    groupedMessagePosition3.spanSize = 1000;
                    groupedMessagePosition3.pw = this.maxSizeWidth;
                    groupedMessagePosition3.ph = 100.0f;
                }
                return;
            }
            if (r8 != 0) {
                this.maxSizeWidth -= 50;
                i = 250;
            } else {
                i = 200;
            }
            int iDp = AndroidUtilities.dp(120.0f);
            float fDp = AndroidUtilities.dp(120.0f);
            Point point = AndroidUtilities.displaySize;
            int iMin = (int) (fDp / (Math.min(point.x, point.y) / this.maxSizeWidth));
            float fDp2 = AndroidUtilities.dp(40.0f);
            Point point2 = AndroidUtilities.displaySize;
            float fMin = Math.min(point2.x, point2.y);
            int i16 = this.maxSizeWidth;
            int i17 = (int) (fDp2 / (fMin / i16));
            float f5 = i16 / 814.0f;
            float f6 = f4 / size;
            float fDp3 = AndroidUtilities.dp(100.0f) / 814.0f;
            if (size != 1) {
                if (z4 || !(size == 2 || size == 3 || size == 4)) {
                    z = zIsOutOwner;
                    int i18 = 2;
                    int size2 = this.posArray.size();
                    float[] fArr = new float[size2];
                    for (int i19 = 0; i19 < size; i19++) {
                        ArrayList<GroupedMessagePosition> arrayList = this.posArray;
                        if (f6 > 1.1f) {
                            fArr[i19] = Math.max(1.0f, arrayList.get(i19).aspectRatio);
                        } else {
                            fArr[i19] = Math.min(1.0f, arrayList.get(i19).aspectRatio);
                        }
                        fArr[i19] = Math.max(0.66667f, Math.min(1.7f, fArr[i19]));
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (int i20 = 1; i20 < size2; i20++) {
                        int i21 = size2 - i20;
                        if (i20 <= 3 && i21 <= 3) {
                            arrayList2.add(new MessageGroupedLayoutAttempt(i20, i21, multiHeight(fArr, 0, i20), multiHeight(fArr, i20, size2)));
                        }
                    }
                    int i22 = 1;
                    while (i22 < size2 - 1) {
                        int i23 = 1;
                        while (true) {
                            int i24 = size2 - i22;
                            if (i23 < i24) {
                                int i25 = i24 - i23;
                                if (i22 > 3) {
                                    i9 = i22;
                                    i10 = i23;
                                } else if (i23 <= (f6 < 0.85f ? 4 : 3) && i25 <= 3) {
                                    int i26 = i22 + i23;
                                    i9 = i22;
                                    i10 = i23;
                                    arrayList2.add(new MessageGroupedLayoutAttempt(i9, i10, i25, multiHeight(fArr, 0, i22), multiHeight(fArr, i22, i26), multiHeight(fArr, i26, size2)));
                                }
                                i23 = i10 + 1;
                                i22 = i9;
                            }
                        }
                        i22++;
                    }
                    int i27 = 1;
                    while (i27 < size2 - 2) {
                        int i28 = 1;
                        while (true) {
                            int i29 = size2 - i27;
                            if (i28 < i29) {
                                int i30 = 1;
                                while (true) {
                                    int i31 = i29 - i28;
                                    if (i30 < i31) {
                                        int i32 = i31 - i30;
                                        if (i27 > 3 || i28 > 3 || i30 > 3 || i32 > 3) {
                                            i6 = i27;
                                            i7 = i28;
                                            i8 = i30;
                                        } else {
                                            int i33 = i27 + i28;
                                            int i34 = i33 + i30;
                                            i6 = i27;
                                            i7 = i28;
                                            i8 = i30;
                                            arrayList2.add(new MessageGroupedLayoutAttempt(i6, i7, i8, i32, multiHeight(fArr, 0, i27), multiHeight(fArr, i27, i33), multiHeight(fArr, i33, i34), multiHeight(fArr, i34, size2)));
                                        }
                                        i30 = i8 + 1;
                                        i27 = i6;
                                        i28 = i7;
                                    }
                                }
                                i28++;
                            }
                        }
                        i27++;
                    }
                    float f7 = (this.maxSizeWidth / 3) * 4;
                    int i35 = 0;
                    MessageGroupedLayoutAttempt messageGroupedLayoutAttempt = null;
                    float f8 = 0.0f;
                    while (i35 < arrayList2.size()) {
                        MessageGroupedLayoutAttempt messageGroupedLayoutAttempt2 = (MessageGroupedLayoutAttempt) arrayList2.get(i35);
                        float f9 = Float.MAX_VALUE;
                        int i36 = 0;
                        float f10 = 0.0f;
                        while (true) {
                            float[] fArr2 = messageGroupedLayoutAttempt2.heights;
                            if (i36 >= fArr2.length) {
                                break;
                            }
                            float f11 = fArr2[i36];
                            f10 += f11;
                            if (f11 < f9) {
                                f9 = f11;
                            }
                            i36++;
                        }
                        float fAbs = Math.abs(f10 - f7);
                        int[] iArr = messageGroupedLayoutAttempt2.lineCounts;
                        float f12 = f7;
                        if (iArr.length > 1) {
                            int i37 = iArr[0];
                            int i38 = iArr[1];
                            if (i37 <= i38) {
                                i5 = i;
                                int i39 = i18;
                                if (iArr.length <= i39 || i38 <= iArr[i39]) {
                                    c2 = 3;
                                    if (iArr.length > 3 && iArr[i39] > iArr[3]) {
                                    }
                                }
                                fAbs *= 1.2f;
                            } else {
                                i5 = i;
                            }
                            c2 = 3;
                            fAbs *= 1.2f;
                        } else {
                            i5 = i;
                            c2 = 3;
                        }
                        if (f9 < iMin) {
                            fAbs *= 1.5f;
                        }
                        if (messageGroupedLayoutAttempt == null || fAbs < f8) {
                            f8 = fAbs;
                            messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                        }
                        i35++;
                        f7 = f12;
                        i = i5;
                        i18 = 2;
                    }
                    i2 = i;
                    i3 = 0;
                    if (messageGroupedLayoutAttempt == null) {
                        return;
                    }
                    int i40 = 0;
                    iMax = 0;
                    int i41 = 0;
                    while (true) {
                        int[] iArr2 = messageGroupedLayoutAttempt.lineCounts;
                        if (i41 >= iArr2.length) {
                            break;
                        }
                        int i42 = iArr2[i41];
                        float f13 = messageGroupedLayoutAttempt.heights[i41];
                        int i43 = this.maxSizeWidth;
                        int i44 = i42 - 1;
                        iMax = Math.max(iMax, i44);
                        int i45 = i43;
                        int i46 = 0;
                        GroupedMessagePosition groupedMessagePosition4 = null;
                        while (i46 < i42) {
                            int i47 = (int) (fArr[i40] * f13);
                            i45 -= i47;
                            GroupedMessagePosition groupedMessagePosition5 = this.posArray.get(i40);
                            int i48 = i41 == 0 ? 4 : 0;
                            int i49 = i40;
                            if (i41 == messageGroupedLayoutAttempt.lineCounts.length - 1) {
                                i48 |= 8;
                            }
                            if (i46 == 0) {
                                i48 |= 1;
                                if (z) {
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            if (i46 == i44) {
                                i48 |= 2;
                                if (z) {
                                    i4 = i48;
                                } else {
                                    i4 = i48;
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            int i50 = i46;
                            groupedMessagePosition5.set(i50, i46, i41, i41, i47, Math.max(fDp3, f13 / 814.0f), i4);
                            i40 = i49 + 1;
                            i46 = i50 + 1;
                        }
                        groupedMessagePosition4.pw += i45;
                        groupedMessagePosition4.spanSize += i45;
                        i41++;
                        i40 = i40;
                    }
                } else if (size == 2) {
                    GroupedMessagePosition groupedMessagePosition6 = this.posArray.get(0);
                    GroupedMessagePosition groupedMessagePosition7 = this.posArray.get(1);
                    String string = sb.toString();
                    if (string.equals("ww")) {
                        z = zIsOutOwner;
                        f = 0.4f;
                        if (f6 > ((double) f5) * 1.4d) {
                            float f14 = groupedMessagePosition6.aspectRatio;
                            float f15 = groupedMessagePosition7.aspectRatio;
                            if (f14 - f15 < 0.2d) {
                                int i51 = this.maxSizeWidth;
                                float fRound = Math.round(Math.min(i51 / f14, Math.min(i51 / f15, 407.0f))) / 814.0f;
                                groupedMessagePosition6.set(0, 0, 0, 0, this.maxSizeWidth, fRound, 7);
                                groupedMessagePosition7.set(0, 0, 1, 1, this.maxSizeWidth, fRound, 11);
                                i11 = 0;
                                i2 = i;
                                i3 = 0;
                                iMax = i11;
                            }
                        }
                    } else {
                        z = zIsOutOwner;
                        f = 0.4f;
                    }
                    if (string.equals("ww") || string.equals("qq")) {
                        int i52 = this.maxSizeWidth / 2;
                        float f16 = i52;
                        float fRound2 = Math.round(Math.min(f16 / groupedMessagePosition6.aspectRatio, Math.min(f16 / groupedMessagePosition7.aspectRatio, 814.0f))) / 814.0f;
                        groupedMessagePosition6.set(0, 0, 0, 0, i52, fRound2, 13);
                        groupedMessagePosition7.set(1, 1, 0, 0, i52, fRound2, 14);
                    } else {
                        int i53 = this.maxSizeWidth;
                        float f17 = groupedMessagePosition6.aspectRatio;
                        int iMax2 = (int) Math.max(i53 * f, Math.round((i53 / f17) / ((1.0f / f17) + (1.0f / groupedMessagePosition7.aspectRatio))));
                        int i54 = this.maxSizeWidth - iMax2;
                        if (i54 < iMin) {
                            iMax2 -= iMin - i54;
                        } else {
                            iMin = i54;
                        }
                        float fMin2 = Math.min(814.0f, Math.round(Math.min(iMin / groupedMessagePosition6.aspectRatio, iMax2 / groupedMessagePosition7.aspectRatio))) / 814.0f;
                        groupedMessagePosition6.set(0, 0, 0, 0, iMin, fMin2, 13);
                        groupedMessagePosition7.set(1, 1, 0, 0, iMax2, fMin2, 14);
                    }
                    i11 = 1;
                    i2 = i;
                    i3 = 0;
                    iMax = i11;
                } else {
                    z = zIsOutOwner;
                    ArrayList<GroupedMessagePosition> arrayList3 = this.posArray;
                    if (size == 3) {
                        GroupedMessagePosition groupedMessagePosition8 = arrayList3.get(0);
                        GroupedMessagePosition groupedMessagePosition9 = this.posArray.get(1);
                        GroupedMessagePosition groupedMessagePosition10 = this.posArray.get(2);
                        if (sb.charAt(0) == 'n') {
                            float f18 = groupedMessagePosition9.aspectRatio;
                            float fMin3 = Math.min(407.0f, Math.round((this.maxSizeWidth * f18) / (groupedMessagePosition10.aspectRatio + f18)));
                            int iMax3 = (int) Math.max(iMin, Math.min(this.maxSizeWidth * 0.5f, Math.round(Math.min(groupedMessagePosition10.aspectRatio * fMin3, groupedMessagePosition9.aspectRatio * r6))));
                            int iRound = Math.round(Math.min((groupedMessagePosition8.aspectRatio * 814.0f) + i17, this.maxSizeWidth - iMax3));
                            groupedMessagePosition8.set(0, 0, 0, 1, iRound, 1.0f, 13);
                            float f19 = (814.0f - fMin3) / 814.0f;
                            groupedMessagePosition9.set(1, 1, 0, 0, iMax3, f19, 6);
                            float f20 = fMin3 / 814.0f;
                            groupedMessagePosition10.set(0, 1, 1, 1, iMax3, f20, 10);
                            int i55 = this.maxSizeWidth;
                            groupedMessagePosition10.spanSize = i55;
                            groupedMessagePosition8.siblingHeights = new float[]{f20, f19};
                            if (z) {
                                groupedMessagePosition8.spanSize = i55 - iMax3;
                            } else {
                                groupedMessagePosition9.spanSize = i55 - iRound;
                                groupedMessagePosition10.leftSpanOffset = iRound;
                            }
                            this.hasSibling = true;
                        } else {
                            float fRound3 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition8.aspectRatio, 537.24005f)) / 814.0f;
                            groupedMessagePosition8.set(0, 1, 0, 0, this.maxSizeWidth, fRound3, 7);
                            int i56 = this.maxSizeWidth / 2;
                            float f21 = i56;
                            float fMin4 = Math.min(814.0f - fRound3, Math.round(Math.min(f21 / groupedMessagePosition9.aspectRatio, f21 / groupedMessagePosition10.aspectRatio))) / 814.0f;
                            float f22 = fMin4 < fDp3 ? fDp3 : fMin4;
                            groupedMessagePosition9.set(0, 0, 1, 1, i56, f22, 9);
                            groupedMessagePosition10.set(1, 1, 1, 1, i56, f22, 10);
                        }
                        i2 = i;
                        iMax = 1;
                    } else {
                        GroupedMessagePosition groupedMessagePosition11 = arrayList3.get(0);
                        GroupedMessagePosition groupedMessagePosition12 = this.posArray.get(1);
                        GroupedMessagePosition groupedMessagePosition13 = this.posArray.get(2);
                        GroupedMessagePosition groupedMessagePosition14 = this.posArray.get(3);
                        if (sb.charAt(0) == 'w') {
                            float fRound4 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition11.aspectRatio, 537.24005f)) / 814.0f;
                            groupedMessagePosition11.set(0, 2, 0, 0, this.maxSizeWidth, fRound4, 7);
                            float fRound5 = Math.round(this.maxSizeWidth / ((groupedMessagePosition12.aspectRatio + groupedMessagePosition13.aspectRatio) + groupedMessagePosition14.aspectRatio));
                            float f23 = iMin;
                            int iMax4 = (int) Math.max(f23, Math.min(this.maxSizeWidth * 0.4f, groupedMessagePosition12.aspectRatio * fRound5));
                            int iMax5 = (int) Math.max(Math.max(f23, this.maxSizeWidth * 0.33f), groupedMessagePosition14.aspectRatio * fRound5);
                            int iDp2 = (this.maxSizeWidth - iMax4) - iMax5;
                            if (iDp2 < AndroidUtilities.dp(58.0f)) {
                                int iDp3 = AndroidUtilities.dp(58.0f) - iDp2;
                                iDp2 = AndroidUtilities.dp(58.0f);
                                int i57 = iDp3 / 2;
                                iMax4 -= i57;
                                iMax5 -= iDp3 - i57;
                            }
                            int i58 = iMax4;
                            float fMin5 = Math.min(814.0f - fRound4, fRound5) / 814.0f;
                            float f24 = fMin5 < fDp3 ? fDp3 : fMin5;
                            groupedMessagePosition12.set(0, 0, 1, 1, i58, f24, 9);
                            groupedMessagePosition13.set(1, 1, 1, 1, iDp2, f24, 8);
                            groupedMessagePosition14.set(2, 2, 1, 1, iMax5, f24, 10);
                            i11 = 2;
                            i2 = i;
                            i3 = 0;
                            iMax = i11;
                        } else {
                            int iMax6 = Math.max(iMin, Math.round(814.0f / (((1.0f / groupedMessagePosition12.aspectRatio) + (1.0f / groupedMessagePosition13.aspectRatio)) + (1.0f / groupedMessagePosition14.aspectRatio))));
                            float f25 = iDp;
                            float f26 = iMax6;
                            float fMin6 = Math.min(0.33f, Math.max(f25, f26 / groupedMessagePosition12.aspectRatio) / 814.0f);
                            float fMin7 = Math.min(0.33f, Math.max(f25, f26 / groupedMessagePosition13.aspectRatio) / 814.0f);
                            float f27 = (1.0f - fMin6) - fMin7;
                            int iRound2 = Math.round(Math.min((814.0f * groupedMessagePosition11.aspectRatio) + i17, this.maxSizeWidth - iMax6));
                            groupedMessagePosition11.set(0, 0, 0, 2, iRound2, fMin6 + fMin7 + f27, 13);
                            groupedMessagePosition12.set(1, 1, 0, 0, iMax6, fMin6, 6);
                            groupedMessagePosition13.set(0, 1, 1, 1, iMax6, fMin7, 2);
                            groupedMessagePosition13.spanSize = this.maxSizeWidth;
                            groupedMessagePosition14.set(0, 1, 2, 2, iMax6, f27, 10);
                            int i59 = this.maxSizeWidth;
                            groupedMessagePosition14.spanSize = i59;
                            if (z) {
                                groupedMessagePosition11.spanSize = i59 - iMax6;
                            } else {
                                groupedMessagePosition12.spanSize = i59 - iRound2;
                                groupedMessagePosition13.leftSpanOffset = iRound2;
                                groupedMessagePosition14.leftSpanOffset = iRound2;
                            }
                            groupedMessagePosition11.siblingHeights = new float[]{fMin6, fMin7, f27};
                            this.hasSibling = true;
                            i11 = 1;
                            i2 = i;
                            i3 = 0;
                            iMax = i11;
                        }
                    }
                }
                for (i12 = i3; i12 < size; i12++) {
                    GroupedMessagePosition groupedMessagePosition15 = this.posArray.get(i12);
                    if (z) {
                        if (groupedMessagePosition15.minX == 0) {
                            groupedMessagePosition15.spanSize += i2;
                        }
                        if ((groupedMessagePosition15.flags & 2) != 0) {
                            groupedMessagePosition15.edge = true;
                        }
                    } else {
                        if (groupedMessagePosition15.maxX == iMax || (groupedMessagePosition15.flags & 2) != 0) {
                            groupedMessagePosition15.spanSize += i2;
                        }
                        if ((groupedMessagePosition15.flags & 1) != 0) {
                            groupedMessagePosition15.edge = true;
                        }
                    }
                    MessageObject messageObject2 = this.messages.get(i12);
                    if (!z && messageObject2.needDrawAvatarInternal()) {
                        if (groupedMessagePosition15.edge) {
                            int i60 = groupedMessagePosition15.spanSize;
                            if (i60 != 1000) {
                                groupedMessagePosition15.spanSize = i60 + 108;
                            }
                            groupedMessagePosition15.pw += 108;
                        } else if ((groupedMessagePosition15.flags & 2) != 0) {
                            int i61 = groupedMessagePosition15.spanSize;
                            if (i61 != 1000) {
                                groupedMessagePosition15.spanSize = i61 - 108;
                            } else {
                                int i62 = groupedMessagePosition15.leftSpanOffset;
                                if (i62 != 0) {
                                    groupedMessagePosition15.leftSpanOffset = i62 + 108;
                                }
                            }
                        }
                    }
                }
            }
            GroupedMessagePosition groupedMessagePosition16 = this.posArray.get(0);
            int i63 = this.maxSizeWidth;
            float f28 = groupedMessagePosition16.aspectRatio;
            groupedMessagePosition16.set(0, 0, 0, 0, this.maxSizeWidth, Math.round(Math.min(i63 / f28, Math.min(i63 / f28, 407.0f))) / 814.0f, 15);
            i2 = i;
            z = zIsOutOwner;
            iMax = 0;
            i3 = 0;
            while (i12 < size) {
            }
        }

        public int getMaxEditDate() {
            TLRPC.Message message;
            int iMax = 0;
            for (int i = 0; i < this.messages.size(); i++) {
                MessageObject messageObject = this.messages.get(i);
                if (messageObject != null && (message = messageObject.messageOwner) != null) {
                    iMax = Math.max(iMax, message.edit_date);
                }
            }
            return iMax;
        }

        public MessageObject findPrimaryMessageObject() {
            return findMessageWithFlags(this.reversed ? 10 : 5);
        }

        public MessageObject findCaptionMessageObject() {
            if (!this.messages.isEmpty() && this.positions.isEmpty()) {
                calculate();
            }
            MessageObject messageObject = null;
            for (int i = 0; i < this.messages.size(); i++) {
                MessageObject messageObject2 = this.messages.get(i);
                if (!TextUtils.isEmpty(messageObject2.caption)) {
                    if (messageObject != null) {
                        return null;
                    }
                    messageObject = messageObject2;
                }
            }
            return messageObject;
        }

        public MessageObject findMessageWithFlags(int i) {
            if (!this.messages.isEmpty() && this.positions.isEmpty()) {
                calculate();
            }
            for (int i2 = 0; i2 < this.messages.size(); i2++) {
                MessageObject messageObject = this.messages.get(i2);
                GroupedMessagePosition groupedMessagePosition = this.positions.get(messageObject);
                if (groupedMessagePosition != null && (groupedMessagePosition.flags & i) == i) {
                    return messageObject;
                }
            }
            return null;
        }

        /* JADX INFO: loaded from: classes6.dex */
        public static class TransitionParams {
            public boolean backgroundChangeBounds;
            public int bottom;
            public float captionEnterProgress = 1.0f;
            public ChatMessageCell cell;
            public boolean drawBackgroundForDeletedItems;
            public boolean drawCaptionLayout;
            public boolean isNewGroup;
            public int left;
            public float offsetBottom;
            public float offsetLeft;
            public float offsetRight;
            public float offsetTop;
            public boolean pinnedBotton;
            public boolean pinnedTop;
            public int right;
            public int top;

            public void reset() {
                this.captionEnterProgress = 1.0f;
                this.offsetBottom = 0.0f;
                this.offsetTop = 0.0f;
                this.offsetRight = 0.0f;
                this.offsetLeft = 0.0f;
                this.backgroundChangeBounds = false;
            }
        }

        public boolean contains(int i) {
            if (this.messages == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.messages.size(); i2++) {
                MessageObject messageObject = this.messages.get(i2);
                if (messageObject != null && messageObject.getId() == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public int getLastLineWidth() {
        RichMessageLayout richMessageLayout = this.richLayout;
        if (richMessageLayout != null) {
            return richMessageLayout.getLastLineWidth();
        }
        return this.lastLineWidth;
    }

    public MessageObject(int i, TL_stories.StoryItem storyItem) {
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.summarized = false;
        this.currentAccount = i;
        this.storyItem = storyItem;
        if (storyItem != null) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            this.messageOwner = tL_message;
            tL_message.id = storyItem.messageId;
            tL_message.realId = storyItem.id;
            tL_message.date = storyItem.date;
            tL_message.dialog_id = storyItem.dialogId;
            tL_message.message = storyItem.caption;
            tL_message.entities = storyItem.entities;
            tL_message.media = storyItem.media;
            tL_message.attachPath = storyItem.attachPath;
        }
        this.photoThumbs = new ArrayList<>();
        this.photoThumbs2 = new ArrayList<>();
    }

    public MessageObject(int i, TLRPC.Message message, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4) {
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.summarized = false;
        this.localType = z ? 2 : 1;
        this.currentAccount = i;
        this.localName = str2;
        this.localUserName = str3;
        this.messageText = str;
        this.messageOwner = message;
        this.localChannel = z2;
        this.localSupergroup = z3;
        this.localEdit = z4;
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, boolean z, boolean z2) {
        this(i, message, abstractMap, (AbstractMap<Long, TLRPC.Chat>) null, z, z2);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray<TLRPC.User> longSparseArray, boolean z, boolean z2) {
        this(i, message, longSparseArray, (LongSparseArray<TLRPC.Chat>) null, z, z2);
    }

    public MessageObject(int i, TLRPC.Message message, boolean z, boolean z2) {
        this(i, message, null, null, null, null, null, z, z2, 0L);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, boolean z, boolean z2) {
        this(i, message, messageObject, null, null, null, null, z, z2, 0L);
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, boolean z, boolean z2) {
        this(i, message, abstractMap, abstractMap2, z, z2, 0L);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2, boolean z, boolean z2) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2, boolean z, boolean z2, boolean z3) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, z3);
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, boolean z, boolean z2, long j) {
        this(i, message, null, abstractMap, abstractMap2, null, null, z, z2, j);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2, boolean z, boolean z2, long j) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, z3, z4, z5, 0);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5, int i2) {
        AbstractMap<Long, TLRPC.User> abstractMap3;
        AbstractMap<Long, TLRPC.Chat> abstractMap4;
        LongSparseArray<TLRPC.User> longSparseArray3;
        LongSparseArray<TLRPC.Chat> longSparseArray4;
        TextPaint textPaint;
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.summarized = false;
        Theme.createCommonMessageResources();
        this.isRepostPreview = z3;
        this.isRepostVideoPreview = z4;
        this.isSaved = z5 || getDialogId(message) == UserConfig.getInstance(i).getClientUserId();
        this.searchType = i2;
        this.currentAccount = i;
        this.messageOwner = message;
        this.replyMessageObject = messageObject;
        this.eventId = j;
        this.wasUnread = !message.out && message.unread;
        TLRPC.Message message2 = message.replyMessage;
        if (message2 != null) {
            abstractMap3 = abstractMap;
            abstractMap4 = abstractMap2;
            longSparseArray3 = longSparseArray;
            longSparseArray4 = longSparseArray2;
            this.replyMessageObject = new MessageObject(i, message2, null, abstractMap3, abstractMap4, longSparseArray3, longSparseArray4, false, z2, j);
        } else {
            abstractMap3 = abstractMap;
            abstractMap4 = abstractMap2;
            longSparseArray3 = longSparseArray;
            longSparseArray4 = longSparseArray2;
        }
        updateMessageText(abstractMap3, abstractMap4, longSparseArray3, longSparseArray4);
        setType();
        if (z) {
            updateTranslation(false);
        }
        measureInlineBotButtons();
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(((long) this.messageOwner.date) * 1000);
        int i3 = gregorianCalendar.get(6);
        int i4 = gregorianCalendar.get(1);
        int i5 = gregorianCalendar.get(2);
        this.dateKey = String.format("%d_%02d_%02d", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i3));
        this.dateKeyInt = (i5 * 10000) + i4 + (i3 * DurationKt.NANOS_IN_MILLIS);
        this.monthKey = String.format("%d_%02d", Integer.valueOf(i4), Integer.valueOf(i5));
        createMessageSendInfo();
        generateCaption();
        if (z) {
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                textPaint = Theme.chat_msgGameTextPaint;
            } else {
                textPaint = Theme.chat_msgTextPaint;
            }
            int[] iArr = allowsBigEmoji() ? new int[1] : null;
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
            this.messageText = charSequenceReplaceEmoji;
            Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
            this.messageText = spannableReplaceAnimatedEmoji;
            if (iArr != null && iArr[0] > 1) {
                replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
            }
            checkEmojiOnly(iArr);
            checkBigAnimatedEmoji();
            setType();
            createPathThumb();
        }
        this.layoutCreated = z;
        generateThumbs(false);
        if (z2) {
            checkMediaExistance();
        }
    }

    public void checkBigAnimatedEmoji() {
        AnimatedEmojiSpan[] animatedEmojiSpanArr;
        int i;
        this.emojiAnimatedSticker = null;
        this.emojiAnimatedStickerId = null;
        if (this.emojiOnlyCount == 1 && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty) || getMedia(this.messageOwner) == null)) {
            TLRPC.Message message = this.messageOwner;
            if (message.grouped_id == 0) {
                if (message.entities.isEmpty()) {
                    CharSequence charSequenceSubSequence = this.messageText;
                    int iIndexOf = TextUtils.indexOf(charSequenceSubSequence, "🏻");
                    if (iIndexOf >= 0) {
                        this.emojiAnimatedStickerColor = "_c1";
                        charSequenceSubSequence = charSequenceSubSequence.subSequence(0, iIndexOf);
                    } else {
                        iIndexOf = TextUtils.indexOf(charSequenceSubSequence, "🏼");
                        if (iIndexOf >= 0) {
                            this.emojiAnimatedStickerColor = "_c2";
                            charSequenceSubSequence = charSequenceSubSequence.subSequence(0, iIndexOf);
                        } else {
                            iIndexOf = TextUtils.indexOf(charSequenceSubSequence, "🏽");
                            if (iIndexOf >= 0) {
                                this.emojiAnimatedStickerColor = "_c3";
                                charSequenceSubSequence = charSequenceSubSequence.subSequence(0, iIndexOf);
                            } else {
                                iIndexOf = TextUtils.indexOf(charSequenceSubSequence, "🏾");
                                if (iIndexOf >= 0) {
                                    this.emojiAnimatedStickerColor = "_c4";
                                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, iIndexOf);
                                } else {
                                    iIndexOf = TextUtils.indexOf(charSequenceSubSequence, "🏿");
                                    if (iIndexOf >= 0) {
                                        this.emojiAnimatedStickerColor = "_c5";
                                        charSequenceSubSequence = charSequenceSubSequence.subSequence(0, iIndexOf);
                                    } else {
                                        this.emojiAnimatedStickerColor = _UrlKt.FRAGMENT_ENCODE_SET;
                                    }
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(this.emojiAnimatedStickerColor) && (i = iIndexOf + 2) < this.messageText.length()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(charSequenceSubSequence.toString());
                        CharSequence charSequence = this.messageText;
                        sb.append((Object) charSequence.subSequence(i, charSequence.length()));
                        charSequenceSubSequence = sb.toString();
                    }
                    if (TextUtils.isEmpty(this.emojiAnimatedStickerColor) || EmojiData.emojiColoredMap.contains(charSequenceSubSequence.toString())) {
                        this.emojiAnimatedSticker = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(charSequenceSubSequence);
                    }
                } else if (this.messageOwner.entities.size() == 1 && (this.messageOwner.entities.get(0) instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    try {
                        Long lValueOf = Long.valueOf(((TLRPC.TL_messageEntityCustomEmoji) this.messageOwner.entities.get(0)).document_id);
                        this.emojiAnimatedStickerId = lValueOf;
                        TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, lValueOf.longValue());
                        this.emojiAnimatedSticker = documentFindDocument;
                        if (documentFindDocument == null) {
                            CharSequence charSequence2 = this.messageText;
                            if ((charSequence2 instanceof Spanned) && (animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spanned) charSequence2).getSpans(0, charSequence2.length(), AnimatedEmojiSpan.class)) != null && animatedEmojiSpanArr.length == 1) {
                                this.emojiAnimatedSticker = animatedEmojiSpanArr[0].document;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (this.emojiAnimatedSticker == null && this.emojiAnimatedStickerId == null) {
            generateLayout(null);
            return;
        }
        if (isSticker()) {
            this.type = 13;
        } else if (isAnimatedSticker()) {
            this.type = 15;
        } else {
            this.type = 1000;
        }
    }

    private void createPathThumb() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return;
        }
        this.pathThumb = DocumentObject.getSvgThumb(document, Theme.key_chat_serviceBackground, 1.0f);
    }

    public void createStrippedThumb() {
        if (this.photoThumbs != null) {
            if ((canCreateStripedThubms() || hasExtendedMediaPreview()) && this.strippedThumb == null) {
                try {
                    String str = "b";
                    if (isRoundVideo()) {
                        str = "br";
                    }
                    int size = this.photoThumbs.size();
                    for (int i = 0; i < size; i++) {
                        TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                        if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                            this.strippedThumb = new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), ImageLoader.getStrippedPhotoBitmap(photoSize.bytes, str));
                            return;
                        }
                    }
                } catch (Throwable th) {
                    FileLog.m1040e(th);
                }
            }
        }
    }

    private void createDateArray(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, boolean z) {
        if (map.get(this.dateKey) == null) {
            map.put(this.dateKey, new ArrayList<>());
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.message = LocaleController.formatDateChat(tL_channelAdminLogEvent.date);
            tL_message.id = 0;
            tL_message.date = tL_channelAdminLogEvent.date;
            MessageObject messageObject = new MessageObject(i, tL_message, false, false);
            messageObject.type = 10;
            messageObject.contentType = 1;
            messageObject.isDateObject = true;
            if (z) {
                arrayList.add(0, messageObject);
            } else {
                arrayList.add(messageObject);
            }
        }
    }

    private void checkEmojiOnly(int[] iArr) {
        checkEmojiOnly(iArr == null ? null : Integer.valueOf(iArr[0]));
    }

    private void checkEmojiOnly(Integer num) {
        TextPaint textPaint;
        if (num != null && num.intValue() >= 1 && this.messageOwner != null && !hasNonEmojiEntities()) {
            CharSequence charSequence = this.messageText;
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), Emoji.EmojiSpan.class);
            CharSequence charSequence2 = this.messageText;
            AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) ((Spannable) charSequence2).getSpans(0, charSequence2.length(), AnimatedEmojiSpan.class);
            this.emojiOnlyCount = Math.max(num.intValue(), (emojiSpanArr == null ? 0 : emojiSpanArr.length) + (animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length));
            this.totalAnimatedEmojiCount = animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length;
            this.animatedEmojiCount = 0;
            if (animatedEmojiSpanArr != null) {
                for (AnimatedEmojiSpan animatedEmojiSpan : animatedEmojiSpanArr) {
                    if (!animatedEmojiSpan.standard) {
                        this.animatedEmojiCount++;
                    }
                }
            }
            int i = this.emojiOnlyCount;
            boolean z = (i - (emojiSpanArr == null ? 0 : emojiSpanArr.length)) - (animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length) > 0;
            this.hasUnwrappedEmoji = z;
            if (z) {
                if (animatedEmojiSpanArr == null || animatedEmojiSpanArr.length <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < animatedEmojiSpanArr.length; i2++) {
                    animatedEmojiSpanArr[i2].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.dp(4.0f)), -1);
                    animatedEmojiSpanArr[i2].full = false;
                }
                return;
            }
            int i3 = this.animatedEmojiCount;
            boolean z2 = i == i3;
            int i4 = 2;
            switch (Math.max(i, i3)) {
                case 0:
                case 1:
                case 2:
                    TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                    textPaint = z2 ? textPaintArr[0] : textPaintArr[2];
                    i4 = 1;
                    break;
                case 3:
                    TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z2 ? textPaintArr2[1] : textPaintArr2[3];
                    i4 = 1;
                    break;
                case 4:
                    TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z2 ? textPaintArr3[2] : textPaintArr3[4];
                    i4 = 1;
                    break;
                case 5:
                    TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z2 ? textPaintArr4[3] : textPaintArr4[5];
                    break;
                case 6:
                    TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                    textPaint = z2 ? textPaintArr5[4] : textPaintArr5[5];
                    break;
                default:
                    int i5 = this.emojiOnlyCount > 9 ? 0 : -1;
                    textPaint = Theme.chat_msgTextPaintEmoji[5];
                    i4 = i5;
                    break;
            }
            int textSize = (int) (textPaint.getTextSize() + AndroidUtilities.dp(4.0f));
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                    emojiSpan.replaceFontMetrics(textPaint.getFontMetricsInt(), textSize);
                }
            }
            if (animatedEmojiSpanArr == null || animatedEmojiSpanArr.length <= 0) {
                return;
            }
            for (AnimatedEmojiSpan animatedEmojiSpan2 : animatedEmojiSpanArr) {
                animatedEmojiSpan2.replaceFontMetrics(textPaint.getFontMetricsInt(), textSize, i4);
                animatedEmojiSpan2.full = true;
            }
            return;
        }
        CharSequence charSequence3 = this.messageText;
        AnimatedEmojiSpan[] animatedEmojiSpanArr2 = (AnimatedEmojiSpan[]) ((Spannable) charSequence3).getSpans(0, charSequence3.length(), AnimatedEmojiSpan.class);
        if (animatedEmojiSpanArr2 != null && animatedEmojiSpanArr2.length > 0) {
            this.totalAnimatedEmojiCount = animatedEmojiSpanArr2.length;
            for (int i6 = 0; i6 < animatedEmojiSpanArr2.length; i6++) {
                animatedEmojiSpanArr2[i6].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.dp(4.0f)), -1);
                animatedEmojiSpanArr2[i6].full = false;
            }
            return;
        }
        this.totalAnimatedEmojiCount = 0;
    }

    public android.text.TextPaint getTextPaint() {
        if (this.emojiOnlyCount >= 1 && this.messageOwner != null && !hasNonEmojiEntities()) {
            int i = this.emojiOnlyCount;
            int i2 = this.animatedEmojiCount;
            boolean z = i == i2;
            switch (Math.max(i, i2)) {
                case 0:
                case 1:
                case 2:
                    TextPaint[] textPaintArr = Theme.chat_msgTextPaintEmoji;
                    return z ? textPaintArr[0] : textPaintArr[2];
                case 3:
                    TextPaint[] textPaintArr2 = Theme.chat_msgTextPaintEmoji;
                    return z ? textPaintArr2[1] : textPaintArr2[3];
                case 4:
                    TextPaint[] textPaintArr3 = Theme.chat_msgTextPaintEmoji;
                    return z ? textPaintArr3[2] : textPaintArr3[4];
                case 5:
                    TextPaint[] textPaintArr4 = Theme.chat_msgTextPaintEmoji;
                    return z ? textPaintArr4[3] : textPaintArr4[5];
                case 6:
                    TextPaint[] textPaintArr5 = Theme.chat_msgTextPaintEmoji;
                    return z ? textPaintArr5[4] : textPaintArr5[5];
                default:
                    return Theme.chat_msgTextPaintEmoji[5];
            }
        }
        return Theme.chat_msgTextPaint;
    }

    /* JADX WARN: Removed duplicated region for block: B:1149:0x1d35  */
    /* JADX WARN: Removed duplicated region for block: B:1152:0x1d86  */
    /* JADX WARN: Removed duplicated region for block: B:1153:0x1d88  */
    /* JADX WARN: Removed duplicated region for block: B:1155:0x1d8b  */
    /* JADX WARN: Removed duplicated region for block: B:1172:0x1e17  */
    /* JADX WARN: Removed duplicated region for block: B:1176:0x1e23  */
    /* JADX WARN: Removed duplicated region for block: B:1180:0x1e32  */
    /* JADX WARN: Removed duplicated region for block: B:1181:0x1e37  */
    /* JADX WARN: Removed duplicated region for block: B:1184:0x1e44  */
    /* JADX WARN: Removed duplicated region for block: B:1187:0x1e52  */
    /* JADX WARN: Removed duplicated region for block: B:1188:0x1e55  */
    /* JADX WARN: Removed duplicated region for block: B:1191:0x1e5d  */
    /* JADX WARN: Removed duplicated region for block: B:1192:0x1e61  */
    /* JADX WARN: Removed duplicated region for block: B:1200:0x1e95  */
    /* JADX WARN: Removed duplicated region for block: B:1214:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:534:0x0d3c  */
    /* JADX WARN: Removed duplicated region for block: B:820:0x14a4  */
    /* JADX WARN: Removed duplicated region for block: B:831:0x14e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MessageObject(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, TLRPC.Chat chat, int[] iArr, boolean z) {
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent2;
        String str;
        TLRPC.ChannelParticipant channelParticipant;
        TLRPC.ChannelParticipant channelParticipant2;
        TLRPC.User user;
        String string;
        StringBuilder sb;
        TLRPC.Chat chat2;
        String str2;
        SpannableString spannableString;
        SpannableString spannableString2;
        SpannableString spannableString3;
        boolean z2;
        SpannableString spannableString4;
        int i2;
        String string2;
        TLRPC.Message tL_message;
        String pluralString;
        TLObject chat3;
        TLObject chat4;
        TLObject chat5;
        String pluralString2;
        ArrayList<TLRPC.MessageEntity> arrayList2;
        TLRPC.WebPage webPage;
        TLRPC.Message tL_message2;
        ArrayList<TLRPC.MessageEntity> arrayList3;
        boolean z3;
        boolean z4;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        TLRPC.Peer peer;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLObject chat6;
        String string3;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        StringBuilder sb2;
        boolean z5;
        String pluralString3;
        int i3;
        String str3;
        boolean z6;
        TLObject chat7;
        TLRPC.Message message2;
        ArrayList<MessageObject> arrayList4;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent3;
        int[] iArr2;
        TextPaint textPaint;
        int[] iArr3;
        Spannable spannableReplaceAnimatedEmoji;
        int i4;
        TLRPC.Chat chat8 = chat;
        this.type = 1000;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.summarized = false;
        this.currentEvent = tL_channelAdminLogEvent;
        this.currentAccount = i;
        TLRPC.User user2 = tL_channelAdminLogEvent.user_id > 0 ? MessagesController.getInstance(i).getUser(Long.valueOf(tL_channelAdminLogEvent.user_id)) : null;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(((long) tL_channelAdminLogEvent.date) * 1000);
        int i5 = gregorianCalendar.get(6);
        int i6 = gregorianCalendar.get(1);
        int i7 = gregorianCalendar.get(2);
        this.dateKey = String.format("%d_%02d_%02d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i5));
        this.dateKeyInt = (i7 * 1000) + i6 + (i5 * AppDataDirGuesser.PER_USER_RANGE);
        this.monthKey = String.format("%d_%02d", Integer.valueOf(i6), Integer.valueOf(i7));
        TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
        tL_peerChannel.channel_id = chat8.id;
        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTitle) {
            String str4 = ((TLRPC.TL_channelAdminLogEventActionChangeTitle) channelAdminLogEventAction).new_value;
            if (chat8.megagroup) {
                this.messageText = replaceWithLink(LocaleController.formatString("EventLogEditedGroupTitle", C2807R.string.EventLogEditedGroupTitle, str4), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.formatString("EventLogEditedChannelTitle", C2807R.string.EventLogEditedChannelTitle, str4), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePhoto) {
            TLRPC.TL_channelAdminLogEventActionChangePhoto tL_channelAdminLogEventActionChangePhoto = (TLRPC.TL_channelAdminLogEventActionChangePhoto) channelAdminLogEventAction;
            TLRPC.TL_messageService tL_messageService = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService;
            if (tL_channelAdminLogEventActionChangePhoto.new_photo instanceof TLRPC.TL_photoEmpty) {
                tL_messageService.action = new TLRPC.TL_messageActionChatDeletePhoto();
                if (chat8.megagroup) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedWGroupPhoto), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedChannelPhoto), "un1", user2);
                }
            } else {
                tL_messageService.action = new TLRPC.TL_messageActionChatEditPhoto();
                this.messageOwner.action.photo = tL_channelAdminLogEventActionChangePhoto.new_photo;
                if (chat8.megagroup) {
                    if (isVideoAvatar()) {
                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedGroupVideo), "un1", user2);
                    } else {
                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedGroupPhoto), "un1", user2);
                    }
                } else if (isVideoAvatar()) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedChannelVideo), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedChannelPhoto), "un1", user2);
                }
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoin) {
            if (chat8.megagroup) {
                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogGroupJoined), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChannelJoined), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantLeave) {
            TLRPC.TL_messageService tL_messageService2 = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService2;
            tL_messageService2.action = new TLRPC.TL_messageActionChatDeleteUser();
            this.messageOwner.action.user_id = tL_channelAdminLogEvent.user_id;
            if (chat8.megagroup) {
                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogLeftGroup), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogLeftChannel), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantInvite) {
            TLRPC.TL_messageService tL_messageService3 = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService3;
            tL_messageService3.action = new TLRPC.TL_messageActionChatAddUser();
            long peerId = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantInvite) channelAdminLogEventAction).participant.peer);
            int i8 = this.currentAccount;
            if (peerId > 0) {
                chat7 = MessagesController.getInstance(i8).getUser(Long.valueOf(peerId));
            } else {
                chat7 = MessagesController.getInstance(i8).getChat(Long.valueOf(-peerId));
            }
            TLRPC.Peer peer2 = this.messageOwner.from_id;
            if ((peer2 instanceof TLRPC.TL_peerUser) && peerId == peer2.user_id) {
                if (chat8.megagroup) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogGroupJoined), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChannelJoined), "un1", user2);
                }
            } else {
                CharSequence charSequenceReplaceWithLink = replaceWithLink(LocaleController.getString(C2807R.string.EventLogAdded), "un2", chat7);
                this.messageText = charSequenceReplaceWithLink;
                this.messageText = replaceWithLink(charSequenceReplaceWithLink, "un1", user2);
            }
        } else {
            if ((channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) || ((channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) && (((TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction).prev_participant instanceof TLRPC.TL_channelParticipantAdmin) && (((TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction).new_participant instanceof TLRPC.TL_channelParticipant))) {
                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                str = _UrlKt.FRAGMENT_ENCODE_SET;
                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin tL_channelAdminLogEventActionParticipantToggleAdmin = (TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) channelAdminLogEventAction;
                    channelParticipant = tL_channelAdminLogEventActionParticipantToggleAdmin.prev_participant;
                    channelParticipant2 = tL_channelAdminLogEventActionParticipantToggleAdmin.new_participant;
                } else {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                    channelParticipant = tL_channelAdminLogEventActionParticipantToggleBan.prev_participant;
                    channelParticipant2 = tL_channelAdminLogEventActionParticipantToggleBan.new_participant;
                }
                TLRPC.TL_message tL_message3 = new TLRPC.TL_message();
                this.messageOwner = tL_message3;
                tL_message3.realId = -1;
                long peerId2 = getPeerId(channelParticipant.peer);
                int i9 = this.currentAccount;
                if (peerId2 > 0) {
                    user = MessagesController.getInstance(i9).getUser(Long.valueOf(peerId2));
                } else {
                    user = MessagesController.getInstance(i9).getUser(Long.valueOf(-peerId2));
                }
                if (!(channelParticipant instanceof TLRPC.TL_channelParticipantCreator) && (channelParticipant2 instanceof TLRPC.TL_channelParticipantCreator)) {
                    String string4 = LocaleController.getString(C2807R.string.EventLogChangedOwnership);
                    sb = new StringBuilder(String.format(string4, getUserName(user, this.messageOwner.entities, string4.indexOf("%1$s"))));
                    chat8 = chat;
                } else {
                    TLRPC.TL_chatAdminRights tL_chatAdminRights = channelParticipant.admin_rights;
                    TLRPC.TL_chatAdminRights tL_chatAdminRights2 = channelParticipant2.admin_rights;
                    tL_chatAdminRights = tL_chatAdminRights == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights;
                    tL_chatAdminRights2 = tL_chatAdminRights2 == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights2;
                    if (tL_chatAdminRights2.other) {
                        string = LocaleController.getString(C2807R.string.EventLogPromotedNoRights);
                    } else {
                        string = LocaleController.getString(C2807R.string.EventLogPromoted);
                    }
                    StringBuilder sb3 = new StringBuilder(String.format(string, getUserName(user, this.messageOwner.entities, string.indexOf("%1$s"))));
                    sb3.append("\n");
                    if (!TextUtils.equals(channelParticipant.rank, channelParticipant2.rank)) {
                        if (TextUtils.isEmpty(channelParticipant2.rank)) {
                            sb3.append("\n- ");
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedRemovedTitle));
                        } else {
                            sb3.append("\n+ ");
                            sb3.append(LocaleController.formatString("EventLogPromotedTitle", C2807R.string.EventLogPromotedTitle, channelParticipant2.rank));
                        }
                    }
                    if (tL_chatAdminRights.change_info != tL_chatAdminRights2.change_info) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.change_info ? '+' : '-');
                        sb3.append(' ');
                        chat8 = chat;
                        sb3.append(LocaleController.getString(chat8.megagroup ? C2807R.string.EventLogPromotedChangeGroupInfo : C2807R.string.EventLogPromotedChangeChannelInfo));
                    } else {
                        chat8 = chat;
                    }
                    if (!chat8.megagroup) {
                        if (tL_chatAdminRights.post_messages != tL_chatAdminRights2.post_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.post_messages ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedPostMessages));
                        }
                        if (tL_chatAdminRights.edit_messages != tL_chatAdminRights2.edit_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.edit_messages ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedEditMessages));
                        }
                    }
                    if (tL_chatAdminRights.post_stories != tL_chatAdminRights2.post_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.post_stories ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedPostStories));
                    }
                    if (tL_chatAdminRights.edit_stories != tL_chatAdminRights2.edit_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.edit_stories ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedEditStories));
                    }
                    if (tL_chatAdminRights.delete_stories != tL_chatAdminRights2.delete_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.delete_stories ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedDeleteStories));
                    }
                    if (tL_chatAdminRights.delete_messages != tL_chatAdminRights2.delete_messages) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.delete_messages ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedDeleteMessages));
                    }
                    if (tL_chatAdminRights.add_admins != tL_chatAdminRights2.add_admins) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.add_admins ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedAddAdmins));
                    }
                    if (tL_chatAdminRights.anonymous != tL_chatAdminRights2.anonymous) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.anonymous ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedSendAnonymously));
                    }
                    if (chat8.megagroup) {
                        if (tL_chatAdminRights.ban_users != tL_chatAdminRights2.ban_users) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.ban_users ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedBanUsers));
                        }
                        if (tL_chatAdminRights.manage_call != tL_chatAdminRights2.manage_call) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_call ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedManageCall));
                        }
                    }
                    if (tL_chatAdminRights.invite_users != tL_chatAdminRights2.invite_users) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.invite_users ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedAddUsers));
                    }
                    if (chat8.megagroup) {
                        if (tL_chatAdminRights.pin_messages != tL_chatAdminRights2.pin_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.pin_messages ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedPinMessages));
                        }
                        if (tL_chatAdminRights.manage_ranks != tL_chatAdminRights2.manage_ranks) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_ranks ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedEditRanks));
                        }
                        if (tL_chatAdminRights.manage_topics != tL_chatAdminRights2.manage_topics) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_topics ? '+' : '-');
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedManageTopics));
                        }
                    }
                    if (tL_chatAdminRights.manage_direct_messages != tL_chatAdminRights2.manage_direct_messages) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.manage_direct_messages ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedManageDirect));
                    }
                    if (tL_chatAdminRights.manage_welcome_messages != tL_chatAdminRights2.manage_welcome_messages) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.manage_welcome_messages ? '+' : '-');
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2807R.string.EventLogPromotedManageWelcomeMessages));
                    }
                    sb = sb3;
                }
                this.messageText = sb.toString();
            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) {
                TLRPC.TL_channelAdminLogEventActionDefaultBannedRights tL_channelAdminLogEventActionDefaultBannedRights = (TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) channelAdminLogEventAction;
                TLRPC.TL_message tL_message4 = new TLRPC.TL_message();
                this.messageOwner = tL_message4;
                tL_message4.realId = -1;
                TLRPC.TL_chatBannedRights tL_chatBannedRights2 = tL_channelAdminLogEventActionDefaultBannedRights.prev_banned_rights;
                TLRPC.TL_chatBannedRights tL_chatBannedRights3 = tL_channelAdminLogEventActionDefaultBannedRights.new_banned_rights;
                StringBuilder sb4 = new StringBuilder(LocaleController.getString(C2807R.string.EventLogDefaultPermissions));
                tL_chatBannedRights2 = tL_chatBannedRights2 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights2;
                tL_chatBannedRights3 = tL_chatBannedRights3 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights3;
                if (tL_chatBannedRights2.send_messages != tL_chatBannedRights3.send_messages) {
                    sb4.append("\n\n");
                    sb4.append(!tL_chatBannedRights3.send_messages ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendMessages));
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (tL_chatBannedRights2.send_stickers != tL_chatBannedRights3.send_stickers || tL_chatBannedRights2.send_inline != tL_chatBannedRights3.send_inline || tL_chatBannedRights2.send_gifs != tL_chatBannedRights3.send_gifs || tL_chatBannedRights2.send_games != tL_chatBannedRights3.send_games) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_stickers ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendStickers));
                }
                if (tL_chatBannedRights2.send_media != tL_chatBannedRights3.send_media) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_media ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendMedia));
                }
                if (tL_chatBannedRights2.send_polls != tL_chatBannedRights3.send_polls) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_polls ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendPolls));
                }
                if (tL_chatBannedRights2.embed_links != tL_chatBannedRights3.embed_links) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.embed_links ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendEmbed));
                }
                if (tL_chatBannedRights2.change_info != tL_chatBannedRights3.change_info) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.change_info ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedChangeInfo));
                }
                if (tL_chatBannedRights2.invite_users != tL_chatBannedRights3.invite_users) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.invite_users ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedInviteUsers));
                }
                if (tL_chatBannedRights2.pin_messages != tL_chatBannedRights3.pin_messages) {
                    if (!z6) {
                        sb4.append('\n');
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.pin_messages ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedPinMessages));
                }
                if (tL_chatBannedRights2.edit_rank != tL_chatBannedRights3.edit_rank) {
                    if (!z6) {
                        sb4.append('\n');
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.edit_rank ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedEditRank));
                }
                if (tL_chatBannedRights2.send_reactions != tL_chatBannedRights3.send_reactions) {
                    if (!z6) {
                        sb4.append('\n');
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_reactions ? '+' : '-');
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendReactions));
                }
                this.messageText = sb4.toString();
            } else {
                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan2 = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                    TLRPC.TL_message tL_message5 = new TLRPC.TL_message();
                    this.messageOwner = tL_message5;
                    tL_message5.realId = -1;
                    long peerId3 = getPeerId(tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.peer);
                    int i10 = this.currentAccount;
                    if (peerId3 > 0) {
                        chat6 = MessagesController.getInstance(i10).getUser(Long.valueOf(peerId3));
                    } else {
                        chat6 = MessagesController.getInstance(i10).getChat(Long.valueOf(-peerId3));
                    }
                    TLRPC.TL_chatBannedRights tL_chatBannedRights4 = tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.banned_rights;
                    TLRPC.TL_chatBannedRights tL_chatBannedRights5 = tL_channelAdminLogEventActionParticipantToggleBan2.new_participant.banned_rights;
                    if (chat8.megagroup && (tL_chatBannedRights5 == null || !tL_chatBannedRights5.view_messages || (tL_chatBannedRights4 != null && tL_chatBannedRights5.until_date != tL_chatBannedRights4.until_date))) {
                        if (tL_chatBannedRights5 != null && !AndroidUtilities.isBannedForever(tL_chatBannedRights5)) {
                            sb2 = new StringBuilder();
                            int i11 = tL_chatBannedRights5.until_date - tL_channelAdminLogEvent.date;
                            int i12 = ((i11 / 60) / 60) / 24;
                            int i13 = i11 - (i12 * 86400);
                            tL_chatBannedRights = tL_chatBannedRights4;
                            int i14 = (i13 / 60) / 60;
                            int i15 = (i13 - (i14 * 3600)) / 60;
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                            int i16 = 0;
                            int i17 = 0;
                            while (i16 < 3) {
                                if (i16 == 0) {
                                    if (i12 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Days", i12, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i17 + 1;
                                    }
                                    i3 = i17;
                                    str3 = null;
                                } else if (i16 == 1) {
                                    if (i14 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Hours", i14, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i17 + 1;
                                    }
                                    i3 = i17;
                                    str3 = null;
                                } else {
                                    if (i15 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Minutes", i15, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i17 + 1;
                                    }
                                    i3 = i17;
                                    str3 = null;
                                }
                                if (str3 != null) {
                                    if (sb2.length() > 0) {
                                        sb2.append(", ");
                                    }
                                    sb2.append(str3);
                                }
                                if (i3 == 2) {
                                    break;
                                }
                                i16++;
                                i17 = i3;
                            }
                        } else {
                            tL_chatBannedRights = tL_chatBannedRights4;
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                            sb2 = new StringBuilder(LocaleController.getString(C2807R.string.UserRestrictionsUntilForever));
                        }
                        String string5 = LocaleController.getString(C2807R.string.EventLogRestrictedUntil);
                        StringBuilder sb5 = new StringBuilder(String.format(string5, getUserName(chat6, this.messageOwner.entities, string5.indexOf("%1$s")), sb2));
                        TLRPC.TL_chatBannedRights tL_chatBannedRights6 = tL_chatBannedRights == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights;
                        tL_chatBannedRights5 = tL_chatBannedRights5 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights5;
                        if (tL_chatBannedRights6.view_messages != tL_chatBannedRights5.view_messages) {
                            sb5.append("\n\n");
                            sb5.append(!tL_chatBannedRights5.view_messages ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedReadMessages));
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (tL_chatBannedRights6.send_messages != tL_chatBannedRights5.send_messages) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_messages ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendMessages));
                        }
                        if (tL_chatBannedRights6.send_stickers != tL_chatBannedRights5.send_stickers || tL_chatBannedRights6.send_inline != tL_chatBannedRights5.send_inline || tL_chatBannedRights6.send_gifs != tL_chatBannedRights5.send_gifs || tL_chatBannedRights6.send_games != tL_chatBannedRights5.send_games) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_stickers ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendStickers));
                        }
                        if (tL_chatBannedRights6.send_media != tL_chatBannedRights5.send_media) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_media ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendMedia));
                        }
                        if (tL_chatBannedRights6.send_polls != tL_chatBannedRights5.send_polls) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_polls ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendPolls));
                        }
                        if (tL_chatBannedRights6.embed_links != tL_chatBannedRights5.embed_links) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.embed_links ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendEmbed));
                        }
                        if (tL_chatBannedRights6.change_info != tL_chatBannedRights5.change_info) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.change_info ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedChangeInfo));
                        }
                        if (tL_chatBannedRights6.invite_users != tL_chatBannedRights5.invite_users) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.invite_users ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedInviteUsers));
                        }
                        if (tL_chatBannedRights6.pin_messages != tL_chatBannedRights5.pin_messages) {
                            if (!z5) {
                                sb5.append('\n');
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.pin_messages ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedPinMessages));
                        }
                        if (tL_chatBannedRights6.edit_rank != tL_chatBannedRights5.edit_rank) {
                            if (!z5) {
                                sb5.append('\n');
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.edit_rank ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedEditRank));
                        }
                        if (tL_chatBannedRights6.send_reactions != tL_chatBannedRights5.send_reactions) {
                            if (!z5) {
                                sb5.append('\n');
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_reactions ? '+' : '-');
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2807R.string.EventLogRestrictedSendReactions));
                        }
                        this.messageText = sb5.toString();
                    } else {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                        if (tL_chatBannedRights5 != null && (tL_chatBannedRights4 == null || tL_chatBannedRights5.view_messages)) {
                            string3 = LocaleController.getString(C2807R.string.EventLogChannelRestricted);
                        } else {
                            string3 = LocaleController.getString(C2807R.string.EventLogChannelUnrestricted);
                        }
                        this.messageText = String.format(string3, getUserName(chat6, this.messageOwner.entities, string3.indexOf("%1$s")));
                    }
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionUpdatePinned) {
                        TLRPC.TL_channelAdminLogEventActionUpdatePinned tL_channelAdminLogEventActionUpdatePinned = (TLRPC.TL_channelAdminLogEventActionUpdatePinned) channelAdminLogEventAction;
                        message = tL_channelAdminLogEventActionUpdatePinned.message;
                        if (user2 != null && user2.id == 136817688 && (messageFwdHeader = message.fwd_from) != null && (messageFwdHeader.from_id instanceof TLRPC.TL_peerChannel)) {
                            TLRPC.Chat chat9 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tL_channelAdminLogEventActionUpdatePinned.message.fwd_from.from_id.channel_id));
                            TLRPC.Message message3 = tL_channelAdminLogEventActionUpdatePinned.message;
                            if ((message3 instanceof TLRPC.TL_messageEmpty) || !message3.pinned) {
                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogUnpinnedMessages), "un1", chat9);
                            } else {
                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogPinnedMessages), "un1", chat9);
                            }
                        } else if ((message instanceof TLRPC.TL_messageEmpty) || !message.pinned) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogUnpinnedMessages), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogPinnedMessages), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStopPoll) {
                        message = ((TLRPC.TL_channelAdminLogEventActionStopPoll) channelAdminLogEventAction).message;
                        if ((getMedia(message) instanceof TLRPC.TL_messageMediaPoll) && ((TLRPC.TL_messageMediaPoll) getMedia(message)).poll.quiz) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogStopQuiz), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogStopPoll), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatures) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleSignatures) channelAdminLogEventAction).new_value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledSignaturesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledSignaturesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantSubExtend) {
                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogSubExtend), "un1", user2);
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) channelAdminLogEventAction).value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledSignaturesProfilesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledSignaturesProfilesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleInvites) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleInvites) channelAdminLogEventAction).new_value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledInvitesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledInvitesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                        message = ((TLRPC.TL_channelAdminLogEventActionDeleteMessage) channelAdminLogEventAction).message;
                        if (user2 != null && user2.id == MessagesController.getInstance(this.currentAccount).telegramAntispamUserId) {
                            this.messageText = LocaleController.getString(C2807R.string.EventLogDeletedMessages).replace("un1", UserObject.getUserName(user2));
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogDeletedMessages), "un1", user2);
                        }
                    } else {
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) {
                            long j = ((TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) channelAdminLogEventAction).new_value;
                            long j2 = ((TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) channelAdminLogEventAction).prev_value;
                            chat2 = chat;
                            if (chat2.megagroup) {
                                int i18 = this.currentAccount;
                                if (j == 0) {
                                    TLRPC.Chat chat10 = MessagesController.getInstance(i18).getChat(Long.valueOf(j2));
                                    CharSequence charSequenceReplaceWithLink2 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedLinkedChannel), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink2;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink2, "un2", chat10);
                                } else {
                                    TLRPC.Chat chat11 = MessagesController.getInstance(i18).getChat(Long.valueOf(j));
                                    CharSequence charSequenceReplaceWithLink3 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChangedLinkedChannel), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink3;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink3, "un2", chat11);
                                }
                            } else {
                                int i19 = this.currentAccount;
                                if (j == 0) {
                                    TLRPC.Chat chat12 = MessagesController.getInstance(i19).getChat(Long.valueOf(j2));
                                    CharSequence charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedLinkedGroup), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink4;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink4, "un2", chat12);
                                } else {
                                    TLRPC.Chat chat13 = MessagesController.getInstance(i19).getChat(Long.valueOf(j));
                                    CharSequence charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChangedLinkedGroup), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink5;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink5, "un2", chat13);
                                }
                            }
                        } else {
                            chat2 = chat;
                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) {
                                if (((TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) channelAdminLogEventAction).new_value) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledInvitesHistoryOff), "un1", user2);
                                } else {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledInvitesHistoryOn), "un1", user2);
                                }
                            } else {
                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAbout) {
                                    this.messageText = replaceWithLink(LocaleController.getString(chat2.megagroup ? C2807R.string.EventLogEditedGroupDescription : C2807R.string.EventLogEditedChannelDescription), "un1", user2);
                                    tL_message = new TLRPC.TL_message();
                                    tL_message.out = false;
                                    tL_message.unread = false;
                                    TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
                                    tL_message.from_id = tL_peerUser;
                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                    tL_peerUser.user_id = tL_channelAdminLogEvent2.user_id;
                                    tL_message.peer_id = tL_peerChannel;
                                    tL_message.date = tL_channelAdminLogEvent2.date;
                                    TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction2 = tL_channelAdminLogEvent2.action;
                                    tL_message.message = ((TLRPC.TL_channelAdminLogEventActionChangeAbout) channelAdminLogEventAction2).new_value;
                                    if (!TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeAbout) channelAdminLogEventAction2).prev_value)) {
                                        TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage = new TLRPC.TL_messageMediaWebPage();
                                        tL_message.media = tL_messageMediaWebPage;
                                        tL_messageMediaWebPage.webpage = new TLRPC.TL_webPage();
                                        TLRPC.WebPage webPage2 = tL_message.media.webpage;
                                        webPage2.flags = 10;
                                        str2 = str;
                                        webPage2.display_url = str2;
                                        webPage2.url = str2;
                                        webPage2.site_name = LocaleController.getString(C2807R.string.EventLogPreviousGroupDescription);
                                        tL_message.media.webpage.description = ((TLRPC.TL_channelAdminLogEventActionChangeAbout) tL_channelAdminLogEvent2.action).prev_value;
                                    } else {
                                        str2 = str;
                                        tL_message.media = new TLRPC.TL_messageMediaEmpty();
                                    }
                                } else {
                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                    str2 = str;
                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTheme) {
                                        this.messageText = replaceWithLink(LocaleController.getString(chat2.megagroup ? C2807R.string.EventLogEditedGroupTheme : C2807R.string.EventLogEditedChannelTheme), "un1", user2);
                                        tL_message = new TLRPC.TL_message();
                                        tL_message.out = false;
                                        tL_message.unread = false;
                                        TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                                        tL_message.from_id = tL_peerUser2;
                                        tL_peerUser2.user_id = tL_channelAdminLogEvent2.user_id;
                                        tL_message.peer_id = tL_peerChannel;
                                        tL_message.date = tL_channelAdminLogEvent2.date;
                                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction3 = tL_channelAdminLogEvent2.action;
                                        tL_message.message = ((TLRPC.TL_channelAdminLogEventActionChangeTheme) channelAdminLogEventAction3).new_value;
                                        if (!TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeTheme) channelAdminLogEventAction3).prev_value)) {
                                            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage2 = new TLRPC.TL_messageMediaWebPage();
                                            tL_message.media = tL_messageMediaWebPage2;
                                            tL_messageMediaWebPage2.webpage = new TLRPC.TL_webPage();
                                            TLRPC.WebPage webPage3 = tL_message.media.webpage;
                                            webPage3.flags = 10;
                                            webPage3.display_url = str2;
                                            webPage3.url = str2;
                                            webPage3.site_name = LocaleController.getString(C2807R.string.EventLogPreviousGroupTheme);
                                            tL_message.media.webpage.description = ((TLRPC.TL_channelAdminLogEventActionChangeTheme) tL_channelAdminLogEvent2.action).prev_value;
                                        } else {
                                            tL_message.media = new TLRPC.TL_messageMediaEmpty();
                                        }
                                    } else {
                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeUsername) {
                                            String str5 = ((TLRPC.TL_channelAdminLogEventActionChangeUsername) channelAdminLogEventAction).new_value;
                                            boolean zIsEmpty = TextUtils.isEmpty(str5);
                                            boolean z7 = chat2.megagroup;
                                            if (zIsEmpty) {
                                                this.messageText = replaceWithLink(LocaleController.getString(z7 ? C2807R.string.EventLogRemovedGroupLink : C2807R.string.EventLogRemovedChannelLink), "un1", user2);
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(z7 ? C2807R.string.EventLogChangedGroupLink : C2807R.string.EventLogChangedChannelLink), "un1", user2);
                                            }
                                            tL_message2 = new TLRPC.TL_message();
                                            tL_message2.out = false;
                                            tL_message2.unread = false;
                                            TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
                                            tL_message2.from_id = tL_peerUser3;
                                            tL_peerUser3.user_id = tL_channelAdminLogEvent2.user_id;
                                            tL_message2.peer_id = tL_peerChannel;
                                            tL_message2.date = tL_channelAdminLogEvent2.date;
                                            if (!TextUtils.isEmpty(str5)) {
                                                tL_message2.message = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + str5;
                                            } else {
                                                tL_message2.message = str2;
                                            }
                                            TLRPC.TL_messageEntityUrl tL_messageEntityUrl = new TLRPC.TL_messageEntityUrl();
                                            tL_messageEntityUrl.offset = 0;
                                            tL_messageEntityUrl.length = tL_message2.message.length();
                                            tL_message2.entities.add(tL_messageEntityUrl);
                                            if (!TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent2.action).prev_value)) {
                                                TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage3 = new TLRPC.TL_messageMediaWebPage();
                                                tL_message2.media = tL_messageMediaWebPage3;
                                                tL_messageMediaWebPage3.webpage = new TLRPC.TL_webPage();
                                                TLRPC.WebPage webPage4 = tL_message2.media.webpage;
                                                webPage4.flags = 10;
                                                webPage4.display_url = str2;
                                                webPage4.url = str2;
                                                webPage4.site_name = LocaleController.getString(C2807R.string.EventLogPreviousLink);
                                                tL_message2.media.webpage.description = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent2.action).prev_value;
                                            } else {
                                                tL_message2.media = new TLRPC.TL_messageMediaEmpty();
                                            }
                                            chat8 = chat2;
                                            str = str2;
                                            arrayList3 = null;
                                            if (this.messageOwner == null) {
                                                this.messageOwner = new TLRPC.TL_messageService();
                                            }
                                            this.messageOwner.message = this.messageText.toString();
                                            this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                            TLRPC.Message message4 = this.messageOwner;
                                            message4.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                            message4.date = tL_channelAdminLogEvent2.date;
                                            int i20 = iArr[0];
                                            iArr[0] = i20 + 1;
                                            message4.id = i20;
                                            this.eventId = tL_channelAdminLogEvent2.id;
                                            message4.out = false;
                                            message4.peer_id = new TLRPC.TL_peerChannel();
                                            TLRPC.Message message5 = this.messageOwner;
                                            message5.peer_id.channel_id = chat8.id;
                                            message5.unread = false;
                                            MediaController mediaController = MediaController.getInstance();
                                            this.isOutOwnerCached = null;
                                            message2 = tL_message2 instanceof TLRPC.TL_messageEmpty ? null : tL_message2;
                                            if (message2 != null) {
                                                message2.out = false;
                                                message2.realId = message2.id;
                                                int i21 = iArr[0];
                                                iArr[0] = i21 + 1;
                                                message2.id = i21;
                                                message2.flags &= -32769;
                                                message2.dialog_id = -chat8.id;
                                                if (tL_channelAdminLogEvent2.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                    i4 = message2.date;
                                                    message2.date = tL_channelAdminLogEvent2.date;
                                                } else {
                                                    i4 = 0;
                                                }
                                                MessageObject messageObject = new MessageObject(this.currentAccount, message2, (AbstractMap<Long, TLRPC.User>) null, (AbstractMap<Long, TLRPC.Chat>) null, true, true, this.eventId);
                                                messageObject.realDate = i4;
                                                messageObject.currentEvent = tL_channelAdminLogEvent2;
                                                if (messageObject.contentType >= 0) {
                                                    if (mediaController.isPlayingMessage(messageObject)) {
                                                        MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
                                                        messageObject.audioProgress = playingMessageObject.audioProgress;
                                                        messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                                                    }
                                                    arrayList4 = arrayList;
                                                    tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                    createDateArray(this.currentAccount, tL_channelAdminLogEvent3, arrayList4, map, z);
                                                    if (z) {
                                                        arrayList4.add(0, messageObject);
                                                    } else {
                                                        arrayList4.add(arrayList4.size() - 1, messageObject);
                                                    }
                                                } else {
                                                    arrayList4 = arrayList;
                                                    tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                    this.contentType = -1;
                                                }
                                                if (arrayList3 != null) {
                                                    messageObject.webPageDescriptionEntities = arrayList3;
                                                    iArr2 = null;
                                                    messageObject.linkDescription = null;
                                                    messageObject.generateLinkDescription();
                                                }
                                                if ((tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) && this.contentType >= 0) {
                                                    createDateArray(this.currentAccount, tL_channelAdminLogEvent3, arrayList4, map, z);
                                                    if (!z) {
                                                        arrayList4.add(0, this);
                                                    } else {
                                                        arrayList4.add(arrayList4.size() - 1, this);
                                                    }
                                                    if (this.messageText == null) {
                                                        this.messageText = str;
                                                    }
                                                    if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
                                                        textPaint = Theme.chat_msgGameTextPaint;
                                                    } else {
                                                        textPaint = Theme.chat_msgTextPaint;
                                                    }
                                                    iArr3 = !allowsBigEmoji() ? new int[1] : iArr2;
                                                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr3);
                                                    this.messageText = charSequenceReplaceEmoji;
                                                    spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
                                                    this.messageText = spannableReplaceAnimatedEmoji;
                                                    if (iArr3 != null && iArr3[0] > 1) {
                                                        replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr3);
                                                    }
                                                    checkEmojiOnly(iArr3);
                                                    setType();
                                                    measureInlineBotButtons();
                                                    generateCaption();
                                                    if (mediaController.isPlayingMessage(this)) {
                                                        MessageObject playingMessageObject2 = mediaController.getPlayingMessageObject();
                                                        this.audioProgress = playingMessageObject2.audioProgress;
                                                        this.audioProgressSec = playingMessageObject2.audioProgressSec;
                                                    }
                                                    generateLayout(user2);
                                                    this.layoutCreated = true;
                                                    generateThumbs(false);
                                                    checkMediaExistance();
                                                    return;
                                                }
                                                return;
                                            }
                                            arrayList4 = arrayList;
                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                            iArr2 = null;
                                            if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                return;
                                            }
                                            createDateArray(this.currentAccount, tL_channelAdminLogEvent3, arrayList4, map, z);
                                            if (!z) {
                                            }
                                            if (this.messageText == null) {
                                            }
                                            if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
                                            }
                                            if (!allowsBigEmoji()) {
                                            }
                                            CharSequence charSequenceReplaceEmoji2 = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr3);
                                            this.messageText = charSequenceReplaceEmoji2;
                                            spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji2, textPaint.getFontMetricsInt());
                                            this.messageText = spannableReplaceAnimatedEmoji;
                                            if (iArr3 != null) {
                                                replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr3);
                                            }
                                            checkEmojiOnly(iArr3);
                                            setType();
                                            measureInlineBotButtons();
                                            generateCaption();
                                            if (mediaController.isPlayingMessage(this)) {
                                            }
                                            generateLayout(user2);
                                            this.layoutCreated = true;
                                            generateThumbs(false);
                                            checkMediaExistance();
                                            return;
                                        }
                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditMessage) {
                                            TLRPC.Message tL_message6 = new TLRPC.TL_message();
                                            tL_message6.out = false;
                                            tL_message6.unread = false;
                                            tL_message6.peer_id = tL_peerChannel;
                                            tL_message6.date = tL_channelAdminLogEvent2.date;
                                            TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction4 = tL_channelAdminLogEvent2.action;
                                            TLRPC.Message message6 = ((TLRPC.TL_channelAdminLogEventActionEditMessage) channelAdminLogEventAction4).new_message;
                                            TLRPC.Message message7 = ((TLRPC.TL_channelAdminLogEventActionEditMessage) channelAdminLogEventAction4).prev_message;
                                            if (message7 != null) {
                                                tL_message6.reply_to = message7.reply_to;
                                                tL_message6.id = message7.id;
                                            } else if (message6 != null) {
                                                tL_message6.reply_to = message6.reply_to;
                                                tL_message6.id = message6.id;
                                            }
                                            if (message6 != null && (peer = message6.from_id) != null) {
                                                tL_message6.from_id = peer;
                                            } else {
                                                TLRPC.TL_peerUser tL_peerUser4 = new TLRPC.TL_peerUser();
                                                tL_message6.from_id = tL_peerUser4;
                                                tL_peerUser4.user_id = tL_channelAdminLogEvent2.user_id;
                                            }
                                            if (getMedia(message6) != null && !(getMedia(message6) instanceof TLRPC.TL_messageMediaEmpty) && !(getMedia(message6) instanceof TLRPC.TL_messageMediaWebPage)) {
                                                boolean zEquals = TextUtils.equals(message6.message, message7.message);
                                                TLRPC.MessageMedia media = getMedia(message6);
                                                TLRPC.MessageMedia media2 = getMedia(message7);
                                                if (media2 == null) {
                                                    z3 = false;
                                                    z4 = true;
                                                } else {
                                                    z3 = (media.getClass() == media2.getClass() && ((photo = media.photo) == null || (photo2 = media2.photo) == null || photo.id == photo2.id) && (media.document == null || media2.document == null || getMedia(message6).document.id == media2.document.id)) ? false : true;
                                                    z4 = false;
                                                }
                                                if (z4) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogAddedMedia), "un1", user2);
                                                } else if (z3 && !zEquals) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedMediaCaption), "un1", user2);
                                                } else if (!zEquals) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedCaption), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedMedia), "un1", user2);
                                                }
                                                TLRPC.MessageMedia media3 = getMedia(message6);
                                                tL_message6.media = media3;
                                                if (!zEquals) {
                                                    media3.webpage = new TLRPC.TL_webPage();
                                                    tL_message6.media.webpage.site_name = LocaleController.getString(C2807R.string.EventLogOriginalCaption);
                                                    boolean zIsEmpty2 = TextUtils.isEmpty(message7.message);
                                                    TLRPC.MessageMedia messageMedia = tL_message6.media;
                                                    if (zIsEmpty2) {
                                                        messageMedia.webpage.description = LocaleController.getString(C2807R.string.EventLogOriginalCaptionEmpty);
                                                        arrayList2 = null;
                                                        tL_message6.reply_markup = message6.reply_markup;
                                                        webPage = tL_message6.media.webpage;
                                                        if (webPage != null) {
                                                        }
                                                        ArrayList<TLRPC.MessageEntity> arrayList5 = arrayList2;
                                                        tL_message2 = tL_message6;
                                                        chat8 = chat2;
                                                        arrayList3 = arrayList5;
                                                        str = str2;
                                                    } else {
                                                        messageMedia.webpage.description = message7.message;
                                                        arrayList2 = message7.entities;
                                                        tL_message6.reply_markup = message6.reply_markup;
                                                        webPage = tL_message6.media.webpage;
                                                        if (webPage != null) {
                                                        }
                                                        ArrayList<TLRPC.MessageEntity> arrayList52 = arrayList2;
                                                        tL_message2 = tL_message6;
                                                        chat8 = chat2;
                                                        arrayList3 = arrayList52;
                                                        str = str2;
                                                    }
                                                } else {
                                                    arrayList2 = null;
                                                    tL_message6.reply_markup = message6.reply_markup;
                                                    webPage = tL_message6.media.webpage;
                                                    if (webPage != null) {
                                                    }
                                                    ArrayList<TLRPC.MessageEntity> arrayList522 = arrayList2;
                                                    tL_message2 = tL_message6;
                                                    chat8 = chat2;
                                                    arrayList3 = arrayList522;
                                                    str = str2;
                                                }
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditedMessages), "un1", user2);
                                                if (message6.action instanceof TLRPC.TL_messageActionGroupCall) {
                                                    message6.media = new TLRPC.TL_messageMediaEmpty();
                                                    tL_message6 = message6;
                                                } else {
                                                    tL_message6.message = message6.message;
                                                    tL_message6.entities = message6.entities;
                                                    TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage4 = new TLRPC.TL_messageMediaWebPage();
                                                    tL_message6.media = tL_messageMediaWebPage4;
                                                    tL_messageMediaWebPage4.webpage = new TLRPC.TL_webPage();
                                                    tL_message6.media.webpage.site_name = LocaleController.getString(C2807R.string.EventLogOriginalMessages);
                                                    boolean zIsEmpty3 = TextUtils.isEmpty(message7.message);
                                                    TLRPC.MessageMedia messageMedia2 = tL_message6.media;
                                                    if (zIsEmpty3) {
                                                        messageMedia2.webpage.description = LocaleController.getString(C2807R.string.EventLogOriginalCaptionEmpty);
                                                    } else {
                                                        messageMedia2.webpage.description = message7.message;
                                                        arrayList2 = message7.entities;
                                                        tL_message6.reply_markup = message6.reply_markup;
                                                        webPage = tL_message6.media.webpage;
                                                        if (webPage != null) {
                                                            webPage.flags = 10;
                                                            webPage.display_url = str2;
                                                            webPage.url = str2;
                                                        }
                                                        ArrayList<TLRPC.MessageEntity> arrayList5222 = arrayList2;
                                                        tL_message2 = tL_message6;
                                                        chat8 = chat2;
                                                        arrayList3 = arrayList5222;
                                                        str = str2;
                                                    }
                                                }
                                                arrayList2 = null;
                                                tL_message6.reply_markup = message6.reply_markup;
                                                webPage = tL_message6.media.webpage;
                                                if (webPage != null) {
                                                }
                                                ArrayList<TLRPC.MessageEntity> arrayList52222 = arrayList2;
                                                tL_message2 = tL_message6;
                                                chat8 = chat2;
                                                arrayList3 = arrayList52222;
                                                str = str2;
                                            }
                                            if (this.messageOwner == null) {
                                            }
                                            this.messageOwner.message = this.messageText.toString();
                                            this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                            TLRPC.Message message42 = this.messageOwner;
                                            message42.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                            message42.date = tL_channelAdminLogEvent2.date;
                                            int i202 = iArr[0];
                                            iArr[0] = i202 + 1;
                                            message42.id = i202;
                                            this.eventId = tL_channelAdminLogEvent2.id;
                                            message42.out = false;
                                            message42.peer_id = new TLRPC.TL_peerChannel();
                                            TLRPC.Message message52 = this.messageOwner;
                                            message52.peer_id.channel_id = chat8.id;
                                            message52.unread = false;
                                            MediaController mediaController2 = MediaController.getInstance();
                                            this.isOutOwnerCached = null;
                                            if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                            }
                                            if (message2 != null) {
                                            }
                                            iArr2 = null;
                                            if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                            }
                                        } else {
                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) {
                                                TLRPC.InputStickerSet inputStickerSet = ((TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) channelAdminLogEventAction).new_stickerset;
                                                TLRPC.InputStickerSet inputStickerSet2 = ((TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) channelAdminLogEventAction).new_stickerset;
                                                if (inputStickerSet == null || (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedEmojiPack), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChangedEmojiPack), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeStickerSet) {
                                                TLRPC.InputStickerSet inputStickerSet3 = ((TLRPC.TL_channelAdminLogEventActionChangeStickerSet) channelAdminLogEventAction).new_stickerset;
                                                if (inputStickerSet3 == null || (inputStickerSet3 instanceof TLRPC.TL_inputStickerSetEmpty)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedStickersSet), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogChangedStickersSet), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLocation) {
                                                TLRPC.ChannelLocation channelLocation = ((TLRPC.TL_channelAdminLogEventActionChangeLocation) channelAdminLogEventAction).new_value;
                                                if (channelLocation instanceof TLRPC.TL_channelLocationEmpty) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogRemovedLocation), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogChangedLocation", C2807R.string.EventLogChangedLocation, ((TLRPC.TL_channelLocation) channelLocation).address), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSlowMode) {
                                                int i22 = ((TLRPC.TL_channelAdminLogEventActionToggleSlowMode) channelAdminLogEventAction).new_value;
                                                if (i22 == 0) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogToggledSlowmodeOff), "un1", user2);
                                                } else {
                                                    if (i22 < 60) {
                                                        pluralString2 = LocaleController.formatPluralString("Seconds", i22, new Object[0]);
                                                    } else if (i22 < 3600) {
                                                        pluralString2 = LocaleController.formatPluralString("Minutes", i22 / 60, new Object[0]);
                                                    } else {
                                                        pluralString2 = LocaleController.formatPluralString("Hours", (i22 / 60) / 60, new Object[0]);
                                                    }
                                                    this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.EventLogToggledSlowmodeOn, pluralString2), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) {
                                                this.messageText = replaceWithLink(LocaleController.getString(((TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) channelAdminLogEventAction).new_value ? C2807R.string.EventLogToggledAutotranslationOn : C2807R.string.EventLogToggledAutotranslationOff), "un1", user2);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStartGroupCall) {
                                                if (ChatObject.isChannel(chat2) && (!chat2.megagroup || chat2.gigagroup)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogStartedLiveStream), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogStartedVoiceChat), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDiscardGroupCall) {
                                                if (ChatObject.isChannel(chat2) && (!chat2.megagroup || chat2.gigagroup)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEndedLiveStream), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEndedVoiceChat), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantMute) {
                                                long peerId4 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantMute) channelAdminLogEventAction).participant.peer);
                                                int i23 = this.currentAccount;
                                                if (peerId4 > 0) {
                                                    chat5 = MessagesController.getInstance(i23).getUser(Long.valueOf(peerId4));
                                                } else {
                                                    chat5 = MessagesController.getInstance(i23).getChat(Long.valueOf(-peerId4));
                                                }
                                                CharSequence charSequenceReplaceWithLink6 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogVoiceChatMuted), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink6;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink6, "un2", chat5);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantUnmute) {
                                                long peerId5 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantUnmute) channelAdminLogEventAction).participant.peer);
                                                int i24 = this.currentAccount;
                                                if (peerId5 > 0) {
                                                    chat4 = MessagesController.getInstance(i24).getUser(Long.valueOf(peerId5));
                                                } else {
                                                    chat4 = MessagesController.getInstance(i24).getChat(Long.valueOf(-peerId5));
                                                }
                                                CharSequence charSequenceReplaceWithLink7 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogVoiceChatUnmuted), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink7;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink7, "un2", chat4);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) {
                                                if (((TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) channelAdminLogEventAction).join_muted) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogVoiceChatNotAllowedToSpeak), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogVoiceChatAllowedToSpeak), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) {
                                                TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite tL_channelAdminLogEventActionParticipantJoinByInvite = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) channelAdminLogEventAction;
                                                if (tL_channelAdminLogEventActionParticipantJoinByInvite.via_chatlist) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat2) ? C2807R.string.ActionInviteChannelUserFolder : C2807R.string.ActionInviteUserFolder), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat2) ? C2807R.string.ActionInviteChannelUser : C2807R.string.ActionInviteUser), "un1", user2);
                                                }
                                                TLRPC.TL_chatInviteExported tL_chatInviteExported = tL_channelAdminLogEventActionParticipantJoinByInvite.invite;
                                                if (tL_chatInviteExported != null && !TextUtils.isEmpty(tL_chatInviteExported.link)) {
                                                    this.messageText = TextUtils.concat(this.messageText, " ", tL_channelAdminLogEventActionParticipantJoinByInvite.invite.link);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleNoForwards) {
                                                TLRPC.TL_channelAdminLogEventActionToggleNoForwards tL_channelAdminLogEventActionToggleNoForwards = (TLRPC.TL_channelAdminLogEventActionToggleNoForwards) channelAdminLogEventAction;
                                                boolean z8 = ChatObject.isChannel(chat2) && !chat2.megagroup;
                                                if (tL_channelAdminLogEventActionToggleNoForwards.new_value) {
                                                    if (z8) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionForwardsRestrictedChannel), "un1", user2);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionForwardsRestrictedGroup), "un1", user2);
                                                    }
                                                } else if (z8) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionForwardsEnabledChannel), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionForwardsEnabledGroup), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) {
                                                CharSequence charSequenceReplaceWithLink8 = replaceWithLink(LocaleController.formatString(C2807R.string.ActionDeletedInviteLinkClickable, new Object[0]), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink8;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink8, "un2", ((TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) channelAdminLogEventAction).invite);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) {
                                                TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke tL_channelAdminLogEventActionExportedInviteRevoke = (TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) channelAdminLogEventAction;
                                                CharSequence charSequenceReplaceWithLink9 = replaceWithLink(LocaleController.formatString(C2807R.string.ActionRevokedInviteLinkClickable, tL_channelAdminLogEventActionExportedInviteRevoke.invite.link), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink9;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink9, "un2", tL_channelAdminLogEventActionExportedInviteRevoke.invite);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) {
                                                TLRPC.TL_channelAdminLogEventActionExportedInviteEdit tL_channelAdminLogEventActionExportedInviteEdit = (TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) channelAdminLogEventAction;
                                                String str6 = tL_channelAdminLogEventActionExportedInviteEdit.prev_invite.link;
                                                if (str6 != null && str6.equals(tL_channelAdminLogEventActionExportedInviteEdit.new_invite.link)) {
                                                    this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionEditedInviteLinkToSameClickable, new Object[0]), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionEditedInviteLinkClickable, new Object[0]), "un1", user2);
                                                }
                                                CharSequence charSequenceReplaceWithLink10 = replaceWithLink(this.messageText, "un2", tL_channelAdminLogEventActionExportedInviteEdit.prev_invite);
                                                this.messageText = charSequenceReplaceWithLink10;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink10, "un3", tL_channelAdminLogEventActionExportedInviteEdit.new_invite);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantVolume) {
                                                TLRPC.TL_channelAdminLogEventActionParticipantVolume tL_channelAdminLogEventActionParticipantVolume = (TLRPC.TL_channelAdminLogEventActionParticipantVolume) channelAdminLogEventAction;
                                                long peerId6 = getPeerId(tL_channelAdminLogEventActionParticipantVolume.participant.peer);
                                                int i25 = this.currentAccount;
                                                if (peerId6 > 0) {
                                                    chat3 = MessagesController.getInstance(i25).getUser(Long.valueOf(peerId6));
                                                } else {
                                                    chat3 = MessagesController.getInstance(i25).getChat(Long.valueOf(-peerId6));
                                                }
                                                double participantVolume = ((double) ChatObject.getParticipantVolume(tL_channelAdminLogEventActionParticipantVolume.participant)) / 100.0d;
                                                CharSequence charSequenceReplaceWithLink11 = replaceWithLink(LocaleController.formatString("ActionVolumeChanged", C2807R.string.ActionVolumeChanged, Integer.valueOf((int) (participantVolume > 0.0d ? Math.max(participantVolume, 1.0d) : 0.0d))), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink11;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink11, "un2", chat3);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) {
                                                TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL tL_channelAdminLogEventActionChangeHistoryTTL = (TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) channelAdminLogEventAction;
                                                if (!chat2.megagroup) {
                                                    int i26 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                    if (i26 != 0) {
                                                        this.messageText = LocaleController.formatString("ActionTTLChannelChanged", C2807R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i26));
                                                    } else {
                                                        this.messageText = LocaleController.getString(C2807R.string.ActionTTLChannelDisabled);
                                                    }
                                                } else {
                                                    int i27 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                    if (i27 == 0) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionTTLDisabled), "un1", user2);
                                                    } else {
                                                        if (i27 > 86400) {
                                                            pluralString = LocaleController.formatPluralString("Days", i27 / 86400, new Object[0]);
                                                        } else if (i27 >= 3600) {
                                                            pluralString = LocaleController.formatPluralString("Hours", i27 / 3600, new Object[0]);
                                                        } else if (i27 >= 60) {
                                                            pluralString = LocaleController.formatPluralString("Minutes", i27 / 60, new Object[0]);
                                                        } else {
                                                            pluralString = LocaleController.formatPluralString("Seconds", i27, new Object[0]);
                                                        }
                                                        this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionTTLChanged, pluralString), "un1", user2);
                                                    }
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) {
                                                TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest tL_channelAdminLogEventActionParticipantJoinByRequest = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) channelAdminLogEventAction;
                                                TLRPC.ExportedChatInvite exportedChatInvite = tL_channelAdminLogEventActionParticipantJoinByRequest.invite;
                                                if (((exportedChatInvite instanceof TLRPC.TL_chatInviteExported) && "https://t.me/+PublicChat".equals(((TLRPC.TL_chatInviteExported) exportedChatInvite).link)) || (tL_channelAdminLogEventActionParticipantJoinByRequest.invite instanceof TLRPC.TL_chatInvitePublicJoinRequests)) {
                                                    CharSequence charSequenceReplaceWithLink12 = replaceWithLink(LocaleController.getString(C2807R.string.JoinedViaRequestApproved), "un1", user2);
                                                    this.messageText = charSequenceReplaceWithLink12;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink12, "un2", MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by)));
                                                } else {
                                                    CharSequence charSequenceReplaceWithLink13 = replaceWithLink(LocaleController.getString(C2807R.string.JoinedViaInviteLinkApproved), "un1", user2);
                                                    this.messageText = charSequenceReplaceWithLink13;
                                                    CharSequence charSequenceReplaceWithLink14 = replaceWithLink(charSequenceReplaceWithLink13, "un2", tL_channelAdminLogEventActionParticipantJoinByRequest.invite);
                                                    this.messageText = charSequenceReplaceWithLink14;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink14, "un3", MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by)));
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionSendMessage) {
                                                tL_message = ((TLRPC.TL_channelAdminLogEventActionSendMessage) channelAdminLogEventAction).message;
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogSendMessages), "un1", user2);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantEditRank) {
                                                TLRPC.TL_channelAdminLogEventActionParticipantEditRank tL_channelAdminLogEventActionParticipantEditRank = (TLRPC.TL_channelAdminLogEventActionParticipantEditRank) channelAdminLogEventAction;
                                                if (tL_channelAdminLogEventActionParticipantEditRank.user_id == tL_channelAdminLogEvent2.user_id) {
                                                    if (!TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                        String string6 = LocaleController.formatString(C2807R.string.EventLogRankSelfEdit, tL_channelAdminLogEventActionParticipantEditRank.prev_rank, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                        this.messageText = string6;
                                                        this.messageText = replaceWithLink(string6, "un1", user2);
                                                    } else if (TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                        String string7 = LocaleController.formatString(C2807R.string.EventLogRankSelfAdd, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                        this.messageText = string7;
                                                        this.messageText = replaceWithLink(string7, "un1", user2);
                                                    } else {
                                                        String string8 = LocaleController.formatString(C2807R.string.EventLogRankSelfRemove, tL_channelAdminLogEventActionParticipantEditRank.prev_rank);
                                                        this.messageText = string8;
                                                        this.messageText = replaceWithLink(string8, "un1", user2);
                                                    }
                                                } else {
                                                    TLRPC.User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantEditRank.user_id));
                                                    if (!TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                        String string9 = LocaleController.formatString(C2807R.string.EventLogRankEdit, tL_channelAdminLogEventActionParticipantEditRank.prev_rank, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                        this.messageText = string9;
                                                        CharSequence charSequenceReplaceWithLink15 = replaceWithLink(string9, "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink15;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink15, "un2", user3);
                                                    } else if (TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                        String string10 = LocaleController.formatString(C2807R.string.EventLogRankAdd, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                        this.messageText = string10;
                                                        CharSequence charSequenceReplaceWithLink16 = replaceWithLink(string10, "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink16;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink16, "un2", user3);
                                                    } else {
                                                        String string11 = LocaleController.formatString(C2807R.string.EventLogRankRemove, tL_channelAdminLogEventActionParticipantEditRank.prev_rank);
                                                        this.messageText = string11;
                                                        CharSequence charSequenceReplaceWithLink17 = replaceWithLink(string11, "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink17;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink17, "un2", user3);
                                                    }
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) {
                                                TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions tL_channelAdminLogEventActionChangeAvailableReactions = (TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) channelAdminLogEventAction;
                                                boolean z9 = (tL_channelAdminLogEventActionChangeAvailableReactions.prev_value instanceof TLRPC.TL_chatReactionsSome) && (tL_channelAdminLogEventActionChangeAvailableReactions.new_value instanceof TLRPC.TL_chatReactionsSome);
                                                CharSequence stringFrom = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.new_value);
                                                if (z9) {
                                                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString(C2807R.string.ActionReactionsChangedList, "**new**"), "un1", user2));
                                                    int iIndexOf = spannableStringBuilder.toString().indexOf("**new**");
                                                    if (iIndexOf > 0) {
                                                        spannableStringBuilder.replace(iIndexOf, iIndexOf + 7, stringFrom);
                                                    }
                                                    this.messageText = spannableStringBuilder;
                                                } else {
                                                    CharSequence stringFrom2 = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.prev_value);
                                                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString(C2807R.string.ActionReactionsChanged, "**old**", "**new**"), "un1", user2));
                                                    int iIndexOf2 = spannableStringBuilder2.toString().indexOf("**old**");
                                                    if (iIndexOf2 > 0) {
                                                        spannableStringBuilder2.replace(iIndexOf2, iIndexOf2 + 7, stringFrom2);
                                                    }
                                                    int iIndexOf3 = spannableStringBuilder2.toString().indexOf("**new**");
                                                    if (iIndexOf3 > 0) {
                                                        spannableStringBuilder2.replace(iIndexOf3, iIndexOf3 + 7, stringFrom);
                                                    }
                                                    this.messageText = spannableStringBuilder2;
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeUsernames) {
                                                TLRPC.TL_channelAdminLogEventActionChangeUsernames tL_channelAdminLogEventActionChangeUsernames = (TLRPC.TL_channelAdminLogEventActionChangeUsernames) channelAdminLogEventAction;
                                                ArrayList<String> arrayList6 = tL_channelAdminLogEventActionChangeUsernames.prev_value;
                                                ArrayList<String> arrayList7 = tL_channelAdminLogEventActionChangeUsernames.new_value;
                                                this.messageText = null;
                                                if (arrayList6 != null && arrayList7 != null) {
                                                    if (arrayList7.size() + 1 == arrayList6.size()) {
                                                        int i28 = 0;
                                                        String str7 = null;
                                                        while (true) {
                                                            if (i28 >= arrayList6.size()) {
                                                                break;
                                                            }
                                                            String str8 = arrayList6.get(i28);
                                                            if (!arrayList7.contains(str8)) {
                                                                if (str7 != null) {
                                                                    str7 = null;
                                                                    break;
                                                                }
                                                                str7 = str8;
                                                            }
                                                            i28++;
                                                        }
                                                        if (str7 != null) {
                                                            this.messageText = replaceWithLink(LocaleController.formatString("EventLogDeactivatedUsername", C2807R.string.EventLogDeactivatedUsername, "@".concat(str7)), "un1", user2);
                                                        }
                                                    } else if (arrayList6.size() + 1 == arrayList7.size()) {
                                                        int i29 = 0;
                                                        String str9 = null;
                                                        while (true) {
                                                            if (i29 >= arrayList7.size()) {
                                                                break;
                                                            }
                                                            String str10 = arrayList7.get(i29);
                                                            if (!arrayList6.contains(str10)) {
                                                                if (str9 != null) {
                                                                    str9 = null;
                                                                    break;
                                                                }
                                                                str9 = str10;
                                                            }
                                                            i29++;
                                                        }
                                                        if (str9 != null) {
                                                            this.messageText = replaceWithLink(LocaleController.formatString("EventLogActivatedUsername", C2807R.string.EventLogActivatedUsername, "@".concat(str9)), "un1", user2);
                                                        }
                                                    }
                                                }
                                                if (this.messageText == null) {
                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogChangeUsernames", C2807R.string.EventLogChangeUsernames, getUsernamesString(arrayList6), getUsernamesString(arrayList7)), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleForum) {
                                                if (((TLRPC.TL_channelAdminLogEventActionToggleForum) channelAdminLogEventAction).new_value) {
                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogSwitchToForum", C2807R.string.EventLogSwitchToForum, new Object[0]), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogSwitchToGroup", C2807R.string.EventLogSwitchToGroup, new Object[0]), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionCreateTopic) {
                                                CharSequence charSequenceReplaceWithLink18 = replaceWithLink(LocaleController.formatString("EventLogCreateTopic", C2807R.string.EventLogCreateTopic, new Object[0]), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink18;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink18, "un2", ((TLRPC.TL_channelAdminLogEventActionCreateTopic) channelAdminLogEventAction).topic);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditTopic) {
                                                TLRPC.TL_channelAdminLogEventActionEditTopic tL_channelAdminLogEventActionEditTopic = (TLRPC.TL_channelAdminLogEventActionEditTopic) channelAdminLogEventAction;
                                                TLRPC.ForumTopic forumTopic = tL_channelAdminLogEventActionEditTopic.prev_topic;
                                                if (forumTopic instanceof TLRPC.TL_forumTopic) {
                                                    TLRPC.ForumTopic forumTopic2 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                    if ((forumTopic2 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic).hidden != ((TLRPC.TL_forumTopic) forumTopic2).hidden) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(((TLRPC.TL_forumTopic) forumTopic2).hidden ? C2807R.string.TopicHidden2 : C2807R.string.TopicShown2), "%s", user2);
                                                    } else if (forumTopic instanceof TLRPC.TL_forumTopic) {
                                                        TLRPC.ForumTopic forumTopic3 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                        if ((forumTopic3 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic).closed != ((TLRPC.TL_forumTopic) forumTopic3).closed) {
                                                            if (((TLRPC.TL_forumTopic) forumTopic3).closed) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogClosedTopic), "%s", user2);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.EventLogReopenedTopic), "%s", user2);
                                                            }
                                                            this.messageText = replaceWithLink(this.messageText, "un2", tL_channelAdminLogEventActionEditTopic.new_topic);
                                                        } else {
                                                            CharSequence charSequenceReplaceWithLink19 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogEditTopic), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink19;
                                                            CharSequence charSequenceReplaceWithLink20 = replaceWithLink(charSequenceReplaceWithLink19, "un2", tL_channelAdminLogEventActionEditTopic.prev_topic);
                                                            this.messageText = charSequenceReplaceWithLink20;
                                                            this.messageText = replaceWithLink(charSequenceReplaceWithLink20, "un3", tL_channelAdminLogEventActionEditTopic.new_topic);
                                                        }
                                                    }
                                                }
                                                if (this.messageOwner == null) {
                                                }
                                                this.messageOwner.message = this.messageText.toString();
                                                this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                                TLRPC.Message message422 = this.messageOwner;
                                                message422.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                                message422.date = tL_channelAdminLogEvent2.date;
                                                int i2022 = iArr[0];
                                                iArr[0] = i2022 + 1;
                                                message422.id = i2022;
                                                this.eventId = tL_channelAdminLogEvent2.id;
                                                message422.out = false;
                                                message422.peer_id = new TLRPC.TL_peerChannel();
                                                TLRPC.Message message522 = this.messageOwner;
                                                message522.peer_id.channel_id = chat8.id;
                                                message522.unread = false;
                                                MediaController mediaController22 = MediaController.getInstance();
                                                this.isOutOwnerCached = null;
                                                if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                                }
                                                if (message2 != null) {
                                                }
                                                iArr2 = null;
                                                if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteTopic) {
                                                CharSequence charSequenceReplaceWithLink21 = replaceWithLink(LocaleController.getString(C2807R.string.EventLogDeleteTopic), "un1", user2);
                                                this.messageText = charSequenceReplaceWithLink21;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink21, "un2", ((TLRPC.TL_channelAdminLogEventActionDeleteTopic) channelAdminLogEventAction).topic);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionPinTopic) {
                                                TLRPC.TL_channelAdminLogEventActionPinTopic tL_channelAdminLogEventActionPinTopic = (TLRPC.TL_channelAdminLogEventActionPinTopic) channelAdminLogEventAction;
                                                TLRPC.ForumTopic forumTopic4 = tL_channelAdminLogEventActionPinTopic.new_topic;
                                                if ((forumTopic4 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic4).pinned) {
                                                    CharSequence charSequenceReplaceWithLink22 = replaceWithLink(LocaleController.formatString("EventLogPinTopic", C2807R.string.EventLogPinTopic, new Object[0]), "un1", user2);
                                                    this.messageText = charSequenceReplaceWithLink22;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink22, "un2", tL_channelAdminLogEventActionPinTopic.new_topic);
                                                } else {
                                                    CharSequence charSequenceReplaceWithLink23 = replaceWithLink(LocaleController.formatString("EventLogUnpinTopic", C2807R.string.EventLogUnpinTopic, new Object[0]), "un1", user2);
                                                    this.messageText = charSequenceReplaceWithLink23;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink23, "un2", tL_channelAdminLogEventActionPinTopic.new_topic);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) {
                                                if (((TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) channelAdminLogEventAction).new_value) {
                                                    string2 = LocaleController.getString(C2807R.string.EventLogEnabledAntiSpam);
                                                } else {
                                                    string2 = LocaleController.getString(C2807R.string.EventLogDisabledAntiSpam);
                                                }
                                                this.messageText = replaceWithLink(string2, "un1", user2);
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeColor) {
                                                boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat2);
                                                TLRPC.TL_channelAdminLogEventActionChangeColor tL_channelAdminLogEventActionChangeColor = (TLRPC.TL_channelAdminLogEventActionChangeColor) tL_channelAdminLogEvent2.action;
                                                this.messageText = replaceWithLink(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2807R.string.EventLogChangedColor : C2807R.string.EventLogChangedColorGroup, AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.prev_value).toLowerCase(), AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.new_value).toLowerCase()), "un1", user2);
                                            } else {
                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePeerColor) {
                                                    boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(chat2);
                                                    TLRPC.TL_channelAdminLogEventActionChangePeerColor tL_channelAdminLogEventActionChangePeerColor = (TLRPC.TL_channelAdminLogEventActionChangePeerColor) tL_channelAdminLogEvent2.action;
                                                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup2 ? C2807R.string.EventLogChangedPeerColorIcon : C2807R.string.EventLogChangedPeerColorIconGroup));
                                                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                                                    if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 1) != 0) {
                                                        spannableStringBuilder4.append((CharSequence) "c");
                                                        str = str2;
                                                        spannableStringBuilder4.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.prev_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                                                    } else {
                                                        str = str2;
                                                    }
                                                    if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 2) != 0) {
                                                        if (spannableStringBuilder4.length() > 0) {
                                                            spannableStringBuilder4.append((CharSequence) ", ");
                                                        }
                                                        spannableStringBuilder4.append((CharSequence) "e");
                                                        spannableStringBuilder4.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                                                    }
                                                    if (spannableStringBuilder4.length() == 0) {
                                                        spannableStringBuilder4.append((CharSequence) LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                    }
                                                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                                                    if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 1) != 0) {
                                                        spannableStringBuilder5.append((CharSequence) "c");
                                                        spannableStringBuilder5.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.new_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder5.length() - 1, spannableStringBuilder5.length(), 33);
                                                    }
                                                    if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 2) != 0) {
                                                        if (spannableStringBuilder5.length() > 0) {
                                                            spannableStringBuilder5.append((CharSequence) ", ");
                                                        }
                                                        spannableStringBuilder5.append((CharSequence) "e");
                                                        spannableStringBuilder5.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder5.length() - 1, spannableStringBuilder5.length(), 33);
                                                    }
                                                    if (spannableStringBuilder5.length() == 0) {
                                                        spannableStringBuilder5.append((CharSequence) LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                    }
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder3, spannableStringBuilder4), spannableStringBuilder5), "un1", user2);
                                                } else {
                                                    str = str2;
                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) {
                                                        boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                        TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor tL_channelAdminLogEventActionChangeProfilePeerColor = (TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) tL_channelAdminLogEvent2.action;
                                                        SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup3 ? C2807R.string.EventLogChangedProfileColorIcon : C2807R.string.EventLogChangedProfileColorIconGroup));
                                                        SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                                        if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 1) != 0) {
                                                            spannableStringBuilder7.append((CharSequence) "c");
                                                            spannableStringBuilder7.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder7.length() - 1, spannableStringBuilder7.length(), 33);
                                                        }
                                                        if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 2) != 0) {
                                                            if (spannableStringBuilder7.length() > 0) {
                                                                spannableStringBuilder7.append((CharSequence) ", ");
                                                            }
                                                            spannableStringBuilder7.append((CharSequence) "e");
                                                            spannableStringBuilder7.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder7.length() - 1, spannableStringBuilder7.length(), 33);
                                                        }
                                                        if (spannableStringBuilder7.length() == 0) {
                                                            spannableStringBuilder7.append((CharSequence) LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                        }
                                                        SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder();
                                                        if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 1) != 0) {
                                                            spannableStringBuilder8.append((CharSequence) "c");
                                                            spannableStringBuilder8.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.color).setSize(AndroidUtilities.dp(18.0f)), spannableStringBuilder8.length() - 1, spannableStringBuilder8.length(), 33);
                                                        }
                                                        if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 2) != 0) {
                                                            if (spannableStringBuilder8.length() > 0) {
                                                                spannableStringBuilder8.append((CharSequence) ", ");
                                                            }
                                                            spannableStringBuilder8.append((CharSequence) "e");
                                                            spannableStringBuilder8.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder8.length() - 1, spannableStringBuilder8.length(), 33);
                                                        }
                                                        if (spannableStringBuilder8.length() == 0) {
                                                            spannableStringBuilder8.append((CharSequence) LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                        }
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder6, spannableStringBuilder7), spannableStringBuilder8), "un1", user2);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) {
                                                        boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                        TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus tL_channelAdminLogEventActionChangeEmojiStatus = (TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) tL_channelAdminLogEvent2.action;
                                                        if (tL_channelAdminLogEventActionChangeEmojiStatus.prev_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                            spannableString3 = new SpannableString(LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                            z2 = true;
                                                        } else {
                                                            spannableString3 = new SpannableString("e");
                                                            spannableString3.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.prev_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                            z2 = false;
                                                        }
                                                        int emojiStatusUntil = DialogObject.getEmojiStatusUntil(tL_channelAdminLogEventActionChangeEmojiStatus.new_value);
                                                        if (tL_channelAdminLogEventActionChangeEmojiStatus.new_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                            spannableString4 = new SpannableString(LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                        } else {
                                                            SpannableString spannableString5 = new SpannableString("e");
                                                            spannableString5.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.new_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                            spannableString4 = spannableString5;
                                                        }
                                                        if (z2) {
                                                            if (emojiStatusUntil != 0) {
                                                                i2 = zIsChannelAndNotMegaGroup4 ? C2807R.string.EventLogChangedEmojiStatusFor : C2807R.string.EventLogChangedEmojiStatusForGroup;
                                                            } else {
                                                                i2 = zIsChannelAndNotMegaGroup4 ? C2807R.string.EventLogChangedEmojiStatus : C2807R.string.EventLogChangedEmojiStatusGroup;
                                                            }
                                                        } else if (emojiStatusUntil != 0) {
                                                            i2 = zIsChannelAndNotMegaGroup4 ? C2807R.string.EventLogChangedEmojiStatusFromFor : C2807R.string.EventLogChangedEmojiStatusFromForGroup;
                                                        } else {
                                                            i2 = zIsChannelAndNotMegaGroup4 ? C2807R.string.EventLogChangedEmojiStatusFrom : C2807R.string.EventLogChangedEmojiStatusFromGroup;
                                                        }
                                                        SpannableStringBuilder spannableStringBuilderReplaceCharSequence = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", new SpannableStringBuilder(LocaleController.getString(i2)), spannableString3), spannableString4);
                                                        this.messageText = replaceWithLink(emojiStatusUntil != 0 ? AndroidUtilities.replaceCharSequence("%3$s", spannableStringBuilderReplaceCharSequence, LocaleController.formatTTLString((int) ((emojiStatusUntil - tL_channelAdminLogEvent2.date) * 1.05f))) : spannableStringBuilderReplaceCharSequence, "un1", user2);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                                                        TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                                                        boolean zIsChannelAndNotMegaGroup5 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                        TLRPC.WallPaper wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                                                        if ((wallPaper instanceof TLRPC.TL_wallPaperNoFile) && wallPaper.id == 0 && wallPaper.settings == null) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup5 ? C2807R.string.EventLogRemovedWallpaper : C2807R.string.EventLogRemovedWallpaperGroup), "un1", user2);
                                                        } else {
                                                            ArrayList<TLRPC.PhotoSize> arrayList8 = new ArrayList<>();
                                                            this.photoThumbs = arrayList8;
                                                            TLRPC.Document document = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                            if (document != null) {
                                                                arrayList8.addAll(document.thumbs);
                                                                this.photoThumbsObject = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                            }
                                                            this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup5 ? C2807R.string.EventLogChangedWallpaper : C2807R.string.EventLogChangedWallpaperGroup), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) {
                                                        boolean zIsChannelAndNotMegaGroup6 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                        TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji tL_channelAdminLogEventActionChangeBackgroundEmoji = (TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) tL_channelAdminLogEvent2.action;
                                                        this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup6 ? C2807R.string.EventLogChangedEmoji : C2807R.string.EventLogChangedEmojiGroup), "un1", user2);
                                                        if (tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value == 0) {
                                                            spannableString = new SpannableString(LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                        } else {
                                                            spannableString = new SpannableString("e");
                                                            spannableString.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                        }
                                                        this.messageText = AndroidUtilities.replaceCharSequence("%1$s", this.messageText, spannableString);
                                                        if (tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value == 0) {
                                                            spannableString2 = new SpannableString(LocaleController.getString(C2807R.string.EventLogEmojiNone));
                                                        } else {
                                                            spannableString2 = new SpannableString("e");
                                                            spannableString2.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                        }
                                                        this.messageText = AndroidUtilities.replaceCharSequence("%2$s", this.messageText, spannableString2);
                                                    } else {
                                                        this.messageText = "unsupported " + tL_channelAdminLogEvent2.action;
                                                    }
                                                }
                                                chat8 = chat;
                                            }
                                            chat8 = chat2;
                                            str = str2;
                                        }
                                    }
                                }
                                tL_message2 = tL_message;
                                chat8 = chat2;
                                str = str2;
                                arrayList3 = null;
                                if (this.messageOwner == null) {
                                }
                                this.messageOwner.message = this.messageText.toString();
                                this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                TLRPC.Message message4222 = this.messageOwner;
                                message4222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                                message4222.date = tL_channelAdminLogEvent2.date;
                                int i20222 = iArr[0];
                                iArr[0] = i20222 + 1;
                                message4222.id = i20222;
                                this.eventId = tL_channelAdminLogEvent2.id;
                                message4222.out = false;
                                message4222.peer_id = new TLRPC.TL_peerChannel();
                                TLRPC.Message message5222 = this.messageOwner;
                                message5222.peer_id.channel_id = chat8.id;
                                message5222.unread = false;
                                MediaController mediaController222 = MediaController.getInstance();
                                this.isOutOwnerCached = null;
                                if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                                }
                                if (message2 != null) {
                                }
                                iArr2 = null;
                                if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                }
                            }
                        }
                        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                        chat8 = chat2;
                    }
                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                    tL_message2 = message;
                    arrayList3 = null;
                    chat8 = chat;
                    if (this.messageOwner == null) {
                    }
                    this.messageOwner.message = this.messageText.toString();
                    this.messageOwner.from_id = new TLRPC.TL_peerUser();
                    TLRPC.Message message42222 = this.messageOwner;
                    message42222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
                    message42222.date = tL_channelAdminLogEvent2.date;
                    int i202222 = iArr[0];
                    iArr[0] = i202222 + 1;
                    message42222.id = i202222;
                    this.eventId = tL_channelAdminLogEvent2.id;
                    message42222.out = false;
                    message42222.peer_id = new TLRPC.TL_peerChannel();
                    TLRPC.Message message52222 = this.messageOwner;
                    message52222.peer_id.channel_id = chat8.id;
                    message52222.unread = false;
                    MediaController mediaController2222 = MediaController.getInstance();
                    this.isOutOwnerCached = null;
                    if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
                    }
                    if (message2 != null) {
                    }
                    iArr2 = null;
                    if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                    }
                }
                tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                chat8 = chat;
            }
            tL_message2 = null;
            arrayList3 = null;
            if (this.messageOwner == null) {
            }
            this.messageOwner.message = this.messageText.toString();
            this.messageOwner.from_id = new TLRPC.TL_peerUser();
            TLRPC.Message message422222 = this.messageOwner;
            message422222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
            message422222.date = tL_channelAdminLogEvent2.date;
            int i2022222 = iArr[0];
            iArr[0] = i2022222 + 1;
            message422222.id = i2022222;
            this.eventId = tL_channelAdminLogEvent2.id;
            message422222.out = false;
            message422222.peer_id = new TLRPC.TL_peerChannel();
            TLRPC.Message message522222 = this.messageOwner;
            message522222.peer_id.channel_id = chat8.id;
            message522222.unread = false;
            MediaController mediaController22222 = MediaController.getInstance();
            this.isOutOwnerCached = null;
            if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
            }
            if (message2 != null) {
            }
            iArr2 = null;
            if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
            }
        }
        tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
        str = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_message2 = null;
        arrayList3 = null;
        if (this.messageOwner == null) {
        }
        this.messageOwner.message = this.messageText.toString();
        this.messageOwner.from_id = new TLRPC.TL_peerUser();
        TLRPC.Message message4222222 = this.messageOwner;
        message4222222.from_id.user_id = tL_channelAdminLogEvent2.user_id;
        message4222222.date = tL_channelAdminLogEvent2.date;
        int i20222222 = iArr[0];
        iArr[0] = i20222222 + 1;
        message4222222.id = i20222222;
        this.eventId = tL_channelAdminLogEvent2.id;
        message4222222.out = false;
        message4222222.peer_id = new TLRPC.TL_peerChannel();
        TLRPC.Message message5222222 = this.messageOwner;
        message5222222.peer_id.channel_id = chat8.id;
        message5222222.unread = false;
        MediaController mediaController222222 = MediaController.getInstance();
        this.isOutOwnerCached = null;
        if (tL_message2 instanceof TLRPC.TL_messageEmpty) {
        }
        if (message2 != null) {
        }
        iArr2 = null;
        if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
        }
    }

    public void spoilLoginCode() {
        TLRPC.Message message;
        if (this.spoiledLoginCode || this.messageText == null || (message = this.messageOwner) == null || message.entities == null) {
            return;
        }
        TLRPC.Peer peer = message.from_id;
        if (peer instanceof TLRPC.TL_peerUser) {
            long j = peer.user_id;
            if (j == 777000 || j == UserObject.VERIFY) {
                if (loginCodePattern == null) {
                    loginCodePattern = Pattern.compile("[\\d\\-]{5,8}");
                }
                try {
                    Matcher matcher = loginCodePattern.matcher(this.messageText);
                    if (matcher.find()) {
                        TLRPC.TL_messageEntitySpoiler tL_messageEntitySpoiler = new TLRPC.TL_messageEntitySpoiler();
                        tL_messageEntitySpoiler.offset = matcher.start();
                        tL_messageEntitySpoiler.length = matcher.end() - tL_messageEntitySpoiler.offset;
                        this.messageOwner.entities.add(tL_messageEntitySpoiler);
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
                this.spoiledLoginCode = true;
            }
        }
    }

    public boolean didSpoilLoginCode() {
        return this.spoiledLoginCode;
    }

    private CharSequence getStringFrom(TLRPC.ChatReactions chatReactions) {
        if (chatReactions instanceof TLRPC.TL_chatReactionsAll) {
            return LocaleController.getString(C2807R.string.AllReactions);
        }
        if (chatReactions instanceof TLRPC.TL_chatReactionsSome) {
            TLRPC.TL_chatReactionsSome tL_chatReactionsSome = (TLRPC.TL_chatReactionsSome) chatReactions;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < tL_chatReactionsSome.reactions.size(); i++) {
                if (i != 0) {
                    spannableStringBuilder.append((CharSequence) " ");
                }
                spannableStringBuilder.append(Emoji.replaceEmoji(ReactionsUtils.reactionToCharSequence(tL_chatReactionsSome.reactions.get(i)), null, false));
            }
            return spannableStringBuilder;
        }
        return LocaleController.getString(C2807R.string.NoReactions);
    }

    private String getUsernamesString(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return LocaleController.getString(C2807R.string.UsernameEmpty).toLowerCase();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append("@");
            sb.append(arrayList.get(i));
            if (i < arrayList.size() - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    private String getUserName(TLObject tLObject, ArrayList<TLRPC.MessageEntity> arrayList, int i) {
        String name;
        String publicUsername;
        long j;
        String str;
        long j2;
        if (tLObject == null) {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
            str = null;
            j2 = 0;
        } else {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                if (user.deleted) {
                    name = LocaleController.getString(C2807R.string.HiddenName);
                } else {
                    name = ContactsController.formatName(user.first_name, user.last_name);
                }
                publicUsername = UserObject.getPublicUsername(user);
                j = user.id;
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                name = chat.title;
                publicUsername = ChatObject.getPublicUsername(chat);
                j = -chat.id;
            }
            str = publicUsername;
            j2 = j;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName.user_id = j2;
            tL_messageEntityMentionName.offset = i;
            tL_messageEntityMentionName.length = name.length();
            arrayList.add(tL_messageEntityMentionName);
        }
        if (TextUtils.isEmpty(str)) {
            return name;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName2 = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName2.user_id = j2;
            tL_messageEntityMentionName2.offset = i + name.length() + 2;
            tL_messageEntityMentionName2.length = str.length() + 1;
            arrayList.add(tL_messageEntityMentionName2);
        }
        return String.format("%1$s (@%2$s)", name, str);
    }

    public boolean updateTranslation() {
        return updateTranslation(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean updateTranslation(boolean z) {
        TLRPC.Message message = this.messageOwner;
        if (message != null && LocaleUtils.parseCustomEmojis(message.message, message.entities) && !z) {
            z = true;
        }
        MessageObject messageObject = this.replyMessageObject;
        boolean z2 = (messageObject == null || messageObject == this || !messageObject.updateTranslation(z)) ? false : true;
        TranslateController translateController = MessagesController.getInstance(this.currentAccount).getTranslateController();
        TLRPC.Message message2 = this.messageOwner;
        TLRPC.TL_textWithEntities tL_textWithEntities = message2 != null ? message2.voiceTranscriptionOpen ? message2.translatedVoiceTranscription : message2.translatedText : null;
        TLRPC.TL_textWithEntities tL_textWithEntities2 = (message2 == null || !message2.summarizedOpen) ? null : message2.summaryText;
        TLRPC.TL_textWithEntities tL_textWithEntities3 = (message2 == null || !message2.summarizedOpen) ? null : message2.translatedSummaryText;
        if (tL_textWithEntities3 != null && message2 != null && message2.summarizedOpen && TranslateController.isSummarizable(this) && TranslateController.isTranslatable(this) && translateController.isTranslatingDialog(getDialogId()) && !translateController.isTranslateDialogHidden(getDialogId()) && TextUtils.equals(translateController.getDialogTranslateTo(getDialogId()), this.messageOwner.translatedSummaryLanguage)) {
            if (this.summarized && this.translated) {
                return z2;
            }
            this.summarized = true;
            this.translated = true;
            applyNewText(tL_textWithEntities3.text);
            generateCaption();
            return true;
        }
        TLRPC.Message message3 = this.messageOwner;
        if (message3 != null && message3.summarizedOpen && TranslateController.isSummarizable(this) && tL_textWithEntities2 != null) {
            if (this.summarized && !this.translated) {
                return z2;
            }
            this.summarized = true;
            this.translated = false;
            applyNewText(tL_textWithEntities2.text);
            generateCaption();
            return true;
        }
        if (this.messageOwner != null && TranslateController.isTranslatable(this) && translateController.isTranslatingDialog(getDialogId()) && !translateController.isTranslateDialogHidden(getDialogId())) {
            if (tL_textWithEntities == null) {
                TLRPC.Message message4 = this.messageOwner;
                if (message4.translatedPoll != null || message4.translatedRichMessage != null) {
                    if (TextUtils.equals(translateController.getDialogTranslateTo(getDialogId()), this.messageOwner.translatedToLanguage)) {
                        if (this.translated && !this.summarized) {
                            return z2;
                        }
                        this.translated = true;
                        this.summarized = false;
                        if (this.type == 36) {
                            generateLayout(null);
                        } else if (tL_textWithEntities != null) {
                            applyNewText(tL_textWithEntities.text);
                            generateCaption();
                        }
                        return true;
                    }
                }
            }
        }
        TLRPC.Message message5 = this.messageOwner;
        if (message5 == null || !(z || this.translated || this.summarized)) {
            return z2;
        }
        this.translated = false;
        this.summarized = false;
        if (this.type == 36) {
            generateLayout(null);
        } else {
            applyNewText(message5.message);
            generateCaption();
        }
        return true;
    }

    public void applyNewText() {
        this.translated = false;
        this.summarized = false;
        applyNewText(this.messageOwner.message);
    }

    public void applyNewText(CharSequence charSequence) {
        TextPaint textPaint;
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        TLRPC.User user = isFromUser() ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id)) : null;
        this.messageText = charSequence;
        ArrayList<TLRPC.MessageEntity> entities = getEntities();
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
            textPaint = Theme.chat_msgGameTextPaint;
        } else {
            textPaint = Theme.chat_msgTextPaint;
        }
        int[] iArr = allowsBigEmoji() ? new int[1] : null;
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
        this.messageText = charSequenceReplaceEmoji;
        Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, entities, textPaint.getFontMetricsInt());
        this.messageText = spannableReplaceAnimatedEmoji;
        if (iArr != null && iArr[0] > 1) {
            replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
        }
        checkEmojiOnly(iArr);
        generateLayout(user);
        setType();
    }

    private boolean allowsBigEmoji() {
        TLRPC.Peer peer;
        if (!SharedConfig.allowBigEmoji) {
            return false;
        }
        TLRPC.Message message = this.messageOwner;
        if (message != null && (peer = message.peer_id) != null && (peer.channel_id != 0 || peer.chat_id != 0)) {
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            TLRPC.Peer peer2 = this.messageOwner.peer_id;
            long j = peer2.channel_id;
            if (j == 0) {
                j = peer2.chat_id;
            }
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(j));
            if ((chat == null || !chat.gigagroup) && ChatObject.isActionBanned(chat, 8) && !ChatObject.hasAdminRights(chat)) {
                return false;
            }
        }
        return true;
    }

    public void generateGameMessageText(TLRPC.User user) {
        if (user == null && isFromUser()) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
        }
        MessageObject messageObject = this.replyMessageObject;
        TLRPC.TL_game tL_game = (messageObject == null || getMedia(messageObject) == null || getMedia(this.replyMessageObject).game == null) ? null : getMedia(this.replyMessageObject).game;
        if (tL_game == null) {
            if (user == null || user.id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.messageText = replaceWithLink(LocaleController.formatString("ActionUserScored", C2807R.string.ActionUserScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user);
                return;
            } else {
                this.messageText = LocaleController.formatString("ActionYouScored", C2807R.string.ActionYouScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
                return;
            }
        }
        if (user == null || user.id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            this.messageText = replaceWithLink(LocaleController.formatString("ActionUserScoredInGame", C2807R.string.ActionUserScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user);
        } else {
            this.messageText = LocaleController.formatString("ActionYouScoredInGame", C2807R.string.ActionYouScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
        }
        this.messageText = replaceWithLink(this.messageText, "un2", tL_game);
    }

    public boolean hasValidReplyMessageObject() {
        MessageObject messageObject;
        TLRPC.MessageReplyHeader messageReplyHeader;
        TLRPC.Message message = this.messageOwner;
        if ((message == null || (messageReplyHeader = message.reply_to) == null || !messageReplyHeader.forum_topic || messageReplyHeader.reply_to_msg_id != messageReplyHeader.reply_to_top_id) && (messageObject = this.replyMessageObject) != null) {
            TLRPC.Message message2 = messageObject.messageOwner;
            if (!(message2 instanceof TLRPC.TL_messageEmpty)) {
                TLRPC.MessageAction messageAction = message2.action;
                if (!(messageAction instanceof TLRPC.TL_messageActionHistoryClear) && !(messageAction instanceof TLRPC.TL_messageActionTopicCreate)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void generatePaymentSentMessageText(TLRPC.User user, boolean z) {
        String currencyString;
        if (user == null) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()));
        }
        String firstName = user != null ? UserObject.getFirstName(user) : _UrlKt.FRAGMENT_ENCODE_SET;
        try {
            if ("XTR".equals(this.messageOwner.action.currency)) {
                currencyString = "XTR " + this.messageOwner.action.total_amount;
            } else {
                LocaleController localeController = LocaleController.getInstance();
                TLRPC.MessageAction messageAction = this.messageOwner.action;
                currencyString = localeController.formatCurrencyString(messageAction.total_amount, messageAction.currency);
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
            currencyString = "<error>";
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null && (getMedia(messageObject) instanceof TLRPC.TL_messageMediaInvoice)) {
            TLRPC.MessageAction messageAction2 = this.messageOwner.action;
            if (messageAction2.subscription_until_date != 0) {
                MessageObject messageObject2 = this.replyMessageObject;
                if (z) {
                    this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidMeSubscription, firstName, currencyString, getMedia(messageObject2).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false));
                } else {
                    this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidSubscription, currencyString, firstName, getMedia(messageObject2).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false));
                }
            } else if (messageAction2.recurring_init && !z) {
                this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidRecurrent, currencyString, firstName, getMedia(this.replyMessageObject).title);
            } else {
                this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaid, currencyString, firstName, getMedia(this.replyMessageObject).title);
            }
        } else {
            TLRPC.MessageAction messageAction3 = this.messageOwner.action;
            int i = messageAction3.subscription_until_date;
            if (i != 0) {
                if (z) {
                    this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidMeNoItemSubscription, firstName, currencyString, LocaleController.formatDateTime(i, false));
                } else {
                    this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidSubscriptionNoItem, currencyString, firstName, LocaleController.formatDateTime(i, false));
                }
            } else if (messageAction3.recurring_init && !z) {
                this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidNoItemRecurrent, currencyString, firstName);
            } else {
                this.messageText = LocaleController.formatString(C2807R.string.PaymentSuccessfullyPaidNoItem, currencyString, firstName);
            }
        }
        this.messageText = StarsIntroActivity.replaceStars(this.messageText);
    }

    public void generatePinMessageText(TLRPC.User user, TLRPC.Chat chat) {
        boolean z;
        if (user == null && chat == null) {
            user = user;
            if (isFromUser()) {
                user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
            }
            if (user == null) {
                TLRPC.Peer peer = this.messageOwner.peer_id;
                if (peer instanceof TLRPC.TL_peerChannel) {
                    chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.channel_id));
                } else if (peer instanceof TLRPC.TL_peerChat) {
                    chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.chat_id));
                }
            }
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            TLRPC.Message message = messageObject.messageOwner;
            if (!(message instanceof TLRPC.TL_messageEmpty) && !(message.action instanceof TLRPC.TL_messageActionHistoryClear)) {
                if (messageObject.isMusic()) {
                    String string = LocaleController.getString(C2807R.string.ActionPinnedMusic);
                    TLObject tLObject = user;
                    if (user == null) {
                        tLObject = chat;
                    }
                    this.messageText = replaceWithLink(string, "un1", tLObject);
                    return;
                }
                if (this.replyMessageObject.isVideo()) {
                    String string2 = LocaleController.getString(C2807R.string.ActionPinnedVideo);
                    TLObject tLObject2 = user;
                    if (user == null) {
                        tLObject2 = chat;
                    }
                    this.messageText = replaceWithLink(string2, "un1", tLObject2);
                    return;
                }
                if (this.replyMessageObject.isGif()) {
                    String string3 = LocaleController.getString(C2807R.string.ActionPinnedGif);
                    TLObject tLObject3 = user;
                    if (user == null) {
                        tLObject3 = chat;
                    }
                    this.messageText = replaceWithLink(string3, "un1", tLObject3);
                    return;
                }
                if (this.replyMessageObject.isVoice()) {
                    String string4 = LocaleController.getString(C2807R.string.ActionPinnedVoice);
                    TLObject tLObject4 = user;
                    if (user == null) {
                        tLObject4 = chat;
                    }
                    this.messageText = replaceWithLink(string4, "un1", tLObject4);
                    return;
                }
                if (this.replyMessageObject.isRoundVideo()) {
                    String string5 = LocaleController.getString(C2807R.string.ActionPinnedRound);
                    TLObject tLObject5 = user;
                    if (user == null) {
                        tLObject5 = chat;
                    }
                    this.messageText = replaceWithLink(string5, "un1", tLObject5);
                    return;
                }
                if ((this.replyMessageObject.isSticker() || this.replyMessageObject.isAnimatedSticker()) && !this.replyMessageObject.isAnimatedEmoji()) {
                    String string6 = LocaleController.getString(C2807R.string.ActionPinnedSticker);
                    TLObject tLObject6 = user;
                    if (user == null) {
                        tLObject6 = chat;
                    }
                    this.messageText = replaceWithLink(string6, "un1", tLObject6);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaDocument) {
                    String string7 = LocaleController.getString(C2807R.string.ActionPinnedFile);
                    TLObject tLObject7 = user;
                    if (user == null) {
                        tLObject7 = chat;
                    }
                    this.messageText = replaceWithLink(string7, "un1", tLObject7);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeo) {
                    String string8 = LocaleController.getString(C2807R.string.ActionPinnedGeo);
                    TLObject tLObject8 = user;
                    if (user == null) {
                        tLObject8 = chat;
                    }
                    this.messageText = replaceWithLink(string8, "un1", tLObject8);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeoLive) {
                    String string9 = LocaleController.getString(C2807R.string.ActionPinnedGeoLive);
                    TLObject tLObject9 = user;
                    if (user == null) {
                        tLObject9 = chat;
                    }
                    this.messageText = replaceWithLink(string9, "un1", tLObject9);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaContact) {
                    String string10 = LocaleController.getString(C2807R.string.ActionPinnedContact);
                    TLObject tLObject10 = user;
                    if (user == null) {
                        tLObject10 = chat;
                    }
                    this.messageText = replaceWithLink(string10, "un1", tLObject10);
                    return;
                }
                boolean z2 = getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPoll;
                MessageObject messageObject2 = this.replyMessageObject;
                if (z2) {
                    if (((TLRPC.TL_messageMediaPoll) getMedia(messageObject2)).poll.quiz) {
                        String string11 = LocaleController.getString(C2807R.string.ActionPinnedQuiz);
                        TLObject tLObject11 = user;
                        if (user == null) {
                            tLObject11 = chat;
                        }
                        this.messageText = replaceWithLink(string11, "un1", tLObject11);
                        return;
                    }
                    String string12 = LocaleController.getString(C2807R.string.ActionPinnedPoll);
                    TLObject tLObject12 = user;
                    if (user == null) {
                        tLObject12 = chat;
                    }
                    this.messageText = replaceWithLink(string12, "un1", tLObject12);
                    return;
                }
                if (getMedia(messageObject2) instanceof TLRPC.TL_messageMediaPhoto) {
                    String string13 = LocaleController.getString(C2807R.string.ActionPinnedPhoto);
                    TLObject tLObject13 = user;
                    if (user == null) {
                        tLObject13 = chat;
                    }
                    this.messageText = replaceWithLink(string13, "un1", tLObject13);
                    return;
                }
                boolean z3 = getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPaidMedia;
                MessageObject messageObject3 = this.replyMessageObject;
                if (z3) {
                    this.messageText = LocaleController.formatPluralString("NotificationPinnedPaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) getMedia(messageObject3)).stars_amount, chat != null ? chat.title : UserObject.getUserName(user));
                    return;
                }
                boolean z4 = getMedia(messageObject3) instanceof TLRPC.TL_messageMediaGame;
                MessageObject messageObject4 = this.replyMessageObject;
                if (z4) {
                    String string14 = LocaleController.formatString("ActionPinnedGame", C2807R.string.ActionPinnedGame, "🎮 " + getMedia(messageObject4).game.title);
                    TLObject tLObject14 = user;
                    if (user == null) {
                        tLObject14 = chat;
                    }
                    CharSequence charSequenceReplaceWithLink = replaceWithLink(string14, "un1", tLObject14);
                    this.messageText = charSequenceReplaceWithLink;
                    this.messageText = Emoji.replaceEmoji(charSequenceReplaceWithLink, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                    return;
                }
                CharSequence charSequence = messageObject4.messageText;
                if (charSequence != null && charSequence.length() > 0) {
                    CharSequence charSequenceCloneSpans = AnimatedEmojiSpan.cloneSpans(this.replyMessageObject.messageText);
                    if (charSequenceCloneSpans.length() > 20) {
                        charSequenceCloneSpans = charSequenceCloneSpans.subSequence(0, 20);
                        z = true;
                    } else {
                        z = false;
                    }
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceCloneSpans, Theme.chat_msgTextPaint.getFontMetricsInt(), true);
                    MessageObject messageObject5 = this.replyMessageObject;
                    if (messageObject5 != null && messageObject5.messageOwner != null) {
                        charSequenceReplaceEmoji = messageObject5.replaceAnimatedEmoji(charSequenceReplaceEmoji, Theme.chat_msgTextPaint.getFontMetricsInt());
                    }
                    MediaDataController.addTextStyleRuns(this.replyMessageObject, (Spannable) charSequenceReplaceEmoji);
                    if (z) {
                        if (charSequenceReplaceEmoji instanceof SpannableStringBuilder) {
                            ((SpannableStringBuilder) charSequenceReplaceEmoji).append((CharSequence) "...");
                        } else if (charSequenceReplaceEmoji != null) {
                            charSequenceReplaceEmoji = new SpannableStringBuilder(charSequenceReplaceEmoji).append((CharSequence) "...");
                        }
                    }
                    SpannableStringBuilder spannable = AndroidUtilities.formatSpannable(LocaleController.getString(C2807R.string.ActionPinnedText), charSequenceReplaceEmoji);
                    TLObject tLObject15 = user;
                    if (user == null) {
                        tLObject15 = chat;
                    }
                    this.messageText = replaceWithLink(spannable, "un1", tLObject15);
                    return;
                }
                String string15 = LocaleController.getString(C2807R.string.ActionPinnedNoText);
                TLObject tLObject16 = user;
                if (user == null) {
                    tLObject16 = chat;
                }
                this.messageText = replaceWithLink(string15, "un1", tLObject16);
                return;
            }
        }
        String string16 = LocaleController.getString(C2807R.string.ActionPinnedNoText);
        TLObject tLObject17 = user;
        if (user == null) {
            tLObject17 = chat;
        }
        this.messageText = replaceWithLink(string16, "un1", tLObject17);
    }

    public static void updateReactions(TLRPC.Message message, TLRPC.TL_messageReactions tL_messageReactions) {
        if (message == null || tL_messageReactions == null) {
            return;
        }
        TLRPC.TL_messageReactions tL_messageReactions2 = message.reactions;
        if (tL_messageReactions2 != null) {
            int size = tL_messageReactions2.results.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                TLRPC.ReactionCount reactionCount = message.reactions.results.get(i);
                int size2 = tL_messageReactions.results.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC.ReactionCount reactionCount2 = tL_messageReactions.results.get(i2);
                    if (ReactionsLayoutInBubble.equalsTLReaction(reactionCount.reaction, reactionCount2.reaction)) {
                        if (!z && tL_messageReactions.min && reactionCount.chosen) {
                            reactionCount2.chosen = true;
                            z = true;
                        }
                        reactionCount2.lastDrawnPosition = reactionCount.lastDrawnPosition;
                    }
                }
                if (reactionCount.chosen) {
                    z = true;
                }
            }
        }
        message.reactions = tL_messageReactions;
        message.flags |= 1048576;
    }

    public boolean hasReactions() {
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        return (tL_messageReactions == null || tL_messageReactions.results.isEmpty()) ? false : true;
    }

    public boolean hasReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (hasReactions() && visibleReaction != null) {
            for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
                if (visibleReaction.isSame(this.messageOwner.reactions.results.get(i).reaction)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasChosenReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (hasReactions() && visibleReaction != null) {
            for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
                TLRPC.ReactionCount reactionCount = this.messageOwner.reactions.results.get(i);
                if (visibleReaction.isSame(reactionCount.reaction)) {
                    return reactionCount.chosen;
                }
            }
        }
        return false;
    }

    public static void updatePollResults(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.PollResults pollResults) {
        TLRPC.Poll poll;
        ArrayList<TLRPC.PollAnswerVoters> arrayList;
        ArrayList arrayList2;
        byte[] bArr;
        ArrayList<TLRPC.PollAnswerVoters> arrayList3;
        if (tL_messageMediaPoll == null || pollResults == null) {
            return;
        }
        int i = pollResults.flags & 2;
        boolean z = pollResults.min;
        if (i != 0) {
            if (!z || (arrayList3 = tL_messageMediaPoll.results.results) == null) {
                arrayList2 = null;
                bArr = null;
            } else {
                int size = arrayList3.size();
                arrayList2 = null;
                bArr = null;
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC.PollAnswerVoters pollAnswerVoters = tL_messageMediaPoll.results.results.get(i2);
                    if (pollAnswerVoters.chosen) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(pollAnswerVoters.option);
                    }
                    if (pollAnswerVoters.correct) {
                        bArr = pollAnswerVoters.option;
                    }
                }
            }
            TLRPC.PollResults pollResults2 = tL_messageMediaPoll.results;
            ArrayList<TLRPC.PollAnswerVoters> arrayList4 = pollResults.results;
            pollResults2.results = arrayList4;
            if (arrayList2 != null || bArr != null) {
                int size2 = arrayList4.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    TLRPC.PollAnswerVoters pollAnswerVoters2 = tL_messageMediaPoll.results.results.get(i3);
                    if (arrayList2 != null) {
                        int size3 = arrayList2.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size3) {
                                break;
                            }
                            if (Arrays.equals(pollAnswerVoters2.option, (byte[]) arrayList2.get(i4))) {
                                pollAnswerVoters2.chosen = true;
                                arrayList2.remove(i4);
                                break;
                            }
                            i4++;
                        }
                        if (arrayList2.isEmpty()) {
                            arrayList2 = null;
                        }
                    }
                    if (bArr != null && Arrays.equals(pollAnswerVoters2.option, bArr)) {
                        pollAnswerVoters2.correct = true;
                        bArr = null;
                    }
                    if (arrayList2 == null && bArr == null) {
                        break;
                    }
                }
            }
            TLRPC.PollResults pollResults3 = tL_messageMediaPoll.results;
            pollResults3.flags = 2 | pollResults3.flags;
        } else if (!z && (poll = tL_messageMediaPoll.poll) != null && poll.hide_results_until_close && ((arrayList = pollResults.results) == null || arrayList.isEmpty())) {
            tL_messageMediaPoll.results.results = new ArrayList<>();
            TLRPC.PollResults pollResults4 = tL_messageMediaPoll.results;
            pollResults4.flags = BitwiseUtils.setFlag(pollResults4.flags, 2, false);
        }
        if ((pollResults.flags & 4) != 0) {
            TLRPC.PollResults pollResults5 = tL_messageMediaPoll.results;
            pollResults5.total_voters = pollResults.total_voters;
            pollResults5.flags |= 4;
        }
        if ((pollResults.flags & 8) != 0) {
            TLRPC.PollResults pollResults6 = tL_messageMediaPoll.results;
            pollResults6.recent_voters = pollResults.recent_voters;
            pollResults6.flags |= 8;
        }
        if ((pollResults.flags & 16) != 0) {
            TLRPC.PollResults pollResults7 = tL_messageMediaPoll.results;
            pollResults7.solution = pollResults.solution;
            pollResults7.solution_entities = pollResults.solution_entities;
            pollResults7.flags |= 16;
        }
        if (pollResults.min) {
            return;
        }
        TLRPC.PollResults pollResults8 = tL_messageMediaPoll.results;
        pollResults8.has_unread_votes = pollResults.has_unread_votes;
        pollResults8.can_view_stats = pollResults.can_view_stats;
    }

    public void loadAnimatedEmojiDocument() {
        if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId == null || this.emojiAnimatedStickerLoading) {
            return;
        }
        this.emojiAnimatedStickerLoading = true;
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).fetchDocument(this.emojiAnimatedStickerId.longValue(), new AnimatedEmojiDrawable.ReceivedDocument() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.AnimatedEmojiDrawable.ReceivedDocument
            public final void run(TLRPC.Document document) {
                this.f$0.lambda$loadAnimatedEmojiDocument$1(document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAnimatedEmojiDocument$1(final TLRPC.Document document) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAnimatedEmojiDocument$0(document);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAnimatedEmojiDocument$0(TLRPC.Document document) {
        this.emojiAnimatedSticker = document;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.animatedEmojiDocumentLoaded, this);
    }

    public boolean isPollClosed() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.closed;
        }
        return false;
    }

    public boolean isQuiz() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.quiz;
        }
        return false;
    }

    public boolean isPublicPoll() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.public_voters;
        }
        return false;
    }

    public boolean isPoll() {
        return this.type == 17 && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll);
    }

    public boolean isTodo() {
        return this.type == 17 && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo);
    }

    public boolean canCompleteTodo() {
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaToDo) && !isForwarded()) {
            return isOutOwner() || ((TLRPC.TL_messageMediaToDo) media).todo.others_can_complete;
        }
        return false;
    }

    public boolean canAppendToTodo() {
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (!(media instanceof TLRPC.TL_messageMediaToDo) || isForwarded()) {
            return false;
        }
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media;
        if (tL_messageMediaToDo.todo.list.size() >= MessagesController.getInstance(this.currentAccount).todoItemsMax) {
            return false;
        }
        if (isOutOwner()) {
            return true;
        }
        TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
        return todoList.others_can_complete && todoList.others_can_append;
    }

    public boolean canUnvote() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return canUnvote((TLRPC.TL_messageMediaPoll) media);
        }
        return false;
    }

    public static boolean canUnvote(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
        TLRPC.PollResults pollResults;
        if (tL_messageMediaPoll != null && (pollResults = tL_messageMediaPoll.results) != null && !pollResults.results.isEmpty() && !tL_messageMediaPoll.poll.revoting_disabled) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (tL_messageMediaPoll.results.results.get(i).chosen) {
                    return true;
                }
            }
        }
        return false;
    }

    public static TLRPC.PollAnswerVoters getPollResult(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, byte[] bArr) {
        TLRPC.PollResults pollResults;
        if (tL_messageMediaPoll != null && (pollResults = tL_messageMediaPoll.results) != null && !pollResults.results.isEmpty()) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PollAnswerVoters pollAnswerVoters = tL_messageMediaPoll.results.results.get(i);
                if (Arrays.equals(pollAnswerVoters.option, bArr)) {
                    return pollAnswerVoters;
                }
            }
        }
        return null;
    }

    public static boolean canShowVotersList(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
        TLRPC.PollResults pollResults;
        if (tL_messageMediaPoll != null && (pollResults = tL_messageMediaPoll.results) != null && !pollResults.results.isEmpty()) {
            TLRPC.Poll poll = tL_messageMediaPoll.poll;
            if (poll.public_voters) {
                if (poll.closed || poll.creator) {
                    return true;
                }
                if (isVoted(tL_messageMediaPoll) && !tL_messageMediaPoll.poll.hide_results_until_close) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isVoted(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
        TLRPC.PollResults pollResults;
        if (tL_messageMediaPoll != null && (pollResults = tL_messageMediaPoll.results) != null && !pollResults.results.isEmpty()) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (tL_messageMediaPoll.results.results.get(i).chosen) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isVotedButResultsHiddenUntilClose() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return isVotedButResultsHiddenUntilClose((TLRPC.TL_messageMediaPoll) media);
        }
        return false;
    }

    public static boolean isVotedButResultsHiddenUntilClose(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
        if (tL_messageMediaPoll == null) {
            return false;
        }
        TLRPC.Poll poll = tL_messageMediaPoll.poll;
        return !poll.closed && poll.hide_results_until_close && isVoted(tL_messageMediaPoll) && !isVoteResultsIsNotEmpty(tL_messageMediaPoll);
    }

    public static boolean isVoteResultsIsNotEmpty(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
        TLRPC.PollResults pollResults;
        if (tL_messageMediaPoll != null && (pollResults = tL_messageMediaPoll.results) != null && !pollResults.results.isEmpty()) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (tL_messageMediaPoll.results.results.get(i).voters > 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasVoteResults() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return isVoteResultsIsNotEmpty((TLRPC.TL_messageMediaPoll) media);
        }
        return false;
    }

    public boolean isVoted() {
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return isVoted((TLRPC.TL_messageMediaPoll) media);
        }
        return false;
    }

    public boolean isSponsored() {
        return this.sponsoredId != null;
    }

    public long getPollId() {
        if (this.type != 17) {
            return 0L;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media instanceof TLRPC.TL_messageMediaPoll) {
            return ((TLRPC.TL_messageMediaPoll) media).poll.id;
        }
        return 0L;
    }

    private TLRPC.Photo getPhotoWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Photo photo = webPage.photo;
            if (photo != null && photo.id == j) {
                return photo;
            }
            for (int i = 0; i < webPage.cached_page.photos.size(); i++) {
                TLRPC.Photo photo2 = webPage.cached_page.photos.get(i);
                if (photo2.id == j) {
                    return photo2;
                }
            }
        }
        return null;
    }

    private TLRPC.Document getDocumentWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Document document = webPage.document;
            if (document != null && document.id == j) {
                return document;
            }
            for (int i = 0; i < webPage.cached_page.documents.size(); i++) {
                TLRPC.Document document2 = webPage.cached_page.documents.get(i);
                if (document2.id == j) {
                    return document2;
                }
            }
        }
        return null;
    }

    public boolean isSupergroup() {
        if (this.localSupergroup) {
            return true;
        }
        Boolean bool = this.cachedIsSupergroup;
        if (bool != null) {
            return bool.booleanValue();
        }
        TLRPC.Peer peer = this.messageOwner.peer_id;
        if (peer != null) {
            long j = peer.channel_id;
            if (j != 0) {
                TLRPC.Chat chat = getChat(null, null, j);
                if (chat == null) {
                    return false;
                }
                boolean z = chat.megagroup;
                this.cachedIsSupergroup = Boolean.valueOf(z);
                return z;
            }
        }
        this.cachedIsSupergroup = Boolean.FALSE;
        return false;
    }

    private MessageObject getMessageObjectForBlock(TLRPC.WebPage webPage, TL_iv.PageBlock pageBlock) {
        TLRPC.TL_message tL_message;
        if (pageBlock instanceof TL_iv.pageBlockPhoto) {
            TLRPC.Photo photoWithId = getPhotoWithId(webPage, ((TL_iv.pageBlockPhoto) pageBlock).photo_id);
            if (photoWithId != webPage.photo) {
                tL_message = new TLRPC.TL_message();
                TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
                tL_message.media = tL_messageMediaPhoto;
                tL_messageMediaPhoto.photo = photoWithId;
                tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                tL_message.realId = getId();
                tL_message.id = Utilities.random.nextInt();
                TLRPC.Message message = this.messageOwner;
                tL_message.date = message.date;
                tL_message.peer_id = message.peer_id;
                tL_message.out = message.out;
                tL_message.from_id = message.from_id;
                return new MessageObject(this.currentAccount, tL_message, false, true);
            }
            return this;
        }
        if (pageBlock instanceof TL_iv.pageBlockVideo) {
            TL_iv.pageBlockVideo pageblockvideo = (TL_iv.pageBlockVideo) pageBlock;
            if (getDocumentWithId(webPage, pageblockvideo.video_id) != webPage.document) {
                TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                tL_message2.media = tL_messageMediaDocument;
                tL_messageMediaDocument.document = getDocumentWithId(webPage, pageblockvideo.video_id);
                tL_message = tL_message2;
            }
            return this;
        }
        tL_message = null;
        tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_message.realId = getId();
        tL_message.id = Utilities.random.nextInt();
        TLRPC.Message message2 = this.messageOwner;
        tL_message.date = message2.date;
        tL_message.peer_id = message2.peer_id;
        tL_message.out = message2.out;
        tL_message.from_id = message2.from_id;
        return new MessageObject(this.currentAccount, tL_message, false, true);
    }

    public ArrayList<MessageObject> getWebPagePhotos(ArrayList<MessageObject> arrayList, ArrayList<TL_iv.PageBlock> arrayList2) {
        TLRPC.WebPage webPage;
        TL_iv.Page page;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (getMedia(this.messageOwner) != null && getMedia(this.messageOwner).webpage != null && (page = (webPage = getMedia(this.messageOwner).webpage).cached_page) != null) {
            if (arrayList2 == null) {
                arrayList2 = page.blocks;
            }
            for (int i = 0; i < arrayList2.size(); i++) {
                TL_iv.PageBlock pageBlock = arrayList2.get(i);
                if (pageBlock instanceof TL_iv.pageBlockSlideshow) {
                    TL_iv.pageBlockSlideshow pageblockslideshow = (TL_iv.pageBlockSlideshow) pageBlock;
                    for (int i2 = 0; i2 < pageblockslideshow.items.size(); i2++) {
                        arrayList.add(getMessageObjectForBlock(webPage, pageblockslideshow.items.get(i2)));
                    }
                } else if (pageBlock instanceof TL_iv.pageBlockCollage) {
                    TL_iv.pageBlockCollage pageblockcollage = (TL_iv.pageBlockCollage) pageBlock;
                    for (int i3 = 0; i3 < pageblockcollage.items.size(); i3++) {
                        arrayList.add(getMessageObjectForBlock(webPage, pageblockcollage.items.get(i3)));
                    }
                }
            }
        }
        return arrayList;
    }

    public void createMessageSendInfo() {
        createMessageSendInfo(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createMessageSendInfo(boolean z) {
        String str;
        int i;
        TLRPC.MessageMedia media;
        VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
        boolean z2 = true;
        boolean z3 = videoEditedInfo != null && videoEditedInfo.notReadyYet;
        TLRPC.Message message = this.messageOwner;
        if (message.message != null) {
            if ((message.id < 0 || isEditing()) && this.messageOwner.params != null) {
                TLRPC.MessageMedia media2 = getMedia(this);
                boolean z4 = z || isVideo() || isNewGif() || isRoundVideo() || isVideoSticker() || isPaidVideo(media2);
                if (z4 || !(media2 instanceof TLRPC.TL_messageMediaPoll)) {
                    z2 = z4;
                } else {
                    String str2 = this.messageOwner.params.get("pollMediaIndex");
                    if (str2 != null) {
                        try {
                            i = Integer.parseInt(str2);
                        } catch (Throwable unused) {
                            i = -1;
                        }
                        media = PollAttachedMediaPack.getMedia((TLRPC.TL_messageMediaPoll) media2, i);
                        if (media != null || !isVideoDocument(media.document)) {
                        }
                    } else {
                        i = -1;
                        media = PollAttachedMediaPack.getMedia((TLRPC.TL_messageMediaPoll) media2, i);
                        if (media != null) {
                            z2 = z4;
                        }
                    }
                }
                String str3 = this.messageOwner.params.get("ve");
                if (str3 != null && z2) {
                    VideoEditedInfo videoEditedInfo2 = new VideoEditedInfo();
                    this.videoEditedInfo = videoEditedInfo2;
                    if (!videoEditedInfo2.parseString(str3)) {
                        this.videoEditedInfo = null;
                    } else {
                        this.videoEditedInfo.roundVideo = isRoundVideo();
                        this.videoEditedInfo.notReadyYet = z3;
                    }
                }
                TLRPC.Message message2 = this.messageOwner;
                if (message2.send_state != 3 || (str = message2.params.get("prevMedia")) == null) {
                    return;
                }
                SerializedData serializedData = new SerializedData(Base64.decode(str, 0));
                this.previousMedia = TLRPC.MessageMedia.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                this.previousMessage = serializedData.readString(false);
                this.previousAttachPath = serializedData.readString(false);
                int int32 = serializedData.readInt32(false);
                this.previousMessageEntities = new ArrayList<>(int32);
                for (int i2 = 0; i2 < int32; i2++) {
                    this.previousMessageEntities.add(TLRPC.MessageEntity.TLdeserialize(serializedData, serializedData.readInt32(false), false));
                }
                serializedData.cleanup();
            }
        }
    }

    public static boolean isPaidVideo(TLRPC.MessageMedia messageMedia) {
        return (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) && messageMedia.extended_media.size() == 1 && isExtendedVideo(messageMedia.extended_media.get(0));
    }

    public static boolean isExtendedVideo(TLRPC.MessageExtendedMedia messageExtendedMedia) {
        if (!(messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia)) {
            return (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) && (((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0;
        }
        TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
        return (messageMedia instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia.document);
    }

    public boolean hasSuggestionInlineButtons() {
        TLRPC.SuggestedPost suggestedPost;
        TLRPC.Message message = this.messageOwner;
        boolean z = (message == null || (suggestedPost = message.suggested_post) == null || suggestedPost.rejected || suggestedPost.accepted || isSendError() || isSending()) ? false : true;
        if (z) {
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            long peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id);
            long peerDialogId2 = DialogObject.getPeerDialogId(this.messageOwner.from_id);
            boolean z2 = clientUserId == peerDialogId;
            boolean z3 = peerDialogId == peerDialogId2;
            if ((z2 && z3) || (!z2 && !z3)) {
                return false;
            }
        }
        return z;
    }

    public BotInlineKeyboard.Source getInlineBotButtons() {
        return this.inlineKeyboardSource;
    }

    public boolean hasInlineBotButtons() {
        TLRPC.Message message;
        if (this.isRestrictedMessage || this.isRepostPreview || (message = this.messageOwner) == null) {
            return false;
        }
        TLRPC.ReplyMarkup replyMarkup = message.reply_markup;
        return ((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && !((TLRPC.TL_replyInlineMarkup) replyMarkup).rows.isEmpty()) || getInlineBotButtons() != null;
    }

    public void measureInlineBotButtons() {
        TLRPC.TL_messageReactions tL_messageReactions;
        CharSequence charSequenceReplaceEmoji;
        if (this.isRestrictedMessage) {
            return;
        }
        this.wantedBotKeyboardWidth = 0;
        this.inlineKeyboardSource = null;
        BotInlineKeyboard.Builder builder = new BotInlineKeyboard.Builder();
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            TLRPC.ReplyMarkup replyMarkup = message.reply_markup;
            if ((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && ((TLRPC.TL_replyInlineMarkup) replyMarkup).rows != null) {
                builder.addBotKeyboard((TLRPC.TL_replyInlineMarkup) replyMarkup);
            }
        }
        if (hasSuggestionInlineButtons()) {
            builder.addSeparator();
            builder.addSuggestionKeyboard();
        }
        if (builder.isNotEmpty()) {
            this.inlineKeyboardSource = builder.build();
        }
        BotInlineKeyboard.Source source = this.inlineKeyboardSource;
        if ((source != null && !hasExtendedMedia()) || ((tL_messageReactions = this.messageOwner.reactions) != null && !tL_messageReactions.results.isEmpty())) {
            Theme.createCommonMessageResources();
            StringBuilder sb = this.botButtonsLayout;
            if (sb == null) {
                this.botButtonsLayout = new StringBuilder();
            } else {
                sb.setLength(0);
            }
        }
        if (source == null || hasExtendedMedia()) {
            return;
        }
        for (int i = 0; i < source.getRowsCount(); i++) {
            int columnsCount = source.getColumnsCount(i);
            int iMax = 0;
            for (int i2 = 0; i2 < columnsCount; i2++) {
                BotInlineKeyboard.Button button = source.getButton(i, i2);
                StringBuilder sb2 = this.botButtonsLayout;
                sb2.append(i);
                sb2.append(i2);
                if ((button instanceof BotInlineKeyboard.ButtonBot) && TLKeyboardHelper.isType(((BotInlineKeyboard.ButtonBot) button).button, TL_keyboard.TL_inlineButtonTypeBuy.class) && (getMedia(this.messageOwner).flags & 4) != 0) {
                    charSequenceReplaceEmoji = LocaleController.getString(C2807R.string.PaymentReceipt);
                } else {
                    String text = button.getText();
                    if (text == null) {
                        text = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(text, Theme.chat_msgBotButtonPaint.getFontMetricsInt(), false);
                }
                StaticLayout staticLayout = new StaticLayout(charSequenceReplaceEmoji, Theme.chat_msgBotButtonPaint, AndroidUtilities.dp(2000.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                if (staticLayout.getLineCount() > 0) {
                    float lineWidth = staticLayout.getLineWidth(0);
                    float lineLeft = staticLayout.getLineLeft(0);
                    if (lineLeft < lineWidth) {
                        lineWidth -= lineLeft;
                    }
                    if (button.getIconRes() != 0) {
                        lineWidth += AndroidUtilities.dp(36.0f);
                    }
                    if (button.getIconEmoji() != 0) {
                        lineWidth += AndroidUtilities.dp(36.0f);
                    }
                    iMax = Math.max(iMax, ((int) Math.ceil(lineWidth)) + AndroidUtilities.dp(4.0f));
                }
            }
            this.wantedBotKeyboardWidth = Math.max(this.wantedBotKeyboardWidth, ((iMax + AndroidUtilities.dp(12.0f)) * columnsCount) + (AndroidUtilities.dp(5.0f) * (columnsCount - 1)));
        }
    }

    public boolean isVideoAvatar() {
        TLRPC.Photo photo;
        TLRPC.MessageAction messageAction = this.messageOwner.action;
        return (messageAction == null || (photo = messageAction.photo) == null || photo.video_sizes.isEmpty()) ? false : true;
    }

    public boolean isFcmMessage() {
        return this.localType != 0;
    }

    private TLRPC.User getUser(AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray<TLRPC.User> longSparseArray, long j) {
        TLRPC.User user;
        if (abstractMap != null) {
            user = abstractMap.get(Long.valueOf(j));
        } else {
            user = longSparseArray != null ? longSparseArray.get(j) : null;
        }
        return user == null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)) : user;
    }

    private TLRPC.Chat getChat(AbstractMap<Long, TLRPC.Chat> abstractMap, LongSparseArray<TLRPC.Chat> longSparseArray, long j) {
        TLRPC.Chat chat;
        if (abstractMap != null) {
            chat = abstractMap.get(Long.valueOf(j));
        } else {
            chat = longSparseArray != null ? longSparseArray.get(j) : null;
        }
        return chat == null ? MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j)) : chat;
    }

    public void updateMessageText() {
        updateMessageText(MessagesController.getInstance(this.currentAccount).getUsers(), MessagesController.getInstance(this.currentAccount).getChats(), null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:1212:0x1da2  */
    /* JADX WARN: Removed duplicated region for block: B:1222:0x1dca  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:1391:0x23c0  */
    /* JADX WARN: Removed duplicated region for block: B:1408:0x2429  */
    /* JADX WARN: Removed duplicated region for block: B:1476:0x25d2 A[LOOP:4: B:1458:0x2599->B:1476:0x25d2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:1576:0x27f9  */
    /* JADX WARN: Removed duplicated region for block: B:1589:0x2842  */
    /* JADX WARN: Removed duplicated region for block: B:1597:0x12b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:1618:0x25d0 A[EDGE_INSN: B:1618:0x25d0->B:1475:0x25d0 BREAK  A[LOOP:4: B:1458:0x2599->B:1476:0x25d2], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0912  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x09a0  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x109f  */
    /* JADX WARN: Removed duplicated region for block: B:690:0x111d  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x1181  */
    /* JADX WARN: Removed duplicated region for block: B:757:0x12b6  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x136d  */
    /* JADX WARN: Removed duplicated region for block: B:891:0x15fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMessageText(AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.Chat> longSparseArray2) {
        TLRPC.User user;
        TLRPC.Chat chat;
        TLRPC.Message message;
        String str;
        String pluralString;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String publicUsername;
        boolean zIsChannelAndNotMegaGroup;
        String str2;
        int i;
        String shortName;
        int i2;
        TLRPC.Chat chat2;
        TLRPC.TodoItem todoItem;
        TLRPC.User user2;
        TLRPC.User user3;
        String string;
        CharSequence spannable;
        CharSequence spannable2;
        String publicUsername2;
        String name;
        String strTrim;
        String string2;
        boolean z;
        String str3;
        int i3;
        TLObject chat3;
        ArrayList<TLRPC.VideoSize> arrayList;
        TLObject chat4;
        TLObject chat5;
        TLObject chat6;
        TLObject chat7;
        TLObject chat8;
        int i4;
        TLObject chat9;
        TLRPC.Peer peer;
        String firstName;
        boolean zIsUserSelf;
        int i5;
        int i6;
        int i7;
        AmountUtils$Amount amountUtils$Amount;
        int i8;
        AmountUtils$Amount amountUtils$Amount2;
        TLRPC.Chat chat10;
        TLObject chat11;
        String str4;
        TLObject chat12;
        TLObject chat13;
        String pluralString2;
        TLRPC.Peer peer2 = this.messageOwner.from_id;
        if (peer2 instanceof TLRPC.TL_peerUser) {
            user = getUser(abstractMap, longSparseArray, peer2.user_id);
        } else {
            if (peer2 instanceof TLRPC.TL_peerChannel) {
                chat = getChat(abstractMap2, longSparseArray2, peer2.channel_id);
                user = null;
                TLObject chat14 = user == null ? user : chat;
                this.drawServiceWithDefaultTypeface = false;
                this.channelJoined = false;
                message = this.messageOwner;
                if (!(message instanceof TLRPC.TL_messageService)) {
                    TLRPC.MessageAction messageAction = message.action;
                    if (messageAction == null) {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    } else {
                        if (messageAction instanceof TLRPC.TL_messageActionNewCreatorPending) {
                            TLRPC.User user4 = getUser(abstractMap, longSparseArray, ((TLRPC.TL_messageActionNewCreatorPending) messageAction).new_creator_id);
                            String string3 = LocaleController.getString(C2807R.string.ActionNewCreatorPending);
                            this.messageText = string3;
                            CharSequence charSequenceReplaceWithLink = replaceWithLink(string3, "un1", user4);
                            this.messageText = charSequenceReplaceWithLink;
                            this.messageText = replaceWithLink(charSequenceReplaceWithLink, "un2", chat14);
                        } else if (messageAction instanceof TLRPC.TL_messageActionChangeCreator) {
                            TLRPC.User user5 = getUser(abstractMap, longSparseArray, ((TLRPC.TL_messageActionChangeCreator) messageAction).new_creator_id);
                            String string4 = LocaleController.getString(C2807R.string.ActionChangeCreator);
                            this.messageText = string4;
                            CharSequence charSequenceReplaceWithLink2 = replaceWithLink(string4, "un1", chat14);
                            this.messageText = charSequenceReplaceWithLink2;
                            this.messageText = replaceWithLink(charSequenceReplaceWithLink2, "un2", user5);
                        } else if (messageAction instanceof TLRPC.TL_messageActionManagedBotCreated) {
                            TLRPC.User user6 = getUser(abstractMap, longSparseArray, ((TLRPC.TL_messageActionManagedBotCreated) messageAction).bot_id);
                            TLRPC.User user7 = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                            String string5 = LocaleController.getString(C2807R.string.ActionManagedBotCreated);
                            this.messageText = string5;
                            CharSequence charSequenceReplaceWithLink3 = replaceWithLink(string5, "un1", user6);
                            this.messageText = charSequenceReplaceWithLink3;
                            this.messageText = replaceWithLink(charSequenceReplaceWithLink3, "un2", user7);
                        } else if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                            this.contentType = 1;
                            this.type = 10;
                            TLRPC.TL_messageActionSetSameChatWallPaper tL_messageActionSetSameChatWallPaper = (TLRPC.TL_messageActionSetSameChatWallPaper) messageAction;
                            TLRPC.User user8 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            ArrayList<TLRPC.PhotoSize> arrayList2 = new ArrayList<>();
                            this.photoThumbs = arrayList2;
                            TLRPC.Document document = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            if (document != null) {
                                arrayList2.addAll(document.thumbs);
                                this.photoThumbsObject = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            }
                            if (user8 != null) {
                                if (user8.id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    this.messageText = LocaleController.formatString(C2807R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]);
                                } else {
                                    this.messageText = LocaleController.formatString(C2807R.string.ActionSetSameWallpaperForThisChat, user8.first_name);
                                }
                            } else if (chat != null) {
                                this.messageText = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2807R.string.ActionSetWallpaperForThisChannel : C2807R.string.ActionSetWallpaperForThisGroup);
                            } else if (user != null) {
                                this.messageText = LocaleController.formatString(C2807R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                            this.contentType = 1;
                            TLRPC.TL_messageActionSetChatWallPaper tL_messageActionSetChatWallPaper = (TLRPC.TL_messageActionSetChatWallPaper) messageAction;
                            this.type = 22;
                            ArrayList<TLRPC.PhotoSize> arrayList3 = new ArrayList<>();
                            this.photoThumbs = arrayList3;
                            TLRPC.Document document2 = tL_messageActionSetChatWallPaper.wallpaper.document;
                            if (document2 != null) {
                                arrayList3.addAll(document2.thumbs);
                                this.photoThumbsObject = tL_messageActionSetChatWallPaper.wallpaper.document;
                            }
                            TLRPC.User user9 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            TLRPC.User user10 = getUser(abstractMap, longSparseArray, getDialogId());
                            if (user9 != null) {
                                if (user9.id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    if (tL_messageActionSetChatWallPaper.same) {
                                        this.type = 10;
                                        this.messageText = LocaleController.formatString(C2807R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]);
                                    } else if (tL_messageActionSetChatWallPaper.for_both && user10 != null) {
                                        this.messageText = LocaleController.getString(C2807R.string.ActionSetWallpaperForThisChatSelfBoth);
                                        SpannableString spannableString = new SpannableString(UserObject.getFirstName(user10));
                                        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString.length(), 33);
                                        this.messageText = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString);
                                    } else {
                                        this.messageText = LocaleController.getString(C2807R.string.ActionSetWallpaperForThisChatSelf);
                                    }
                                } else {
                                    SpannableString spannableString2 = new SpannableString(UserObject.getFirstName(user9));
                                    spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString2.length(), 33);
                                    if (tL_messageActionSetChatWallPaper.same) {
                                        this.type = 10;
                                        this.messageText = LocaleController.getString(C2807R.string.ActionSetSameWallpaperForThisChat);
                                    } else if (tL_messageActionSetChatWallPaper.for_both) {
                                        this.messageText = LocaleController.getString(C2807R.string.ActionSetWallpaperForThisChatBoth);
                                    } else {
                                        this.messageText = LocaleController.getString(C2807R.string.ActionSetWallpaperForThisChat);
                                    }
                                    this.messageText = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString2);
                                }
                            } else if (chat != null) {
                                this.messageText = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2807R.string.ActionSetWallpaperForThisChannel : C2807R.string.ActionSetWallpaperForThisGroup);
                            } else if (user != null) {
                                this.messageText = LocaleController.formatString(C2807R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                            TLRPC.TL_messageActionGroupCallScheduled tL_messageActionGroupCallScheduled = (TLRPC.TL_messageActionGroupCallScheduled) messageAction;
                            if ((message.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) {
                                this.messageText = LocaleController.formatString(C2807R.string.ActionGroupCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false));
                            } else {
                                this.messageText = LocaleController.formatString(C2807R.string.ActionChannelCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false));
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionGroupCall) {
                            int i9 = messageAction.duration;
                            if (i9 != 0) {
                                int i10 = i9 / 86400;
                                if (i10 > 0) {
                                    pluralString2 = LocaleController.formatPluralString("Days", i10, new Object[0]);
                                } else {
                                    int i11 = i9 / 3600;
                                    if (i11 > 0) {
                                        pluralString2 = LocaleController.formatPluralString("Hours", i11, new Object[0]);
                                    } else {
                                        int i12 = i9 / 60;
                                        if (i12 > 0) {
                                            pluralString2 = LocaleController.formatPluralString("Minutes", i12, new Object[0]);
                                        } else {
                                            pluralString2 = LocaleController.formatPluralString("Seconds", i9, new Object[0]);
                                        }
                                    }
                                }
                                if ((this.messageOwner.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) {
                                    if (isOut()) {
                                        this.messageText = LocaleController.formatString(C2807R.string.ActionGroupCallEndedByYou, pluralString2);
                                    } else {
                                        this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionGroupCallEndedBy, pluralString2), "un1", chat14);
                                    }
                                } else {
                                    this.messageText = LocaleController.formatString(C2807R.string.ActionChannelCallEnded, pluralString2);
                                }
                            } else if ((message.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) {
                                if (isOut()) {
                                    this.messageText = LocaleController.getString(C2807R.string.ActionGroupCallStartedByYou);
                                } else {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallStarted), "un1", chat14);
                                }
                            } else {
                                this.messageText = LocaleController.getString(C2807R.string.ActionChannelCallJustStarted);
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                            long jLongValue = messageAction.user_id;
                            if (jLongValue == 0 && messageAction.users.size() == 1) {
                                jLongValue = this.messageOwner.action.users.get(0).longValue();
                            }
                            if (jLongValue != 0) {
                                TLRPC.User user11 = getUser(abstractMap, longSparseArray, jLongValue);
                                if (isOut()) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallYouInvited), "un2", user11);
                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallInvitedYou), "un1", chat14);
                                } else {
                                    CharSequence charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallInvited), "un2", user11);
                                    this.messageText = charSequenceReplaceWithLink4;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink4, "un1", chat14);
                                }
                            } else if (isOut()) {
                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallYouInvited), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                            } else {
                                CharSequence charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.getString(C2807R.string.ActionGroupCallInvited), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                this.messageText = charSequenceReplaceWithLink5;
                                this.messageText = replaceWithLink(charSequenceReplaceWithLink5, "un1", chat14);
                            }
                        } else {
                            if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                                TLRPC.TL_messageActionGeoProximityReached tL_messageActionGeoProximityReached = (TLRPC.TL_messageActionGeoProximityReached) messageAction;
                                TLRPC.Peer peer3 = tL_messageActionGeoProximityReached.from_id;
                                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                long peerId = getPeerId(peer3);
                                if (peerId > 0) {
                                    chat12 = getUser(abstractMap, longSparseArray, peerId);
                                    str4 = "un2";
                                } else {
                                    str4 = "un2";
                                    chat12 = getChat(abstractMap2, longSparseArray2, -peerId);
                                }
                                long peerId2 = getPeerId(tL_messageActionGeoProximityReached.to_id);
                                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                if (peerId2 == clientUserId) {
                                    this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionUserWithinRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2)), "un1", chat12);
                                } else {
                                    if (peerId2 > 0) {
                                        chat13 = getUser(abstractMap, longSparseArray, peerId2);
                                    } else {
                                        chat13 = getChat(abstractMap2, longSparseArray2, -peerId2);
                                    }
                                    int i13 = tL_messageActionGeoProximityReached.distance;
                                    if (peerId == clientUserId) {
                                        this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionUserWithinYouRadius, LocaleController.formatDistance(i13, 2)), "un1", chat13);
                                    } else {
                                        CharSequence charSequenceReplaceWithLink6 = replaceWithLink(LocaleController.formatString(C2807R.string.ActionUserWithinOtherRadius, LocaleController.formatDistance(i13, 2)), str4, chat13);
                                        this.messageText = charSequenceReplaceWithLink6;
                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink6, "un1", chat12);
                                    }
                                }
                            } else {
                                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                if (messageAction instanceof TLRPC.TL_messageActionCustomAction) {
                                    this.messageText = messageAction.message;
                                } else if (messageAction instanceof TLRPC.TL_messageActionChatCreate) {
                                    if (isOut()) {
                                        this.messageText = LocaleController.getString(C2807R.string.ActionYouCreateGroup);
                                    } else {
                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionCreateGroup), "un1", chat14);
                                    }
                                } else if (messageAction instanceof TLRPC.TL_messageActionChatDeleteUser) {
                                    if (isFromUser()) {
                                        TLRPC.Message message2 = this.messageOwner;
                                        if (message2.action.user_id == message2.from_id.user_id) {
                                            if (isOut()) {
                                                this.messageText = LocaleController.getString(C2807R.string.ActionYouLeftUser);
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionLeftUser), "un1", chat14);
                                            }
                                        } else {
                                            TLRPC.User user12 = getUser(abstractMap, longSparseArray, this.messageOwner.action.user_id);
                                            if (isOut()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionYouKickUser), "un2", user12);
                                            } else if (this.messageOwner.action.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionKickUserYou), "un1", chat14);
                                            } else {
                                                CharSequence charSequenceReplaceWithLink7 = replaceWithLink(LocaleController.getString(C2807R.string.ActionKickUser), "un2", user12);
                                                this.messageText = charSequenceReplaceWithLink7;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink7, "un1", chat14);
                                            }
                                        }
                                    }
                                } else {
                                    if (messageAction instanceof TLRPC.TL_messageActionPaymentRefunded) {
                                        TLRPC.TL_messageActionPaymentRefunded tL_messageActionPaymentRefunded = (TLRPC.TL_messageActionPaymentRefunded) messageAction;
                                        long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionPaymentRefunded.peer);
                                        if (peerDialogId >= 0) {
                                            chat11 = getUser(abstractMap, longSparseArray, peerDialogId);
                                        } else {
                                            chat11 = getChat(abstractMap2, longSparseArray2, -peerDialogId);
                                        }
                                        this.messageText = StarsIntroActivity.replaceStars(replaceWithLink(LocaleController.formatString(C2807R.string.ActionRefunded, tL_messageActionPaymentRefunded.currency + " " + LocaleController.formatNumber(tL_messageActionPaymentRefunded.total_amount, ',')), "un1", chat11));
                                    } else if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
                                        String monoForumTitle = ForumUtilities.getMonoForumTitle(this.currentAccount, DialogObject.getPeerDialogId(this.messageOwner.peer_id), true);
                                        if (monoForumTitle == null) {
                                            TLRPC.Chat chat15 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id));
                                            if (chat15 != null) {
                                                long j = chat15.linked_monoforum_id;
                                                if (j != 0 && (chat10 = getChat(abstractMap2, longSparseArray2, j)) != null) {
                                                    chat15 = chat10;
                                                }
                                            }
                                            monoForumTitle = DialogObject.getDialogTitle(chat15);
                                        }
                                        String name2 = DialogObject.getName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id)));
                                        MessageSuggestionParams messageSuggestionParamsObtainSuggestionOfferFromReply = obtainSuggestionOfferFromReply();
                                        TLRPC.MessageAction messageAction2 = this.messageOwner.action;
                                        if (messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostRefund) {
                                            boolean z2 = ((TLRPC.TL_messageActionSuggestedPostRefund) messageAction2).payer_initiated;
                                            if (messageSuggestionParamsObtainSuggestionOfferFromReply != null && (amountUtils$Amount2 = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) != null) {
                                                this.messageText = StarsIntroActivity.replaceStars(amountUtils$Amount2.currency == AmountUtils$Currency.TON, LocaleController.formatString(z2 ? C2807R.string.SuggestedOfferRefundByUserAmountF : C2807R.string.SuggestedOfferRefundByAdminAmountF, name2, monoForumTitle, amountUtils$Amount2.asDecimalString()));
                                            } else {
                                                if (z2) {
                                                    i8 = C2807R.string.SuggestedOfferRefundByUserAmountUnknown;
                                                } else {
                                                    i8 = C2807R.string.SuggestedOfferRefundByAdminAmountUnknown;
                                                }
                                                this.messageText = LocaleController.formatString(i8, name2, monoForumTitle);
                                            }
                                        } else if (messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostSuccess) {
                                            if (messageSuggestionParamsObtainSuggestionOfferFromReply != null && (amountUtils$Amount = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) != null) {
                                                this.messageText = StarsIntroActivity.replaceStars(amountUtils$Amount.currency == AmountUtils$Currency.TON, LocaleController.formatString(C2807R.string.SuggestedOfferCompleteAmountF, monoForumTitle, amountUtils$Amount.asDecimalString()));
                                            } else {
                                                this.messageText = LocaleController.formatString(C2807R.string.SuggestedOfferCompleteAmountUnknown, monoForumTitle);
                                            }
                                        }
                                    } else {
                                        TLRPC.Message message3 = this.messageOwner;
                                        TLRPC.MessageAction messageAction3 = message3.action;
                                        if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                                            long jLongValue2 = messageAction3.user_id;
                                            if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                                                jLongValue2 = this.messageOwner.action.users.get(0).longValue();
                                            }
                                            if (jLongValue2 != 0) {
                                                TLRPC.User user13 = getUser(abstractMap, longSparseArray, jLongValue2);
                                                long j2 = this.messageOwner.peer_id.channel_id;
                                                TLRPC.Chat chat16 = j2 != 0 ? getChat(abstractMap2, longSparseArray2, j2) : null;
                                                TLRPC.Peer peer4 = this.messageOwner.from_id;
                                                if (peer4 != null && jLongValue2 == peer4.user_id) {
                                                    if (ChatObject.isChannel(chat16) && !chat16.megagroup) {
                                                        this.channelJoined = true;
                                                        this.messageText = LocaleController.getString(C2807R.string.ChannelJoined);
                                                    } else if (this.messageOwner.peer_id.channel_id != 0) {
                                                        if (jLongValue2 == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ChannelMegaJoined);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionAddUserSelfMega), "un1", chat14);
                                                        }
                                                    } else if (isOut()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.ActionAddUserSelfYou);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionAddUserSelf), "un1", chat14);
                                                    }
                                                } else if (isOut()) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionYouAddUser), "un2", user13);
                                                } else if (jLongValue2 != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                    CharSequence charSequenceReplaceWithLink8 = replaceWithLink(LocaleController.getString(C2807R.string.ActionAddUser), "un2", user13);
                                                    this.messageText = charSequenceReplaceWithLink8;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink8, "un1", chat14);
                                                } else if (this.messageOwner.peer_id.channel_id != 0) {
                                                    if (chat16 != null && chat16.megagroup) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.MegaAddedBy), "un1", chat14);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ChannelAddedBy), "un1", chat14);
                                                    }
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionAddUserYou), "un1", chat14);
                                                }
                                            } else if (isOut()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionYouAddUser), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                            } else {
                                                CharSequence charSequenceReplaceWithLink9 = replaceWithLink(LocaleController.getString(C2807R.string.ActionAddUser), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                                this.messageText = charSequenceReplaceWithLink9;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink9, "un1", chat14);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedViaCommunity) {
                                            TLRPC.Chat chat17 = getChat(abstractMap2, longSparseArray2, ((TLRPC.TL_messageActionChatJoinedViaCommunity) messageAction3).community_id);
                                            boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id)));
                                            if (isOut()) {
                                                if (zIsChannelAndNotMegaGroup2) {
                                                    i7 = C2807R.string.ActionJoinedFromCommunityYouChannel;
                                                } else {
                                                    i7 = C2807R.string.ActionJoinedFromCommunityYou;
                                                }
                                                this.messageText = replaceWithLink(LocaleController.getString(i7), "un1", chat17);
                                            } else {
                                                CharSequence charSequenceReplaceWithLink10 = replaceWithLink(LocaleController.getString(C2807R.string.ActionJoinedFromCommunityUser), "un1", chat17);
                                                this.messageText = charSequenceReplaceWithLink10;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink10, "un2", chat14);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                                            if (isOut()) {
                                                this.messageText = LocaleController.getString(C2807R.string.ActionInviteYou);
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionInviteUser), "un1", chat14);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayLaunch) {
                                            TLRPC.TL_messageActionGiveawayLaunch tL_messageActionGiveawayLaunch = (TLRPC.TL_messageActionGiveawayLaunch) messageAction3;
                                            TLRPC.Peer peer5 = message3.peer_id;
                                            if (peer5 != null) {
                                                long j3 = peer5.channel_id;
                                                TLRPC.Chat chat18 = j3 != 0 ? getChat(abstractMap2, longSparseArray2, j3) : null;
                                                boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat18);
                                                if ((tL_messageActionGiveawayLaunch.flags & 1) != 0) {
                                                    this.messageText = LocaleController.formatPluralStringComma(zIsChannelAndNotMegaGroup3 ? "BoostingStarsGiveawayJustStarted" : "BoostingStarsGiveawayJustStartedGroup", (int) tL_messageActionGiveawayLaunch.stars, chat18 != null ? chat18.title : str2);
                                                } else {
                                                    this.messageText = LocaleController.formatString(zIsChannelAndNotMegaGroup3 ? C2807R.string.BoostingGiveawayJustStarted : C2807R.string.BoostingGiveawayJustStartedGroup, chat18 != null ? chat18.title : str2);
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionWalletTonConnectRequest) {
                                            TLRPC.TL_messageActionWalletTonConnectRequest tL_messageActionWalletTonConnectRequest = (TLRPC.TL_messageActionWalletTonConnectRequest) messageAction3;
                                            boolean zIsEmpty = TextUtils.isEmpty(tL_messageActionWalletTonConnectRequest.dapp_name);
                                            boolean z3 = tL_messageActionWalletTonConnectRequest.declined;
                                            if (!zIsEmpty) {
                                                if (z3) {
                                                    i6 = C2807R.string.WalletTonConnectRequestAppDeclined;
                                                } else if (tL_messageActionWalletTonConnectRequest.accepted) {
                                                    i6 = C2807R.string.WalletTonConnectRequestAppProcessed;
                                                } else {
                                                    i6 = tL_messageActionWalletTonConnectRequest.expires <= ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() ? C2807R.string.WalletTonConnectRequestAppExpired : C2807R.string.WalletTonConnectRequestAppPending;
                                                }
                                                this.messageText = LocaleController.formatString(i6, tL_messageActionWalletTonConnectRequest.dapp_name);
                                            } else {
                                                if (z3) {
                                                    i5 = C2807R.string.WalletTonConnectRequestDeclined;
                                                } else if (tL_messageActionWalletTonConnectRequest.accepted) {
                                                    i5 = C2807R.string.WalletTonConnectRequestProcessed;
                                                } else {
                                                    i5 = tL_messageActionWalletTonConnectRequest.expires <= ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() ? C2807R.string.WalletTonConnectRequestExpired : C2807R.string.WalletTonConnectRequestPending;
                                                }
                                                this.messageText = LocaleController.getString(i5);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionBoostApply) {
                                            TLRPC.Peer peer6 = message3.peer_id;
                                            if (peer6 != null) {
                                                long j4 = peer6.channel_id;
                                                TLRPC.Chat chat19 = j4 != 0 ? getChat(abstractMap2, longSparseArray2, j4) : null;
                                                boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat19);
                                                TLRPC.TL_messageActionBoostApply tL_messageActionBoostApply = (TLRPC.TL_messageActionBoostApply) this.messageOwner.action;
                                                if (chat14 instanceof TLRPC.User) {
                                                    TLRPC.User user14 = (TLRPC.User) chat14;
                                                    zIsUserSelf = UserObject.isUserSelf(user14);
                                                    firstName = UserObject.getFirstName(user14);
                                                } else {
                                                    firstName = chat14 instanceof TLRPC.Chat ? ((TLRPC.Chat) chat14).title : str2;
                                                    zIsUserSelf = false;
                                                }
                                                if (zIsUserSelf) {
                                                    int i14 = tL_messageActionBoostApply.boosts;
                                                    if (i14 <= 1) {
                                                        this.messageText = LocaleController.getString(zIsChannelAndNotMegaGroup4 ? C2807R.string.BoostingBoostsChannelByYouServiceMsg : C2807R.string.BoostingBoostsGroupByYouServiceMsg);
                                                    } else {
                                                        this.messageText = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingBoostsChannelByYouServiceMsgCount" : "BoostingBoostsGroupByYouServiceMsgCount", i14, new Object[0]);
                                                    }
                                                } else {
                                                    int i15 = tL_messageActionBoostApply.boosts;
                                                    if (i15 <= 1) {
                                                        this.messageText = LocaleController.formatString(zIsChannelAndNotMegaGroup4 ? C2807R.string.BoostingBoostsChannelByUserServiceMsg : C2807R.string.BoostingBoostsGroupByUserServiceMsg, firstName);
                                                    } else {
                                                        this.messageText = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingBoostsChannelByUserServiceMsgCount" : "BoostingBoostsGroupByUserServiceMsgCount", i15, firstName);
                                                    }
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayResults) {
                                            TLRPC.Peer peer7 = message3.peer_id;
                                            if (peer7 != null) {
                                                long j5 = peer7.channel_id;
                                                TLRPC.Chat chat20 = j5 != 0 ? getChat(abstractMap2, longSparseArray2, j5) : null;
                                                boolean zIsChannelAndNotMegaGroup5 = ChatObject.isChannelAndNotMegaGroup(chat20);
                                                TLRPC.TL_messageActionGiveawayResults tL_messageActionGiveawayResults = (TLRPC.TL_messageActionGiveawayResults) this.messageOwner.action;
                                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                                boolean z4 = tL_messageActionGiveawayResults.stars;
                                                int i16 = tL_messageActionGiveawayResults.winners_count;
                                                if (z4) {
                                                    spannableStringBuilder.append((CharSequence) LocaleController.formatPluralStringComma("BoostingStarsGiveawayServiceWinnersSelected", i16));
                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                        spannableStringBuilder.append((CharSequence) "\n");
                                                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString(zIsChannelAndNotMegaGroup5 ? "BoostingStarsGiveawayServiceUndistributed" : "BoostingStarsGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]));
                                                    }
                                                } else {
                                                    spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("BoostingGiveawayServiceWinnersSelected", i16, new Object[0]));
                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                        spannableStringBuilder.append((CharSequence) "\n");
                                                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString(zIsChannelAndNotMegaGroup5 ? "BoostingGiveawayServiceUndistributed" : "BoostingGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]));
                                                    }
                                                }
                                                this.messageText = spannableStringBuilder;
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionPrizeStars) {
                                            TLRPC.TL_messageActionPrizeStars tL_messageActionPrizeStars = (TLRPC.TL_messageActionPrizeStars) messageAction3;
                                            this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionStarGiveawayPrize", (int) tL_messageActionPrizeStars.stars)), "un1", getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(tL_messageActionPrizeStars.boost_peer)));
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionStarGift) {
                                            TLRPC.TL_messageActionStarGift tL_messageActionStarGift = (TLRPC.TL_messageActionStarGift) messageAction3;
                                            if (tL_messageActionStarGift.prepaid_upgrade) {
                                                i4 = (int) tL_messageActionStarGift.upgrade_stars;
                                            } else {
                                                TL_stars.StarGift starGift = tL_messageActionStarGift.gift;
                                                i4 = starGift != null ? (int) starGift.stars : 0;
                                                if (!tL_messageActionStarGift.upgrade_separate) {
                                                    i4 += (int) tL_messageActionStarGift.upgrade_stars;
                                                }
                                            }
                                            TLRPC.Peer peer8 = tL_messageActionStarGift.peer;
                                            boolean z5 = peer8 != null && DialogObject.getPeerDialogId(peer8) < 0;
                                            TLRPC.User user15 = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                            if (!tL_messageActionStarGift.prepaid_upgrade && (peer = tL_messageActionStarGift.from_id) != null) {
                                                long peerDialogId2 = DialogObject.getPeerDialogId(peer);
                                                if (peerDialogId2 >= 0) {
                                                    chat14 = getUser(abstractMap, longSparseArray, peerDialogId2);
                                                } else {
                                                    chat14 = getChat(abstractMap2, longSparseArray2, -peerDialogId2);
                                                }
                                            }
                                            TLRPC.Peer peer9 = tL_messageActionStarGift.peer;
                                            if (peer9 != null) {
                                                long peerDialogId3 = DialogObject.getPeerDialogId(peer9);
                                                if (peerDialogId3 >= 0) {
                                                    chat9 = getUser(abstractMap, longSparseArray, peerDialogId3);
                                                } else {
                                                    chat9 = getChat(abstractMap2, longSparseArray2, -peerDialogId3);
                                                }
                                            } else {
                                                chat9 = null;
                                            }
                                            if (tL_messageActionStarGift.prepaid_upgrade) {
                                                if ((chat14 instanceof TLRPC.User) && ((TLRPC.User) chat14).self && !tL_messageActionStarGift.forceIn) {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionPrepaidGiftOutbound)), "un1", user15);
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionPrepaidGiftInbound)), "un1", chat14);
                                                }
                                            } else if (UserObject.isService(getDialogId()) && tL_messageActionStarGift.from_id == null) {
                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(tL_messageActionStarGift.auction_acquired ? C2807R.string.ActionGiftAuctionSelf : C2807R.string.ActionGiftSomeone));
                                                this.messageTextShort = LocaleController.getString(C2807R.string.ActionStarGift);
                                            } else if (z5) {
                                                SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionGiftChannel", i4));
                                                this.messageText = spannableStringBuilderReplaceTags;
                                                CharSequence charSequenceReplaceWithLink11 = replaceWithLink(spannableStringBuilderReplaceTags, "un1", chat14);
                                                this.messageText = charSequenceReplaceWithLink11;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink11, "un2", chat9);
                                                this.messageTextShort = LocaleController.getString(C2807R.string.ActionStarGift);
                                            } else if (UserObject.isUserSelf(user15)) {
                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(tL_messageActionStarGift.auction_acquired ? C2807R.string.ActionGiftAuctionSelf : C2807R.string.ActionGiftSelf));
                                                this.messageTextShort = LocaleController.getString(C2807R.string.ActionStarGift);
                                            } else {
                                                boolean z6 = chat14 instanceof TLRPC.User;
                                                if (z6 && ((TLRPC.User) chat14).self && !tL_messageActionStarGift.forceIn) {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftOutbound)), "un1", user15);
                                                    TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                                                    if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                        addEntitiesToText(spannableStringBuilder2, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                        this.messageTextShort = spannableStringBuilder2;
                                                    } else {
                                                        this.messageTextShort = LocaleController.getString(C2807R.string.ActionStarGift);
                                                    }
                                                } else if (z6 && UserObject.isService(((TLRPC.User) chat14).id)) {
                                                    this.messageText = TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(C2807R.string.StarsTransactionUnknown)});
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftInbound)), "un1", chat14);
                                                    TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageActionStarGift.message;
                                                    if (tL_textWithEntities3 != null && !TextUtils.isEmpty(tL_textWithEntities3.text)) {
                                                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                        addEntitiesToText(spannableStringBuilder3, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                        this.messageTextShort = spannableStringBuilder3;
                                                    } else {
                                                        this.messageTextShort = LocaleController.getString(C2807R.string.ActionStarGift);
                                                    }
                                                }
                                            }
                                            int iIndexOf = this.messageText.toString().indexOf("un2");
                                            if (iIndexOf != -1) {
                                                this.messageText = SpannableStringBuilder.valueOf(this.messageText).replace(iIndexOf, iIndexOf + 3, (CharSequence) LocaleController.formatPluralStringComma("Gift2StarsCount", i4));
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionStarGiftUnique) {
                                            TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction3;
                                            TLRPC.User user16 = getUser(abstractMap, longSparseArray, getDialogId());
                                            TL_stars.StarsAmount starsAmount = tL_messageActionStarGiftUnique.resale_amount;
                                            if (starsAmount != null) {
                                                AmountUtils$Amount amountUtils$AmountOfSafe = AmountUtils$Amount.ofSafe(starsAmount);
                                                long dialogId = getDialogId();
                                                TLRPC.Peer peer10 = tL_messageActionStarGiftUnique.from_id;
                                                if (peer10 != null) {
                                                    dialogId = DialogObject.getPeerDialogId(peer10);
                                                }
                                                if (dialogId >= 0) {
                                                    chat7 = getUser(abstractMap, longSparseArray, dialogId);
                                                } else {
                                                    chat7 = getChat(abstractMap2, longSparseArray2, -dialogId);
                                                }
                                                if (tL_messageActionStarGiftUnique.craft) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionUniqueGiftCrafted));
                                                } else {
                                                    TLRPC.Peer peer11 = tL_messageActionStarGiftUnique.peer;
                                                    if (peer11 != null) {
                                                        long peerDialogId4 = DialogObject.getPeerDialogId(peer11);
                                                        if (peerDialogId4 >= 0) {
                                                            chat8 = getUser(abstractMap, longSparseArray, peerDialogId4);
                                                        } else {
                                                            chat8 = getChat(abstractMap2, longSparseArray2, -peerDialogId4);
                                                        }
                                                        if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                            this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.ActionUniqueGiftResaleServiceTON, amountUtils$AmountOfSafe.asFormatString()));
                                                        } else {
                                                            this.messageText = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionUniqueGiftResaleService", (int) amountUtils$AmountOfSafe.asDecimal()));
                                                        }
                                                        CharSequence charSequenceReplaceWithLink12 = replaceWithLink(this.messageText, "un1", chat7);
                                                        this.messageText = charSequenceReplaceWithLink12;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink12, "un2", chat8);
                                                    } else {
                                                        if (tL_messageActionStarGiftUnique.from_offer) {
                                                            if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(isOutOwner() ? C2807R.string.ActionUniqueGiftResaleSoldOutboundTON : C2807R.string.ActionUniqueGiftResaleOutboundTON, amountUtils$AmountOfSafe.asFormatString()));
                                                            } else {
                                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(isOutOwner() ? "ActionUniqueGiftResaleSoldOutbound" : "ActionUniqueGiftResaleOutbound", (int) amountUtils$AmountOfSafe.asDecimal()));
                                                            }
                                                        } else if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                            this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(isOutOwner() ? C2807R.string.ActionUniqueGiftResaleOutboundTON : C2807R.string.ActionUniqueGiftResaleInboundTON, amountUtils$AmountOfSafe.asFormatString())), "un1", chat7);
                                                        } else {
                                                            this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(isOutOwner() ? "ActionUniqueGiftResaleOutbound" : "ActionUniqueGiftResaleInbound", (int) amountUtils$AmountOfSafe.asDecimal())), "un1", chat7);
                                                        }
                                                    }
                                                }
                                            } else if (tL_messageActionStarGiftUnique.upgrade) {
                                                TLRPC.Peer peer12 = tL_messageActionStarGiftUnique.peer;
                                                if (peer12 != null) {
                                                    long peerDialogId5 = DialogObject.getPeerDialogId(peer12);
                                                    if (peerDialogId5 >= 0) {
                                                        chat6 = getUser(abstractMap, longSparseArray, peerDialogId5);
                                                    } else {
                                                        chat6 = getChat(abstractMap2, longSparseArray2, -peerDialogId5);
                                                    }
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionUniqueGiftUpgradeInboundChannel)), "un1", chat6);
                                                } else if (UserObject.isUserSelf(user16)) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionUniqueGiftUpgradeSelf));
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(isOutOwner() ? C2807R.string.ActionUniqueGiftUpgradeOutbound : C2807R.string.ActionUniqueGiftUpgradeInbound)), "un1", user16);
                                                }
                                            } else {
                                                long dialogId2 = getDialogId();
                                                TLRPC.Peer peer13 = tL_messageActionStarGiftUnique.from_id;
                                                if (peer13 != null) {
                                                    dialogId2 = DialogObject.getPeerDialogId(peer13);
                                                }
                                                if (dialogId2 >= 0) {
                                                    chat4 = getUser(abstractMap, longSparseArray, dialogId2);
                                                } else {
                                                    chat4 = getChat(abstractMap2, longSparseArray2, -dialogId2);
                                                }
                                                if (tL_messageActionStarGiftUnique.craft) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionUniqueGiftCrafted));
                                                } else {
                                                    TLRPC.Peer peer14 = tL_messageActionStarGiftUnique.peer;
                                                    if (peer14 != null) {
                                                        long peerDialogId6 = DialogObject.getPeerDialogId(peer14);
                                                        if (peerDialogId6 >= 0) {
                                                            chat5 = getUser(abstractMap, longSparseArray, peerDialogId6);
                                                        } else {
                                                            chat5 = getChat(abstractMap2, longSparseArray2, -peerDialogId6);
                                                        }
                                                        SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionUniqueGiftTransferService));
                                                        this.messageText = spannableStringBuilderReplaceTags2;
                                                        CharSequence charSequenceReplaceWithLink13 = replaceWithLink(spannableStringBuilderReplaceTags2, "un1", chat4);
                                                        this.messageText = charSequenceReplaceWithLink13;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink13, "un2", chat5);
                                                    } else if (tL_messageActionStarGiftUnique.assigned) {
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.ActionUniqueGiftTransferOutboundAssigned, tL_messageActionStarGiftUnique.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftUnique.gift.num, ','))), "un1", chat4);
                                                    } else {
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(isOutOwner() ? C2807R.string.ActionUniqueGiftTransferOutbound : C2807R.string.ActionUniqueGiftTransferInbound)), "un1", chat4);
                                                    }
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiftStars) {
                                            boolean z7 = chat14 instanceof TLRPC.User;
                                            if (z7 && ((TLRPC.User) chat14).self) {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, message3.peer_id.user_id));
                                            } else if (z7 && UserObject.isService(((TLRPC.User) chat14).id)) {
                                                this.messageText = TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(C2807R.string.StarsTransactionUnknown)});
                                            } else {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftInbound)), "un1", chat14);
                                            }
                                            int iIndexOf2 = this.messageText.toString().indexOf("un2");
                                            if (iIndexOf2 != -1) {
                                                SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(this.messageText);
                                                BillingController billingController = BillingController.getInstance();
                                                TLRPC.MessageAction messageAction4 = this.messageOwner.action;
                                                String currency = billingController.formatCurrency(messageAction4.amount, messageAction4.currency);
                                                if ((this.messageOwner.action.flags & 1) != 0) {
                                                    currency = String.format("%.2f", Double.valueOf(this.messageOwner.action.cryptoAmount * Math.pow(10.0d, -9.0d))) + " " + this.messageOwner.action.cryptoCurrency + " (~ " + ((Object) currency) + ")";
                                                }
                                                this.messageText = spannableStringBuilderValueOf.replace(iIndexOf2, iIndexOf2 + 3, (CharSequence) currency);
                                            }
                                        } else if ((messageAction3 instanceof TLRPC.TL_messageActionGiftCode) && ((TLRPC.TL_messageActionGiftCode) messageAction3).boost_peer != null) {
                                            this.messageText = LocaleController.getString(C2807R.string.BoostingReceivedGiftNoName);
                                        } else {
                                            TLRPC.Chat chat21 = chat;
                                            if (TlUtils.isInstance(messageAction3, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionGiftCode.class, TLRPC.TL_messageActionGiftTon.class)) {
                                                if ((chat14 instanceof TLRPC.User) && ((TLRPC.User) chat14).self) {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id));
                                                } else if (this.messageOwner.action instanceof TLRPC.TL_messageActionGiftTon) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftTonInbound));
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionGiftInbound)), "un1", chat14);
                                                }
                                                int iIndexOf3 = this.messageText.toString().indexOf("un2");
                                                if (iIndexOf3 != -1) {
                                                    SpannableStringBuilder spannableStringBuilderValueOf2 = SpannableStringBuilder.valueOf(this.messageText);
                                                    BillingController billingController2 = BillingController.getInstance();
                                                    TLRPC.MessageAction messageAction5 = this.messageOwner.action;
                                                    String currency2 = billingController2.formatCurrency(messageAction5.amount, messageAction5.currency);
                                                    if ((this.messageOwner.action.flags & 1) != 0) {
                                                        currency2 = String.format("%.2f", Double.valueOf(this.messageOwner.action.cryptoAmount * Math.pow(10.0d, -9.0d))) + " " + this.messageOwner.action.cryptoCurrency + " (~ " + ((Object) currency2) + ")";
                                                    }
                                                    this.messageText = spannableStringBuilderValueOf2.replace(iIndexOf3, iIndexOf3 + 3, (CharSequence) currency2);
                                                }
                                                this.messageText = StarsIntroActivity.replaceStars(this.messageText);
                                            } else {
                                                TLRPC.Message message4 = this.messageOwner;
                                                TLRPC.MessageAction messageAction6 = message4.action;
                                                if (messageAction6 instanceof TLRPC.TL_messageActionSuggestBirthday) {
                                                    if (isOutOwner()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.ActionYouSuggestBirthday);
                                                    } else {
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.ActionSuggestBirthday)), "un1", chat14);
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                                                    TLRPC.Photo photo = messageAction6.photo;
                                                    if (photo != null && (arrayList = photo.video_sizes) != null && !arrayList.isEmpty()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.ActionSuggestVideoShort);
                                                    } else {
                                                        this.messageText = LocaleController.getString(C2807R.string.ActionSuggestPhotoShort);
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditPhoto) {
                                                    TLRPC.Peer peer15 = message4.peer_id;
                                                    if (peer15 != null) {
                                                        long j6 = peer15.channel_id;
                                                        TLRPC.Chat chat22 = j6 != 0 ? getChat(abstractMap2, longSparseArray2, j6) : null;
                                                        if (ChatObject.isChannel(chat22) && !chat22.megagroup) {
                                                            if (isVideoAvatar()) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionChannelChangedVideo);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionChannelChangedPhoto);
                                                            }
                                                        } else if (isOut()) {
                                                            if (isVideoAvatar()) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionYouChangedVideo);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionYouChangedPhoto);
                                                            }
                                                        } else if (isVideoAvatar()) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionChangedVideo), "un1", chat14);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionChangedPhoto), "un1", chat14);
                                                        }
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditTitle) {
                                                    TLRPC.Peer peer16 = message4.peer_id;
                                                    if (peer16 != null) {
                                                        long j7 = peer16.channel_id;
                                                        TLRPC.Chat chat23 = j7 != 0 ? getChat(abstractMap2, longSparseArray2, j7) : null;
                                                        if (ChatObject.isChannel(chat23) && !chat23.megagroup) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionChannelChangedTitle).replace("un2", this.messageOwner.action.title);
                                                        } else if (isOut()) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionYouChangedTitle).replace("un2", this.messageOwner.action.title);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionChangedTitle).replace("un2", this.messageOwner.action.title), "un1", chat14);
                                                        }
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionChatDeletePhoto) {
                                                    TLRPC.Peer peer17 = message4.peer_id;
                                                    if (peer17 != null) {
                                                        long j8 = peer17.channel_id;
                                                        TLRPC.Chat chat24 = j8 != 0 ? getChat(abstractMap2, longSparseArray2, j8) : null;
                                                        if (ChatObject.isChannel(chat24) && !chat24.megagroup) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionChannelRemovedPhoto);
                                                        } else if (isOut()) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionYouRemovedPhoto);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionRemovedPhoto), "un1", chat14);
                                                        }
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionTTLChange) {
                                                    if (messageAction6.ttl != 0) {
                                                        if (isOut()) {
                                                            this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(this.messageOwner.action.ttl));
                                                        } else {
                                                            this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(this.messageOwner.action.ttl));
                                                        }
                                                    } else if (isOut()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.MessageLifetimeYouRemoved);
                                                    } else {
                                                        this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                    }
                                                } else {
                                                    String str5 = ", ";
                                                    if (messageAction6 instanceof TLRPC.TL_messageActionRequestedPeer) {
                                                        ArrayList arrayList4 = new ArrayList();
                                                        ArrayList<TLRPC.Peer> arrayList5 = ((TLRPC.TL_messageActionRequestedPeer) this.messageOwner.action).peers;
                                                        int size = arrayList5.size();
                                                        int i17 = 0;
                                                        int i18 = 0;
                                                        int i19 = 0;
                                                        int i20 = 0;
                                                        while (i20 < size) {
                                                            TLRPC.Peer peer18 = arrayList5.get(i20);
                                                            i20++;
                                                            TLRPC.Peer peer19 = peer18;
                                                            ArrayList<TLRPC.Peer> arrayList6 = arrayList5;
                                                            boolean z8 = peer19 instanceof TLRPC.TL_peerUser;
                                                            if (z8) {
                                                                z = z8;
                                                                str3 = str5;
                                                                i3 = i19;
                                                                chat3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer19.user_id));
                                                                if (chat3 == null) {
                                                                    chat3 = getUser(abstractMap, longSparseArray, peer19.user_id);
                                                                }
                                                            } else {
                                                                z = z8;
                                                                str3 = str5;
                                                                i3 = i19;
                                                                if (peer19 instanceof TLRPC.TL_peerChat) {
                                                                    chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer19.chat_id));
                                                                    if (chat3 == null) {
                                                                        chat3 = getChat(abstractMap2, longSparseArray2, peer19.chat_id);
                                                                    }
                                                                } else if (peer19 instanceof TLRPC.TL_peerChannel) {
                                                                    chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer19.channel_id));
                                                                    if (chat3 == null) {
                                                                        chat3 = getChat(abstractMap2, longSparseArray2, peer19.channel_id);
                                                                    }
                                                                } else {
                                                                    chat3 = null;
                                                                }
                                                            }
                                                            if (z) {
                                                                i17++;
                                                            } else if (peer19 instanceof TLRPC.TL_peerChat) {
                                                                i19 = i3 + 1;
                                                                if (chat3 == null) {
                                                                    arrayList4.add(chat3);
                                                                }
                                                                arrayList5 = arrayList6;
                                                                str5 = str3;
                                                            } else {
                                                                i18++;
                                                            }
                                                            i19 = i3;
                                                            if (chat3 == null) {
                                                            }
                                                            arrayList5 = arrayList6;
                                                            str5 = str3;
                                                        }
                                                        String str6 = str5;
                                                        int i21 = i19;
                                                        if (i17 > 0 && i17 != arrayList4.size()) {
                                                            this.messageText = LocaleController.getPluralString("ActionRequestedPeerUserPlural", i17);
                                                        } else if (i18 > 0 && i18 != arrayList4.size()) {
                                                            this.messageText = LocaleController.getPluralString("ActionRequestedPeerChannelPlural", i18);
                                                        } else if (i21 > 0 && i21 != arrayList4.size()) {
                                                            this.messageText = LocaleController.getPluralString("ActionRequestedPeerChatPlural", i21);
                                                        } else {
                                                            SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                                                            int i22 = 0;
                                                            while (i22 < arrayList4.size()) {
                                                                spannableStringBuilder4.append(replaceWithLink("un1", "un1", (TLObject) arrayList4.get(i22)));
                                                                String str7 = str6;
                                                                if (i22 < arrayList4.size() - 1) {
                                                                    spannableStringBuilder4.append((CharSequence) str7);
                                                                }
                                                                i22++;
                                                                str6 = str7;
                                                            }
                                                            this.messageText = AndroidUtilities.replaceCharSequence("un1", LocaleController.getString(C2807R.string.ActionRequestedPeer), spannableStringBuilder4);
                                                        }
                                                        TLRPC.User user17 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()));
                                                        if (user17 == null) {
                                                            user17 = getUser(abstractMap, longSparseArray, getDialogId());
                                                        }
                                                        this.messageText = replaceWithLink(this.messageText, "un2", user17);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionSetMessagesTTL) {
                                                        TLRPC.TL_messageActionSetMessagesTTL tL_messageActionSetMessagesTTL = (TLRPC.TL_messageActionSetMessagesTTL) messageAction6;
                                                        TLRPC.Peer peer20 = message4.peer_id;
                                                        if (peer20 != null) {
                                                            long j9 = peer20.channel_id;
                                                            TLRPC.Chat chat25 = j9 != 0 ? getChat(abstractMap2, longSparseArray2, j9) : null;
                                                            if (chat25 != null && !chat25.megagroup) {
                                                                int i23 = tL_messageActionSetMessagesTTL.period;
                                                                if (i23 != 0) {
                                                                    this.messageText = LocaleController.formatString(C2807R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i23));
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2807R.string.ActionTTLChannelDisabled);
                                                                }
                                                            } else {
                                                                long j10 = tL_messageActionSetMessagesTTL.auto_setting_from;
                                                                if (j10 != 0) {
                                                                    this.drawServiceWithDefaultTypeface = true;
                                                                    if (j10 == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                                        this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.AutoDeleteGlobalActionFromYou, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period)));
                                                                    } else {
                                                                        TLRPC.Chat chat26 = longSparseArray != null ? longSparseArray.get(tL_messageActionSetMessagesTTL.auto_setting_from) : null;
                                                                        if (chat26 == null && abstractMap != null) {
                                                                            chat26 = abstractMap.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                        }
                                                                        if (chat26 == null && abstractMap2 != null) {
                                                                            chat26 = abstractMap2.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                        }
                                                                        if (chat26 == null) {
                                                                            long j11 = tL_messageActionSetMessagesTTL.auto_setting_from;
                                                                            int i24 = this.currentAccount;
                                                                            if (j11 > 0) {
                                                                                chat26 = MessagesController.getInstance(i24).getUser(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                            } else {
                                                                                chat26 = MessagesController.getInstance(i24).getChat(Long.valueOf(-tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                            }
                                                                        }
                                                                        if (chat26 != null) {
                                                                            chat14 = chat26;
                                                                        }
                                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.AutoDeleteGlobalAction, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period))), "un1", chat14);
                                                                    }
                                                                } else if (tL_messageActionSetMessagesTTL.period != 0) {
                                                                    boolean zIsOut = isOut();
                                                                    int i25 = tL_messageActionSetMessagesTTL.period;
                                                                    if (zIsOut) {
                                                                        this.messageText = LocaleController.formatString(C2807R.string.ActionTTLYouChanged, LocaleController.formatTTLString(i25));
                                                                    } else {
                                                                        this.messageText = replaceWithLink(LocaleController.formatString(C2807R.string.ActionTTLChanged, LocaleController.formatTTLString(i25)), "un1", chat14);
                                                                    }
                                                                } else if (isOut()) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.ActionTTLYouDisabled);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionTTLDisabled), "un1", chat14);
                                                                }
                                                            }
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                                                        long j12 = ((long) message4.date) * 1000;
                                                        if (LocaleController.getInstance().getFormatterDay() == null || LocaleController.getInstance().getFormatterYear() == null) {
                                                            str = str2;
                                                            string2 = str + this.messageOwner.date;
                                                        } else {
                                                            string2 = LocaleController.formatString(C2807R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(j12), LocaleController.getInstance().getFormatterDay().format(j12));
                                                            str = str2;
                                                        }
                                                        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                                                        if (currentUser == null) {
                                                            currentUser = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                                        }
                                                        String firstName2 = currentUser != null ? UserObject.getFirstName(currentUser) : str;
                                                        int i26 = C2807R.string.NotificationUnrecognizedDevice;
                                                        TLRPC.MessageAction messageAction7 = this.messageOwner.action;
                                                        this.messageText = LocaleController.formatString(i26, firstName2, string2, messageAction7.title, messageAction7.address);
                                                    } else {
                                                        str = str2;
                                                        if ((messageAction6 instanceof TLRPC.TL_messageActionUserJoined) || (messageAction6 instanceof TLRPC.TL_messageActionContactSignUp)) {
                                                            this.messageText = LocaleController.formatString(C2807R.string.NotificationContactJoined, UserObject.getUserName(user));
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                                                            this.messageText = LocaleController.formatString(C2807R.string.NotificationContactNewPhoto, UserObject.getUserName(user));
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageEncryptedAction) {
                                                            TLRPC.DecryptedMessageAction decryptedMessageAction = messageAction6.encryptedAction;
                                                            if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages) {
                                                                if (isOut()) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.ActionTakeScreenshootYou);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionTakeScreenshoot), "un1", chat14);
                                                                }
                                                            } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL) {
                                                                TLRPC.TL_decryptedMessageActionSetMessageTTL tL_decryptedMessageActionSetMessageTTL = (TLRPC.TL_decryptedMessageActionSetMessageTTL) decryptedMessageAction;
                                                                if (tL_decryptedMessageActionSetMessageTTL.ttl_seconds != 0) {
                                                                    if (isOut()) {
                                                                        this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds));
                                                                    } else {
                                                                        this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds));
                                                                    }
                                                                } else if (isOut()) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.MessageLifetimeYouRemoved);
                                                                } else {
                                                                    this.messageText = LocaleController.formatString(C2807R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                                }
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionScreenshotTaken) {
                                                            if (isOut()) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionTakeScreenshootYou);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.ActionTakeScreenshoot), "un1", chat14);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionCreatedBroadcastList) {
                                                            this.messageText = LocaleController.getString(C2807R.string.YouCreatedBroadcastList);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChannelCreate) {
                                                            TLRPC.Peer peer21 = message4.peer_id;
                                                            if (peer21 != null) {
                                                                long j13 = peer21.channel_id;
                                                                TLRPC.Chat chat27 = j13 != 0 ? getChat(abstractMap2, longSparseArray2, j13) : null;
                                                                if (ChatObject.isChannel(chat27) && chat27.megagroup) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.ActionCreateMega);
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2807R.string.ActionCreateChannel);
                                                                }
                                                            }
                                                        } else if ((messageAction6 instanceof TLRPC.TL_messageActionChatMigrateTo) || (messageAction6 instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionMigrateFromGroup);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPinMessage) {
                                                            generatePinMessageText(user, user == null ? getChat(abstractMap2, longSparseArray2, message4.peer_id.channel_id) : null);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionHistoryClear) {
                                                            this.messageText = LocaleController.getString(C2807R.string.HistoryCleared);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionTopicCreate) {
                                                            this.messageText = LocaleController.getString(C2807R.string.TopicCreated);
                                                            TLRPC.TL_messageActionTopicCreate tL_messageActionTopicCreate = (TLRPC.TL_messageActionTopicCreate) this.messageOwner.action;
                                                            TLRPC.TL_forumTopic tL_forumTopic = new TLRPC.TL_forumTopic();
                                                            tL_forumTopic.icon_emoji_id = tL_messageActionTopicCreate.icon_emoji_id;
                                                            tL_forumTopic.title = tL_messageActionTopicCreate.title;
                                                            tL_forumTopic.icon_color = tL_messageActionTopicCreate.icon_color;
                                                            this.messageTextShort = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.TopicWasCreatedAction), ForumUtilities.getTopicSpannedName(tL_forumTopic, null, false));
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionTopicEdit) {
                                                            TLRPC.TL_messageActionTopicEdit tL_messageActionTopicEdit = (TLRPC.TL_messageActionTopicEdit) messageAction6;
                                                            if (user != null) {
                                                                name = ContactsController.formatName(user.first_name, user.last_name);
                                                            } else if (chat21 != null) {
                                                                name = chat21.title;
                                                                user = chat21;
                                                            } else {
                                                                name = null;
                                                                user = null;
                                                            }
                                                            if (name != null) {
                                                                strTrim = name.trim();
                                                            } else {
                                                                strTrim = "DELETED";
                                                            }
                                                            TLRPC.MessageAction messageAction8 = this.messageOwner.action;
                                                            int i27 = messageAction8.flags;
                                                            if ((i27 & 8) > 0) {
                                                                if (((TLRPC.TL_messageActionTopicEdit) messageAction8).hidden) {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.TopicHidden2), "%s", user);
                                                                    this.messageTextShort = LocaleController.getString(C2807R.string.TopicHidden);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.TopicShown2), "%s", user);
                                                                    this.messageTextShort = LocaleController.getString(C2807R.string.TopicShown);
                                                                }
                                                            } else if ((i27 & 4) > 0) {
                                                                if (((TLRPC.TL_messageActionTopicEdit) messageAction8).closed) {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.TopicClosed2), "%s", user);
                                                                    this.messageTextShort = LocaleController.getString(C2807R.string.TopicClosed);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.TopicRestarted2), "%s", user);
                                                                    this.messageTextShort = LocaleController.getString(C2807R.string.TopicRestarted);
                                                                }
                                                            } else if ((i27 & 2) != 0 && (i27 & 1) != 0) {
                                                                TLRPC.TL_forumTopic tL_forumTopic2 = new TLRPC.TL_forumTopic();
                                                                tL_forumTopic2.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                                tL_forumTopic2.title = tL_messageActionTopicEdit.title;
                                                                tL_forumTopic2.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                                CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopic2, null, this.topicIconDrawable, false);
                                                                this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2807R.string.TopicChangeIconAndTitleTo), strTrim), topicSpannedName);
                                                                this.messageTextShort = LocaleController.getString(C2807R.string.TopicRenamed);
                                                                this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.TopicChangeIconAndTitleToInReply), topicSpannedName);
                                                            } else if ((i27 & 2) != 0) {
                                                                TLRPC.TL_forumTopic tL_forumTopic3 = new TLRPC.TL_forumTopic();
                                                                tL_forumTopic3.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                                tL_forumTopic3.title = str;
                                                                tL_forumTopic3.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                                CharSequence topicSpannedName2 = ForumUtilities.getTopicSpannedName(tL_forumTopic3, null, this.topicIconDrawable, false);
                                                                this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2807R.string.TopicIconChangedTo), strTrim), topicSpannedName2);
                                                                this.messageTextShort = LocaleController.getString(C2807R.string.TopicIconChanged);
                                                                this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.TopicIconChangedToInReply), topicSpannedName2);
                                                            } else if ((i27 & 1) != 0) {
                                                                this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2807R.string.TopicRenamedTo), strTrim), tL_messageActionTopicEdit.title);
                                                                this.messageTextShort = LocaleController.getString(C2807R.string.TopicRenamed);
                                                                this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.TopicRenamedToInReply), tL_messageActionTopicEdit.title);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionGameScore) {
                                                            generateGameMessageText(user);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionConferenceCall) {
                                                            TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction6;
                                                            if (isOutOwner()) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ConferenceCallOutgoing);
                                                            } else if (tL_messageActionConferenceCall.missed) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ConferenceCallMissed);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2807R.string.ConferenceCallIncoming);
                                                            }
                                                            int i28 = tL_messageActionConferenceCall.duration;
                                                            if (i28 > 0) {
                                                                String callDuration = LocaleController.formatCallDuration(i28);
                                                                String string6 = LocaleController.formatString(C2807R.string.CallMessageWithDuration, this.messageText, callDuration);
                                                                this.messageText = string6;
                                                                String string7 = string6.toString();
                                                                int iIndexOf4 = string7.indexOf(callDuration);
                                                                if (iIndexOf4 != -1) {
                                                                    SpannableString spannableString3 = new SpannableString(this.messageText);
                                                                    int length = callDuration.length() + iIndexOf4;
                                                                    if (iIndexOf4 > 0 && string7.charAt(iIndexOf4 - 1) == '(') {
                                                                        iIndexOf4--;
                                                                    }
                                                                    if (length < string7.length() && string7.charAt(length) == ')') {
                                                                        length++;
                                                                    }
                                                                    spannableString3.setSpan(new TypefaceSpan(Typeface.DEFAULT), iIndexOf4, length, 0);
                                                                    this.messageText = spannableString3;
                                                                }
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPhoneCall) {
                                                            TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction6;
                                                            boolean z9 = tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonMissed;
                                                            if (isFromUser() && this.messageOwner.from_id.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                                boolean z10 = tL_messageActionPhoneCall.video;
                                                                if (z9) {
                                                                    if (z10) {
                                                                        this.messageText = LocaleController.getString(C2807R.string.CallMessageVideoOutgoingMissed);
                                                                    } else {
                                                                        this.messageText = LocaleController.getString(C2807R.string.CallMessageOutgoingMissed);
                                                                    }
                                                                } else if (z10) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageVideoOutgoing);
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageOutgoing);
                                                                }
                                                            } else if (z9) {
                                                                if (tL_messageActionPhoneCall.video) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageVideoIncomingMissed);
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageIncomingMissed);
                                                                }
                                                            } else {
                                                                boolean z11 = tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonBusy;
                                                                boolean z12 = tL_messageActionPhoneCall.video;
                                                                if (z11) {
                                                                    if (z12) {
                                                                        this.messageText = LocaleController.getString(C2807R.string.CallMessageVideoIncomingDeclined);
                                                                    } else {
                                                                        this.messageText = LocaleController.getString(C2807R.string.CallMessageIncomingDeclined);
                                                                    }
                                                                } else if (z12) {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageVideoIncoming);
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2807R.string.CallMessageIncoming);
                                                                }
                                                            }
                                                            int i29 = tL_messageActionPhoneCall.duration;
                                                            if (i29 > 0) {
                                                                String callDuration2 = LocaleController.formatCallDuration(i29);
                                                                String string8 = LocaleController.formatString(C2807R.string.CallMessageWithDuration, this.messageText, callDuration2);
                                                                this.messageText = string8;
                                                                String string9 = string8.toString();
                                                                int iIndexOf5 = string9.indexOf(callDuration2);
                                                                if (iIndexOf5 != -1) {
                                                                    SpannableString spannableString4 = new SpannableString(this.messageText);
                                                                    int length2 = callDuration2.length() + iIndexOf5;
                                                                    if (iIndexOf5 > 0 && string9.charAt(iIndexOf5 - 1) == '(') {
                                                                        iIndexOf5--;
                                                                    }
                                                                    if (length2 < string9.length() && string9.charAt(length2) == ')') {
                                                                        length2++;
                                                                    }
                                                                    spannableString4.setSpan(new TypefaceSpan(Typeface.DEFAULT), iIndexOf5, length2, 0);
                                                                    this.messageText = spannableString4;
                                                                }
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaymentSent) {
                                                            generatePaymentSentMessageText(getUser(abstractMap, longSparseArray, getDialogId()), false);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaymentSentMe) {
                                                            generatePaymentSentMessageText(getUser(abstractMap, longSparseArray, getDialogId()), true);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionBotAllowed) {
                                                            String str8 = ((TLRPC.TL_messageActionBotAllowed) messageAction6).domain;
                                                            TLRPC.BotApp botApp = ((TLRPC.TL_messageActionBotAllowed) messageAction6).app;
                                                            if (((TLRPC.TL_messageActionBotAllowed) messageAction6).from_request) {
                                                                this.messageText = LocaleController.getString(C2807R.string.ActionBotAllowedWebapp);
                                                            } else if (botApp != null) {
                                                                String str9 = botApp.title;
                                                                String str10 = str9 == null ? str : str9;
                                                                String string10 = LocaleController.getString(C2807R.string.ActionBotAllowedApp);
                                                                int iIndexOf6 = string10.indexOf("%1$s");
                                                                SpannableString spannableString5 = new SpannableString(String.format(string10, str10));
                                                                TLRPC.User user18 = getUser(abstractMap, longSparseArray, getDialogId());
                                                                if (iIndexOf6 >= 0 && user18 != null && (publicUsername2 = UserObject.getPublicUsername(user18)) != null) {
                                                                    spannableString5.setSpan(new URLSpanNoUnderlineBold("https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername2 + "/" + botApp.short_name), iIndexOf6, str10.length() + iIndexOf6, 33);
                                                                }
                                                                this.messageText = spannableString5;
                                                            } else {
                                                                if (str8 == null) {
                                                                    str8 = str;
                                                                }
                                                                String string11 = LocaleController.getString(C2807R.string.ActionBotAllowed);
                                                                int iIndexOf7 = string11.indexOf("%1$s");
                                                                SpannableString spannableString6 = new SpannableString(String.format(string11, str8));
                                                                if (iIndexOf7 >= 0 && !TextUtils.isEmpty(str8)) {
                                                                    spannableString6.setSpan(new URLSpanNoUnderlineBold(AndroidUtilities.defaultUrlScheme(str8) + str8), iIndexOf7, str8.length() + iIndexOf7, 33);
                                                                }
                                                                this.messageText = spannableString6;
                                                            }
                                                        } else if ((messageAction6 instanceof TLRPC.TL_messageActionAttachMenuBotAllowed) || ((messageAction6 instanceof TLRPC.TL_messageActionBotAllowed) && ((TLRPC.TL_messageActionBotAllowed) messageAction6).attach_menu)) {
                                                            this.messageText = LocaleController.getString(C2807R.string.ActionAttachMenuBotAllowed);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionSecureValuesSent) {
                                                            TLRPC.TL_messageActionSecureValuesSent tL_messageActionSecureValuesSent = (TLRPC.TL_messageActionSecureValuesSent) messageAction6;
                                                            StringBuilder sb = new StringBuilder();
                                                            int size2 = tL_messageActionSecureValuesSent.types.size();
                                                            for (int i30 = 0; i30 < size2; i30++) {
                                                                TLRPC.SecureValueType secureValueType = tL_messageActionSecureValuesSent.types.get(i30);
                                                                if (sb.length() > 0) {
                                                                    sb.append(", ");
                                                                }
                                                                if (secureValueType instanceof TLRPC.TL_secureValueTypePhone) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentPhone));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeEmail) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentEmail));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeAddress) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentAddress));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypePersonalDetails) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentIdentity));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassport) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentPassport));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeDriverLicense) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentDriverLicence));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeIdentityCard) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentIdentityCard));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeUtilityBill) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentUtilityBill));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeBankStatement) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentBankStatement));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeRentalAgreement) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentRentalAgreement));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeInternalPassport) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentInternalPassport));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassportRegistration) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentPassportRegistration));
                                                                } else if (secureValueType instanceof TLRPC.TL_secureValueTypeTemporaryRegistration) {
                                                                    sb.append(LocaleController.getString(C2807R.string.ActionBotDocumentTemporaryRegistration));
                                                                }
                                                            }
                                                            TLRPC.Peer peer22 = this.messageOwner.peer_id;
                                                            this.messageText = LocaleController.formatString(C2807R.string.ActionBotDocuments, UserObject.getFirstName(peer22 != null ? getUser(abstractMap, longSparseArray, peer22.user_id) : null), sb.toString());
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionWebViewDataSent) {
                                                            this.messageText = LocaleController.formatString(C2807R.string.ActionBotWebViewData, ((TLRPC.TL_messageActionWebViewDataSent) messageAction6).text);
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                                            TLRPC.ChatTheme chatTheme = ((TLRPC.TL_messageActionSetChatTheme) messageAction6).theme;
                                                            CharSequence themeEmoticonOrGiftTitle = TlUtils.getThemeEmoticonOrGiftTitle(chatTheme);
                                                            if (themeEmoticonOrGiftTitle != null && (chatTheme instanceof TLRPC.TL_chatThemeUniqueGift)) {
                                                                SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(themeEmoticonOrGiftTitle);
                                                                TlUtils.getGiftDocument(((TLRPC.TL_chatThemeUniqueGift) chatTheme).gift);
                                                                themeEmoticonOrGiftTitle = spannableStringBuilder5;
                                                            }
                                                            String firstName3 = UserObject.getFirstName(user);
                                                            boolean z13 = user == null && chat21 != null;
                                                            if (z13) {
                                                                firstName3 = chat21.title;
                                                            }
                                                            boolean zIsUserSelf2 = UserObject.isUserSelf(user);
                                                            if (TextUtils.isEmpty(themeEmoticonOrGiftTitle)) {
                                                                if (zIsUserSelf2) {
                                                                    spannable2 = LocaleController.formatSpannable(C2807R.string.ChatThemeDisabledYou, new Object[0]);
                                                                } else {
                                                                    spannable2 = LocaleController.formatSpannable(z13 ? C2807R.string.ChannelThemeDisabled : C2807R.string.ChatThemeDisabled, firstName3, themeEmoticonOrGiftTitle);
                                                                }
                                                                this.messageText = spannable2;
                                                            } else {
                                                                if (zIsUserSelf2) {
                                                                    spannable = LocaleController.formatSpannable(C2807R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle);
                                                                } else {
                                                                    spannable = LocaleController.formatSpannable(z13 ? C2807R.string.ChannelThemeChangedTo : C2807R.string.ChatThemeChangedTo, firstName3, themeEmoticonOrGiftTitle);
                                                                }
                                                                this.messageText = spannable;
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                                                            if (UserObject.isUserSelf(user)) {
                                                                if (ChatObject.isChannelAndNotMegaGroup(this.messageOwner.peer_id.channel_id, this.currentAccount)) {
                                                                    string = LocaleController.getString(C2807R.string.RequestToJoinChannelApproved);
                                                                } else {
                                                                    string = LocaleController.getString(C2807R.string.RequestToJoinGroupApproved);
                                                                }
                                                                this.messageText = string;
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.UserAcceptedToGroupAction), "un1", chat14);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesPrice) {
                                                            TLRPC.TL_messageActionPaidMessagesPrice tL_messageActionPaidMessagesPrice = (TLRPC.TL_messageActionPaidMessagesPrice) messageAction6;
                                                            if (ChatObject.isChannel(chat21) && chat21 != null && chat21.broadcast) {
                                                                if ((tL_messageActionPaidMessagesPrice.flags & 1) != 0) {
                                                                    long j14 = tL_messageActionPaidMessagesPrice.stars;
                                                                    if (j14 > 0) {
                                                                        this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PostSuggestionsPriceUpdated", (int) j14), "un1", chat14);
                                                                    } else {
                                                                        this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.PostSuggestionsEnabledUpdated), "un1", chat14);
                                                                    }
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.PostSuggestionsDisabledUpdated), "un1", chat14);
                                                                }
                                                            } else if (isOutOwner()) {
                                                                this.messageText = LocaleController.formatPluralStringComma("PaidMessagesPriceUpdatedOut", (int) tL_messageActionPaidMessagesPrice.stars);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesPriceUpdated", (int) tL_messageActionPaidMessagesPrice.stars), "un1", chat14);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionNoPaidMessagesTokenUsed) {
                                                            if (isOutOwner()) {
                                                                TLRPC.Message message5 = this.messageOwner;
                                                                TLRPC.Peer peer23 = message5.saved_peer_id;
                                                                if (peer23 != null) {
                                                                    user3 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(peer23));
                                                                } else {
                                                                    user3 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message5.peer_id));
                                                                }
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.NoPaidMessagesTokenUsedOut), "un1", user3);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2807R.string.NoPaidMessagesTokenUsed), "un1", chat14);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesRefunded) {
                                                            TLRPC.TL_messageActionPaidMessagesRefunded tL_messageActionPaidMessagesRefunded = (TLRPC.TL_messageActionPaidMessagesRefunded) messageAction6;
                                                            if (isOutOwner()) {
                                                                TLRPC.Message message6 = this.messageOwner;
                                                                TLRPC.Peer peer24 = message6.saved_peer_id;
                                                                if (peer24 != null) {
                                                                    user2 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(peer24));
                                                                } else {
                                                                    user2 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message6.peer_id));
                                                                }
                                                                this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesRefundedOut", (int) tL_messageActionPaidMessagesRefunded.stars), "un1", user2);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesRefunded", (int) tL_messageActionPaidMessagesRefunded.stars), "un1", chat14);
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionTodoCompletions) {
                                                            TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction6;
                                                            boolean zIsEmpty2 = tL_messageActionTodoCompletions.completed.isEmpty();
                                                            int iIntValue = !tL_messageActionTodoCompletions.completed.isEmpty() ? tL_messageActionTodoCompletions.completed.get(0).intValue() : !tL_messageActionTodoCompletions.incompleted.isEmpty() ? tL_messageActionTodoCompletions.incompleted.get(0).intValue() : 0;
                                                            MessageObject messageObject = this.replyMessageObject;
                                                            if (messageObject == null || !(getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaToDo)) {
                                                                todoItem = null;
                                                                if (todoItem != null) {
                                                                    if (isOutOwner()) {
                                                                        this.messageText = LocaleController.getString(!zIsEmpty2 ? C2807R.string.TodoTaskCompletedOutUnknown : C2807R.string.TodoTaskNotCompletedOutUnknown);
                                                                    } else {
                                                                        this.messageText = replaceWithLink(LocaleController.getString(!zIsEmpty2 ? C2807R.string.TodoTaskCompletedUnknown : C2807R.string.TodoTaskNotCompletedUnknown), "un1", chat14);
                                                                    }
                                                                } else {
                                                                    Theme.createCommonChatResources();
                                                                    CharSequence taskTitle = formatTaskTitle(todoItem);
                                                                    if (isOutOwner()) {
                                                                        this.messageText = LocaleController.formatSpannable(!zIsEmpty2 ? C2807R.string.TodoTaskCompletedOut : C2807R.string.TodoTaskNotCompletedOut, taskTitle);
                                                                    } else {
                                                                        this.messageText = replaceWithLink(LocaleController.formatSpannable(!zIsEmpty2 ? C2807R.string.TodoTaskCompleted : C2807R.string.TodoTaskNotCompleted, taskTitle), "un1", chat14);
                                                                    }
                                                                }
                                                            } else {
                                                                TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) getMedia(this.replyMessageObject.messageOwner);
                                                                for (int i31 = 0; i31 < tL_messageMediaToDo.todo.list.size(); i31++) {
                                                                    TLRPC.TodoItem todoItem2 = tL_messageMediaToDo.todo.list.get(i31);
                                                                    if (todoItem2.id == iIntValue) {
                                                                        todoItem = todoItem2;
                                                                        break;
                                                                    }
                                                                }
                                                                todoItem = null;
                                                                if (todoItem != null) {
                                                                }
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionTodoAppendTasks) {
                                                            TLRPC.TL_messageActionTodoAppendTasks tL_messageActionTodoAppendTasks = (TLRPC.TL_messageActionTodoAppendTasks) messageAction6;
                                                            if (isOutOwner()) {
                                                                int size3 = tL_messageActionTodoAppendTasks.list.size();
                                                                ArrayList<TLRPC.TodoItem> arrayList7 = tL_messageActionTodoAppendTasks.list;
                                                                if (size3 == 1) {
                                                                    this.messageText = LocaleController.formatSpannable(C2807R.string.TodoAddedOneTaskOut, formatTaskTitle(arrayList7.get(0)));
                                                                } else {
                                                                    int size4 = arrayList7.size();
                                                                    ArrayList<TLRPC.TodoItem> arrayList8 = tL_messageActionTodoAppendTasks.list;
                                                                    if (size4 == 2) {
                                                                        this.messageText = LocaleController.formatSpannable(C2807R.string.TodoAddedTwoTaskOut, formatTaskTitle(arrayList8.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1)));
                                                                    } else {
                                                                        int size5 = arrayList8.size();
                                                                        ArrayList<TLRPC.TodoItem> arrayList9 = tL_messageActionTodoAppendTasks.list;
                                                                        if (size5 == 3) {
                                                                            this.messageText = LocaleController.formatSpannable(C2807R.string.TodoAddedThreeTaskOut, formatTaskTitle(arrayList9.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(2)));
                                                                        } else if (arrayList9.size() >= 4) {
                                                                            this.messageText = LocaleController.formatPluralSpannable("TodoAddedMoreTasksOut", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(2)));
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                int size6 = tL_messageActionTodoAppendTasks.list.size();
                                                                ArrayList<TLRPC.TodoItem> arrayList10 = tL_messageActionTodoAppendTasks.list;
                                                                if (size6 == 1) {
                                                                    this.messageText = replaceWithLink(LocaleController.formatSpannable(C2807R.string.TodoAddedOneTask, formatTaskTitle(arrayList10.get(0))), "un1", chat14);
                                                                } else {
                                                                    int size7 = arrayList10.size();
                                                                    ArrayList<TLRPC.TodoItem> arrayList11 = tL_messageActionTodoAppendTasks.list;
                                                                    if (size7 == 2) {
                                                                        this.messageText = replaceWithLink(LocaleController.formatSpannable(C2807R.string.TodoAddedTwoTask, formatTaskTitle(arrayList11.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1))), "un1", chat14);
                                                                    } else {
                                                                        int size8 = arrayList11.size();
                                                                        ArrayList<TLRPC.TodoItem> arrayList12 = tL_messageActionTodoAppendTasks.list;
                                                                        if (size8 == 3) {
                                                                            this.messageText = replaceWithLink(LocaleController.formatSpannable(C2807R.string.TodoAddedThreeTask, formatTaskTitle(arrayList12.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(2))), "un1", chat14);
                                                                        } else if (arrayList12.size() >= 4) {
                                                                            this.messageText = replaceWithLink(LocaleController.formatPluralSpannable("TodoAddedMoreTasks", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle(tL_messageActionTodoAppendTasks.list.get(2))), "un1", chat14);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                                                            String monoForumTitle2 = ForumUtilities.getMonoForumTitle(this.currentAccount, DialogObject.getPeerDialogId(message4.peer_id), true);
                                                            if (monoForumTitle2 == null) {
                                                                TLRPC.Chat chat28 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id));
                                                                if (chat28 != null) {
                                                                    long j15 = chat28.linked_monoforum_id;
                                                                    if (j15 != 0 && (chat2 = getChat(abstractMap2, longSparseArray2, j15)) != null) {
                                                                        chat28 = chat2;
                                                                    }
                                                                }
                                                                monoForumTitle2 = DialogObject.getDialogTitle(chat28);
                                                            }
                                                            this.messageText = getActionSuggestionApprovalText(monoForumTitle2, DialogObject.getName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id))));
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
                                                            TLRPC.TL_messageActionStarGiftPurchaseOffer tL_messageActionStarGiftPurchaseOffer = (TLRPC.TL_messageActionStarGiftPurchaseOffer) messageAction6;
                                                            AmountUtils$Amount amountUtils$AmountOfSafe2 = AmountUtils$Amount.ofSafe(tL_messageActionStarGiftPurchaseOffer.price);
                                                            String str11 = tL_messageActionStarGiftPurchaseOffer.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftPurchaseOffer.gift.num, ',');
                                                            String shortName2 = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id)));
                                                            SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder();
                                                            if (amountUtils$AmountOfSafe2.currency == AmountUtils$Currency.STARS) {
                                                                i2 = isOut() ? C2807R.string.GiftOfferOfferedTextStarsOut : C2807R.string.GiftOfferOfferedTextStars2;
                                                            } else {
                                                                i2 = isOut() ? C2807R.string.GiftOfferOfferedTextTONOut : C2807R.string.GiftOfferOfferedTextTON2;
                                                            }
                                                            spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i2, shortName2, amountUtils$AmountOfSafe2.asFormatString(), str11)));
                                                            this.messageText = spannableStringBuilder6;
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionChangeCommunity) {
                                                            TLRPC.TL_messageActionChangeCommunity tL_messageActionChangeCommunity = (TLRPC.TL_messageActionChangeCommunity) messageAction6;
                                                            long peerDialogId7 = DialogObject.getPeerDialogId(message4.peer_id);
                                                            long peerDialogId8 = DialogObject.getPeerDialogId(this.messageOwner.from_id);
                                                            boolean z14 = peerDialogId7 < 0 && ChatObject.isChannelAndNotMegaGroup(getChat(abstractMap2, longSparseArray2, -peerDialogId7));
                                                            boolean z15 = peerDialogId7 > 0;
                                                            String shortName3 = DialogObject.getShortName(getChat(abstractMap2, longSparseArray2, tL_messageActionChangeCommunity.community_id));
                                                            if (peerDialogId8 > 0) {
                                                                shortName = DialogObject.getShortName(getUser(abstractMap, longSparseArray, peerDialogId8));
                                                            } else {
                                                                shortName = DialogObject.getShortName(getChat(abstractMap2, longSparseArray2, -peerDialogId8));
                                                            }
                                                            SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                                            spannableStringBuilder7.append(CommunityUtils.buildServiceMessageText(this, shortName3, shortName, z14, z15));
                                                            this.messageText = spannableStringBuilder7;
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined) {
                                                            TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined tL_messageActionStarGiftPurchaseOfferDeclined = (TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined) messageAction6;
                                                            AmountUtils$Amount amountUtils$AmountOfSafe3 = AmountUtils$Amount.ofSafe(tL_messageActionStarGiftPurchaseOfferDeclined.price);
                                                            String str12 = tL_messageActionStarGiftPurchaseOfferDeclined.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftPurchaseOfferDeclined.gift.num, ',');
                                                            String shortName4 = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id)));
                                                            String strAsFormatString = amountUtils$AmountOfSafe3.asFormatString();
                                                            boolean z16 = tL_messageActionStarGiftPurchaseOfferDeclined.expired;
                                                            AmountUtils$Currency amountUtils$Currency = amountUtils$AmountOfSafe3.currency;
                                                            if (z16) {
                                                                if (amountUtils$Currency == AmountUtils$Currency.STARS) {
                                                                    i = isOut() ? C2807R.string.GiftOfferOfferedTextStarsExpiredOut : C2807R.string.GiftOfferOfferedTextStarsExpired;
                                                                } else {
                                                                    i = isOut() ? C2807R.string.GiftOfferOfferedTextTONExpiredOut : C2807R.string.GiftOfferOfferedTextTONExpired;
                                                                }
                                                            } else if (amountUtils$Currency == AmountUtils$Currency.STARS) {
                                                                i = isOut() ? C2807R.string.GiftOfferOfferedTextStarsRejectedOut : C2807R.string.GiftOfferOfferedTextStarsRejected;
                                                            } else {
                                                                i = isOut() ? C2807R.string.GiftOfferOfferedTextTONRejectedOut : C2807R.string.GiftOfferOfferedTextTONRejected;
                                                            }
                                                            this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(i, shortName4, strAsFormatString, str12));
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPollAppendAnswer) {
                                                            TLRPC.TL_messageActionPollAppendAnswer tL_messageActionPollAppendAnswer = (TLRPC.TL_messageActionPollAppendAnswer) messageAction6;
                                                            if (isOut()) {
                                                                this.messageText = LocaleController.formatSpannable(C2807R.string.PollAddingActionYou, formatTextWithEntities(tL_messageActionPollAppendAnswer.answer.text, isOutOwner()));
                                                            } else {
                                                                this.messageText = LocaleController.formatSpannable(C2807R.string.PollAddingActionOther, DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.from_id))), formatTextWithEntities(tL_messageActionPollAppendAnswer.answer.text, isOutOwner()));
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionPollDeleteAnswer) {
                                                            TLRPC.TL_messageActionPollDeleteAnswer tL_messageActionPollDeleteAnswer = (TLRPC.TL_messageActionPollDeleteAnswer) messageAction6;
                                                            if (isOut()) {
                                                                this.messageText = LocaleController.formatSpannable(C2807R.string.PollRemovedActionYou, formatTextWithEntities(tL_messageActionPollDeleteAnswer.answer.text, isOutOwner()));
                                                            } else {
                                                                this.messageText = LocaleController.formatSpannable(C2807R.string.PollRemovedActionOther, DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.from_id))), formatTextWithEntities(tL_messageActionPollDeleteAnswer.answer.text, isOutOwner()));
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionNoForwardsToggle) {
                                                            TLRPC.TL_messageActionNoForwardsToggle tL_messageActionNoForwardsToggle = (TLRPC.TL_messageActionNoForwardsToggle) messageAction6;
                                                            boolean z17 = tL_messageActionNoForwardsToggle.new_value;
                                                            if (z17 == tL_messageActionNoForwardsToggle.prev_value) {
                                                                this.messageText = LocaleController.getString(z17 ? C2807R.string.DisableSharingActionStillDisabled : C2807R.string.DisableSharingActionStillEnabled);
                                                            } else if (isOut()) {
                                                                this.messageText = LocaleController.getString(tL_messageActionNoForwardsToggle.new_value ? C2807R.string.DisableSharingActionYou : C2807R.string.EnableSharingActionYou);
                                                            } else {
                                                                this.messageText = LocaleController.formatString(tL_messageActionNoForwardsToggle.new_value ? C2807R.string.DisableSharingActionOther : C2807R.string.EnableSharingActionOther, DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id))));
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                                                            String shortName5 = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message4.peer_id)));
                                                            if (((TLRPC.TL_messageActionNoForwardsRequest) messageAction6).new_value) {
                                                                this.messageText = isOut() ? LocaleController.getString(C2807R.string.SharingOfferDisableHeaderShortYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SharingOfferDisableHeaderShortOther, shortName5));
                                                            } else {
                                                                this.messageText = isOut() ? LocaleController.getString(C2807R.string.SharingOfferEnableHeaderShortYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SharingOfferEnableHeaderShortOther, shortName5));
                                                            }
                                                        } else if (messageAction6 instanceof TLRPC.TL_messageActionGramTransfer) {
                                                            TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = (TLRPC.TL_messageActionGramTransfer) messageAction6;
                                                            TLRPC.User user19 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message4.peer_id));
                                                            if (isOut()) {
                                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionSentGrams, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount))), "un1", user19);
                                                            } else if (UserObject.isService(DialogObject.getPeerDialogId(this.messageOwner.peer_id))) {
                                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionReceivedGramsSomeone, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount)));
                                                            } else {
                                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionReceivedGrams, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount))), "un1", chat14);
                                                            }
                                                            if (isOut()) {
                                                                this.messageTextShort = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionSentGramsShort, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount)));
                                                            } else if (UserObject.isService(DialogObject.getPeerDialogId(this.messageOwner.peer_id))) {
                                                                this.messageTextShort = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionReceivedGramsSomeone, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount)));
                                                            } else {
                                                                this.messageTextShort = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.WalletActionReceivedGrams, GramWallet.formatGramsWithUnit(tL_messageActionGramTransfer.amount)).replace("un1", str).trim());
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    str = str2;
                                }
                            }
                            str = str2;
                        }
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    TLRPC.Chat chat29 = chat;
                    this.isRestrictedMessage = false;
                    String restrictionReason = MessagesController.getInstance(this.currentAccount).getRestrictionReason(this.messageOwner.restriction_reason);
                    if (!TextUtils.isEmpty(restrictionReason)) {
                        this.messageText = restrictionReason;
                        this.isRestrictedMessage = true;
                    } else {
                        TL_iv.RichMessage richMessage = this.messageOwner.rich_message;
                        if (richMessage != null) {
                            CharSequence richMessage2 = formatRichMessage(richMessage, isOutOwner());
                            this.messageText = richMessage2;
                            this.messageText = AndroidUtilities.replaceNewLines(richMessage2);
                        } else if (!isMediaEmpty() && !isSponsored()) {
                            boolean z18 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveaway;
                            TLRPC.Message message7 = this.messageOwner;
                            if (z18) {
                                TLRPC.MessageFwdHeader messageFwdHeader = message7.fwd_from;
                                if (messageFwdHeader != null) {
                                    TLRPC.Peer peer25 = messageFwdHeader.from_id;
                                    if (peer25 instanceof TLRPC.TL_peerChannel) {
                                        zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(getChat(abstractMap2, longSparseArray2, peer25.channel_id));
                                    } else {
                                        zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat29);
                                    }
                                    this.messageText = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2807R.string.BoostingGiveawayChannelStarted : C2807R.string.BoostingGiveawayGroupStarted);
                                }
                            } else if (getMedia(message7) instanceof TLRPC.TL_messageMediaGiveawayResults) {
                                this.messageText = LocaleController.getString(C2807R.string.BoostingGiveawayResults);
                            } else {
                                boolean z19 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaStory;
                                TLRPC.Message message8 = this.messageOwner;
                                if (z19) {
                                    if (getMedia(message8).via_mention) {
                                        TLRPC.User user20 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getMedia(this.messageOwner).user_id));
                                        String str13 = (user20 == null || (publicUsername = UserObject.getPublicUsername(user20)) == null) ? null : MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + getMedia(this.messageOwner).id;
                                        if (str13 != null) {
                                            SpannableString spannableString7 = new SpannableString(str13);
                                            this.messageText = spannableString7;
                                            spannableString7.setSpan(new URLSpanReplacement("https://".concat(str13), new TextStyleSpan.TextStyleRun()), 0, this.messageText.length(), 33);
                                        } else {
                                            this.messageText = str;
                                        }
                                    } else {
                                        this.messageText = LocaleController.getString(C2807R.string.ForwardedStory);
                                    }
                                } else if (getMedia(message8) instanceof TLRPC.TL_messageMediaDice) {
                                    this.messageText = getDiceEmoji();
                                } else {
                                    boolean z20 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll;
                                    TLRPC.Message message9 = this.messageOwner;
                                    if (z20) {
                                        if (((TLRPC.TL_messageMediaPoll) getMedia(message9)).poll.quiz) {
                                            this.messageText = LocaleController.getString(C2807R.string.QuizPoll);
                                        } else {
                                            this.messageText = LocaleController.getString(C2807R.string.Poll);
                                        }
                                    } else if (getMedia(message9) instanceof TLRPC.TL_messageMediaToDo) {
                                        TLRPC.TL_messageMediaToDo tL_messageMediaToDo2 = (TLRPC.TL_messageMediaToDo) getMedia(this.messageOwner);
                                        TLRPC.TodoList todoList = tL_messageMediaToDo2.todo;
                                        if (todoList != null && (tL_textWithEntities = todoList.title) != null && !tL_textWithEntities.text.isEmpty()) {
                                            this.messageText = LocaleController.formatSpannable(C2807R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo2.todo.title, isOutOwner()));
                                        } else {
                                            this.messageText = LocaleController.getString(C2807R.string.MessageTodo);
                                        }
                                    } else if (isVoiceOnce()) {
                                        this.messageText = LocaleController.getString(C2807R.string.AttachOnceAudio);
                                    } else if (isRoundOnce()) {
                                        this.messageText = LocaleController.getString(C2807R.string.AttachOnceRound);
                                    } else {
                                        boolean z21 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPaidMedia;
                                        TLRPC.Message message10 = this.messageOwner;
                                        if (z21) {
                                            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) getMedia(message10);
                                            int size9 = tL_messageMediaPaidMedia.extended_media.size();
                                            boolean z22 = false;
                                            for (int i32 = 0; i32 < size9; i32++) {
                                                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i32);
                                                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                                    TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                                                    z22 = (messageMedia instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia.document);
                                                } else {
                                                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                                                        z22 = (((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0;
                                                    }
                                                    if (!z22) {
                                                        break;
                                                    }
                                                }
                                                if (!z22) {
                                                }
                                            }
                                            if (size9 == 1) {
                                                pluralString = LocaleController.getString(z22 ? C2807R.string.AttachVideo : C2807R.string.AttachPhoto);
                                            } else {
                                                pluralString = LocaleController.formatPluralString(z22 ? "Media" : "Photos", size9, new Object[0]);
                                            }
                                            this.messageText = pluralString;
                                            this.messageText = StarsIntroActivity.replaceStars(LocaleController.formatString(C2807R.string.AttachPaidMedia, pluralString));
                                        } else if (getMedia(message10) instanceof TLRPC.TL_messageMediaPhoto) {
                                            if (getMedia(this.messageOwner).ttl_seconds != 0 && !(this.messageOwner instanceof TLRPC.TL_message_secret)) {
                                                this.messageText = LocaleController.getString(C2807R.string.AttachDestructingPhoto);
                                            } else if (getGroupId() != 0) {
                                                this.messageText = LocaleController.getString(C2807R.string.Album);
                                            } else if (isLivePhoto()) {
                                                this.messageText = LocaleController.getString(C2807R.string.AttachLivePhoto);
                                            } else {
                                                this.messageText = LocaleController.getString(C2807R.string.AttachPhoto);
                                            }
                                        } else if (isVideo() || ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && (((getDocument() instanceof TLRPC.TL_documentEmpty) || getDocument() == null) && getMedia(this.messageOwner).ttl_seconds != 0))) {
                                            if (getMedia(this.messageOwner).ttl_seconds != 0) {
                                                TLRPC.Message message11 = this.messageOwner;
                                                if (!(message11 instanceof TLRPC.TL_message_secret)) {
                                                    if (getMedia(message11).voice) {
                                                        this.messageText = LocaleController.getString(C2807R.string.AttachVoiceExpired);
                                                    } else if (getMedia(this.messageOwner).round) {
                                                        this.messageText = LocaleController.getString(C2807R.string.AttachRoundExpired);
                                                    } else {
                                                        this.messageText = LocaleController.getString(C2807R.string.AttachDestructingVideo);
                                                    }
                                                } else {
                                                    this.messageText = LocaleController.getString(C2807R.string.AttachVideo);
                                                }
                                            }
                                        } else if (isVoice()) {
                                            this.messageText = LocaleController.getString(C2807R.string.AttachAudio);
                                        } else if (isRoundVideo()) {
                                            this.messageText = LocaleController.getString(C2807R.string.AttachRound);
                                        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaVenue)) {
                                            this.messageText = LocaleController.getString(C2807R.string.AttachLocation);
                                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeoLive) {
                                            this.messageText = LocaleController.getString(C2807R.string.AttachLiveLocation);
                                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) {
                                            this.messageText = LocaleController.getString(C2807R.string.AttachContact);
                                            if (!TextUtils.isEmpty(getMedia(this.messageOwner).vcard)) {
                                                this.vCardData = VCardData.parse(getMedia(this.messageOwner).vcard);
                                            }
                                        } else {
                                            boolean z23 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame;
                                            TLRPC.Message message12 = this.messageOwner;
                                            if (z23) {
                                                this.messageText = message12.message;
                                            } else {
                                                boolean z24 = getMedia(message12) instanceof TLRPC.TL_messageMediaInvoice;
                                                TLRPC.Message message13 = this.messageOwner;
                                                if (z24) {
                                                    this.messageText = getMedia(message13).description;
                                                } else if (getMedia(message13) instanceof TLRPC.TL_messageMediaUnsupported) {
                                                    this.messageText = LocaleController.getString(C2807R.string.UnsupportedMedia2);
                                                } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                                                    if (isSticker() || isAnimatedStickerDocument(getDocument(), true)) {
                                                        String stickerChar = getStickerChar();
                                                        if (stickerChar != null && stickerChar.length() > 0) {
                                                            this.messageText = String.format("%s %s", stickerChar, LocaleController.getString(C2807R.string.AttachSticker));
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2807R.string.AttachSticker);
                                                        }
                                                    } else if (isMusic()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.AttachMusic);
                                                    } else if (isGif()) {
                                                        this.messageText = LocaleController.getString(C2807R.string.AttachGif);
                                                    } else {
                                                        String documentFileName = FileLoader.getDocumentFileName(getDocument());
                                                        if (!TextUtils.isEmpty(documentFileName)) {
                                                            this.messageText = documentFileName;
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2807R.string.AttachDocument);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            String str14 = this.messageOwner.message;
                            if (str14 != null) {
                                try {
                                    if (str14.length() > 200) {
                                        this.messageText = AndroidUtilities.BAD_CHARS_MESSAGE_LONG_PATTERN.matcher(this.messageOwner.message).replaceAll("\u200c");
                                    } else {
                                        this.messageText = AndroidUtilities.BAD_CHARS_MESSAGE_PATTERN.matcher(this.messageOwner.message).replaceAll("\u200c");
                                    }
                                } catch (Throwable unused) {
                                    this.messageText = this.messageOwner.message;
                                }
                            } else {
                                this.messageText = str14;
                            }
                        }
                    }
                }
                if (this.messageText == null) {
                    this.messageText = str;
                }
                this.isEmbedVideoCached = null;
                this.cachedStartsTimestamp = null;
                this.cachedSavedTimestamp = null;
            }
            user = null;
        }
        chat = null;
        if (user == null) {
        }
        this.drawServiceWithDefaultTypeface = false;
        this.channelJoined = false;
        message = this.messageOwner;
        if (!(message instanceof TLRPC.TL_messageService)) {
        }
        if (this.messageText == null) {
        }
        this.isEmbedVideoCached = null;
        this.cachedStartsTimestamp = null;
        this.cachedSavedTimestamp = null;
    }

    private CharSequence formatTaskTitle(TLRPC.TodoItem todoItem) {
        CharSequence textWithEntities = formatTextWithEntities(todoItem.title, isOutOwner());
        if (!(textWithEntities instanceof Spannable)) {
            textWithEntities = new SpannableStringBuilder(textWithEntities);
        }
        ((Spannable) textWithEntities).setSpan(new URLSpanNoUnderline("task?" + todoItem.id, true), 0, textWithEntities.length(), 33);
        return textWithEntities;
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities) {
        return formatTextWithEntities(tL_textWithEntities, false);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z) {
        Theme.createCommonChatResources();
        android.text.TextPaint textPaint = Theme.chat_actionTextPaint;
        if (textPaint == null) {
            textPaint = new android.text.TextPaint(1);
            textPaint.setTypeface(AndroidUtilities.bold());
            textPaint.setTextSize(AndroidUtilities.dp(Math.max(16, SharedConfig.fontSize) - 2));
        }
        return formatTextWithEntities(tL_textWithEntities, z, textPaint);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z, android.text.TextPaint textPaint) {
        return formatTextWithEntities(tL_textWithEntities, z, false, textPaint);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z, boolean z2, android.text.TextPaint textPaint) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities.text);
        addEntitiesToText(spannableStringBuilder, tL_textWithEntities.entities, z, false, z2, false);
        return replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false), tL_textWithEntities.entities, textPaint.getFontMetricsInt());
    }

    public static CharSequence formatRichMessage(TL_iv.RichMessage richMessage, boolean z) {
        return formatRichMessage(richMessage, z, false, 1024);
    }

    public static CharSequence formatRichMessage(TL_iv.RichMessage richMessage, boolean z, boolean z2, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (richMessage != null) {
            int i2 = 0;
            while (i2 < richMessage.blocks.size()) {
                TL_iv.PageBlock pageBlock = richMessage.blocks.get(i2);
                if (i2 > 0) {
                    spannableStringBuilder.append((CharSequence) "  ");
                }
                TL_iv.RichMessage richMessage2 = richMessage;
                boolean z3 = z;
                boolean z4 = z2;
                int i3 = i;
                formatRichBlock(pageBlock, z3, z4, i3, spannableStringBuilder, richMessage2);
                if (spannableStringBuilder.length() >= i3) {
                    spannableStringBuilder.delete(i3, spannableStringBuilder.length());
                    spannableStringBuilder.append((CharSequence) "…");
                    return spannableStringBuilder;
                }
                i2++;
                z = z3;
                z2 = z4;
                i = i3;
                richMessage = richMessage2;
            }
        }
        return spannableStringBuilder;
    }

    public static boolean isBlueBlock(TL_iv.PageBlock pageBlock) {
        return (pageBlock instanceof TL_iv.pageBlockTable) || (pageBlock instanceof TL_iv.pageBlockMath) || (pageBlock instanceof TL_iv.pageBlockAudio) || (pageBlock instanceof TL_iv.pageBlockDocument) || (pageBlock instanceof TL_iv.pageBlockMap) || (pageBlock instanceof TL_iv.pageBlockPhoto) || (pageBlock instanceof TL_iv.pageBlockVideo) || (pageBlock instanceof TL_iv.pageBlockCollage) || (pageBlock instanceof TL_iv.pageBlockSlideshow);
    }

    public static SpannableStringBuilder span(String str, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ColoredImageSpan(i), 0, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    public static SpannableStringBuilder checkboxSpan(boolean z) {
        return span(z ? "✅" : "☑️", z ? C2807R.drawable.iv_checkbox_on : C2807R.drawable.iv_checkbox_off);
    }

    public static CharSequence formatRichBlock(TL_iv.PageBlock pageBlock, boolean z, boolean z2, int i, SpannableStringBuilder spannableStringBuilder, TL_iv.RichMessage richMessage) {
        TLRPC.Document document;
        int i2;
        if ((pageBlock instanceof TL_iv.pageBlockTitle) || (pageBlock instanceof TL_iv.pageBlockHeader) || (pageBlock instanceof TL_iv.pageBlockSubheader) || (pageBlock instanceof TL_iv.pageBlockHeading1) || (pageBlock instanceof TL_iv.pageBlockHeading2) || (pageBlock instanceof TL_iv.pageBlockHeading3) || (pageBlock instanceof TL_iv.pageBlockHeading4) || (pageBlock instanceof TL_iv.pageBlockHeading5) || (pageBlock instanceof TL_iv.pageBlockHeading6) || (pageBlock instanceof TL_iv.pageBlockBlockquote) || (pageBlock instanceof TL_iv.pageBlockPullquote)) {
            formatRichText(pageBlock.text, z, z2, i, spannableStringBuilder, 1);
            return spannableStringBuilder;
        }
        if ((pageBlock instanceof TL_iv.pageBlockParagraph) || (pageBlock instanceof TL_iv.pageBlockFooter) || (pageBlock instanceof TL_iv.pageBlockKicker)) {
            formatRichText(pageBlock.text, z, z2, i, spannableStringBuilder, 0);
            return spannableStringBuilder;
        }
        int i3 = 0;
        if (pageBlock instanceof TL_iv.pageBlockBlockquoteBlocks) {
            TL_iv.pageBlockBlockquoteBlocks pageblockblockquoteblocks = (TL_iv.pageBlockBlockquoteBlocks) pageBlock;
            while (i3 < pageblockblockquoteblocks.blocks.size()) {
                if (i3 > 0) {
                    spannableStringBuilder.append("  ");
                }
                formatRichBlock(pageblockblockquoteblocks.blocks.get(i3), z, z2, i, spannableStringBuilder, richMessage);
                if (spannableStringBuilder.length() >= i) {
                    spannableStringBuilder.delete(i, spannableStringBuilder.length());
                    spannableStringBuilder.append("…");
                    return spannableStringBuilder;
                }
                i3++;
            }
        } else {
            if (pageBlock instanceof TL_iv.pageBlockDetails) {
                formatRichText(((TL_iv.pageBlockDetails) pageBlock).title, z, z2, i, spannableStringBuilder, 0);
                return spannableStringBuilder;
            }
            if (pageBlock instanceof TL_iv.pageBlockAuthorDate) {
                formatRichText(((TL_iv.pageBlockAuthorDate) pageBlock).author, z, z2, i, spannableStringBuilder, 0);
                return spannableStringBuilder;
            }
            if (pageBlock instanceof TL_iv.pageBlockMath) {
                spannableStringBuilder.append((CharSequence) span("fx", C2807R.drawable.iv_formula)).append(" ").append((CharSequence) LocaleController.getString(C2807R.string.AccDescrIVFormula));
                return spannableStringBuilder;
            }
            if (pageBlock instanceof TL_iv.pageBlockMap) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.Map));
                TL_iv.PageCaption pageCaption = pageBlock.caption;
                if (pageCaption != null && !(pageCaption.text instanceof TL_iv.textEmpty)) {
                    spannableStringBuilder.append("  ");
                    formatRichText(pageBlock.caption.text, z, z2, i, spannableStringBuilder, 0);
                    return spannableStringBuilder;
                }
            } else {
                if (pageBlock instanceof TL_iv.pageBlockPreformatted) {
                    formatRichText(pageBlock.text, z, z2, i, spannableStringBuilder, 4);
                    return spannableStringBuilder;
                }
                SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                if (pageBlock instanceof TL_iv.pageBlockList) {
                    TL_iv.pageBlockList pageblocklist = (TL_iv.pageBlockList) pageBlock;
                    for (int i4 = 0; i4 < pageblocklist.items.size(); i4++) {
                        if (i4 > 0) {
                            spannableStringBuilder2.append("  ");
                        }
                        TL_iv.PageListItem pageListItem = pageblocklist.items.get(i4);
                        if (pageListItem instanceof TL_iv.TL_pageListItemText) {
                            TL_iv.TL_pageListItemText tL_pageListItemText = (TL_iv.TL_pageListItemText) pageListItem;
                            if (tL_pageListItemText.checkbox) {
                                spannableStringBuilder2.append((CharSequence) checkboxSpan(tL_pageListItemText.checked)).append(" ");
                            } else {
                                spannableStringBuilder2.append("• ");
                            }
                            i2 = i;
                            formatRichText(tL_pageListItemText.text, z, z2, i2, spannableStringBuilder2, 0);
                        } else {
                            if (pageListItem instanceof TL_iv.TL_pageListItemBlocks) {
                                TL_iv.TL_pageListItemBlocks tL_pageListItemBlocks = (TL_iv.TL_pageListItemBlocks) pageListItem;
                                if (tL_pageListItemBlocks.checkbox) {
                                    spannableStringBuilder2.append((CharSequence) checkboxSpan(tL_pageListItemBlocks.checked)).append(" ");
                                } else {
                                    spannableStringBuilder2.append("• ");
                                }
                                for (int i5 = 0; i5 < tL_pageListItemBlocks.blocks.size(); i5++) {
                                    if (i5 > 0) {
                                        spannableStringBuilder2.append("  ");
                                    }
                                    formatRichBlock(tL_pageListItemBlocks.blocks.get(i5), z, z2, i, spannableStringBuilder2, richMessage);
                                    if (spannableStringBuilder2.length() >= i) {
                                        spannableStringBuilder2.delete(i, spannableStringBuilder2.length());
                                        spannableStringBuilder2.append("…");
                                        return spannableStringBuilder2;
                                    }
                                }
                            }
                            i2 = i;
                        }
                        if (spannableStringBuilder2.length() >= i2) {
                            spannableStringBuilder2.delete(i2, spannableStringBuilder2.length());
                            spannableStringBuilder2.append("…");
                            return spannableStringBuilder2;
                        }
                    }
                } else {
                    int i6 = i;
                    if (pageBlock instanceof TL_iv.pageBlockOrderedList) {
                        TL_iv.pageBlockOrderedList pageblockorderedlist = (TL_iv.pageBlockOrderedList) pageBlock;
                        for (int i7 = 0; i7 < pageblockorderedlist.items.size(); i7++) {
                            if (i7 > 0) {
                                spannableStringBuilder2.append("  ");
                            }
                            TL_iv.PageListOrderedItem pageListOrderedItem = pageblockorderedlist.items.get(i7);
                            if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemText) {
                                TL_iv.TL_pageListOrderedItemText tL_pageListOrderedItemText = (TL_iv.TL_pageListOrderedItemText) pageListOrderedItem;
                                spannableStringBuilder2.append((CharSequence) tL_pageListOrderedItemText.num);
                                spannableStringBuilder2.append(". ");
                                if (tL_pageListOrderedItemText.checkbox) {
                                    spannableStringBuilder2.append((CharSequence) checkboxSpan(tL_pageListOrderedItemText.checked)).append(" ");
                                }
                                formatRichText(tL_pageListOrderedItemText.text, z, z2, i6, spannableStringBuilder2, 0);
                            } else if (pageListOrderedItem instanceof TL_iv.TL_pageListOrderedItemBlocks) {
                                TL_iv.TL_pageListOrderedItemBlocks tL_pageListOrderedItemBlocks = (TL_iv.TL_pageListOrderedItemBlocks) pageListOrderedItem;
                                spannableStringBuilder2.append((CharSequence) tL_pageListOrderedItemBlocks.num);
                                spannableStringBuilder2.append(". ");
                                if (tL_pageListOrderedItemBlocks.checkbox) {
                                    spannableStringBuilder2.append((CharSequence) checkboxSpan(tL_pageListOrderedItemBlocks.checked)).append(" ");
                                }
                                for (int i8 = 0; i8 < tL_pageListOrderedItemBlocks.blocks.size(); i8++) {
                                    if (i8 > 0) {
                                        spannableStringBuilder2.append("  ");
                                    }
                                    formatRichBlock(tL_pageListOrderedItemBlocks.blocks.get(i8), z, z2, i, spannableStringBuilder2, richMessage);
                                    if (spannableStringBuilder2.length() >= i) {
                                        spannableStringBuilder2.delete(i, spannableStringBuilder2.length());
                                        spannableStringBuilder2.append("…");
                                        return spannableStringBuilder2;
                                    }
                                }
                            }
                            i6 = i;
                            if (spannableStringBuilder2.length() >= i6) {
                                spannableStringBuilder2.delete(i6, spannableStringBuilder2.length());
                                spannableStringBuilder2.append("…");
                                return spannableStringBuilder2;
                            }
                        }
                    } else {
                        if (pageBlock instanceof TL_iv.pageBlockTable) {
                            spannableStringBuilder2.append((CharSequence) span("⊞", C2807R.drawable.iv_preview_table)).append(" ");
                            TL_iv.RichText richText = ((TL_iv.pageBlockTable) pageBlock).title;
                            if (richText != null && !(richText instanceof TL_iv.textEmpty)) {
                                formatRichText(richText, z, z2, i6, spannableStringBuilder2, 0);
                                return spannableStringBuilder2;
                            }
                            spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.AccDescrIVTable));
                            return spannableStringBuilder2;
                        }
                        if (pageBlock instanceof TL_iv.pageBlockAudio) {
                            TL_iv.pageBlockAudio pageblockaudio = (TL_iv.pageBlockAudio) pageBlock;
                            while (true) {
                                if (i3 >= richMessage.documents.size()) {
                                    document = null;
                                    break;
                                }
                                if (richMessage.documents.get(i3).id == pageblockaudio.audio_id) {
                                    document = richMessage.documents.get(i3);
                                    break;
                                }
                                i3++;
                            }
                            if (document != null) {
                                TLRPC.TL_documentAttributeAudio tL_documentAttributeAudio = (TLRPC.TL_documentAttributeAudio) AndroidUtilities.find(document.attributes, TLRPC.TL_documentAttributeAudio.class);
                                TLRPC.TL_documentAttributeFilename tL_documentAttributeFilename = (TLRPC.TL_documentAttributeFilename) AndroidUtilities.find(document.attributes, TLRPC.TL_documentAttributeFilename.class);
                                if (tL_documentAttributeAudio != null) {
                                    if (!TextUtils.isEmpty(tL_documentAttributeAudio.title) && !TextUtils.isEmpty(tL_documentAttributeAudio.performer)) {
                                        spannableStringBuilder2.append((CharSequence) span("🎵", C2807R.drawable.iv_audio_preview)).append(" ").append((CharSequence) tL_documentAttributeAudio.performer).append(" – ").append((CharSequence) tL_documentAttributeAudio.title);
                                        return spannableStringBuilder2;
                                    }
                                    if (!TextUtils.isEmpty(tL_documentAttributeAudio.title)) {
                                        spannableStringBuilder2.append((CharSequence) span("🎵", C2807R.drawable.iv_audio_preview)).append(" ").append((CharSequence) tL_documentAttributeAudio.title);
                                        return spannableStringBuilder2;
                                    }
                                    if (tL_documentAttributeFilename != null && tL_documentAttributeFilename.file_name != null) {
                                        spannableStringBuilder2.append((CharSequence) span("🎵", C2807R.drawable.iv_audio_preview)).append(" ").append((CharSequence) tL_documentAttributeFilename.file_name);
                                        return spannableStringBuilder2;
                                    }
                                } else if (tL_documentAttributeFilename != null && tL_documentAttributeFilename.file_name != null) {
                                    spannableStringBuilder2.append((CharSequence) span("🎵", C2807R.drawable.iv_audio_preview)).append(" ").append((CharSequence) tL_documentAttributeFilename.file_name);
                                    return spannableStringBuilder2;
                                }
                            }
                        } else if (pageBlock instanceof TL_iv.pageBlockDocument) {
                            TLRPC.Document documentFindDocument = AndroidUtilities.findDocument(richMessage.documents, ((TL_iv.pageBlockDocument) pageBlock).document_id);
                            if (documentFindDocument != null) {
                                String documentFileName = FileLoader.getDocumentFileName(documentFindDocument);
                                SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder2.append((CharSequence) span("📎", C2807R.drawable.msg_filled_data_files)).append(" ");
                                if (TextUtils.isEmpty(documentFileName)) {
                                    documentFileName = LocaleController.getString(C2807R.string.AttachDocument);
                                }
                                spannableStringBuilderAppend.append((CharSequence) documentFileName);
                                return spannableStringBuilder2;
                            }
                        } else {
                            if (pageBlock instanceof TL_iv.pageBlockCover) {
                                formatRichBlock(((TL_iv.pageBlockCover) pageBlock).cover, z, z2, i, spannableStringBuilder2, richMessage);
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockPhoto) {
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.AttachPhoto));
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockVideo) {
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.AttachVideo));
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockCollage) {
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.AccDescrCollage));
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockSlideshow) {
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.AccDescrIVSlideshow));
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockUnsupported) {
                                spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2807R.string.UnsupportedAttachment));
                                return spannableStringBuilder2;
                            }
                            if (pageBlock instanceof TL_iv.pageBlockButtonRow) {
                                TL_iv.pageBlockButtonRow pageblockbuttonrow = (TL_iv.pageBlockButtonRow) pageBlock;
                                while (i3 < pageblockbuttonrow.buttons.size()) {
                                    if (i3 > 0) {
                                        spannableStringBuilder2.append("  ");
                                    }
                                    formatRichText(pageblockbuttonrow.buttons.get(i3).text, z, z2, i, spannableStringBuilder2, 0);
                                    i3++;
                                    spannableStringBuilder2 = spannableStringBuilder;
                                }
                            }
                        }
                    }
                }
            }
        }
        return spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0171 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharSequence formatRichText(TL_iv.RichText richText, boolean z, boolean z2, int i, SpannableStringBuilder spannableStringBuilder, int i2) {
        SpannableStringBuilder spannableStringBuilder2;
        int i3;
        if (richText == null) {
            return spannableStringBuilder;
        }
        int length = spannableStringBuilder.length();
        if (richText instanceof TL_iv.textPlain) {
            spannableStringBuilder.append((CharSequence) ((TL_iv.textPlain) richText).text);
        } else if (richText instanceof TL_iv.textButton) {
            formatRichText(richText.text, z, z2, i, spannableStringBuilder, i2);
        } else {
            spannableStringBuilder2 = spannableStringBuilder;
            if (richText instanceof TL_iv.textBold) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 1);
            } else if (richText instanceof TL_iv.textItalic) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 2);
            } else if (richText instanceof TL_iv.textUnderline) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 16);
            } else if (richText instanceof TL_iv.textStrike) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 8);
            } else if (richText instanceof TL_iv.textFixed) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 4);
            } else if (richText instanceof TL_iv.textSpoiler) {
                formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i2 | 256);
            } else {
                if (richText instanceof TL_iv.textUrl) {
                    i3 = i2;
                    formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i3);
                    if (spannableStringBuilder2.length() > length) {
                        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                        textStyleRun.flags = i3;
                        spannableStringBuilder2.setSpan(new URLSpanBrowser(richText.url, textStyleRun), length, spannableStringBuilder2.length(), 33);
                    }
                } else {
                    i3 = i2;
                    if (richText instanceof TL_iv.textEmail) {
                        formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i3);
                        if (spannableStringBuilder2.length() > length) {
                            TextStyleSpan.TextStyleRun textStyleRun2 = new TextStyleSpan.TextStyleRun();
                            textStyleRun2.flags = i3;
                            spannableStringBuilder2.setSpan(new URLSpanReplacement("mailto:" + richText.email, textStyleRun2), length, spannableStringBuilder2.length(), 33);
                        }
                    } else if (richText instanceof TL_iv.textMath) {
                        spannableStringBuilder2.append((CharSequence) span("fx", C2807R.drawable.iv_formula)).append(" ").append((CharSequence) LocaleController.getString(C2807R.string.AccDescrIVFormula));
                    } else if (richText instanceof TL_iv.textPhone) {
                        formatRichText(richText.text, z, z2, i, spannableStringBuilder2, i3);
                        if (spannableStringBuilder2.length() > length) {
                            TL_iv.textPhone textphone = (TL_iv.textPhone) richText;
                            String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(textphone.phone);
                            if (textphone.phone.startsWith("+")) {
                                strStripExceptNumbers = "+" + strStripExceptNumbers;
                            }
                            TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun();
                            textStyleRun3.flags = i3;
                            spannableStringBuilder2.setSpan(new URLSpanNoUnderline("tel:" + strStripExceptNumbers, textStyleRun3), length, spannableStringBuilder2.length(), 33);
                        }
                    } else if (richText instanceof TL_iv.textConcat) {
                        ArrayList<TL_iv.RichText> arrayList = ((TL_iv.textConcat) richText).texts;
                        int size = arrayList.size();
                        int i4 = 0;
                        while (i4 < size) {
                            TL_iv.RichText richText2 = arrayList.get(i4);
                            i4++;
                            formatRichText(richText2, z, z2, i, spannableStringBuilder2, i3);
                            if (spannableStringBuilder2.length() >= i) {
                                spannableStringBuilder2.delete(i, spannableStringBuilder2.length());
                                spannableStringBuilder2.append("…");
                                return spannableStringBuilder2;
                            }
                        }
                    }
                }
                if (spannableStringBuilder2.length() > length && i3 != 0) {
                    TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun();
                    textStyleRun4.flags = i3;
                    spannableStringBuilder2.setSpan(new TextStyleSpan(textStyleRun4), length, spannableStringBuilder2.length(), 33);
                }
                return spannableStringBuilder2;
            }
            i3 = i2;
            if (spannableStringBuilder2.length() > length) {
                TextStyleSpan.TextStyleRun textStyleRun42 = new TextStyleSpan.TextStyleRun();
                textStyleRun42.flags = i3;
                spannableStringBuilder2.setSpan(new TextStyleSpan(textStyleRun42), length, spannableStringBuilder2.length(), 33);
            }
            return spannableStringBuilder2;
        }
        spannableStringBuilder2 = spannableStringBuilder;
        i3 = i2;
        if (spannableStringBuilder2.length() > length) {
        }
        return spannableStringBuilder2;
    }

    public static TLRPC.TL_textWithEntities removeLinks(TLRPC.TL_textWithEntities tL_textWithEntities) {
        TLRPC.TL_textWithEntities tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
        tL_textWithEntities2.text = tL_textWithEntities.text;
        for (int i = 0; i < tL_textWithEntities.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = tL_textWithEntities.entities.get(i);
            if (!(messageEntity instanceof TLRPC.TL_messageEntityUrl) && !(messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) {
                tL_textWithEntities2.entities.add(messageEntity);
            }
        }
        return tL_textWithEntities2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x01a3, code lost:
    
        if (r7.ttl_seconds == 0) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence getMediaTitle(TLRPC.MessageMedia messageMedia) {
        String pluralString;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String publicUsername;
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
            return LocaleController.getString(C2807R.string.BoostingGiveaway);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            return LocaleController.getString(C2807R.string.BoostingGiveawayResults);
        }
        String str = null;
        if (messageMedia instanceof TLRPC.TL_messageMediaStory) {
            if (messageMedia.via_mention) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageMedia.user_id));
                if (user != null && (publicUsername = UserObject.getPublicUsername(user)) != null) {
                    str = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + messageMedia.id;
                }
                if (str != null) {
                    SpannableString spannableString = new SpannableString(str);
                    spannableString.setSpan(new URLSpanReplacement("https://".concat(str), new TextStyleSpan.TextStyleRun()), 0, spannableString.length(), 33);
                    return spannableString;
                }
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return LocaleController.getString(C2807R.string.ForwardedStory);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDice) {
            return getDiceEmoji((TLRPC.TL_messageMediaDice) messageMedia);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
            if (((TLRPC.TL_messageMediaPoll) messageMedia).poll.quiz) {
                return LocaleController.getString(C2807R.string.QuizPoll);
            }
            return LocaleController.getString(C2807R.string.Poll);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
            TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
            if (todoList != null && (tL_textWithEntities = todoList.title) != null && !tL_textWithEntities.text.isEmpty()) {
                return LocaleController.formatSpannable(C2807R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo.todo.title, isOutOwner()));
            }
            return LocaleController.getString(C2807R.string.MessageTodo);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            int size = tL_messageMediaPaidMedia.extended_media.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i);
                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                    TLRPC.MessageMedia messageMedia2 = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                    z = (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia2.document);
                } else if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                    if ((((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0) {
                    }
                }
                if (z) {
                    break;
                }
            }
            if (size == 1) {
                pluralString = LocaleController.getString(z ? C2807R.string.AttachVideo : C2807R.string.AttachPhoto);
            } else {
                pluralString = LocaleController.formatPluralString(z ? "Media" : "Photos", size, new Object[0]);
            }
            return StarsIntroActivity.replaceStars(LocaleController.formatString(C2807R.string.AttachPaidMedia, pluralString));
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            if (messageMedia.ttl_seconds != 0 && !(this.messageOwner instanceof TLRPC.TL_message_secret)) {
                return LocaleController.getString(C2807R.string.AttachDestructingPhoto);
            }
            if (getGroupId() != 0) {
                return LocaleController.getString(C2807R.string.Album);
            }
            if (isLivePhoto()) {
                return LocaleController.getString(C2807R.string.AttachLivePhoto);
            }
            return LocaleController.getString(C2807R.string.AttachPhoto);
        }
        if (messageMedia != null) {
            if (!isVideoDocument(messageMedia.document)) {
                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    TLRPC.Document document = messageMedia.document;
                    if (!(document instanceof TLRPC.TL_documentEmpty)) {
                        if (document == null) {
                        }
                    }
                }
            }
            if (messageMedia.ttl_seconds != 0 && !(this.messageOwner instanceof TLRPC.TL_message_secret)) {
                if (messageMedia.voice) {
                    return LocaleController.getString(C2807R.string.AttachVoiceExpired);
                }
                if (messageMedia.round) {
                    return LocaleController.getString(C2807R.string.AttachRoundExpired);
                }
                return LocaleController.getString(C2807R.string.AttachDestructingVideo);
            }
            return LocaleController.getString(C2807R.string.AttachVideo);
        }
        if (messageMedia != null && isVoiceDocument(messageMedia.document)) {
            return LocaleController.getString(C2807R.string.AttachAudio);
        }
        if (messageMedia != null && isRoundVideoDocument(messageMedia.document)) {
            return LocaleController.getString(C2807R.string.AttachRound);
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
            return LocaleController.getString(C2807R.string.AttachLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
            return LocaleController.getString(C2807R.string.AttachLiveLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
            return LocaleController.getString(C2807R.string.AttachContact);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
            return this.messageOwner.message;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
            return messageMedia.description;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaUnsupported) {
            return LocaleController.getString(C2807R.string.UnsupportedMedia2);
        }
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
            return null;
        }
        if (isStickerDocument(messageMedia.document) || isAnimatedStickerDocument(messageMedia.document, true)) {
            String stickerChar = getStickerChar();
            if (stickerChar != null && stickerChar.length() > 0) {
                return String.format("%s %s", stickerChar, LocaleController.getString(C2807R.string.AttachSticker));
            }
            return LocaleController.getString(C2807R.string.AttachSticker);
        }
        if (isMusic()) {
            return LocaleController.getString(C2807R.string.AttachMusic);
        }
        if (isGif()) {
            return LocaleController.getString(C2807R.string.AttachGif);
        }
        String documentFileName = FileLoader.getDocumentFileName(messageMedia.document);
        return !TextUtils.isEmpty(documentFileName) ? documentFileName : LocaleController.getString(C2807R.string.AttachDocument);
    }

    public static TLRPC.MessageMedia getMedia(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null) {
            return null;
        }
        TLRPC.MessageMedia messageMedia = messageObject.sponsoredMedia;
        return messageMedia != null ? messageMedia : getMedia(message);
    }

    public static TLRPC.MessageMedia getMedia(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia != null && !(messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) && !messageMedia.extended_media.isEmpty() && (message.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) {
            return ((TLRPC.TL_messageExtendedMedia) message.media.extended_media.get(0)).media;
        }
        return message.media;
    }

    public static <T extends TLRPC.MessageMedia> T getMedia(TLRPC.Message message, Class<T> cls) {
        TLRPC.MessageMedia media = getMedia(message);
        if (cls.isInstance(media)) {
            return cls.cast(media);
        }
        return null;
    }

    public boolean hasRevealedExtendedMedia() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty() || !(this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) ? false : true;
    }

    public boolean hasExtendedMedia() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty()) ? false : true;
    }

    public boolean hasPaidMediaPreview() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return messageMedia != null && (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) && !messageMedia.extended_media.isEmpty() && (this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview);
    }

    public boolean hasExtendedMediaPreview() {
        TLRPC.MessageMedia messageMedia = this.messageOwner.media;
        return (messageMedia == null || (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) || messageMedia.extended_media.isEmpty() || !(this.messageOwner.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) ? false : true;
    }

    private boolean hasNonEmojiEntities() {
        String str;
        TLRPC.Message message = this.messageOwner;
        if (message != null && message.entities != null) {
            for (int i = 0; i < this.messageOwner.entities.size(); i++) {
                TLRPC.MessageEntity messageEntity = this.messageOwner.entities.get(i);
                if (!(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) && (!(messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (str = ((TLRPC.TL_messageEntityTextUrl) messageEntity).url) == null || !str.startsWith("tg://emoji?id="))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setType() {
        int i;
        int i2 = this.type;
        this.type = 1000;
        this.isRoundVideoCached = 0;
        if (isSponsored()) {
            this.type = 0;
        } else {
            if (this.channelJoined) {
                this.contentType = 0;
                this.type = 27;
                this.channelJoinedExpanded = MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("c" + getDialogId() + "_rec", true);
            } else {
                TLRPC.Message message = this.messageOwner;
                if ((message instanceof TLRPC.TL_message) || (message instanceof TLRPC.TL_messageForwarded_old2)) {
                    if (getMedia(message) instanceof TLRPC.TL_messageMediaUnsupported) {
                        this.contentType = 10;
                        this.type = 38;
                    } else if (this.isRestrictedMessage) {
                        this.type = 0;
                    } else {
                        TLRPC.Message message2 = this.messageOwner;
                        if (message2.rich_message != null) {
                            this.type = 36;
                        } else if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId != null) {
                            if (isSticker()) {
                                this.type = 13;
                            } else {
                                this.type = 15;
                            }
                        } else if (message2.media instanceof TLRPC.TL_messageMediaPaidMedia) {
                            this.type = 29;
                        } else if (isMediaEmpty(false) && !isDice() && !isSponsored() && this.emojiOnlyCount >= 1 && !this.hasUnwrappedEmoji && this.messageOwner != null && !hasNonEmojiEntities()) {
                            this.type = 19;
                        } else if (isMediaEmpty()) {
                            this.type = 0;
                            if (TextUtils.isEmpty(this.messageText) && this.eventId == 0) {
                                this.messageText = _UrlKt.FRAGMENT_ENCODE_SET;
                            }
                        } else if (hasExtendedMediaPreview()) {
                            this.type = 20;
                        } else if (getMedia(this.messageOwner).ttl_seconds != 0 && ((getMedia(this.messageOwner).photo instanceof TLRPC.TL_photoEmpty) || (getDocument() instanceof TLRPC.TL_documentEmpty) || (((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && getDocument() == null) || this.forceExpired))) {
                            this.contentType = 1;
                            this.type = 10;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveaway) {
                            this.type = 26;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveawayResults) {
                            this.type = 28;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
                            this.type = 15;
                            if (getMedia(this.messageOwner).document == null) {
                                getMedia(this.messageOwner).document = new TLRPC.TL_document();
                                getMedia(this.messageOwner).document.file_reference = new byte[0];
                                getMedia(this.messageOwner).document.mime_type = "application/x-tgsdice";
                                getMedia(this.messageOwner).document.dc_id = Integer.MIN_VALUE;
                                getMedia(this.messageOwner).document.id = -2147483648L;
                                TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                                tL_documentAttributeImageSize.f1017w = 512;
                                tL_documentAttributeImageSize.f1016h = 512;
                                getMedia(this.messageOwner).document.attributes.add(tL_documentAttributeImageSize);
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                            this.type = isVideo() ? 3 : 1;
                        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaVenue) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeoLive)) {
                            this.type = 4;
                        } else if (isRoundVideo()) {
                            this.type = 5;
                        } else if (isVideo()) {
                            this.type = 3;
                        } else if (isVoice()) {
                            this.type = 2;
                        } else if (isMusic()) {
                            this.type = 14;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) {
                            this.type = 12;
                        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo)) {
                            this.type = 17;
                            this.checkedVotes = new ArrayList<>();
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported) {
                            this.type = 0;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                            TLRPC.Document document = getDocument();
                            if (document != null && document.mime_type != null) {
                                if (isGifDocument(document, hasValidGroupId())) {
                                    this.type = 8;
                                } else if (isSticker()) {
                                    this.type = 13;
                                } else if (isAnimatedSticker()) {
                                    this.type = 15;
                                } else {
                                    this.type = 9;
                                }
                            } else {
                                this.type = 9;
                            }
                        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                            this.type = 0;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaStory) {
                            int i3 = getMedia(this.messageOwner).via_mention ? 24 : 23;
                            this.type = i3;
                            if (i3 == 24) {
                                this.contentType = 1;
                            }
                        }
                    }
                } else {
                    TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = this.currentEvent;
                    if (tL_channelAdminLogEvent != null) {
                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                            TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                            this.contentType = 1;
                            TLRPC.WallPaper wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                            if ((wallPaper instanceof TLRPC.TL_wallPaperNoFile) && wallPaper.id == 0 && wallPaper.settings == null) {
                                this.type = 10;
                            } else {
                                this.type = 22;
                                ArrayList<TLRPC.PhotoSize> arrayList = new ArrayList<>();
                                this.photoThumbs = arrayList;
                                TLRPC.Document document2 = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                if (document2 != null) {
                                    arrayList.addAll(document2.thumbs);
                                    this.photoThumbsObject = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                }
                            }
                        } else if (message instanceof TLRPC.TL_messageService) {
                            TLRPC.MessageAction messageAction = message.action;
                            if ((messageAction instanceof TLRPC.TL_messageActionChangeCreator) || (messageAction instanceof TLRPC.TL_messageActionNewCreatorPending) || (messageAction instanceof TLRPC.TL_messageActionManagedBotCreated) || (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper)) {
                                this.contentType = 1;
                                this.type = 10;
                            } else if (messageAction instanceof TLRPC.TL_messageActionSetChatWallPaper) {
                                this.contentType = 1;
                                this.type = 22;
                                TLRPC.TL_messageActionSetChatWallPaper tL_messageActionSetChatWallPaper = (TLRPC.TL_messageActionSetChatWallPaper) messageAction;
                                ArrayList<TLRPC.PhotoSize> arrayList2 = new ArrayList<>();
                                this.photoThumbs = arrayList2;
                                TLRPC.Document document3 = tL_messageActionSetChatWallPaper.wallpaper.document;
                                if (document3 != null) {
                                    arrayList2.addAll(document3.thumbs);
                                    this.photoThumbsObject = tL_messageActionSetChatWallPaper.wallpaper.document;
                                }
                            } else if (messageAction instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                                this.contentType = 1;
                                this.type = 21;
                                ArrayList<TLRPC.PhotoSize> arrayList3 = new ArrayList<>();
                                this.photoThumbs = arrayList3;
                                arrayList3.addAll(this.messageOwner.action.photo.sizes);
                                this.photoThumbsObject = this.messageOwner.action.photo;
                            } else if (messageAction instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                                this.type = 0;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionGiftCode) && ((TLRPC.TL_messageActionGiftCode) messageAction).boost_peer != null) {
                                this.contentType = 1;
                                this.type = 25;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionGiftPremium) || (messageAction instanceof TLRPC.TL_messageActionGiftCode)) {
                                this.contentType = 1;
                                this.type = 18;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionGiftStars) || (messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionPrizeStars) || (((messageAction instanceof TLRPC.TL_messageActionStarGiftUnique) && ((TLRPC.TL_messageActionStarGiftUnique) messageAction).refunded) || (messageAction instanceof TLRPC.TL_messageActionGiftTon))) {
                                this.contentType = 1;
                                this.type = 30;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) || (messageAction instanceof TLRPC.TL_messageActionUserUpdatedPhoto)) {
                                this.contentType = 1;
                                this.type = 11;
                            } else if (messageAction instanceof TLRPC.TL_messageEncryptedAction) {
                                TLRPC.DecryptedMessageAction decryptedMessageAction = messageAction.encryptedAction;
                                if ((decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages) || (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL)) {
                                    this.contentType = 1;
                                    this.type = 10;
                                } else {
                                    this.contentType = -1;
                                    this.type = -1;
                                }
                            } else if (messageAction instanceof TLRPC.TL_messageActionHistoryClear) {
                                this.contentType = -1;
                                this.type = -1;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionPhoneCall) || (messageAction instanceof TLRPC.TL_messageActionConferenceCall)) {
                                this.type = 16;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionSetChatTheme) && (((TLRPC.TL_messageActionSetChatTheme) messageAction).theme instanceof TLRPC.TL_chatThemeUniqueGift)) {
                                this.type = 31;
                                this.contentType = 1;
                            } else if (messageAction instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
                                this.type = 33;
                                this.contentType = 1;
                            } else if ((messageAction instanceof TLRPC.TL_messageActionChangeCommunity) && ((TLRPC.TL_messageActionChangeCommunity) messageAction).community_id != 0) {
                                this.type = 37;
                                this.contentType = 1;
                            } else if (messageAction instanceof TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined) {
                                this.type = 34;
                                this.contentType = 1;
                            } else if (messageAction instanceof TLRPC.TL_messageActionSuggestBirthday) {
                                this.type = 32;
                                this.contentType = 1;
                            } else if (messageAction instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                                this.type = 35;
                                this.contentType = 1;
                            } else {
                                this.contentType = 1;
                                this.type = 10;
                            }
                        }
                    }
                }
            }
        }
        if (i2 == 1000 || i2 == (i = this.type) || i == 19) {
            return;
        }
        updateMessageText(MessagesController.getInstance(this.currentAccount).getUsers(), MessagesController.getInstance(this.currentAccount).getChats(), null, null);
        generateThumbs(false);
    }

    public boolean checkLayout() {
        CharSequence charSequence;
        TextPaint textPaint;
        int i = this.type;
        boolean z = i == 24 && this.widePostsTextWidth > 0;
        if ((i == 0 || i == 19 || i == 36 || z) && this.messageOwner.peer_id != null && (charSequence = this.messageText) != null && (charSequence.length() != 0 || this.isBotPendingDraft)) {
            if (this.layoutCreated) {
                int minTabletSide = AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : AndroidUtilities.displaySize.x;
                TextPaint textPaint2 = Theme.chat_msgTextPaint;
                float textSize = textPaint2 != null ? textPaint2.getTextSize() : 0.0f;
                if (Math.abs(this.generatedWithMinSize - minTabletSide) > AndroidUtilities.dp(52.0f) || this.generatedWithDensity != AndroidUtilities.density || this.generatedWithFontSize != textSize) {
                    this.layoutCreated = false;
                }
            }
            if (!this.layoutCreated) {
                this.layoutCreated = true;
                TLRPC.User user = isFromUser() ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id)) : null;
                if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                    textPaint = Theme.chat_msgGameTextPaint;
                } else {
                    textPaint = Theme.chat_msgTextPaint;
                }
                int[] iArr = allowsBigEmoji() ? new int[1] : null;
                CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.messageText, textPaint.getFontMetricsInt(), false, iArr);
                this.messageText = charSequenceReplaceEmoji;
                Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, textPaint.getFontMetricsInt());
                this.messageText = spannableReplaceAnimatedEmoji;
                if (iArr != null && iArr[0] > 1) {
                    replaceEmojiToLottieFrame(spannableReplaceAnimatedEmoji, iArr);
                }
                checkEmojiOnly(iArr);
                checkBigAnimatedEmoji();
                setType();
                generateLayout(user);
                if (this.caption != null) {
                    this.caption = null;
                    generateCaption();
                }
                return true;
            }
        }
        return false;
    }

    public void resetLayout() {
        this.layoutCreated = false;
    }

    public void setWidePostsTextWidth(int i) {
        int iMax = Math.max(0, i);
        if (this.widePostsTextWidth != iMax) {
            this.widePostsTextWidth = iMax;
            this.cachedTextHeight = null;
            this.cachedApproximateHeight = null;
            resetLayout();
        }
    }

    public String getMimeType() {
        TLRPC.Document document = getDocument();
        if (document != null) {
            return document.mime_type;
        }
        boolean z = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice;
        TLRPC.Message message = this.messageOwner;
        if (!z) {
            return getMedia(message) instanceof TLRPC.TL_messageMediaPhoto ? "image/jpeg" : (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(this.messageOwner).webpage.photo == null) ? _UrlKt.FRAGMENT_ENCODE_SET : "image/jpeg";
        }
        TLRPC.WebDocument webDocument = ((TLRPC.TL_messageMediaInvoice) getMedia(message)).webPhoto;
        if (webDocument != null) {
            return webDocument.mime_type;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public boolean canPreviewDocument() {
        return canPreviewDocument(getDocument());
    }

    public static boolean isAnimatedStickerDocument(TLRPC.Document document) {
        return document != null && document.mime_type.equals("video/webm");
    }

    public static boolean isStaticStickerDocument(TLRPC.Document document) {
        return document != null && document.mime_type.equals("image/webp");
    }

    public static boolean isGifDocument(WebFile webFile) {
        if (webFile != null) {
            return webFile.mime_type.equals("image/gif") || isNewGifDocument(webFile);
        }
        return false;
    }

    public static boolean isGifDocument(TLRPC.Document document) {
        return isGifDocument(document, false);
    }

    public static boolean isGifDocument(TLRPC.Document document, boolean z) {
        String str;
        if (document == null || (str = document.mime_type) == null) {
            return false;
        }
        return (str.equals("image/gif") && !z) || isNewGifDocument(document);
    }

    public static boolean isDocumentHasThumb(TLRPC.Document document) {
        if (document != null && !document.thumbs.isEmpty()) {
            int size = document.thumbs.size();
            for (int i = 0; i < size; i++) {
                TLRPC.PhotoSize photoSize = document.thumbs.get(i);
                if (photoSize != null && !(photoSize instanceof TLRPC.TL_photoSizeEmpty) && (!(photoSize.location instanceof TLRPC.TL_fileLocationUnavailable) || photoSize.bytes != null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean canPreviewDocument(TLRPC.Document document) {
        String str;
        if (document != null && (str = document.mime_type) != null) {
            if ((isDocumentHasThumb(document) && (str.equalsIgnoreCase("image/png") || str.equalsIgnoreCase("image/jpg") || str.equalsIgnoreCase("image/jpeg"))) || (Build.VERSION.SDK_INT >= 26 && str.equalsIgnoreCase("image/heic"))) {
                for (int i = 0; i < document.attributes.size(); i++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                        TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = (TLRPC.TL_documentAttributeImageSize) documentAttribute;
                        return tL_documentAttributeImageSize.f1017w < 6000 && tL_documentAttributeImageSize.f1016h < 6000;
                    }
                }
            } else if (BuildVars.DEBUG_PRIVATE_VERSION) {
                String documentFileName = FileLoader.getDocumentFileName(document);
                if (documentFileName.startsWith("tg_secret_sticker") && documentFileName.endsWith("json")) {
                    return true;
                }
                return documentFileName.endsWith(".svg");
            }
        }
        return false;
    }

    public static boolean isRoundVideoDocument(TLRPC.Document document) {
        if (document != null && "video/mp4".equals(document.mime_type)) {
            boolean z = false;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < document.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    i = documentAttribute.f1017w;
                    i2 = documentAttribute.f1016h;
                    z = documentAttribute.round_message;
                }
            }
            if (z && i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNewGifDocument(WebFile webFile) {
        if (webFile != null && "video/mp4".equals(webFile.mime_type)) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < webFile.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = webFile.attributes.get(i3);
                if (!(documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) && (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                    i = documentAttribute.f1017w;
                    i2 = documentAttribute.f1016h;
                }
            }
            if (i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNewGifDocument(TLRPC.Document document) {
        if (document != null && "video/mp4".equals(document.mime_type)) {
            boolean z = false;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < document.attributes.size(); i3++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                    z = true;
                } else if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    i = documentAttribute.f1017w;
                    i2 = documentAttribute.f1016h;
                }
            }
            if (z && i <= 1280 && i2 <= 1280) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSystemSignUp(MessageObject messageObject) {
        if (messageObject == null) {
            return false;
        }
        TLRPC.Message message = messageObject.messageOwner;
        return (message instanceof TLRPC.TL_messageService) && (((TLRPC.TL_messageService) message).action instanceof TLRPC.TL_messageActionContactSignUp);
    }

    public void generateThumbs(boolean z) {
        ArrayList<TLRPC.PhotoSize> arrayList;
        ArrayList<TLRPC.PhotoSize> arrayList2;
        ArrayList<TLRPC.PhotoSize> arrayList3;
        TL_iv.RichMessage richMessage;
        ArrayList<TLRPC.PhotoSize> arrayList4;
        ArrayList<TLRPC.PhotoSize> arrayList5;
        ArrayList<TLRPC.PhotoSize> arrayList6;
        ArrayList<TLRPC.PhotoSize> arrayList7;
        ArrayList<TLRPC.PhotoSize> arrayList8;
        ArrayList<TLRPC.PhotoSize> arrayList9;
        ArrayList<TLRPC.PhotoSize> arrayList10;
        ArrayList<TLRPC.PhotoSize> arrayList11;
        boolean zHasExtendedMediaPreview = hasExtendedMediaPreview();
        TLRPC.Message message = this.messageOwner;
        if (zHasExtendedMediaPreview) {
            TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) message.media.extended_media.get(0);
            if (!z) {
                this.photoThumbs = new ArrayList<>(Collections.singletonList(tL_messageExtendedMediaPreview.thumb));
            } else {
                updatePhotoSizeLocations(this.photoThumbs, Collections.singletonList(tL_messageExtendedMediaPreview.thumb));
            }
            this.photoThumbsObject = this.messageOwner;
            if (this.strippedThumb == null) {
                createStrippedThumb();
                return;
            }
            return;
        }
        if (message instanceof TLRPC.TL_messageService) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) {
                TLRPC.Photo photo = messageAction.photo;
                if (!z) {
                    this.photoThumbs = new ArrayList<>(photo.sizes);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList12 = this.photoThumbs;
                    if (arrayList12 != null && !arrayList12.isEmpty()) {
                        for (int i = 0; i < this.photoThumbs.size(); i++) {
                            TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                            int i2 = 0;
                            while (true) {
                                if (i2 < photo.sizes.size()) {
                                    TLRPC.PhotoSize photoSize2 = photo.sizes.get(i2);
                                    if (!(photoSize2 instanceof TLRPC.TL_photoSizeEmpty) && photoSize2.type.equals(photoSize.type)) {
                                        photoSize.location = photoSize2.location;
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                }
                if (photo.dc_id != 0 && (arrayList11 = this.photoThumbs) != null) {
                    int size = arrayList11.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        TLRPC.FileLocation fileLocation = this.photoThumbs.get(i3).location;
                        if (fileLocation != null) {
                            fileLocation.dc_id = photo.dc_id;
                            fileLocation.file_reference = photo.file_reference;
                        }
                    }
                }
                this.photoThumbsObject = this.messageOwner.action.photo;
                return;
            }
            return;
        }
        if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId != null) {
            if (TextUtils.isEmpty(this.emojiAnimatedStickerColor) && isDocumentHasThumb(this.emojiAnimatedSticker)) {
                if (!z || (arrayList = this.photoThumbs) == null) {
                    ArrayList<TLRPC.PhotoSize> arrayList13 = new ArrayList<>();
                    this.photoThumbs = arrayList13;
                    arrayList13.addAll(this.emojiAnimatedSticker.thumbs);
                } else if (!arrayList.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, this.emojiAnimatedSticker.thumbs);
                }
                this.photoThumbsObject = this.emojiAnimatedSticker;
                return;
            }
            return;
        }
        if (getMedia(message) != null && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty)) {
            boolean z2 = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto;
            TLRPC.Message message2 = this.messageOwner;
            if (z2) {
                TLRPC.Photo photo2 = getMedia(message2).photo;
                if (!z || ((arrayList10 = this.photoThumbs) != null && arrayList10.size() != photo2.sizes.size())) {
                    this.photoThumbs = new ArrayList<>(photo2.sizes);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList14 = this.photoThumbs;
                    if (arrayList14 != null && !arrayList14.isEmpty()) {
                        for (int i4 = 0; i4 < this.photoThumbs.size(); i4++) {
                            TLRPC.PhotoSize photoSize3 = this.photoThumbs.get(i4);
                            if (photoSize3 != null) {
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= photo2.sizes.size()) {
                                        break;
                                    }
                                    TLRPC.PhotoSize photoSize4 = photo2.sizes.get(i5);
                                    if (photoSize4 != null && !(photoSize4 instanceof TLRPC.TL_photoSizeEmpty)) {
                                        if (!photoSize4.type.equals(photoSize3.type)) {
                                            if ("s".equals(photoSize3.type) && (photoSize4 instanceof TLRPC.TL_photoStrippedSize)) {
                                                this.photoThumbs.set(i4, photoSize4);
                                                break;
                                            }
                                        } else {
                                            photoSize3.location = photoSize4.location;
                                            break;
                                        }
                                    }
                                    i5++;
                                }
                            }
                        }
                    }
                }
                this.photoThumbsObject = getMedia(this.messageOwner).photo;
                return;
            }
            boolean z3 = getMedia(message2) instanceof TLRPC.TL_messageMediaDocument;
            TLRPC.Message message3 = this.messageOwner;
            if (z3) {
                TLRPC.Photo photo3 = ((TLRPC.TL_messageMediaDocument) getMedia(message3)).video_cover;
                if (photo3 != null) {
                    if (!z || ((arrayList9 = this.photoThumbs) != null && arrayList9.size() != photo3.sizes.size())) {
                        this.photoThumbs = new ArrayList<>(photo3.sizes);
                    } else {
                        ArrayList<TLRPC.PhotoSize> arrayList15 = this.photoThumbs;
                        if (arrayList15 != null && !arrayList15.isEmpty()) {
                            for (int i6 = 0; i6 < this.photoThumbs.size(); i6++) {
                                TLRPC.PhotoSize photoSize5 = this.photoThumbs.get(i6);
                                if (photoSize5 != null) {
                                    int i7 = 0;
                                    while (true) {
                                        if (i7 >= photo3.sizes.size()) {
                                            break;
                                        }
                                        TLRPC.PhotoSize photoSize6 = photo3.sizes.get(i7);
                                        if (photoSize6 != null && !(photoSize6 instanceof TLRPC.TL_photoSizeEmpty)) {
                                            if (!photoSize6.type.equals(photoSize5.type)) {
                                                if ("s".equals(photoSize5.type) && (photoSize6 instanceof TLRPC.TL_photoStrippedSize)) {
                                                    this.photoThumbs.set(i6, photoSize6);
                                                    break;
                                                }
                                            } else {
                                                photoSize5.location = photoSize6.location;
                                                break;
                                            }
                                        }
                                        i7++;
                                    }
                                }
                            }
                        }
                    }
                    this.photoThumbsObject = photo3;
                    return;
                }
                TLRPC.Document document = getDocument();
                if (isDocumentHasThumb(document)) {
                    if (!z || (arrayList8 = this.photoThumbs) == null) {
                        ArrayList<TLRPC.PhotoSize> arrayList16 = new ArrayList<>();
                        this.photoThumbs = arrayList16;
                        arrayList16.addAll(document.thumbs);
                    } else if (!arrayList8.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, document.thumbs);
                    }
                    this.photoThumbsObject = document;
                    return;
                }
                return;
            }
            boolean z4 = getMedia(message3) instanceof TLRPC.TL_messageMediaGame;
            TLRPC.Message message4 = this.messageOwner;
            if (z4) {
                TLRPC.Document document2 = getMedia(message4).game.document;
                if (document2 != null && isDocumentHasThumb(document2)) {
                    if (!z) {
                        ArrayList<TLRPC.PhotoSize> arrayList17 = new ArrayList<>();
                        this.photoThumbs = arrayList17;
                        arrayList17.addAll(document2.thumbs);
                    } else {
                        ArrayList<TLRPC.PhotoSize> arrayList18 = this.photoThumbs;
                        if (arrayList18 != null && !arrayList18.isEmpty()) {
                            updatePhotoSizeLocations(this.photoThumbs, document2.thumbs);
                        }
                    }
                    this.photoThumbsObject = document2;
                }
                TLRPC.Photo photo4 = getMedia(this.messageOwner).game.photo;
                if (photo4 != null) {
                    if (!z || (arrayList7 = this.photoThumbs2) == null) {
                        this.photoThumbs2 = new ArrayList<>(photo4.sizes);
                    } else if (!arrayList7.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs2, photo4.sizes);
                    }
                    this.photoThumbsObject2 = photo4;
                }
                if (this.photoThumbs != null || (arrayList6 = this.photoThumbs2) == null) {
                    return;
                }
                this.photoThumbs = arrayList6;
                this.photoThumbs2 = null;
                this.photoThumbsObject = this.photoThumbsObject2;
                this.photoThumbsObject2 = null;
                return;
            }
            if (getMedia(message4) instanceof TLRPC.TL_messageMediaWebPage) {
                TLRPC.Photo photo5 = getMedia(this.messageOwner).webpage.photo;
                TLRPC.Document document3 = getMedia(this.messageOwner).webpage.document;
                if (photo5 != null) {
                    if (!z || (arrayList5 = this.photoThumbs) == null) {
                        this.photoThumbs = new ArrayList<>(photo5.sizes);
                    } else if (!arrayList5.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, photo5.sizes);
                    }
                    this.photoThumbsObject = photo5;
                    return;
                }
                if (document3 == null || !isDocumentHasThumb(document3)) {
                    return;
                }
                if (!z) {
                    ArrayList<TLRPC.PhotoSize> arrayList19 = new ArrayList<>();
                    this.photoThumbs = arrayList19;
                    arrayList19.addAll(document3.thumbs);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList20 = this.photoThumbs;
                    if (arrayList20 != null && !arrayList20.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, document3.thumbs);
                    }
                }
                this.photoThumbsObject = document3;
                return;
            }
            return;
        }
        TLRPC.Message message5 = this.messageOwner;
        if (message5 != null && (richMessage = message5.rich_message) != null) {
            TLRPC.Document documentFindVideo = findVideo(richMessage);
            TLRPC.Photo photoFindPhoto = findPhoto(this.messageOwner.rich_message);
            if (documentFindVideo != null) {
                if (isDocumentHasThumb(documentFindVideo)) {
                    if (!z) {
                        ArrayList<TLRPC.PhotoSize> arrayList21 = new ArrayList<>();
                        this.photoThumbs = arrayList21;
                        arrayList21.addAll(documentFindVideo.thumbs);
                    } else {
                        ArrayList<TLRPC.PhotoSize> arrayList22 = this.photoThumbs;
                        if (arrayList22 != null && !arrayList22.isEmpty()) {
                            updatePhotoSizeLocations(this.photoThumbs, documentFindVideo.thumbs);
                        }
                    }
                    this.photoThumbsObject = documentFindVideo;
                    return;
                }
                return;
            }
            if (photoFindPhoto != null) {
                if (!z || (arrayList4 = this.photoThumbs) == null) {
                    this.photoThumbs = new ArrayList<>(photoFindPhoto.sizes);
                } else if (!arrayList4.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, photoFindPhoto.sizes);
                }
                this.photoThumbsObject = photoFindPhoto;
                if (this.strippedThumb == null) {
                    createStrippedThumb();
                    return;
                }
                return;
            }
            return;
        }
        TLRPC.MessageMedia messageMedia = this.sponsoredMedia;
        if (messageMedia != null) {
            TLRPC.Photo photo6 = messageMedia.photo;
            TLRPC.Document document4 = messageMedia.document;
            if (photo6 != null) {
                if (!z || (arrayList3 = this.photoThumbs) == null) {
                    this.photoThumbs = new ArrayList<>(photo6.sizes);
                } else if (!arrayList3.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, photo6.sizes);
                }
                this.photoThumbsObject = photo6;
                return;
            }
            if (document4 == null || !isDocumentHasThumb(document4)) {
                return;
            }
            if (!z) {
                ArrayList<TLRPC.PhotoSize> arrayList23 = new ArrayList<>();
                this.photoThumbs = arrayList23;
                arrayList23.addAll(document4.thumbs);
            } else {
                ArrayList<TLRPC.PhotoSize> arrayList24 = this.photoThumbs;
                if (arrayList24 != null && !arrayList24.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, document4.thumbs);
                }
            }
            this.photoThumbsObject = document4;
            return;
        }
        if (this.sponsoredPhoto != null) {
            if (!z || (arrayList2 = this.photoThumbs) == null) {
                this.photoThumbs = new ArrayList<>(this.sponsoredPhoto.sizes);
            } else if (!arrayList2.isEmpty()) {
                updatePhotoSizeLocations(this.photoThumbs, this.sponsoredPhoto.sizes);
            }
            this.photoThumbsObject = this.sponsoredPhoto;
            if (this.strippedThumb == null) {
                createStrippedThumb();
            }
        }
    }

    private static void updatePhotoSizeLocations(ArrayList<TLRPC.PhotoSize> arrayList, List<TLRPC.PhotoSize> list) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            TLRPC.PhotoSize photoSize = arrayList.get(i);
            if (photoSize != null) {
                int size2 = list.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        TLRPC.PhotoSize photoSize2 = list.get(i2);
                        if (!(photoSize2 instanceof TLRPC.TL_photoSizeEmpty) && !(photoSize2 instanceof TLRPC.TL_photoCachedSize) && photoSize2 != null && photoSize2.type.equals(photoSize.type)) {
                            photoSize.location = photoSize2.location;
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
    }

    public CharSequence replaceWithLink(CharSequence charSequence, String str, ArrayList<Long> arrayList, AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray<TLRPC.User> longSparseArray) {
        TLRPC.User user;
        if (TextUtils.indexOf(charSequence, str) < 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
        for (int i = 0; i < arrayList.size(); i++) {
            if (abstractMap != null) {
                user = abstractMap.get(arrayList.get(i));
            } else {
                user = longSparseArray != null ? longSparseArray.get(arrayList.get(i).longValue()) : null;
            }
            if (user == null) {
                user = MessagesController.getInstance(this.currentAccount).getUser(arrayList.get(i));
            }
            if (user != null) {
                String userName = UserObject.getUserName(user);
                int length = spannableStringBuilder.length();
                if (spannableStringBuilder.length() != 0) {
                    spannableStringBuilder.append((CharSequence) ", ");
                }
                spannableStringBuilder.append((CharSequence) userName);
                spannableStringBuilder.setSpan(new URLSpanNoUnderlineBold(_UrlKt.FRAGMENT_ENCODE_SET + user.id), length, userName.length() + length, 33);
            }
        }
        return TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{spannableStringBuilder});
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, CharSequence charSequence2) {
        return TextUtils.indexOf(charSequence, str) >= 0 ? TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{charSequence2}) : charSequence;
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, TLObject tLObject) {
        return replaceWithLink(charSequence, str, tLObject, false);
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, TLObject tLObject, boolean z) {
        String str2;
        String str3;
        TLObject tLObject2;
        String strReplace;
        int iIndexOf = TextUtils.indexOf(charSequence, str);
        if (iIndexOf < 0) {
            return charSequence;
        }
        boolean z2 = tLObject instanceof TLRPC.User;
        TLObject tLObject3 = null;
        tLObject3 = null;
        tLObject3 = null;
        CharSequence topicSpannedName = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z2) {
            strReplace = (z ? UserObject.getForcedFirstName((TLRPC.User) tLObject) : UserObject.getUserName((TLRPC.User) tLObject)).replace('\n', ' ');
            str2 = _UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.User) tLObject).id;
        } else if (tLObject instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) tLObject;
            strReplace = chat.title.replace('\n', ' ');
            str2 = _UrlKt.FRAGMENT_ENCODE_SET + (-chat.id);
        } else {
            if (tLObject instanceof TLRPC.TL_game) {
                topicSpannedName = ((TLRPC.TL_game) tLObject).title.replace('\n', ' ');
                str2 = "game";
            } else {
                if (tLObject instanceof TLRPC.TL_chatInviteExported) {
                    TLRPC.TL_chatInviteExported tL_chatInviteExported = (TLRPC.TL_chatInviteExported) tLObject;
                    topicSpannedName = tL_chatInviteExported.link.replace('\n', ' ');
                    str3 = "invite";
                    tLObject2 = tL_chatInviteExported;
                } else if (tLObject instanceof TLRPC.ForumTopic) {
                    topicSpannedName = ForumUtilities.getTopicSpannedName((TLRPC.ForumTopic) tLObject, null, false);
                    str3 = "topic";
                    tLObject2 = tLObject;
                } else {
                    str2 = MVEL.VERSION_SUB;
                }
                tLObject3 = tLObject2;
                str2 = str3;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
            URLSpanNoUnderlineBold uRLSpanNoUnderlineBold = new URLSpanNoUnderlineBold(str2);
            uRLSpanNoUnderlineBold.setObject(tLObject3);
            spannableStringBuilder.setSpan(uRLSpanNoUnderlineBold, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
            return spannableStringBuilder;
        }
        topicSpannedName = strReplace;
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
        URLSpanNoUnderlineBold uRLSpanNoUnderlineBold2 = new URLSpanNoUnderlineBold(str2);
        uRLSpanNoUnderlineBold2.setObject(tLObject3);
        spannableStringBuilder2.setSpan(uRLSpanNoUnderlineBold2, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
        return spannableStringBuilder2;
    }

    public String getExtension() {
        String fileName = getFileName();
        int iLastIndexOf = fileName.lastIndexOf(46);
        String strSubstring = iLastIndexOf != -1 ? fileName.substring(iLastIndexOf + 1) : null;
        if (strSubstring == null || strSubstring.length() == 0) {
            strSubstring = getDocument().mime_type;
        }
        if (strSubstring == null) {
            strSubstring = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return strSubstring.toUpperCase();
    }

    public String getFileName() {
        if (getDocument() != null) {
            return getFileName(getDocument());
        }
        return getFileName(this.messageOwner);
    }

    public String getFileNameFast() {
        if (getDocumentFast() != null) {
            return getFileName(getDocumentFast());
        }
        return getFileName(this.messageOwner);
    }

    public static String getFileName(TLRPC.Message message) {
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        if (getMedia(message) instanceof TLRPC.TL_messageMediaDocument) {
            return getFileName(getDocument(message));
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) {
            ArrayList<TLRPC.PhotoSize> arrayList = getMedia(message).photo.sizes;
            if (arrayList.size() > 0 && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                return FileLoader.getAttachFileName(closestPhotoSizeWithSize);
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if ((getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(message).webpage != null) {
            return getFileName(getMedia(message).webpage.document);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static String getFileName(TLRPC.Document document) {
        return FileLoader.getAttachFileName(document);
    }

    public static String getFileName(TLRPC.MessageMedia messageMedia) {
        TLRPC.WebPage webPage;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            return FileLoader.getAttachFileName(messageMedia.document);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            ArrayList<TLRPC.PhotoSize> arrayList = messageMedia.photo.sizes;
            if (arrayList.size() > 0 && (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                return FileLoader.getAttachFileName(closestPhotoSizeWithSize);
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) && (webPage = messageMedia.webpage) != null) {
            return FileLoader.getAttachFileName(webPage.document);
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public int getMediaType() {
        if (isVideo()) {
            return 2;
        }
        if (isVoice()) {
            return 1;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
            return 3;
        }
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? 0 : 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean containsUrls(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() >= 2 && charSequence.length() <= 20480) {
            int length = charSequence.length();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            char c2 = 0;
            while (i < length) {
                char cCharAt = charSequence.charAt(i);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    i2++;
                    if (i2 >= 6) {
                        return true;
                    }
                    i3 = 0;
                    i4 = 0;
                } else if (cCharAt == ' ' || i2 <= 0) {
                    i2 = 0;
                }
                if ((cCharAt != '@' && cCharAt != '#' && cCharAt != '/' && cCharAt != '$') || i != 0) {
                    if (i != 0) {
                        int i5 = i - 1;
                        if (charSequence.charAt(i5) == ' ' || charSequence.charAt(i5) == '\n') {
                        }
                    }
                    if (cCharAt == ':') {
                        i3 = i3 == 0 ? 1 : 0;
                    } else if (cCharAt != '/') {
                        if (cCharAt == '.') {
                            if (i4 == 0 && c2 != ' ') {
                                i4++;
                            }
                        } else if (cCharAt != ' ' && c2 == '.' && i4 == 1) {
                            return true;
                        }
                        i4 = 0;
                    } else {
                        if (i3 == 2) {
                            return true;
                        }
                        if (i3 == 1) {
                            i3++;
                        }
                    }
                    i++;
                    c2 = cCharAt;
                }
                return true;
            }
        }
        return false;
    }

    public void generateLinkDescription() {
        boolean z;
        int i;
        int i2;
        TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory;
        TL_stories.StoryItem storyItem;
        if (this.linkDescription != null) {
            return;
        }
        TLRPC.WebPage webPage = this.storyMentionWebpage;
        if (webPage == null) {
            webPage = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage ? ((TLRPC.TL_messageMediaWebPage) getMedia(this.messageOwner)).webpage : null;
        }
        if (webPage != null) {
            for (int i3 = 0; i3 < webPage.attributes.size(); i3++) {
                TLRPC.WebPageAttribute webPageAttribute = webPage.attributes.get(i3);
                if ((webPageAttribute instanceof TLRPC.TL_webPageAttributeStory) && (storyItem = (tL_webPageAttributeStory = (TLRPC.TL_webPageAttributeStory) webPageAttribute).storyItem) != null && storyItem.caption != null) {
                    this.linkDescription = new SpannableStringBuilder(tL_webPageAttributeStory.storyItem.caption);
                    this.webPageDescriptionEntities = tL_webPageAttributeStory.storyItem.entities;
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (this.linkDescription != null) {
            i = 0;
        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage) && getMedia(this.messageOwner).webpage.description != null) {
            this.linkDescription = Spannable.Factory.getInstance().newSpannable(getMedia(this.messageOwner).webpage.description);
            String lowerCase = getMedia(this.messageOwner).webpage.site_name;
            if (lowerCase != null) {
                lowerCase = lowerCase.toLowerCase();
            }
            if ("instagram".equals(lowerCase)) {
                i2 = 1;
            } else {
                i2 = "twitter".equals(lowerCase) ? 2 : 0;
            }
            i = i2;
        } else {
            if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) && getMedia(this.messageOwner).game.description != null) {
                this.linkDescription = Spannable.Factory.getInstance().newSpannable(getMedia(this.messageOwner).game.description);
            } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && getMedia(this.messageOwner).description != null) {
                this.linkDescription = Spannable.Factory.getInstance().newSpannable(getMedia(this.messageOwner).description);
            }
            i = 0;
        }
        if (TextUtils.isEmpty(this.linkDescription)) {
            return;
        }
        if (containsUrls(this.linkDescription)) {
            try {
                AndroidUtilities.addLinksSafe((Spannable) this.linkDescription, 1, false, true);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
        CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(this.linkDescription, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
        this.linkDescription = charSequenceReplaceEmoji;
        ArrayList<TLRPC.MessageEntity> arrayList = this.webPageDescriptionEntities;
        if (arrayList != null) {
            addEntitiesToText(charSequenceReplaceEmoji, arrayList, isOut(), z, false, !z);
            replaceAnimatedEmoji(this.linkDescription, this.webPageDescriptionEntities, Theme.chat_msgTextPaint.getFontMetricsInt());
        }
        if (i != 0) {
            if (!(this.linkDescription instanceof Spannable)) {
                this.linkDescription = new SpannableStringBuilder(this.linkDescription);
            }
            addUrlsByPattern(isOutOwner(), this.linkDescription, false, i, 0, false);
        }
    }

    public CharSequence getVoiceTranscription() {
        String str;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (str = message.voiceTranscription) == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            SpannableString spannableString = new SpannableString(LocaleController.getString(C2807R.string.NoWordsRecognized));
            spannableString.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.1
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(android.text.TextPaint textPaint) {
                    textPaint.setTextSize(textPaint.getTextSize() * 0.8f);
                    textPaint.setColor(Theme.chat_timePaint.getColor());
                }
            }, 0, spannableString.length(), 33);
            return spannableString;
        }
        String str2 = (!this.translated || (tL_textWithEntities = this.messageOwner.translatedVoiceTranscription) == null) ? this.messageOwner.voiceTranscription : tL_textWithEntities.text;
        return !TextUtils.isEmpty(str2) ? Emoji.replaceEmoji(str2, Theme.chat_msgTextPaint.getFontMetricsInt(), false) : str2;
    }

    public float measureVoiceTranscriptionHeight() {
        return measureVoiceTranscriptionHeight(needDrawAvatar());
    }

    public float measureVoiceTranscriptionHeight(boolean z) {
        int iDp;
        if (getVoiceTranscription() == null) {
            return 0.0f;
        }
        if (this.widePostsTextWidth > 0) {
            iDp = Math.max(AndroidUtilities.dp(10.0f), this.widePostsTextWidth - AndroidUtilities.dp(this.type != 5 ? 14.0f : 0.0f));
        } else {
            iDp = AndroidUtilities.displaySize.x - AndroidUtilities.dp(z ? 147.0f : 95.0f);
        }
        return StaticLayout.Builder.obtain(r0, 0, r0.length(), Theme.chat_msgTextPaint, iDp).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build().getHeight();
    }

    public boolean isVoiceTranscriptionOpen() {
        if (this.messageOwner == null) {
            return false;
        }
        if (!isVoice() && (!isRoundVideo() || !TranscribeButton.isVideoTranscriptionOpen(this))) {
            return false;
        }
        TLRPC.Message message = this.messageOwner;
        if (!message.voiceTranscriptionOpen || message.voiceTranscription == null) {
            return false;
        }
        return message.voiceTranscriptionFinal || TranscribeButton.isTranscribing(this);
    }

    public void generateExplanation() {
        String str;
        ArrayList<TLRPC.MessageEntity> arrayList;
        TLRPC.PollResults pollResults;
        if (this.type != 17) {
            return;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (!(media instanceof TLRPC.TL_messageMediaPoll) || (pollResults = ((TLRPC.TL_messageMediaPoll) media).results) == null) {
            str = null;
            arrayList = null;
        } else {
            str = pollResults.solution;
            arrayList = pollResults.solution_entities;
        }
        if (str != null) {
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(str, Theme.chat_explanationTextPaint.getFontMetricsInt(), false);
            this.quizExplanation = charSequenceReplaceEmoji;
            Spannable spannableReplaceAnimatedEmoji = replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, Theme.chat_explanationTextPaint.getFontMetricsInt(), false);
            this.quizExplanation = spannableReplaceAnimatedEmoji;
            addEntitiesToText(spannableReplaceAnimatedEmoji, arrayList, isOutOwner(), true, false, false);
            return;
        }
        this.quizExplanation = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateCaption() {
        boolean z;
        TLRPC.Message message;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        TLRPC.TL_textWithEntities tL_textWithEntities2;
        TLRPC.TL_textWithEntities tL_textWithEntities3;
        TL_stories.StoryItem storyItem;
        if (isRoundVideo()) {
            return;
        }
        if (this.caption != null) {
            if (this.translated) {
                TLRPC.Message message2 = this.messageOwner;
                boolean z2 = message2.translatedText != null || (this.summarized && message2.translatedSummaryText != null);
                if (z2 == this.captionTranslated && this.summarized == this.captionSummarized) {
                    return;
                }
            }
        }
        TLRPC.Message message3 = this.messageOwner;
        String str = message3.message;
        ArrayList<TLRPC.MessageEntity> arrayList = message3.entities;
        if (this.type == 23) {
            TLRPC.MessageMedia messageMedia = message3.media;
            if (messageMedia != null && (storyItem = messageMedia.storyItem) != null) {
                str = storyItem.caption;
                arrayList = storyItem.entities;
                z = true;
                message = this.messageOwner;
                tL_textWithEntities = message.translatedSummaryText;
                if (tL_textWithEntities == null && this.summarized && this.translated) {
                    this.captionSummarized = true;
                    this.captionTranslated = true;
                    str = tL_textWithEntities.text;
                    arrayList = tL_textWithEntities.entities;
                } else {
                    tL_textWithEntities2 = message.summaryText;
                    if (tL_textWithEntities2 == null && this.summarized) {
                        this.captionSummarized = true;
                        this.captionTranslated = false;
                        str = tL_textWithEntities2.text;
                        arrayList = tL_textWithEntities2.entities;
                    } else {
                        tL_textWithEntities3 = message.translatedText;
                        if (tL_textWithEntities3 == null && this.translated) {
                            this.captionSummarized = false;
                            this.captionTranslated = true;
                            str = tL_textWithEntities3.text;
                            arrayList = tL_textWithEntities3.entities;
                        } else {
                            this.captionSummarized = false;
                            this.captionTranslated = false;
                        }
                    }
                }
                if (!isMediaEmpty() || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) || TextUtils.isEmpty(str)) {
                    return;
                }
                CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(str, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                this.caption = charSequenceReplaceEmoji;
                this.caption = replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                boolean z3 = z || (!(this.messageOwner.send_state != 0 ? false : arrayList.isEmpty() ^ true) && (this.eventId != 0 || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer74) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer74) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.id < 0)));
                if (z3) {
                    if (containsUrls(this.caption)) {
                        try {
                            AndroidUtilities.addLinksSafe((Spannable) this.caption, 5, false, true);
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                        }
                    }
                    addUrlsByPattern(isOutOwner(), this.caption, true, 0, 0, true);
                }
                addEntitiesToText(this.caption, z3);
                this.caption = FormattedDateSpan.applyFormatedDateEntities(this.caption);
                if (isVideo()) {
                    addUrlsByPattern(isOutOwner(), this.caption, true, 3, (int) getDuration(), false);
                } else if (isMusic() || isVoice()) {
                    addUrlsByPattern(isOutOwner(), this.caption, true, 4, (int) getDuration(), false);
                }
                applyTimestampsHighlightForReplyMsg(this.caption);
                return;
            }
            arrayList = new ArrayList<>();
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else if (hasExtendedMedia()) {
            TLRPC.Message message4 = this.messageOwner;
            str = message4.media.description;
            message4.message = str;
        }
        z = false;
        message = this.messageOwner;
        tL_textWithEntities = message.translatedSummaryText;
        if (tL_textWithEntities == null) {
            tL_textWithEntities2 = message.summaryText;
            if (tL_textWithEntities2 == null) {
                tL_textWithEntities3 = message.translatedText;
                if (tL_textWithEntities3 == null) {
                    this.captionSummarized = false;
                    this.captionTranslated = false;
                }
            }
        }
        if (isMediaEmpty()) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void addUrlsByPattern(boolean z, CharSequence charSequence, boolean z2, int i, int i2, boolean z3) {
        Matcher matcher;
        int i3;
        int i4;
        int i5;
        URLSpanNoUnderline uRLSpanNoUnderline;
        URLSpanNoUnderline uRLSpanNoUnderline2;
        Object[] objArr;
        if (charSequence == null) {
            return;
        }
        int i6 = 3;
        int i7 = 1;
        try {
            if (i == 3 || i == 4) {
                if (videoTimeUrlPattern == null) {
                    videoTimeUrlPattern = Pattern.compile("\\b(?:(\\d{1,2}):)?(\\d{1,3}):([0-5][0-9])\\b(?: - |)([^\\n]*)");
                }
                matcher = videoTimeUrlPattern.matcher(charSequence);
            } else if (i == 1) {
                if (instagramUrlPattern == null) {
                    instagramUrlPattern = Pattern.compile("(^|\\s|\\()@[a-zA-Z\\d_.]{1,32}|(^|\\s|\\()#[\\w.]+");
                }
                matcher = instagramUrlPattern.matcher(charSequence);
            } else {
                if (urlPattern == null) {
                    urlPattern = Pattern.compile("(^|\\s)/[a-zA-Z@\\d_]{1,255}(?![a-zA-Z@\\d_/])|(^|\\s|\\()@[a-zA-Z\\d_]{1,32}|(^|\\s|\\()#[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s|\\()\\$[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s)\\$[A-Z]{3,8}([ ,.]|$)");
                }
                matcher = urlPattern.matcher(charSequence);
            }
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                int i8 = 0;
                while (matcher.find() && i8 < 100) {
                    int iStart = matcher.start();
                    int iEnd = matcher.end();
                    if (i == i6 || i == 4) {
                        int iStart2 = matcher.start(i7);
                        int iEnd2 = matcher.end(i7);
                        int iStart3 = matcher.start(2);
                        int iEnd3 = matcher.end(2);
                        int iStart4 = matcher.start(i6);
                        i3 = 0;
                        int iEnd4 = matcher.end(i6);
                        int iStart5 = matcher.start(4);
                        i4 = i8;
                        int iEnd5 = matcher.end(4);
                        int i9 = Utilities.parseInt(charSequence.subSequence(iStart3, iEnd3));
                        int i10 = Utilities.parseInt(charSequence.subSequence(iStart4, iEnd4));
                        int i11 = (iStart2 < 0 || iEnd2 < 0) ? -1 : Utilities.parseInt(charSequence.subSequence(iStart2, iEnd2));
                        String string = (iStart5 < 0 || iEnd5 < 0) ? null : charSequence.subSequence(iStart5, iEnd5).toString();
                        if (iStart5 >= 0 || iEnd5 >= 0) {
                            iEnd = iEnd4;
                        }
                        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(iStart, iEnd, URLSpan.class);
                        if (uRLSpanArr == null || uRLSpanArr.length <= 0) {
                            int i12 = i10 + (i9 * 60);
                            if (i11 > 0) {
                                i12 += i11 * 3600;
                            }
                            if (i12 <= i2) {
                                i5 = 3;
                                if (i == 3) {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("video?" + i12);
                                } else {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("audio?" + i12);
                                }
                                uRLSpanNoUnderline2 = uRLSpanNoUnderline;
                                uRLSpanNoUnderline2.label = string;
                                if (uRLSpanNoUnderline2 != null) {
                                    if (z3 && (objArr = (ClickableSpan[]) spannable.getSpans(iStart, iEnd, ClickableSpan.class)) != null && objArr.length > 0) {
                                        spannable.removeSpan(objArr[i3]);
                                    }
                                    spannable.setSpan(uRLSpanNoUnderline2, iStart, iEnd, i3);
                                    i8 = i4 + 1;
                                } else {
                                    i8 = i4;
                                }
                                i6 = i5;
                            }
                        }
                        i8 = i4;
                        i6 = 3;
                    } else {
                        char cCharAt = charSequence.charAt(iStart);
                        if (i != 0) {
                            if (cCharAt != '@' && cCharAt != '#') {
                                iStart++;
                            }
                            cCharAt = charSequence.charAt(iStart);
                            if (cCharAt != '@' && cCharAt != '#') {
                                i4 = i8;
                                i8 = i4;
                                i6 = 3;
                            }
                        } else if (cCharAt != '@' && cCharAt != '#' && cCharAt != '/' && cCharAt != '$') {
                            iStart++;
                        }
                        if (i == i7) {
                            if (cCharAt == '@') {
                                uRLSpanNoUnderline2 = new URLSpanNoUnderline("https://instagram.com/" + ((Object) charSequence.subSequence(iStart + 1, iEnd)));
                            } else {
                                uRLSpanNoUnderline2 = new URLSpanNoUnderline("https://www.instagram.com/explore/tags/" + ((Object) charSequence.subSequence(iStart + 1, iEnd)));
                            }
                        } else if (i != 2) {
                            if (charSequence.charAt(iStart) != '/') {
                                String string2 = charSequence.subSequence(iStart, iEnd).toString();
                                if (string2 != null) {
                                    string2 = string2.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                }
                                i5 = i6;
                                i4 = i8;
                                uRLSpanNoUnderline2 = new URLSpanNoUnderline(string2);
                            } else if (z2) {
                                uRLSpanNoUnderline2 = new URLSpanBotCommand(charSequence.subSequence(iStart, iEnd).toString(), z ? 1 : 0);
                                i5 = i6;
                                i4 = i8;
                            } else {
                                i5 = i6;
                                i4 = i8;
                                uRLSpanNoUnderline2 = null;
                            }
                            i3 = 0;
                            if (uRLSpanNoUnderline2 != null) {
                            }
                            i6 = i5;
                        } else if (cCharAt == '@') {
                            uRLSpanNoUnderline2 = new URLSpanNoUnderline("https://twitter.com/" + ((Object) charSequence.subSequence(iStart + 1, iEnd)));
                        } else {
                            uRLSpanNoUnderline2 = new URLSpanNoUnderline("https://twitter.com/hashtag/" + ((Object) charSequence.subSequence(iStart + 1, iEnd)));
                        }
                        i5 = i6;
                        i4 = i8;
                        i3 = 0;
                        if (uRLSpanNoUnderline2 != null) {
                        }
                        i6 = i5;
                    }
                    i7 = 1;
                }
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public static int[] getWebDocumentWidthAndHeight(TLRPC.WebDocument webDocument) {
        if (webDocument == null) {
            return null;
        }
        int size = webDocument.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = webDocument.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                return new int[]{documentAttribute.f1017w, documentAttribute.f1016h};
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return new int[]{documentAttribute.f1017w, documentAttribute.f1016h};
            }
        }
        return null;
    }

    public static double getWebDocumentDuration(TLRPC.WebDocument webDocument) {
        if (webDocument == null) {
            return 0.0d;
        }
        int size = webDocument.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = webDocument.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return documentAttribute.duration;
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                return documentAttribute.duration;
            }
        }
        return 0.0d;
    }

    public static int[] getInlineResultWidthAndHeight(TLRPC.BotInlineResult botInlineResult) {
        int[] webDocumentWidthAndHeight = getWebDocumentWidthAndHeight(botInlineResult.content);
        if (webDocumentWidthAndHeight != null) {
            return webDocumentWidthAndHeight;
        }
        int[] webDocumentWidthAndHeight2 = getWebDocumentWidthAndHeight(botInlineResult.thumb);
        return webDocumentWidthAndHeight2 == null ? new int[]{0, 0} : webDocumentWidthAndHeight2;
    }

    public static int getInlineResultDuration(TLRPC.BotInlineResult botInlineResult) {
        int webDocumentDuration = (int) getWebDocumentDuration(botInlineResult.content);
        return webDocumentDuration == 0 ? (int) getWebDocumentDuration(botInlineResult.thumb) : webDocumentDuration;
    }

    public boolean hasValidGroupId() {
        int i;
        if (getGroupId() == 0) {
            return false;
        }
        ArrayList<TLRPC.PhotoSize> arrayList = this.photoThumbs;
        return !(arrayList == null || arrayList.isEmpty()) || (i = this.type) == 3 || i == 1 || isMusic() || isDocument();
    }

    public boolean hasValidGroupIdFast() {
        int i;
        if (getGroupId() == 0) {
            return false;
        }
        ArrayList<TLRPC.PhotoSize> arrayList = this.photoThumbs;
        return !(arrayList == null || arrayList.isEmpty()) || (i = this.type) == 3 || i == 1 || i == 14 || i == 9;
    }

    public long getGroupIdForUse() {
        long j = this.localSentGroupId;
        return j != 0 ? j : this.messageOwner.grouped_id;
    }

    public long getGroupId() {
        long j = this.localGroupId;
        return j != 0 ? j : getGroupIdForUse();
    }

    public static void addLinks(boolean z, CharSequence charSequence) {
        addLinks(z, charSequence, true, false);
    }

    public static void addLinks(boolean z, CharSequence charSequence, boolean z2, boolean z3) {
        addLinks(z, charSequence, z2, z3, false);
    }

    public static void addLinks(boolean z, CharSequence charSequence, boolean z2, boolean z3, boolean z4) {
        if ((charSequence instanceof Spannable) && containsUrls(charSequence)) {
            try {
                AndroidUtilities.addLinksSafe((Spannable) charSequence, 1, z4, false);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            addPhoneLinks(charSequence);
            addUrlsByPattern(z, charSequence, z2, 0, 0, z3);
        }
    }

    public void resetPlayingProgress() {
        this.audioProgress = 0.0f;
        this.audioProgressSec = 0;
        this.bufferedProgress = 0.0f;
    }

    private boolean addEntitiesToText(CharSequence charSequence, boolean z) {
        return addEntitiesToText(charSequence, false, z);
    }

    public boolean addEntitiesToText(CharSequence charSequence, boolean z, boolean z2) {
        if (charSequence == null) {
            return false;
        }
        if (this.isRestrictedMessage || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported)) {
            ArrayList arrayList = new ArrayList();
            TLRPC.TL_messageEntityItalic tL_messageEntityItalic = new TLRPC.TL_messageEntityItalic();
            tL_messageEntityItalic.offset = 0;
            tL_messageEntityItalic.length = charSequence.length();
            arrayList.add(tL_messageEntityItalic);
            return addEntitiesToText(charSequence, arrayList, isOutOwner(), true, z, z2);
        }
        return addEntitiesToText(charSequence, getEntities(), isOutOwner(), true, z, z2);
    }

    public void replaceEmojiToLottieFrame(CharSequence charSequence, int[] iArr) {
        boolean z;
        if (!(charSequence instanceof Spannable) || SharedConfig.useSystemEmoji) {
            return;
        }
        Spannable spannable = (Spannable) charSequence;
        Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannable.getSpans(0, spannable.length(), Emoji.EmojiSpan.class);
        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannable.getSpans(0, spannable.length(), AnimatedEmojiSpan.class);
        if (emojiSpanArr != null) {
            if (((iArr == null ? 0 : iArr[0]) - emojiSpanArr.length) - (animatedEmojiSpanArr == null ? 0 : animatedEmojiSpanArr.length) > 0) {
                return;
            }
            for (Emoji.EmojiSpan emojiSpan : emojiSpanArr) {
                CharSequence charSequenceSubSequence = emojiSpan.emoji;
                if (Emoji.endsWithRightArrow(charSequenceSubSequence)) {
                    charSequenceSubSequence = charSequenceSubSequence.subSequence(0, charSequenceSubSequence.length() - 2);
                    z = true;
                } else {
                    z = false;
                }
                TLRPC.Document emojiAnimatedSticker = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker(charSequenceSubSequence);
                if (emojiAnimatedSticker != null) {
                    int spanStart = spannable.getSpanStart(emojiSpan);
                    int spanEnd = spannable.getSpanEnd(emojiSpan);
                    spannable.removeSpan(emojiSpan);
                    AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(emojiAnimatedSticker, emojiSpan.fontMetrics);
                    animatedEmojiSpan.standard = true;
                    animatedEmojiSpan.invert = z;
                    spannable.setSpan(animatedEmojiSpan, spanStart, spanEnd, 33);
                }
            }
        }
    }

    public ArrayList<TLRPC.MessageEntity> getEntities() {
        TLRPC.TL_textWithEntities tL_textWithEntities;
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        boolean z = this.summarized;
        boolean z2 = this.translated;
        if (z) {
            if (z2 && (tL_textWithEntities = message.translatedSummaryText) != null) {
                return tL_textWithEntities.entities;
            }
            TLRPC.TL_textWithEntities tL_textWithEntities2 = message.summaryText;
            if (tL_textWithEntities2 != null) {
                return tL_textWithEntities2.entities;
            }
            return null;
        }
        if (z2) {
            if (message.voiceTranscriptionOpen) {
                TLRPC.TL_textWithEntities tL_textWithEntities3 = message.translatedVoiceTranscription;
                if (tL_textWithEntities3 != null) {
                    return tL_textWithEntities3.entities;
                }
                return null;
            }
            TLRPC.TL_textWithEntities tL_textWithEntities4 = message.translatedText;
            if (tL_textWithEntities4 == null || tL_textWithEntities4 == null) {
                return null;
            }
            return tL_textWithEntities4.entities;
        }
        return message.entities;
    }

    public Spannable replaceAnimatedEmoji(CharSequence charSequence, Paint.FontMetricsInt fontMetricsInt) {
        return replaceAnimatedEmoji(charSequence, getEntities(), fontMetricsInt, false);
    }

    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt) {
        return replaceAnimatedEmoji(charSequence, arrayList, fontMetricsInt, false);
    }

    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt, boolean z) {
        return replaceAnimatedEmoji(charSequence, arrayList, fontMetricsInt, z, 1.2f, 0);
    }

    public static Spannable replaceAnimatedEmoji(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, Paint.FontMetricsInt fontMetricsInt, boolean z, float f, int i) {
        Emoji.EmojiSpan emojiSpan;
        AnimatedEmojiSpan animatedEmojiSpan;
        Emoji.EmojiSpan emojiSpan2;
        Emoji.EmojiSpan emojiSpan3 = null;
        if (charSequence == null) {
            return null;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        if (arrayList != null) {
            int i2 = (SharedConfig.getDevicePerformanceClass() >= 2 ? 100 : 50) - i;
            Emoji.EmojiSpan[] emojiSpanArr = (Emoji.EmojiSpan[]) spannableString.getSpans(0, spannableString.length(), Emoji.EmojiSpan.class);
            int i3 = 0;
            while (i3 < arrayList.size() && i2 > 0) {
                TLRPC.MessageEntity messageEntity = arrayList.get(i3);
                if (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) {
                    TLRPC.TL_messageEntityCustomEmoji tL_messageEntityCustomEmoji = (TLRPC.TL_messageEntityCustomEmoji) messageEntity;
                    int i4 = 0;
                    while (i4 < emojiSpanArr.length) {
                        Emoji.EmojiSpan emojiSpan4 = emojiSpanArr[i4];
                        if (emojiSpan4 != null) {
                            int spanStart = spannableString.getSpanStart(emojiSpan4);
                            int spanEnd = spannableString.getSpanEnd(emojiSpan4);
                            int i5 = tL_messageEntityCustomEmoji.offset;
                            emojiSpan2 = emojiSpan3;
                            if (AndroidUtilities.intersect1d(i5, tL_messageEntityCustomEmoji.length + i5, spanStart, spanEnd)) {
                                spannableString.removeSpan(emojiSpan4);
                                emojiSpanArr[i4] = emojiSpan2;
                            }
                        } else {
                            emojiSpan2 = emojiSpan3;
                        }
                        i4++;
                        emojiSpan3 = emojiSpan2;
                    }
                    emojiSpan = emojiSpan3;
                    if (messageEntity.offset + messageEntity.length <= spannableString.length()) {
                        int i6 = messageEntity.offset;
                        AnimatedEmojiSpan[] animatedEmojiSpanArr = (AnimatedEmojiSpan[]) spannableString.getSpans(i6, messageEntity.length + i6, AnimatedEmojiSpan.class);
                        if (animatedEmojiSpanArr != null && animatedEmojiSpanArr.length > 0) {
                            for (AnimatedEmojiSpan animatedEmojiSpan2 : animatedEmojiSpanArr) {
                                spannableString.removeSpan(animatedEmojiSpan2);
                            }
                        }
                        if (tL_messageEntityCustomEmoji.document != null) {
                            animatedEmojiSpan = new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document, f, fontMetricsInt);
                        } else {
                            animatedEmojiSpan = new AnimatedEmojiSpan(tL_messageEntityCustomEmoji.document_id, f, fontMetricsInt);
                        }
                        animatedEmojiSpan.local = tL_messageEntityCustomEmoji.local;
                        animatedEmojiSpan.top = z;
                        int i7 = messageEntity.offset;
                        spannableString.setSpan(animatedEmojiSpan, i7, messageEntity.length + i7, 33);
                        i2--;
                    }
                    i3++;
                    emojiSpan3 = emojiSpan;
                } else {
                    emojiSpan = emojiSpan3;
                }
                i3++;
                emojiSpan3 = emojiSpan;
            }
        }
        return spannableString;
    }

    public static boolean addEntitiesToText(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, boolean z, boolean z2, boolean z3, boolean z4) {
        return addEntitiesToText(charSequence, arrayList, z, z2, z3, z4, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x051d A[PHI: r0 r5 r7 r8 r21
  0x051d: PHI (r0v41 android.text.Spannable) = (r0v14 android.text.Spannable), (r0v42 android.text.Spannable) binds: [B:288:0x04ea, B:291:0x04fe] A[DONT_GENERATE, DONT_INLINE]
  0x051d: PHI (r5v22 int) = (r5v4 int), (r5v23 int) binds: [B:288:0x04ea, B:291:0x04fe] A[DONT_GENERATE, DONT_INLINE]
  0x051d: PHI (r7v21 boolean) = (r7v3 boolean), (r7v22 boolean) binds: [B:288:0x04ea, B:291:0x04fe] A[DONT_GENERATE, DONT_INLINE]
  0x051d: PHI (r8v46 byte) = (r8v13 byte), (r8v47 byte) binds: [B:288:0x04ea, B:291:0x04fe] A[DONT_GENERATE, DONT_INLINE]
  0x051d: PHI (r21v9 int) = (r21v6 int), (r21v10 int) binds: [B:288:0x04ea, B:291:0x04fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x027a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean addEntitiesToText(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, boolean z, boolean z2, boolean z3, boolean z4, int i) {
        int i2;
        int i3;
        Spannable spannable;
        byte b2;
        int i4;
        String string;
        int i5;
        boolean z5;
        int i6;
        int i7;
        int size;
        int i8;
        int i9;
        if (!(charSequence instanceof Spannable)) {
            return false;
        }
        CharSequence charSequenceRestoreFormatedDateEntities = FormattedDateSpan.restoreFormatedDateEntities(charSequence);
        Spannable spannable2 = (Spannable) charSequenceRestoreFormatedDateEntities;
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable2.getSpans(0, charSequenceRestoreFormatedDateEntities.length(), URLSpan.class);
        boolean z6 = uRLSpanArr != null && uRLSpanArr.length > 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            byte b3 = z3 ? (byte) 2 : z ? (byte) 1 : (byte) 0;
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList(arrayList);
            Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MessageObject.$r8$lambda$w1b4brUQc9jkaGF7tJdOKyazR9k((TLRPC.MessageEntity) obj, (TLRPC.MessageEntity) obj2);
                }
            });
            int size2 = arrayList3.size();
            int i10 = 0;
            while (i10 < size2) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList3.get(i10);
                if (messageEntity.length <= 0 || (i7 = messageEntity.offset) < 0 || i7 >= charSequenceRestoreFormatedDateEntities.length()) {
                    i6 = size2;
                } else {
                    if (messageEntity.offset + messageEntity.length > charSequenceRestoreFormatedDateEntities.length()) {
                        messageEntity.length = charSequenceRestoreFormatedDateEntities.length() - messageEntity.offset;
                    }
                    if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityBold) || (messageEntity instanceof TLRPC.TL_messageEntityItalic) || (messageEntity instanceof TLRPC.TL_messageEntityStrike) || (messageEntity instanceof TLRPC.TL_messageEntityUnderline) || (messageEntity instanceof TLRPC.TL_messageEntityBlockquote) || (messageEntity instanceof TLRPC.TL_messageEntityFormattedDate) || (messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityMentionName) || (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) || (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) || (messageEntity instanceof TLRPC.TL_messageEntityDiffInsert) || (messageEntity instanceof TLRPC.TL_messageEntityDiffReplace) || (messageEntity instanceof TLRPC.TL_messageEntityDiffDelete)) && uRLSpanArr != null && uRLSpanArr.length > 0) {
                        for (int i11 = 0; i11 < uRLSpanArr.length; i11++) {
                            URLSpan uRLSpan = uRLSpanArr[i11];
                            if (uRLSpan != null) {
                                int spanStart = spannable2.getSpanStart(uRLSpan);
                                int spanEnd = spannable2.getSpanEnd(uRLSpanArr[i11]);
                                int i12 = messageEntity.offset;
                                if ((i12 <= spanStart && messageEntity.length + i12 >= spanStart) || (i12 <= spanEnd && i12 + messageEntity.length >= spanEnd)) {
                                    spannable2.removeSpan(uRLSpanArr[i11]);
                                    uRLSpanArr[i11] = null;
                                }
                            }
                        }
                    }
                    if ((i != 1 || (messageEntity instanceof TLRPC.TL_messageEntityHashtag)) && !(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) && !(messageEntity instanceof TLRPC.TL_messageEntityBlockquote) && !(messageEntity instanceof TLRPC.TL_messageEntityPre) && !(messageEntity instanceof TLRPC.TL_messageEntityDiffReplace)) {
                        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                        int i13 = messageEntity.offset;
                        textStyleRun.start = i13;
                        textStyleRun.end = i13 + messageEntity.length;
                        if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                            textStyleRun.flags = 256;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                            textStyleRun.flags = 8;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityDiffDelete) {
                            textStyleRun.flags = 8192;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                            textStyleRun.flags = 16;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                            textStyleRun.flags = 1;
                        } else {
                            if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                                textStyleRun.flags = 2;
                            } else if (messageEntity instanceof TLRPC.TL_messageEntityCode) {
                                textStyleRun.flags = 4;
                            } else if (messageEntity instanceof TLRPC.TL_messageEntityDiffInsert) {
                                textStyleRun.flags = 4096;
                            } else if (messageEntity instanceof TLRPC.TL_messageEntityMentionName) {
                                if (z2) {
                                    textStyleRun.flags = 64;
                                    textStyleRun.urlEntity = messageEntity;
                                }
                                i6 = size2;
                            } else if (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                if (z2) {
                                    textStyleRun.flags = 64;
                                    textStyleRun.urlEntity = messageEntity;
                                }
                                i6 = size2;
                            } else {
                                if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntityFormattedDate)) && (((!(messageEntity instanceof TLRPC.TL_messageEntityUrl) && !(messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) || !Browser.isPassportUrl(messageEntity.url)) && (!(messageEntity instanceof TLRPC.TL_messageEntityMention) || z2))) {
                                    textStyleRun.flags = 128;
                                    textStyleRun.urlEntity = messageEntity;
                                    if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                                        textStyleRun.flags = 128 | 1024;
                                    }
                                }
                                i6 = size2;
                            }
                            size = arrayList2.size();
                            i8 = 0;
                            while (i8 < size) {
                                TextStyleSpan.TextStyleRun textStyleRun2 = (TextStyleSpan.TextStyleRun) arrayList2.get(i8);
                                if ((textStyleRun2.flags & 256) == 0 || textStyleRun.start < textStyleRun2.start || textStyleRun.end > textStyleRun2.end) {
                                    int i14 = textStyleRun.start;
                                    int i15 = textStyleRun2.start;
                                    if (i14 > i15) {
                                        int i16 = textStyleRun2.end;
                                        if (i14 < i16) {
                                            if (textStyleRun.end < i16) {
                                                TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun3.merge(textStyleRun2);
                                                arrayList2.add(i8 + 1, textStyleRun3);
                                                TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                                textStyleRun4.start = textStyleRun.end;
                                                i8 += 2;
                                                size += 2;
                                                arrayList2.add(i8, textStyleRun4);
                                            } else {
                                                TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun5.merge(textStyleRun2);
                                                textStyleRun5.end = textStyleRun2.end;
                                                i8++;
                                                size++;
                                                arrayList2.add(i8, textStyleRun5);
                                            }
                                            int i17 = textStyleRun.start;
                                            textStyleRun.start = textStyleRun2.end;
                                            textStyleRun2.end = i17;
                                        }
                                    } else {
                                        int i18 = textStyleRun.end;
                                        if (i15 < i18) {
                                            i9 = size2;
                                            int i19 = textStyleRun2.end;
                                            if (i18 == i19) {
                                                textStyleRun2.merge(textStyleRun);
                                            } else if (i18 < i19) {
                                                TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                                textStyleRun6.merge(textStyleRun);
                                                textStyleRun6.end = textStyleRun.end;
                                                i8++;
                                                size++;
                                                arrayList2.add(i8, textStyleRun6);
                                                textStyleRun2.start = textStyleRun.end;
                                            } else {
                                                TextStyleSpan.TextStyleRun textStyleRun7 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun7.start = textStyleRun2.end;
                                                i8++;
                                                size++;
                                                arrayList2.add(i8, textStyleRun7);
                                                textStyleRun2.merge(textStyleRun);
                                            }
                                            textStyleRun.end = i15;
                                        }
                                    }
                                    i9 = size2;
                                } else {
                                    i9 = size2;
                                }
                                i8++;
                                size2 = i9;
                            }
                            i6 = size2;
                            if (textStyleRun.start >= textStyleRun.end) {
                                arrayList2.add(textStyleRun);
                            }
                        }
                        size = arrayList2.size();
                        i8 = 0;
                        while (i8 < size) {
                        }
                        i6 = size2;
                        if (textStyleRun.start >= textStyleRun.end) {
                        }
                    }
                }
                i10++;
                size2 = i6;
            }
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            for (int iMin = Math.min(1000, arrayList2.size()); i20 < iMin; iMin = i3) {
                TextStyleSpan.TextStyleRun textStyleRun8 = (TextStyleSpan.TextStyleRun) arrayList2.get(i20);
                int i23 = textStyleRun8.start;
                if (i23 < 0 || i23 >= (i4 = textStyleRun8.end) || i4 > charSequenceRestoreFormatedDateEntities.length() || (i == 1 && !(textStyleRun8.urlEntity instanceof TLRPC.TL_messageEntityHashtag))) {
                    i3 = iMin;
                    spannable = spannable2;
                    b2 = b3;
                } else {
                    TLRPC.MessageEntity messageEntity2 = textStyleRun8.urlEntity;
                    if (messageEntity2 != null) {
                        int i24 = messageEntity2.offset;
                        string = TextUtils.substring(charSequenceRestoreFormatedDateEntities, i24, messageEntity2.length + i24);
                    } else {
                        string = null;
                    }
                    TLRPC.MessageEntity messageEntity3 = textStyleRun8.urlEntity;
                    if (messageEntity3 instanceof TLRPC.TL_messageEntityBotCommand) {
                        if (i21 < 250) {
                            i21++;
                            spannable2.setSpan(new URLSpanBotCommand(string, b3, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                            i3 = iMin;
                            spannable = spannable2;
                            b2 = b3;
                            z5 = false;
                            if (z5) {
                                if ((textStyleRun8.flags & 256) != 0 && i22 < 100) {
                                    i22++;
                                    spannable.setSpan(new TextStyleSpan(textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                }
                            }
                        }
                        i3 = iMin;
                        spannable = spannable2;
                        b2 = b3;
                    } else {
                        if ((messageEntity3 instanceof TLRPC.TL_messageEntityHashtag) || (messageEntity3 instanceof TLRPC.TL_messageEntityMention)) {
                            i3 = iMin;
                            spannable = spannable2;
                            b2 = b3;
                            i5 = 250;
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityCashtag) {
                            i3 = iMin;
                            spannable = spannable2;
                            i5 = 250;
                            b2 = b3;
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityEmail) {
                            if (i21 < 250) {
                                i21++;
                                spannable2.setSpan(new URLSpanReplacement("mailto:" + string, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                i3 = iMin;
                                spannable = spannable2;
                                b2 = b3;
                                z5 = false;
                                if (z5) {
                                }
                            }
                            i3 = iMin;
                            spannable = spannable2;
                            b2 = b3;
                        } else {
                            i3 = iMin;
                            if (messageEntity3 instanceof TLRPC.TL_messageEntityUrl) {
                                if (i21 >= 250) {
                                    spannable = spannable2;
                                    b2 = b3;
                                } else {
                                    i21++;
                                    if (!string.toLowerCase().contains("://")) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(BotWebViewContainer.isTonsite(string) ? "tonsite://" : AndroidUtilities.defaultUrlScheme(string));
                                        sb.append(string);
                                        string = sb.toString();
                                    }
                                    String strReplaceAll = string.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                    if (Browser.isTonsitePunycode(strReplaceAll)) {
                                        spannable = spannable2;
                                        b2 = b3;
                                        z6 = true;
                                    } else {
                                        spannable2.setSpan(new URLSpanBrowser(strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        spannable = spannable2;
                                        b2 = b3;
                                        z5 = false;
                                        z6 = true;
                                        if (z5) {
                                        }
                                    }
                                }
                            } else if (messageEntity3 instanceof TLRPC.TL_messageEntityFormattedDate) {
                                if (i21 < 250) {
                                    i21++;
                                    spannable2.setSpan(new FormattedDateSpan(string, textStyleRun8, (TLRPC.TL_messageEntityFormattedDate) textStyleRun8.urlEntity), textStyleRun8.start, textStyleRun8.end, 33);
                                    spannable = spannable2;
                                    b2 = b3;
                                    z5 = false;
                                    if (z5) {
                                    }
                                }
                                spannable = spannable2;
                                b2 = b3;
                            } else {
                                if (messageEntity3 instanceof TLRPC.TL_messageEntityTonAddress) {
                                    spannable2.setSpan(new URLSpanNoUnderline("tonaddress:" + string, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                } else if (messageEntity3 instanceof TLRPC.TL_messageEntityBankCard) {
                                    spannable2.setSpan(new URLSpanNoUnderline("card:" + string, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                } else if (messageEntity3 instanceof TLRPC.TL_messageEntityPhone) {
                                    String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(string);
                                    if (string.startsWith("+")) {
                                        strStripExceptNumbers = "+" + strStripExceptNumbers;
                                    }
                                    spannable2.setSpan(new URLSpanNoUnderline("tel:" + strStripExceptNumbers, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                } else if (messageEntity3 instanceof TLRPC.TL_messageEntityTextUrl) {
                                    if (i21 < 250) {
                                        i21++;
                                        String strReplaceAll2 = messageEntity3.url;
                                        if (strReplaceAll2 != null) {
                                            strReplaceAll2 = strReplaceAll2.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                        }
                                        if (!Browser.isTonsitePunycode(strReplaceAll2)) {
                                            spannable2.setSpan(new URLSpanReplacement(strReplaceAll2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                            spannable = spannable2;
                                            b2 = b3;
                                            z5 = false;
                                            if (z5) {
                                            }
                                        }
                                    }
                                    spannable = spannable2;
                                    b2 = b3;
                                } else {
                                    if (messageEntity3 instanceof TLRPC.TL_messageEntityMentionName) {
                                        spannable2.setSpan(new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.TL_messageEntityMentionName) textStyleRun8.urlEntity).user_id, b3, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                    } else if (messageEntity3 instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                        spannable2.setSpan(new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.TL_inputMessageEntityMentionName) textStyleRun8.urlEntity).user_id.user_id, b3, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                    } else if ((textStyleRun8.flags & 4) != 0) {
                                        Spannable spannable3 = spannable2;
                                        byte b4 = b3;
                                        spannable = spannable3;
                                        b2 = b4;
                                        spannable.setSpan(new URLSpanMono(spannable3, textStyleRun8.start, textStyleRun8.end, b4, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        z5 = false;
                                        if (z5) {
                                        }
                                    } else {
                                        spannable = spannable2;
                                        b2 = b3;
                                        spannable.setSpan(new TextStyleSpan(textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        z5 = true;
                                        if (z5) {
                                        }
                                    }
                                    spannable = spannable2;
                                    b2 = b3;
                                    z5 = false;
                                    if (z5) {
                                    }
                                }
                                spannable = spannable2;
                                b2 = b3;
                                z5 = false;
                                z6 = true;
                                if (z5) {
                                }
                            }
                        }
                        if (i21 < i5) {
                            i21++;
                            spannable.setSpan(new URLSpanNoUnderline(string, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                            z5 = false;
                            if (z5) {
                            }
                        }
                    }
                }
                i20++;
                spannable2 = spannable;
                b3 = b2;
            }
            Spannable spannable4 = spannable2;
            int size3 = arrayList3.size();
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            boolean z7 = false;
            int i28 = 0;
            for (int i29 = 0; i29 < size3; i29++) {
                TLRPC.MessageEntity messageEntity4 = (TLRPC.MessageEntity) arrayList3.get(i29);
                if (messageEntity4.length > 0 && (i2 = messageEntity4.offset) >= 0 && i2 < charSequenceRestoreFormatedDateEntities.length()) {
                    if (messageEntity4.offset + messageEntity4.length > charSequenceRestoreFormatedDateEntities.length()) {
                        messageEntity4.length = charSequenceRestoreFormatedDateEntities.length() - messageEntity4.offset;
                    }
                    if (messageEntity4 instanceof TLRPC.TL_messageEntityBlockquote) {
                        int i30 = messageEntity4.offset;
                        int i31 = messageEntity4.length + i30;
                        boolean z8 = i25 >= 0 && i30 <= i26 && z7 == messageEntity4.collapsed;
                        if (z8 && i26 > 0 && i26 <= charSequenceRestoreFormatedDateEntities.length() && charSequenceRestoreFormatedDateEntities.charAt(i26 - 1) == '\n') {
                            int iMax = Math.max(0, i27);
                            while (true) {
                                if (iMax >= i26) {
                                    z8 = true;
                                    break;
                                }
                                if (!Character.isWhitespace(charSequenceRestoreFormatedDateEntities.charAt(iMax))) {
                                    z8 = false;
                                    break;
                                }
                                iMax++;
                            }
                        }
                        if (!z8) {
                            if (i25 >= 0) {
                                QuoteSpan.putQuote(spannable4, i25, i26, z7);
                            }
                            i25 = messageEntity4.offset;
                            z7 = messageEntity4.collapsed;
                            i27 = i25;
                        } else if (i31 > i26) {
                            i27 = messageEntity4.offset;
                        }
                        i26 = i31;
                    } else {
                        if (messageEntity4 instanceof TLRPC.TL_messageEntityPre) {
                            if (i28 < 50) {
                                i28++;
                                int i32 = messageEntity4.offset;
                                int i33 = messageEntity4.length + i32;
                                spannable4.setSpan(new CodeHighlighting.Span(true, 0, null, messageEntity4.language, spannable4.subSequence(i32, i33).toString()), i32, i33, 33);
                            }
                        } else if (messageEntity4 instanceof TLRPC.TL_messageEntityDiffReplace) {
                            int i34 = messageEntity4.offset;
                            spannable4.setSpan(new SquigglyLinesSpan(), i34, messageEntity4.length + i34, 33);
                        }
                    }
                }
            }
            if (i25 >= 0) {
                QuoteSpan.putQuote(spannable4, i25, i26, z7);
            }
        }
        return z6;
    }

    public static /* synthetic */ int $r8$lambda$w1b4brUQc9jkaGF7tJdOKyazR9k(TLRPC.MessageEntity messageEntity, TLRPC.MessageEntity messageEntity2) {
        int i = messageEntity.offset;
        int i2 = messageEntity2.offset;
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public boolean needDrawShareButton() {
        int i;
        TLRPC.Message message;
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (this.isRepostPreview || this.sideMenuEnabled || getDialogId() == UserObject.VERIFY) {
            return false;
        }
        if (this.isSaved) {
            long j = UserConfig.getInstance(this.currentAccount).clientUserId;
            long savedDialogId = getSavedDialogId(j, this.messageOwner);
            if (savedDialogId == j || savedDialogId == UserObject.ANONYMOUS || (message = this.messageOwner) == null || (messageFwdHeader = message.fwd_from) == null) {
                return false;
            }
            return (messageFwdHeader.from_id == null && messageFwdHeader.saved_from_id == null) ? false : true;
        }
        if (this.type == 27 || isSponsored() || this.hasCode || this.preview || this.scheduled || this.eventId != 0) {
            return false;
        }
        if (this.searchType == 2) {
            return true;
        }
        TLRPC.Message message2 = this.messageOwner;
        if (message2.noforwards) {
            return false;
        }
        if (message2.fwd_from != null && !isOutOwner() && this.messageOwner.fwd_from.saved_from_peer != null && getDialogId() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return true;
        }
        int i2 = this.type;
        if (i2 != 13 && i2 != 15 && i2 != 19) {
            TLRPC.MessageFwdHeader messageFwdHeader2 = this.messageOwner.fwd_from;
            if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerChannel) && !isOutOwner()) {
                return true;
            }
            if (isFromUser()) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
                if (user != null && user.bot && ("reviews_bot".equals(UserObject.getPublicUsername(user)) || "ReviewInsightsBot".equals(UserObject.getPublicUsername(user)))) {
                    return true;
                }
                if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty) || getMedia(this.messageOwner) == null || ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && !(getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage))) {
                    return false;
                }
                if (user != null && user.bot && !hasExtendedMedia()) {
                    return true;
                }
                if (!isOut()) {
                    if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) || (((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) && !hasExtendedMedia()) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage))) {
                        return true;
                    }
                    TLRPC.Peer peer = this.messageOwner.peer_id;
                    TLRPC.Chat chat = null;
                    if (peer != null) {
                        long j2 = peer.channel_id;
                        if (j2 != 0) {
                            chat = getChat(null, null, j2);
                        }
                    }
                    return ChatObject.isChannel(chat) && chat.megagroup && ChatObject.isPublic(chat) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo);
                }
            } else {
                TLRPC.Message message3 = this.messageOwner;
                if ((message3.from_id instanceof TLRPC.TL_peerChannel) || message3.post) {
                    if ((getMedia(message3) instanceof TLRPC.TL_messageMediaWebPage) && !isOutOwner()) {
                        return true;
                    }
                    if (isSupergroup()) {
                        return false;
                    }
                    TLRPC.Message message4 = this.messageOwner;
                    if (message4.peer_id.channel_id != 0 && ((message4.via_bot_id == 0 && message4.reply_to == null) || ((i = this.type) != 13 && i != 15))) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public boolean isYouTubeVideo() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && !TextUtils.isEmpty(getMedia(this.messageOwner).webpage.embed_url) && "YouTube".equals(getMedia(this.messageOwner).webpage.site_name);
    }

    public boolean isEmbedVideo() {
        TLRPC.MessageMedia messageMedia;
        TLRPC.WebPage webPage;
        TLRPC.MessageMedia messageMedia2;
        Boolean bool = this.isEmbedVideoCached;
        TLRPC.Message message = this.messageOwner;
        boolean z = false;
        if (bool != null) {
            return (message == null || (messageMedia2 = message.media) == null || messageMedia2.webpage == null || !bool.booleanValue()) ? false : true;
        }
        if (message != null && (messageMedia = message.media) != null && (webPage = messageMedia.webpage) != null && !TextUtils.isEmpty(WebPlayerView.getYouTubeVideoId(webPage.url))) {
            z = true;
        }
        this.isEmbedVideoCached = Boolean.valueOf(z);
        return z;
    }

    private int getParentWidth() {
        int i;
        if (this.preview && (i = this.parentWidth) > 0) {
            return i;
        }
        if (AndroidUtilities.isTablet()) {
            return AndroidUtilities.getMinTabletSide();
        }
        Point point = AndroidUtilities.displaySize;
        int i2 = point.x;
        return i2 > point.y ? i2 - AndroidUtilities.dp(50.0f) : i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getMaxMessageTextWidth() {
        int iDp;
        int iDp2;
        int iDp3;
        if (AndroidUtilities.isTablet() && this.eventId != 0) {
            this.generatedWithMinSize = AndroidUtilities.dp(530.0f);
        } else {
            this.generatedWithMinSize = getParentWidth();
        }
        this.generatedWithDensity = AndroidUtilities.density;
        TextPaint textPaint = Theme.chat_msgTextPaint;
        this.generatedWithFontSize = textPaint != null ? textPaint.getTextSize() : 0.0f;
        if (this.hasCode && !this.isSaved) {
            iDp = this.generatedWithMinSize - AndroidUtilities.dp(60.0f);
            if (this.sideMenuEnabled) {
                iDp3 = AndroidUtilities.dp(64.0f);
            } else if (needDrawAvatarInternal() && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                iDp3 = AndroidUtilities.dp(52.0f);
            }
            iDp -= iDp3;
        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_background".equals(getMedia(this.messageOwner).webpage.type)) {
            try {
                Uri uri = Uri.parse(getMedia(this.messageOwner).webpage.url);
                String lastPathSegment = uri.getLastPathSegment();
                if (uri.getQueryParameter("bg_color") != null) {
                    iDp = AndroidUtilities.dp(220.0f);
                } else if (lastPathSegment.length() == 6 || (lastPathSegment.length() == 13 && lastPathSegment.charAt(6) == '-')) {
                    iDp = AndroidUtilities.dp(200.0f);
                }
            } catch (Exception unused) {
            }
        } else {
            iDp = isAndroidTheme() ? AndroidUtilities.dp(200.0f) : 0;
        }
        if (iDp == 0) {
            boolean zNeedDrawAvatarInternal = needDrawAvatarInternal();
            int iDp4 = this.generatedWithMinSize - AndroidUtilities.dp(this.type == 36 ? 40.0f : 80.0f);
            if (this.sideMenuEnabled) {
                iDp2 = AndroidUtilities.dp(64.0f);
            } else {
                if (zNeedDrawAvatarInternal && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                    iDp2 = AndroidUtilities.dp(52.0f);
                }
                if (needDrawShareButton() && (this.isSaved || !isOutOwner())) {
                    iDp4 -= AndroidUtilities.dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
                iDp = iDp4;
                if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                    iDp -= AndroidUtilities.dp(10.0f);
                }
            }
            iDp4 -= iDp2;
            if (needDrawShareButton()) {
                if (this.isSaved) {
                    iDp4 -= AndroidUtilities.dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
            }
            iDp = iDp4;
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
            }
        }
        int i = this.emojiOnlyCount;
        if (i >= 1) {
            int i2 = this.totalAnimatedEmojiCount;
            if (i2 <= 100) {
                if (i - i2 < (SharedConfig.getDevicePerformanceClass() >= 2 ? 200 : 100) && (hasValidReplyMessageObject() || isForwarded())) {
                    iDp = Math.min(iDp, (int) (this.generatedWithMinSize * 0.65f));
                }
            }
        }
        int i3 = this.widePostsTextWidth;
        return i3 > 0 ? i3 : iDp;
    }

    public boolean updateSideMenuEnabled(boolean z) {
        if (this.sideMenuEnabled == z) {
            return false;
        }
        this.sideMenuEnabled = z;
        generateLayout(null);
        return true;
    }

    public void applyTimestampsHighlightForReplyMsg() {
        applyTimestampsHighlightForReplyMsg(this.messageText);
    }

    public void applyTimestampsHighlightForReplyMsg(CharSequence charSequence) {
        TLRPC.Message message;
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject == null) {
            return;
        }
        if (messageObject.isYouTubeVideo()) {
            addUrlsByPattern(isOutOwner(), charSequence, false, 3, Integer.MAX_VALUE, false);
            return;
        }
        if (messageObject.isVideo()) {
            addUrlsByPattern(isOutOwner(), charSequence, false, 3, (int) messageObject.getDuration(), false);
            return;
        }
        if (messageObject.isMusic() || messageObject.isVoice()) {
            addUrlsByPattern(isOutOwner(), charSequence, false, 4, (int) messageObject.getDuration(), false);
        }
        if (charSequence != this.messageText || (message = this.messageOwner) == null) {
            return;
        }
        TLRPC.MessageAction messageAction = message.action;
        if ((messageAction instanceof TLRPC.TL_messageActionTodoCompletions) || (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
            updateMessageText();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean applyEntities() {
        generateLinkDescription();
        spoilLoginCode();
        boolean z = false;
        if (!(this.messageOwner.send_state != 0 ? false : !getEntities().isEmpty())) {
            if (this.eventId == 0) {
                TLRPC.Message message = this.messageOwner;
                if ((message instanceof TLRPC.TL_message_old) || (message instanceof TLRPC.TL_message_old2) || (message instanceof TLRPC.TL_message_old3) || (message instanceof TLRPC.TL_message_old4) || (message instanceof TLRPC.TL_messageForwarded_old) || (message instanceof TLRPC.TL_messageForwarded_old2) || (message instanceof TLRPC.TL_message_secret) || (getMedia(message) instanceof TLRPC.TL_messageMediaInvoice) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.id < 0)) {
                    z = true;
                }
            }
        }
        if (z) {
            addLinks(isOutOwner(), this.messageText, true, true);
        } else {
            addPhoneLinks(this.messageText);
        }
        if (isYouTubeVideo()) {
            addUrlsByPattern(isOutOwner(), this.messageText, false, 3, Integer.MAX_VALUE, false);
        } else {
            applyTimestampsHighlightForReplyMsg();
        }
        if (!(this.messageText instanceof Spannable)) {
            this.messageText = new SpannableStringBuilder(this.messageText);
        }
        return addEntitiesToText(this.messageText, z);
    }

    public static StaticLayout makeStaticLayout(CharSequence charSequence, android.text.TextPaint textPaint, int i, float f, float f2, boolean z) {
        return makeStaticLayout(charSequence, textPaint, i, f, f2, z, Layout.Alignment.ALIGN_NORMAL);
    }

    public static StaticLayout makeStaticLayout(CharSequence charSequence, android.text.TextPaint textPaint, int i, float f, float f2, boolean z, Layout.Alignment alignment) {
        if (i <= 0) {
            i = 1;
        }
        StaticLayout.Builder alignment2 = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(alignment);
        if (z) {
            alignment2.setIncludePad(false);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            alignment2.setUseLineSpacingFromFallbacks(false);
        }
        StaticLayout staticLayoutBuild = alignment2.build();
        for (int i2 = 0; i2 < staticLayoutBuild.getLineCount(); i2++) {
            if (staticLayoutBuild.getLineRight(i2) > i) {
                StaticLayout.Builder alignment3 = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(alignment);
                if (z) {
                    alignment3.setIncludePad(false);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    alignment3.setUseLineSpacingFromFallbacks(false);
                }
                return alignment3.build();
            }
        }
        return staticLayoutBuild;
    }

    public TL_iv.RichMessage getDisplayRichMessage() {
        TL_iv.RichMessage richMessage;
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        return (!this.translated || (richMessage = message.translatedRichMessage) == null) ? message.rich_message : richMessage;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:369|(3:479|370|371)|373|(1:375)(12:377|(1:379)|477|380|383|(1:385)(1:387)|386|388|(4:390|(0)(1:393)|(2:402|504)(5:473|398|(1:400)|402|504)|403)(1:394)|395|(2:402|504)(0)|403)|376|477|380|383|(0)(0)|386|388|(0)(0)|395|(0)(0)|403) */
    /* JADX WARN: Can't wrap try/catch for region: R(47:196|(1:198)|199|(1:201)(1:202)|203|(1:205)(1:206)|207|(1:209)|(1:211)|(1:217)(1:216)|218|(1:226)(1:225)|227|(2:229|(2:(1:234)|235)(1:232))(2:236|(7:238|(1:240)(1:241)|242|(1:244)(1:245)|246|(1:248)(1:249)|250))|251|(3:253|(1:255)(1:(1:258)(1:259))|256)(1:260)|261|(1:263)(2:265|(1:267)(28:268|269|(6:271|(1:293)(9:277|(1:279)(1:281)|280|282|(1:284)(1:286)|285|287|(1:289)(1:290)|291)|292|294|(2:296|(1:(2:299|(1:302))(1:303))(1:304))|305)(3:306|(2:308|498)(8:309|483|310|(1:318)(1:314)|315|319|(1:321)(1:322)|323)|447)|324|469|325|(1:329)|333|481|337|341|(1:343)(17:345|(1:347)|348|(1:350)|351|(1:353)|354|(3:356|(7:471|358|359|487|360|502|364)|500)|365|(6:367|(17:369|479|370|371|373|(1:375)(12:377|(1:379)|477|380|383|(1:385)(1:387)|386|388|(4:390|(0)(1:393)|(2:402|504)(5:473|398|(1:400)|402|504)|403)(1:394)|395|(2:402|504)(0)|403)|376|477|380|383|(0)(0)|386|388|(0)(0)|395|(0)(0)|403)|503|404|(1:(1:407))(2:(1:409)|410)|411)(3:412|(5:414|(1:416)(1:418)|417|(1:420)(1:421)|422)(1:423)|424)|425|(3:427|(1:429)(1:430)|431)|432|(5:436|(1:438)(4:441|(1:443)|440|444)|439|440|444)|445|499|447)|344|348|(0)|351|(0)|354|(0)|365|(0)(0)|425|(0)|432|(6:434|436|(0)(0)|439|440|444)|445|499|447))|264|269|(0)(0)|324|469|325|(2:327|329)|333|481|337|341|(0)(0)|344|348|(0)|351|(0)|354|(0)|365|(0)(0)|425|(0)|432|(0)|445|499|447|194) */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0590, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0594, code lost:
    
        if (r3 == 0) goto L335;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0596, code lost:
    
        r36.textXOffset = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x059a, code lost:
    
        org.telegram.messenger.FileLog.m1040e(r0);
        r13 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x05a7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x05a8, code lost:
    
        org.telegram.messenger.FileLog.m1040e(r0);
        r0 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0647, code lost:
    
        r6 = 0.0f;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x05e7  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0610  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0658  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0666  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x067b  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0690 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x069f A[PHI: r30
  0x069f: PHI (r30v5 int) = (r30v4 int), (r30v4 int), (r30v4 int), (r30v6 int) binds: [B:396:0x068e, B:397:0x0690, B:399:0x0698, B:400:0x069a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x06f3  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0768  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0770  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0778  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x07df  */
    /* JADX WARN: Removed duplicated region for block: B:512:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateLayout(TLRPC.User user) {
        int iDp;
        TextPaint textPaint;
        CharSequence charSequenceInsertHexColorsPreview;
        float f;
        float f2;
        float f3;
        int i;
        int iDp2;
        boolean z;
        int i2;
        int iCeil;
        ArrayList arrayList;
        StaticLayout staticLayoutMakeStaticLayout;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        TextPaint textPaint2;
        int i8;
        int iDp3;
        int i9;
        boolean z3;
        ArrayList arrayList2;
        CharSequence charSequence;
        TextPaint textPaint3;
        int i10;
        SpannableString spannableStringValueOf;
        int lineCount;
        int iDp4;
        int iCeil2;
        int i11;
        int iCeil3;
        int i12;
        int i13;
        Text text;
        int iDp5;
        float lineWidth;
        int iDp6;
        TextPaint textPaint4;
        float f4;
        float f5;
        int i14;
        int i15;
        int i16;
        int i17;
        float lineLeft;
        int i18;
        SpannableString spannableString;
        TextPaint textPaint5;
        int i19;
        View view;
        int i20 = this.type;
        if (i20 == 36) {
            int maxMessageTextWidth = getMaxMessageTextWidth();
            RichMessageLayout richMessageLayout = this.richLayout;
            if (richMessageLayout == null || (this.messageOwner != null && richMessageLayout.needsUpdate(getDisplayRichMessage(), maxMessageTextWidth))) {
                RichMessageLayout richMessageLayout2 = this.richLayout;
                this.richLayout = new RichMessageLayout(this, maxMessageTextWidth, richMessageLayout2);
                if (richMessageLayout2 != null && (view = richMessageLayout2.view) != null) {
                    richMessageLayout2.detach(view);
                }
            }
            int i21 = this.widePostsTextWidth;
            if (i21 > 0) {
                this.textWidth = i21;
                return;
            }
            return;
        }
        if ((i20 != 0 && i20 != 19 && i20 != 24) || this.messageOwner.peer_id == null) {
            return;
        }
        if (TextUtils.isEmpty(this.messageText) && !this.isBotPendingDraft) {
            return;
        }
        applyEntities();
        TLRPC.Message message = this.messageOwner;
        boolean z4 = false;
        boolean zIsPeerNoForwards = message != null && message.noforwards;
        if (!zIsPeerNoForwards) {
            zIsPeerNoForwards = MessagesController.getInstance(this.currentAccount).isPeerNoForwards(getDialogId());
        }
        boolean z5 = zIsPeerNoForwards;
        this.textLayoutBlocks = new ArrayList<>();
        this.textWidth = 0;
        CharSequence charSequence2 = this.messageText;
        this.hasCode = (charSequence2 instanceof Spanned) && ((CodeHighlighting.Span[]) ((Spanned) charSequence2).getSpans(0, charSequence2.length(), CodeHighlighting.Span.class)).length > 0;
        CharSequence charSequence3 = this.messageText;
        this.hasQuote = (charSequence3 instanceof Spanned) && ((QuoteSpan.QuoteStyleSpan[]) ((Spanned) charSequence3).getSpans(0, charSequence3.length(), QuoteSpan.QuoteStyleSpan.class)).length > 0;
        this.hasSingleQuote = false;
        this.hasSingleCode = false;
        CharSequence charSequenceApplyFormatedDateEntities = FormattedDateSpan.applyFormatedDateEntities(this.messageText);
        this.messageText = charSequenceApplyFormatedDateEntities;
        if (charSequenceApplyFormatedDateEntities instanceof Spanned) {
            Spanned spanned = (Spanned) charSequenceApplyFormatedDateEntities;
            QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.class);
            for (QuoteSpan quoteSpan : quoteSpanArr) {
                quoteSpan.adaptLineHeight = false;
            }
            this.hasSingleQuote = quoteSpanArr.length == 1 && spanned.getSpanStart(quoteSpanArr[0]) == 0 && spanned.getSpanEnd(quoteSpanArr[0]) == spanned.length();
            CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
            this.hasSingleCode = spanArr.length == 1 && spanned.getSpanStart(spanArr[0]) == 0 && spanned.getSpanEnd(spanArr[0]) == spanned.length();
        }
        if (this.isBotPendingDraft) {
            this.messageText = BotForumHelper.applyTypingAnimationSpan(this.messageText);
        }
        int maxMessageTextWidth2 = getMaxMessageTextWidth();
        float f6 = 15.0f;
        try {
            if (this.hasSingleQuote) {
                iDp = AndroidUtilities.dp(32.0f);
            } else {
                if (this.hasSingleCode) {
                    iDp = AndroidUtilities.dp(15.0f);
                }
                int i22 = maxMessageTextWidth2;
                if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
                    textPaint = Theme.chat_msgGameTextPaint;
                } else {
                    textPaint = Theme.chat_msgTextPaint;
                }
                TextPaint textPaint6 = textPaint;
                charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(this.messageText);
                StaticLayout staticLayoutMakeStaticLayout2 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint6, i22, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : 0.0f, this.emojiOnlyCount <= 0);
                if (this.isRepostPreview) {
                    if (this.type != 0) {
                        i19 = hasValidGroupId() ? 7 : 12;
                    } else {
                        i19 = 22;
                    }
                    if (isWebpage()) {
                        i19 -= 8;
                    }
                    if (staticLayoutMakeStaticLayout2.getLineCount() > i19) {
                        String string = LocaleController.getString(C2807R.string.ReadMore);
                        f = 32.0f;
                        f3 = 0.0f;
                        int iCeil4 = (int) Math.ceil(textPaint6.measureText("… " + string) + AndroidUtilities.dp(1.0f));
                        float fMax = 0.0f;
                        for (int i23 = 0; i23 < i19; i23++) {
                            fMax = Math.max(fMax, staticLayoutMakeStaticLayout2.getLineRight(i23));
                        }
                        int i24 = i19 - 1;
                        int lineStart = staticLayoutMakeStaticLayout2.getLineStart(i24);
                        int lineEnd = staticLayoutMakeStaticLayout2.getLineEnd(i24) - 1;
                        while (true) {
                            if (lineEnd < lineStart) {
                                f2 = f6;
                                break;
                            }
                            f2 = f6;
                            if (staticLayoutMakeStaticLayout2.getPrimaryHorizontal(lineEnd) < fMax - iCeil4) {
                                break;
                            }
                            lineEnd--;
                            f6 = f2;
                        }
                        while (lineEnd >= lineStart && !Character.isWhitespace(charSequenceInsertHexColorsPreview.charAt(lineEnd))) {
                            lineEnd--;
                        }
                        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequenceInsertHexColorsPreview.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                        spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.2
                            @Override // android.text.style.CharacterStyle
                            public void updateDrawState(android.text.TextPaint textPaint7) {
                                textPaint7.setColor(((android.text.TextPaint) Theme.chat_msgTextPaint).linkColor);
                            }
                        }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                        try {
                            charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(spannableStringBuilderAppend);
                            staticLayoutMakeStaticLayout2 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint6, i22, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : 0.0f, this.emojiOnlyCount > 0);
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                            return;
                        }
                    }
                } else {
                    f = 32.0f;
                    f2 = 15.0f;
                    f3 = 0.0f;
                }
                if (!this.hasSingleQuote) {
                    iDp2 = AndroidUtilities.dp(f);
                } else if (this.hasSingleCode) {
                    iDp2 = AndroidUtilities.dp(f2);
                } else {
                    i = i22;
                    int lineCount2 = staticLayoutMakeStaticLayout2.getLineCount();
                    int i25 = this.totalAnimatedEmojiCount;
                    int i26 = i25 >= 50 ? 5 : 10;
                    z = i25 < 50;
                    if (z) {
                        iCeil = 1;
                        i2 = lineCount2;
                    } else {
                        i2 = lineCount2;
                        iCeil = (int) Math.ceil(lineCount2 / i26);
                    }
                    arrayList = new ArrayList();
                    if ((charSequenceInsertHexColorsPreview instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                        cutIntoRanges(charSequenceInsertHexColorsPreview, arrayList);
                        staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                        i3 = 1;
                    } else if (!z || iCeil == 1) {
                        staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                        i3 = 1;
                        z4 = false;
                        arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                    } else {
                        i3 = 1;
                        int i27 = 0;
                        int i28 = 0;
                        while (i28 < iCeil) {
                            int iMin = z ? i2 : Math.min(i26, i2 - i27);
                            int lineStart2 = staticLayoutMakeStaticLayout2.getLineStart(i27);
                            int i29 = iMin + i27;
                            int i30 = i27;
                            int lineEnd2 = staticLayoutMakeStaticLayout2.getLineEnd(i29 - 1);
                            StaticLayout staticLayout = staticLayoutMakeStaticLayout2;
                            int i31 = lineEnd2 - 1;
                            if (i31 >= 0) {
                                i4 = lineEnd2;
                                if (i31 < staticLayout.getText().length()) {
                                    if (staticLayout.getText().charAt(i31) == '\n') {
                                        i5 = i4 - 1;
                                    }
                                    if (i5 < lineStart2) {
                                        i27 = i30;
                                    } else {
                                        arrayList.add(new TextRange(lineStart2, i5));
                                        i27 = i29;
                                    }
                                    i28++;
                                    staticLayoutMakeStaticLayout2 = staticLayout;
                                    z4 = false;
                                }
                                i5 = i4;
                                if (i5 < lineStart2) {
                                }
                                i28++;
                                staticLayoutMakeStaticLayout2 = staticLayout;
                                z4 = false;
                            } else {
                                i4 = lineEnd2;
                            }
                            i5 = i4;
                            if (i5 < lineStart2) {
                            }
                            i28++;
                            staticLayoutMakeStaticLayout2 = staticLayout;
                            z4 = false;
                        }
                        staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                    }
                    int size = arrayList.size();
                    this.hasCodeAtTop = z4;
                    this.hasCodeAtBottom = z4;
                    this.hasQuoteAtBottom = z4;
                    this.hasSingleQuote = z4;
                    this.hasSingleCode = z4;
                    i6 = 0;
                    while (i6 < arrayList.size()) {
                        TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                        TextRange textRange = (TextRange) arrayList.get(i6);
                        textLayoutBlock.code = textRange.code;
                        textLayoutBlock.quote = textRange.quote;
                        boolean z6 = textRange.collapse;
                        textLayoutBlock.quoteCollapse = z6;
                        if (z6) {
                            textLayoutBlock.messageObject = this;
                        }
                        textLayoutBlock.index = i6;
                        textLayoutBlock.start = textRange.start;
                        textLayoutBlock.first = i6 == 0 ? i3 : 0;
                        boolean z7 = i6 == arrayList.size() + (-1) ? i3 : 0;
                        textLayoutBlock.last = z7;
                        boolean z8 = textLayoutBlock.first;
                        if (z8) {
                            this.hasCodeAtTop = textLayoutBlock.code;
                        }
                        if (z7 != 0) {
                            this.hasQuoteAtBottom = textLayoutBlock.quote;
                            this.hasCodeAtBottom = textLayoutBlock.code;
                        }
                        this.hasSingleQuote = (z8 && z7 != 0 && textLayoutBlock.quote) ? i3 : 0;
                        this.hasSingleCode = (!z8 || z7 == 0 || textLayoutBlock.quote || !textLayoutBlock.code) ? 0 : i3;
                        if (textLayoutBlock.quote) {
                            if (z8 && z7 != 0) {
                                int iDp7 = AndroidUtilities.dp(6.0f);
                                textLayoutBlock.padBottom = iDp7;
                                textLayoutBlock.padTop = iDp7;
                            } else {
                                textLayoutBlock.padTop = AndroidUtilities.dp(z8 ? 8.0f : 6.0f);
                                textLayoutBlock.padBottom = AndroidUtilities.dp(7.0f);
                            }
                        } else if (textLayoutBlock.code) {
                            textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z5);
                            textLayoutBlock.padTop = AndroidUtilities.dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? 0 : AndroidUtilities.dp(5.0f));
                            textLayoutBlock.padBottom = AndroidUtilities.dp(4.0f) + (textLayoutBlock.last ? 0 : AndroidUtilities.dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.dp(38.0f) : 0);
                        }
                        if (textLayoutBlock.code) {
                            int i32 = textRange.end - textRange.start;
                            if (i32 > 220) {
                                textPaint5 = Theme.chat_msgTextCode3Paint;
                            } else if (i32 > 80) {
                                textPaint5 = Theme.chat_msgTextCode2Paint;
                            } else {
                                textPaint5 = Theme.chat_msgTextCodePaint;
                            }
                            textPaint2 = textPaint5;
                        } else {
                            textPaint2 = textPaint6;
                        }
                        CharSequence charSequenceSubSequence = charSequenceInsertHexColorsPreview.subSequence(textRange.start, textRange.end);
                        if (textLayoutBlock.quote) {
                            iDp3 = AndroidUtilities.dp(24.0f);
                        } else if (textLayoutBlock.code) {
                            iDp3 = AndroidUtilities.dp(f2);
                        } else {
                            i8 = i;
                            if (size != i3) {
                                if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout.getText() instanceof Spannable)) {
                                    if (!TextUtils.isEmpty(textRange.language)) {
                                        spannableString = CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language);
                                    } else {
                                        spannableString = new SpannableString(charSequenceSubSequence.toString());
                                    }
                                    SpannableString spannableString2 = spannableString;
                                    textLayoutBlock.originalWidth = i8;
                                    i18 = 2;
                                    staticLayoutMakeStaticLayout = makeStaticLayout(spannableString2, textPaint2, i8, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : f3, this.emojiOnlyCount > 0);
                                    i22 = i8;
                                } else {
                                    i18 = 2;
                                    textLayoutBlock.originalWidth = i22;
                                }
                                StaticLayout staticLayout2 = staticLayoutMakeStaticLayout;
                                textLayoutBlock.textLayout = staticLayout2;
                                textLayoutBlock.charactersOffset = 0;
                                textLayoutBlock.charactersEnd = staticLayout2.getText().length();
                                textLayoutBlock.height = staticLayout2.getHeight();
                                textLayoutBlock.collapsedHeight = (int) Math.min(textPaint6.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                int i33 = this.emojiOnlyCount;
                                if (i33 != 0) {
                                    if (i33 == 1) {
                                        textLayoutBlock.padTop -= AndroidUtilities.dp(5.3f);
                                    } else if (i33 == i18) {
                                        textLayoutBlock.padTop -= AndroidUtilities.dp(4.5f);
                                    } else if (i33 == 3) {
                                        textLayoutBlock.padTop -= AndroidUtilities.dp(4.2f);
                                    }
                                }
                                staticLayoutMakeStaticLayout = staticLayout2;
                                i9 = 0;
                            } else {
                                i9 = 0;
                                int i34 = textRange.start;
                                int i35 = textRange.end;
                                if (i35 < i34) {
                                    z3 = z5;
                                    arrayList2 = arrayList;
                                    charSequence = charSequenceInsertHexColorsPreview;
                                    textPaint3 = textPaint6;
                                    i10 = 1;
                                } else {
                                    textLayoutBlock.charactersOffset = i34;
                                    textLayoutBlock.charactersEnd = i35;
                                    try {
                                        if (textLayoutBlock.code && !textLayoutBlock.quote) {
                                            spannableStringValueOf = CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language);
                                        } else {
                                            spannableStringValueOf = SpannableString.valueOf(charSequenceSubSequence);
                                        }
                                        SpannableString spannableString3 = spannableStringValueOf;
                                        textLayoutBlock.originalWidth = i8;
                                        StaticLayout staticLayoutMakeStaticLayout3 = makeStaticLayout(spannableString3, textPaint2, i8, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : f3, false);
                                        textLayoutBlock.textLayout = staticLayoutMakeStaticLayout3;
                                        textLayoutBlock.height = staticLayoutMakeStaticLayout3.getHeight();
                                        textLayoutBlock.collapsedHeight = (int) Math.min(textPaint6.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                    } catch (Exception e2) {
                                        z3 = z5;
                                        arrayList2 = arrayList;
                                        charSequence = charSequenceInsertHexColorsPreview;
                                        textPaint3 = textPaint6;
                                        i10 = 1;
                                        FileLog.m1040e(e2);
                                    }
                                }
                                i6++;
                                i3 = i10;
                                charSequenceInsertHexColorsPreview = charSequence;
                                arrayList = arrayList2;
                                z5 = z3;
                                textPaint6 = textPaint3;
                            }
                            this.textLayoutBlocks.add(textLayoutBlock);
                            lineCount = textLayoutBlock.textLayout.getLineCount();
                            lineLeft = textLayoutBlock.textLayout.getLineLeft(lineCount - 1);
                            if (i6 == 0 && lineLeft >= f3) {
                                this.textXOffset = lineLeft;
                            }
                            float f7 = lineLeft;
                            float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                            if (!textLayoutBlock.quote) {
                                iDp4 = AndroidUtilities.dp(f);
                            } else {
                                if (textLayoutBlock.code) {
                                    iDp4 = AndroidUtilities.dp(f2);
                                }
                                iCeil2 = (int) Math.ceil(lineWidth2);
                                if (iCeil2 > i + 80) {
                                    iCeil2 = i;
                                }
                                i11 = size - 1;
                                if (i6 == i11) {
                                    this.lastLineWidth = iCeil2;
                                }
                                float f8 = iCeil2;
                                arrayList2 = arrayList;
                                charSequence = charSequenceInsertHexColorsPreview;
                                iCeil3 = (int) Math.ceil(f8 + Math.max(0.0f, f7));
                                if (textLayoutBlock.quote) {
                                    textLayoutBlock.maxRight = 0.0f;
                                    int i36 = i9;
                                    while (i36 < lineCount) {
                                        try {
                                            i17 = iCeil2;
                                        } catch (Exception unused) {
                                            i17 = iCeil2;
                                        }
                                        try {
                                            textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i36));
                                        } catch (Exception unused2) {
                                            textLayoutBlock.maxRight = this.textWidth;
                                        }
                                        i36++;
                                        iCeil2 = i17;
                                    }
                                }
                                int i37 = iCeil2;
                                if (lineCount > 1) {
                                    z3 = z5;
                                    int iMax = iCeil3;
                                    int i38 = i9;
                                    int i39 = i38;
                                    int iMax2 = i37;
                                    float f9 = 0.0f;
                                    float fMax2 = 0.0f;
                                    while (i38 < lineCount) {
                                        int i40 = lineCount;
                                        try {
                                            lineWidth = textLayoutBlock.textLayout.getLineWidth(i38);
                                        } catch (Exception unused3) {
                                            lineWidth = 0.0f;
                                        }
                                        if (textLayoutBlock.quote) {
                                            iDp6 = AndroidUtilities.dp(f);
                                        } else {
                                            if (textLayoutBlock.code) {
                                                iDp6 = AndroidUtilities.dp(f2);
                                            }
                                            float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(i38);
                                            float f10 = lineLeft2;
                                            if (lineWidth <= i + 20) {
                                                f5 = i;
                                                textPaint4 = textPaint6;
                                                f4 = 0.0f;
                                            } else {
                                                textPaint4 = textPaint6;
                                                f4 = f10;
                                                f5 = lineWidth;
                                            }
                                            int i41 = i22;
                                            if (f4 > 0.0f) {
                                                i14 = i39;
                                                if (textLayoutBlock.textLayout.getParagraphDirection(i38) != -1) {
                                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                    i15 = 1;
                                                }
                                                if (i14 == 0 && f4 == 0.0f) {
                                                    try {
                                                        if (textLayoutBlock.textLayout.getParagraphDirection(i38) == i15) {
                                                            i14 = 1;
                                                        }
                                                        i16 = i14;
                                                    } catch (Exception unused4) {
                                                        i16 = 1;
                                                    }
                                                } else {
                                                    i16 = i14;
                                                }
                                                fMax2 = Math.max(fMax2, f5);
                                                float f11 = f4 + f5;
                                                float fMax3 = Math.max(f9, f11);
                                                iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                                iMax = Math.max(iMax, (int) Math.ceil(f11));
                                                i38++;
                                                i39 = i16;
                                                f9 = fMax3;
                                                lineCount = i40;
                                                textPaint6 = textPaint4;
                                                i22 = i41;
                                            } else {
                                                i14 = i39;
                                            }
                                            this.textXOffset = Math.min(this.textXOffset, f4);
                                            i15 = 1;
                                            textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                            this.hasRtl = true;
                                            if (i14 == 0) {
                                                i16 = i14;
                                            }
                                            fMax2 = Math.max(fMax2, f5);
                                            float f112 = f4 + f5;
                                            float fMax32 = Math.max(f9, f112);
                                            iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                            iMax = Math.max(iMax, (int) Math.ceil(f112));
                                            i38++;
                                            i39 = i16;
                                            f9 = fMax32;
                                            lineCount = i40;
                                            textPaint6 = textPaint4;
                                            i22 = i41;
                                        }
                                        lineWidth += iDp6;
                                        float lineLeft22 = textLayoutBlock.textLayout.getLineLeft(i38);
                                        float f102 = lineLeft22;
                                        if (lineWidth <= i + 20) {
                                        }
                                        int i412 = i22;
                                        if (f4 > 0.0f) {
                                        }
                                        this.textXOffset = Math.min(this.textXOffset, f4);
                                        i15 = 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                        this.hasRtl = true;
                                        if (i14 == 0) {
                                        }
                                        fMax2 = Math.max(fMax2, f5);
                                        float f1122 = f4 + f5;
                                        float fMax322 = Math.max(f9, f1122);
                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                        iMax = Math.max(iMax, (int) Math.ceil(f1122));
                                        i38++;
                                        i39 = i16;
                                        f9 = fMax322;
                                        lineCount = i40;
                                        textPaint6 = textPaint4;
                                        i22 = i412;
                                    }
                                    textPaint3 = textPaint6;
                                    i12 = i22;
                                    if (i39 == 0) {
                                        if (i6 == i11) {
                                            this.lastLineWidth = iMax2;
                                        }
                                        f9 = fMax2;
                                    } else if (i6 == i11) {
                                        this.lastLineWidth = iCeil3;
                                    }
                                    this.textWidth = Math.max(this.textWidth, (int) Math.ceil(f9));
                                    iCeil3 = iMax;
                                    i10 = 1;
                                    f3 = 0.0f;
                                } else {
                                    z3 = z5;
                                    textPaint3 = textPaint6;
                                    i12 = i22;
                                    f3 = 0.0f;
                                    if (f7 > 0.0f) {
                                        float fMin = Math.min(this.textXOffset, f7);
                                        this.textXOffset = fMin;
                                        i13 = fMin == 0.0f ? (int) (f8 + f7) : i37;
                                        i10 = 1;
                                        this.hasRtl = size != 1 ? 1 : i9;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                    } else {
                                        i10 = 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                        i13 = i37;
                                    }
                                    this.textWidth = Math.max(this.textWidth, Math.min(i, i13));
                                }
                                text = textLayoutBlock.languageLayout;
                                if (text != null) {
                                    this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.dp(f2), textLayoutBlock.textLayout == null ? f3 : r6.getWidth()));
                                }
                                textLayoutBlock.spoilers.clear();
                                if (!this.isSpoilersRevealed && !this.spoiledLoginCode) {
                                    if (!textLayoutBlock.quote) {
                                        iDp5 = AndroidUtilities.dp(f);
                                    } else {
                                        if (textLayoutBlock.code) {
                                            iDp5 = AndroidUtilities.dp(f2);
                                        }
                                        SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil3, null, textLayoutBlock.spoilers);
                                    }
                                    iCeil3 -= iDp5;
                                    SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil3, null, textLayoutBlock.spoilers);
                                }
                                i22 = i12;
                                i6++;
                                i3 = i10;
                                charSequenceInsertHexColorsPreview = charSequence;
                                arrayList = arrayList2;
                                z5 = z3;
                                textPaint6 = textPaint3;
                            }
                            lineWidth2 += iDp4;
                            iCeil2 = (int) Math.ceil(lineWidth2);
                            if (iCeil2 > i + 80) {
                            }
                            i11 = size - 1;
                            if (i6 == i11) {
                            }
                            float f82 = iCeil2;
                            arrayList2 = arrayList;
                            charSequence = charSequenceInsertHexColorsPreview;
                            iCeil3 = (int) Math.ceil(f82 + Math.max(0.0f, f7));
                            if (textLayoutBlock.quote) {
                            }
                            int i372 = iCeil2;
                            if (lineCount > 1) {
                            }
                            text = textLayoutBlock.languageLayout;
                            if (text != null) {
                            }
                            textLayoutBlock.spoilers.clear();
                            if (!this.isSpoilersRevealed) {
                                if (!textLayoutBlock.quote) {
                                }
                                iCeil3 -= iDp5;
                                SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil3, null, textLayoutBlock.spoilers);
                            }
                            i22 = i12;
                            i6++;
                            i3 = i10;
                            charSequenceInsertHexColorsPreview = charSequence;
                            arrayList = arrayList2;
                            z5 = z3;
                            textPaint6 = textPaint3;
                        }
                        i8 = i - iDp3;
                        if (size != i3) {
                        }
                        this.textLayoutBlocks.add(textLayoutBlock);
                        lineCount = textLayoutBlock.textLayout.getLineCount();
                        lineLeft = textLayoutBlock.textLayout.getLineLeft(lineCount - 1);
                        if (i6 == 0) {
                            this.textXOffset = lineLeft;
                        }
                        float f72 = lineLeft;
                        float lineWidth22 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                        if (!textLayoutBlock.quote) {
                        }
                        lineWidth22 += iDp4;
                        iCeil2 = (int) Math.ceil(lineWidth22);
                        if (iCeil2 > i + 80) {
                        }
                        i11 = size - 1;
                        if (i6 == i11) {
                        }
                        float f822 = iCeil2;
                        arrayList2 = arrayList;
                        charSequence = charSequenceInsertHexColorsPreview;
                        iCeil3 = (int) Math.ceil(f822 + Math.max(0.0f, f72));
                        if (textLayoutBlock.quote) {
                        }
                        int i3722 = iCeil2;
                        if (lineCount > 1) {
                        }
                        text = textLayoutBlock.languageLayout;
                        if (text != null) {
                        }
                        textLayoutBlock.spoilers.clear();
                        if (!this.isSpoilersRevealed) {
                        }
                        i22 = i12;
                        i6++;
                        i3 = i10;
                        charSequenceInsertHexColorsPreview = charSequence;
                        arrayList = arrayList2;
                        z5 = z3;
                        textPaint6 = textPaint3;
                    }
                    int i42 = i3;
                    if (this.hasCode) {
                        z2 = this.textWidth > this.generatedWithMinSize - AndroidUtilities.dp((float) (80 + ((!needDrawAvatarInternal() || isOutOwner() || this.messageOwner.isThreadMessage) ? 0 : 52))) ? i42 : 0;
                    }
                    this.hasWideCode = z2;
                    this.factCheckText = null;
                    i7 = this.widePostsTextWidth;
                    if (i7 > 0) {
                        this.textWidth = i7;
                        return;
                    }
                    return;
                }
                i = iDp2 + i22;
                int lineCount22 = staticLayoutMakeStaticLayout2.getLineCount();
                int i252 = this.totalAnimatedEmojiCount;
                if (i252 >= 50) {
                }
                if (i252 < 50) {
                }
                if (z) {
                }
                arrayList = new ArrayList();
                if (charSequenceInsertHexColorsPreview instanceof Spanned) {
                    if (z) {
                        staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                        i3 = 1;
                        z4 = false;
                        arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                    }
                }
                int size2 = arrayList.size();
                this.hasCodeAtTop = z4;
                this.hasCodeAtBottom = z4;
                this.hasQuoteAtBottom = z4;
                this.hasSingleQuote = z4;
                this.hasSingleCode = z4;
                i6 = 0;
                while (i6 < arrayList.size()) {
                }
                int i422 = i3;
                if (this.hasCode) {
                }
                this.hasWideCode = z2;
                this.factCheckText = null;
                i7 = this.widePostsTextWidth;
                if (i7 > 0) {
                }
            }
            charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(this.messageText);
            StaticLayout staticLayoutMakeStaticLayout22 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint6, i22, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : 0.0f, this.emojiOnlyCount <= 0);
            if (this.isRepostPreview) {
            }
            if (!this.hasSingleQuote) {
            }
            i = iDp2 + i22;
            int lineCount222 = staticLayoutMakeStaticLayout22.getLineCount();
            int i2522 = this.totalAnimatedEmojiCount;
            if (i2522 >= 50) {
            }
            if (i2522 < 50) {
            }
            if (z) {
            }
            arrayList = new ArrayList();
            if (charSequenceInsertHexColorsPreview instanceof Spanned) {
            }
            int size22 = arrayList.size();
            this.hasCodeAtTop = z4;
            this.hasCodeAtBottom = z4;
            this.hasQuoteAtBottom = z4;
            this.hasSingleQuote = z4;
            this.hasSingleCode = z4;
            i6 = 0;
            while (i6 < arrayList.size()) {
            }
            int i4222 = i3;
            if (this.hasCode) {
            }
            this.hasWideCode = z2;
            this.factCheckText = null;
            i7 = this.widePostsTextWidth;
            if (i7 > 0) {
            }
        } catch (Exception e3) {
            FileLog.m1040e(e3);
            return;
        }
        maxMessageTextWidth2 -= iDp;
        int i222 = maxMessageTextWidth2;
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
        }
        TextPaint textPaint62 = textPaint;
    }

    public int textHeightCached() {
        RichMessageLayout richMessageLayout = this.richLayout;
        if (richMessageLayout != null) {
            return richMessageLayout.getHeight();
        }
        Integer num = this.cachedTextHeight;
        if (num != null) {
            return num.intValue();
        }
        if (this.textLayoutBlocks == null) {
            this.cachedTextHeight = 0;
            return 0;
        }
        int iHeightCollapsed = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeightCollapsed += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).heightCollapsed() + this.textLayoutBlocks.get(i).padBottom;
        }
        this.cachedTextHeight = Integer.valueOf(iHeightCollapsed);
        return iHeightCollapsed;
    }

    public int textHeight() {
        RichMessageLayout richMessageLayout = this.richLayout;
        if (richMessageLayout != null) {
            return richMessageLayout.getHeight();
        }
        if (this.textLayoutBlocks == null) {
            return 0;
        }
        int iHeight = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height() + this.textLayoutBlocks.get(i).padBottom;
        }
        return iHeight;
    }

    public int textHeight(ChatMessageCell.TransitionParams transitionParams) {
        if (this.textLayoutBlocks == null) {
            return 0;
        }
        int iHeight = 0;
        for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
            iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height(transitionParams) + this.textLayoutBlocks.get(i).padBottom;
        }
        return iHeight;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class TextLayoutBlocks {
        public boolean hasCode;
        public boolean hasCodeAtBottom;
        public boolean hasCodeAtTop;
        public boolean hasQuote;
        public boolean hasQuoteAtBottom;
        public boolean hasRtl;
        public boolean hasSingleCode;
        public boolean hasSingleQuote;
        public int lastLineWidth;
        public final CharSequence text;
        public final ArrayList<TextLayoutBlock> textLayoutBlocks = new ArrayList<>();
        public int textWidth;
        public float textXOffset;

        public int textHeight() {
            int iHeight = 0;
            for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
                iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height() + this.textLayoutBlocks.get(i).padBottom;
            }
            return iHeight;
        }

        public int textHeight(ChatMessageCell.TransitionParams transitionParams) {
            int iHeight = 0;
            for (int i = 0; i < this.textLayoutBlocks.size(); i++) {
                iHeight += this.textLayoutBlocks.get(i).padTop + this.textLayoutBlocks.get(i).height(transitionParams) + this.textLayoutBlocks.get(i).padBottom;
            }
            return iHeight;
        }

        public void bounceFrom(TextLayoutBlocks textLayoutBlocks) {
            if (textLayoutBlocks == null) {
                return;
            }
            for (int i = 0; i < Math.min(this.textLayoutBlocks.size(), textLayoutBlocks.textLayoutBlocks.size()); i++) {
                this.textLayoutBlocks.get(i).collapsedBounce = textLayoutBlocks.textLayoutBlocks.get(i).collapsedBounce;
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(14:253|(3:339|254|255)|257|(1:259)(11:261|(1:263)|337|264|267|(1:269)(1:271)|270|272|(1:278)(1:277)|(1:374)(3:343|281|(2:283|372)(1:375))|284)|260|337|264|267|(0)(0)|270|272|(2:274|278)(0)|(1:374)(1:373)|284) */
        /* JADX WARN: Can't wrap try/catch for region: R(44:114|(1:116)|117|(1:119)(1:120)|121|(1:123)(1:124)|125|(1:127)|(1:129)|(1:135)(1:134)|136|(2:138|(2:(1:143)|144)(1:141))(2:145|(7:147|(1:149)(1:150)|151|(1:153)(1:154)|155|(1:157)(1:158)|159))|160|(3:162|(1:164)(2:166|(1:168)(1:169))|165)(1:170)|171|(1:173)(1:(1:176)(27:177|178|(3:180|(1:192)(4:186|(1:188)(1:190)|189|191)|193)(3:194|(2:196|366)(6:197|351|198|(1:206)(1:202)|203|207)|330)|208|(1:214)|215|347|216|(1:220)|224|355|228|232|(1:234)|235|(1:237)|238|(3:240|(7:353|242|243|349|244|370|248)|368)|249|(6:251|(16:253|339|254|255|257|(1:259)(11:261|(1:263)|337|264|267|(1:269)(1:271)|270|272|(1:278)(1:277)|(1:374)(3:343|281|(2:283|372)(1:375))|284)|260|337|264|267|(0)(0)|270|272|(2:274|278)(0)|(1:374)(1:373)|284)|371|285|(1:(1:288))(2:(1:290)|291)|292)(3:293|(5:295|(1:297)(1:299)|298|(1:301)(1:302)|303)(1:304)|305)|306|(3:308|(1:310)(1:311)|312)|313|(5:319|(1:321)(4:324|(1:326)|323|327)|322|323|327)|328|367|330))|174|178|(0)(0)|208|(3:210|212|214)|215|347|216|(2:218|220)|224|355|228|232|(0)|235|(0)|238|(0)|249|(0)(0)|306|(0)|313|(7:315|317|319|(0)(0)|322|323|327)|328|367|330|112) */
        /* JADX WARN: Code restructure failed: missing block: B:222:0x044c, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:225:0x0450, code lost:
        
            if (r12 == 0) goto L226;
         */
        /* JADX WARN: Code restructure failed: missing block: B:226:0x0452, code lost:
        
            r32.textXOffset = r36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:227:0x0456, code lost:
        
            org.telegram.messenger.FileLog.m1040e(r0);
            r10 = 0.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:230:0x0463, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:231:0x0464, code lost:
        
            org.telegram.messenger.FileLog.m1040e(r0);
            r0 = 0.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:266:0x04ef, code lost:
        
            r7 = 0.0f;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:105:0x01ea  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x01f6  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x021c  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x030f  */
        /* JADX WARN: Removed duplicated region for block: B:194:0x0386  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0472  */
        /* JADX WARN: Removed duplicated region for block: B:237:0x0477  */
        /* JADX WARN: Removed duplicated region for block: B:240:0x0491  */
        /* JADX WARN: Removed duplicated region for block: B:251:0x04b9  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x04f9  */
        /* JADX WARN: Removed duplicated region for block: B:271:0x0500  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x0520  */
        /* JADX WARN: Removed duplicated region for block: B:293:0x058c  */
        /* JADX WARN: Removed duplicated region for block: B:308:0x05d0  */
        /* JADX WARN: Removed duplicated region for block: B:321:0x0605  */
        /* JADX WARN: Removed duplicated region for block: B:324:0x060d  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01c2  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01cc  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01d3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public TextLayoutBlocks(MessageObject messageObject, CharSequence charSequence, android.text.TextPaint textPaint, int i) {
            int i2;
            int iDp;
            float f;
            float f2;
            float f3;
            int i3;
            int iDp2;
            ArrayList arrayList;
            int i4;
            android.text.TextPaint textPaint2;
            int i5;
            int iDp3;
            CharSequence charSequence2;
            ArrayList arrayList2;
            boolean z;
            int i6;
            MessageObject messageObject2;
            float f4;
            SpannableString spannableStringValueOf;
            int lineCount;
            int i7;
            int iCeil;
            int i8;
            Text text;
            int iDp4;
            float lineWidth;
            float f5;
            int i9;
            float f6;
            int i10;
            int iDp5;
            int i11;
            float lineLeft;
            SpannableString spannableString;
            TextPaint textPaint3;
            int i12;
            TLRPC.Message message;
            MessageObject messageObject3 = messageObject;
            CharSequence charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(charSequence);
            this.text = charSequenceInsertHexColorsPreview;
            boolean z2 = false;
            this.textWidth = 0;
            int i13 = 1;
            boolean zIsPeerNoForwards = (messageObject3 == null || (message = messageObject3.messageOwner) == null || !message.noforwards) ? false : true;
            if (messageObject3 != null && !zIsPeerNoForwards) {
                zIsPeerNoForwards = MessagesController.getInstance(messageObject3.currentAccount).isPeerNoForwards(messageObject3.getDialogId());
            }
            boolean z3 = zIsPeerNoForwards;
            boolean z4 = charSequenceInsertHexColorsPreview instanceof Spanned;
            this.hasCode = z4 && ((CodeHighlighting.Span[]) ((Spanned) charSequenceInsertHexColorsPreview).getSpans(0, charSequenceInsertHexColorsPreview.length(), CodeHighlighting.Span.class)).length > 0;
            this.hasQuote = z4 && ((QuoteSpan.QuoteStyleSpan[]) ((Spanned) charSequenceInsertHexColorsPreview).getSpans(0, charSequenceInsertHexColorsPreview.length(), QuoteSpan.QuoteStyleSpan.class)).length > 0;
            this.hasSingleQuote = false;
            this.hasSingleCode = false;
            if (z4) {
                Spanned spanned = (Spanned) charSequenceInsertHexColorsPreview;
                QuoteSpan[] quoteSpanArr = (QuoteSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.class);
                for (QuoteSpan quoteSpan : quoteSpanArr) {
                    quoteSpan.adaptLineHeight = false;
                }
                this.hasSingleQuote = quoteSpanArr.length == 1 && spanned.getSpanStart(quoteSpanArr[0]) == 0 && spanned.getSpanEnd(quoteSpanArr[0]) == spanned.length();
                CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
                this.hasSingleCode = spanArr.length == 1 && spanned.getSpanStart(spanArr[0]) == 0 && spanned.getSpanEnd(spanArr[0]) == spanned.length();
            }
            try {
                if (this.hasSingleQuote) {
                    iDp = AndroidUtilities.dp(32.0f);
                } else if (this.hasSingleCode) {
                    iDp = AndroidUtilities.dp(15.0f);
                } else {
                    i2 = i;
                    StaticLayout staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint, i2, 1.0f, 0.0f, false);
                    if (messageObject3 == null && messageObject3.isRepostPreview) {
                        if (messageObject3.type != 0) {
                            i12 = messageObject3.hasValidGroupId() ? 7 : 12;
                        } else {
                            i12 = 22;
                        }
                        i12 = messageObject3.isWebpage() ? i12 - 8 : i12;
                        if (staticLayoutMakeStaticLayout.getLineCount() > i12) {
                            String string = LocaleController.getString(C2807R.string.ReadMore);
                            f = 32.0f;
                            f2 = 15.0f;
                            int iCeil2 = (int) Math.ceil(textPaint.measureText("… " + string) + AndroidUtilities.dp(1.0f));
                            float fMax = 0.0f;
                            for (int i14 = 0; i14 < i12; i14++) {
                                fMax = Math.max(fMax, staticLayoutMakeStaticLayout.getLineRight(i14));
                            }
                            int i15 = i12 - 1;
                            int lineStart = staticLayoutMakeStaticLayout.getLineStart(i15);
                            int lineEnd = staticLayoutMakeStaticLayout.getLineEnd(i15) - 1;
                            while (true) {
                                if (lineEnd < lineStart) {
                                    f3 = 0.0f;
                                    break;
                                }
                                f3 = 0.0f;
                                if (staticLayoutMakeStaticLayout.getPrimaryHorizontal(lineEnd) < fMax - iCeil2) {
                                    break;
                                } else {
                                    lineEnd--;
                                }
                            }
                            while (lineEnd >= lineStart && !Character.isWhitespace(charSequenceInsertHexColorsPreview.charAt(lineEnd))) {
                                lineEnd--;
                            }
                            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequenceInsertHexColorsPreview.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                            spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.TextLayoutBlocks.1
                                @Override // android.text.style.CharacterStyle
                                public void updateDrawState(android.text.TextPaint textPaint4) {
                                    textPaint4.setColor(((android.text.TextPaint) Theme.chat_msgTextPaint).linkColor);
                                }
                            }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                            CharSequence charSequenceInsertHexColorsPreview2 = LocaleUtils.insertHexColorsPreview(spannableStringBuilderAppend);
                            try {
                                staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(charSequenceInsertHexColorsPreview2, textPaint, i2, 1.0f, 0.0f, false);
                                charSequenceInsertHexColorsPreview = charSequenceInsertHexColorsPreview2;
                            } catch (Exception e) {
                                FileLog.m1040e(e);
                                return;
                            }
                        }
                    } else {
                        f = 32.0f;
                        f2 = 15.0f;
                        f3 = 0.0f;
                    }
                    if (!this.hasSingleQuote) {
                        iDp2 = AndroidUtilities.dp(f);
                    } else if (this.hasSingleCode) {
                        iDp2 = AndroidUtilities.dp(f2);
                    } else {
                        i3 = i2;
                        staticLayoutMakeStaticLayout.getLineCount();
                        arrayList = new ArrayList();
                        if ((charSequenceInsertHexColorsPreview instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                            MessageObject.cutIntoRanges(charSequenceInsertHexColorsPreview, arrayList);
                        } else {
                            arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                        }
                        int size = arrayList.size();
                        this.hasCodeAtTop = false;
                        this.hasCodeAtBottom = false;
                        this.hasQuoteAtBottom = false;
                        this.hasSingleQuote = false;
                        StaticLayout staticLayoutMakeStaticLayout2 = staticLayoutMakeStaticLayout;
                        i4 = 0;
                        int i16 = i2;
                        while (i4 < arrayList.size()) {
                            TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                            TextRange textRange = (TextRange) arrayList.get(i4);
                            textLayoutBlock.code = textRange.code;
                            textLayoutBlock.quote = textRange.quote;
                            boolean z5 = textRange.collapse;
                            textLayoutBlock.quoteCollapse = z5;
                            if (z5) {
                                textLayoutBlock.messageObject = messageObject3;
                            }
                            textLayoutBlock.index = i4;
                            textLayoutBlock.start = textRange.start;
                            textLayoutBlock.first = i4 == 0 ? i13 : z2;
                            boolean z6 = i4 == arrayList.size() - i13 ? i13 : z2;
                            textLayoutBlock.last = z6;
                            boolean z7 = textLayoutBlock.first;
                            if (z7) {
                                this.hasCodeAtTop = textLayoutBlock.code;
                            }
                            if (z6 != 0) {
                                this.hasQuoteAtBottom = textLayoutBlock.quote;
                                this.hasCodeAtBottom = textLayoutBlock.code;
                            }
                            this.hasSingleQuote = (z7 && z6 != 0 && textLayoutBlock.quote) ? i13 : 0;
                            if (textLayoutBlock.quote) {
                                if (z7 && z6 != 0) {
                                    int iDp6 = AndroidUtilities.dp(6.0f);
                                    textLayoutBlock.padBottom = iDp6;
                                    textLayoutBlock.padTop = iDp6;
                                } else {
                                    textLayoutBlock.padTop = AndroidUtilities.dp(z7 ? 8.0f : 6.0f);
                                    textLayoutBlock.padBottom = AndroidUtilities.dp(7.0f);
                                }
                            } else if (textLayoutBlock.code) {
                                textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z3);
                                textLayoutBlock.padTop = AndroidUtilities.dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? 0 : AndroidUtilities.dp(5.0f));
                                textLayoutBlock.padBottom = AndroidUtilities.dp(4.0f) + (textLayoutBlock.last ? 0 : AndroidUtilities.dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.dp(38.0f) : 0);
                            }
                            boolean z8 = textLayoutBlock.code;
                            if (z8) {
                                int i17 = textRange.end - textRange.start;
                                if (i17 > 220) {
                                    textPaint3 = Theme.chat_msgTextCode3Paint;
                                } else if (i17 > 80) {
                                    textPaint3 = Theme.chat_msgTextCode2Paint;
                                } else {
                                    textPaint3 = Theme.chat_msgTextCodePaint;
                                }
                                textPaint2 = textPaint3;
                            } else {
                                textPaint2 = textPaint;
                            }
                            if (textLayoutBlock.quote) {
                                iDp3 = AndroidUtilities.dp(f);
                            } else if (z8) {
                                iDp3 = AndroidUtilities.dp(f2);
                            } else {
                                i5 = i3;
                                if (size != i13) {
                                    if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout2.getText() instanceof Spannable)) {
                                        if (!TextUtils.isEmpty(textRange.language)) {
                                            spannableString = CodeHighlighting.getHighlighted(charSequenceInsertHexColorsPreview.subSequence(textRange.start, textRange.end).toString(), textRange.language);
                                        } else {
                                            spannableString = new SpannableString(charSequenceInsertHexColorsPreview.subSequence(textRange.start, textRange.end));
                                        }
                                        SpannableString spannableString2 = spannableString;
                                        textLayoutBlock.originalWidth = i5;
                                        staticLayoutMakeStaticLayout2 = MessageObject.makeStaticLayout(spannableString2, textPaint2, i5, 1.0f, 0.0f, false);
                                        i16 = i5;
                                    } else {
                                        textLayoutBlock.originalWidth = i16;
                                    }
                                    textLayoutBlock.textLayout = staticLayoutMakeStaticLayout2;
                                    textLayoutBlock.charactersOffset = 0;
                                    textLayoutBlock.charactersEnd = staticLayoutMakeStaticLayout2.getText().length();
                                    textLayoutBlock.height = staticLayoutMakeStaticLayout2.getHeight();
                                    textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                } else {
                                    int i18 = textRange.start;
                                    int i19 = textRange.end;
                                    if (i19 < i18) {
                                        charSequence2 = charSequenceInsertHexColorsPreview;
                                        arrayList2 = arrayList;
                                        z = z3;
                                        messageObject2 = messageObject3;
                                        i6 = i13;
                                        f4 = f3;
                                    } else {
                                        textLayoutBlock.charactersOffset = i18;
                                        textLayoutBlock.charactersEnd = i19;
                                        try {
                                            if (textLayoutBlock.code && !textLayoutBlock.quote) {
                                                spannableStringValueOf = CodeHighlighting.getHighlighted(charSequenceInsertHexColorsPreview.subSequence(i18, i19).toString(), textRange.language);
                                            } else {
                                                spannableStringValueOf = SpannableString.valueOf(charSequenceInsertHexColorsPreview.subSequence(i18, i19));
                                            }
                                            SpannableString spannableString3 = spannableStringValueOf;
                                            textLayoutBlock.originalWidth = i5;
                                            StaticLayout staticLayoutMakeStaticLayout3 = MessageObject.makeStaticLayout(spannableString3, textPaint2, i5, 1.0f, 0.0f, false);
                                            textLayoutBlock.textLayout = staticLayoutMakeStaticLayout3;
                                            textLayoutBlock.height = staticLayoutMakeStaticLayout3.getHeight();
                                            textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                        } catch (Exception e2) {
                                            charSequence2 = charSequenceInsertHexColorsPreview;
                                            arrayList2 = arrayList;
                                            z = z3;
                                            i6 = 1;
                                            messageObject2 = messageObject3;
                                            f4 = f3;
                                            FileLog.m1040e(e2);
                                        }
                                    }
                                    i4++;
                                    f3 = f4;
                                    messageObject3 = messageObject2;
                                    i13 = i6;
                                    charSequenceInsertHexColorsPreview = charSequence2;
                                    arrayList = arrayList2;
                                    z3 = z;
                                    z2 = false;
                                }
                                if (textLayoutBlock.code && (textLayoutBlock.textLayout.getText() instanceof Spannable) && TextUtils.isEmpty(textRange.language)) {
                                    CodeHighlighting.highlight((Spannable) textLayoutBlock.textLayout.getText(), 0, textLayoutBlock.textLayout.getText().length(), textRange.language, 0, null, true);
                                }
                                this.textLayoutBlocks.add(textLayoutBlock);
                                lineCount = textLayoutBlock.textLayout.getLineCount();
                                lineLeft = textLayoutBlock.textLayout.getLineLeft(lineCount - 1);
                                if (i4 == 0 && lineLeft >= f3) {
                                    this.textXOffset = lineLeft;
                                }
                                float f7 = lineLeft;
                                float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                                int iCeil3 = (int) Math.ceil(lineWidth2);
                                iCeil3 = iCeil3 > i3 + 80 ? i3 : iCeil3;
                                i7 = size - 1;
                                if (i4 == i7) {
                                    this.lastLineWidth = iCeil3;
                                }
                                float f8 = iCeil3;
                                charSequence2 = charSequenceInsertHexColorsPreview;
                                StaticLayout staticLayout = staticLayoutMakeStaticLayout2;
                                int i20 = i16;
                                iCeil = (int) Math.ceil(f8 + Math.max(0.0f, f7));
                                if (textLayoutBlock.quote) {
                                    textLayoutBlock.maxRight = 0.0f;
                                    int i21 = 0;
                                    while (i21 < lineCount) {
                                        try {
                                            i11 = iCeil3;
                                            try {
                                                textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i21));
                                            } catch (Exception unused) {
                                                textLayoutBlock.maxRight = this.textWidth;
                                            }
                                        } catch (Exception unused2) {
                                            i11 = iCeil3;
                                        }
                                        i21++;
                                        iCeil3 = i11;
                                    }
                                }
                                int i22 = iCeil3;
                                if (lineCount <= 1) {
                                    arrayList2 = arrayList;
                                    int iMax = i22;
                                    boolean z9 = false;
                                    float f9 = 0.0f;
                                    float fMax2 = 0.0f;
                                    int i23 = 0;
                                    int iMax2 = iCeil;
                                    while (i23 < lineCount) {
                                        boolean z10 = z9;
                                        try {
                                            lineWidth = textLayoutBlock.textLayout.getLineWidth(i23);
                                        } catch (Exception unused3) {
                                            lineWidth = 0.0f;
                                        }
                                        if (textLayoutBlock.quote) {
                                            iDp5 = AndroidUtilities.dp(f);
                                        } else {
                                            iDp5 = textLayoutBlock.code ? AndroidUtilities.dp(f2) : iDp5;
                                            float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(i23);
                                            float f10 = lineLeft2;
                                            if (lineWidth <= i3 + 20) {
                                                f5 = i3;
                                                i9 = lineCount;
                                                f6 = 0.0f;
                                            } else {
                                                f5 = lineWidth;
                                                i9 = lineCount;
                                                f6 = f10;
                                            }
                                            boolean z11 = z3;
                                            if (f6 <= 0.0f || textLayoutBlock.textLayout.getParagraphDirection(i23) == -1) {
                                                this.textXOffset = Math.min(this.textXOffset, f6);
                                                i10 = 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                this.hasRtl = true;
                                            } else {
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                i10 = 1;
                                            }
                                            if (z10 && f6 == 0.0f) {
                                                if (textLayoutBlock.textLayout.getParagraphDirection(i23) == i10) {
                                                    z10 = true;
                                                }
                                            }
                                            float fMax3 = Math.max(f9, f5);
                                            float f11 = f6 + f5;
                                            fMax2 = Math.max(fMax2, f11);
                                            iMax = Math.max(iMax, (int) Math.ceil(f5));
                                            iMax2 = Math.max(iMax2, (int) Math.ceil(f11));
                                            i23++;
                                            f9 = fMax3;
                                            z9 = z10;
                                            lineCount = i9;
                                            z3 = z11;
                                        }
                                        lineWidth += iDp5;
                                        float lineLeft22 = textLayoutBlock.textLayout.getLineLeft(i23);
                                        float f102 = lineLeft22;
                                        if (lineWidth <= i3 + 20) {
                                        }
                                        boolean z112 = z3;
                                        if (f6 <= 0.0f) {
                                            this.textXOffset = Math.min(this.textXOffset, f6);
                                            i10 = 1;
                                            textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                            this.hasRtl = true;
                                        }
                                        if (z10) {
                                        }
                                        float fMax32 = Math.max(f9, f5);
                                        float f112 = f6 + f5;
                                        fMax2 = Math.max(fMax2, f112);
                                        iMax = Math.max(iMax, (int) Math.ceil(f5));
                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f112));
                                        i23++;
                                        f9 = fMax32;
                                        z9 = z10;
                                        lineCount = i9;
                                        z3 = z112;
                                    }
                                    z = z3;
                                    if (!z9) {
                                        if (i4 == i7) {
                                            this.lastLineWidth = iMax;
                                        }
                                        fMax2 = f9;
                                    } else if (i4 == i7) {
                                        this.lastLineWidth = iCeil;
                                    }
                                    this.textWidth = Math.max(this.textWidth, (int) Math.ceil(fMax2));
                                    iCeil = iMax2;
                                    f4 = 0.0f;
                                    i6 = 1;
                                } else {
                                    arrayList2 = arrayList;
                                    z = z3;
                                    f4 = 0.0f;
                                    if (f7 > 0.0f) {
                                        float fMin = Math.min(this.textXOffset, f7);
                                        this.textXOffset = fMin;
                                        i8 = fMin == 0.0f ? (int) (f8 + f7) : i22;
                                        i6 = 1;
                                        this.hasRtl = size != 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                    } else {
                                        i6 = 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                        i8 = i22;
                                    }
                                    this.textWidth = Math.max(this.textWidth, Math.min(i3, i8));
                                }
                                text = textLayoutBlock.languageLayout;
                                if (text != null) {
                                    this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.dp(f2), textLayoutBlock.textLayout == null ? f4 : r7.getWidth()));
                                }
                                messageObject2 = messageObject;
                                if (messageObject != null && !messageObject2.isSpoilersRevealed && !messageObject2.spoiledLoginCode) {
                                    if (!textLayoutBlock.quote) {
                                        iDp4 = AndroidUtilities.dp(f);
                                    } else {
                                        iDp4 = textLayoutBlock.code ? AndroidUtilities.dp(f2) : iDp4;
                                        SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                                    }
                                    iCeil -= iDp4;
                                    SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                                }
                                staticLayoutMakeStaticLayout2 = staticLayout;
                                i16 = i20;
                                i4++;
                                f3 = f4;
                                messageObject3 = messageObject2;
                                i13 = i6;
                                charSequenceInsertHexColorsPreview = charSequence2;
                                arrayList = arrayList2;
                                z3 = z;
                                z2 = false;
                            }
                            i5 = i3 - iDp3;
                            if (size != i13) {
                            }
                            if (textLayoutBlock.code) {
                                CodeHighlighting.highlight((Spannable) textLayoutBlock.textLayout.getText(), 0, textLayoutBlock.textLayout.getText().length(), textRange.language, 0, null, true);
                            }
                            this.textLayoutBlocks.add(textLayoutBlock);
                            lineCount = textLayoutBlock.textLayout.getLineCount();
                            lineLeft = textLayoutBlock.textLayout.getLineLeft(lineCount - 1);
                            if (i4 == 0) {
                                this.textXOffset = lineLeft;
                            }
                            float f72 = lineLeft;
                            float lineWidth22 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                            int iCeil32 = (int) Math.ceil(lineWidth22);
                            if (iCeil32 > i3 + 80) {
                            }
                            i7 = size - 1;
                            if (i4 == i7) {
                            }
                            float f82 = iCeil32;
                            charSequence2 = charSequenceInsertHexColorsPreview;
                            StaticLayout staticLayout2 = staticLayoutMakeStaticLayout2;
                            int i202 = i16;
                            iCeil = (int) Math.ceil(f82 + Math.max(0.0f, f72));
                            if (textLayoutBlock.quote) {
                            }
                            int i222 = iCeil32;
                            if (lineCount <= 1) {
                            }
                            text = textLayoutBlock.languageLayout;
                            if (text != null) {
                            }
                            messageObject2 = messageObject;
                            if (messageObject != null) {
                                if (!textLayoutBlock.quote) {
                                }
                                iCeil -= iDp4;
                                SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                            }
                            staticLayoutMakeStaticLayout2 = staticLayout2;
                            i16 = i202;
                            i4++;
                            f3 = f4;
                            messageObject3 = messageObject2;
                            i13 = i6;
                            charSequenceInsertHexColorsPreview = charSequence2;
                            arrayList = arrayList2;
                            z3 = z;
                            z2 = false;
                        }
                        return;
                    }
                    i3 = i2 + iDp2;
                    staticLayoutMakeStaticLayout.getLineCount();
                    arrayList = new ArrayList();
                    if (charSequenceInsertHexColorsPreview instanceof Spanned) {
                        arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                    }
                    int size2 = arrayList.size();
                    this.hasCodeAtTop = false;
                    this.hasCodeAtBottom = false;
                    this.hasQuoteAtBottom = false;
                    this.hasSingleQuote = false;
                    StaticLayout staticLayoutMakeStaticLayout22 = staticLayoutMakeStaticLayout;
                    i4 = 0;
                    int i162 = i2;
                    while (i4 < arrayList.size()) {
                    }
                    return;
                }
                StaticLayout staticLayoutMakeStaticLayout4 = MessageObject.makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint, i2, 1.0f, 0.0f, false);
                if (messageObject3 == null) {
                    f = 32.0f;
                    f2 = 15.0f;
                    f3 = 0.0f;
                }
                if (!this.hasSingleQuote) {
                }
                i3 = i2 + iDp2;
                staticLayoutMakeStaticLayout4.getLineCount();
                arrayList = new ArrayList();
                if (charSequenceInsertHexColorsPreview instanceof Spanned) {
                }
                int size22 = arrayList.size();
                this.hasCodeAtTop = false;
                this.hasCodeAtBottom = false;
                this.hasQuoteAtBottom = false;
                this.hasSingleQuote = false;
                StaticLayout staticLayoutMakeStaticLayout222 = staticLayoutMakeStaticLayout4;
                i4 = 0;
                int i1622 = i2;
                while (i4 < arrayList.size()) {
                }
                return;
            } catch (Exception e3) {
                FileLog.m1040e(e3);
                return;
            }
            i2 = i - iDp;
        }
    }

    public boolean isOut() {
        return this.messageOwner.out;
    }

    public boolean isOutOwner() {
        boolean z = true;
        if (this.previewForward) {
            return true;
        }
        Boolean bool = this.isOutOwnerCached;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (isWelcomeMessage() && !isWelcomeAnchored()) {
            this.isOutOwnerCached = Boolean.FALSE;
            return false;
        }
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        if (this.isSaved || getDialogId() == clientUserId) {
            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
            if (messageFwdHeader != null) {
                TLRPC.Peer peer = messageFwdHeader.from_id;
                if ((peer == null || peer.user_id != clientUserId) && !messageFwdHeader.saved_out) {
                    z = false;
                }
                this.isOutOwnerCached = Boolean.valueOf(z);
                return z;
            }
            this.isOutOwnerCached = Boolean.TRUE;
            return true;
        }
        TLRPC.Peer peer2 = this.messageOwner.peer_id;
        TLRPC.Chat chat = null;
        if (peer2 != null) {
            long j = peer2.channel_id;
            if (j != 0) {
                chat = getChat(null, null, j);
            }
        }
        TLRPC.Message message = this.messageOwner;
        if (message.out) {
            TLRPC.Peer peer3 = message.from_id;
            if ((peer3 instanceof TLRPC.TL_peerUser) || ((peer3 instanceof TLRPC.TL_peerChannel) && !ChatObject.isChannelAndNotMegaGroup(chat))) {
                TLRPC.Message message2 = this.messageOwner;
                if (!message2.post) {
                    TLRPC.MessageFwdHeader messageFwdHeader2 = message2.fwd_from;
                    if (messageFwdHeader2 == null) {
                        this.isOutOwnerCached = Boolean.TRUE;
                        return true;
                    }
                    TLRPC.Peer peer4 = messageFwdHeader2.saved_from_peer;
                    if (peer4 != null && peer4.user_id != clientUserId) {
                        z = false;
                    }
                    this.isOutOwnerCached = Boolean.valueOf(z);
                    return z;
                }
            }
        }
        this.isOutOwnerCached = Boolean.FALSE;
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean needDrawAvatar() {
        boolean z;
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (this.type == 27) {
            return false;
        }
        if (isSponsored()) {
            return this.searchType == 4;
        }
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || this.searchType != 0) {
            return true;
        }
        if (getDialogId() < 0) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()));
            if (isEphemeral() && ChatObject.isChannelAndNotMegaGroup(chat)) {
                return false;
            }
            z = chat != null && chat.signature_profiles;
        } else if (getDialogId() == UserObject.VERIFY) {
        }
        return !isSponsored() && (isFromUser() || isFromGroup() || z || this.eventId != 0 || !((messageFwdHeader = this.messageOwner.fwd_from) == null || messageFwdHeader.saved_from_peer == null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean needDrawAvatarInternal() {
        TLRPC.Message message;
        boolean z;
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (isSponsored()) {
            return this.searchType == 4;
        }
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || (((message = this.messageOwner) != null && message.guestchat_via_from != null) || this.searchType != 0)) {
            return true;
        }
        if (getDialogId() < 0) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()));
            if (isEphemeral() && ChatObject.isChannelAndNotMegaGroup(chat)) {
                return false;
            }
            z = chat != null && chat.signature_profiles;
        } else if (getDialogId() == UserObject.VERIFY) {
        }
        return !isSponsored() && ((isFromChat() && isFromUser()) || isFromGroup() || z || this.eventId != 0 || !((messageFwdHeader = this.messageOwner.fwd_from) == null || messageFwdHeader.saved_from_peer == null));
    }

    public boolean isFromChat() {
        TLRPC.Peer peer;
        if (getDialogId() == UserConfig.getInstance(this.currentAccount).clientUserId) {
            return true;
        }
        TLRPC.Peer peer2 = this.messageOwner.peer_id;
        TLRPC.Chat chat = null;
        if (peer2 != null) {
            long j = peer2.channel_id;
            if (j != 0) {
                chat = getChat(null, null, j);
            }
        }
        if (!(ChatObject.isChannel(chat) && chat.megagroup) && ((peer = this.messageOwner.peer_id) == null || peer.chat_id == 0)) {
            return (peer == null || peer.channel_id == 0 || chat == null || !chat.megagroup) ? false : true;
        }
        return true;
    }

    public static long getFromChatId(TLRPC.Message message) {
        return getPeerId(message.from_id);
    }

    public static long getObjectPeerId(TLObject tLObject) {
        if (tLObject == null) {
            return 0L;
        }
        if (tLObject instanceof TLRPC.Chat) {
            return -((TLRPC.Chat) tLObject).id;
        }
        if (tLObject instanceof TLRPC.User) {
            return ((TLRPC.User) tLObject).id;
        }
        return 0L;
    }

    public static long getPeerId(TLRPC.Peer peer) {
        long j;
        if (peer == null) {
            return 0L;
        }
        if (peer instanceof TLRPC.TL_peerChat) {
            j = peer.chat_id;
        } else if (peer instanceof TLRPC.TL_peerChannel) {
            j = peer.channel_id;
        } else {
            return peer.user_id;
        }
        return -j;
    }

    public static boolean peersEqual(TLRPC.InputPeer inputPeer, TLRPC.InputPeer inputPeer2) {
        if (inputPeer == null && inputPeer2 == null) {
            return true;
        }
        if (inputPeer != null && inputPeer2 != null) {
            if ((inputPeer instanceof TLRPC.TL_inputPeerChat) && (inputPeer2 instanceof TLRPC.TL_inputPeerChat)) {
                return inputPeer.chat_id == inputPeer2.chat_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerChannel) && (inputPeer2 instanceof TLRPC.TL_inputPeerChannel)) {
                return inputPeer.channel_id == inputPeer2.channel_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerUser) && (inputPeer2 instanceof TLRPC.TL_inputPeerUser)) {
                return inputPeer.user_id == inputPeer2.user_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerSelf) && (inputPeer2 instanceof TLRPC.TL_inputPeerSelf)) {
                return true;
            }
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.InputPeer inputPeer, TLRPC.Peer peer) {
        if (inputPeer == null && peer == null) {
            return true;
        }
        if (inputPeer != null && peer != null) {
            if ((inputPeer instanceof TLRPC.TL_inputPeerChat) && (peer instanceof TLRPC.TL_peerChat)) {
                return inputPeer.chat_id == peer.chat_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerChannel) && (peer instanceof TLRPC.TL_peerChannel)) {
                return inputPeer.channel_id == peer.channel_id;
            }
            if ((inputPeer instanceof TLRPC.TL_inputPeerUser) && (peer instanceof TLRPC.TL_peerUser) && inputPeer.user_id == peer.user_id) {
                return true;
            }
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.Peer peer, TLRPC.Peer peer2) {
        if (peer == null && peer2 == null) {
            return true;
        }
        if (peer != null && peer2 != null) {
            if ((peer instanceof TLRPC.TL_peerChat) && (peer2 instanceof TLRPC.TL_peerChat)) {
                return peer.chat_id == peer2.chat_id;
            }
            if ((peer instanceof TLRPC.TL_peerChannel) && (peer2 instanceof TLRPC.TL_peerChannel)) {
                return peer.channel_id == peer2.channel_id;
            }
            if ((peer instanceof TLRPC.TL_peerUser) && (peer2 instanceof TLRPC.TL_peerUser) && peer.user_id == peer2.user_id) {
                return true;
            }
        }
        return false;
    }

    public static boolean peersEqual(TLRPC.Chat chat, TLRPC.Peer peer) {
        if (chat == null && peer == null) {
            return true;
        }
        if (chat != null && peer != null) {
            if (ChatObject.isChannel(chat) && (peer instanceof TLRPC.TL_peerChannel)) {
                return chat.id == peer.channel_id;
            }
            if (!ChatObject.isChannel(chat) && (peer instanceof TLRPC.TL_peerChat) && chat.id == peer.chat_id) {
                return true;
            }
        }
        return false;
    }

    public long getFromChatId() {
        return getFromChatId(this.messageOwner);
    }

    public long getChatId() {
        TLRPC.Peer peer = this.messageOwner.peer_id;
        if (peer instanceof TLRPC.TL_peerChat) {
            return peer.chat_id;
        }
        if (peer instanceof TLRPC.TL_peerChannel) {
            return peer.channel_id;
        }
        return 0L;
    }

    public TLRPC.Peer getFromPeer() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            return message.from_id;
        }
        return null;
    }

    public TLObject getFromPeerObject() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.Peer peer = message.from_id;
        if ((peer instanceof TLRPC.TL_peerChannel_layer131) || (peer instanceof TLRPC.TL_peerChannel)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.channel_id));
        }
        if ((peer instanceof TLRPC.TL_peerUser_layer131) || (peer instanceof TLRPC.TL_peerUser)) {
            return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
        }
        if ((peer instanceof TLRPC.TL_peerChat_layer131) || (peer instanceof TLRPC.TL_peerChat)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.chat_id));
        }
        return null;
    }

    public TLObject getPeerObject() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.Peer peer = message.peer_id;
        if ((peer instanceof TLRPC.TL_peerChannel_layer131) || (peer instanceof TLRPC.TL_peerChannel)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.channel_id));
        }
        if ((peer instanceof TLRPC.TL_peerUser_layer131) || (peer instanceof TLRPC.TL_peerUser)) {
            return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.peer_id.user_id));
        }
        if ((peer instanceof TLRPC.TL_peerChat_layer131) || (peer instanceof TLRPC.TL_peerChat)) {
            return MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.chat_id));
        }
        return null;
    }

    public static String getPeerObjectName(TLObject tLObject) {
        if (tLObject instanceof TLRPC.User) {
            return UserObject.getUserName((TLRPC.User) tLObject);
        }
        if (tLObject instanceof TLRPC.Chat) {
            return ((TLRPC.Chat) tLObject).title;
        }
        return "DELETED";
    }

    public boolean isFromUser() {
        TLRPC.Message message = this.messageOwner;
        return (message.from_id instanceof TLRPC.TL_peerUser) && !message.post;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isFromChannel() {
        TLRPC.Chat chat;
        TLRPC.Peer peer = this.messageOwner.peer_id;
        TLRPC.Chat chat2 = null;
        if (peer != null) {
            long j = peer.channel_id;
            chat = j != 0 ? getChat(null, null, j) : null;
        }
        if ((this.messageOwner.peer_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannelAndNotMegaGroup(chat)) {
            return true;
        }
        TLRPC.Peer peer2 = this.messageOwner.from_id;
        if (peer2 != null) {
            long j2 = peer2.channel_id;
            if (j2 != 0) {
                chat2 = getChat(null, null, j2);
            }
        }
        return (this.messageOwner.from_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannelAndNotMegaGroup(chat2);
    }

    public boolean isFromGroup() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return false;
        }
        TLRPC.Peer peer = message.peer_id;
        TLRPC.Chat chat = null;
        if (peer != null) {
            long j = peer.channel_id;
            if (j != 0) {
                chat = getChat(null, null, j);
            }
        }
        return (this.messageOwner.from_id instanceof TLRPC.TL_peerChannel) && ChatObject.isChannel(chat) && chat.megagroup;
    }

    public boolean isForwardedChannelPost() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Message message = this.messageOwner;
        TLRPC.Peer peer = message.from_id;
        if (!(peer instanceof TLRPC.TL_peerChannel) || (messageFwdHeader = message.fwd_from) == null || messageFwdHeader.channel_post == 0) {
            return false;
        }
        TLRPC.Peer peer2 = messageFwdHeader.saved_from_peer;
        return (peer2 instanceof TLRPC.TL_peerChannel) && peer.channel_id == peer2.channel_id;
    }

    public boolean isUnread() {
        TLRPC.Message message = this.messageOwner;
        return message != null && message.unread;
    }

    public boolean isEdited() {
        TLRPC.Message message = this.messageOwner;
        return (message == null || (message.flags & 32768) == 0 || message.edit_date == 0 || message.edit_hide) ? false : true;
    }

    public boolean isContentUnread() {
        return this.messageOwner.media_unread;
    }

    public void setIsRead() {
        this.messageOwner.unread = false;
    }

    public static int getUnreadFlags(TLRPC.Message message) {
        int i = !message.unread ? 1 : 0;
        return !message.media_unread ? i | 2 : i;
    }

    public void setContentIsRead() {
        this.messageOwner.media_unread = false;
    }

    public int getId() {
        TLRPC.Message message = this.messageOwner;
        int i = message.ephemeralAnchorMsgId;
        return i != 0 ? i : message.id;
    }

    public int getRealId() {
        TLRPC.Message message = this.messageOwner;
        int i = message.realId;
        return i != 0 ? i : message.id;
    }

    public int getFeedRealId() {
        return this.searchType == 4 ? getRealId() : getId();
    }

    public static long getMessageSize(TLRPC.Message message) {
        return getMediaSize(getMedia(message));
    }

    public static long getMediaSize(TLRPC.MessageMedia messageMedia) {
        TLRPC.Document document;
        TLRPC.WebPage webPage;
        if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) && (webPage = messageMedia.webpage) != null) {
            document = webPage.document;
        } else if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
            document = messageMedia.game.document;
        } else {
            document = messageMedia != null ? messageMedia.document : null;
        }
        if (document != null) {
            return document.size;
        }
        return 0L;
    }

    public long getSize() {
        VideoPlayer.VideoUri videoUri = this.highestQuality;
        if (videoUri != null) {
            return videoUri.document.size;
        }
        VideoPlayer.VideoUri videoUri2 = this.thumbQuality;
        if (videoUri2 != null) {
            return videoUri2.document.size;
        }
        VideoPlayer.VideoUri videoUri3 = this.cachedQuality;
        if (videoUri3 != null) {
            return videoUri3.document.size;
        }
        return getMessageSize(this.messageOwner);
    }

    public static void fixMessagePeer(ArrayList<TLRPC.Message> arrayList, long j) {
        if (arrayList == null || arrayList.isEmpty() || j == 0) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.Message message = arrayList.get(i);
            if (message instanceof TLRPC.TL_messageEmpty) {
                TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
                message.peer_id = tL_peerChannel;
                tL_peerChannel.channel_id = j;
            }
        }
    }

    public long getChannelId() {
        return getChannelId(this.messageOwner);
    }

    public static long getChannelId(TLRPC.Message message) {
        TLRPC.Peer peer = message.peer_id;
        if (peer != null) {
            return peer.channel_id;
        }
        return 0L;
    }

    public static long getChatId(TLRPC.Message message) {
        if (message == null) {
            return 0L;
        }
        TLRPC.Peer peer = message.peer_id;
        if (peer instanceof TLRPC.TL_peerChat) {
            return peer.chat_id;
        }
        if (peer instanceof TLRPC.TL_peerChannel) {
            return peer.channel_id;
        }
        return 0L;
    }

    public static boolean shouldEncryptPhotoOrVideo(int i, TLRPC.Message message) {
        int i2;
        if ((message == null || message.media == null || !((isVoiceDocument(getDocument(message)) || isRoundVideoMessage(message)) && message.media.ttl_seconds == Integer.MAX_VALUE)) && !(getMedia(message) instanceof TLRPC.TL_messageMediaPaidMedia)) {
            return message instanceof TLRPC.TL_message_secret ? ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isVideoMessage(message)) && (i2 = message.ttl) > 0 && i2 <= 60 : ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
        }
        return true;
    }

    public boolean shouldEncryptPhotoOrVideo() {
        return shouldEncryptPhotoOrVideo(this.currentAccount, this.messageOwner);
    }

    public static boolean isSecretPhotoOrVideo(TLRPC.Message message) {
        int i;
        return message instanceof TLRPC.TL_message_secret ? ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isRoundVideoMessage(message) || isVideoMessage(message)) && (i = message.ttl) > 0 && i <= 60 : (message instanceof TLRPC.TL_message) && ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
    }

    public static boolean isSecretMedia(TLRPC.Message message) {
        return message instanceof TLRPC.TL_message_secret ? ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isRoundVideoMessage(message) || isVideoMessage(message)) && getMedia(message).ttl_seconds != 0 : (message instanceof TLRPC.TL_message) && ((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(message) instanceof TLRPC.TL_messageMediaDocument)) && getMedia(message).ttl_seconds != 0;
    }

    public boolean needDrawBluredPreview() {
        if (this.isRepostPreview) {
            return false;
        }
        if (hasExtendedMediaPreview()) {
            return true;
        }
        TLRPC.Message message = this.messageOwner;
        if (!(message instanceof TLRPC.TL_message_secret)) {
            return (message instanceof TLRPC.TL_message) && getMedia(message) != null && getMedia(this.messageOwner).ttl_seconds != 0 && ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument));
        }
        int iMax = Math.max(message.ttl, getMedia(message).ttl_seconds);
        return iMax > 0 && ((((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || isVideo() || isGif()) && iMax <= 60) || isRoundVideo());
    }

    public boolean isSecret() {
        return this.messageOwner instanceof TLRPC.TL_message_secret;
    }

    public boolean isSecretMedia() {
        int i;
        TLRPC.Message message = this.messageOwner;
        return message instanceof TLRPC.TL_message_secret ? (((getMedia(message) instanceof TLRPC.TL_messageMediaPhoto) || isGif()) && (i = this.messageOwner.ttl) > 0 && i <= 60) || isVoice() || isRoundVideo() || isVideo() : (message instanceof TLRPC.TL_message) && getMedia(message) != null && getMedia(this.messageOwner).ttl_seconds != 0 && ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument));
    }

    public static void setUnreadFlags(TLRPC.Message message, int i) {
        message.unread = (i & 1) == 0;
        message.media_unread = (i & 2) == 0;
    }

    public static boolean isUnread(TLRPC.Message message) {
        return message.unread;
    }

    public static boolean isContentUnread(TLRPC.Message message) {
        return message.media_unread;
    }

    public boolean isSavedFromMegagroup() {
        TLRPC.Peer peer;
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        if (messageFwdHeader == null || (peer = messageFwdHeader.saved_from_peer) == null || peer.channel_id == 0) {
            return false;
        }
        return ChatObject.isMegagroup(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.saved_from_peer.channel_id)));
    }

    public static boolean isOut(TLRPC.Message message) {
        return message.out;
    }

    public long getDialogId() {
        return getDialogId(this.messageOwner);
    }

    public boolean canStreamVideo() {
        if (hasVideoQualities()) {
            return true;
        }
        TLRPC.Document document = getDocument();
        if (document != null && !(document instanceof TLRPC.TL_documentEncrypted)) {
            if (SharedConfig.streamAllVideo) {
                return true;
            }
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                    return documentAttribute.supports_streaming;
                }
            }
            if (SharedConfig.streamMkv && "video/x-matroska".equals(document.mime_type)) {
                return true;
            }
        }
        return false;
    }

    public static long getDialogId(TLRPC.Message message) {
        TLRPC.Peer peer;
        if (message.dialog_id == 0 && (peer = message.peer_id) != null) {
            long j = peer.chat_id;
            if (j != 0) {
                message.dialog_id = -j;
            } else {
                long j2 = peer.channel_id;
                if (j2 != 0) {
                    message.dialog_id = -j2;
                } else if (message.from_id == null || isOut(message) || message.guestchat_via_from != null) {
                    message.dialog_id = message.peer_id.user_id;
                } else {
                    message.dialog_id = message.from_id.user_id;
                }
            }
        }
        return message.dialog_id;
    }

    public long getSavedDialogId() {
        return getSavedDialogId(UserConfig.getInstance(this.currentAccount).getClientUserId(), this.messageOwner);
    }

    public static long getSavedDialogId(long j, TLRPC.Message message) {
        TLRPC.Peer peer;
        TLRPC.Peer peer2 = message.saved_peer_id;
        if (peer2 != null) {
            long j2 = peer2.chat_id;
            if (j2 != 0) {
                return -j2;
            }
            long j3 = peer2.channel_id;
            return j3 != 0 ? -j3 : peer2.user_id;
        }
        if (message.from_id.user_id != j) {
            return 0L;
        }
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader == null || (peer = messageFwdHeader.saved_from_peer) == null) {
            return ((messageFwdHeader == null || messageFwdHeader.from_id == null) && messageFwdHeader != null) ? UserObject.ANONYMOUS : j;
        }
        return DialogObject.getPeerDialogId(peer);
    }

    public static TLRPC.Peer getSavedDialogPeer(long j, TLRPC.Message message) {
        TLRPC.Peer peer;
        TLRPC.Peer peer2;
        TLRPC.Peer peer3 = message.saved_peer_id;
        if (peer3 != null) {
            return peer3;
        }
        TLRPC.Peer peer4 = message.peer_id;
        if (peer4 == null || peer4.user_id != j || (peer = message.from_id) == null || peer.user_id != j) {
            return null;
        }
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader != null && (peer2 = messageFwdHeader.saved_from_peer) != null) {
            return peer2;
        }
        if (messageFwdHeader != null && messageFwdHeader.from_id != null) {
            TLRPC.TL_peerUser tL_peerUser = new TLRPC.TL_peerUser();
            tL_peerUser.user_id = j;
            return tL_peerUser;
        }
        if (messageFwdHeader != null) {
            TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
            tL_peerUser2.user_id = UserObject.ANONYMOUS;
            return tL_peerUser2;
        }
        TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
        tL_peerUser3.user_id = j;
        return tL_peerUser3;
    }

    public boolean canSetReaction() {
        if (isEphemeral()) {
            return false;
        }
        TLRPC.Message message = this.messageOwner;
        if (message instanceof TLRPC.TL_messageService) {
            return message.reactions_are_possible;
        }
        return true;
    }

    public boolean isSending() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 1 && message.id < 0;
    }

    public boolean isEditing() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 3 && message.id > 0;
    }

    public boolean isEditingMedia() {
        boolean z = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto;
        TLRPC.Message message = this.messageOwner;
        return z ? getMedia(message).photo.id == 0 : (getMedia(message) instanceof TLRPC.TL_messageMediaDocument) && getMedia(this.messageOwner).document.dc_id == 0;
    }

    public boolean isSendError() {
        TLRPC.Message message = this.messageOwner;
        if (message.send_state == 2 && message.id < 0) {
            return true;
        }
        if (!this.scheduled || message.id <= 0) {
            return false;
        }
        return message.date < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - (this.messageOwner.video_processing_pending ? 300 : 60);
    }

    public boolean isSent() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 0 || message.id > 0;
    }

    public int getSecretTimeLeft() {
        TLRPC.Message message = this.messageOwner;
        int i = message.ttl;
        int i2 = message.destroyTime;
        return i2 != 0 ? Math.max(0, i2 - ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) : i;
    }

    public CharSequence getSecretTimeString() {
        String str;
        if (!isSecretMedia()) {
            return null;
        }
        if (this.messageOwner.ttl == Integer.MAX_VALUE) {
            if (this.secretOnceSpan == null) {
                this.secretOnceSpan = new SpannableString(RegisterSpec.PREFIX);
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_viewonce);
                coloredImageSpan.setTranslateX(-AndroidUtilities.dp(3.0f));
                coloredImageSpan.setWidth(AndroidUtilities.dp(13.0f));
                CharSequence charSequence = this.secretOnceSpan;
                ((Spannable) charSequence).setSpan(coloredImageSpan, 0, charSequence.length(), 33);
            }
            return TextUtils.concat(this.secretOnceSpan, "1");
        }
        int secretTimeLeft = getSecretTimeLeft();
        if (secretTimeLeft < 60) {
            str = secretTimeLeft + "s";
        } else {
            str = (secretTimeLeft / 60) + "m";
        }
        if (this.secretPlaySpan == null) {
            this.secretPlaySpan = new SpannableString("p");
            ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2807R.drawable.play_mini_video);
            coloredImageSpan2.setTranslateX(AndroidUtilities.dp(1.0f));
            coloredImageSpan2.setWidth(AndroidUtilities.dp(13.0f));
            CharSequence charSequence2 = this.secretPlaySpan;
            ((Spannable) charSequence2).setSpan(coloredImageSpan2, 0, charSequence2.length(), 33);
        }
        return TextUtils.concat(this.secretPlaySpan, str);
    }

    public String getDocumentName() {
        return FileLoader.getDocumentFileName(getDocument());
    }

    public static boolean isWebM(TLRPC.Document document) {
        return document != null && "video/webm".equals(document.mime_type);
    }

    public static boolean isVideoSticker(TLRPC.Document document) {
        return document != null && isVideoStickerDocument(document);
    }

    public boolean isVideoSticker() {
        return getDocument() != null && isVideoStickerDocument(getDocument());
    }

    public static boolean isStickerDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeSticker) {
                    return "image/webp".equals(document.mime_type) || "video/webm".equals(document.mime_type);
                }
            }
        }
        return false;
    }

    public static boolean isVideoStickerDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                    return "video/webm".equals(document.mime_type);
                }
            }
        }
        return false;
    }

    public static boolean isStickerHasSet(TLRPC.Document document) {
        TLRPC.InputStickerSet inputStickerSet;
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && (inputStickerSet = documentAttribute.stickerset) != null && !(inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isAnimatedStickerDocument(TLRPC.Document document, boolean z) {
        if (document != null && (("application/x-tgsticker".equals(document.mime_type) && !document.thumbs.isEmpty()) || "application/x-tgsdice".equals(document.mime_type))) {
            if (z) {
                return true;
            }
            int size = document.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                    return documentAttribute.stickerset instanceof TLRPC.TL_inputStickerSetShortName;
                }
                if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isAnyKindOfStickerOrEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                return true;
            }
        }
        return false;
    }

    public static boolean canAutoplayAnimatedSticker(TLRPC.Document document) {
        return (isAnimatedStickerDocument(document, true) || isVideoStickerDocument(document)) && LiteMode.isEnabled(1);
    }

    public static boolean isMaskDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) && documentAttribute.mask) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isVoiceDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    return documentAttribute.voice;
                }
            }
        }
        return false;
    }

    public static boolean isVoiceWebDocument(WebFile webFile) {
        return webFile != null && webFile.mime_type.equals("audio/ogg");
    }

    public static boolean isImageWebDocument(WebFile webFile) {
        return (webFile == null || isGifDocument(webFile) || !webFile.mime_type.startsWith("image/")) ? false : true;
    }

    public static boolean isVideoWebDocument(WebFile webFile) {
        return webFile != null && webFile.mime_type.startsWith("video/");
    }

    public static boolean isMusicDocument(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeAudio) {
                    return !r2.voice;
                }
            }
            if (!TextUtils.isEmpty(document.mime_type)) {
                String lowerCase = document.mime_type.toLowerCase();
                if (lowerCase.equals("audio/flac") || lowerCase.equals("audio/ogg") || lowerCase.equals("audio/opus") || lowerCase.equals("audio/x-opus+ogg") || lowerCase.equals("audio/wav") || lowerCase.equals("audio/x-wav")) {
                    return true;
                }
                return lowerCase.equals("application/octet-stream") && FileLoader.getDocumentFileName(document).endsWith(".opus");
            }
        }
        return false;
    }

    public static TLRPC.VideoSize getDocumentVideoThumb(TLRPC.Document document) {
        if (document == null || document.video_thumbs.isEmpty()) {
            return null;
        }
        return document.video_thumbs.get(0);
    }

    public static boolean isVideoDocument(TLRPC.Document document) {
        int iLastIndexOf;
        if (document == null) {
            return false;
        }
        String str = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < document.attributes.size(); i3++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                if (documentAttribute.round_message) {
                    return false;
                }
                i = documentAttribute.f1017w;
                i2 = documentAttribute.f1016h;
                z2 = true;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeAnimated) {
                z = true;
            } else if (documentAttribute instanceof TLRPC.TL_documentAttributeFilename) {
                str = documentAttribute.file_name;
            }
        }
        if (str != null && (iLastIndexOf = str.lastIndexOf(".")) >= 0 && isV(str.substring(iLastIndexOf + 1))) {
            return false;
        }
        if (z && (i > 1280 || i2 > 1280)) {
            z = false;
        }
        if (SharedConfig.streamMkv && !z2 && "video/x-matroska".equals(document.mime_type)) {
            z2 = true;
        }
        return z2 && !z;
    }

    public static boolean isV(String str) {
        if (str == null) {
            return true;
        }
        switch (str.toLowerCase().hashCode()) {
            case -1535907675:
            case -1422950858:
            case -1253501876:
            case -907685685:
            case -788047292:
            case -338481545:
            case 3106:
            case 3184:
            case 3215:
            case 3401:
            case 3479:
            case 3494:
            case 3580:
            case 3581:
            case 3593:
            case 3632:
            case 3669:
            case 3756:
            case 3804:
            case 96400:
            case 96586:
            case 96796:
            case 96801:
            case 96894:
            case 97013:
            case 97300:
            case 97301:
            case 97543:
            case 98437:
            case 98472:
            case 98618:
            case 98689:
            case 98719:
            case 98789:
            case 98808:
            case 98819:
            case 99338:
            case 99351:
            case 99548:
            case 99556:
            case 99582:
            case 99640:
            case 99752:
            case 100208:
            case 100511:
            case 100542:
            case 100730:
            case 100882:
            case 100958:
            case 101460:
            case 101671:
            case 101854:
            case 102556:
            case 102572:
            case 103404:
            case 103438:
            case 103637:
            case 103649:
            case 104074:
            case 104269:
            case 104417:
            case 104430:
            case 104435:
            case 104474:
            case 104479:
            case 104582:
            case 104587:
            case 104987:
            case 105532:
            case 105543:
            case 105551:
            case 106202:
            case 106496:
            case 107141:
            case 107305:
            case 107932:
            case 107988:
            case 107989:
            case 108341:
            case 108382:
            case 108413:
            case 108419:
            case 108426:
            case 108430:
            case 108570:
            case 109824:
            case 109860:
            case 110754:
            case 110801:
            case 110834:
            case 110883:
            case 110968:
            case 110989:
            case 111052:
            case 111220:
            case 111265:
            case 111269:
            case 111390:
            case 111420:
            case 111482:
            case 111494:
            case 112185:
            case 112712:
            case 112788:
            case 112862:
            case 113115:
            case 113132:
            case 113291:
            case 113698:
            case 113700:
            case 113837:
            case 113854:
            case 114101:
            case 114130:
            case 114276:
            case 114381:
            case 114809:
            case 114922:
            case 114970:
            case 115161:
            case 115312:
            case 115639:
            case 116079:
            case 116537:
            case 116551:
            case 116609:
            case 117218:
            case 117537:
            case 117840:
            case 117938:
            case 118023:
            case 118026:
            case 118028:
            case 118439:
            case 118783:
            case 118807:
            case 118939:
            case 120703:
            case 3003834:
            case 3016404:
            case 3088960:
            case 3213227:
            case 3271912:
            case 3358271:
            case 3444044:
            case 3446979:
            case 3447940:
            case 3524225:
            case 3524692:
            case 3526257:
            case 3682393:
            case 35379135:
            case 114035747:
                break;
        }
        return true;
    }

    public TLRPC.Document getDocument() {
        VideoPlayer.VideoUri videoUri;
        TLRPC.Document document = this.emojiAnimatedSticker;
        if (document != null) {
            return document;
        }
        if (hasVideoQualities() && (videoUri = this.highestQuality) != null) {
            return videoUri.document;
        }
        return getDocument(this.messageOwner);
    }

    public TLRPC.Document getDocumentFast() {
        TLRPC.Document document = this.emojiAnimatedSticker;
        return document != null ? document : getDocument(this.messageOwner);
    }

    public static TLRPC.Document getDocument(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia;
        TLRPC.Document document;
        TL_iv.RichMessage richMessage;
        if (message != null && (richMessage = message.rich_message) != null) {
            return findVideo(richMessage);
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return getMedia(message).webpage.document;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaGame) {
            return getMedia(message).game.document;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaStory) {
            TL_stories.StoryItem storyItem = ((TLRPC.TL_messageMediaStory) getMedia(message)).storyItem;
            if (storyItem != null && (messageMedia = storyItem.media) != null && (document = messageMedia.document) != null) {
                return document;
            }
        } else if (getMedia(message) instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) getMedia(message);
            if (tL_messageMediaPaidMedia.extended_media.size() == 1 && (tL_messageMediaPaidMedia.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMedia)) {
                return ((TLRPC.TL_messageExtendedMedia) tL_messageMediaPaidMedia.extended_media.get(0)).media.document;
            }
        }
        if (getMedia(message) != null) {
            return getMedia(message).document;
        }
        return null;
    }

    public TLRPC.Photo getPhoto() {
        return getPhoto(this.messageOwner);
    }

    public static TLRPC.Photo getPhoto(TLRPC.Message message) {
        TL_iv.RichMessage richMessage;
        if (message != null && (richMessage = message.rich_message) != null) {
            return findPhoto(richMessage);
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return getMedia(message).webpage.photo;
        }
        if (getMedia(message) != null) {
            return getMedia(message).photo;
        }
        return null;
    }

    public static TLRPC.Document findVideo(TL_iv.RichMessage richMessage) {
        if (richMessage == null) {
            return null;
        }
        return findVideo(richMessage.blocks, richMessage);
    }

    public static TLRPC.Document findVideo(ArrayList<TL_iv.PageBlock> arrayList, TL_iv.RichMessage richMessage) {
        if (arrayList != null && richMessage != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.PageBlock pageBlock = arrayList.get(i);
                i++;
                TL_iv.PageBlock pageBlock2 = pageBlock;
                if (pageBlock2 instanceof TL_iv.pageBlockVideo) {
                    return AndroidUtilities.findDocument(richMessage.documents, ((TL_iv.pageBlockVideo) pageBlock2).video_id);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockCollage) {
                    return findVideo(((TL_iv.pageBlockCollage) pageBlock2).items, richMessage);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockSlideshow) {
                    return findVideo(((TL_iv.pageBlockSlideshow) pageBlock2).items, richMessage);
                }
            }
        }
        return null;
    }

    public static TLRPC.Document findAudio(TL_iv.RichMessage richMessage) {
        if (richMessage == null) {
            return null;
        }
        return findAudio(richMessage.blocks, richMessage);
    }

    public static TLRPC.Document findAudio(ArrayList<TL_iv.PageBlock> arrayList, TL_iv.RichMessage richMessage) {
        if (arrayList != null && richMessage != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.PageBlock pageBlock = arrayList.get(i);
                i++;
                TL_iv.PageBlock pageBlock2 = pageBlock;
                if (pageBlock2 instanceof TL_iv.pageBlockAudio) {
                    return AndroidUtilities.findDocument(richMessage.documents, ((TL_iv.pageBlockAudio) pageBlock2).audio_id);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockCollage) {
                    return findAudio(((TL_iv.pageBlockCollage) pageBlock2).items, richMessage);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockSlideshow) {
                    return findAudio(((TL_iv.pageBlockSlideshow) pageBlock2).items, richMessage);
                }
            }
        }
        return null;
    }

    public static TLRPC.Photo findPhoto(TL_iv.RichMessage richMessage) {
        if (richMessage == null) {
            return null;
        }
        return findPhoto(richMessage.blocks, richMessage);
    }

    public static TLRPC.Photo findPhoto(ArrayList<TL_iv.PageBlock> arrayList, TL_iv.RichMessage richMessage) {
        if (arrayList != null && richMessage != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_iv.PageBlock pageBlock = arrayList.get(i);
                i++;
                TL_iv.PageBlock pageBlock2 = pageBlock;
                if (pageBlock2 instanceof TL_iv.pageBlockPhoto) {
                    return AndroidUtilities.findPhoto(richMessage.photos, ((TL_iv.pageBlockPhoto) pageBlock2).photo_id);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockCollage) {
                    return findPhoto(((TL_iv.pageBlockCollage) pageBlock2).items, richMessage);
                }
                if (pageBlock2 instanceof TL_iv.pageBlockSlideshow) {
                    return findPhoto(((TL_iv.pageBlockSlideshow) pageBlock2).items, richMessage);
                }
            }
        }
        return null;
    }

    public static boolean isStickerMessage(TLRPC.Message message) {
        return getMedia(message) != null && isStickerDocument(getMedia(message).document);
    }

    public static boolean isAnimatedStickerMessage(TLRPC.Message message) {
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(message.dialog_id);
        if ((!zIsEncryptedDialog || message.stickerVerified == 1) && getMedia(message) != null) {
            if (isAnimatedStickerDocument(getMedia(message).document, !zIsEncryptedDialog || message.out)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isLocationMessage(TLRPC.Message message) {
        return (getMedia(message) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(message) instanceof TLRPC.TL_messageMediaGeoLive) || (getMedia(message) instanceof TLRPC.TL_messageMediaVenue);
    }

    public static boolean isMaskMessage(TLRPC.Message message) {
        return getMedia(message) != null && isMaskDocument(getMedia(message).document);
    }

    public static boolean isMusicMessage(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isMusicDocument(getMedia(message).webpage.document);
        }
        return getMedia(message) != null && isMusicDocument(getMedia(message).document);
    }

    public static boolean isGifMessage(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isGifDocument(getMedia(message).webpage.document);
        }
        if (getMedia(message) != null) {
            if (isGifDocument(getMedia(message).document, message.grouped_id != 0)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRoundVideoMessage(TLRPC.Message message) {
        if (!(getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(message).webpage == null) {
            return getMedia(message) != null && isRoundVideoDocument(getMedia(message).document);
        }
        return isRoundVideoDocument(getMedia(message).webpage.document);
    }

    public static boolean isPhoto(TLRPC.Message message) {
        TLRPC.MessageAction messageAction;
        TLRPC.Photo photo;
        TL_iv.RichMessage richMessage;
        if (message != null && (richMessage = message.rich_message) != null) {
            return findPhoto(richMessage) != null;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return (getMedia(message).webpage.photo instanceof TLRPC.TL_photo) && !(getMedia(message).webpage.document instanceof TLRPC.TL_document);
        }
        if (message != null && (messageAction = message.action) != null && (photo = messageAction.photo) != null) {
            return photo instanceof TLRPC.TL_photo;
        }
        TLRPC.MessageMedia media = getMedia(message);
        return (media instanceof TLRPC.TL_messageMediaPhoto) && !((TLRPC.TL_messageMediaPhoto) media).live_photo;
    }

    public static boolean isVoiceMessage(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isVoiceDocument(getMedia(message).webpage.document);
        }
        return getMedia(message) != null && isVoiceDocument(getMedia(message).document);
    }

    public static boolean isNewGifMessage(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isNewGifDocument(getMedia(message).webpage.document);
        }
        return getMedia(message) != null && isNewGifDocument(getMedia(message).document);
    }

    public static boolean isLiveLocationMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaGeoLive;
    }

    public static boolean isVideoMessage(TLRPC.Message message) {
        TL_iv.RichMessage richMessage;
        if (message != null && (richMessage = message.rich_message) != null) {
            return isVideoDocument(findVideo(richMessage));
        }
        if (getMedia(message) != null && isVideoSticker(getMedia(message).document)) {
            return false;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return isVideoDocument(getMedia(message).webpage.document);
        }
        return getMedia(message) != null && isVideoDocument(getMedia(message).document);
    }

    public static boolean isGameMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaGame;
    }

    public static boolean isInvoiceMessage(TLRPC.Message message) {
        return getMedia(message) instanceof TLRPC.TL_messageMediaInvoice;
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.Message message) {
        TLRPC.Document document = getDocument(message);
        if (document != null) {
            return getInputStickerSet(document);
        }
        return null;
    }

    public static TLRPC.InputStickerSet getInputStickerSet(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return null;
                }
                return inputStickerSet;
            }
        }
        return null;
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document) {
        return findAnimatedEmojiEmoticon(document, "😀");
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document, String str) {
        return findAnimatedEmojiEmoticon(document, str, null);
    }

    public static String findAnimatedEmojiEmoticon(TLRPC.Document document, String str, Integer num) {
        if (document != null) {
            int size = document.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) || (documentAttribute instanceof TLRPC.TL_documentAttributeSticker)) {
                    if (num != null) {
                        TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(num.intValue()).getStickerSet(documentAttribute.stickerset, true);
                        StringBuilder sb = new StringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
                        if (stickerSet != null && stickerSet.packs != null) {
                            for (int i2 = 0; i2 < stickerSet.packs.size(); i2++) {
                                TLRPC.TL_stickerPack tL_stickerPack = stickerSet.packs.get(i2);
                                if (tL_stickerPack.documents.contains(Long.valueOf(document.id))) {
                                    sb.append(tL_stickerPack.emoticon);
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(sb)) {
                            return sb.toString();
                        }
                    }
                    return documentAttribute.alt;
                }
            }
        }
        return str;
    }

    public static ArrayList<String> findStickerEmoticons(TLRPC.Document document, Integer num) {
        if (document == null) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) || (documentAttribute instanceof TLRPC.TL_documentAttributeSticker)) {
                if (num != null) {
                    TLRPC.TL_messages_stickerSet stickerSet = MediaDataController.getInstance(num.intValue()).getStickerSet(documentAttribute.stickerset, true);
                    if (stickerSet != null && stickerSet.packs != null) {
                        for (int i2 = 0; i2 < stickerSet.packs.size(); i2++) {
                            TLRPC.TL_stickerPack tL_stickerPack = stickerSet.packs.get(i2);
                            if (tL_stickerPack.documents.contains(Long.valueOf(document.id)) && Emoji.getEmojiDrawable(tL_stickerPack.emoticon) != null) {
                                arrayList.add(tL_stickerPack.emoticon);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        return arrayList;
                    }
                }
                if (!TextUtils.isEmpty(documentAttribute.alt) && Emoji.getEmojiDrawable(documentAttribute.alt) != null) {
                    arrayList.add(documentAttribute.alt);
                    return arrayList;
                }
            }
        }
        return null;
    }

    public static boolean isAnimatedEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                return true;
            }
        }
        return false;
    }

    public static boolean isFreeEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                return ((TLRPC.TL_documentAttributeCustomEmoji) documentAttribute).free;
            }
        }
        return false;
    }

    public static boolean isTextColorEmoji(TLRPC.Document document) {
        if (document == null) {
            return false;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji) {
                return ((TLRPC.TL_documentAttributeCustomEmoji) documentAttribute).text_color;
            }
        }
        return false;
    }

    public static boolean isTextColorSet(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if (tL_messages_stickerSet != null && (stickerSet = tL_messages_stickerSet.set) != null) {
            if (stickerSet.text_color) {
                return true;
            }
            ArrayList<TLRPC.Document> arrayList = tL_messages_stickerSet.documents;
            if (arrayList != null && !arrayList.isEmpty()) {
                return isTextColorEmoji(tL_messages_stickerSet.documents.get(0));
            }
        }
        return false;
    }

    public static boolean isPremiumEmojiPack(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if ((tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null || stickerSet.emojis) && tL_messages_stickerSet != null && tL_messages_stickerSet.documents != null) {
            for (int i = 0; i < tL_messages_stickerSet.documents.size(); i++) {
                if (!isFreeEmoji(tL_messages_stickerSet.documents.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isPremiumEmojiPack(TLRPC.StickerSetCovered stickerSetCovered) {
        TLRPC.StickerSet stickerSet;
        if (stickerSetCovered != null && (stickerSet = stickerSetCovered.set) != null && !stickerSet.emojis) {
            return false;
        }
        ArrayList<TLRPC.Document> arrayList = stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered ? ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents : stickerSetCovered.covers;
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (!isFreeEmoji(arrayList.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long getStickerSetId(TLRPC.Document document) {
        if (document == null) {
            return -1L;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return -1L;
                }
                return inputStickerSet.id;
            }
        }
        return -1L;
    }

    public static String getStickerSetName(TLRPC.Document document) {
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeSticker) {
                TLRPC.InputStickerSet inputStickerSet = documentAttribute.stickerset;
                if (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty) {
                    return null;
                }
                return inputStickerSet.short_name;
            }
        }
        return null;
    }

    public String getStickerChar() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return null;
        }
        ArrayList<TLRPC.DocumentAttribute> arrayList = document.attributes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.DocumentAttribute documentAttribute = arrayList.get(i);
            i++;
            TLRPC.DocumentAttribute documentAttribute2 = documentAttribute;
            if (documentAttribute2 instanceof TLRPC.TL_documentAttributeSticker) {
                return documentAttribute2.alt;
            }
        }
        return null;
    }

    public int getApproximateHeight() {
        return getApproximateHeight(false);
    }

    public int getApproximateHeightCached() {
        Integer num = this.cachedApproximateHeight;
        if (num != null) {
            return num.intValue();
        }
        int approximateHeight = getApproximateHeight(true);
        this.cachedApproximateHeight = Integer.valueOf(approximateHeight);
        return approximateHeight;
    }

    public int getApproximateHeight(boolean z) {
        int minTabletSide;
        int i;
        int iMin;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        int iMin2;
        int i2 = this.type;
        int iDp = 0;
        if (i2 == 0) {
            int iTextHeightCached = z ? textHeightCached() : textHeight();
            if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) {
                iDp = AndroidUtilities.dp(100.0f);
            }
            int i3 = iTextHeightCached + iDp;
            return isReply() ? i3 + AndroidUtilities.dp(42.0f) : i3;
        }
        if (i2 == 20) {
            return AndroidUtilities.getPhotoSize();
        }
        if (i2 == 2) {
            return AndroidUtilities.dp(72.0f);
        }
        if (i2 == 12) {
            return AndroidUtilities.dp(71.0f);
        }
        if (i2 == 9) {
            return AndroidUtilities.dp(100.0f);
        }
        if (i2 == 4) {
            return AndroidUtilities.dp(114.0f);
        }
        if (i2 == 14) {
            return AndroidUtilities.dp(82.0f);
        }
        if (i2 == 10 || i2 == 35 || i2 == 33 || i2 == 34) {
            return AndroidUtilities.dp(30.0f);
        }
        if (i2 == 11 || i2 == 18 || i2 == 31 || i2 == 30 || i2 == 25 || i2 == 21) {
            return AndroidUtilities.dp(50.0f);
        }
        if (i2 == 32) {
            return AndroidUtilities.dp(234.0f);
        }
        if (i2 == 5) {
            return AndroidUtilities.roundMessageSize;
        }
        if (i2 == 19) {
            return (z ? textHeightCached() : textHeight()) + AndroidUtilities.dp(30.0f);
        }
        if (i2 == 13 || i2 == 15) {
            float f = AndroidUtilities.displaySize.y * 0.4f;
            if (AndroidUtilities.isTablet()) {
                minTabletSide = AndroidUtilities.getMinTabletSide();
            } else {
                minTabletSide = AndroidUtilities.displaySize.x;
            }
            float f2 = minTabletSide * 0.5f;
            TLRPC.Document document = getDocument();
            if (document != null) {
                int size = document.attributes.size();
                for (int i4 = 0; i4 < size; i4++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i4);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                        iDp = documentAttribute.f1017w;
                        i = documentAttribute.f1016h;
                        break;
                    }
                }
                i = 0;
            } else {
                i = 0;
            }
            if (iDp == 0) {
                i = (int) f;
                iDp = AndroidUtilities.dp(100.0f) + i;
            }
            float f3 = i;
            if (f3 > f) {
                iDp = (int) (iDp * (f / f3));
                i = (int) f;
            }
            float f4 = iDp;
            if (f4 > f2) {
                i = (int) (i * (f2 / f4));
            }
            return i + AndroidUtilities.dp(14.0f);
        }
        if (AndroidUtilities.isTablet()) {
            iMin = AndroidUtilities.getMinTabletSide();
        } else {
            Point point = AndroidUtilities.displaySize;
            iMin = Math.min(point.x, point.y);
        }
        int photoSize = (int) (iMin * 0.7f);
        int iDp2 = AndroidUtilities.dp(100.0f) + photoSize;
        if (photoSize > AndroidUtilities.getPhotoSize()) {
            photoSize = AndroidUtilities.getPhotoSize();
        }
        if (iDp2 > AndroidUtilities.getPhotoSize()) {
            iDp2 = AndroidUtilities.getPhotoSize();
        }
        ArrayList<TLRPC.PhotoSize> arrayList = this.photoThumbs;
        if (z) {
            closestPhotoSizeWithSize = (arrayList == null || arrayList.isEmpty()) ? null : this.photoThumbs.get(0);
        } else {
            closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize());
        }
        if (closestPhotoSizeWithSize != null) {
            int iDp3 = (int) (closestPhotoSizeWithSize.f1018h / (closestPhotoSizeWithSize.f1019w / photoSize));
            if (iDp3 == 0) {
                iDp3 = AndroidUtilities.dp(100.0f);
            }
            if (iDp3 <= iDp2) {
                iDp2 = iDp3 < AndroidUtilities.dp(120.0f) ? AndroidUtilities.dp(120.0f) : iDp3;
            }
            if (!z && needDrawBluredPreview()) {
                if (AndroidUtilities.isTablet()) {
                    iMin2 = AndroidUtilities.getMinTabletSide();
                } else {
                    Point point2 = AndroidUtilities.displaySize;
                    iMin2 = Math.min(point2.x, point2.y);
                }
                iDp2 = (int) (iMin2 * 0.5f);
            }
        }
        return iDp2 + AndroidUtilities.dp(14.0f);
    }

    public static String getEmoji(TLRPC.Document document) {
        if (document == null) {
            return "😀";
        }
        TLRPC.TL_documentAttributeCustomEmoji tL_documentAttributeCustomEmoji = (TLRPC.TL_documentAttributeCustomEmoji) AndroidUtilities.find(document.attributes, TLRPC.TL_documentAttributeCustomEmoji.class);
        if (tL_documentAttributeCustomEmoji != null && !TextUtils.isEmpty(tL_documentAttributeCustomEmoji.alt)) {
            return tL_documentAttributeCustomEmoji.alt;
        }
        TLRPC.TL_documentAttributeSticker tL_documentAttributeSticker = (TLRPC.TL_documentAttributeSticker) AndroidUtilities.find(document.attributes, TLRPC.TL_documentAttributeSticker.class);
        if (tL_documentAttributeSticker == null || TextUtils.isEmpty(tL_documentAttributeSticker.alt)) {
            return "😀";
        }
        return tL_documentAttributeSticker.alt;
    }

    public String getStickerEmoji() {
        TLRPC.Document document = getDocument();
        if (document == null) {
            return null;
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if ((documentAttribute instanceof TLRPC.TL_documentAttributeSticker) || (documentAttribute instanceof TLRPC.TL_documentAttributeCustomEmoji)) {
                String str = documentAttribute.alt;
                if (str != null && str.length() > 0) {
                    return documentAttribute.alt;
                }
                return null;
            }
        }
        return null;
    }

    public boolean isConferenceCall() {
        return this.messageOwner.action instanceof TLRPC.TL_messageActionConferenceCall;
    }

    public boolean isVideoCall() {
        TLRPC.MessageAction messageAction = this.messageOwner.action;
        if ((messageAction instanceof TLRPC.TL_messageActionPhoneCall) && messageAction.video) {
            return true;
        }
        return (messageAction instanceof TLRPC.TL_messageActionConferenceCall) && messageAction.video;
    }

    public boolean isAnimatedEmoji() {
        return (this.emojiAnimatedSticker == null && this.emojiAnimatedStickerId == null) ? false : true;
    }

    public boolean isAnimatedAnimatedEmoji() {
        return isAnimatedEmoji() && isAnimatedEmoji(getDocument());
    }

    public boolean isDice() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice;
    }

    public boolean isStakeableDice() {
        TLRPC.TL_messageMediaDice tL_messageMediaDice = (TLRPC.TL_messageMediaDice) getMedia(this.messageOwner, TLRPC.TL_messageMediaDice.class);
        return tL_messageMediaDice != null && TextUtils.equals("🎲", tL_messageMediaDice.emoticon);
    }

    public boolean isStakedDice() {
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        return (media instanceof TLRPC.TL_messageMediaDice) && ((TLRPC.TL_messageMediaDice) media).game_outcome != null;
    }

    public static long getStakedDiceWinAmount(TLRPC.TL_messageMediaDice tL_messageMediaDice) {
        TLRPC.TL_messages_emojiGameOutcome tL_messages_emojiGameOutcome = tL_messageMediaDice.game_outcome;
        if (tL_messages_emojiGameOutcome == null) {
            return 0L;
        }
        long j = tL_messages_emojiGameOutcome.ton_amount;
        return j > 0 ? j : -tL_messages_emojiGameOutcome.stake_ton_amount;
    }

    public long getStakedDiceWinAmount() {
        TLRPC.TL_messages_emojiGameOutcome tL_messages_emojiGameOutcome;
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (!(media instanceof TLRPC.TL_messageMediaDice) || (tL_messages_emojiGameOutcome = ((TLRPC.TL_messageMediaDice) media).game_outcome) == null) {
            return 0L;
        }
        long j = tL_messages_emojiGameOutcome.ton_amount;
        return j > 0 ? j : -tL_messages_emojiGameOutcome.stake_ton_amount;
    }

    public long getStakedDiceAmount() {
        TLRPC.TL_messages_emojiGameOutcome tL_messages_emojiGameOutcome;
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (!(media instanceof TLRPC.TL_messageMediaDice) || (tL_messages_emojiGameOutcome = ((TLRPC.TL_messageMediaDice) media).game_outcome) == null) {
            return 0L;
        }
        return tL_messages_emojiGameOutcome.stake_ton_amount;
    }

    public String getDiceEmoji() {
        if (!isDice()) {
            return null;
        }
        TLRPC.TL_messageMediaDice tL_messageMediaDice = (TLRPC.TL_messageMediaDice) getMedia(this.messageOwner);
        if (TextUtils.isEmpty(tL_messageMediaDice.emoticon)) {
            return "🎲";
        }
        return tL_messageMediaDice.emoticon.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public String getDiceEmoji(TLRPC.TL_messageMediaDice tL_messageMediaDice) {
        if (tL_messageMediaDice == null) {
            return null;
        }
        if (TextUtils.isEmpty(tL_messageMediaDice.emoticon)) {
            return "🎲";
        }
        return tL_messageMediaDice.emoticon.replace("️", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public int getDiceValue() {
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
            return ((TLRPC.TL_messageMediaDice) getMedia(this.messageOwner)).value;
        }
        return -1;
    }

    public boolean isSticker() {
        int i = this.type;
        return i != 1000 ? i == 13 : isStickerDocument(getDocument()) || isVideoSticker(getDocument());
    }

    public boolean isAnimatedSticker() {
        int i = this.type;
        if (i != 1000) {
            return i == 15;
        }
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(getDialogId());
        if (zIsEncryptedDialog && this.messageOwner.stickerVerified != 1) {
            return false;
        }
        if (this.emojiAnimatedStickerId == null || this.emojiAnimatedSticker != null) {
            return isAnimatedStickerDocument(getDocument(), (this.emojiAnimatedSticker == null && zIsEncryptedDialog && !isOut()) ? false : true);
        }
        return true;
    }

    public boolean isAnyKindOfSticker() {
        int i = this.type;
        return i == 13 || i == 15 || i == 19;
    }

    public boolean shouldDrawWithoutBackground() {
        if (isSponsored()) {
            return false;
        }
        int i = this.type;
        return i == 13 || i == 15 || i == 5 || i == 19 || isExpiredStory();
    }

    public boolean isAnimatedEmojiStickers() {
        return this.type == 19;
    }

    public boolean isAnimatedEmojiStickerSingle() {
        return this.emojiAnimatedStickerId != null;
    }

    public boolean isLocation() {
        return isLocationMessage(this.messageOwner);
    }

    public boolean isMask() {
        return isMaskMessage(this.messageOwner);
    }

    public boolean isMusic() {
        return (!isMusicMessage(this.messageOwner) || isVideo() || isRoundVideo()) ? false : true;
    }

    public boolean isDocument() {
        return (getDocument() == null || isVideo() || isMusic() || isVoice() || isAnyKindOfSticker()) ? false : true;
    }

    public boolean isVoice() {
        return isVoiceMessage(this.messageOwner);
    }

    public boolean isVoiceOnce() {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        return isVoice() && (message = this.messageOwner) != null && (messageMedia = message.media) != null && messageMedia.ttl_seconds == Integer.MAX_VALUE;
    }

    public boolean isRoundOnce() {
        TLRPC.Message message;
        TLRPC.MessageMedia messageMedia;
        return isRoundVideo() && (message = this.messageOwner) != null && (messageMedia = message.media) != null && messageMedia.ttl_seconds == Integer.MAX_VALUE;
    }

    public boolean isVideo() {
        return isVideoMessage(this.messageOwner);
    }

    public boolean isLivePhoto() {
        TLRPC.MessageMedia media = getMedia(this);
        return media != null && media.live_photo;
    }

    public boolean isVideoStory() {
        TL_stories.StoryItem storyItem;
        TLRPC.MessageMedia messageMedia;
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if (media == null || (storyItem = media.storyItem) == null || (messageMedia = storyItem.media) == null) {
            return false;
        }
        return isVideoDocument(messageMedia.document);
    }

    public boolean isPhoto() {
        return isPhoto(this.messageOwner);
    }

    public boolean isStoryMedia() {
        TLRPC.Message message = this.messageOwner;
        return message != null && (message.media instanceof TLRPC.TL_messageMediaStory);
    }

    public boolean isLiveLocation() {
        return isLiveLocationMessage(this.messageOwner);
    }

    public boolean isExpiredLiveLocation(int i) {
        TLRPC.Message message = this.messageOwner;
        return message.date + getMedia(message).period <= i;
    }

    public boolean isGame() {
        return isGameMessage(this.messageOwner);
    }

    public boolean isInvoice() {
        return isInvoiceMessage(this.messageOwner);
    }

    public boolean isRoundVideo() {
        if (this.isRoundVideoCached == 0) {
            this.isRoundVideoCached = (this.type == 5 || isRoundVideoMessage(this.messageOwner)) ? 1 : 2;
        }
        return this.isRoundVideoCached == 1;
    }

    public boolean shouldAnimateSending() {
        if (!this.wasJustSent) {
            return false;
        }
        if (this.type == 5 || isVoice()) {
            return true;
        }
        if (!isAnyKindOfSticker() || this.sendAnimationData == null) {
            return (this.messageText == null || this.sendAnimationData == null) ? false : true;
        }
        return true;
    }

    public boolean hasAttachedStickers() {
        boolean z = getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto;
        TLRPC.Message message = this.messageOwner;
        if (z) {
            return getMedia(message).photo != null && getMedia(this.messageOwner).photo.has_stickers;
        }
        if (getMedia(message) instanceof TLRPC.TL_messageMediaDocument) {
            return isDocumentHasAttachedStickers(getMedia(this.messageOwner).document);
        }
        return false;
    }

    public static boolean isDocumentHasAttachedStickers(TLRPC.Document document) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                if (document.attributes.get(i) instanceof TLRPC.TL_documentAttributeHasStickers) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isGif() {
        return isGifMessage(this.messageOwner);
    }

    public boolean isWebpageDocument() {
        return (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(this.messageOwner).webpage.document == null || isGifDocument(getMedia(this.messageOwner).webpage.document)) ? false : true;
    }

    public boolean isWebpage() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage;
    }

    public boolean isNewGif() {
        return getMedia(this.messageOwner) != null && isNewGifDocument(getDocument());
    }

    public boolean isAndroidTheme() {
        if (getMedia(this.messageOwner) != null && getMedia(this.messageOwner).webpage != null && !getMedia(this.messageOwner).webpage.attributes.isEmpty()) {
            int size = getMedia(this.messageOwner).webpage.attributes.size();
            for (int i = 0; i < size; i++) {
                TLRPC.WebPageAttribute webPageAttribute = getMedia(this.messageOwner).webpage.attributes.get(i);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeTheme) {
                    TLRPC.TL_webPageAttributeTheme tL_webPageAttributeTheme = (TLRPC.TL_webPageAttributeTheme) webPageAttribute;
                    ArrayList<TLRPC.Document> arrayList = tL_webPageAttributeTheme.documents;
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if ("application/x-tgtheme-android".equals(arrayList.get(i2).mime_type)) {
                            return true;
                        }
                    }
                    if (tL_webPageAttributeTheme.settings != null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public String getMusicTitle() {
        return getMusicTitle(true);
    }

    public String getMusicTitle(boolean z) {
        TLRPC.Document document = getDocument();
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    if (documentAttribute.voice) {
                        if (z) {
                            return LocaleController.formatDateAudio(this.messageOwner.date, true);
                        }
                        return null;
                    }
                    String str = documentAttribute.title;
                    if (str != null && str.length() != 0) {
                        return str;
                    }
                    String documentFileName = FileLoader.getDocumentFileName(document);
                    return (TextUtils.isEmpty(documentFileName) && z) ? LocaleController.getString(C2807R.string.AudioUnknownTitle) : documentFileName;
                }
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && documentAttribute.round_message) {
                    if (isQuickReply()) {
                        return LocaleController.formatString(C2807R.string.BusinessInReplies, "/" + getQuickReplyDisplayName());
                    }
                    return LocaleController.formatDateAudio(this.messageOwner.date, true);
                }
            }
            String documentFileName2 = FileLoader.getDocumentFileName(document);
            if (!TextUtils.isEmpty(documentFileName2)) {
                return documentFileName2;
            }
        }
        return LocaleController.getString(C2807R.string.AudioUnknownTitle);
    }

    public static String getMusicTitle(TLRPC.Document document, boolean z) {
        if (document == null) {
            return LocaleController.getString(C2807R.string.AudioUnknownTitle);
        }
        for (int i = 0; i < document.attributes.size(); i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                String str = documentAttribute.title;
                if (str != null && !str.isEmpty()) {
                    return str;
                }
                String documentFileName = FileLoader.getDocumentFileName(document);
                return (TextUtils.isEmpty(documentFileName) && z) ? LocaleController.getString(C2807R.string.AudioUnknownTitle) : documentFileName;
            }
        }
        String documentFileName2 = FileLoader.getDocumentFileName(document);
        return !TextUtils.isEmpty(documentFileName2) ? documentFileName2 : LocaleController.getString(C2807R.string.AudioUnknownTitle);
    }

    public double getDuration() {
        TL_stories.StoryItem storyItem;
        TLRPC.MessageMedia messageMedia;
        double d = this.attributeDuration;
        if (d > 0.0d) {
            return d;
        }
        TLRPC.Document document = getDocument();
        if (document == null && this.type == 23 && (storyItem = getMedia(this.messageOwner).storyItem) != null && (messageMedia = storyItem.media) != null) {
            document = messageMedia.document;
        }
        if (document == null) {
            return 0.0d;
        }
        int i = this.audioPlayerDuration;
        if (i > 0) {
            return i;
        }
        for (int i2 = 0; i2 < document.attributes.size(); i2++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i2);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                double d2 = documentAttribute.duration;
                this.attributeDuration = d2;
                return d2;
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                double d3 = documentAttribute.duration;
                this.attributeDuration = d3;
                return d3;
            }
        }
        return this.audioPlayerDuration;
    }

    public String getArtworkUrl(boolean z) {
        return getArtworkUrl(getDocument(), z);
    }

    public static String getArtworkUrl(TLRPC.Document document, boolean z) {
        if (document == null || "audio/ogg".equals(document.mime_type)) {
            return null;
        }
        int size = document.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                if (documentAttribute.voice) {
                    return null;
                }
                String strReplace = documentAttribute.performer;
                String str = documentAttribute.title;
                if (!TextUtils.isEmpty(strReplace)) {
                    for (String str2 : excludeWords) {
                        strReplace = strReplace.replace(str2, " ");
                    }
                }
                if (TextUtils.isEmpty(strReplace) && TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("athumb://itunes.apple.com/search?term=");
                    sb.append(URLEncoder.encode(strReplace + " - " + str, "UTF-8"));
                    sb.append("&entity=song&limit=4");
                    sb.append(z ? "&s=1" : _UrlKt.FRAGMENT_ENCODE_SET);
                    return sb.toString();
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public String getMusicAuthor() {
        return getMusicAuthor(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0152 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getMusicAuthor(boolean z) {
        TLRPC.User user;
        TLRPC.Chat chat;
        String str;
        TLRPC.Document document = getDocument();
        if (document != null) {
            boolean z2 = false;
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                    if (!documentAttribute.voice) {
                        String str2 = documentAttribute.performer;
                        return (TextUtils.isEmpty(str2) && z) ? LocaleController.getString(C2807R.string.AudioUnknownArtist) : str2;
                    }
                } else {
                    if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && documentAttribute.round_message) {
                    }
                    if (!z2) {
                        TLRPC.User user2 = null;
                        if (!z) {
                            return null;
                        }
                        if (!isOutOwner()) {
                            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
                            if (messageFwdHeader != null) {
                                TLRPC.Peer peer = messageFwdHeader.from_id;
                                if ((peer instanceof TLRPC.TL_peerUser) && peer.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                }
                            }
                            TLRPC.Message message = this.messageOwner;
                            TLRPC.MessageFwdHeader messageFwdHeader2 = message.fwd_from;
                            if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerChannel)) {
                                chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.channel_id));
                            } else if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerChat)) {
                                chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.chat_id));
                            } else {
                                if (messageFwdHeader2 != null && (messageFwdHeader2.from_id instanceof TLRPC.TL_peerUser)) {
                                    user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.fwd_from.from_id.user_id));
                                } else {
                                    if (messageFwdHeader2 != null && (str = messageFwdHeader2.from_name) != null) {
                                        return str;
                                    }
                                    TLRPC.Peer peer2 = message.from_id;
                                    if (peer2 instanceof TLRPC.TL_peerChat) {
                                        chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.chat_id));
                                    } else if (peer2 instanceof TLRPC.TL_peerChannel) {
                                        chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.from_id.channel_id));
                                    } else if (peer2 == null && message.peer_id.channel_id != 0) {
                                        chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.peer_id.channel_id));
                                    } else {
                                        user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.from_id.user_id));
                                    }
                                }
                                TLRPC.User user3 = user;
                                chat = null;
                                user2 = user3;
                            }
                            if (user2 != null) {
                                return UserObject.getUserName(user2);
                            }
                            if (chat != null) {
                                return chat.title;
                            }
                        }
                        return LocaleController.getString(C2807R.string.FromYou);
                    }
                }
                z2 = true;
                if (!z2) {
                }
            }
        }
        return LocaleController.getString(C2807R.string.AudioUnknownArtist);
    }

    public static String getMusicAuthor(TLRPC.Document document, boolean z) {
        if (document != null) {
            for (int i = 0; i < document.attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && !documentAttribute.voice) {
                    String str = documentAttribute.performer;
                    return (TextUtils.isEmpty(str) && z) ? LocaleController.getString(C2807R.string.AudioUnknownArtist) : str;
                }
            }
        }
        return LocaleController.getString(C2807R.string.AudioUnknownArtist);
    }

    public TLRPC.InputStickerSet getInputStickerSet() {
        return getInputStickerSet(this.messageOwner);
    }

    public boolean isForwarded() {
        return isForwardedMessage(this.messageOwner);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean needDrawForwarded() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        if (this.type == 23 && !isExpiredStory()) {
            return true;
        }
        if (getDialogId() == UserObject.VERIFY) {
            return false;
        }
        boolean z = this.isSaved;
        TLRPC.Message message = this.messageOwner;
        if (z) {
            if (message != null && message.fwd_from != null) {
                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                long savedDialogId = getSavedDialogId(clientUserId, this.messageOwner);
                long peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.fwd_from.saved_from_peer);
                if (peerDialogId >= 0) {
                    peerDialogId = DialogObject.getPeerDialogId(this.messageOwner.fwd_from.from_id);
                }
                if (peerDialogId == 0) {
                    return savedDialogId >= 0 && savedDialogId != UserObject.ANONYMOUS;
                }
                if (savedDialogId != peerDialogId && peerDialogId != clientUserId) {
                    return true;
                }
            }
            return false;
        }
        if (((message.flags & 4) != 0 || (getMedia(this) instanceof TLRPC.TL_messageMediaPaidMedia)) && (messageFwdHeader = this.messageOwner.fwd_from) != null && !messageFwdHeader.imported) {
            TLRPC.Peer peer = messageFwdHeader.saved_from_peer;
            if (peer != null) {
                TLRPC.Peer peer2 = messageFwdHeader.from_id;
                if (!(peer2 instanceof TLRPC.TL_peerChannel) || peer.channel_id != peer2.channel_id) {
                    if (UserConfig.getInstance(this.currentAccount).getClientUserId() != getDialogId()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean isForwardedMessage(TLRPC.Message message) {
        return ((message.flags & 4) == 0 || message.fwd_from == null) ? false : true;
    }

    public boolean isReply() {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        MessageObject messageObject = this.replyMessageObject;
        if ((messageObject == null || !(messageObject.messageOwner instanceof TLRPC.TL_messageEmpty)) && (messageReplyHeader = (message = this.messageOwner).reply_to) != null) {
            return ((messageReplyHeader.reply_to_msg_id == 0 && messageReplyHeader.reply_to_random_id == 0) || (message.flags & 8) == 0) ? false : true;
        }
        return false;
    }

    public boolean isMediaEmpty() {
        return isMediaEmpty(this.messageOwner);
    }

    public boolean isMediaEmpty(boolean z) {
        return isMediaEmpty(this.messageOwner, z);
    }

    public boolean isMediaEmptyWebpage() {
        return isMediaEmptyWebpage(this.messageOwner);
    }

    public static boolean isMediaEmpty(TLRPC.Message message) {
        return isMediaEmpty(message, true);
    }

    public static boolean isMediaEmpty(TLRPC.Message message, boolean z) {
        if (message == null || getMedia(message) == null || (getMedia(message) instanceof TLRPC.TL_messageMediaEmpty)) {
            return true;
        }
        return z && (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage);
    }

    public static boolean isMediaEmptyWebpage(TLRPC.Message message) {
        return message == null || getMedia(message) == null || (getMedia(message) instanceof TLRPC.TL_messageMediaEmpty);
    }

    public boolean hasReplies() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        return messageReplies != null && messageReplies.replies > 0;
    }

    public boolean canViewThread() {
        if (this.messageOwner.action != null) {
            return false;
        }
        if (hasReplies()) {
            return true;
        }
        MessageObject messageObject = this.replyMessageObject;
        return ((messageObject == null || messageObject.messageOwner.replies == null) && getReplyTopMsgId() == 0) ? false : true;
    }

    public boolean isComments() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        return messageReplies != null && messageReplies.comments;
    }

    public boolean isLinkedToChat(long j) {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        if (messageReplies != null) {
            return j == 0 || messageReplies.channel_id == j;
        }
        return false;
    }

    public int getRepliesCount() {
        TLRPC.MessageReplies messageReplies = this.messageOwner.replies;
        if (messageReplies != null) {
            return messageReplies.replies;
        }
        return 0;
    }

    public boolean canEditMessage(TLRPC.Chat chat) {
        return !isEphemeralAndNotWelcome() && canEditMessage(this.currentAccount, this.messageOwner, chat, this.scheduled);
    }

    public boolean canEditMessageScheduleTime(TLRPC.Chat chat) {
        return canEditMessageScheduleTime(this.currentAccount, this.messageOwner, chat);
    }

    public boolean canForwardMessage() {
        int i;
        return (isQuickReply() || (i = this.type) == 30 || i == 31 || i == 32 || i == 33 || i == 35 || i == 37 || (this.messageOwner instanceof TLRPC.TL_message_secret) || needDrawBluredPreview() || isLiveLocation() || this.type == 16 || isSponsored() || this.messageOwner.noforwards) ? false : true;
    }

    public boolean canEditMedia() {
        if (!isSecretMedia() && !isEphemeralAndNotWelcome()) {
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                return true;
            }
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                return (isVoice() || isSticker() || isAnimatedSticker() || isRoundVideo()) ? false : true;
            }
            if (isMediaEmpty()) {
                return true;
            }
        }
        return false;
    }

    public boolean canEditMessageAnytime(TLRPC.Chat chat) {
        return canEditMessageAnytime(this.currentAccount, this.messageOwner, chat);
    }

    public static boolean canEditMessageAnytime(int i, TLRPC.Message message, TLRPC.Chat chat) {
        TLRPC.MessageAction messageAction;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        if (message != null && message.peer_id != null && ((getMedia(message) == null || (!isRoundVideoDocument(getMedia(message).document) && !isStickerDocument(getMedia(message).document) && !isAnimatedStickerDocument(getMedia(message).document, true))) && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.id >= 0))) {
            TLRPC.Peer peer = message.from_id;
            if (peer instanceof TLRPC.TL_peerUser) {
                long j = peer.user_id;
                if (j == message.peer_id.user_id && j == UserConfig.getInstance(i).getClientUserId() && !isLiveLocationMessage(message)) {
                    return true;
                }
            }
            if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
                return false;
            }
            if (ChatObject.isChannel(chat) && !chat.megagroup && (chat.creator || ((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.edit_messages))) {
                return true;
            }
            if (message.out && chat != null && chat.megagroup && (chat.creator || (((tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.pin_messages) || ((tL_chatBannedRights = chat.default_banned_rights) != null && !tL_chatBannedRights.pin_messages)))) {
                return true;
            }
        }
        return false;
    }

    public static boolean canEditMessageScheduleTime(int i, TLRPC.Message message, TLRPC.Chat chat) {
        if (message.video_processing_pending) {
            return false;
        }
        if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
            return false;
        }
        if (!ChatObject.isChannel(chat) || chat.megagroup || chat.creator) {
            return true;
        }
        TLRPC.TL_chatAdminRights tL_chatAdminRights = chat.admin_rights;
        return tL_chatAdminRights != null && (tL_chatAdminRights.edit_messages || message.out);
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean canEditMessage(int i, TLRPC.Message message, TLRPC.Chat chat, boolean z) {
        TLRPC.MessageAction messageAction;
        TLRPC.MessageMedia media;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights3;
        if (z && message.date < ConnectionsManager.getInstance(i).getCurrentTime() - 60) {
            return false;
        }
        if ((chat == null || ((!chat.left && !chat.kicked) || (chat.megagroup && chat.has_link))) && message != null && message.peer_id != null && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.id >= 0 && (((media = getMedia(message)) == null || message.rich_message != null || (!isRoundVideoDocument(media.document) && !isStickerDocument(media.document) && !isAnimatedStickerDocument(media.document, true) && !isLocationMessage(message))) && !message.paid_suggested_post_stars && !message.paid_suggested_post_ton))) {
            TLRPC.Peer peer = message.from_id;
            if (peer instanceof TLRPC.TL_peerUser) {
                long j = peer.user_id;
                if (j == message.peer_id.user_id && j == UserConfig.getInstance(i).getClientUserId() && !isLiveLocationMessage(message) && !(media instanceof TLRPC.TL_messageMediaContact)) {
                    return true;
                }
            }
            if (chat == null && message.peer_id.channel_id != 0 && (chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id))) == null) {
                return false;
            }
            if (media != null && message.rich_message == null && !(media instanceof TLRPC.TL_messageMediaEmpty) && !(media instanceof TLRPC.TL_messageMediaPhoto) && !(media instanceof TLRPC.TL_messageMediaDocument) && !(media instanceof TLRPC.TL_messageMediaWebPage) && !(media instanceof TLRPC.TL_messageMediaPaidMedia) && !(media instanceof TLRPC.TL_messageMediaToDo)) {
                return false;
            }
            if (ChatObject.isChannel(chat) && !chat.megagroup && (chat.creator || ((tL_chatAdminRights3 = chat.admin_rights) != null && tL_chatAdminRights3.edit_messages))) {
                return true;
            }
            if (message.out && chat != null && chat.megagroup && (chat.creator || (((tL_chatAdminRights2 = chat.admin_rights) != null && tL_chatAdminRights2.pin_messages) || ((tL_chatBannedRights = chat.default_banned_rights) != null && !tL_chatBannedRights.pin_messages)))) {
                return true;
            }
            if (!z && Math.abs(message.date - ConnectionsManager.getInstance(i).getCurrentTime()) > MessagesController.getInstance(i).maxEditTime) {
                return false;
            }
            if (message.peer_id.channel_id == 0) {
                if (!message.out) {
                    TLRPC.Peer peer2 = message.from_id;
                    if ((peer2 instanceof TLRPC.TL_peerUser) && peer2.user_id == UserConfig.getInstance(i).getClientUserId()) {
                        if (message.rich_message != null || (media instanceof TLRPC.TL_messageMediaPhoto) || (((media instanceof TLRPC.TL_messageMediaDocument) && !isStickerMessage(message) && !isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            if (((chat != null && chat.megagroup && message.out) || (chat != null && !chat.megagroup && ((chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && (tL_chatAdminRights.edit_messages || (message.out && tL_chatAdminRights.post_messages)))) && message.post))) && (message.rich_message != null || (media instanceof TLRPC.TL_messageMediaPhoto) || (((media instanceof TLRPC.TL_messageMediaDocument) && !isStickerMessage(message) && !isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null))) {
                return true;
            }
        }
        return false;
    }

    public boolean canDeleteMessage(boolean z, TLRPC.Chat chat) {
        TLRPC.Message message;
        if (isStory() && (message = this.messageOwner) != null && message.dialog_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return true;
        }
        return (this.eventId == 0 && this.sponsoredId == null && canDeleteMessage(this.currentAccount, z, this.messageOwner, chat)) || isEphemeral();
    }

    public static boolean canDeleteMessage(int i, boolean z, TLRPC.Message message, TLRPC.Chat chat) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.Peer peer;
        if (message == null) {
            return false;
        }
        if (ChatObject.isChannelAndNotMegaGroup(chat) && (message.action instanceof TLRPC.TL_messageActionChatJoinedByRequest)) {
            return false;
        }
        if (message.id < 0) {
            return true;
        }
        if (chat == null && (peer = message.peer_id) != null && peer.channel_id != 0) {
            chat = MessagesController.getInstance(i).getChat(Long.valueOf(message.peer_id.channel_id));
        }
        if (!ChatObject.isChannel(chat)) {
            return z || isOut(message) || !ChatObject.isChannel(chat);
        }
        if (z && !chat.megagroup) {
            return chat.creator || ((tL_chatAdminRights2 = chat.admin_rights) != null && (tL_chatAdminRights2.delete_messages || message.out));
        }
        boolean z2 = message.out;
        return (z2 && (message instanceof TLRPC.TL_messageService)) ? message.id != 1 && ChatObject.canUserDoAdminAction(chat, 13) : z || (message.id != 1 && (chat.creator || (((tL_chatAdminRights = chat.admin_rights) != null && (tL_chatAdminRights.delete_messages || (z2 && (chat.megagroup || tL_chatAdminRights.post_messages)))) || (chat.megagroup && z2))));
    }

    public String getForwardedName() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        if (messageFwdHeader == null) {
            return null;
        }
        TLRPC.Peer peer = messageFwdHeader.from_id;
        if (peer instanceof TLRPC.TL_peerChannel) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.channel_id));
            if (chat != null) {
                return chat.title;
            }
            return null;
        }
        if (peer instanceof TLRPC.TL_peerChat) {
            TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.messageOwner.fwd_from.from_id.chat_id));
            if (chat2 != null) {
                return chat2.title;
            }
            return null;
        }
        if (peer instanceof TLRPC.TL_peerUser) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.messageOwner.fwd_from.from_id.user_id));
            if (user != null) {
                return UserObject.getUserName(user);
            }
            return null;
        }
        String str = messageFwdHeader.from_name;
        if (str != null) {
            return str;
        }
        return null;
    }

    public Long getForwardedFromId() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Peer peer;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (messageFwdHeader = message.fwd_from) == null || (peer = messageFwdHeader.from_id) == null) {
            return null;
        }
        return Long.valueOf(DialogObject.getPeerDialogId(peer));
    }

    public TLObject getForwardedFromPeerObject() {
        Long forwardedFromId = getForwardedFromId();
        if (forwardedFromId == null) {
            return null;
        }
        return MessagesController.getInstance(this.currentAccount).getUserOrChat(forwardedFromId.longValue());
    }

    public int getReplyMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null) {
            return messageReplyHeader.reply_to_msg_id;
        }
        return 0;
    }

    public int getReplyTopMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null) {
            return messageReplyHeader.reply_to_top_id;
        }
        return 0;
    }

    public int getReplyTopMsgId(boolean z) {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader == null) {
            return 0;
        }
        if (z && (messageReplyHeader.flags & 2) > 0 && messageReplyHeader.reply_to_top_id == 0) {
            return 1;
        }
        return messageReplyHeader.reply_to_top_id;
    }

    public static long getReplyToDialogId(TLRPC.Message message) {
        TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
        if (messageReplyHeader == null) {
            return 0L;
        }
        TLRPC.Peer peer = messageReplyHeader.reply_to_peer_id;
        if (peer != null) {
            return getPeerId(peer);
        }
        return getDialogId(message);
    }

    public int getReplyAnyMsgId() {
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader == null) {
            return 0;
        }
        int i = messageReplyHeader.reply_to_top_id;
        return i != 0 ? i : messageReplyHeader.reply_to_msg_id;
    }

    public boolean isPrivateForward() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        return (messageFwdHeader == null || TextUtils.isEmpty(messageFwdHeader.from_name)) ? false : true;
    }

    public boolean isImportedForward() {
        TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
        return messageFwdHeader != null && messageFwdHeader.imported;
    }

    public long getSenderId() {
        TLRPC.Peer peer;
        TLRPC.Message message = this.messageOwner;
        TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
        if (messageFwdHeader != null && (peer = messageFwdHeader.saved_from_peer) != null) {
            long j = peer.user_id;
            if (j != 0) {
                TLRPC.Peer peer2 = messageFwdHeader.from_id;
                return peer2 instanceof TLRPC.TL_peerUser ? peer2.user_id : j;
            }
            if (peer.channel_id != 0) {
                if (isSavedFromMegagroup()) {
                    TLRPC.Peer peer3 = this.messageOwner.fwd_from.from_id;
                    if (peer3 instanceof TLRPC.TL_peerUser) {
                        return peer3.user_id;
                    }
                }
                TLRPC.MessageFwdHeader messageFwdHeader2 = this.messageOwner.fwd_from;
                TLRPC.Peer peer4 = messageFwdHeader2.from_id;
                if (peer4 instanceof TLRPC.TL_peerChannel) {
                    return -peer4.channel_id;
                }
                if (peer4 instanceof TLRPC.TL_peerChat) {
                    return -peer4.chat_id;
                }
                return -messageFwdHeader2.saved_from_peer.channel_id;
            }
            long j2 = peer.chat_id;
            if (j2 != 0) {
                TLRPC.Peer peer5 = messageFwdHeader.from_id;
                if (peer5 instanceof TLRPC.TL_peerUser) {
                    return peer5.user_id;
                }
                if (peer5 instanceof TLRPC.TL_peerChannel) {
                    return -peer5.channel_id;
                }
                return peer5 instanceof TLRPC.TL_peerChat ? -peer5.chat_id : -j2;
            }
        } else {
            TLRPC.Peer peer6 = message.from_id;
            if (peer6 instanceof TLRPC.TL_peerUser) {
                return peer6.user_id;
            }
            if (peer6 instanceof TLRPC.TL_peerChannel) {
                return -peer6.channel_id;
            }
            if (peer6 instanceof TLRPC.TL_peerChat) {
                return -peer6.chat_id;
            }
            if (message.post) {
                return message.peer_id.channel_id;
            }
        }
        return 0L;
    }

    public boolean isWallpaper() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_background".equals(getMedia(this.messageOwner).webpage.type);
    }

    public boolean isTheme() {
        return (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_theme".equals(getMedia(this.messageOwner).webpage.type);
    }

    public int getMediaExistanceFlags() {
        boolean z = this.attachPathExists;
        return this.mediaExists ? (z ? 1 : 0) | 2 : z ? 1 : 0;
    }

    public void applyMediaExistanceFlags(int i) {
        if (i == -1) {
            checkMediaExistance();
        } else {
            this.attachPathExists = (i & 1) != 0;
            this.mediaExists = (i & 2) != 0;
        }
    }

    public void checkMediaExistance() {
        checkMediaExistance(true);
    }

    public void checkMediaExistance(boolean z) {
        int i;
        this.attachPathExists = false;
        this.mediaExists = false;
        int i2 = this.type;
        if (i2 == 20) {
            TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) this.messageOwner.media.extended_media.get(0);
            if (tL_messageExtendedMediaPreview.thumb != null) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(tL_messageExtendedMediaPreview.thumb, z);
                if (!this.mediaExists) {
                    this.mediaExists = pathToAttach.exists() || (tL_messageExtendedMediaPreview.thumb instanceof TLRPC.TL_photoStrippedSize);
                }
            }
        } else if (i2 == 1 && FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize(true)) != null) {
            File pathToMessage = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.messageOwner, z);
            if (needDrawBluredPreview()) {
                this.mediaExists = new File(pathToMessage.getAbsolutePath() + ".enc").exists();
            }
            if (!this.mediaExists) {
                this.mediaExists = pathToMessage.exists();
            }
        }
        if ((!this.mediaExists && this.type == 8) || (i = this.type) == 3 || i == 9 || i == 2 || i == 14 || i == 5) {
            String str = this.messageOwner.attachPath;
            if (str != null && str.length() > 0) {
                this.attachPathExists = new File(this.messageOwner.attachPath).exists();
            }
            if (!this.attachPathExists) {
                File pathToMessage2 = FileLoader.getInstance(this.currentAccount).getPathToMessage(this.messageOwner, z);
                if ((this.type == 3 && needDrawBluredPreview()) || isVoiceOnce() || isRoundOnce()) {
                    this.mediaExists = new File(pathToMessage2.getAbsolutePath() + ".enc").exists();
                }
                if (!this.mediaExists) {
                    this.mediaExists = pathToMessage2.exists();
                }
            }
        }
        if (!this.mediaExists) {
            TLRPC.Document document = getDocument();
            if (document != null) {
                boolean zIsWallpaper = isWallpaper();
                int i3 = this.currentAccount;
                if (zIsWallpaper) {
                    this.mediaExists = FileLoader.getInstance(i3).getPathToAttach(document, null, true, z).exists();
                } else {
                    this.mediaExists = FileLoader.getInstance(i3).getPathToAttach(document, null, false, z).exists();
                }
            } else {
                int i4 = this.type;
                if (i4 == 0) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize());
                    if (closestPhotoSizeWithSize == null) {
                        return;
                    } else {
                        this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, null, true, z).exists();
                    }
                } else if (i4 == 11) {
                    TLRPC.Photo photo = this.messageOwner.action.photo;
                    if (photo == null || photo.video_sizes.isEmpty()) {
                        return;
                    } else {
                        this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach(photo.video_sizes.get(0), null, true, z).exists();
                    }
                }
            }
        }
        updateQualitiesCached(z);
    }

    public void setQuery(String str) {
        setQuery(str, true);
    }

    public void setQuery(String str, boolean z) {
        String strSubstring;
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            this.highlightedWords = null;
            this.messageTrimmedToHighlight = null;
            this.messageTrimmedToHighlightCut = true;
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        String lowerCase = str.trim().toLowerCase();
        String[] strArrSplit = lowerCase.split("[^\\p{L}#$]+");
        ArrayList arrayList2 = new ArrayList();
        TLRPC.MessageReplyHeader messageReplyHeader = this.messageOwner.reply_to;
        if (messageReplyHeader != null && !TextUtils.isEmpty(messageReplyHeader.quote_text)) {
            String lowerCase2 = this.messageOwner.reply_to.quote_text.trim().toLowerCase();
            if (lowerCase2.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
                handleFoundWords(arrayList, strArrSplit, true, z);
                return;
            }
            arrayList2.addAll(Arrays.asList(lowerCase2.split("[^\\p{L}#$]+")));
        }
        int i = 0;
        if (!TextUtils.isEmpty(this.messageOwner.message)) {
            String lowerCase3 = this.messageOwner.message.trim().toLowerCase();
            if (lowerCase3.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
                handleFoundWords(arrayList, strArrSplit, false, z);
                return;
            }
            arrayList2.addAll(Arrays.asList(lowerCase3.split("[^\\p{L}#$]+")));
        }
        if (getDocument() != null) {
            String lowerCase4 = FileLoader.getDocumentFileName(getDocument()).toLowerCase();
            if (lowerCase4.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
            }
            arrayList2.addAll(Arrays.asList(lowerCase4.split("[^\\p{L}#$]+")));
        }
        if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) {
            TLRPC.WebPage webPage = getMedia(this.messageOwner).webpage;
            String str2 = webPage.title;
            if (str2 == null) {
                str2 = webPage.site_name;
            }
            if (str2 != null) {
                String lowerCase5 = str2.toLowerCase();
                if (lowerCase5.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                    arrayList.add(lowerCase);
                }
                arrayList2.addAll(Arrays.asList(lowerCase5.split("[^\\p{L}#$]+")));
            }
        }
        String musicAuthor = getMusicAuthor();
        if (musicAuthor != null) {
            String lowerCase6 = musicAuthor.toLowerCase();
            if (lowerCase6.contains(lowerCase) && !arrayList.contains(lowerCase)) {
                arrayList.add(lowerCase);
            }
            arrayList2.addAll(Arrays.asList(lowerCase6.split("[^\\p{L}#$]+")));
        }
        int length = strArrSplit.length;
        int i2 = 0;
        while (i2 < length) {
            String str3 = strArrSplit[i2];
            if (str3.length() >= 2) {
                int i3 = i;
                while (i3 < arrayList2.size()) {
                    if (!arrayList.contains(arrayList2.get(i3)) && (iIndexOf = (strSubstring = (String) arrayList2.get(i3)).indexOf(str3.charAt(i))) >= 0) {
                        int iMax = Math.max(str3.length(), strSubstring.length());
                        if (iIndexOf != 0) {
                            strSubstring = strSubstring.substring(iIndexOf);
                        }
                        int iMin = Math.min(str3.length(), strSubstring.length());
                        int i4 = i;
                        int i5 = i4;
                        while (i4 < iMin && strSubstring.charAt(i4) == str3.charAt(i4)) {
                            i5++;
                            i4++;
                        }
                        if (i5 / iMax >= 0.5d) {
                            arrayList.add((String) arrayList2.get(i3));
                        }
                    }
                    i3++;
                    i = 0;
                }
            }
            i2++;
            i = 0;
        }
        handleFoundWords(arrayList, strArrSplit, i, z);
    }

    private void handleFoundWords(ArrayList<String> arrayList, String[] strArr, boolean z) {
        handleFoundWords(arrayList, strArr, z, true);
    }

    private void handleFoundWords(ArrayList<String> arrayList, String[] strArr, boolean z, boolean z2) {
        CharSequence charSequence;
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        boolean z3;
        if (arrayList.isEmpty()) {
            return;
        }
        boolean z4 = false;
        for (int i = 0; i < arrayList.size(); i++) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (arrayList.get(i).contains(strArr[i2])) {
                    z4 = true;
                    break;
                }
                i2++;
            }
            if (z4) {
                break;
            }
        }
        if (z4) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int length2 = strArr.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        z3 = false;
                        break;
                    } else {
                        if (arrayList.get(i3).contains(strArr[i4])) {
                            z3 = true;
                            break;
                        }
                        i4++;
                    }
                }
                if (!z3) {
                    arrayList.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (arrayList.size() > 0) {
                Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return MessageObject.$r8$lambda$gmQO2dzPCHe8iMwdGhi6M6Eo3m8((String) obj, (String) obj2);
                    }
                });
                String str = arrayList.get(0);
                arrayList.clear();
                arrayList.add(str);
            }
        }
        this.highlightedWords = arrayList;
        if (this.messageOwner.message != null) {
            applyEntities();
            if (!TextUtils.isEmpty(this.caption)) {
                charSequence = this.caption;
            } else {
                charSequence = this.messageText;
            }
            CharSequence charSequenceReplaceMultipleCharSequence = AndroidUtilities.replaceMultipleCharSequence("\n", charSequence, " ");
            if (z && (message = this.messageOwner) != null && (messageReplyHeader = message.reply_to) != null && messageReplyHeader.quote_text != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.messageOwner.reply_to.quote_text);
                addEntitiesToText(spannableStringBuilder, this.messageOwner.reply_to.quote_entities, isOutOwner(), false, false, false);
                SpannableString spannableString = new SpannableString("q ");
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_quote);
                coloredImageSpan.setOverrideColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
                spannableString.setSpan(coloredImageSpan, 0, 1, 33);
                charSequenceReplaceMultipleCharSequence = new SpannableStringBuilder(spannableString).append((CharSequence) spannableStringBuilder).append('\n').append(charSequenceReplaceMultipleCharSequence);
            }
            String string = charSequenceReplaceMultipleCharSequence.toString();
            int length3 = string.length();
            int iIndexOf = string.toLowerCase().indexOf(arrayList.get(0));
            if (iIndexOf < 0) {
                iIndexOf = 0;
            }
            if (length3 > 120 && z2) {
                int iMax = Math.max(0, iIndexOf - 12);
                charSequenceReplaceMultipleCharSequence = charSequenceReplaceMultipleCharSequence.subSequence(iMax, Math.min(length3, (iIndexOf - iMax) + iIndexOf + 108));
            }
            this.messageTrimmedToHighlight = charSequenceReplaceMultipleCharSequence;
            this.messageTrimmedToHighlightCut = z2;
        }
    }

    public static /* synthetic */ int $r8$lambda$gmQO2dzPCHe8iMwdGhi6M6Eo3m8(String str, String str2) {
        return str2.length() - str.length();
    }

    public void createMediaThumbs() {
        TLRPC.MessageMedia messageMedia;
        if (isStoryMedia()) {
            TL_stories.StoryItem storyItem = getMedia(this.messageOwner).storyItem;
            if (storyItem == null || (messageMedia = storyItem.media) == null) {
                return;
            }
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 50);
                this.mediaThumb = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 320, false, null, true), document);
                this.mediaSmallThumb = ImageLocation.getForDocument(closestPhotoSizeWithSize, document);
                return;
            } else {
                TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 50);
                this.mediaThumb = ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 320, false, closestPhotoSizeWithSize2, true), this.photoThumbsObject);
                this.mediaSmallThumb = ImageLocation.getForObject(closestPhotoSizeWithSize2, this.photoThumbsObject);
                return;
            }
        }
        if (isVideo()) {
            TLRPC.Document document2 = getDocument();
            TLRPC.PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 50);
            this.mediaThumb = ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document2.thumbs, 320), document2);
            this.mediaSmallThumb = ImageLocation.getForDocument(closestPhotoSizeWithSize3, document2);
            return;
        }
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) || getMedia(this.messageOwner).photo == null || this.photoThumbs.isEmpty()) {
            return;
        }
        TLRPC.PhotoSize closestPhotoSizeWithSize4 = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 50);
        this.mediaThumb = ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, 320, false, closestPhotoSizeWithSize4, false), this.photoThumbsObject);
        this.mediaSmallThumb = ImageLocation.getForObject(closestPhotoSizeWithSize4, this.photoThumbsObject);
    }

    public boolean hasHighlightedWords() {
        ArrayList<String> arrayList = this.highlightedWords;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public boolean equals(MessageObject messageObject) {
        return messageObject != null && getId() == messageObject.getId() && getDialogId() == messageObject.getDialogId();
    }

    public boolean isReactionsAvailable() {
        return (isEditing() || isSponsored() || !isSent() || isEphemeral() || isExpiredStory() || !canSetReaction()) ? false : true;
    }

    public boolean isPaidReactionChosen() {
        if (this.messageOwner.reactions == null) {
            return false;
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (this.messageOwner.reactions.results.get(i).reaction instanceof TLRPC.TL_reactionPaid) {
                return this.messageOwner.reactions.results.get(i).chosen;
            }
        }
        return false;
    }

    public void addPaidReactions(int i, boolean z, long j) {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        addPaidReactions(this.currentAccount, this.messageOwner.reactions, i, j, z);
    }

    public Long getMyPaidReactionPeer() {
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList<TLRPC.MessageReactor> arrayList;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.MessageReactor messageReactor = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor2 = messageReactor;
            if (messageReactor2 != null && messageReactor2.my) {
                if (messageReactor2.anonymous) {
                    return Long.valueOf(UserObject.ANONYMOUS);
                }
                TLRPC.Peer peer = messageReactor2.peer_id;
                if (peer != null) {
                    return Long.valueOf(DialogObject.getPeerDialogId(peer));
                }
            }
        }
        return null;
    }

    public static Long getMyPaidReactionPeer(TLRPC.MessageReactions messageReactions) {
        ArrayList<TLRPC.MessageReactor> arrayList;
        if (messageReactions == null || (arrayList = messageReactions.top_reactors) == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.MessageReactor messageReactor = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor2 = messageReactor;
            if (messageReactor2 != null && messageReactor2.my) {
                if (messageReactor2.anonymous) {
                    return Long.valueOf(UserObject.ANONYMOUS);
                }
                TLRPC.Peer peer = messageReactor2.peer_id;
                if (peer != null) {
                    return Long.valueOf(DialogObject.getPeerDialogId(peer));
                }
            }
        }
        return null;
    }

    public void setMyPaidReactionDialogId(long j) {
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList<TLRPC.MessageReactor> arrayList;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.MessageReactor messageReactor = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor2 = messageReactor;
            if (messageReactor2 != null && messageReactor2.my) {
                boolean z = j == UserObject.ANONYMOUS;
                messageReactor2.anonymous = z;
                int i2 = messageReactor2.flags;
                if (z) {
                    messageReactor2.flags = i2 & (-9);
                    messageReactor2.peer_id = null;
                } else {
                    messageReactor2.flags = i2 | 8;
                    messageReactor2.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(j);
                }
            }
        }
    }

    public boolean doesPaidReactionExist() {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (this.messageOwner.reactions.results.get(i).reaction instanceof TLRPC.TL_reactionPaid) {
                return true;
            }
        }
        return false;
    }

    public boolean ensurePaidReactionsExist(boolean z) {
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        TLRPC.ReactionCount reactionCount = null;
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (this.messageOwner.reactions.results.get(i).reaction instanceof TLRPC.TL_reactionPaid) {
                reactionCount = this.messageOwner.reactions.results.get(i);
            }
        }
        if (reactionCount != null) {
            return false;
        }
        TLRPC.TL_reactionCount tL_reactionCount = new TLRPC.TL_reactionCount();
        tL_reactionCount.reaction = new TLRPC.TL_reactionPaid();
        tL_reactionCount.count = 1;
        tL_reactionCount.chosen = z;
        this.messageOwner.reactions.results.add(0, tL_reactionCount);
        return true;
    }

    public static void addPaidReactions(int i, TLRPC.MessageReactions messageReactions, int i2, long j, boolean z) {
        TLRPC.MessageReactor tL_messageReactor = null;
        TLRPC.ReactionCount tL_reactionCount = null;
        for (int i3 = 0; i3 < messageReactions.results.size(); i3++) {
            if (messageReactions.results.get(i3).reaction instanceof TLRPC.TL_reactionPaid) {
                tL_reactionCount = messageReactions.results.get(i3);
            }
        }
        int i4 = 0;
        while (true) {
            if (i4 >= messageReactions.top_reactors.size()) {
                break;
            }
            if (messageReactions.top_reactors.get(i4).my) {
                tL_messageReactor = messageReactions.top_reactors.get(i4);
                break;
            }
            i4++;
        }
        if (tL_reactionCount == null && i2 > 0) {
            tL_reactionCount = new TLRPC.TL_reactionCount();
            tL_reactionCount.reaction = new TLRPC.TL_reactionPaid();
            messageReactions.results.add(0, tL_reactionCount);
        }
        if (tL_reactionCount != null) {
            tL_reactionCount.chosen = z;
            int iMax = Math.max(0, tL_reactionCount.count + i2);
            tL_reactionCount.count = iMax;
            if (iMax <= 0) {
                messageReactions.results.remove(tL_reactionCount);
            }
        }
        if (tL_messageReactor == null && i2 > 0) {
            tL_messageReactor = new TLRPC.TL_messageReactor();
            tL_messageReactor.my = true;
            messageReactions.top_reactors.add(tL_messageReactor);
        }
        if (tL_messageReactor != null) {
            tL_messageReactor.count = Math.max(0, tL_messageReactor.count + i2);
            tL_messageReactor.anonymous = j == UserObject.ANONYMOUS;
            if (j == 0 || j == UserObject.ANONYMOUS) {
                tL_messageReactor.peer_id = MessagesController.getInstance(i).getPeer(UserConfig.getInstance(i).getClientUserId());
            } else {
                tL_messageReactor.peer_id = MessagesController.getInstance(i).getPeer(j);
            }
            if (tL_messageReactor.count <= 0) {
                messageReactions.top_reactors.remove(tL_messageReactor);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean selectReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
        int i;
        TLRPC.TL_messageReactions tL_messageReactions;
        TLRPC.Message message = this.messageOwner;
        if (message.reactions == null) {
            message.reactions = new TLRPC.TL_messageReactions();
            TLRPC.Message message2 = this.messageOwner;
            message2.reactions.reactions_as_tags = getDialogId(message2) == UserConfig.getInstance(this.currentAccount).getClientUserId();
            this.messageOwner.reactions.can_see_list = isFromGroup() || isFromUser();
        }
        ArrayList arrayList = new ArrayList();
        TLRPC.ReactionCount tL_reactionCount = null;
        int i2 = 0;
        for (int i3 = 0; i3 < this.messageOwner.reactions.results.size(); i3++) {
            TLRPC.ReactionCount reactionCount = this.messageOwner.reactions.results.get(i3);
            if (reactionCount.chosen && !(reactionCount.reaction instanceof TLRPC.TL_reactionPaid)) {
                arrayList.add(reactionCount);
                int i4 = reactionCount.chosen_order;
                if (i4 > i2) {
                    i2 = i4;
                }
            }
            TLRPC.Reaction reaction = this.messageOwner.reactions.results.get(i3).reaction;
            if (reaction instanceof TLRPC.TL_reactionEmoji) {
                String str = visibleReaction.emojicon;
                if (str != null) {
                    if (((TLRPC.TL_reactionEmoji) reaction).emoticon.equals(str)) {
                        tL_reactionCount = this.messageOwner.reactions.results.get(i3);
                    }
                    if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                    }
                }
            } else if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                long j = visibleReaction.documentId;
                if (j != 0 && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == j) {
                    tL_reactionCount = this.messageOwner.reactions.results.get(i3);
                }
            }
        }
        if (!arrayList.isEmpty() && arrayList.contains(tL_reactionCount) && z) {
            return true;
        }
        int maxUserReactionsCount = MessagesController.getInstance(this.currentAccount).getMaxUserReactionsCount();
        if (!arrayList.isEmpty() && arrayList.contains(tL_reactionCount)) {
            if (tL_reactionCount != null) {
                tL_reactionCount.chosen = false;
                int i5 = tL_reactionCount.count - 1;
                tL_reactionCount.count = i5;
                if (i5 <= 0) {
                    this.messageOwner.reactions.results.remove(tL_reactionCount);
                }
            }
            if (this.messageOwner.reactions.can_see_list) {
                int i6 = 0;
                while (i6 < this.messageOwner.reactions.recent_reactions.size()) {
                    if (getPeerId(this.messageOwner.reactions.recent_reactions.get(i6).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(this.messageOwner.reactions.recent_reactions.get(i6).reaction, visibleReaction)) {
                        this.messageOwner.reactions.recent_reactions.remove(i6);
                        i6--;
                    }
                    i6++;
                }
            }
            this.reactionsChanged = true;
            return false;
        }
        while (!arrayList.isEmpty() && arrayList.size() >= maxUserReactionsCount) {
            int i7 = 0;
            for (int i8 = 1; i8 < arrayList.size(); i8++) {
                if (!(((TLRPC.ReactionCount) arrayList.get(i8)).reaction instanceof TLRPC.TL_reactionPaid) && ((TLRPC.ReactionCount) arrayList.get(i8)).chosen_order < ((TLRPC.ReactionCount) arrayList.get(i7)).chosen_order) {
                    i7 = i8;
                }
            }
            TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) arrayList.get(i7);
            reactionCount2.chosen = false;
            int i9 = reactionCount2.count - 1;
            reactionCount2.count = i9;
            if (i9 <= 0) {
                this.messageOwner.reactions.results.remove(reactionCount2);
            }
            arrayList.remove(reactionCount2);
            if (this.messageOwner.reactions.can_see_list) {
                int i10 = 0;
                while (i10 < this.messageOwner.reactions.recent_reactions.size()) {
                    if (getPeerId(this.messageOwner.reactions.recent_reactions.get(i10).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(this.messageOwner.reactions.recent_reactions.get(i10).reaction, visibleReaction)) {
                        this.messageOwner.reactions.recent_reactions.remove(i10);
                        i10--;
                    }
                    i10++;
                }
            }
        }
        if (tL_reactionCount == null) {
            int chatMaxUniqReactions = MessagesController.getInstance(this.currentAccount).getChatMaxUniqReactions(getDialogId());
            TLRPC.Message message3 = this.messageOwner;
            if (message3 == null || (tL_messageReactions = message3.reactions) == null) {
                i = 0;
            } else {
                ArrayList<TLRPC.ReactionCount> arrayList2 = tL_messageReactions.results;
                int size = arrayList2.size();
                i = 0;
                int i11 = 0;
                while (i11 < size) {
                    TLRPC.ReactionCount reactionCount3 = arrayList2.get(i11);
                    i11++;
                    if (!(reactionCount3.reaction instanceof TLRPC.TL_reactionPaid)) {
                        i++;
                    }
                }
            }
            if (i + 1 > chatMaxUniqReactions) {
                return false;
            }
            tL_reactionCount = new TLRPC.TL_reactionCount();
            tL_reactionCount.reaction = visibleReaction.toTLReaction();
            this.messageOwner.reactions.results.add(tL_reactionCount);
        }
        tL_reactionCount.chosen = true;
        tL_reactionCount.count++;
        tL_reactionCount.chosen_order = i2 + 1;
        TLRPC.Message message4 = this.messageOwner;
        if (message4.reactions.can_see_list || (message4.dialog_id > 0 && maxUserReactionsCount > 1)) {
            TLRPC.TL_messagePeerReaction tL_messagePeerReaction = new TLRPC.TL_messagePeerReaction();
            TLRPC.Message message5 = this.messageOwner;
            if (message5.isThreadMessage && message5.fwd_from != null) {
                tL_messagePeerReaction.peer_id = MessagesController.getInstance(this.currentAccount).getSendAsSelectedPeer(getFromChatId());
            } else {
                tL_messagePeerReaction.peer_id = MessagesController.getInstance(this.currentAccount).getSendAsSelectedPeer(getDialogId());
            }
            this.messageOwner.reactions.recent_reactions.add(0, tL_messagePeerReaction);
            if (visibleReaction.emojicon != null) {
                TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
                tL_messagePeerReaction.reaction = tL_reactionEmoji;
                tL_reactionEmoji.emoticon = visibleReaction.emojicon;
            } else {
                TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
                tL_messagePeerReaction.reaction = tL_reactionCustomEmoji;
                tL_reactionCustomEmoji.document_id = visibleReaction.documentId;
            }
        }
        this.reactionsChanged = true;
        return true;
    }

    public boolean probablyRingtone() {
        if (!isVoiceOnce() && getDocument() != null && RingtoneDataStore.ringtoneSupportedMimeType.contains(getDocument().mime_type) && getDocument().size < MessagesController.getInstance(this.currentAccount).ringtoneSizeMax * 2) {
            for (int i = 0; i < getDocument().attributes.size(); i++) {
                TLRPC.DocumentAttribute documentAttribute = getDocument().attributes.get(i);
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeAudio) && documentAttribute.duration < 5.0d) {
                    return true;
                }
            }
        }
        return false;
    }

    public byte[] getWaveform() {
        if (getDocument() == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < getDocument().attributes.size(); i2++) {
            TLRPC.DocumentAttribute documentAttribute = getDocument().attributes.get(i2);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                byte[] bArr = documentAttribute.waveform;
                if (bArr == null || bArr.length == 0) {
                    MediaController.getInstance().generateWaveform(this);
                }
                return documentAttribute.waveform;
            }
        }
        if (!isRoundVideo()) {
            return null;
        }
        if (this.randomWaveform == null) {
            this.randomWaveform = new byte[120];
            while (true) {
                byte[] bArr2 = this.randomWaveform;
                if (i >= bArr2.length) {
                    break;
                }
                bArr2[i] = (byte) (Math.random() * 255.0d);
                i++;
            }
        }
        return this.randomWaveform;
    }

    public boolean isStory() {
        return this.storyItem != null;
    }

    public boolean isBotPreview() {
        return this.storyItem instanceof StoriesController.BotPreview;
    }

    public TLRPC.WebPage getStoryMentionWebpage() {
        if (!isStoryMention()) {
            return null;
        }
        TLRPC.WebPage webPage = this.storyMentionWebpage;
        if (webPage != null) {
            return webPage;
        }
        TLRPC.TL_webPage tL_webPage = new TLRPC.TL_webPage();
        tL_webPage.type = "telegram_story";
        TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory = new TLRPC.TL_webPageAttributeStory();
        tL_webPageAttributeStory.id = this.messageOwner.media.id;
        tL_webPageAttributeStory.peer = MessagesController.getInstance(this.currentAccount).getPeer(this.messageOwner.media.user_id);
        TL_stories.StoryItem storyItem = this.messageOwner.media.storyItem;
        if (storyItem != null) {
            tL_webPageAttributeStory.flags |= 1;
            tL_webPageAttributeStory.storyItem = storyItem;
        }
        tL_webPage.attributes.add(tL_webPageAttributeStory);
        this.storyMentionWebpage = tL_webPage;
        return tL_webPage;
    }

    public boolean isStoryMention() {
        return this.type == 24 && !isExpiredStory();
    }

    public boolean isGiveaway() {
        return this.type == 26;
    }

    public boolean isGiveawayOrGiveawayResults() {
        return isGiveaway() || isGiveawayResults();
    }

    public boolean isGiveawayResults() {
        return this.type == 28;
    }

    public boolean isAnyGift() {
        int i = this.type;
        return i == 30 || i == 18 || i == 25;
    }

    public static CharSequence userSpan() {
        return userSpan(0);
    }

    public static CharSequence userSpan(int i) {
        if (userSpan == null) {
            userSpan = new CharSequence[2];
        }
        CharSequence[] charSequenceArr = userSpan;
        if (charSequenceArr[i] == null) {
            charSequenceArr[i] = new SpannableStringBuilder("u");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_reply_user);
            coloredImageSpan.spaceScaleX = 0.9f;
            if (i == 0) {
                coloredImageSpan.translate(0.0f, AndroidUtilities.dp(1.0f));
            }
            ((SpannableStringBuilder) userSpan[i]).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return userSpan[i];
    }

    public static CharSequence groupSpan() {
        if (groupSpan == null) {
            groupSpan = new SpannableStringBuilder(ImageLoader.AUTOPLAY_FILTER);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.msg_folders_groups);
            coloredImageSpan.setScale(0.7f, 0.7f);
            ((SpannableStringBuilder) groupSpan).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return groupSpan;
    }

    public static CharSequence channelSpan() {
        if (channelSpan == null) {
            channelSpan = new SpannableStringBuilder("c");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.msg_folders_channels);
            coloredImageSpan.setScale(0.7f, 0.7f);
            ((SpannableStringBuilder) channelSpan).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return channelSpan;
    }

    public static CharSequence peerNameWithIcon(int i, TLRPC.Peer peer) {
        return peerNameWithIcon(i, peer, !(peer instanceof TLRPC.TL_peerUser));
    }

    public static CharSequence peerNameWithIcon(int i, TLRPC.Peer peer, boolean z) {
        TLRPC.Chat chat;
        if (peer instanceof TLRPC.TL_peerUser) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(peer.user_id));
            if (user == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (z) {
                return new SpannableStringBuilder(userSpan()).append((CharSequence) " ").append((CharSequence) UserObject.getUserName(user));
            }
            return UserObject.getUserName(user);
        }
        if (peer instanceof TLRPC.TL_peerChat) {
            TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(peer.chat_id));
            if (chat2 == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (z) {
                return new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat2) ? channelSpan() : groupSpan()).append((CharSequence) " ").append((CharSequence) chat2.title);
            }
            return chat2.title;
        }
        if (!(peer instanceof TLRPC.TL_peerChannel) || (chat = MessagesController.getInstance(i).getChat(Long.valueOf(peer.channel_id))) == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (z) {
            return new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? channelSpan() : groupSpan()).append((CharSequence) " ").append((CharSequence) chat.title);
        }
        return chat.title;
    }

    public static CharSequence peerNameWithIcon(int i, long j) {
        return peerNameWithIcon(i, j, false);
    }

    public static CharSequence peerNameWithIcon(int i, long j, boolean z) {
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            if (user != null) {
                return AndroidUtilities.removeDiacritics(UserObject.getUserName(user));
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
        if (chat != null) {
            return new SpannableStringBuilder(ChatObject.isChannelAndNotMegaGroup(chat) ? channelSpan() : groupSpan()).append((CharSequence) " ").append((CharSequence) AndroidUtilities.removeDiacritics(chat.title));
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public CharSequence getReplyQuoteNameWithIcon() {
        CharSequence charSequencePeerNameWithIcon;
        CharSequence spannableStringBuilder;
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
        CharSequence charSequencePeerNameWithIcon2 = null;
        if (messageReplyHeader == null) {
            boolean zIsChatDialog = DialogObject.isChatDialog(getDialogId());
            int i = this.currentAccount;
            if (zIsChatDialog) {
                charSequencePeerNameWithIcon = peerNameWithIcon(i, getDialogId());
            } else {
                spannableStringBuilder = peerNameWithIcon(i, getDialogId());
                charSequencePeerNameWithIcon2 = spannableStringBuilder;
                charSequencePeerNameWithIcon = null;
            }
        } else if (messageReplyHeader.reply_from == null) {
            charSequencePeerNameWithIcon = null;
        } else {
            TLRPC.Peer peer = messageReplyHeader.reply_to_peer_id;
            boolean z = peer == null || DialogObject.getPeerDialogId(peer) != getDialogId();
            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.reply_to.reply_from;
            TLRPC.Peer peer2 = messageFwdHeader.from_id;
            if (peer2 != null) {
                boolean z2 = peer2 instanceof TLRPC.TL_peerUser;
                int i2 = this.currentAccount;
                if (z2) {
                    spannableStringBuilder = peerNameWithIcon(i2, peer2, z);
                    charSequencePeerNameWithIcon2 = spannableStringBuilder;
                    charSequencePeerNameWithIcon = null;
                } else {
                    charSequencePeerNameWithIcon = peerNameWithIcon(i2, peer2, z);
                }
            } else {
                TLRPC.Peer peer3 = messageFwdHeader.saved_from_peer;
                if (peer3 != null) {
                    boolean z3 = peer3 instanceof TLRPC.TL_peerUser;
                    int i3 = this.currentAccount;
                    if (z3) {
                        spannableStringBuilder = peerNameWithIcon(i3, peer3, z);
                    } else {
                        charSequencePeerNameWithIcon = peerNameWithIcon(i3, peer3, z);
                    }
                } else {
                    if (!TextUtils.isEmpty(messageFwdHeader.from_name)) {
                        if (z) {
                            spannableStringBuilder = new SpannableStringBuilder(userSpan()).append((CharSequence) " ").append((CharSequence) this.messageOwner.reply_to.reply_from.from_name);
                        } else {
                            spannableStringBuilder = new SpannableStringBuilder(this.messageOwner.reply_to.reply_from.from_name);
                        }
                    }
                    charSequencePeerNameWithIcon = null;
                }
                charSequencePeerNameWithIcon2 = spannableStringBuilder;
                charSequencePeerNameWithIcon = null;
            }
        }
        TLRPC.Peer peer4 = this.messageOwner.reply_to.reply_to_peer_id;
        if (peer4 != null && DialogObject.getPeerDialogId(peer4) != getDialogId()) {
            TLRPC.Peer peer5 = this.messageOwner.reply_to.reply_to_peer_id;
            boolean z4 = peer5 instanceof TLRPC.TL_peerUser;
            int i4 = this.currentAccount;
            if (z4) {
                charSequencePeerNameWithIcon2 = peerNameWithIcon(i4, peer5, true);
            } else {
                charSequencePeerNameWithIcon = peerNameWithIcon(i4, peer5);
            }
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            if (messageObject.messageOwner instanceof TLRPC.TL_messageEmpty) {
                charSequencePeerNameWithIcon2 = new SpannableStringBuilder(userSpan()).append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2807R.string.StarsTransactionUnknown));
            } else if (DialogObject.isChatDialog(messageObject.getSenderId())) {
                if (charSequencePeerNameWithIcon == null) {
                    charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, this.replyMessageObject.getSenderId());
                }
            } else if (charSequencePeerNameWithIcon2 == null) {
                MessageObject messageObject2 = this.replyMessageObject;
                if (messageObject2.messageOwner.fwd_from != null) {
                    charSequencePeerNameWithIcon2 = messageObject2.getForwardedName();
                } else {
                    charSequencePeerNameWithIcon2 = peerNameWithIcon(this.currentAccount, messageObject2.getSenderId());
                }
            }
        }
        if (charSequencePeerNameWithIcon == null || charSequencePeerNameWithIcon2 == null) {
            return charSequencePeerNameWithIcon != null ? charSequencePeerNameWithIcon : charSequencePeerNameWithIcon2 != null ? charSequencePeerNameWithIcon2 : LocaleController.getString(C2807R.string.Loading);
        }
        return new SpannableStringBuilder(charSequencePeerNameWithIcon2).append((CharSequence) " ").append(charSequencePeerNameWithIcon);
    }

    public boolean hasLinkMediaToMakeSmall() {
        boolean z = !this.isRestrictedMessage && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage);
        TLRPC.WebPage webPage = z ? getMedia(this.messageOwner).webpage : null;
        String str = webPage != null ? webPage.type : null;
        return z && !isGiveawayOrGiveawayResults() && webPage != null && (webPage.photo != null || isVideoDocument(webPage.document)) && !((TextUtils.isEmpty(webPage.description) && TextUtils.isEmpty(webPage.title)) || isSponsored() || "telegram_megagroup".equals(str) || "telegram_background".equals(str) || "telegram_voicechat".equals(str) || "telegram_videochat".equals(str) || "telegram_livestream".equals(str) || "telegram_user".equals(str) || "telegram_story".equals(str) || "telegram_channel_boost".equals(str) || "telegram_group_boost".equals(str) || "telegram_chat".equals(str));
    }

    public boolean isLinkMediaSmall() {
        TLRPC.WebPage webPage = (!this.isRestrictedMessage && (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) ? getMedia(this.messageOwner).webpage : null;
        String str = webPage != null ? webPage.type : null;
        if (webPage != null && TextUtils.isEmpty(webPage.description) && TextUtils.isEmpty(webPage.title)) {
            return false;
        }
        return Common.ASSET_APP.equals(str) || "profile".equals(str) || "article".equals(str) || "telegram_bot".equals(str) || "telegram_user".equals(str) || "telegram_channel".equals(str) || "telegram_megagroup".equals(str) || "telegram_voicechat".equals(str) || "telegram_videochat".equals(str) || "telegram_livestream".equals(str) || "telegram_channel_boost".equals(str) || "telegram_group_boost".equals(str) || "telegram_chat".equals(str);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class TextRange {
        public boolean code;
        public boolean collapse;
        public int end;
        public String language;
        public boolean quote;
        public int start;

        public TextRange(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public TextRange(int i, int i2, boolean z, boolean z2, boolean z3, String str) {
            this.start = i;
            this.end = i2;
            this.quote = z;
            this.code = z2;
            this.collapse = z && z3;
            this.language = str;
        }
    }

    public static void cutIntoRanges(CharSequence charSequence, ArrayList<TextRange> arrayList) {
        String str;
        int i;
        if (charSequence == null) {
            return;
        }
        if (!(charSequence instanceof Spanned)) {
            arrayList.add(new TextRange(0, charSequence.length()));
            return;
        }
        TreeSet<Integer> treeSet = new TreeSet();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        Spanned spanned = (Spanned) charSequence;
        QuoteSpan.QuoteStyleSpan[] quoteStyleSpanArr = (QuoteSpan.QuoteStyleSpan[]) spanned.getSpans(0, spanned.length(), QuoteSpan.QuoteStyleSpan.class);
        int i2 = 0;
        while (true) {
            if (i2 >= quoteStyleSpanArr.length) {
                break;
            }
            QuoteSpan.QuoteStyleSpan quoteStyleSpan = quoteStyleSpanArr[i2];
            quoteStyleSpan.span.adaptLineHeight = false;
            int spanStart = spanned.getSpanStart(quoteStyleSpan);
            int spanEnd = spanned.getSpanEnd(quoteStyleSpanArr[i2]);
            boolean z = quoteStyleSpanArr[i2].span.isCollapsing;
            treeSet.add(Integer.valueOf(spanStart));
            map.put(Integer.valueOf(spanStart), Integer.valueOf((z ? 16 : 1) | (map.containsKey(Integer.valueOf(spanStart)) ? ((Integer) map.get(Integer.valueOf(spanStart))).intValue() : 0)));
            map2.put(Integer.valueOf(spanStart), Boolean.valueOf(z));
            treeSet.add(Integer.valueOf(spanEnd));
            map.put(Integer.valueOf(spanEnd), Integer.valueOf((map.containsKey(Integer.valueOf(spanEnd)) ? ((Integer) map.get(Integer.valueOf(spanEnd))).intValue() : 0) | 2));
            map3.put(Integer.valueOf(spanEnd), Boolean.valueOf(z));
            i2++;
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            if (iIntValue >= 0 && iIntValue < spanned.length() && map.containsKey(num)) {
                int iIntValue2 = ((Integer) map.get(num)).intValue();
                if ((iIntValue2 & 17) != 0 && (iIntValue2 & 2) != 0 && spanned.charAt(iIntValue) != '\n' && (iIntValue - 1 <= 0 || spanned.charAt(i) != '\n')) {
                    if (Objects.equals(map2.get(num), map3.get(num))) {
                        it.remove();
                        map.remove(num);
                    }
                }
            }
        }
        CodeHighlighting.Span[] spanArr = (CodeHighlighting.Span[]) spanned.getSpans(0, spanned.length(), CodeHighlighting.Span.class);
        for (int i3 = 0; i3 < spanArr.length; i3++) {
            int spanStart2 = spanned.getSpanStart(spanArr[i3]);
            int spanEnd2 = spanned.getSpanEnd(spanArr[i3]);
            treeSet.add(Integer.valueOf(spanStart2));
            map.put(Integer.valueOf(spanStart2), Integer.valueOf((map.containsKey(Integer.valueOf(spanStart2)) ? ((Integer) map.get(Integer.valueOf(spanStart2))).intValue() : 0) | 4));
            treeSet.add(Integer.valueOf(spanEnd2));
            map.put(Integer.valueOf(spanEnd2), Integer.valueOf((map.containsKey(Integer.valueOf(spanEnd2)) ? ((Integer) map.get(Integer.valueOf(spanEnd2))).intValue() : 0) | 8));
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        boolean z2 = false;
        for (Integer num2 : treeSet) {
            int iIntValue3 = num2.intValue();
            int iIntValue4 = ((Integer) map.get(num2)).intValue();
            if (i7 != iIntValue3) {
                int i8 = iIntValue3 - 1;
                if (i8 >= 0 && i8 < charSequence.length() && charSequence.charAt(i8) == '\n') {
                    iIntValue3--;
                }
                int i9 = iIntValue3;
                if ((iIntValue4 & 8) == 0 || i6 >= spanArr.length) {
                    str = null;
                } else {
                    str = spanArr[i6].lng;
                    i6++;
                }
                arrayList.add(new TextRange(i7, i9, i4 > 0, i5 > 0, z2, str));
                i7 = i9 + 1;
                if (i7 >= charSequence.length() || charSequence.charAt(i9) != '\n') {
                    i7 = i9;
                }
            }
            if ((iIntValue4 & 2) != 0) {
                i4--;
            }
            if ((iIntValue4 & 1) != 0 || (iIntValue4 & 16) != 0) {
                i4++;
                z2 = (iIntValue4 & 16) != 0;
            }
            if ((iIntValue4 & 8) != 0) {
                i5--;
            }
            if ((iIntValue4 & 4) != 0) {
                i5++;
            }
        }
        if (i7 < charSequence.length()) {
            arrayList.add(new TextRange(i7, charSequence.length(), i4 > 0, i5 > 0, z2, null));
        }
    }

    public void toggleChannelRecommendations() {
        expandChannelRecommendations(!this.channelJoinedExpanded);
    }

    public void expandChannelRecommendations(boolean z) {
        SharedPreferences.Editor editorEdit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        String str = "c" + getDialogId() + "_rec";
        this.channelJoinedExpanded = z;
        editorEdit.putBoolean(str, z).apply();
    }

    public static int findQuoteStart(String str, String str2, int i) {
        if (str == null || str2 == null) {
            return -1;
        }
        if (i == -1) {
            return str.indexOf(str2);
        }
        if (str2.length() + i < str.length() && str.startsWith(str2, i)) {
            return i;
        }
        int iIndexOf = str.indexOf(str2, i);
        int iLastIndexOf = str.lastIndexOf(str2, i);
        return (iIndexOf != -1 && (iLastIndexOf == -1 || iIndexOf - i < i - iLastIndexOf)) ? iIndexOf : iLastIndexOf;
    }

    public void applyQuickReply(String str, int i) {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return;
        }
        if (i != 0) {
            message.flags |= TLObject.FLAG_30;
            message.quick_reply_shortcut_id = i;
            TLRPC.TL_inputQuickReplyShortcutId tL_inputQuickReplyShortcutId = new TLRPC.TL_inputQuickReplyShortcutId();
            tL_inputQuickReplyShortcutId.shortcut_id = i;
            this.messageOwner.quick_reply_shortcut = tL_inputQuickReplyShortcutId;
            return;
        }
        if (str != null) {
            TLRPC.TL_inputQuickReplyShortcut tL_inputQuickReplyShortcut = new TLRPC.TL_inputQuickReplyShortcut();
            tL_inputQuickReplyShortcut.shortcut = str;
            this.messageOwner.quick_reply_shortcut = tL_inputQuickReplyShortcut;
        } else {
            message.flags &= -1073741825;
            message.quick_reply_shortcut_id = 0;
            message.quick_reply_shortcut = null;
        }
    }

    public static int getQuickReplyId(TLRPC.Message message) {
        if (message == null) {
            return 0;
        }
        if ((message.flags & TLObject.FLAG_30) != 0) {
            return message.quick_reply_shortcut_id;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcutId) {
            return ((TLRPC.TL_inputQuickReplyShortcutId) inputQuickReplyShortcut).shortcut_id;
        }
        return 0;
    }

    public static int getQuickReplyId(int i, TLRPC.Message message) {
        QuickRepliesController.QuickReply quickReplyFindReply;
        if (message == null) {
            return 0;
        }
        if ((message.flags & TLObject.FLAG_30) != 0) {
            return message.quick_reply_shortcut_id;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcutId) {
            return ((TLRPC.TL_inputQuickReplyShortcutId) inputQuickReplyShortcut).shortcut_id;
        }
        String quickReplyName = getQuickReplyName(message);
        if (quickReplyName == null || (quickReplyFindReply = QuickRepliesController.getInstance(i).findReply(quickReplyName)) == null) {
            return 0;
        }
        return quickReplyFindReply.id;
    }

    public int getQuickReplyId() {
        return getQuickReplyId(this.messageOwner);
    }

    public static String getQuickReplyName(TLRPC.Message message) {
        if (message == null) {
            return null;
        }
        TLRPC.InputQuickReplyShortcut inputQuickReplyShortcut = message.quick_reply_shortcut;
        if (inputQuickReplyShortcut instanceof TLRPC.TL_inputQuickReplyShortcut) {
            return ((TLRPC.TL_inputQuickReplyShortcut) inputQuickReplyShortcut).shortcut;
        }
        return null;
    }

    public String getQuickReplyName() {
        return getQuickReplyName(this.messageOwner);
    }

    public String getQuickReplyDisplayName() {
        String quickReplyName = getQuickReplyName();
        if (quickReplyName != null) {
            return quickReplyName;
        }
        QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(this.currentAccount).findReply(getQuickReplyId());
        if (quickReplyFindReply != null) {
            return quickReplyFindReply.name;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static boolean isQuickReply(TLRPC.Message message) {
        if (message != null) {
            return ((message.flags & TLObject.FLAG_30) == 0 && message.quick_reply_shortcut == null) ? false : true;
        }
        return false;
    }

    public boolean isQuickReply() {
        return isQuickReply(this.messageOwner);
    }

    public TLRPC.TL_availableEffect getEffect() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || (message.flags2 & 4) == 0) {
            return null;
        }
        return MessagesController.getInstance(this.currentAccount).getEffect(this.messageOwner.effect);
    }

    public long getEffectId() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || (message.flags2 & 4) == 0) {
            return 0L;
        }
        return message.effect;
    }

    public TLRPC.TL_factCheck getFactCheck() {
        return FactCheckController.getInstance(this.currentAccount).getFactCheck(this);
    }

    public CharSequence getFactCheckText() {
        if (!isFactCheckable()) {
            return null;
        }
        TLRPC.TL_factCheck factCheck = getFactCheck();
        if (factCheck == null || factCheck.text == null) {
            this.factCheckText = null;
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(factCheck.text.text);
        addEntitiesToText(spannableStringBuilder, factCheck.text.entities, isOutOwner(), false, false, false);
        this.factCheckText = spannableStringBuilder;
        return spannableStringBuilder;
    }

    public boolean isFactCheckable() {
        if (getId() < 0 || isSponsored()) {
            return false;
        }
        int i = this.type;
        return i == 0 || i == 2 || i == 1 || i == 3 || i == 8 || i == 9;
    }

    public boolean hasEntitiesFromServer() {
        TLRPC.Message message = this.messageOwner;
        if (message == null || message.entities == null) {
            return false;
        }
        for (int i = 0; i < this.messageOwner.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = this.messageOwner.entities.get(i);
            if ((messageEntity instanceof TLRPC.TL_messageEntityPhone) || (messageEntity instanceof TLRPC.TL_messageEntityBankCard) || (messageEntity instanceof TLRPC.TL_messageEntityTonAddress)) {
                return true;
            }
        }
        return false;
    }

    public boolean isAlbumSingle() {
        return getMedia(this) instanceof TLRPC.TL_messageMediaPaidMedia;
    }

    public boolean hasVideoQualities() {
        return hasVideoQualities(true);
    }

    public boolean hasVideoQualities(boolean z) {
        TLRPC.MessageMedia messageMedia;
        if (this.videoQualitiesCached == null) {
            try {
                TLRPC.Message message = this.messageOwner;
                boolean z2 = false;
                if (message != null && (messageMedia = message.media) != null && messageMedia.document != null && !messageMedia.alt_documents.isEmpty()) {
                    int i = this.currentAccount;
                    TLRPC.Message message2 = this.messageOwner;
                    ArrayList<VideoPlayer.Quality> qualities = VideoPlayer.getQualities(i, message2 != null ? message2.media : null, z);
                    this.videoQualities = qualities;
                    if (qualities != null && qualities.size() > 1) {
                        z2 = true;
                    }
                    this.videoQualitiesCached = Boolean.valueOf(z2);
                    this.highestQuality = VideoPlayer.getQualityForPlayer(this.videoQualities);
                    this.thumbQuality = VideoPlayer.getQualityForThumb(this.videoQualities);
                    this.cachedQuality = VideoPlayer.getCachedQuality(this.videoQualities);
                }
                this.videoQualitiesCached = Boolean.FALSE;
                return false;
            } catch (Exception e) {
                FileLog.m1040e(e);
                this.videoQualitiesCached = Boolean.FALSE;
            }
        }
        return this.videoQualitiesCached.booleanValue();
    }

    public boolean isStarGiftAction() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return false;
        }
        TLRPC.MessageAction messageAction = message.action;
        return (messageAction instanceof TLRPC.TL_messageActionStarGift) || (messageAction instanceof TLRPC.TL_messageActionStarGiftUnique);
    }

    public boolean mediaExists() {
        VideoPlayer.VideoUri videoUri;
        if (hasVideoQualities() && (videoUri = this.highestQuality) != null) {
            return videoUri.isCached();
        }
        return this.mediaExists;
    }

    public void updateQualitiesCached(boolean z) {
        ArrayList<VideoPlayer.Quality> arrayList = this.videoQualities;
        if (arrayList == null) {
            this.cachedQuality = null;
            hasVideoQualities(z);
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            VideoPlayer.Quality quality = arrayList.get(i);
            i++;
            ArrayList<VideoPlayer.VideoUri> arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                VideoPlayer.VideoUri videoUri = arrayList2.get(i2);
                i2++;
                videoUri.updateCached(z);
            }
        }
        this.highestQuality = VideoPlayer.getQualityForPlayer(this.videoQualities);
        this.thumbQuality = VideoPlayer.getQualityForThumb(this.videoQualities);
        this.cachedQuality = VideoPlayer.getCachedQuality(this.videoQualities);
    }

    public boolean areTags() {
        TLRPC.TL_messageReactions tL_messageReactions;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null) {
            return false;
        }
        return tL_messageReactions.reactions_as_tags;
    }

    public int getVideoStartsTimestamp() {
        String str;
        Integer num = this.cachedStartsTimestamp;
        if (num != null) {
            return num.intValue();
        }
        if (!isVideo()) {
            this.cachedStartsTimestamp = -1;
            return -1;
        }
        TLRPC.MessageMedia media = getMedia(this);
        int i = media.video_timestamp;
        if (i != 0) {
            return i;
        }
        TLRPC.WebPage webPage = media.webpage;
        if (webPage != null && (str = webPage.url) != null) {
            try {
                int timestampFromLink = LaunchActivity.getTimestampFromLink(Uri.parse(str));
                this.cachedStartsTimestamp = Integer.valueOf(timestampFromLink);
                return timestampFromLink;
            } catch (Exception unused) {
            }
        }
        this.cachedStartsTimestamp = -1;
        return -1;
    }

    public float getVideoSavedProgress() {
        if (this.cachedSavedTimestamp != null) {
            return PhotoViewer.getSavedProgressFast(this);
        }
        float savedProgress = PhotoViewer.getSavedProgress(this);
        this.cachedSavedTimestamp = Float.valueOf(savedProgress);
        return savedProgress;
    }

    public TLRPC.Photo getVideoCover() {
        TLRPC.WebPage webPage;
        TLRPC.MessageMedia media = getMedia(this);
        if (media instanceof TLRPC.TL_messageMediaDocument) {
            return ((TLRPC.TL_messageMediaDocument) media).video_cover;
        }
        if (media == null || (webPage = media.webpage) == null || !webPage.video_cover_photo) {
            return null;
        }
        return webPage.photo;
    }

    public boolean hasVideoCover() {
        return getVideoCover() != null;
    }

    public boolean isPaid() {
        TLRPC.Message message = this.messageOwner;
        return message != null && message.paid_message_stars > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CharSequence getActionSuggestionApprovalText(String str, String str2) {
        TLRPC.TL_messageActionSuggestedPostApproval tL_messageActionSuggestedPostApproval;
        int i;
        String string;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        TLRPC.Message message;
        TLRPC.Message message2 = this.messageOwner;
        if (message2 != null) {
            TLRPC.MessageAction messageAction = message2.action;
            tL_messageActionSuggestedPostApproval = messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval ? (TLRPC.TL_messageActionSuggestedPostApproval) messageAction : null;
        }
        if (tL_messageActionSuggestedPostApproval == null) {
            return null;
        }
        MessageSuggestionParams messageSuggestionParamsOf = MessageSuggestionParams.of(tL_messageActionSuggestedPostApproval);
        boolean zCanManageMonoForum = ChatObject.canManageMonoForum(this.currentAccount, DialogObject.getPeerDialogId(this.messageOwner.peer_id));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (tL_messageActionSuggestedPostApproval.balance_too_low) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SuggestionAgreementNotEnoughStars, str2)));
            return spannableStringBuilder;
        }
        if (tL_messageActionSuggestedPostApproval.rejected) {
            MessageObject messageObject = this.replyMessageObject;
            if (messageObject == null || (message = messageObject.messageOwner) == null) {
                z = true;
            } else {
                long peerDialogId = DialogObject.getPeerDialogId(message.from_id);
                z = peerDialogId == DialogObject.getPeerDialogId(this.replyMessageObject.messageOwner.saved_peer_id);
                if (peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    z = true;
                }
            }
            if (TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                i5 = z ? C2807R.string.SuggestionAgreementDeclinedYou : C2807R.string.SuggestionAgreementDeclinedThis;
            } else {
                i5 = z ? C2807R.string.SuggestionAgreementDeclinedYouComment : C2807R.string.SuggestionAgreementDeclinedThisComment;
            }
            if (!z) {
                str = str2;
            }
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i5, str)));
            if (!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.8f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append(Typography.quote);
                spannableStringBuilder.append((CharSequence) tL_messageActionSuggestedPostApproval.reject_comment);
                spannableStringBuilder.append(Typography.quote);
                spannableStringBuilder.setSpan(new EllipsizeSpanAnimator.TextAlphaSpan(Opcodes.RSUB_INT_LIT8), length, spannableStringBuilder.length(), 33);
                return spannableStringBuilder;
            }
        } else {
            int i6 = (int) MessagesController.getInstance(this.currentAccount).config.starsSuggestedPostAgeMin.get(TimeUnit.HOURS);
            int i7 = tL_messageActionSuggestedPostApproval.schedule_date;
            if (i7 > 0) {
                String dateTime = LocaleController.formatDateTime(i7, true);
                if (tL_messageActionSuggestedPostApproval.schedule_date > ConnectionsManager.getInstance(this.currentAccount).getCurrentTime()) {
                    if (zCanManageMonoForum) {
                        i4 = C2807R.string.SuggestionAgreementReachedAdmin1;
                    } else {
                        i4 = C2807R.string.SuggestionAgreementReachedUser1;
                    }
                } else if (zCanManageMonoForum) {
                    i4 = C2807R.string.SuggestionAgreementReachedAdmin1PastSimple;
                } else {
                    i4 = C2807R.string.SuggestionAgreementReachedUser1PastSimple;
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i4, str, dateTime)));
            } else {
                if (zCanManageMonoForum) {
                    i = C2807R.string.SuggestionAgreementReachedAdmin1PresentPerfect;
                } else {
                    i = C2807R.string.SuggestionAgreementReachedUser1PresentPerfect;
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i, str)));
            }
            AmountUtils$Amount amountUtils$Amount = messageSuggestionParamsOf.amount;
            if (amountUtils$Amount != null && !amountUtils$Amount.isZero()) {
                AmountUtils$Amount amountUtils$Amount2 = messageSuggestionParamsOf.amount;
                AmountUtils$Currency amountUtils$Currency = amountUtils$Amount2.currency;
                AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
                boolean z2 = amountUtils$Currency == amountUtils$Currency2;
                if (zCanManageMonoForum) {
                    string = LocaleController.formatString(C2807R.string.SuggestionAgreementReachedAdmin2, str2, amountUtils$Amount2.asDecimalString());
                } else {
                    string = LocaleController.formatString(C2807R.string.SuggestionAgreementReachedUser2, amountUtils$Amount2.asDecimalString());
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) StarsIntroActivity.replaceStars(messageSuggestionParamsOf.amount.currency == amountUtils$Currency2, AndroidUtilities.replaceTags(string)));
                if (z2) {
                    if (zCanManageMonoForum) {
                        i2 = C2807R.string.SuggestionAgreementReachedAdmin3TON;
                    } else {
                        i2 = C2807R.string.SuggestionAgreementReachedUser3TON;
                    }
                } else if (zCanManageMonoForum) {
                    i2 = C2807R.string.SuggestionAgreementReachedAdmin3Stars;
                } else {
                    i2 = C2807R.string.SuggestionAgreementReachedUser3Stars;
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i2, str, Integer.valueOf(i6))));
                if (z2) {
                    if (zCanManageMonoForum) {
                        i3 = C2807R.string.SuggestionAgreementReachedAdmin4TON;
                    } else {
                        i3 = C2807R.string.SuggestionAgreementReachedUser4TON;
                    }
                } else if (zCanManageMonoForum) {
                    i3 = C2807R.string.SuggestionAgreementReachedAdmin4Stars;
                } else {
                    i3 = C2807R.string.SuggestionAgreementReachedUser4Stars;
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i3, str, Integer.valueOf(i6))));
            }
        }
        return spannableStringBuilder;
    }

    public static TLRPC.PollAnswer findPollItem(MessageObject messageObject, byte[] bArr) {
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
        TLRPC.Poll poll;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if ((media instanceof TLRPC.TL_messageMediaPoll) && (poll = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).poll) != null && poll.answers != null) {
            for (int i = 0; i < tL_messageMediaPoll.poll.answers.size(); i++) {
                TLRPC.PollAnswer pollAnswer = tL_messageMediaPoll.poll.answers.get(i);
                if (Arrays.equals(pollAnswer.option, bArr)) {
                    return pollAnswer;
                }
            }
        }
        return null;
    }

    public static TLRPC.TodoItem findTodoItem(MessageObject messageObject, int i) {
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo;
        TLRPC.TodoList todoList;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if ((media instanceof TLRPC.TL_messageMediaToDo) && (todoList = (tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media).todo) != null && todoList.list != null) {
            for (int i2 = 0; i2 < tL_messageMediaToDo.todo.list.size(); i2++) {
                TLRPC.TodoItem todoItem = tL_messageMediaToDo.todo.list.get(i2);
                if (todoItem.id == i) {
                    return todoItem;
                }
            }
        }
        return null;
    }

    public static boolean isCompleted(MessageObject messageObject, int i) {
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo;
        TLRPC.TodoList todoList;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if (!(media instanceof TLRPC.TL_messageMediaToDo) || (todoList = (tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media).todo) == null || todoList.list == null) {
            return false;
        }
        return isCompleted(tL_messageMediaToDo, i);
    }

    public static boolean isCompleted(TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i) {
        for (int i2 = 0; i2 < tL_messageMediaToDo.completions.size(); i2++) {
            if (tL_messageMediaToDo.completions.get(i2).id == i) {
                return true;
            }
        }
        return false;
    }

    public static void toggleTodo(int i, long j, TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i2, boolean z, int i3) {
        int i4 = 0;
        while (i4 < tL_messageMediaToDo.completions.size()) {
            if (tL_messageMediaToDo.completions.get(i4).id == i2) {
                tL_messageMediaToDo.completions.remove(i4);
                if (tL_messageMediaToDo.completions.isEmpty()) {
                    tL_messageMediaToDo.flags &= -2;
                }
                i4--;
            }
            i4++;
        }
        if (z) {
            TLRPC.TL_todoCompletion tL_todoCompletion = new TLRPC.TL_todoCompletion();
            tL_todoCompletion.id = i2;
            tL_todoCompletion.completed_by = MessagesController.getInstance(i).getPeer(j);
            tL_todoCompletion.date = i3;
            tL_messageMediaToDo.flags |= 1;
            tL_messageMediaToDo.completions.add(tL_todoCompletion);
        }
    }

    public long getPollHash() {
        TLRPC.Message message = this.messageOwner;
        if (message != null && this.type == 17) {
            TLRPC.MessageMedia media = getMedia(message);
            if (media instanceof TLRPC.TL_messageMediaPoll) {
                return ((TLRPC.TL_messageMediaPoll) media).poll.hash;
            }
        }
        return 0L;
    }

    public boolean isPaidSuggestedPost() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            return message.paid_suggested_post_stars || message.paid_suggested_post_ton;
        }
        return false;
    }

    public boolean isPaidSuggestedPostProtected() {
        if (isPaidSuggestedPost()) {
            return ((long) (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - this.messageOwner.date)) < MessagesController.getInstance(this.currentAccount).config.starsSuggestedPostAgeMin.get(TimeUnit.SECONDS);
        }
        return false;
    }

    public MessageSuggestionParams obtainSuggestionOffer() {
        TLRPC.Message message = this.messageOwner;
        if (message == null) {
            return null;
        }
        TLRPC.SuggestedPost suggestedPost = message.suggested_post;
        if (suggestedPost != null) {
            return MessageSuggestionParams.of(suggestedPost);
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
            return MessageSuggestionParams.of((TLRPC.TL_messageActionSuggestedPostApproval) messageAction);
        }
        return null;
    }

    public MessageSuggestionParams obtainSuggestionOfferFromReply() {
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            return messageObject.obtainSuggestionOffer();
        }
        return null;
    }

    public boolean isEditedSuggestionOffer() {
        TLRPC.Message message;
        MessageObject messageObject = this.replyMessageObject;
        return (messageObject == null || messageObject.messageOwner == null || (message = this.messageOwner) == null || message.suggested_post == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getEditedSuggestionFlags() {
        TLRPC.SuggestedPost suggestedPost;
        TLRPC.SuggestedPost suggestedPost2;
        TLRPC.Document document;
        TLRPC.Photo photo;
        MessageObject messageObject = this.replyMessageObject;
        TLRPC.Message message = messageObject != null ? messageObject.messageOwner : null;
        TLRPC.Message message2 = this.messageOwner;
        if (message == null || (suggestedPost = message.suggested_post) == null || message2 == null || (suggestedPost2 = message2.suggested_post) == null) {
            return 0;
        }
        int i = !AmountUtils$Amount.equals(suggestedPost.price, suggestedPost2.price) ? 1 : 0;
        if (suggestedPost.schedule_date != suggestedPost2.schedule_date) {
            i |= 2;
        }
        if (!TextUtils.equals(this.messageText, this.replyMessageObject.messageText)) {
            i |= 4;
        }
        if (!TextUtils.equals(this.caption, this.replyMessageObject.caption)) {
            i |= 4;
        }
        TLRPC.MessageMedia messageMedia = message.media;
        TLRPC.MessageMedia messageMedia2 = message2.media;
        if (messageMedia instanceof TLRPC.TL_messageMediaEmpty) {
            messageMedia = null;
        }
        TLRPC.MessageMedia messageMedia3 = messageMedia2 instanceof TLRPC.TL_messageMediaEmpty ? null : messageMedia2;
        if (messageMedia == null || messageMedia3 == null) {
            return (messageMedia == null) != (messageMedia3 == null) ? i | 8 : i;
        }
        if (messageMedia.getClass() != messageMedia3.getClass()) {
            return i | 8;
        }
        TLRPC.Photo photo2 = messageMedia.photo;
        if (photo2 == null || (photo = messageMedia3.photo) == null) {
            if ((photo2 == null) != (messageMedia3.photo == null)) {
                i |= 8;
            }
        } else if (photo2.id != photo.id) {
        }
        TLRPC.Document document2 = messageMedia.document;
        if (document2 == null || (document = messageMedia3.document) == null) {
            if ((document2 == null) != (messageMedia3.document == null)) {
                return i | 8;
            }
        } else if (document2.id != document.id) {
            return i | 8;
        }
        return i;
    }

    public CharSequence getMessageTextToTranslate(GroupedMessages groupedMessages, int[] iArr) {
        if (this.translated || this.isRestrictedMessage) {
            return null;
        }
        if (this.summarized) {
            return this.messageText;
        }
        int i = this.type;
        if (i == 19 || i == 15 || i == 13) {
            return null;
        }
        CharSequence messageCaption = ChatActivity.getMessageCaption(this, groupedMessages, iArr);
        if (messageCaption == null && isPoll()) {
            try {
                TLRPC.Poll poll = ((TLRPC.TL_messageMediaPoll) this.messageOwner.media).poll;
                StringBuilder sb = new StringBuilder(poll.question.text);
                sb.append("\n");
                ArrayList<TLRPC.PollAnswer> arrayList = poll.answers;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.PollAnswer pollAnswer = arrayList.get(i2);
                    i2++;
                    sb.append("\n🔘 ");
                    TLRPC.TL_textWithEntities tL_textWithEntities = pollAnswer.text;
                    sb.append(tL_textWithEntities == null ? _UrlKt.FRAGMENT_ENCODE_SET : tL_textWithEntities.text);
                }
                messageCaption = sb.toString();
            } catch (Exception unused) {
            }
        }
        if (messageCaption == null && isMediaEmpty(this.messageOwner)) {
            messageCaption = ChatActivity.getMessageContent(this, 0L, false);
        }
        if (messageCaption == null || !Emoji.fullyConsistsOfEmojis(messageCaption)) {
            return messageCaption;
        }
        return null;
    }

    public boolean isEphemeral() {
        return isEphemeral(this.messageOwner);
    }

    public boolean isWelcomeMessage() {
        return isWelcomeMessage(this.messageOwner);
    }

    public boolean isWelcomeAnchored() {
        return isWelcomeAnchored(this.messageOwner);
    }

    public boolean isEphemeralAndNotWelcome() {
        return isEphemeralAndNotWelcome(this.messageOwner);
    }

    public int getEphemeralId() {
        if (isEphemeral()) {
            return ephemeralMessageIdUnpack(this.messageOwner.id);
        }
        return 0;
    }

    public long getEphemeralReceiverBotId() {
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            return message.ephemeralReceiverBotId;
        }
        return 0L;
    }

    public static boolean isWelcomeMessage(TLRPC.Message message) {
        if (isEphemeral(message)) {
            return message.ephemeralReceiverBotId == -1 || message.ephemeralAnchorMsgId != 0;
        }
        return false;
    }

    public static boolean isWelcomeAnchored(TLRPC.Message message) {
        return isEphemeral(message) && message.ephemeralAnchorMsgId != 0;
    }

    public static boolean isEphemeralAndNotWelcome(TLRPC.Message message) {
        return isEphemeral(message) && !isWelcomeMessage(message);
    }

    public static boolean isEphemeral(TLRPC.Message message) {
        if (message != null) {
            return isEphemeralMessageId(message.id) || message.ephemeralReceiverBotId != 0;
        }
        return false;
    }

    public static int ephemeralMessageIdUnpack(int i) {
        return isEphemeralMessageId(i) ? i & (-1879048193) : i;
    }

    public boolean needResendWhenEdit() {
        return (!ChatObject.isMonoForum(this.currentAccount, getDialogId()) || getFromChatId() == UserConfig.getInstance(this.currentAccount).getClientUserId() || isOutOwner()) ? false : true;
    }

    public static int getCompletionsCount(TLRPC.TL_messageMediaToDo tL_messageMediaToDo) {
        TLRPC.TodoList todoList;
        if (tL_messageMediaToDo == null || (todoList = tL_messageMediaToDo.todo) == null || todoList.list == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < tL_messageMediaToDo.completions.size(); i2++) {
            TLRPC.TodoCompletion todoCompletion = tL_messageMediaToDo.completions.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= tL_messageMediaToDo.todo.list.size()) {
                    break;
                }
                if (tL_messageMediaToDo.todo.list.get(i3).id == todoCompletion.id) {
                    i++;
                    break;
                }
                i3++;
            }
        }
        return i;
    }
}
