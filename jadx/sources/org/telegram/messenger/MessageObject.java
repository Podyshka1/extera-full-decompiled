package org.telegram.messenger;

import android.content.SharedPreferences;
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
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.URLSpan;
import android.util.Base64;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import com.android.p003dx.AppDataDirGuesser;
import com.android.p003dx.p006io.Opcodes;
import com.android.p003dx.rop.code.RegisterSpec;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.utils.text.LocaleUtils;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.BufferedReader;
import java.io.File;
import java.io.StringReader;
import java.net.URLEncoder;
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
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.CodeHighlighting;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.EllipsizeSpanAnimator;
import org.telegram.p029ui.Components.FormattedDateSpan;
import org.telegram.p029ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.QuoteSpan;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.Reactions.ReactionsUtils;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.Components.TranscribeButton;
import org.telegram.p029ui.Components.TypefaceSpan;
import org.telegram.p029ui.Components.URLSpanBotCommand;
import org.telegram.p029ui.Components.URLSpanBrowser;
import org.telegram.p029ui.Components.URLSpanMono;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.p029ui.Components.URLSpanNoUnderlineBold;
import org.telegram.p029ui.Components.URLSpanReplacement;
import org.telegram.p029ui.Components.URLSpanUserMention;
import org.telegram.p029ui.Components.VideoPlayer;
import org.telegram.p029ui.Components.WebPlayerView;
import org.telegram.p029ui.Components.spoilers.SpoilerEffect;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PeerColorActivity;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.Stars.StarsIntroActivity;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.web.BotWebViewContainer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes.dex */
public class MessageObject {
    public static final int ENTITIES_ALL = 0;
    public static final int ENTITIES_ONLY_HASHTAGS = 1;
    private static final int LINES_PER_BLOCK = 10;
    private static final int LINES_PER_BLOCK_WITH_EMOJI = 5;
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
    public HashSet<Integer> expandedQuotes;
    public long extendedMediaLastCheckTime;
    public boolean factCheckExpanded;
    private CharSequence factCheckText;
    public boolean flickerLoading;
    public boolean forceAvatar;
    public boolean forceExpired;
    public boolean forcePlayEffect;
    public float forceSeekTo;
    public boolean forceUpdate;
    private float generatedWithDensity;
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
    public CharSequence youtubeDescription;

    /* JADX INFO: loaded from: classes5.dex */
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
        public float f1599x;

        /* JADX INFO: renamed from: y */
        public float f1600y;
    }

    public static void addPhoneLinks(CharSequence charSequence) {
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
            if (((TLRPC.MessagePeerReaction) tL_messageReactions.recent_reactions.get(i)).unread) {
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
                i2 = message.f1686id;
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
                return documentAttribute.f1671w;
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
                return documentAttribute.f1670h;
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
        return (!isWallpaperAction() || (message = this.messageOwner) == null || (messageAction = message.action) == null || messageAction.wallpaper == null || (userFull = MessagesController.getInstance(this.currentAccount).getUserFull(getDialogId())) == null || (wallPaper = userFull.wallpaper) == null || !userFull.wallpaper_overridden || this.messageOwner.action.wallpaper.f1833id != wallPaper.f1833id) ? false : true;
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
                TLRPC.RestrictionReason restrictionReason = (TLRPC.RestrictionReason) this.messageOwner.restriction_reason.get(i);
                if ("sensitive".equals(restrictionReason.reason) && ("all".equals(restrictionReason.platform) || (("android".equals(restrictionReason.platform) && (!BuildVars.isBetaApp() || BuildVars.DEBUG_PRIVATE_VERSION)) || "android-all".equals(restrictionReason.platform)))) {
                    this.isSensitiveCached = Boolean.TRUE;
                    return true;
                }
            }
        }
        if (getDialogId() < 0 && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) != null && chat.restriction_reason != null) {
            for (int i2 = 0; i2 < chat.restriction_reason.size(); i2++) {
                TLRPC.RestrictionReason restrictionReason2 = (TLRPC.RestrictionReason) chat.restriction_reason.get(i2);
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
        ArrayList arrayList;
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || (arrayList = tL_messageReactions.recent_reactions) == null || arrayList.isEmpty()) {
            return null;
        }
        return (TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(0);
    }

    public void markReactionsAsRead() {
        TLRPC.TL_messageReactions tL_messageReactions = this.messageOwner.reactions;
        if (tL_messageReactions == null || tL_messageReactions.recent_reactions == null) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.messageOwner.reactions.recent_reactions.size(); i++) {
            if (((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i)).unread) {
                ((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i)).unread = false;
                z = true;
            }
        }
        if (z) {
            MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            TLRPC.Message message = this.messageOwner;
            messagesStorage.markMessageReactionsAsRead(message.dialog_id, getTopicId(this.currentAccount, message), this.messageOwner.f1686id, true);
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
        ArrayList arrayList2;
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
                TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i2);
                for (int i3 = 0; i3 < messageObject.messageOwner.reactions.results.size(); i3++) {
                    TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) messageObject.messageOwner.reactions.results.get(i3);
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
                if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).chosen) {
                    arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromTL(((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction));
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

    /* JADX INFO: loaded from: classes5.dex */
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
                    FileLog.m1136e(e);
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

    public static class TextLayoutBlock {
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

        public int heightCollapsed() {
            return this.quoteCollapse ? this.collapsedHeight : this.height;
        }

        public int height() {
            return (this.quoteCollapse && collapsed()) ? this.collapsedHeight : this.height;
        }

        public int height(ChatMessageCell.TransitionParams transitionParams) {
            if (!this.quoteCollapse) {
                return this.height;
            }
            return AndroidUtilities.lerp(this.height, this.collapsedHeight, collapsed(transitionParams));
        }

        public float collapsed(ChatMessageCell.TransitionParams transitionParams) {
            boolean zCollapsed;
            if (transitionParams.animateExpandedQuotes) {
                HashSet hashSet = transitionParams.animateExpandedQuotesFrom;
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
                this.copyText = new Text(LocaleController.getString(C2888R.string.CopyCode).toUpperCase(), SharedConfig.fontSize - 3, AndroidUtilities.bold());
                Drawable drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.msg_copy).mutate();
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
                this.languageHeight = ((int) (text.getTextSize() * 1.714f)) + AndroidUtilities.m1124dp(4.0f);
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
                this.copySelector.setBounds(((int) rectF.left) + AndroidUtilities.m1124dp(3.0f), (int) (rectF.bottom - AndroidUtilities.m1124dp(38.0f)), (int) rectF.right, (int) rectF.bottom);
                int i3 = (int) (255.0f * f);
                this.copySelector.setAlpha(i3);
                if (this.copySelector.getCallback() != null) {
                    this.copySelector.draw(canvas);
                }
                this.copySeparator.setColor(ColorUtils.setAlphaComponent(i2, 38));
                canvas.drawRect(rectF.left + AndroidUtilities.m1124dp(10.0f), (rectF.bottom - AndroidUtilities.m1124dp(38.0f)) - AndroidUtilities.getShadowHeight(), rectF.right - AndroidUtilities.m1124dp(6.66f), rectF.bottom - AndroidUtilities.m1124dp(38.0f), this.copySeparator);
                float fCenterX = rectF.centerX() - (Math.min(rectF.width() - AndroidUtilities.m1124dp(12.0f), ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.m1124dp(5.0f)) + this.copyText.getCurrentWidth()) / 2.0f);
                float fM1124dp = rectF.bottom - (AndroidUtilities.m1124dp(38.0f) / 2.0f);
                if (this.copyIconColor != i) {
                    Drawable drawable2 = this.copyIcon;
                    this.copyIconColor = i;
                    drawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                }
                this.copyIcon.setAlpha(i3);
                this.copyIcon.setBounds((int) fCenterX, (int) (fM1124dp - ((r2.getIntrinsicHeight() * 0.8f) / 2.0f)), (int) ((this.copyIcon.getIntrinsicWidth() * 0.8f) + fCenterX), (int) (((this.copyIcon.getIntrinsicHeight() * 0.8f) / 2.0f) + fM1124dp));
                this.copyIcon.draw(canvas);
                this.copyText.ellipsize(((int) (r3 - ((this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.m1124dp(5.0f)))) + AndroidUtilities.m1124dp(12.0f)).draw(canvas, (this.copyIcon.getIntrinsicWidth() * 0.8f) + AndroidUtilities.m1124dp(5.0f) + fCenterX, fM1124dp, i, f);
            }
        }

        private static String capitalizeLanguage(String str) {
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
                case "csharp":
                case "cs":
                    return "C#";
                case "docker":
                case "dockerfile":
                case "kotlin":
                case "pascal":
                case "arduino":
                case "c":
                case "go":
                case "lua":
                case "dart":
                case "fift":
                case "java":
                case "rust":
                case "swift":
                    return capitalizeFirst(str);
                case "python":
                case "py":
                    return "Python";
                case "typescript":
                case "ts":
                    return "TypeScript";
                case "r":
                case "tl":
                case "asm":
                case "css":
                case "csv":
                case "ini":
                case "jsx":
                case "php":
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
                case "scss":
                case "wasm":
                case "yaml":
                case "cobol":
                case "json5":
                    return str.toUpperCase();
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
                case "autohotkey":
                    return "AutoHotKey";
                default:
                    return str;
            }
        }

        private static String capitalizeFirst(String str) {
            return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
        }

        public boolean isRtl() {
            byte b = this.directionFlags;
            return (b & 1) != 0 && (b & 2) == 0;
        }
    }

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

        /* JADX INFO: renamed from: ph */
        public float f1597ph;
        public int photoHeight;
        public int photoWidth;

        /* JADX INFO: renamed from: pw */
        public int f1598pw;
        public float[] siblingHeights;
        public int spanSize;
        public float top;

        public void set(int i, int i2, int i3, int i4, int i5, float f, int i6) {
            this.minX = (byte) i;
            this.maxX = (byte) i2;
            this.minY = (byte) i3;
            this.maxY = (byte) i4;
            this.f1598pw = i5;
            this.spanSize = i5;
            this.f1597ph = f;
            this.flags = (byte) i6;
        }
    }

    public static class GroupedMessages {
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
        public LongSparseArray positionsArray = new LongSparseArray();
        public int cachedWidthForCaption = -1;
        private int maxSizeWidth = 800;
        public final TransitionParams transitionParams = new TransitionParams();

        public GroupedMessagePosition getPosition(MessageObject messageObject) {
            if (messageObject == null) {
                return null;
            }
            GroupedMessagePosition groupedMessagePosition = this.positions.get(messageObject);
            return groupedMessagePosition == null ? (GroupedMessagePosition) this.positionsArray.get(messageObject.getId()) : groupedMessagePosition;
        }

        private static class MessageGroupedLayoutAttempt {
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:198:0x06ee  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x07ee  */
        /* JADX WARN: Removed duplicated region for block: B:254:0x07f3  */
        /* JADX WARN: Removed duplicated region for block: B:256:0x07f7  */
        /* JADX WARN: Removed duplicated region for block: B:283:0x0861 A[PHI: r3
  0x0861: PHI (r3v16 int) = (r3v15 int), (r3v18 int) binds: [B:278:0x0853, B:280:0x0857] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:288:0x089b  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0134  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x014c  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x014f  */
        /* JADX WARN: Type inference failed for: r14v29 */
        /* JADX WARN: Type inference failed for: r14v30, types: [boolean] */
        /* JADX WARN: Type inference failed for: r14v37 */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v49 */
        /* JADX WARN: Type inference failed for: r8v50 */
        /* JADX WARN: Type inference failed for: r8v51 */
        /* JADX WARN: Type inference failed for: r8v53 */
        /* JADX WARN: Type inference failed for: r8v54 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void calculate() {
            int i;
            int i2;
            int i3;
            int iMax;
            int i4;
            float f;
            int i5;
            float f2;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int i12;
            float f3;
            int i13;
            int i14;
            byte b;
            boolean z;
            MessageObject messageObject;
            TLRPC.Message message;
            float f4;
            float f5;
            this.posArray.clear();
            this.positions.clear();
            this.positionsArray.clear();
            this.captionMessage = null;
            this.maxSizeWidth = 800;
            int size = this.messages.size();
            int i15 = 0;
            boolean z2 = true;
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
            int i16 = this.reversed ? size - 1 : 0;
            ?? r8 = 0;
            boolean z3 = false;
            boolean zIsOutOwner = false;
            boolean z4 = true;
            float f6 = 1.0f;
            while (true) {
                if (this.reversed) {
                    if (i16 < 0) {
                        break;
                    }
                    messageObject = this.messages.get(i16);
                    if (i16 == (!this.reversed ? size - 1 : i15)) {
                        messageObject.isOutOwnerCached = null;
                        zIsOutOwner = messageObject.isOutOwner();
                        if (!zIsOutOwner) {
                            TLRPC.Message message2 = messageObject.messageOwner;
                            TLRPC.MessageFwdHeader messageFwdHeader = message2.fwd_from;
                            if (messageFwdHeader == null || messageFwdHeader.saved_from_peer == null) {
                                if (message2.from_id instanceof TLRPC.TL_peerUser) {
                                    TLRPC.Peer peer = message2.peer_id;
                                    if (peer.channel_id != 0 || peer.chat_id != 0 || (MessageObject.getMedia(message2) instanceof TLRPC.TL_messageMediaGame) || (MessageObject.getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
                                    }
                                    if (!messageObject.isMusic()) {
                                        this.isDocuments = z2;
                                    }
                                }
                                r8 = i15;
                                if (!messageObject.isMusic()) {
                                }
                            }
                            r8 = z2;
                            if (!messageObject.isMusic()) {
                            }
                        } else {
                            r8 = i15;
                            if (!messageObject.isMusic() || messageObject.isDocument()) {
                                this.isDocuments = z2;
                            }
                        }
                    }
                    message = messageObject.messageOwner;
                    if (message != null && message.invert_media) {
                        this.captionAbove = z2;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition = new GroupedMessagePosition();
                    groupedMessagePosition.last = (this.reversed ? i16 != size + (-1) : i16 != 0) ? i15 : z2;
                    f4 = closestPhotoSizeWithSize != null ? 1.0f : closestPhotoSizeWithSize.f1694w / closestPhotoSizeWithSize.f1693h;
                    groupedMessagePosition.aspectRatio = f4;
                    if (f4 <= 1.2f) {
                        sb.append("w");
                    } else if (f4 < 0.8f) {
                        sb.append("n");
                    } else {
                        sb.append("q");
                    }
                    f5 = groupedMessagePosition.aspectRatio;
                    f6 += f5;
                    if (f5 > 2.0f) {
                        z3 = z2;
                    }
                    this.positions.put(messageObject, groupedMessagePosition);
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition);
                    this.posArray.add(groupedMessagePosition);
                    if (messageObject.caption != null) {
                        if (z4 && this.captionMessage == null) {
                            this.captionMessage = messageObject;
                            z4 = false;
                        } else if (!this.isDocuments) {
                            this.captionMessage = null;
                        }
                        this.hasCaption = true;
                    }
                    i16 = !this.reversed ? i16 - 1 : i16 + 1;
                    i15 = 0;
                    z2 = true;
                    r8 = r8;
                } else {
                    if (i16 >= size) {
                        break;
                    }
                    messageObject = this.messages.get(i16);
                    if (i16 == (!this.reversed ? size - 1 : i15)) {
                    }
                    message = messageObject.messageOwner;
                    if (message != null) {
                        this.captionAbove = z2;
                    }
                    TLRPC.PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, AndroidUtilities.getPhotoSize());
                    GroupedMessagePosition groupedMessagePosition2 = new GroupedMessagePosition();
                    groupedMessagePosition2.last = (this.reversed ? i16 != size + (-1) : i16 != 0) ? i15 : z2;
                    if (closestPhotoSizeWithSize2 != null) {
                    }
                    groupedMessagePosition2.aspectRatio = f4;
                    if (f4 <= 1.2f) {
                    }
                    f5 = groupedMessagePosition2.aspectRatio;
                    f6 += f5;
                    if (f5 > 2.0f) {
                    }
                    this.positions.put(messageObject, groupedMessagePosition2);
                    this.positionsArray.put(messageObject.getId(), groupedMessagePosition2);
                    this.posArray.add(groupedMessagePosition2);
                    if (messageObject.caption != null) {
                    }
                    if (!this.reversed) {
                    }
                    i15 = 0;
                    z2 = true;
                    r8 = r8;
                }
            }
            if (this.isDocuments) {
                for (int i17 = 0; i17 < size; i17++) {
                    GroupedMessagePosition groupedMessagePosition3 = this.posArray.get(i17);
                    groupedMessagePosition3.flags = 3;
                    if (i17 == 0) {
                        groupedMessagePosition3.flags = 3 | 4;
                        b = 0;
                        groupedMessagePosition3.last = false;
                        z = true;
                    } else {
                        b = 0;
                        if (i17 == size - 1) {
                            groupedMessagePosition3.flags = 3 | 8;
                            z = true;
                            groupedMessagePosition3.last = true;
                        } else {
                            z = true;
                            groupedMessagePosition3.last = false;
                        }
                    }
                    groupedMessagePosition3.edge = z;
                    groupedMessagePosition3.aspectRatio = 1.0f;
                    groupedMessagePosition3.minX = b;
                    groupedMessagePosition3.maxX = b;
                    byte b2 = (byte) i17;
                    groupedMessagePosition3.minY = b2;
                    groupedMessagePosition3.maxY = b2;
                    groupedMessagePosition3.spanSize = MediaDataController.MAX_STYLE_RUNS_COUNT;
                    groupedMessagePosition3.f1598pw = this.maxSizeWidth;
                    groupedMessagePosition3.f1597ph = 100.0f;
                }
                return;
            }
            if (r8 != 0) {
                this.maxSizeWidth -= 50;
                i = 250;
            } else {
                i = 200;
            }
            int iM1124dp = AndroidUtilities.m1124dp(120.0f);
            float fM1124dp = AndroidUtilities.m1124dp(120.0f);
            Point point = AndroidUtilities.displaySize;
            int iMin = (int) (fM1124dp / (Math.min(point.x, point.y) / this.maxSizeWidth));
            float fM1124dp2 = AndroidUtilities.m1124dp(40.0f);
            Point point2 = AndroidUtilities.displaySize;
            float fMin = Math.min(point2.x, point2.y);
            int i18 = this.maxSizeWidth;
            int i19 = (int) (fM1124dp2 / (fMin / i18));
            float f7 = i18 / 814.0f;
            float f8 = f6 / size;
            float fM1124dp3 = AndroidUtilities.m1124dp(100.0f) / 814.0f;
            if (size != 1) {
                if (z3 || !(size == 2 || size == 3 || size == 4)) {
                    int size2 = this.posArray.size();
                    float[] fArr = new float[size2];
                    for (int i20 = 0; i20 < size; i20++) {
                        if (f8 > 1.1f) {
                            fArr[i20] = Math.max(1.0f, this.posArray.get(i20).aspectRatio);
                        } else {
                            fArr[i20] = Math.min(1.0f, this.posArray.get(i20).aspectRatio);
                        }
                        fArr[i20] = Math.max(0.66667f, Math.min(1.7f, fArr[i20]));
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i21 = 1; i21 < size2; i21++) {
                        int i22 = size2 - i21;
                        if (i21 <= 3 && i22 <= 3) {
                            arrayList.add(new MessageGroupedLayoutAttempt(i21, i22, multiHeight(fArr, 0, i21), multiHeight(fArr, i21, size2)));
                        }
                    }
                    int i23 = 1;
                    while (i23 < size2 - 1) {
                        int i24 = 1;
                        while (true) {
                            int i25 = size2 - i23;
                            if (i24 < i25) {
                                int i26 = i25 - i24;
                                if (i23 > 3) {
                                    i9 = i23;
                                    i10 = i24;
                                } else if (i24 <= (f8 < 0.85f ? 4 : 3) && i26 <= 3) {
                                    int i27 = i23 + i24;
                                    i9 = i23;
                                    i10 = i24;
                                    arrayList.add(new MessageGroupedLayoutAttempt(i9, i10, i26, multiHeight(fArr, 0, i23), multiHeight(fArr, i23, i27), multiHeight(fArr, i27, size2)));
                                }
                                i24 = i10 + 1;
                                i23 = i9;
                            }
                        }
                        i23++;
                    }
                    int i28 = 1;
                    while (i28 < size2 - 2) {
                        int i29 = 1;
                        while (true) {
                            int i30 = size2 - i28;
                            if (i29 < i30) {
                                int i31 = 1;
                                while (true) {
                                    int i32 = i30 - i29;
                                    if (i31 < i32) {
                                        int i33 = i32 - i31;
                                        if (i28 > 3 || i29 > 3 || i31 > 3 || i33 > 3) {
                                            i6 = i28;
                                            i7 = i29;
                                            i8 = i31;
                                        } else {
                                            int i34 = i28 + i29;
                                            int i35 = i34 + i31;
                                            i6 = i28;
                                            i7 = i29;
                                            i8 = i31;
                                            arrayList.add(new MessageGroupedLayoutAttempt(i6, i7, i8, i33, multiHeight(fArr, 0, i28), multiHeight(fArr, i28, i34), multiHeight(fArr, i34, i35), multiHeight(fArr, i35, size2)));
                                        }
                                        i31 = i8 + 1;
                                        i28 = i6;
                                        i29 = i7;
                                    }
                                }
                                i29++;
                            }
                        }
                        i28++;
                    }
                    float f9 = (this.maxSizeWidth / 3) * 4;
                    int i36 = 0;
                    MessageGroupedLayoutAttempt messageGroupedLayoutAttempt = null;
                    float f10 = 0.0f;
                    while (i36 < arrayList.size()) {
                        MessageGroupedLayoutAttempt messageGroupedLayoutAttempt2 = (MessageGroupedLayoutAttempt) arrayList.get(i36);
                        float f11 = Float.MAX_VALUE;
                        int i37 = 0;
                        float f12 = 0.0f;
                        while (true) {
                            float[] fArr2 = messageGroupedLayoutAttempt2.heights;
                            f = f9;
                            if (i37 >= fArr2.length) {
                                break;
                            }
                            float f13 = fArr2[i37];
                            f12 += f13;
                            if (f13 < f11) {
                                f11 = f13;
                            }
                            i37++;
                            f9 = f;
                        }
                        float fAbs = Math.abs(f12 - f);
                        int[] iArr = messageGroupedLayoutAttempt2.lineCounts;
                        if (iArr.length > 1) {
                            int i38 = iArr[0];
                            int i39 = iArr[1];
                            if (i38 <= i39) {
                                i5 = i;
                                if (iArr.length <= 2 || i39 <= iArr[2]) {
                                    if (iArr.length <= 3 || iArr[2] <= iArr[3]) {
                                    }
                                    if (f11 < iMin) {
                                        f2 *= 1.5f;
                                    }
                                    if (messageGroupedLayoutAttempt != null || f2 < f10) {
                                        f10 = f2;
                                        messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                                    }
                                    i36++;
                                    f9 = f;
                                    i = i5;
                                }
                                f2 = fAbs * 1.2f;
                                if (f11 < iMin) {
                                }
                                if (messageGroupedLayoutAttempt != null) {
                                    f10 = f2;
                                    messageGroupedLayoutAttempt = messageGroupedLayoutAttempt2;
                                }
                                i36++;
                                f9 = f;
                                i = i5;
                            } else {
                                i5 = i;
                            }
                            f2 = fAbs * 1.2f;
                            if (f11 < iMin) {
                            }
                            if (messageGroupedLayoutAttempt != null) {
                            }
                            i36++;
                            f9 = f;
                            i = i5;
                        } else {
                            i5 = i;
                        }
                        f2 = fAbs;
                        if (f11 < iMin) {
                        }
                        if (messageGroupedLayoutAttempt != null) {
                        }
                        i36++;
                        f9 = f;
                        i = i5;
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
                        float f14 = messageGroupedLayoutAttempt.heights[i41];
                        int i43 = this.maxSizeWidth;
                        int i44 = i42 - 1;
                        iMax = Math.max(iMax, i44);
                        int i45 = i43;
                        int i46 = 0;
                        GroupedMessagePosition groupedMessagePosition4 = null;
                        while (i46 < i42) {
                            int i47 = (int) (fArr[i40] * f14);
                            i45 -= i47;
                            int i48 = iMax;
                            GroupedMessagePosition groupedMessagePosition5 = this.posArray.get(i40);
                            int i49 = i41 == 0 ? 4 : 0;
                            int i50 = i40;
                            if (i41 == messageGroupedLayoutAttempt.lineCounts.length - 1) {
                                i49 |= 8;
                            }
                            if (i46 == 0) {
                                i49 |= 1;
                                if (zIsOutOwner) {
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            if (i46 == i44) {
                                i49 |= 2;
                                if (zIsOutOwner) {
                                    i4 = i49;
                                } else {
                                    i4 = i49;
                                    groupedMessagePosition4 = groupedMessagePosition5;
                                }
                            }
                            int i51 = i46;
                            groupedMessagePosition5.set(i51, i46, i41, i41, i47, Math.max(fM1124dp3, f14 / 814.0f), i4);
                            i40 = i50 + 1;
                            i46 = i51 + 1;
                            iMax = i48;
                        }
                        groupedMessagePosition4.f1598pw += i45;
                        groupedMessagePosition4.spanSize += i45;
                        i41++;
                        i40 = i40;
                    }
                } else if (size == 2) {
                    GroupedMessagePosition groupedMessagePosition6 = this.posArray.get(0);
                    GroupedMessagePosition groupedMessagePosition7 = this.posArray.get(1);
                    String string = sb.toString();
                    if (string.equals("ww")) {
                        i12 = iMin;
                        f3 = 0.4f;
                        if (f8 > ((double) f7) * 1.4d) {
                            float f15 = groupedMessagePosition6.aspectRatio;
                            float f16 = groupedMessagePosition7.aspectRatio;
                            if (f15 - f16 < 0.2d) {
                                int i52 = this.maxSizeWidth;
                                float fRound = Math.round(Math.min(i52 / f15, Math.min(i52 / f16, 407.0f))) / 814.0f;
                                groupedMessagePosition6.set(0, 0, 0, 0, this.maxSizeWidth, fRound, 7);
                                groupedMessagePosition7.set(0, 0, 1, 1, this.maxSizeWidth, fRound, 11);
                                i11 = 0;
                                i2 = i;
                                i3 = 0;
                                iMax = i11;
                            }
                        }
                    } else {
                        i12 = iMin;
                        f3 = 0.4f;
                    }
                    if (string.equals("ww") || string.equals("qq")) {
                        int i53 = this.maxSizeWidth / 2;
                        float f17 = i53;
                        float fRound2 = Math.round(Math.min(f17 / groupedMessagePosition6.aspectRatio, Math.min(f17 / groupedMessagePosition7.aspectRatio, 814.0f))) / 814.0f;
                        groupedMessagePosition6.set(0, 0, 0, 0, i53, fRound2, 13);
                        groupedMessagePosition7.set(1, 1, 0, 0, i53, fRound2, 14);
                    } else {
                        int i54 = this.maxSizeWidth;
                        float f18 = groupedMessagePosition6.aspectRatio;
                        int iMax2 = (int) Math.max(i54 * f3, Math.round((i54 / f18) / ((1.0f / f18) + (1.0f / groupedMessagePosition7.aspectRatio))));
                        int i55 = this.maxSizeWidth - iMax2;
                        int i56 = i12;
                        if (i55 < i56) {
                            iMax2 -= i56 - i55;
                            i13 = i56;
                        } else {
                            i13 = i55;
                        }
                        float fMin2 = Math.min(814.0f, Math.round(Math.min(i13 / groupedMessagePosition6.aspectRatio, iMax2 / groupedMessagePosition7.aspectRatio))) / 814.0f;
                        groupedMessagePosition6.set(0, 0, 0, 0, i13, fMin2, 13);
                        groupedMessagePosition7.set(1, 1, 0, 0, iMax2, fMin2, 14);
                    }
                    i11 = 1;
                    i2 = i;
                    i3 = 0;
                    iMax = i11;
                } else if (size == 3) {
                    GroupedMessagePosition groupedMessagePosition8 = this.posArray.get(0);
                    GroupedMessagePosition groupedMessagePosition9 = this.posArray.get(1);
                    GroupedMessagePosition groupedMessagePosition10 = this.posArray.get(2);
                    if (sb.charAt(0) == 'n') {
                        float f19 = groupedMessagePosition9.aspectRatio;
                        float fMin3 = Math.min(407.0f, Math.round((this.maxSizeWidth * f19) / (groupedMessagePosition10.aspectRatio + f19)));
                        int iMax3 = (int) Math.max(iMin, Math.min(this.maxSizeWidth * 0.5f, Math.round(Math.min(groupedMessagePosition10.aspectRatio * fMin3, groupedMessagePosition9.aspectRatio * r14))));
                        int iRound = Math.round(Math.min((groupedMessagePosition8.aspectRatio * 814.0f) + i19, this.maxSizeWidth - iMax3));
                        groupedMessagePosition8.set(0, 0, 0, 1, iRound, 1.0f, 13);
                        float f20 = (814.0f - fMin3) / 814.0f;
                        groupedMessagePosition9.set(1, 1, 0, 0, iMax3, f20, 6);
                        float f21 = fMin3 / 814.0f;
                        groupedMessagePosition10.set(0, 1, 1, 1, iMax3, f21, 10);
                        int i57 = this.maxSizeWidth;
                        groupedMessagePosition10.spanSize = i57;
                        groupedMessagePosition8.siblingHeights = new float[]{f21, f20};
                        if (zIsOutOwner) {
                            groupedMessagePosition8.spanSize = i57 - iMax3;
                        } else {
                            groupedMessagePosition9.spanSize = i57 - iRound;
                            groupedMessagePosition10.leftSpanOffset = iRound;
                        }
                        this.hasSibling = true;
                    } else {
                        float fRound3 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition8.aspectRatio, 537.24005f)) / 814.0f;
                        groupedMessagePosition8.set(0, 1, 0, 0, this.maxSizeWidth, fRound3, 7);
                        int i58 = this.maxSizeWidth / 2;
                        float f22 = i58;
                        float fMin4 = Math.min(814.0f - fRound3, Math.round(Math.min(f22 / groupedMessagePosition9.aspectRatio, f22 / groupedMessagePosition10.aspectRatio))) / 814.0f;
                        float f23 = fMin4 < fM1124dp3 ? fM1124dp3 : fMin4;
                        groupedMessagePosition9.set(0, 0, 1, 1, i58, f23, 9);
                        groupedMessagePosition10.set(1, 1, 1, 1, i58, f23, 10);
                    }
                    i2 = i;
                    iMax = 1;
                } else {
                    GroupedMessagePosition groupedMessagePosition11 = this.posArray.get(0);
                    GroupedMessagePosition groupedMessagePosition12 = this.posArray.get(1);
                    GroupedMessagePosition groupedMessagePosition13 = this.posArray.get(2);
                    GroupedMessagePosition groupedMessagePosition14 = this.posArray.get(3);
                    if (sb.charAt(0) == 'w') {
                        float fRound4 = Math.round(Math.min(this.maxSizeWidth / groupedMessagePosition11.aspectRatio, 537.24005f)) / 814.0f;
                        groupedMessagePosition11.set(0, 2, 0, 0, this.maxSizeWidth, fRound4, 7);
                        float fRound5 = Math.round(this.maxSizeWidth / ((groupedMessagePosition12.aspectRatio + groupedMessagePosition13.aspectRatio) + groupedMessagePosition14.aspectRatio));
                        float f24 = iMin;
                        int iMax4 = (int) Math.max(f24, Math.min(this.maxSizeWidth * 0.4f, groupedMessagePosition12.aspectRatio * fRound5));
                        int iMax5 = (int) Math.max(Math.max(f24, this.maxSizeWidth * 0.33f), groupedMessagePosition14.aspectRatio * fRound5);
                        int iM1124dp2 = (this.maxSizeWidth - iMax4) - iMax5;
                        if (iM1124dp2 < AndroidUtilities.m1124dp(58.0f)) {
                            int iM1124dp3 = AndroidUtilities.m1124dp(58.0f) - iM1124dp2;
                            iM1124dp2 = AndroidUtilities.m1124dp(58.0f);
                            int i59 = iM1124dp3 / 2;
                            iMax4 -= i59;
                            iMax5 -= iM1124dp3 - i59;
                        }
                        int i60 = iMax4;
                        float fMin5 = Math.min(814.0f - fRound4, fRound5) / 814.0f;
                        float f25 = fMin5 < fM1124dp3 ? fM1124dp3 : fMin5;
                        groupedMessagePosition12.set(0, 0, 1, 1, i60, f25, 9);
                        groupedMessagePosition13.set(1, 1, 1, 1, iM1124dp2, f25, 8);
                        groupedMessagePosition14.set(2, 2, 1, 1, iMax5, f25, 10);
                        i11 = 2;
                        i2 = i;
                        i3 = 0;
                        iMax = i11;
                    } else {
                        int iMax6 = Math.max(iMin, Math.round(814.0f / (((1.0f / groupedMessagePosition12.aspectRatio) + (1.0f / groupedMessagePosition13.aspectRatio)) + (1.0f / groupedMessagePosition14.aspectRatio))));
                        float f26 = iM1124dp;
                        float f27 = iMax6;
                        float fMin6 = Math.min(0.33f, Math.max(f26, f27 / groupedMessagePosition12.aspectRatio) / 814.0f);
                        float fMin7 = Math.min(0.33f, Math.max(f26, f27 / groupedMessagePosition13.aspectRatio) / 814.0f);
                        float f28 = (1.0f - fMin6) - fMin7;
                        int iRound2 = Math.round(Math.min((groupedMessagePosition11.aspectRatio * 814.0f) + i19, this.maxSizeWidth - iMax6));
                        groupedMessagePosition11.set(0, 0, 0, 2, iRound2, fMin6 + fMin7 + f28, 13);
                        groupedMessagePosition12.set(1, 1, 0, 0, iMax6, fMin6, 6);
                        groupedMessagePosition13.set(0, 1, 1, 1, iMax6, fMin7, 2);
                        groupedMessagePosition13.spanSize = this.maxSizeWidth;
                        groupedMessagePosition14.set(0, 1, 2, 2, iMax6, f28, 10);
                        int i61 = this.maxSizeWidth;
                        groupedMessagePosition14.spanSize = i61;
                        if (zIsOutOwner) {
                            groupedMessagePosition11.spanSize = i61 - iMax6;
                        } else {
                            groupedMessagePosition12.spanSize = i61 - iRound2;
                            groupedMessagePosition13.leftSpanOffset = iRound2;
                            groupedMessagePosition14.leftSpanOffset = iRound2;
                        }
                        groupedMessagePosition11.siblingHeights = new float[]{fMin6, fMin7, f28};
                        this.hasSibling = true;
                        i11 = 1;
                        i2 = i;
                        i3 = 0;
                        iMax = i11;
                    }
                }
                for (i14 = i3; i14 < size; i14++) {
                    GroupedMessagePosition groupedMessagePosition15 = this.posArray.get(i14);
                    if (zIsOutOwner) {
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
                    MessageObject messageObject2 = this.messages.get(i14);
                    if (!zIsOutOwner && messageObject2.needDrawAvatarInternal()) {
                        if (groupedMessagePosition15.edge) {
                            int i62 = groupedMessagePosition15.spanSize;
                            if (i62 != 1000) {
                                groupedMessagePosition15.spanSize = i62 + 108;
                            }
                            groupedMessagePosition15.f1598pw += 108;
                        } else if ((groupedMessagePosition15.flags & 2) != 0) {
                            int i63 = groupedMessagePosition15.spanSize;
                            if (i63 != 1000) {
                                groupedMessagePosition15.spanSize = i63 - 108;
                            } else {
                                int i64 = groupedMessagePosition15.leftSpanOffset;
                                if (i64 != 0) {
                                    groupedMessagePosition15.leftSpanOffset = i64 + 108;
                                }
                            }
                        }
                    }
                }
            }
            GroupedMessagePosition groupedMessagePosition16 = this.posArray.get(0);
            int i65 = this.maxSizeWidth;
            float f29 = groupedMessagePosition16.aspectRatio;
            groupedMessagePosition16.set(0, 0, 0, 0, this.maxSizeWidth, Math.round(Math.min(i65 / f29, Math.min(i65 / f29, 407.0f))) / 814.0f, 15);
            i2 = i;
            iMax = 0;
            i3 = 0;
            while (i14 < size) {
            }
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

    public MessageObject(int i, TL_stories.StoryItem storyItem) {
        this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
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
            tL_message.f1686id = storyItem.messageId;
            tL_message.realId = storyItem.f1857id;
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
        this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
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

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, boolean z, boolean z2) {
        this(i, message, longSparseArray, (LongSparseArray) null, z, z2);
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

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, boolean z3) {
        this(i, message, null, null, null, longSparseArray, longSparseArray2, z, z2, 0L, false, false, z3);
    }

    public MessageObject(int i, TLRPC.Message message, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, boolean z, boolean z2, long j) {
        this(i, message, null, abstractMap, abstractMap2, null, null, z, z2, j);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, false, false, false);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5) {
        this(i, message, messageObject, abstractMap, abstractMap2, longSparseArray, longSparseArray2, z, z2, j, z3, z4, z5, 0);
    }

    public MessageObject(int i, TLRPC.Message message, MessageObject messageObject, AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2, boolean z, boolean z2, long j, boolean z3, boolean z4, boolean z5, int i2) {
        AbstractMap<Long, TLRPC.User> abstractMap3;
        AbstractMap<Long, TLRPC.Chat> abstractMap4;
        LongSparseArray longSparseArray3;
        LongSparseArray longSparseArray4;
        TextPaint textPaint;
        this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
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
        this.dateKeyInt = (i5 * XCallback.PRIORITY_HIGHEST) + i4 + (i3 * 1000000);
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

    protected void checkBigAnimatedEmoji() {
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
            this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
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
                    String str = isRoundVideo() ? "br" : "b";
                    int size = this.photoThumbs.size();
                    for (int i = 0; i < size; i++) {
                        TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                        if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                            this.strippedThumb = new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), ImageLoader.getStrippedPhotoBitmap(photoSize.bytes, str));
                            return;
                        }
                    }
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            }
        }
    }

    private void createDateArray(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, boolean z) {
        if (map.get(this.dateKey) == null) {
            map.put(this.dateKey, new ArrayList<>());
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.message = LocaleController.formatDateChat(tL_channelAdminLogEvent.date);
            tL_message.f1686id = 0;
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
                    animatedEmojiSpanArr[i2].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.m1124dp(4.0f)), -1);
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
            int textSize = (int) (textPaint.getTextSize() + AndroidUtilities.m1124dp(4.0f));
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
                animatedEmojiSpanArr2[i6].replaceFontMetrics(Theme.chat_msgTextPaint.getFontMetricsInt(), (int) (Theme.chat_msgTextPaint.getTextSize() + AndroidUtilities.m1124dp(4.0f)), -1);
                animatedEmojiSpanArr2[i6].full = false;
            }
            return;
        }
        this.totalAnimatedEmojiCount = 0;
    }

    public TextPaint getTextPaint() {
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

    /* JADX WARN: Removed duplicated region for block: B:1132:0x1d54  */
    /* JADX WARN: Removed duplicated region for block: B:1135:0x1da5  */
    /* JADX WARN: Removed duplicated region for block: B:1136:0x1da7  */
    /* JADX WARN: Removed duplicated region for block: B:1138:0x1daa  */
    /* JADX WARN: Removed duplicated region for block: B:1155:0x1e38  */
    /* JADX WARN: Removed duplicated region for block: B:1159:0x1e45  */
    /* JADX WARN: Removed duplicated region for block: B:1163:0x1e54  */
    /* JADX WARN: Removed duplicated region for block: B:1164:0x1e59  */
    /* JADX WARN: Removed duplicated region for block: B:1167:0x1e66  */
    /* JADX WARN: Removed duplicated region for block: B:1170:0x1e72  */
    /* JADX WARN: Removed duplicated region for block: B:1171:0x1e75  */
    /* JADX WARN: Removed duplicated region for block: B:1174:0x1e7d  */
    /* JADX WARN: Removed duplicated region for block: B:1175:0x1e81  */
    /* JADX WARN: Removed duplicated region for block: B:1183:0x1eb5  */
    /* JADX WARN: Removed duplicated region for block: B:1197:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0d06  */
    /* JADX WARN: Removed duplicated region for block: B:809:0x14d3  */
    /* JADX WARN: Removed duplicated region for block: B:820:0x1513  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MessageObject(int i, TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent, ArrayList<MessageObject> arrayList, HashMap<String, ArrayList<MessageObject>> map, TLRPC.Chat chat, int[] iArr, boolean z) {
        String str;
        TLRPC.ChannelParticipant channelParticipant;
        TLRPC.ChannelParticipant channelParticipant2;
        TLRPC.User user;
        String string;
        char c;
        char c2;
        TLRPC.Chat chat2;
        StringBuilder sb;
        TLRPC.Chat chat3;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent2;
        TLRPC.Chat chat4;
        SpannableString spannableString;
        SpannableString spannableString2;
        SpannableString spannableString3;
        boolean z2;
        SpannableString spannableString4;
        int i2;
        String string2;
        TLRPC.Message tL_message;
        ArrayList<TLRPC.MessageEntity> arrayList2;
        char c3;
        String pluralString;
        TLObject chat5;
        TLObject chat6;
        TLObject chat7;
        char c4;
        String pluralString2;
        ArrayList<TLRPC.MessageEntity> arrayList3;
        TLRPC.WebPage webPage;
        boolean z3;
        boolean z4;
        TLRPC.Photo photo;
        TLRPC.Photo photo2;
        TLRPC.Peer peer;
        String str2;
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLObject chat8;
        String string3;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        StringBuilder sb2;
        boolean z5;
        String pluralString3;
        int i3;
        String str3;
        boolean z6;
        TLObject chat9;
        TLRPC.Message message;
        ArrayList<MessageObject> arrayList4;
        String str4;
        int[] iArr2;
        TextPaint textPaint;
        int[] iArr3;
        Spannable spannableReplaceAnimatedEmoji;
        int i4;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
        this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
        this.forceSeekTo = -1.0f;
        this.actionDeleteGroupEventId = -1L;
        this.overrideLinkColor = -1;
        this.overrideLinkEmoji = -1L;
        this.messageTrimmedToHighlightCut = true;
        this.topicIconDrawable = new Drawable[1];
        this.spoiledLoginCode = false;
        this.translated = false;
        this.summarized = false;
        this.currentEvent = tL_channelAdminLogEvent3;
        this.currentAccount = i;
        TLRPC.User user2 = tL_channelAdminLogEvent3.user_id > 0 ? MessagesController.getInstance(i).getUser(Long.valueOf(tL_channelAdminLogEvent3.user_id)) : null;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(((long) tL_channelAdminLogEvent3.date) * 1000);
        int i5 = gregorianCalendar.get(6);
        int i6 = gregorianCalendar.get(1);
        int i7 = gregorianCalendar.get(2);
        this.dateKey = String.format("%d_%02d_%02d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i5));
        this.dateKeyInt = (i7 * MediaDataController.MAX_STYLE_RUNS_COUNT) + i6 + (i5 * AppDataDirGuesser.PER_USER_RANGE);
        this.monthKey = String.format("%d_%02d", Integer.valueOf(i6), Integer.valueOf(i7));
        TLRPC.TL_peerChannel tL_peerChannel = new TLRPC.TL_peerChannel();
        tL_peerChannel.channel_id = chat.f1660id;
        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent3.action;
        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTitle) {
            String str5 = ((TLRPC.TL_channelAdminLogEventActionChangeTitle) channelAdminLogEventAction).new_value;
            if (chat.megagroup) {
                this.messageText = replaceWithLink(LocaleController.formatString("EventLogEditedGroupTitle", C2888R.string.EventLogEditedGroupTitle, str5), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.formatString("EventLogEditedChannelTitle", C2888R.string.EventLogEditedChannelTitle, str5), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePhoto) {
            TLRPC.TL_channelAdminLogEventActionChangePhoto tL_channelAdminLogEventActionChangePhoto = (TLRPC.TL_channelAdminLogEventActionChangePhoto) channelAdminLogEventAction;
            TLRPC.TL_messageService tL_messageService = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService;
            if (tL_channelAdminLogEventActionChangePhoto.new_photo instanceof TLRPC.TL_photoEmpty) {
                tL_messageService.action = new TLRPC.TL_messageActionChatDeletePhoto();
                if (chat.megagroup) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedWGroupPhoto), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedChannelPhoto), "un1", user2);
                }
            } else {
                tL_messageService.action = new TLRPC.TL_messageActionChatEditPhoto();
                this.messageOwner.action.photo = tL_channelAdminLogEventActionChangePhoto.new_photo;
                if (chat.megagroup) {
                    if (isVideoAvatar()) {
                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedGroupVideo), "un1", user2);
                    } else {
                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedGroupPhoto), "un1", user2);
                    }
                } else if (isVideoAvatar()) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedChannelVideo), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedChannelPhoto), "un1", user2);
                }
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoin) {
            if (chat.megagroup) {
                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogGroupJoined), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChannelJoined), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantLeave) {
            TLRPC.TL_messageService tL_messageService2 = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService2;
            tL_messageService2.action = new TLRPC.TL_messageActionChatDeleteUser();
            this.messageOwner.action.user_id = tL_channelAdminLogEvent3.user_id;
            if (chat.megagroup) {
                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogLeftGroup), "un1", user2);
            } else {
                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogLeftChannel), "un1", user2);
            }
        } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantInvite) {
            TLRPC.TL_messageService tL_messageService3 = new TLRPC.TL_messageService();
            this.messageOwner = tL_messageService3;
            tL_messageService3.action = new TLRPC.TL_messageActionChatAddUser();
            long peerId = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantInvite) channelAdminLogEventAction).participant.peer);
            if (peerId > 0) {
                chat9 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId));
            } else {
                chat9 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId));
            }
            TLRPC.Peer peer2 = this.messageOwner.from_id;
            if ((peer2 instanceof TLRPC.TL_peerUser) && peerId == peer2.user_id) {
                if (chat.megagroup) {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogGroupJoined), "un1", user2);
                } else {
                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChannelJoined), "un1", user2);
                }
            } else {
                CharSequence charSequenceReplaceWithLink = replaceWithLink(LocaleController.getString(C2888R.string.EventLogAdded), "un2", chat9);
                this.messageText = charSequenceReplaceWithLink;
                this.messageText = replaceWithLink(charSequenceReplaceWithLink, "un1", user2);
            }
        } else {
            if ((channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) || ((channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) && (((TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction).prev_participant instanceof TLRPC.TL_channelParticipantAdmin) && (((TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction).new_participant instanceof TLRPC.TL_channelParticipant))) {
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
                TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
                this.messageOwner = tL_message2;
                tL_message2.realId = -1;
                long peerId2 = getPeerId(channelParticipant.peer);
                if (peerId2 > 0) {
                    user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId2));
                } else {
                    user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(-peerId2));
                }
                if (!(channelParticipant instanceof TLRPC.TL_channelParticipantCreator) && (channelParticipant2 instanceof TLRPC.TL_channelParticipantCreator)) {
                    String string4 = LocaleController.getString(C2888R.string.EventLogChangedOwnership);
                    sb = new StringBuilder(String.format(string4, getUserName(user, this.messageOwner.entities, string4.indexOf("%1$s"))));
                    chat2 = chat;
                } else {
                    TLRPC.TL_chatAdminRights tL_chatAdminRights = channelParticipant.admin_rights;
                    TLRPC.TL_chatAdminRights tL_chatAdminRights2 = channelParticipant2.admin_rights;
                    tL_chatAdminRights = tL_chatAdminRights == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights;
                    tL_chatAdminRights2 = tL_chatAdminRights2 == null ? new TLRPC.TL_chatAdminRights() : tL_chatAdminRights2;
                    if (tL_chatAdminRights2.other) {
                        string = LocaleController.getString(C2888R.string.EventLogPromotedNoRights);
                    } else {
                        string = LocaleController.getString(C2888R.string.EventLogPromoted);
                    }
                    StringBuilder sb3 = new StringBuilder(String.format(string, getUserName(user, this.messageOwner.entities, string.indexOf("%1$s"))));
                    sb3.append("\n");
                    if (TextUtils.equals(channelParticipant.rank, channelParticipant2.rank)) {
                        c = SignatureVisitor.EXTENDS;
                        c2 = SignatureVisitor.SUPER;
                    } else if (TextUtils.isEmpty(channelParticipant2.rank)) {
                        sb3.append('\n');
                        c2 = SignatureVisitor.SUPER;
                        sb3.append(SignatureVisitor.SUPER);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedRemovedTitle));
                        c = SignatureVisitor.EXTENDS;
                    } else {
                        c2 = SignatureVisitor.SUPER;
                        sb3.append('\n');
                        c = SignatureVisitor.EXTENDS;
                        sb3.append(SignatureVisitor.EXTENDS);
                        sb3.append(' ');
                        sb3.append(LocaleController.formatString("EventLogPromotedTitle", C2888R.string.EventLogPromotedTitle, channelParticipant2.rank));
                    }
                    if (tL_chatAdminRights.change_info != tL_chatAdminRights2.change_info) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.change_info ? c : c2);
                        sb3.append(' ');
                        chat2 = chat;
                        sb3.append(LocaleController.getString(chat2.megagroup ? C2888R.string.EventLogPromotedChangeGroupInfo : C2888R.string.EventLogPromotedChangeChannelInfo));
                    } else {
                        chat2 = chat;
                    }
                    if (!chat2.megagroup) {
                        if (tL_chatAdminRights.post_messages != tL_chatAdminRights2.post_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.post_messages ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedPostMessages));
                        }
                        if (tL_chatAdminRights.edit_messages != tL_chatAdminRights2.edit_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.edit_messages ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedEditMessages));
                        }
                    }
                    if (tL_chatAdminRights.post_stories != tL_chatAdminRights2.post_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.post_stories ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedPostStories));
                    }
                    if (tL_chatAdminRights.edit_stories != tL_chatAdminRights2.edit_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.edit_stories ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedEditStories));
                    }
                    if (tL_chatAdminRights.delete_stories != tL_chatAdminRights2.delete_stories) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.delete_stories ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedDeleteStories));
                    }
                    if (tL_chatAdminRights.delete_messages != tL_chatAdminRights2.delete_messages) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.delete_messages ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedDeleteMessages));
                    }
                    if (tL_chatAdminRights.add_admins != tL_chatAdminRights2.add_admins) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.add_admins ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedAddAdmins));
                    }
                    if (tL_chatAdminRights.anonymous != tL_chatAdminRights2.anonymous) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.anonymous ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedSendAnonymously));
                    }
                    if (chat2.megagroup) {
                        if (tL_chatAdminRights.ban_users != tL_chatAdminRights2.ban_users) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.ban_users ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedBanUsers));
                        }
                        if (tL_chatAdminRights.manage_call != tL_chatAdminRights2.manage_call) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_call ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedManageCall));
                        }
                    }
                    if (tL_chatAdminRights.invite_users != tL_chatAdminRights2.invite_users) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.invite_users ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedAddUsers));
                    }
                    if (chat2.megagroup) {
                        if (tL_chatAdminRights.pin_messages != tL_chatAdminRights2.pin_messages) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.pin_messages ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedPinMessages));
                        }
                        if (tL_chatAdminRights.manage_ranks != tL_chatAdminRights2.manage_ranks) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_ranks ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedEditRanks));
                        }
                        if (tL_chatAdminRights.manage_topics != tL_chatAdminRights2.manage_topics) {
                            sb3.append('\n');
                            sb3.append(tL_chatAdminRights2.manage_topics ? c : c2);
                            sb3.append(' ');
                            sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedManageTopics));
                        }
                    }
                    if (tL_chatAdminRights.manage_direct_messages != tL_chatAdminRights2.manage_direct_messages) {
                        sb3.append('\n');
                        sb3.append(tL_chatAdminRights2.manage_direct_messages ? c : c2);
                        sb3.append(' ');
                        sb3.append(LocaleController.getString(C2888R.string.EventLogPromotedManageDirect));
                    }
                    sb = sb3;
                }
                this.messageText = sb.toString();
            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) {
                TLRPC.TL_channelAdminLogEventActionDefaultBannedRights tL_channelAdminLogEventActionDefaultBannedRights = (TLRPC.TL_channelAdminLogEventActionDefaultBannedRights) channelAdminLogEventAction;
                TLRPC.TL_message tL_message3 = new TLRPC.TL_message();
                this.messageOwner = tL_message3;
                tL_message3.realId = -1;
                TLRPC.TL_chatBannedRights tL_chatBannedRights2 = tL_channelAdminLogEventActionDefaultBannedRights.prev_banned_rights;
                TLRPC.TL_chatBannedRights tL_chatBannedRights3 = tL_channelAdminLogEventActionDefaultBannedRights.new_banned_rights;
                StringBuilder sb4 = new StringBuilder(LocaleController.getString(C2888R.string.EventLogDefaultPermissions));
                tL_chatBannedRights2 = tL_chatBannedRights2 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights2;
                tL_chatBannedRights3 = tL_chatBannedRights3 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights3;
                if (tL_chatBannedRights2.send_messages != tL_chatBannedRights3.send_messages) {
                    sb4.append('\n');
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_messages ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendMessages));
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
                    sb4.append(!tL_chatBannedRights3.send_stickers ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendStickers));
                }
                if (tL_chatBannedRights2.send_media != tL_chatBannedRights3.send_media) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_media ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendMedia));
                }
                if (tL_chatBannedRights2.send_polls != tL_chatBannedRights3.send_polls) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.send_polls ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendPolls));
                }
                if (tL_chatBannedRights2.embed_links != tL_chatBannedRights3.embed_links) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.embed_links ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendEmbed));
                }
                if (tL_chatBannedRights2.change_info != tL_chatBannedRights3.change_info) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.change_info ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedChangeInfo));
                }
                if (tL_chatBannedRights2.invite_users != tL_chatBannedRights3.invite_users) {
                    if (!z6) {
                        sb4.append('\n');
                        z6 = true;
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.invite_users ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedInviteUsers));
                }
                if (tL_chatBannedRights2.pin_messages != tL_chatBannedRights3.pin_messages) {
                    if (!z6) {
                        sb4.append('\n');
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.pin_messages ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedPinMessages));
                }
                if (tL_chatBannedRights2.edit_rank != tL_chatBannedRights3.edit_rank) {
                    if (!z6) {
                        sb4.append('\n');
                    }
                    sb4.append('\n');
                    sb4.append(!tL_chatBannedRights3.edit_rank ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                    sb4.append(' ');
                    sb4.append(LocaleController.getString(C2888R.string.EventLogRestrictedEditRank));
                }
                this.messageText = sb4.toString();
            } else {
                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleBan tL_channelAdminLogEventActionParticipantToggleBan2 = (TLRPC.TL_channelAdminLogEventActionParticipantToggleBan) channelAdminLogEventAction;
                    TLRPC.TL_message tL_message4 = new TLRPC.TL_message();
                    this.messageOwner = tL_message4;
                    tL_message4.realId = -1;
                    long peerId3 = getPeerId(tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.peer);
                    if (peerId3 > 0) {
                        chat8 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId3));
                    } else {
                        chat8 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId3));
                    }
                    TLRPC.TL_chatBannedRights tL_chatBannedRights4 = tL_channelAdminLogEventActionParticipantToggleBan2.prev_participant.banned_rights;
                    TLRPC.TL_chatBannedRights tL_chatBannedRights5 = tL_channelAdminLogEventActionParticipantToggleBan2.new_participant.banned_rights;
                    if (chat.megagroup && (tL_chatBannedRights5 == null || !tL_chatBannedRights5.view_messages || (tL_chatBannedRights4 != null && tL_chatBannedRights5.until_date != tL_chatBannedRights4.until_date))) {
                        if (tL_chatBannedRights5 != null && !AndroidUtilities.isBannedForever(tL_chatBannedRights5)) {
                            sb2 = new StringBuilder();
                            int i8 = tL_chatBannedRights5.until_date - tL_channelAdminLogEvent3.date;
                            int i9 = ((i8 / 60) / 60) / 24;
                            int i10 = i8 - (i9 * 86400);
                            tL_chatBannedRights = tL_chatBannedRights4;
                            int i11 = (i10 / 60) / 60;
                            int i12 = (i10 - (i11 * 3600)) / 60;
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                            int i13 = 0;
                            int i14 = 0;
                            while (i13 < 3) {
                                if (i13 == 0) {
                                    if (i9 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Days", i9, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i14 + 1;
                                    }
                                    i3 = i14;
                                    str3 = null;
                                } else if (i13 == 1) {
                                    if (i11 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Hours", i11, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i14 + 1;
                                    }
                                    i3 = i14;
                                    str3 = null;
                                } else {
                                    if (i12 != 0) {
                                        pluralString3 = LocaleController.formatPluralString("Minutes", i12, new Object[0]);
                                        str3 = pluralString3;
                                        i3 = i14 + 1;
                                    }
                                    i3 = i14;
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
                                i13++;
                                i14 = i3;
                            }
                        } else {
                            tL_chatBannedRights = tL_chatBannedRights4;
                            str = _UrlKt.FRAGMENT_ENCODE_SET;
                            sb2 = new StringBuilder(LocaleController.getString(C2888R.string.UserRestrictionsUntilForever));
                        }
                        String string5 = LocaleController.getString(C2888R.string.EventLogRestrictedUntil);
                        StringBuilder sb5 = new StringBuilder(String.format(string5, getUserName(chat8, this.messageOwner.entities, string5.indexOf("%1$s")), sb2));
                        TLRPC.TL_chatBannedRights tL_chatBannedRights6 = tL_chatBannedRights == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights;
                        tL_chatBannedRights5 = tL_chatBannedRights5 == null ? new TLRPC.TL_chatBannedRights() : tL_chatBannedRights5;
                        if (tL_chatBannedRights6.view_messages != tL_chatBannedRights5.view_messages) {
                            sb5.append('\n');
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.view_messages ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedReadMessages));
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
                            sb5.append(!tL_chatBannedRights5.send_messages ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendMessages));
                        }
                        if (tL_chatBannedRights6.send_stickers != tL_chatBannedRights5.send_stickers || tL_chatBannedRights6.send_inline != tL_chatBannedRights5.send_inline || tL_chatBannedRights6.send_gifs != tL_chatBannedRights5.send_gifs || tL_chatBannedRights6.send_games != tL_chatBannedRights5.send_games) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_stickers ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendStickers));
                        }
                        if (tL_chatBannedRights6.send_media != tL_chatBannedRights5.send_media) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_media ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendMedia));
                        }
                        if (tL_chatBannedRights6.send_polls != tL_chatBannedRights5.send_polls) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.send_polls ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendPolls));
                        }
                        if (tL_chatBannedRights6.embed_links != tL_chatBannedRights5.embed_links) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.embed_links ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedSendEmbed));
                        }
                        if (tL_chatBannedRights6.change_info != tL_chatBannedRights5.change_info) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.change_info ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedChangeInfo));
                        }
                        if (tL_chatBannedRights6.invite_users != tL_chatBannedRights5.invite_users) {
                            if (!z5) {
                                sb5.append('\n');
                                z5 = true;
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.invite_users ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedInviteUsers));
                        }
                        if (tL_chatBannedRights6.pin_messages != tL_chatBannedRights5.pin_messages) {
                            if (!z5) {
                                sb5.append('\n');
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.pin_messages ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedPinMessages));
                        }
                        if (tL_chatBannedRights6.edit_rank != tL_chatBannedRights5.edit_rank) {
                            if (!z5) {
                                sb5.append('\n');
                            }
                            sb5.append('\n');
                            sb5.append(!tL_chatBannedRights5.edit_rank ? SignatureVisitor.EXTENDS : SignatureVisitor.SUPER);
                            sb5.append(' ');
                            sb5.append(LocaleController.getString(C2888R.string.EventLogRestrictedEditRank));
                        }
                        this.messageText = sb5.toString();
                    } else {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                        if (tL_chatBannedRights5 != null && (tL_chatBannedRights4 == null || tL_chatBannedRights5.view_messages)) {
                            string3 = LocaleController.getString(C2888R.string.EventLogChannelRestricted);
                        } else {
                            string3 = LocaleController.getString(C2888R.string.EventLogChannelUnrestricted);
                        }
                        this.messageText = String.format(string3, getUserName(chat8, this.messageOwner.entities, string3.indexOf("%1$s")));
                    }
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionUpdatePinned) {
                        TLRPC.TL_channelAdminLogEventActionUpdatePinned tL_channelAdminLogEventActionUpdatePinned = (TLRPC.TL_channelAdminLogEventActionUpdatePinned) channelAdminLogEventAction;
                        tL_message = tL_channelAdminLogEventActionUpdatePinned.message;
                        if (user2 != null && user2.f1825id == 136817688 && (messageFwdHeader = tL_message.fwd_from) != null && (messageFwdHeader.from_id instanceof TLRPC.TL_peerChannel)) {
                            TLRPC.Chat chat10 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tL_channelAdminLogEventActionUpdatePinned.message.fwd_from.from_id.channel_id));
                            TLRPC.Message message2 = tL_channelAdminLogEventActionUpdatePinned.message;
                            if ((message2 instanceof TLRPC.TL_messageEmpty) || !message2.pinned) {
                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogUnpinnedMessages), "un1", chat10);
                            } else {
                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogPinnedMessages), "un1", chat10);
                            }
                        } else if ((tL_message instanceof TLRPC.TL_messageEmpty) || !tL_message.pinned) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogUnpinnedMessages), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogPinnedMessages), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStopPoll) {
                        tL_message = ((TLRPC.TL_channelAdminLogEventActionStopPoll) channelAdminLogEventAction).message;
                        if ((getMedia(tL_message) instanceof TLRPC.TL_messageMediaPoll) && ((TLRPC.TL_messageMediaPoll) getMedia(tL_message)).poll.quiz) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogStopQuiz), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogStopPoll), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatures) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleSignatures) channelAdminLogEventAction).new_value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledSignaturesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledSignaturesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantSubExtend) {
                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogSubExtend), "un1", user2);
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleSignatureProfiles) channelAdminLogEventAction).value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledSignaturesProfilesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledSignaturesProfilesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleInvites) {
                        if (((TLRPC.TL_channelAdminLogEventActionToggleInvites) channelAdminLogEventAction).new_value) {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledInvitesOn), "un1", user2);
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledInvitesOff), "un1", user2);
                        }
                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                        tL_message = ((TLRPC.TL_channelAdminLogEventActionDeleteMessage) channelAdminLogEventAction).message;
                        if (user2 != null && user2.f1825id == MessagesController.getInstance(this.currentAccount).telegramAntispamUserId) {
                            this.messageText = LocaleController.getString(C2888R.string.EventLogDeletedMessages).replace("un1", UserObject.getUserName(user2));
                        } else {
                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogDeletedMessages), "un1", user2);
                        }
                    } else {
                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) {
                            long j = ((TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) channelAdminLogEventAction).new_value;
                            long j2 = ((TLRPC.TL_channelAdminLogEventActionChangeLinkedChat) channelAdminLogEventAction).prev_value;
                            chat3 = chat;
                            if (chat3.megagroup) {
                                if (j == 0) {
                                    TLRPC.Chat chat11 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2));
                                    CharSequence charSequenceReplaceWithLink2 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedLinkedChannel), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink2;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink2, "un2", chat11);
                                } else {
                                    TLRPC.Chat chat12 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                                    CharSequence charSequenceReplaceWithLink3 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChangedLinkedChannel), "un1", user2);
                                    this.messageText = charSequenceReplaceWithLink3;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink3, "un2", chat12);
                                }
                            } else if (j == 0) {
                                TLRPC.Chat chat13 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j2));
                                CharSequence charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedLinkedGroup), "un1", user2);
                                this.messageText = charSequenceReplaceWithLink4;
                                this.messageText = replaceWithLink(charSequenceReplaceWithLink4, "un2", chat13);
                            } else {
                                TLRPC.Chat chat14 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                                CharSequence charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChangedLinkedGroup), "un1", user2);
                                this.messageText = charSequenceReplaceWithLink5;
                                this.messageText = replaceWithLink(charSequenceReplaceWithLink5, "un2", chat14);
                            }
                        } else {
                            chat3 = chat;
                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) {
                                if (((TLRPC.TL_channelAdminLogEventActionTogglePreHistoryHidden) channelAdminLogEventAction).new_value) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledInvitesHistoryOff), "un1", user2);
                                } else {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledInvitesHistoryOn), "un1", user2);
                                }
                            } else {
                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAbout) {
                                    this.messageText = replaceWithLink(LocaleController.getString(chat3.megagroup ? C2888R.string.EventLogEditedGroupDescription : C2888R.string.EventLogEditedChannelDescription), "un1", user2);
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
                                        webPage2.site_name = LocaleController.getString(C2888R.string.EventLogPreviousGroupDescription);
                                        tL_message.media.webpage.description = ((TLRPC.TL_channelAdminLogEventActionChangeAbout) tL_channelAdminLogEvent2.action).prev_value;
                                    } else {
                                        str2 = str;
                                        tL_message.media = new TLRPC.TL_messageMediaEmpty();
                                    }
                                    str = str2;
                                } else {
                                    tL_channelAdminLogEvent2 = tL_channelAdminLogEvent;
                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeTheme) {
                                        this.messageText = replaceWithLink(LocaleController.getString(chat3.megagroup ? C2888R.string.EventLogEditedGroupTheme : C2888R.string.EventLogEditedChannelTheme), "un1", user2);
                                        TLRPC.TL_message tL_message5 = new TLRPC.TL_message();
                                        tL_message5.out = false;
                                        tL_message5.unread = false;
                                        TLRPC.TL_peerUser tL_peerUser2 = new TLRPC.TL_peerUser();
                                        tL_message5.from_id = tL_peerUser2;
                                        tL_peerUser2.user_id = tL_channelAdminLogEvent2.user_id;
                                        tL_message5.peer_id = tL_peerChannel;
                                        tL_message5.date = tL_channelAdminLogEvent2.date;
                                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction3 = tL_channelAdminLogEvent2.action;
                                        tL_message5.message = ((TLRPC.TL_channelAdminLogEventActionChangeTheme) channelAdminLogEventAction3).new_value;
                                        if (!TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeTheme) channelAdminLogEventAction3).prev_value)) {
                                            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage2 = new TLRPC.TL_messageMediaWebPage();
                                            tL_message5.media = tL_messageMediaWebPage2;
                                            tL_messageMediaWebPage2.webpage = new TLRPC.TL_webPage();
                                            TLRPC.WebPage webPage3 = tL_message5.media.webpage;
                                            webPage3.flags = 10;
                                            webPage3.display_url = str;
                                            webPage3.url = str;
                                            webPage3.site_name = LocaleController.getString(C2888R.string.EventLogPreviousGroupTheme);
                                            tL_message5.media.webpage.description = ((TLRPC.TL_channelAdminLogEventActionChangeTheme) tL_channelAdminLogEvent2.action).prev_value;
                                        } else {
                                            tL_message5.media = new TLRPC.TL_messageMediaEmpty();
                                        }
                                        str = str;
                                        tL_message = tL_message5;
                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeUsername) {
                                        String str6 = ((TLRPC.TL_channelAdminLogEventActionChangeUsername) channelAdminLogEventAction).new_value;
                                        if (TextUtils.isEmpty(str6)) {
                                            this.messageText = replaceWithLink(LocaleController.getString(chat3.megagroup ? C2888R.string.EventLogRemovedGroupLink : C2888R.string.EventLogRemovedChannelLink), "un1", user2);
                                        } else {
                                            this.messageText = replaceWithLink(LocaleController.getString(chat3.megagroup ? C2888R.string.EventLogChangedGroupLink : C2888R.string.EventLogChangedChannelLink), "un1", user2);
                                        }
                                        TLRPC.TL_message tL_message6 = new TLRPC.TL_message();
                                        tL_message6.out = false;
                                        tL_message6.unread = false;
                                        TLRPC.TL_peerUser tL_peerUser3 = new TLRPC.TL_peerUser();
                                        tL_message6.from_id = tL_peerUser3;
                                        tL_peerUser3.user_id = tL_channelAdminLogEvent2.user_id;
                                        tL_message6.peer_id = tL_peerChannel;
                                        tL_message6.date = tL_channelAdminLogEvent2.date;
                                        if (!TextUtils.isEmpty(str6)) {
                                            tL_message6.message = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + str6;
                                        } else {
                                            tL_message6.message = str;
                                        }
                                        TLRPC.TL_messageEntityUrl tL_messageEntityUrl = new TLRPC.TL_messageEntityUrl();
                                        tL_messageEntityUrl.offset = 0;
                                        tL_messageEntityUrl.length = tL_message6.message.length();
                                        tL_message6.entities.add(tL_messageEntityUrl);
                                        if (!TextUtils.isEmpty(((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent2.action).prev_value)) {
                                            TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage3 = new TLRPC.TL_messageMediaWebPage();
                                            tL_message6.media = tL_messageMediaWebPage3;
                                            tL_messageMediaWebPage3.webpage = new TLRPC.TL_webPage();
                                            TLRPC.WebPage webPage4 = tL_message6.media.webpage;
                                            webPage4.flags = 10;
                                            webPage4.display_url = str;
                                            webPage4.url = str;
                                            webPage4.site_name = LocaleController.getString(C2888R.string.EventLogPreviousLink);
                                            tL_message6.media.webpage.description = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ((TLRPC.TL_channelAdminLogEventActionChangeUsername) tL_channelAdminLogEvent2.action).prev_value;
                                        } else {
                                            tL_message6.media = new TLRPC.TL_messageMediaEmpty();
                                        }
                                        str = str;
                                        tL_message = tL_message6;
                                    } else {
                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditMessage) {
                                            TLRPC.Message tL_message7 = new TLRPC.TL_message();
                                            tL_message7.out = false;
                                            tL_message7.unread = false;
                                            tL_message7.peer_id = tL_peerChannel;
                                            tL_message7.date = tL_channelAdminLogEvent2.date;
                                            TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction4 = tL_channelAdminLogEvent2.action;
                                            TLRPC.Message message3 = ((TLRPC.TL_channelAdminLogEventActionEditMessage) channelAdminLogEventAction4).new_message;
                                            TLRPC.Message message4 = ((TLRPC.TL_channelAdminLogEventActionEditMessage) channelAdminLogEventAction4).prev_message;
                                            if (message4 != null) {
                                                tL_message7.reply_to = message4.reply_to;
                                                tL_message7.f1686id = message4.f1686id;
                                            } else if (message3 != null) {
                                                tL_message7.reply_to = message3.reply_to;
                                                tL_message7.f1686id = message3.f1686id;
                                            }
                                            if (message3 != null && (peer = message3.from_id) != null) {
                                                tL_message7.from_id = peer;
                                            } else {
                                                TLRPC.TL_peerUser tL_peerUser4 = new TLRPC.TL_peerUser();
                                                tL_message7.from_id = tL_peerUser4;
                                                tL_peerUser4.user_id = tL_channelAdminLogEvent2.user_id;
                                            }
                                            if (getMedia(message3) != null && !(getMedia(message3) instanceof TLRPC.TL_messageMediaEmpty) && !(getMedia(message3) instanceof TLRPC.TL_messageMediaWebPage)) {
                                                boolean zEquals = TextUtils.equals(message3.message, message4.message);
                                                TLRPC.MessageMedia media = getMedia(message3);
                                                TLRPC.MessageMedia media2 = getMedia(message4);
                                                if (media2 == null) {
                                                    z3 = false;
                                                    z4 = true;
                                                } else {
                                                    z3 = (media.getClass() == media2.getClass() && ((photo = media.photo) == null || (photo2 = media2.photo) == null || photo.f1692id == photo2.f1692id) && (media.document == null || media2.document == null || getMedia(message3).document.f1668id == media2.document.f1668id)) ? false : true;
                                                    z4 = false;
                                                }
                                                if (z4) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogAddedMedia), "un1", user2);
                                                } else if (z3 && !zEquals) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedMediaCaption), "un1", user2);
                                                } else if (!zEquals) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedCaption), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedMedia), "un1", user2);
                                                }
                                                TLRPC.MessageMedia media3 = getMedia(message3);
                                                tL_message7.media = media3;
                                                if (!zEquals) {
                                                    media3.webpage = new TLRPC.TL_webPage();
                                                    tL_message7.media.webpage.site_name = LocaleController.getString(C2888R.string.EventLogOriginalCaption);
                                                    if (TextUtils.isEmpty(message4.message)) {
                                                        tL_message7.media.webpage.description = LocaleController.getString(C2888R.string.EventLogOriginalCaptionEmpty);
                                                        arrayList3 = null;
                                                        tL_message7.reply_markup = message3.reply_markup;
                                                        webPage = tL_message7.media.webpage;
                                                        if (webPage != null) {
                                                        }
                                                        str = str;
                                                        tL_message = tL_message7;
                                                        arrayList2 = arrayList3;
                                                        tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                        chat2 = chat;
                                                    } else {
                                                        tL_message7.media.webpage.description = message4.message;
                                                        arrayList3 = message4.entities;
                                                        tL_message7.reply_markup = message3.reply_markup;
                                                        webPage = tL_message7.media.webpage;
                                                        if (webPage != null) {
                                                        }
                                                        str = str;
                                                        tL_message = tL_message7;
                                                        arrayList2 = arrayList3;
                                                        tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                        chat2 = chat;
                                                    }
                                                } else {
                                                    arrayList3 = null;
                                                    tL_message7.reply_markup = message3.reply_markup;
                                                    webPage = tL_message7.media.webpage;
                                                    if (webPage != null) {
                                                    }
                                                    str = str;
                                                    tL_message = tL_message7;
                                                    arrayList2 = arrayList3;
                                                    tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                    chat2 = chat;
                                                }
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditedMessages), "un1", user2);
                                                if (message3.action instanceof TLRPC.TL_messageActionGroupCall) {
                                                    message3.media = new TLRPC.TL_messageMediaEmpty();
                                                    tL_message7 = message3;
                                                } else {
                                                    tL_message7.message = message3.message;
                                                    tL_message7.entities = message3.entities;
                                                    TLRPC.TL_messageMediaWebPage tL_messageMediaWebPage4 = new TLRPC.TL_messageMediaWebPage();
                                                    tL_message7.media = tL_messageMediaWebPage4;
                                                    tL_messageMediaWebPage4.webpage = new TLRPC.TL_webPage();
                                                    tL_message7.media.webpage.site_name = LocaleController.getString(C2888R.string.EventLogOriginalMessages);
                                                    if (TextUtils.isEmpty(message4.message)) {
                                                        tL_message7.media.webpage.description = LocaleController.getString(C2888R.string.EventLogOriginalCaptionEmpty);
                                                    } else {
                                                        tL_message7.media.webpage.description = message4.message;
                                                        arrayList3 = message4.entities;
                                                        tL_message7.reply_markup = message3.reply_markup;
                                                        webPage = tL_message7.media.webpage;
                                                        if (webPage != null) {
                                                            webPage.flags = 10;
                                                            webPage.display_url = str;
                                                            webPage.url = str;
                                                        }
                                                        str = str;
                                                        tL_message = tL_message7;
                                                        arrayList2 = arrayList3;
                                                        tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                        chat2 = chat;
                                                    }
                                                }
                                                arrayList3 = null;
                                                tL_message7.reply_markup = message3.reply_markup;
                                                webPage = tL_message7.media.webpage;
                                                if (webPage != null) {
                                                }
                                                str = str;
                                                tL_message = tL_message7;
                                                arrayList2 = arrayList3;
                                                tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                chat2 = chat;
                                            }
                                        } else {
                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) {
                                                TLRPC.InputStickerSet inputStickerSet = ((TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) channelAdminLogEventAction).new_stickerset;
                                                TLRPC.InputStickerSet inputStickerSet2 = ((TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet) channelAdminLogEventAction).new_stickerset;
                                                if (inputStickerSet == null || (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedEmojiPack), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChangedEmojiPack), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeStickerSet) {
                                                TLRPC.InputStickerSet inputStickerSet3 = ((TLRPC.TL_channelAdminLogEventActionChangeStickerSet) channelAdminLogEventAction).new_stickerset;
                                                if (inputStickerSet3 == null || (inputStickerSet3 instanceof TLRPC.TL_inputStickerSetEmpty)) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedStickersSet), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogChangedStickersSet), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeLocation) {
                                                TLRPC.ChannelLocation channelLocation = ((TLRPC.TL_channelAdminLogEventActionChangeLocation) channelAdminLogEventAction).new_value;
                                                if (channelLocation instanceof TLRPC.TL_channelLocationEmpty) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogRemovedLocation), "un1", user2);
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogChangedLocation", C2888R.string.EventLogChangedLocation, ((TLRPC.TL_channelLocation) channelLocation).address), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleSlowMode) {
                                                int i15 = ((TLRPC.TL_channelAdminLogEventActionToggleSlowMode) channelAdminLogEventAction).new_value;
                                                if (i15 == 0) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogToggledSlowmodeOff), "un1", user2);
                                                } else {
                                                    if (i15 < 60) {
                                                        c4 = 0;
                                                        pluralString2 = LocaleController.formatPluralString("Seconds", i15, new Object[0]);
                                                    } else {
                                                        c4 = 0;
                                                        if (i15 < 3600) {
                                                            pluralString2 = LocaleController.formatPluralString("Minutes", i15 / 60, new Object[0]);
                                                        } else {
                                                            pluralString2 = LocaleController.formatPluralString("Hours", (i15 / 60) / 60, new Object[0]);
                                                        }
                                                    }
                                                    int i16 = C2888R.string.EventLogToggledSlowmodeOn;
                                                    Object[] objArr = new Object[1];
                                                    objArr[c4] = pluralString2;
                                                    this.messageText = replaceWithLink(LocaleController.formatString(i16, objArr), "un1", user2);
                                                }
                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) {
                                                this.messageText = replaceWithLink(LocaleController.getString(((TLRPC.TL_channelAdminLogEventActionToggleAutotranslation) channelAdminLogEventAction).new_value ? C2888R.string.EventLogToggledAutotranslationOn : C2888R.string.EventLogToggledAutotranslationOff), "un1", user2);
                                            } else {
                                                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionStartGroupCall) {
                                                    if (ChatObject.isChannel(chat)) {
                                                        chat4 = chat;
                                                        if (!chat4.megagroup || chat4.gigagroup) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogStartedLiveStream), "un1", user2);
                                                        }
                                                    } else {
                                                        chat4 = chat;
                                                    }
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogStartedVoiceChat), "un1", user2);
                                                } else {
                                                    chat4 = chat;
                                                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDiscardGroupCall) {
                                                        if (ChatObject.isChannel(chat4) && (!chat4.megagroup || chat4.gigagroup)) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEndedLiveStream), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEndedVoiceChat), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantMute) {
                                                        long peerId4 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantMute) channelAdminLogEventAction).participant.peer);
                                                        if (peerId4 > 0) {
                                                            chat7 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId4));
                                                        } else {
                                                            chat7 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId4));
                                                        }
                                                        CharSequence charSequenceReplaceWithLink6 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogVoiceChatMuted), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink6;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink6, "un2", chat7);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantUnmute) {
                                                        long peerId5 = getPeerId(((TLRPC.TL_channelAdminLogEventActionParticipantUnmute) channelAdminLogEventAction).participant.peer);
                                                        if (peerId5 > 0) {
                                                            chat6 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId5));
                                                        } else {
                                                            chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId5));
                                                        }
                                                        CharSequence charSequenceReplaceWithLink7 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogVoiceChatUnmuted), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink7;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink7, "un2", chat6);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) {
                                                        if (((TLRPC.TL_channelAdminLogEventActionToggleGroupCallSetting) channelAdminLogEventAction).join_muted) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogVoiceChatNotAllowedToSpeak), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogVoiceChatAllowedToSpeak), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) {
                                                        TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite tL_channelAdminLogEventActionParticipantJoinByInvite = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) channelAdminLogEventAction;
                                                        if (tL_channelAdminLogEventActionParticipantJoinByInvite.via_chatlist) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat4) ? C2888R.string.ActionInviteChannelUserFolder : C2888R.string.ActionInviteUserFolder), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat4) ? C2888R.string.ActionInviteChannelUser : C2888R.string.ActionInviteUser), "un1", user2);
                                                        }
                                                        TLRPC.TL_chatInviteExported tL_chatInviteExported = tL_channelAdminLogEventActionParticipantJoinByInvite.invite;
                                                        if (tL_chatInviteExported != null && !TextUtils.isEmpty(tL_chatInviteExported.link)) {
                                                            this.messageText = TextUtils.concat(this.messageText, " ", tL_channelAdminLogEventActionParticipantJoinByInvite.invite.link);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleNoForwards) {
                                                        TLRPC.TL_channelAdminLogEventActionToggleNoForwards tL_channelAdminLogEventActionToggleNoForwards = (TLRPC.TL_channelAdminLogEventActionToggleNoForwards) channelAdminLogEventAction;
                                                        boolean z7 = ChatObject.isChannel(chat4) && !chat4.megagroup;
                                                        if (tL_channelAdminLogEventActionToggleNoForwards.new_value) {
                                                            if (z7) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionForwardsRestrictedChannel), "un1", user2);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionForwardsRestrictedGroup), "un1", user2);
                                                            }
                                                        } else if (z7) {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionForwardsEnabledChannel), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionForwardsEnabledGroup), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) {
                                                        CharSequence charSequenceReplaceWithLink8 = replaceWithLink(LocaleController.formatString(C2888R.string.ActionDeletedInviteLinkClickable, new Object[0]), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink8;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink8, "un2", ((TLRPC.TL_channelAdminLogEventActionExportedInviteDelete) channelAdminLogEventAction).invite);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) {
                                                        TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke tL_channelAdminLogEventActionExportedInviteRevoke = (TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke) channelAdminLogEventAction;
                                                        CharSequence charSequenceReplaceWithLink9 = replaceWithLink(LocaleController.formatString(C2888R.string.ActionRevokedInviteLinkClickable, tL_channelAdminLogEventActionExportedInviteRevoke.invite.link), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink9;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink9, "un2", tL_channelAdminLogEventActionExportedInviteRevoke.invite);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) {
                                                        TLRPC.TL_channelAdminLogEventActionExportedInviteEdit tL_channelAdminLogEventActionExportedInviteEdit = (TLRPC.TL_channelAdminLogEventActionExportedInviteEdit) channelAdminLogEventAction;
                                                        String str7 = tL_channelAdminLogEventActionExportedInviteEdit.prev_invite.link;
                                                        if (str7 != null && str7.equals(tL_channelAdminLogEventActionExportedInviteEdit.new_invite.link)) {
                                                            this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionEditedInviteLinkToSameClickable, new Object[0]), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionEditedInviteLinkClickable, new Object[0]), "un1", user2);
                                                        }
                                                        CharSequence charSequenceReplaceWithLink10 = replaceWithLink(this.messageText, "un2", tL_channelAdminLogEventActionExportedInviteEdit.prev_invite);
                                                        this.messageText = charSequenceReplaceWithLink10;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink10, "un3", tL_channelAdminLogEventActionExportedInviteEdit.new_invite);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantVolume) {
                                                        TLRPC.TL_channelAdminLogEventActionParticipantVolume tL_channelAdminLogEventActionParticipantVolume = (TLRPC.TL_channelAdminLogEventActionParticipantVolume) channelAdminLogEventAction;
                                                        long peerId6 = getPeerId(tL_channelAdminLogEventActionParticipantVolume.participant.peer);
                                                        if (peerId6 > 0) {
                                                            chat5 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerId6));
                                                        } else {
                                                            chat5 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerId6));
                                                        }
                                                        double participantVolume = ((double) ChatObject.getParticipantVolume(tL_channelAdminLogEventActionParticipantVolume.participant)) / 100.0d;
                                                        CharSequence charSequenceReplaceWithLink11 = replaceWithLink(LocaleController.formatString("ActionVolumeChanged", C2888R.string.ActionVolumeChanged, Integer.valueOf((int) (participantVolume > 0.0d ? Math.max(participantVolume, 1.0d) : 0.0d))), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink11;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink11, "un2", chat5);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) {
                                                        TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL tL_channelAdminLogEventActionChangeHistoryTTL = (TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) channelAdminLogEventAction;
                                                        if (!chat4.megagroup) {
                                                            int i17 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                            if (i17 != 0) {
                                                                this.messageText = LocaleController.formatString("ActionTTLChannelChanged", C2888R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i17));
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionTTLChannelDisabled);
                                                            }
                                                        } else {
                                                            int i18 = tL_channelAdminLogEventActionChangeHistoryTTL.new_value;
                                                            if (i18 == 0) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionTTLDisabled), "un1", user2);
                                                            } else {
                                                                if (i18 > 86400) {
                                                                    c3 = 0;
                                                                    pluralString = LocaleController.formatPluralString("Days", i18 / 86400, new Object[0]);
                                                                } else {
                                                                    c3 = 0;
                                                                    if (i18 >= 3600) {
                                                                        pluralString = LocaleController.formatPluralString("Hours", i18 / 3600, new Object[0]);
                                                                    } else if (i18 >= 60) {
                                                                        pluralString = LocaleController.formatPluralString("Minutes", i18 / 60, new Object[0]);
                                                                    } else {
                                                                        pluralString = LocaleController.formatPluralString("Seconds", i18, new Object[0]);
                                                                    }
                                                                }
                                                                int i19 = C2888R.string.ActionTTLChanged;
                                                                Object[] objArr2 = new Object[1];
                                                                objArr2[c3] = pluralString;
                                                                this.messageText = replaceWithLink(LocaleController.formatString(i19, objArr2), "un1", user2);
                                                            }
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) {
                                                        TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest tL_channelAdminLogEventActionParticipantJoinByRequest = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest) channelAdminLogEventAction;
                                                        TLRPC.ExportedChatInvite exportedChatInvite = tL_channelAdminLogEventActionParticipantJoinByRequest.invite;
                                                        if (((exportedChatInvite instanceof TLRPC.TL_chatInviteExported) && "https://t.me/+PublicChat".equals(((TLRPC.TL_chatInviteExported) exportedChatInvite).link)) || (tL_channelAdminLogEventActionParticipantJoinByRequest.invite instanceof TLRPC.TL_chatInvitePublicJoinRequests)) {
                                                            CharSequence charSequenceReplaceWithLink12 = replaceWithLink(LocaleController.getString(C2888R.string.JoinedViaRequestApproved), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink12;
                                                            this.messageText = replaceWithLink(charSequenceReplaceWithLink12, "un2", MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by)));
                                                        } else {
                                                            CharSequence charSequenceReplaceWithLink13 = replaceWithLink(LocaleController.getString(C2888R.string.JoinedViaInviteLinkApproved), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink13;
                                                            CharSequence charSequenceReplaceWithLink14 = replaceWithLink(charSequenceReplaceWithLink13, "un2", tL_channelAdminLogEventActionParticipantJoinByRequest.invite);
                                                            this.messageText = charSequenceReplaceWithLink14;
                                                            this.messageText = replaceWithLink(charSequenceReplaceWithLink14, "un3", MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantJoinByRequest.approved_by)));
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionSendMessage) {
                                                        TLRPC.Message message5 = ((TLRPC.TL_channelAdminLogEventActionSendMessage) channelAdminLogEventAction).message;
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogSendMessages), "un1", user2);
                                                        str = str;
                                                        tL_message = message5;
                                                        arrayList2 = null;
                                                        chat2 = chat4;
                                                        tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantEditRank) {
                                                        TLRPC.TL_channelAdminLogEventActionParticipantEditRank tL_channelAdminLogEventActionParticipantEditRank = (TLRPC.TL_channelAdminLogEventActionParticipantEditRank) channelAdminLogEventAction;
                                                        if (tL_channelAdminLogEventActionParticipantEditRank.user_id == tL_channelAdminLogEvent2.user_id) {
                                                            if (!TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                                String string6 = LocaleController.formatString(C2888R.string.EventLogRankSelfEdit, tL_channelAdminLogEventActionParticipantEditRank.prev_rank, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                                this.messageText = string6;
                                                                this.messageText = replaceWithLink(string6, "un1", user2);
                                                            } else if (TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                                String string7 = LocaleController.formatString(C2888R.string.EventLogRankSelfAdd, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                                this.messageText = string7;
                                                                this.messageText = replaceWithLink(string7, "un1", user2);
                                                            } else {
                                                                String string8 = LocaleController.formatString(C2888R.string.EventLogRankSelfRemove, tL_channelAdminLogEventActionParticipantEditRank.prev_rank);
                                                                this.messageText = string8;
                                                                this.messageText = replaceWithLink(string8, "un1", user2);
                                                            }
                                                        } else {
                                                            TLRPC.User user3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_channelAdminLogEventActionParticipantEditRank.user_id));
                                                            if (!TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                                String string9 = LocaleController.formatString(C2888R.string.EventLogRankEdit, tL_channelAdminLogEventActionParticipantEditRank.prev_rank, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                                this.messageText = string9;
                                                                CharSequence charSequenceReplaceWithLink15 = replaceWithLink(string9, "un1", user2);
                                                                this.messageText = charSequenceReplaceWithLink15;
                                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink15, "un2", user3);
                                                            } else if (TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.prev_rank) && !TextUtils.isEmpty(tL_channelAdminLogEventActionParticipantEditRank.new_rank)) {
                                                                String string10 = LocaleController.formatString(C2888R.string.EventLogRankAdd, tL_channelAdminLogEventActionParticipantEditRank.new_rank);
                                                                this.messageText = string10;
                                                                CharSequence charSequenceReplaceWithLink16 = replaceWithLink(string10, "un1", user2);
                                                                this.messageText = charSequenceReplaceWithLink16;
                                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink16, "un2", user3);
                                                            } else {
                                                                String string11 = LocaleController.formatString(C2888R.string.EventLogRankRemove, tL_channelAdminLogEventActionParticipantEditRank.prev_rank);
                                                                this.messageText = string11;
                                                                CharSequence charSequenceReplaceWithLink17 = replaceWithLink(string11, "un1", user2);
                                                                this.messageText = charSequenceReplaceWithLink17;
                                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink17, "un2", user3);
                                                            }
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) {
                                                        TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions tL_channelAdminLogEventActionChangeAvailableReactions = (TLRPC.TL_channelAdminLogEventActionChangeAvailableReactions) channelAdminLogEventAction;
                                                        boolean z8 = (tL_channelAdminLogEventActionChangeAvailableReactions.prev_value instanceof TLRPC.TL_chatReactionsSome) && (tL_channelAdminLogEventActionChangeAvailableReactions.new_value instanceof TLRPC.TL_chatReactionsSome);
                                                        CharSequence stringFrom = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.new_value);
                                                        if (z8) {
                                                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString(C2888R.string.ActionReactionsChangedList, "**new**"), "un1", user2));
                                                            int iIndexOf = spannableStringBuilder.toString().indexOf("**new**");
                                                            if (iIndexOf > 0) {
                                                                spannableStringBuilder.replace(iIndexOf, iIndexOf + 7, stringFrom);
                                                            }
                                                            this.messageText = spannableStringBuilder;
                                                        } else {
                                                            CharSequence stringFrom2 = getStringFrom(tL_channelAdminLogEventActionChangeAvailableReactions.prev_value);
                                                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(replaceWithLink(LocaleController.formatString(C2888R.string.ActionReactionsChanged, "**old**", "**new**"), "un1", user2));
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
                                                        ArrayList<String> arrayList5 = tL_channelAdminLogEventActionChangeUsernames.prev_value;
                                                        ArrayList<String> arrayList6 = tL_channelAdminLogEventActionChangeUsernames.new_value;
                                                        this.messageText = null;
                                                        if (arrayList5 != null && arrayList6 != null) {
                                                            if (arrayList6.size() + 1 == arrayList5.size()) {
                                                                int i20 = 0;
                                                                String str8 = null;
                                                                while (true) {
                                                                    if (i20 >= arrayList5.size()) {
                                                                        break;
                                                                    }
                                                                    String str9 = arrayList5.get(i20);
                                                                    if (!arrayList6.contains(str9)) {
                                                                        if (str8 != null) {
                                                                            str8 = null;
                                                                            break;
                                                                        }
                                                                        str8 = str9;
                                                                    }
                                                                    i20++;
                                                                }
                                                                if (str8 != null) {
                                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogDeactivatedUsername", C2888R.string.EventLogDeactivatedUsername, "@" + str8), "un1", user2);
                                                                }
                                                            } else if (arrayList5.size() + 1 == arrayList6.size()) {
                                                                int i21 = 0;
                                                                String str10 = null;
                                                                while (true) {
                                                                    if (i21 >= arrayList6.size()) {
                                                                        break;
                                                                    }
                                                                    String str11 = arrayList6.get(i21);
                                                                    if (!arrayList5.contains(str11)) {
                                                                        if (str10 != null) {
                                                                            str10 = null;
                                                                            break;
                                                                        }
                                                                        str10 = str11;
                                                                    }
                                                                    i21++;
                                                                }
                                                                if (str10 != null) {
                                                                    this.messageText = replaceWithLink(LocaleController.formatString("EventLogActivatedUsername", C2888R.string.EventLogActivatedUsername, "@" + str10), "un1", user2);
                                                                }
                                                            }
                                                        }
                                                        if (this.messageText == null) {
                                                            this.messageText = replaceWithLink(LocaleController.formatString("EventLogChangeUsernames", C2888R.string.EventLogChangeUsernames, getUsernamesString(arrayList5), getUsernamesString(arrayList6)), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleForum) {
                                                        if (((TLRPC.TL_channelAdminLogEventActionToggleForum) channelAdminLogEventAction).new_value) {
                                                            this.messageText = replaceWithLink(LocaleController.formatString("EventLogSwitchToForum", C2888R.string.EventLogSwitchToForum, new Object[0]), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.formatString("EventLogSwitchToGroup", C2888R.string.EventLogSwitchToGroup, new Object[0]), "un1", user2);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionCreateTopic) {
                                                        CharSequence charSequenceReplaceWithLink18 = replaceWithLink(LocaleController.formatString("EventLogCreateTopic", C2888R.string.EventLogCreateTopic, new Object[0]), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink18;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink18, "un2", ((TLRPC.TL_channelAdminLogEventActionCreateTopic) channelAdminLogEventAction).topic);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditTopic) {
                                                        TLRPC.TL_channelAdminLogEventActionEditTopic tL_channelAdminLogEventActionEditTopic = (TLRPC.TL_channelAdminLogEventActionEditTopic) channelAdminLogEventAction;
                                                        TLRPC.ForumTopic forumTopic = tL_channelAdminLogEventActionEditTopic.prev_topic;
                                                        if (forumTopic instanceof TLRPC.TL_forumTopic) {
                                                            TLRPC.ForumTopic forumTopic2 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                            if ((forumTopic2 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic).hidden != ((TLRPC.TL_forumTopic) forumTopic2).hidden) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(((TLRPC.TL_forumTopic) forumTopic2).hidden ? C2888R.string.TopicHidden2 : C2888R.string.TopicShown2), "%s", user2);
                                                            } else if (forumTopic instanceof TLRPC.TL_forumTopic) {
                                                                TLRPC.ForumTopic forumTopic3 = tL_channelAdminLogEventActionEditTopic.new_topic;
                                                                if ((forumTopic3 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic).closed != ((TLRPC.TL_forumTopic) forumTopic3).closed) {
                                                                    if (((TLRPC.TL_forumTopic) forumTopic3).closed) {
                                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogClosedTopic), "%s", user2);
                                                                    } else {
                                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.EventLogReopenedTopic), "%s", user2);
                                                                    }
                                                                    this.messageText = replaceWithLink(this.messageText, "un2", tL_channelAdminLogEventActionEditTopic.new_topic);
                                                                } else {
                                                                    CharSequence charSequenceReplaceWithLink19 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogEditTopic), "un1", user2);
                                                                    this.messageText = charSequenceReplaceWithLink19;
                                                                    CharSequence charSequenceReplaceWithLink20 = replaceWithLink(charSequenceReplaceWithLink19, "un2", tL_channelAdminLogEventActionEditTopic.prev_topic);
                                                                    this.messageText = charSequenceReplaceWithLink20;
                                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink20, "un3", tL_channelAdminLogEventActionEditTopic.new_topic);
                                                                }
                                                            }
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteTopic) {
                                                        CharSequence charSequenceReplaceWithLink21 = replaceWithLink(LocaleController.getString(C2888R.string.EventLogDeleteTopic), "un1", user2);
                                                        this.messageText = charSequenceReplaceWithLink21;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink21, "un2", ((TLRPC.TL_channelAdminLogEventActionDeleteTopic) channelAdminLogEventAction).topic);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionPinTopic) {
                                                        TLRPC.TL_channelAdminLogEventActionPinTopic tL_channelAdminLogEventActionPinTopic = (TLRPC.TL_channelAdminLogEventActionPinTopic) channelAdminLogEventAction;
                                                        TLRPC.ForumTopic forumTopic4 = tL_channelAdminLogEventActionPinTopic.new_topic;
                                                        if ((forumTopic4 instanceof TLRPC.TL_forumTopic) && ((TLRPC.TL_forumTopic) forumTopic4).pinned) {
                                                            CharSequence charSequenceReplaceWithLink22 = replaceWithLink(LocaleController.formatString("EventLogPinTopic", C2888R.string.EventLogPinTopic, new Object[0]), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink22;
                                                            this.messageText = replaceWithLink(charSequenceReplaceWithLink22, "un2", tL_channelAdminLogEventActionPinTopic.new_topic);
                                                        } else {
                                                            CharSequence charSequenceReplaceWithLink23 = replaceWithLink(LocaleController.formatString("EventLogUnpinTopic", C2888R.string.EventLogUnpinTopic, new Object[0]), "un1", user2);
                                                            this.messageText = charSequenceReplaceWithLink23;
                                                            this.messageText = replaceWithLink(charSequenceReplaceWithLink23, "un2", tL_channelAdminLogEventActionPinTopic.new_topic);
                                                        }
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) {
                                                        if (((TLRPC.TL_channelAdminLogEventActionToggleAntiSpam) channelAdminLogEventAction).new_value) {
                                                            string2 = LocaleController.getString(C2888R.string.EventLogEnabledAntiSpam);
                                                        } else {
                                                            string2 = LocaleController.getString(C2888R.string.EventLogDisabledAntiSpam);
                                                        }
                                                        this.messageText = replaceWithLink(string2, "un1", user2);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeColor) {
                                                        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat4);
                                                        TLRPC.TL_channelAdminLogEventActionChangeColor tL_channelAdminLogEventActionChangeColor = (TLRPC.TL_channelAdminLogEventActionChangeColor) tL_channelAdminLogEvent2.action;
                                                        this.messageText = replaceWithLink(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2888R.string.EventLogChangedColor : C2888R.string.EventLogChangedColorGroup, AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.prev_value).toLowerCase(), AvatarDrawable.colorName(tL_channelAdminLogEventActionChangeColor.new_value).toLowerCase()), "un1", user2);
                                                    } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangePeerColor) {
                                                        boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(chat4);
                                                        TLRPC.TL_channelAdminLogEventActionChangePeerColor tL_channelAdminLogEventActionChangePeerColor = (TLRPC.TL_channelAdminLogEventActionChangePeerColor) tL_channelAdminLogEvent2.action;
                                                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup2 ? C2888R.string.EventLogChangedPeerColorIcon : C2888R.string.EventLogChangedPeerColorIconGroup));
                                                        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                                                        if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 1) != 0) {
                                                            spannableStringBuilder4.append((CharSequence) "c");
                                                            str = str;
                                                            spannableStringBuilder4.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.prev_value.color).setSize(AndroidUtilities.m1124dp(18.0f)), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                                                        } else {
                                                            str = str;
                                                        }
                                                        if ((tL_channelAdminLogEventActionChangePeerColor.prev_value.flags & 2) != 0) {
                                                            if (spannableStringBuilder4.length() > 0) {
                                                                spannableStringBuilder4.append((CharSequence) ", ");
                                                            }
                                                            spannableStringBuilder4.append((CharSequence) "e");
                                                            spannableStringBuilder4.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder4.length() - 1, spannableStringBuilder4.length(), 33);
                                                        }
                                                        if (spannableStringBuilder4.length() == 0) {
                                                            spannableStringBuilder4.append((CharSequence) LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                        }
                                                        SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder();
                                                        if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 1) != 0) {
                                                            spannableStringBuilder5.append((CharSequence) "c");
                                                            spannableStringBuilder5.setSpan(new PeerColorActivity.PeerColorSpan(false, this.currentAccount, tL_channelAdminLogEventActionChangePeerColor.new_value.color).setSize(AndroidUtilities.m1124dp(18.0f)), spannableStringBuilder5.length() - 1, spannableStringBuilder5.length(), 33);
                                                        }
                                                        if ((tL_channelAdminLogEventActionChangePeerColor.new_value.flags & 2) != 0) {
                                                            if (spannableStringBuilder5.length() > 0) {
                                                                spannableStringBuilder5.append((CharSequence) ", ");
                                                            }
                                                            spannableStringBuilder5.append((CharSequence) "e");
                                                            spannableStringBuilder5.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder5.length() - 1, spannableStringBuilder5.length(), 33);
                                                        }
                                                        if (spannableStringBuilder5.length() == 0) {
                                                            spannableStringBuilder5.append((CharSequence) LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                        }
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder3, spannableStringBuilder4), spannableStringBuilder5), "un1", user2);
                                                    } else {
                                                        str = str;
                                                        if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) {
                                                            boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                                                            TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor tL_channelAdminLogEventActionChangeProfilePeerColor = (TLRPC.TL_channelAdminLogEventActionChangeProfilePeerColor) tL_channelAdminLogEvent3.action;
                                                            SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder(LocaleController.getString(zIsChannelAndNotMegaGroup3 ? C2888R.string.EventLogChangedProfileColorIcon : C2888R.string.EventLogChangedProfileColorIconGroup));
                                                            SpannableStringBuilder spannableStringBuilder7 = new SpannableStringBuilder();
                                                            if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 1) != 0) {
                                                                spannableStringBuilder7.append((CharSequence) "c");
                                                                spannableStringBuilder7.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.color).setSize(AndroidUtilities.m1124dp(18.0f)), spannableStringBuilder7.length() - 1, spannableStringBuilder7.length(), 33);
                                                            }
                                                            if ((tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.flags & 2) != 0) {
                                                                if (spannableStringBuilder7.length() > 0) {
                                                                    spannableStringBuilder7.append((CharSequence) ", ");
                                                                }
                                                                spannableStringBuilder7.append((CharSequence) "e");
                                                                spannableStringBuilder7.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.prev_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder7.length() - 1, spannableStringBuilder7.length(), 33);
                                                            }
                                                            if (spannableStringBuilder7.length() == 0) {
                                                                spannableStringBuilder7.append((CharSequence) LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                            }
                                                            SpannableStringBuilder spannableStringBuilder8 = new SpannableStringBuilder();
                                                            if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 1) != 0) {
                                                                spannableStringBuilder8.append((CharSequence) "c");
                                                                spannableStringBuilder8.setSpan(new PeerColorActivity.PeerColorSpan(true, this.currentAccount, tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.color).setSize(AndroidUtilities.m1124dp(18.0f)), spannableStringBuilder8.length() - 1, spannableStringBuilder8.length(), 33);
                                                            }
                                                            if ((tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.flags & 2) != 0) {
                                                                if (spannableStringBuilder8.length() > 0) {
                                                                    spannableStringBuilder8.append((CharSequence) ", ");
                                                                }
                                                                spannableStringBuilder8.append((CharSequence) "e");
                                                                spannableStringBuilder8.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeProfilePeerColor.new_value.background_emoji_id, Theme.chat_actionTextPaint.getFontMetricsInt()), spannableStringBuilder8.length() - 1, spannableStringBuilder8.length(), 33);
                                                            }
                                                            if (spannableStringBuilder8.length() == 0) {
                                                                spannableStringBuilder8.append((CharSequence) LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                            }
                                                            this.messageText = replaceWithLink(AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", spannableStringBuilder6, spannableStringBuilder7), spannableStringBuilder8), "un1", user2);
                                                        } else {
                                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                                                            if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) {
                                                                boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus tL_channelAdminLogEventActionChangeEmojiStatus = (TLRPC.TL_channelAdminLogEventActionChangeEmojiStatus) tL_channelAdminLogEvent3.action;
                                                                if (tL_channelAdminLogEventActionChangeEmojiStatus.prev_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                                    spannableString3 = new SpannableString(LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                                    z2 = true;
                                                                } else {
                                                                    spannableString3 = new SpannableString("e");
                                                                    spannableString3.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.prev_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                    z2 = false;
                                                                }
                                                                int emojiStatusUntil = DialogObject.getEmojiStatusUntil(tL_channelAdminLogEventActionChangeEmojiStatus.new_value);
                                                                if (tL_channelAdminLogEventActionChangeEmojiStatus.new_value instanceof TLRPC.TL_emojiStatusEmpty) {
                                                                    spannableString4 = new SpannableString(LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                                } else {
                                                                    SpannableString spannableString5 = new SpannableString("e");
                                                                    spannableString5.setSpan(new AnimatedEmojiSpan(DialogObject.getEmojiStatusDocumentId(tL_channelAdminLogEventActionChangeEmojiStatus.new_value), Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                    spannableString4 = spannableString5;
                                                                }
                                                                if (z2) {
                                                                    if (emojiStatusUntil != 0) {
                                                                        i2 = zIsChannelAndNotMegaGroup4 ? C2888R.string.EventLogChangedEmojiStatusFor : C2888R.string.EventLogChangedEmojiStatusForGroup;
                                                                    } else {
                                                                        i2 = zIsChannelAndNotMegaGroup4 ? C2888R.string.EventLogChangedEmojiStatus : C2888R.string.EventLogChangedEmojiStatusGroup;
                                                                    }
                                                                } else if (emojiStatusUntil != 0) {
                                                                    i2 = zIsChannelAndNotMegaGroup4 ? C2888R.string.EventLogChangedEmojiStatusFromFor : C2888R.string.EventLogChangedEmojiStatusFromForGroup;
                                                                } else {
                                                                    i2 = zIsChannelAndNotMegaGroup4 ? C2888R.string.EventLogChangedEmojiStatusFrom : C2888R.string.EventLogChangedEmojiStatusFromGroup;
                                                                }
                                                                SpannableStringBuilder spannableStringBuilderReplaceCharSequence = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", new SpannableStringBuilder(LocaleController.getString(i2)), spannableString3), spannableString4);
                                                                this.messageText = replaceWithLink(emojiStatusUntil != 0 ? AndroidUtilities.replaceCharSequence("%3$s", spannableStringBuilderReplaceCharSequence, LocaleController.formatTTLString((int) ((emojiStatusUntil - tL_channelAdminLogEvent3.date) * 1.05f))) : spannableStringBuilderReplaceCharSequence, "un1", user2);
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                                                                TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                                                                boolean zIsChannelAndNotMegaGroup5 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                TLRPC.WallPaper wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                                                                if ((wallPaper instanceof TLRPC.TL_wallPaperNoFile) && wallPaper.f1833id == 0 && wallPaper.settings == null) {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup5 ? C2888R.string.EventLogRemovedWallpaper : C2888R.string.EventLogRemovedWallpaperGroup), "un1", user2);
                                                                } else {
                                                                    ArrayList<TLRPC.PhotoSize> arrayList7 = new ArrayList<>();
                                                                    this.photoThumbs = arrayList7;
                                                                    TLRPC.Document document = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                                    if (document != null) {
                                                                        arrayList7.addAll(document.thumbs);
                                                                        this.photoThumbsObject = tL_channelAdminLogEventActionChangeWallpaper.new_value.document;
                                                                    }
                                                                    this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup5 ? C2888R.string.EventLogChangedWallpaper : C2888R.string.EventLogChangedWallpaperGroup), "un1", user2);
                                                                }
                                                            } else if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) {
                                                                boolean zIsChannelAndNotMegaGroup6 = ChatObject.isChannelAndNotMegaGroup(chat);
                                                                TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji tL_channelAdminLogEventActionChangeBackgroundEmoji = (TLRPC.TL_channelAdminLogEventActionChangeBackgroundEmoji) tL_channelAdminLogEvent3.action;
                                                                this.messageText = replaceWithLink(LocaleController.getString(zIsChannelAndNotMegaGroup6 ? C2888R.string.EventLogChangedEmoji : C2888R.string.EventLogChangedEmojiGroup), "un1", user2);
                                                                if (tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value == 0) {
                                                                    spannableString = new SpannableString(LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                                } else {
                                                                    spannableString = new SpannableString("e");
                                                                    spannableString.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.prev_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                }
                                                                this.messageText = AndroidUtilities.replaceCharSequence("%1$s", this.messageText, spannableString);
                                                                if (tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value == 0) {
                                                                    spannableString2 = new SpannableString(LocaleController.getString(C2888R.string.EventLogEmojiNone));
                                                                } else {
                                                                    spannableString2 = new SpannableString("e");
                                                                    spannableString2.setSpan(new AnimatedEmojiSpan(tL_channelAdminLogEventActionChangeBackgroundEmoji.new_value, Theme.chat_actionTextPaint.getFontMetricsInt()), 0, 1, 33);
                                                                }
                                                                this.messageText = AndroidUtilities.replaceCharSequence("%2$s", this.messageText, spannableString2);
                                                            } else {
                                                                this.messageText = "unsupported " + tL_channelAdminLogEvent3.action;
                                                            }
                                                        }
                                                        chat2 = chat;
                                                    }
                                                }
                                                str = str;
                                                chat2 = chat4;
                                                tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                            }
                                            chat2 = chat;
                                            str = str;
                                            tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                        }
                                        if (this.messageOwner == null) {
                                            this.messageOwner = new TLRPC.TL_messageService();
                                        }
                                        this.messageOwner.message = this.messageText.toString();
                                        this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                        TLRPC.Message message6 = this.messageOwner;
                                        message6.from_id.user_id = tL_channelAdminLogEvent3.user_id;
                                        message6.date = tL_channelAdminLogEvent3.date;
                                        int i22 = iArr[0];
                                        iArr[0] = i22 + 1;
                                        message6.f1686id = i22;
                                        this.eventId = tL_channelAdminLogEvent3.f1700id;
                                        message6.out = false;
                                        message6.peer_id = new TLRPC.TL_peerChannel();
                                        TLRPC.Message message7 = this.messageOwner;
                                        message7.peer_id.channel_id = chat2.f1660id;
                                        message7.unread = false;
                                        MediaController mediaController = MediaController.getInstance();
                                        this.isOutOwnerCached = null;
                                        message = tL_message instanceof TLRPC.TL_messageEmpty ? null : tL_message;
                                        if (message != null) {
                                            message.out = false;
                                            message.realId = message.f1686id;
                                            int i23 = iArr[0];
                                            iArr[0] = i23 + 1;
                                            message.f1686id = i23;
                                            message.flags &= -32769;
                                            message.dialog_id = -chat2.f1660id;
                                            if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                                i4 = message.date;
                                                message.date = tL_channelAdminLogEvent3.date;
                                            } else {
                                                i4 = 0;
                                            }
                                            MessageObject messageObject = new MessageObject(this.currentAccount, message, (AbstractMap<Long, TLRPC.User>) null, (AbstractMap<Long, TLRPC.Chat>) null, true, true, this.eventId);
                                            messageObject.realDate = i4;
                                            messageObject.currentEvent = tL_channelAdminLogEvent3;
                                            if (messageObject.contentType >= 0) {
                                                if (mediaController.isPlayingMessage(messageObject)) {
                                                    MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
                                                    messageObject.audioProgress = playingMessageObject.audioProgress;
                                                    messageObject.audioProgressSec = playingMessageObject.audioProgressSec;
                                                }
                                                arrayList4 = arrayList;
                                                str4 = str;
                                                createDateArray(this.currentAccount, tL_channelAdminLogEvent3, arrayList4, map, z);
                                                if (z) {
                                                    arrayList4.add(0, messageObject);
                                                } else {
                                                    arrayList4.add(arrayList4.size() - 1, messageObject);
                                                }
                                            } else {
                                                arrayList4 = arrayList;
                                                str4 = str;
                                                this.contentType = -1;
                                            }
                                            if (arrayList2 != null) {
                                                messageObject.webPageDescriptionEntities = arrayList2;
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
                                                    this.messageText = str4;
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
                                        str4 = str;
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
                                }
                                chat2 = chat3;
                                tL_channelAdminLogEvent3 = tL_channelAdminLogEvent2;
                                arrayList2 = null;
                                if (this.messageOwner == null) {
                                }
                                this.messageOwner.message = this.messageText.toString();
                                this.messageOwner.from_id = new TLRPC.TL_peerUser();
                                TLRPC.Message message62 = this.messageOwner;
                                message62.from_id.user_id = tL_channelAdminLogEvent3.user_id;
                                message62.date = tL_channelAdminLogEvent3.date;
                                int i222 = iArr[0];
                                iArr[0] = i222 + 1;
                                message62.f1686id = i222;
                                this.eventId = tL_channelAdminLogEvent3.f1700id;
                                message62.out = false;
                                message62.peer_id = new TLRPC.TL_peerChannel();
                                TLRPC.Message message72 = this.messageOwner;
                                message72.peer_id.channel_id = chat2.f1660id;
                                message72.unread = false;
                                MediaController mediaController2 = MediaController.getInstance();
                                this.isOutOwnerCached = null;
                                if (tL_message instanceof TLRPC.TL_messageEmpty) {
                                }
                                if (message != null) {
                                }
                                iArr2 = null;
                                if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                                }
                            }
                        }
                        tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                        chat2 = chat3;
                    }
                    tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                    chat2 = chat;
                    arrayList2 = null;
                    if (this.messageOwner == null) {
                    }
                    this.messageOwner.message = this.messageText.toString();
                    this.messageOwner.from_id = new TLRPC.TL_peerUser();
                    TLRPC.Message message622 = this.messageOwner;
                    message622.from_id.user_id = tL_channelAdminLogEvent3.user_id;
                    message622.date = tL_channelAdminLogEvent3.date;
                    int i2222 = iArr[0];
                    iArr[0] = i2222 + 1;
                    message622.f1686id = i2222;
                    this.eventId = tL_channelAdminLogEvent3.f1700id;
                    message622.out = false;
                    message622.peer_id = new TLRPC.TL_peerChannel();
                    TLRPC.Message message722 = this.messageOwner;
                    message722.peer_id.channel_id = chat2.f1660id;
                    message722.unread = false;
                    MediaController mediaController22 = MediaController.getInstance();
                    this.isOutOwnerCached = null;
                    if (tL_message instanceof TLRPC.TL_messageEmpty) {
                    }
                    if (message != null) {
                    }
                    iArr2 = null;
                    if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
                    }
                }
                tL_channelAdminLogEvent3 = tL_channelAdminLogEvent;
                chat2 = chat;
            }
            tL_message = null;
            arrayList2 = null;
            if (this.messageOwner == null) {
            }
            this.messageOwner.message = this.messageText.toString();
            this.messageOwner.from_id = new TLRPC.TL_peerUser();
            TLRPC.Message message6222 = this.messageOwner;
            message6222.from_id.user_id = tL_channelAdminLogEvent3.user_id;
            message6222.date = tL_channelAdminLogEvent3.date;
            int i22222 = iArr[0];
            iArr[0] = i22222 + 1;
            message6222.f1686id = i22222;
            this.eventId = tL_channelAdminLogEvent3.f1700id;
            message6222.out = false;
            message6222.peer_id = new TLRPC.TL_peerChannel();
            TLRPC.Message message7222 = this.messageOwner;
            message7222.peer_id.channel_id = chat2.f1660id;
            message7222.unread = false;
            MediaController mediaController222 = MediaController.getInstance();
            this.isOutOwnerCached = null;
            if (tL_message instanceof TLRPC.TL_messageEmpty) {
            }
            if (message != null) {
            }
            iArr2 = null;
            if (tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) {
            }
        }
        chat2 = chat;
        str = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_message = null;
        arrayList2 = null;
        if (this.messageOwner == null) {
        }
        this.messageOwner.message = this.messageText.toString();
        this.messageOwner.from_id = new TLRPC.TL_peerUser();
        TLRPC.Message message62222 = this.messageOwner;
        message62222.from_id.user_id = tL_channelAdminLogEvent3.user_id;
        message62222.date = tL_channelAdminLogEvent3.date;
        int i222222 = iArr[0];
        iArr[0] = i222222 + 1;
        message62222.f1686id = i222222;
        this.eventId = tL_channelAdminLogEvent3.f1700id;
        message62222.out = false;
        message62222.peer_id = new TLRPC.TL_peerChannel();
        TLRPC.Message message72222 = this.messageOwner;
        message72222.peer_id.channel_id = chat2.f1660id;
        message72222.unread = false;
        MediaController mediaController2222 = MediaController.getInstance();
        this.isOutOwnerCached = null;
        if (tL_message instanceof TLRPC.TL_messageEmpty) {
        }
        if (message != null) {
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
                    FileLog.m1136e(e);
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
            return LocaleController.getString(C2888R.string.AllReactions);
        }
        if (chatReactions instanceof TLRPC.TL_chatReactionsSome) {
            TLRPC.TL_chatReactionsSome tL_chatReactionsSome = (TLRPC.TL_chatReactionsSome) chatReactions;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < tL_chatReactionsSome.reactions.size(); i++) {
                if (i != 0) {
                    spannableStringBuilder.append((CharSequence) " ");
                }
                spannableStringBuilder.append(Emoji.replaceEmoji(ReactionsUtils.reactionToCharSequence((TLRPC.Reaction) tL_chatReactionsSome.reactions.get(i)), null, false));
            }
            return spannableStringBuilder;
        }
        return LocaleController.getString(C2888R.string.NoReactions);
    }

    private String getUsernamesString(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            return LocaleController.getString(C2888R.string.UsernameEmpty).toLowerCase();
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
        String str2;
        long j2;
        if (tLObject == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            str2 = null;
            j2 = 0;
        } else {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                if (user.deleted) {
                    name = LocaleController.getString(C2888R.string.HiddenName);
                } else {
                    name = ContactsController.formatName(user.first_name, user.last_name);
                }
                publicUsername = UserObject.getPublicUsername(user);
                j = user.f1825id;
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                name = chat.title;
                publicUsername = ChatObject.getPublicUsername(chat);
                j = -chat.f1660id;
            }
            str = name;
            str2 = publicUsername;
            j2 = j;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName.user_id = j2;
            tL_messageEntityMentionName.offset = i;
            tL_messageEntityMentionName.length = str.length();
            arrayList.add(tL_messageEntityMentionName);
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (i >= 0) {
            TLRPC.TL_messageEntityMentionName tL_messageEntityMentionName2 = new TLRPC.TL_messageEntityMentionName();
            tL_messageEntityMentionName2.user_id = j2;
            tL_messageEntityMentionName2.offset = i + str.length() + 2;
            tL_messageEntityMentionName2.length = str2.length() + 1;
            arrayList.add(tL_messageEntityMentionName2);
        }
        return String.format("%1$s (@%2$s)", str, str2);
    }

    public boolean updateTranslation() {
        return updateTranslation(false);
    }

    public boolean updateTranslation(boolean z) {
        TLRPC.Message message = this.messageOwner;
        if (message != null && LocaleUtils.parseCustomEmojis(message.message, message.entities, message.f1686id) && !z) {
            z = true;
        }
        MessageObject messageObject = this.replyMessageObject;
        boolean z2 = (messageObject == null || messageObject == this || !messageObject.updateTranslation(z)) ? false : true;
        TranslateController translateController = MessagesController.getInstance(this.currentAccount).getTranslateController();
        TLRPC.Message message2 = this.messageOwner;
        TLRPC.TL_textWithEntities tL_textWithEntities = null;
        TLRPC.TL_textWithEntities tL_textWithEntities2 = message2 != null ? message2.voiceTranscriptionOpen ? message2.translatedVoiceTranscription : message2.translatedText : null;
        TLRPC.TL_textWithEntities tL_textWithEntities3 = (message2 == null || !message2.summarizedOpen) ? null : message2.summaryText;
        if (message2 != null && message2.summarizedOpen) {
            tL_textWithEntities = message2.translatedSummaryText;
        }
        if (tL_textWithEntities != null && message2 != null && message2.summarizedOpen && TranslateController.isSummarizable(this) && TranslateController.isTranslatable(this) && translateController.isTranslatingDialog(getDialogId()) && !translateController.isTranslateDialogHidden(getDialogId()) && TextUtils.equals(translateController.getDialogTranslateTo(getDialogId()), this.messageOwner.translatedSummaryLanguage)) {
            if (this.summarized && this.translated) {
                return z2;
            }
            this.summarized = true;
            this.translated = true;
            applyNewText(tL_textWithEntities.text);
            generateCaption();
            return true;
        }
        TLRPC.Message message3 = this.messageOwner;
        if (message3 != null && message3.summarizedOpen && TranslateController.isSummarizable(this) && tL_textWithEntities3 != null) {
            if (this.summarized && !this.translated) {
                return z2;
            }
            this.summarized = true;
            this.translated = false;
            applyNewText(tL_textWithEntities3.text);
            generateCaption();
            return true;
        }
        if (this.messageOwner != null && TranslateController.isTranslatable(this) && translateController.isTranslatingDialog(getDialogId()) && !translateController.isTranslateDialogHidden(getDialogId()) && ((tL_textWithEntities2 != null || this.messageOwner.translatedPoll != null) && TextUtils.equals(translateController.getDialogTranslateTo(getDialogId()), this.messageOwner.translatedToLanguage))) {
            if (this.translated && !this.summarized) {
                return z2;
            }
            this.translated = true;
            this.summarized = false;
            if (tL_textWithEntities2 != null) {
                applyNewText(tL_textWithEntities2.text);
                generateCaption();
            }
            return true;
        }
        TLRPC.Message message4 = this.messageOwner;
        if (message4 == null || !(z || this.translated || this.summarized)) {
            return z2;
        }
        this.translated = false;
        this.summarized = false;
        applyNewText(message4.message);
        generateCaption();
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
            if (user == null || user.f1825id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                this.messageText = replaceWithLink(LocaleController.formatString("ActionUserScored", C2888R.string.ActionUserScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user);
                return;
            } else {
                this.messageText = LocaleController.formatString("ActionYouScored", C2888R.string.ActionYouScored, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
                return;
            }
        }
        if (user == null || user.f1825id != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            this.messageText = replaceWithLink(LocaleController.formatString("ActionUserScoredInGame", C2888R.string.ActionUserScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0])), "un1", user);
        } else {
            this.messageText = LocaleController.formatString("ActionYouScoredInGame", C2888R.string.ActionYouScoredInGame, LocaleController.formatPluralString("Points", this.messageOwner.action.score, new Object[0]));
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
            FileLog.m1136e(e);
            currencyString = "<error>";
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null && (getMedia(messageObject) instanceof TLRPC.TL_messageMediaInvoice)) {
            TLRPC.MessageAction messageAction2 = this.messageOwner.action;
            if (messageAction2.subscription_until_date != 0) {
                if (z) {
                    this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidMeSubscription, firstName, currencyString, getMedia(this.replyMessageObject).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false));
                } else {
                    this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidSubscription, currencyString, firstName, getMedia(this.replyMessageObject).title, LocaleController.formatDateTime(this.messageOwner.action.subscription_until_date, false));
                }
            } else if (!messageAction2.recurring_init || z) {
                this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaid, currencyString, firstName, getMedia(this.replyMessageObject).title);
            } else {
                this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidRecurrent, currencyString, firstName, getMedia(this.replyMessageObject).title);
            }
        } else {
            TLRPC.MessageAction messageAction3 = this.messageOwner.action;
            int i = messageAction3.subscription_until_date;
            if (i != 0) {
                if (z) {
                    this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidMeNoItemSubscription, firstName, currencyString, LocaleController.formatDateTime(i, false));
                } else {
                    this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidSubscriptionNoItem, currencyString, firstName, LocaleController.formatDateTime(i, false));
                }
            } else if (!messageAction3.recurring_init || z) {
                this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidNoItem, currencyString, firstName);
            } else {
                this.messageText = LocaleController.formatString(C2888R.string.PaymentSuccessfullyPaidNoItemRecurrent, currencyString, firstName);
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
                    String string = LocaleController.getString(C2888R.string.ActionPinnedMusic);
                    TLObject tLObject = user;
                    if (user == null) {
                        tLObject = chat;
                    }
                    this.messageText = replaceWithLink(string, "un1", tLObject);
                    return;
                }
                if (this.replyMessageObject.isVideo()) {
                    String string2 = LocaleController.getString(C2888R.string.ActionPinnedVideo);
                    TLObject tLObject2 = user;
                    if (user == null) {
                        tLObject2 = chat;
                    }
                    this.messageText = replaceWithLink(string2, "un1", tLObject2);
                    return;
                }
                if (this.replyMessageObject.isGif()) {
                    String string3 = LocaleController.getString(C2888R.string.ActionPinnedGif);
                    TLObject tLObject3 = user;
                    if (user == null) {
                        tLObject3 = chat;
                    }
                    this.messageText = replaceWithLink(string3, "un1", tLObject3);
                    return;
                }
                if (this.replyMessageObject.isVoice()) {
                    String string4 = LocaleController.getString(C2888R.string.ActionPinnedVoice);
                    TLObject tLObject4 = user;
                    if (user == null) {
                        tLObject4 = chat;
                    }
                    this.messageText = replaceWithLink(string4, "un1", tLObject4);
                    return;
                }
                if (this.replyMessageObject.isRoundVideo()) {
                    String string5 = LocaleController.getString(C2888R.string.ActionPinnedRound);
                    TLObject tLObject5 = user;
                    if (user == null) {
                        tLObject5 = chat;
                    }
                    this.messageText = replaceWithLink(string5, "un1", tLObject5);
                    return;
                }
                if ((this.replyMessageObject.isSticker() || this.replyMessageObject.isAnimatedSticker()) && !this.replyMessageObject.isAnimatedEmoji()) {
                    String string6 = LocaleController.getString(C2888R.string.ActionPinnedSticker);
                    TLObject tLObject6 = user;
                    if (user == null) {
                        tLObject6 = chat;
                    }
                    this.messageText = replaceWithLink(string6, "un1", tLObject6);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaDocument) {
                    String string7 = LocaleController.getString(C2888R.string.ActionPinnedFile);
                    TLObject tLObject7 = user;
                    if (user == null) {
                        tLObject7 = chat;
                    }
                    this.messageText = replaceWithLink(string7, "un1", tLObject7);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeo) {
                    String string8 = LocaleController.getString(C2888R.string.ActionPinnedGeo);
                    TLObject tLObject8 = user;
                    if (user == null) {
                        tLObject8 = chat;
                    }
                    this.messageText = replaceWithLink(string8, "un1", tLObject8);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGeoLive) {
                    String string9 = LocaleController.getString(C2888R.string.ActionPinnedGeoLive);
                    TLObject tLObject9 = user;
                    if (user == null) {
                        tLObject9 = chat;
                    }
                    this.messageText = replaceWithLink(string9, "un1", tLObject9);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaContact) {
                    String string10 = LocaleController.getString(C2888R.string.ActionPinnedContact);
                    TLObject tLObject10 = user;
                    if (user == null) {
                        tLObject10 = chat;
                    }
                    this.messageText = replaceWithLink(string10, "un1", tLObject10);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPoll) {
                    if (((TLRPC.TL_messageMediaPoll) getMedia(this.replyMessageObject)).poll.quiz) {
                        String string11 = LocaleController.getString(C2888R.string.ActionPinnedQuiz);
                        TLObject tLObject11 = user;
                        if (user == null) {
                            tLObject11 = chat;
                        }
                        this.messageText = replaceWithLink(string11, "un1", tLObject11);
                        return;
                    }
                    String string12 = LocaleController.getString(C2888R.string.ActionPinnedPoll);
                    TLObject tLObject12 = user;
                    if (user == null) {
                        tLObject12 = chat;
                    }
                    this.messageText = replaceWithLink(string12, "un1", tLObject12);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPhoto) {
                    String string13 = LocaleController.getString(C2888R.string.ActionPinnedPhoto);
                    TLObject tLObject13 = user;
                    if (user == null) {
                        tLObject13 = chat;
                    }
                    this.messageText = replaceWithLink(string13, "un1", tLObject13);
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaPaidMedia) {
                    this.messageText = LocaleController.formatPluralString("NotificationPinnedPaidMedia", (int) ((TLRPC.TL_messageMediaPaidMedia) getMedia(this.replyMessageObject)).stars_amount, chat != null ? chat.title : UserObject.getUserName(user));
                    return;
                }
                if (getMedia(this.replyMessageObject) instanceof TLRPC.TL_messageMediaGame) {
                    String string14 = LocaleController.formatString("ActionPinnedGame", C2888R.string.ActionPinnedGame, "🎮 " + getMedia(this.replyMessageObject).game.title);
                    TLObject tLObject14 = user;
                    if (user == null) {
                        tLObject14 = chat;
                    }
                    CharSequence charSequenceReplaceWithLink = replaceWithLink(string14, "un1", tLObject14);
                    this.messageText = charSequenceReplaceWithLink;
                    this.messageText = Emoji.replaceEmoji(charSequenceReplaceWithLink, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                    return;
                }
                CharSequence charSequence = this.replyMessageObject.messageText;
                if (charSequence != null && charSequence.length() > 0) {
                    CharSequence charSequenceCloneSpans = AnimatedEmojiSpan.cloneSpans(this.replyMessageObject.messageText);
                    if (charSequenceCloneSpans.length() > 20) {
                        charSequenceCloneSpans = charSequenceCloneSpans.subSequence(0, 20);
                        z = true;
                    } else {
                        z = false;
                    }
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequenceCloneSpans, Theme.chat_msgTextPaint.getFontMetricsInt(), true);
                    MessageObject messageObject2 = this.replyMessageObject;
                    if (messageObject2 != null && messageObject2.messageOwner != null) {
                        charSequenceReplaceEmoji = messageObject2.replaceAnimatedEmoji(charSequenceReplaceEmoji, Theme.chat_msgTextPaint.getFontMetricsInt());
                    }
                    MediaDataController.addTextStyleRuns(this.replyMessageObject, (Spannable) charSequenceReplaceEmoji);
                    if (z) {
                        if (charSequenceReplaceEmoji instanceof SpannableStringBuilder) {
                            ((SpannableStringBuilder) charSequenceReplaceEmoji).append((CharSequence) "...");
                        } else if (charSequenceReplaceEmoji != null) {
                            charSequenceReplaceEmoji = new SpannableStringBuilder(charSequenceReplaceEmoji).append((CharSequence) "...");
                        }
                    }
                    SpannableStringBuilder spannable = AndroidUtilities.formatSpannable(LocaleController.getString(C2888R.string.ActionPinnedText), charSequenceReplaceEmoji);
                    TLObject tLObject15 = user;
                    if (user == null) {
                        tLObject15 = chat;
                    }
                    this.messageText = replaceWithLink(spannable, "un1", tLObject15);
                    return;
                }
                String string15 = LocaleController.getString(C2888R.string.ActionPinnedNoText);
                TLObject tLObject16 = user;
                if (user == null) {
                    tLObject16 = chat;
                }
                this.messageText = replaceWithLink(string15, "un1", tLObject16);
                return;
            }
        }
        String string16 = LocaleController.getString(C2888R.string.ActionPinnedNoText);
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
                TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) message.reactions.results.get(i);
                int size2 = tL_messageReactions.results.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC.ReactionCount reactionCount2 = (TLRPC.ReactionCount) tL_messageReactions.results.get(i2);
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
                if (visibleReaction.isSame(((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void updatePollResults(TLRPC.TL_messageMediaPoll tL_messageMediaPoll, TLRPC.PollResults pollResults) {
        ArrayList arrayList;
        byte[] bArr;
        ArrayList arrayList2;
        if (tL_messageMediaPoll == null || pollResults == null) {
            return;
        }
        if ((pollResults.flags & 2) != 0) {
            if (!pollResults.min || (arrayList2 = tL_messageMediaPoll.results.results) == null) {
                arrayList = null;
                bArr = null;
            } else {
                int size = arrayList2.size();
                arrayList = null;
                bArr = null;
                for (int i = 0; i < size; i++) {
                    TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i);
                    if (tL_pollAnswerVoters.chosen) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(tL_pollAnswerVoters.option);
                    }
                    if (tL_pollAnswerVoters.correct) {
                        bArr = tL_pollAnswerVoters.option;
                    }
                }
            }
            TLRPC.PollResults pollResults2 = tL_messageMediaPoll.results;
            ArrayList arrayList3 = pollResults.results;
            pollResults2.results = arrayList3;
            if (arrayList != null || bArr != null) {
                int size2 = arrayList3.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    TLRPC.TL_pollAnswerVoters tL_pollAnswerVoters2 = (TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i2);
                    if (arrayList != null) {
                        int size3 = arrayList.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size3) {
                                break;
                            }
                            if (Arrays.equals(tL_pollAnswerVoters2.option, (byte[]) arrayList.get(i3))) {
                                tL_pollAnswerVoters2.chosen = true;
                                arrayList.remove(i3);
                                break;
                            }
                            i3++;
                        }
                        if (arrayList.isEmpty()) {
                            arrayList = null;
                        }
                    }
                    if (bArr != null && Arrays.equals(tL_pollAnswerVoters2.option, bArr)) {
                        tL_pollAnswerVoters2.correct = true;
                        bArr = null;
                    }
                    if (arrayList == null && bArr == null) {
                        break;
                    }
                }
            }
            tL_messageMediaPoll.results.flags |= 2;
        }
        if ((pollResults.flags & 4) != 0) {
            TLRPC.PollResults pollResults3 = tL_messageMediaPoll.results;
            pollResults3.total_voters = pollResults.total_voters;
            pollResults3.flags |= 4;
        }
        if ((pollResults.flags & 8) != 0) {
            TLRPC.PollResults pollResults4 = tL_messageMediaPoll.results;
            pollResults4.recent_voters = pollResults.recent_voters;
            pollResults4.flags |= 8;
        }
        if ((pollResults.flags & 16) != 0) {
            TLRPC.PollResults pollResults5 = tL_messageMediaPoll.results;
            pollResults5.solution = pollResults.solution;
            pollResults5.solution_entities = pollResults.solution_entities;
            pollResults5.flags |= 16;
        }
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
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
        TLRPC.PollResults pollResults;
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaPoll) && (pollResults = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).results) != null && !pollResults.results.isEmpty() && !tL_messageMediaPoll.poll.quiz) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (((TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i)).chosen) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isVoted() {
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
        TLRPC.PollResults pollResults;
        if (this.type != 17) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(this.messageOwner);
        if ((media instanceof TLRPC.TL_messageMediaPoll) && (pollResults = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).results) != null && !pollResults.results.isEmpty()) {
            int size = tL_messageMediaPoll.results.results.size();
            for (int i = 0; i < size; i++) {
                if (((TLRPC.TL_pollAnswerVoters) tL_messageMediaPoll.results.results.get(i)).chosen) {
                    return true;
                }
            }
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
            return ((TLRPC.TL_messageMediaPoll) media).poll.f1695id;
        }
        return 0L;
    }

    private TLRPC.Photo getPhotoWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Photo photo = webPage.photo;
            if (photo != null && photo.f1692id == j) {
                return photo;
            }
            for (int i = 0; i < webPage.cached_page.photos.size(); i++) {
                TLRPC.Photo photo2 = (TLRPC.Photo) webPage.cached_page.photos.get(i);
                if (photo2.f1692id == j) {
                    return photo2;
                }
            }
        }
        return null;
    }

    private TLRPC.Document getDocumentWithId(TLRPC.WebPage webPage, long j) {
        if (webPage != null && webPage.cached_page != null) {
            TLRPC.Document document = webPage.document;
            if (document != null && document.f1668id == j) {
                return document;
            }
            for (int i = 0; i < webPage.cached_page.documents.size(); i++) {
                TLRPC.Document document2 = (TLRPC.Document) webPage.cached_page.documents.get(i);
                if (document2.f1668id == j) {
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

    private MessageObject getMessageObjectForBlock(TLRPC.WebPage webPage, TLRPC.PageBlock pageBlock) {
        TLRPC.TL_message tL_message;
        if (pageBlock instanceof TLRPC.TL_pageBlockPhoto) {
            TLRPC.Photo photoWithId = getPhotoWithId(webPage, ((TLRPC.TL_pageBlockPhoto) pageBlock).photo_id);
            if (photoWithId != webPage.photo) {
                tL_message = new TLRPC.TL_message();
                TLRPC.TL_messageMediaPhoto tL_messageMediaPhoto = new TLRPC.TL_messageMediaPhoto();
                tL_message.media = tL_messageMediaPhoto;
                tL_messageMediaPhoto.photo = photoWithId;
                tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
                tL_message.realId = getId();
                tL_message.f1686id = Utilities.random.nextInt();
                TLRPC.Message message = this.messageOwner;
                tL_message.date = message.date;
                tL_message.peer_id = message.peer_id;
                tL_message.out = message.out;
                tL_message.from_id = message.from_id;
                return new MessageObject(this.currentAccount, tL_message, false, true);
            }
            return this;
        }
        if (pageBlock instanceof TLRPC.TL_pageBlockVideo) {
            TLRPC.TL_pageBlockVideo tL_pageBlockVideo = (TLRPC.TL_pageBlockVideo) pageBlock;
            if (getDocumentWithId(webPage, tL_pageBlockVideo.video_id) != webPage.document) {
                TLRPC.TL_message tL_message2 = new TLRPC.TL_message();
                TLRPC.TL_messageMediaDocument tL_messageMediaDocument = new TLRPC.TL_messageMediaDocument();
                tL_message2.media = tL_messageMediaDocument;
                tL_messageMediaDocument.document = getDocumentWithId(webPage, tL_pageBlockVideo.video_id);
                tL_message = tL_message2;
            }
            return this;
        }
        tL_message = null;
        tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_message.realId = getId();
        tL_message.f1686id = Utilities.random.nextInt();
        TLRPC.Message message2 = this.messageOwner;
        tL_message.date = message2.date;
        tL_message.peer_id = message2.peer_id;
        tL_message.out = message2.out;
        tL_message.from_id = message2.from_id;
        return new MessageObject(this.currentAccount, tL_message, false, true);
    }

    public ArrayList<MessageObject> getWebPagePhotos(ArrayList<MessageObject> arrayList, ArrayList<TLRPC.PageBlock> arrayList2) {
        TLRPC.WebPage webPage;
        TLRPC.Page page;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        if (getMedia(this.messageOwner) != null && getMedia(this.messageOwner).webpage != null && (page = (webPage = getMedia(this.messageOwner).webpage).cached_page) != null) {
            if (arrayList2 == null) {
                arrayList2 = page.blocks;
            }
            for (int i = 0; i < arrayList2.size(); i++) {
                TLRPC.PageBlock pageBlock = arrayList2.get(i);
                if (pageBlock instanceof TLRPC.TL_pageBlockSlideshow) {
                    TLRPC.TL_pageBlockSlideshow tL_pageBlockSlideshow = (TLRPC.TL_pageBlockSlideshow) pageBlock;
                    for (int i2 = 0; i2 < tL_pageBlockSlideshow.items.size(); i2++) {
                        arrayList.add(getMessageObjectForBlock(webPage, (TLRPC.PageBlock) tL_pageBlockSlideshow.items.get(i2)));
                    }
                } else if (pageBlock instanceof TLRPC.TL_pageBlockCollage) {
                    TLRPC.TL_pageBlockCollage tL_pageBlockCollage = (TLRPC.TL_pageBlockCollage) pageBlock;
                    for (int i3 = 0; i3 < tL_pageBlockCollage.items.size(); i3++) {
                        arrayList.add(getMessageObjectForBlock(webPage, (TLRPC.PageBlock) tL_pageBlockCollage.items.get(i3)));
                    }
                }
            }
        }
        return arrayList;
    }

    public void createMessageSendInfo() {
        HashMap map;
        String str;
        VideoEditedInfo videoEditedInfo = this.videoEditedInfo;
        boolean z = videoEditedInfo != null && videoEditedInfo.notReadyYet;
        TLRPC.Message message = this.messageOwner;
        if (message.message != null) {
            if ((message.f1686id < 0 || isEditing()) && (map = this.messageOwner.params) != null) {
                String str2 = (String) map.get("ve");
                if (str2 != null && (isVideo() || isNewGif() || isRoundVideo() || isVideoSticker() || isPaidVideo(getMedia(this)))) {
                    VideoEditedInfo videoEditedInfo2 = new VideoEditedInfo();
                    this.videoEditedInfo = videoEditedInfo2;
                    if (!videoEditedInfo2.parseString(str2)) {
                        this.videoEditedInfo = null;
                    } else {
                        this.videoEditedInfo.roundVideo = isRoundVideo();
                        this.videoEditedInfo.notReadyYet = z;
                    }
                }
                TLRPC.Message message2 = this.messageOwner;
                if (message2.send_state != 3 || (str = (String) message2.params.get("prevMedia")) == null) {
                    return;
                }
                SerializedData serializedData = new SerializedData(Base64.decode(str, 0));
                this.previousMedia = TLRPC.MessageMedia.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                this.previousMessage = serializedData.readString(false);
                this.previousAttachPath = serializedData.readString(false);
                int int32 = serializedData.readInt32(false);
                this.previousMessageEntities = new ArrayList<>(int32);
                for (int i = 0; i < int32; i++) {
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
        return ((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && !replyMarkup.rows.isEmpty()) || getInlineBotButtons() != null;
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
            if ((replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && replyMarkup.rows != null) {
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
                if ((button instanceof BotInlineKeyboard.ButtonBot) && (((BotInlineKeyboard.ButtonBot) button).button instanceof TLRPC.TL_keyboardButtonBuy) && (getMedia(this.messageOwner).flags & 4) != 0) {
                    charSequenceReplaceEmoji = LocaleController.getString(C2888R.string.PaymentReceipt);
                } else {
                    String text = button.getText();
                    if (text == null) {
                        text = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    charSequenceReplaceEmoji = Emoji.replaceEmoji(text, Theme.chat_msgBotButtonPaint.getFontMetricsInt(), false);
                }
                StaticLayout staticLayout = new StaticLayout(charSequenceReplaceEmoji, Theme.chat_msgBotButtonPaint, AndroidUtilities.m1124dp(2000.0f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                if (staticLayout.getLineCount() > 0) {
                    float lineWidth = staticLayout.getLineWidth(0);
                    float lineLeft = staticLayout.getLineLeft(0);
                    if (lineLeft < lineWidth) {
                        lineWidth -= lineLeft;
                    }
                    if (button.getIconRes() != 0) {
                        lineWidth += AndroidUtilities.m1124dp(36.0f);
                    }
                    if (button.getIconEmoji() != 0) {
                        lineWidth += AndroidUtilities.m1124dp(36.0f);
                    }
                    iMax = Math.max(iMax, ((int) Math.ceil(lineWidth)) + AndroidUtilities.m1124dp(4.0f));
                }
            }
            this.wantedBotKeyboardWidth = Math.max(this.wantedBotKeyboardWidth, ((iMax + AndroidUtilities.m1124dp(12.0f)) * columnsCount) + (AndroidUtilities.m1124dp(5.0f) * (columnsCount - 1)));
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

    private TLRPC.User getUser(AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray longSparseArray, long j) {
        TLRPC.User user;
        if (abstractMap != null) {
            user = abstractMap.get(Long.valueOf(j));
        } else {
            user = longSparseArray != null ? (TLRPC.User) longSparseArray.get(j) : null;
        }
        return user == null ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)) : user;
    }

    private TLRPC.Chat getChat(AbstractMap<Long, TLRPC.Chat> abstractMap, LongSparseArray longSparseArray, long j) {
        TLRPC.Chat chat;
        if (abstractMap != null) {
            chat = abstractMap.get(Long.valueOf(j));
        } else {
            chat = longSparseArray != null ? (TLRPC.Chat) longSparseArray.get(j) : null;
        }
        return chat == null ? MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j)) : chat;
    }

    public void updateMessageText() {
        updateMessageText(MessagesController.getInstance(this.currentAccount).getUsers(), MessagesController.getInstance(this.currentAccount).getChats(), null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:1176:0x1d54  */
    /* JADX WARN: Removed duplicated region for block: B:1186:0x1d7c  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:1315:0x21eb  */
    /* JADX WARN: Removed duplicated region for block: B:1329:0x223b  */
    /* JADX WARN: Removed duplicated region for block: B:1397:0x23f8 A[LOOP:4: B:1379:0x23bf->B:1397:0x23f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:1494:0x261e  */
    /* JADX WARN: Removed duplicated region for block: B:1507:0x2667  */
    /* JADX WARN: Removed duplicated region for block: B:1537:0x23f6 A[EDGE_INSN: B:1537:0x23f6->B:1396:0x23f6 BREAK  A[LOOP:4: B:1379:0x23bf->B:1397:0x23f8], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x087c  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:632:0x1024  */
    /* JADX WARN: Removed duplicated region for block: B:658:0x10a2  */
    /* JADX WARN: Removed duplicated region for block: B:675:0x1106  */
    /* JADX WARN: Removed duplicated region for block: B:758:0x12fa  */
    /* JADX WARN: Removed duplicated region for block: B:858:0x15c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateMessageText(AbstractMap<Long, TLRPC.User> abstractMap, AbstractMap<Long, TLRPC.Chat> abstractMap2, LongSparseArray longSparseArray, LongSparseArray longSparseArray2) {
        TLRPC.User user;
        TLRPC.Chat chat;
        TLRPC.Message message;
        String str;
        char c;
        String pluralString;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String publicUsername;
        boolean zIsChannelAndNotMegaGroup;
        String str2;
        int i;
        int i2;
        TLRPC.Chat chat2;
        TLRPC.TodoItem todoItem;
        TLRPC.User user2;
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
        ArrayList arrayList;
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
        AmountUtils$Amount amountUtils$Amount;
        int i5;
        AmountUtils$Amount amountUtils$Amount2;
        TLRPC.Chat chat10;
        TLObject chat11;
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
                            TLRPC.User user3 = getUser(abstractMap, longSparseArray, ((TLRPC.TL_messageActionNewCreatorPending) messageAction).new_creator_id);
                            String string3 = LocaleController.getString(C2888R.string.ActionNewCreatorPending);
                            this.messageText = string3;
                            CharSequence charSequenceReplaceWithLink = replaceWithLink(string3, "un1", user3);
                            this.messageText = charSequenceReplaceWithLink;
                            this.messageText = replaceWithLink(charSequenceReplaceWithLink, "un2", chat14);
                        } else if (messageAction instanceof TLRPC.TL_messageActionChangeCreator) {
                            TLRPC.User user4 = getUser(abstractMap, longSparseArray, ((TLRPC.TL_messageActionChangeCreator) messageAction).new_creator_id);
                            String string4 = LocaleController.getString(C2888R.string.ActionChangeCreator);
                            this.messageText = string4;
                            CharSequence charSequenceReplaceWithLink2 = replaceWithLink(string4, "un1", chat14);
                            this.messageText = charSequenceReplaceWithLink2;
                            this.messageText = replaceWithLink(charSequenceReplaceWithLink2, "un2", user4);
                        } else if (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper) {
                            this.contentType = 1;
                            this.type = 10;
                            TLRPC.TL_messageActionSetSameChatWallPaper tL_messageActionSetSameChatWallPaper = (TLRPC.TL_messageActionSetSameChatWallPaper) messageAction;
                            TLRPC.User user5 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            ArrayList<TLRPC.PhotoSize> arrayList2 = new ArrayList<>();
                            this.photoThumbs = arrayList2;
                            TLRPC.Document document = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            if (document != null) {
                                arrayList2.addAll(document.thumbs);
                                this.photoThumbsObject = tL_messageActionSetSameChatWallPaper.wallpaper.document;
                            }
                            if (user5 != null) {
                                if (user5.f1825id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    this.messageText = LocaleController.formatString(C2888R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]);
                                } else {
                                    this.messageText = LocaleController.formatString(C2888R.string.ActionSetSameWallpaperForThisChat, user5.first_name);
                                }
                            } else if (chat != null) {
                                this.messageText = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.ActionSetWallpaperForThisChannel : C2888R.string.ActionSetWallpaperForThisGroup);
                            } else if (user != null) {
                                this.messageText = LocaleController.formatString(C2888R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
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
                            TLRPC.User user6 = getUser(abstractMap, longSparseArray, isOutOwner() ? 0L : getDialogId());
                            TLRPC.User user7 = getUser(abstractMap, longSparseArray, getDialogId());
                            if (user6 != null) {
                                if (user6.f1825id == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                    if (tL_messageActionSetChatWallPaper.same) {
                                        this.type = 10;
                                        this.messageText = LocaleController.formatString(C2888R.string.ActionSetSameWallpaperForThisChatSelf, new Object[0]);
                                    } else if (tL_messageActionSetChatWallPaper.for_both && user7 != null) {
                                        this.messageText = LocaleController.getString(C2888R.string.ActionSetWallpaperForThisChatSelfBoth);
                                        SpannableString spannableString = new SpannableString(UserObject.getFirstName(user7));
                                        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString.length(), 33);
                                        this.messageText = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString);
                                    } else {
                                        this.messageText = LocaleController.getString(C2888R.string.ActionSetWallpaperForThisChatSelf);
                                    }
                                } else {
                                    SpannableString spannableString2 = new SpannableString(UserObject.getFirstName(user6));
                                    spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString2.length(), 33);
                                    if (tL_messageActionSetChatWallPaper.same) {
                                        this.type = 10;
                                        this.messageText = LocaleController.getString(C2888R.string.ActionSetSameWallpaperForThisChat);
                                    } else if (tL_messageActionSetChatWallPaper.for_both) {
                                        this.messageText = LocaleController.getString(C2888R.string.ActionSetWallpaperForThisChatBoth);
                                    } else {
                                        this.messageText = LocaleController.getString(C2888R.string.ActionSetWallpaperForThisChat);
                                    }
                                    this.messageText = AndroidUtilities.replaceCharSequence("%s", this.messageText, spannableString2);
                                }
                            } else if (chat != null) {
                                this.messageText = LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(chat) ? C2888R.string.ActionSetWallpaperForThisChannel : C2888R.string.ActionSetWallpaperForThisGroup);
                            } else if (user != null) {
                                this.messageText = LocaleController.formatString(C2888R.string.ActionSetWallpaperForThisGroupByUser, UserObject.getFirstName(user));
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionGroupCallScheduled) {
                            TLRPC.TL_messageActionGroupCallScheduled tL_messageActionGroupCallScheduled = (TLRPC.TL_messageActionGroupCallScheduled) messageAction;
                            if ((message.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) {
                                this.messageText = LocaleController.formatString(C2888R.string.ActionGroupCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false));
                            } else {
                                this.messageText = LocaleController.formatString(C2888R.string.ActionChannelCallScheduled, LocaleController.formatStartsTime(tL_messageActionGroupCallScheduled.schedule_date, 3, false));
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionGroupCall) {
                            int i6 = messageAction.duration;
                            if (i6 != 0) {
                                int i7 = i6 / 86400;
                                if (i7 > 0) {
                                    pluralString2 = LocaleController.formatPluralString("Days", i7, new Object[0]);
                                } else {
                                    int i8 = i6 / 3600;
                                    if (i8 > 0) {
                                        pluralString2 = LocaleController.formatPluralString("Hours", i8, new Object[0]);
                                    } else {
                                        int i9 = i6 / 60;
                                        if (i9 > 0) {
                                            pluralString2 = LocaleController.formatPluralString("Minutes", i9, new Object[0]);
                                        } else {
                                            pluralString2 = LocaleController.formatPluralString("Seconds", i6, new Object[0]);
                                        }
                                    }
                                }
                                if (!(this.messageOwner.peer_id instanceof TLRPC.TL_peerChat) && !isSupergroup()) {
                                    this.messageText = LocaleController.formatString(C2888R.string.ActionChannelCallEnded, pluralString2);
                                } else if (isOut()) {
                                    this.messageText = LocaleController.formatString(C2888R.string.ActionGroupCallEndedByYou, pluralString2);
                                } else {
                                    this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionGroupCallEndedBy, pluralString2), "un1", chat14);
                                }
                            } else if ((message.peer_id instanceof TLRPC.TL_peerChat) || isSupergroup()) {
                                if (isOut()) {
                                    this.messageText = LocaleController.getString(C2888R.string.ActionGroupCallStartedByYou);
                                } else {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallStarted), "un1", chat14);
                                }
                            } else {
                                this.messageText = LocaleController.getString(C2888R.string.ActionChannelCallJustStarted);
                            }
                        } else if (messageAction instanceof TLRPC.TL_messageActionInviteToGroupCall) {
                            long jLongValue = messageAction.user_id;
                            if (jLongValue == 0 && messageAction.users.size() == 1) {
                                jLongValue = ((Long) this.messageOwner.action.users.get(0)).longValue();
                            }
                            if (jLongValue != 0) {
                                TLRPC.User user8 = getUser(abstractMap, longSparseArray, jLongValue);
                                if (isOut()) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallYouInvited), "un2", user8);
                                } else if (jLongValue == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallInvitedYou), "un1", chat14);
                                } else {
                                    CharSequence charSequenceReplaceWithLink3 = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallInvited), "un2", user8);
                                    this.messageText = charSequenceReplaceWithLink3;
                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink3, "un1", chat14);
                                }
                            } else if (isOut()) {
                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallYouInvited), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                            } else {
                                CharSequence charSequenceReplaceWithLink4 = replaceWithLink(LocaleController.getString(C2888R.string.ActionGroupCallInvited), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                this.messageText = charSequenceReplaceWithLink4;
                                this.messageText = replaceWithLink(charSequenceReplaceWithLink4, "un1", chat14);
                            }
                        } else {
                            if (messageAction instanceof TLRPC.TL_messageActionGeoProximityReached) {
                                TLRPC.TL_messageActionGeoProximityReached tL_messageActionGeoProximityReached = (TLRPC.TL_messageActionGeoProximityReached) messageAction;
                                long peerId = getPeerId(tL_messageActionGeoProximityReached.from_id);
                                if (peerId > 0) {
                                    chat12 = getUser(abstractMap, longSparseArray, peerId);
                                    str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                } else {
                                    str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                    chat12 = getChat(abstractMap2, longSparseArray2, -peerId);
                                }
                                long peerId2 = getPeerId(tL_messageActionGeoProximityReached.to_id);
                                long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
                                if (peerId2 == clientUserId) {
                                    this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionUserWithinRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2)), "un1", chat12);
                                } else {
                                    if (peerId2 > 0) {
                                        chat13 = getUser(abstractMap, longSparseArray, peerId2);
                                    } else {
                                        chat13 = getChat(abstractMap2, longSparseArray2, -peerId2);
                                    }
                                    if (peerId == clientUserId) {
                                        this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionUserWithinYouRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2)), "un1", chat13);
                                    } else {
                                        CharSequence charSequenceReplaceWithLink5 = replaceWithLink(LocaleController.formatString(C2888R.string.ActionUserWithinOtherRadius, LocaleController.formatDistance(tL_messageActionGeoProximityReached.distance, 2)), "un2", chat13);
                                        this.messageText = charSequenceReplaceWithLink5;
                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink5, "un1", chat12);
                                    }
                                }
                            } else {
                                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                if (messageAction instanceof TLRPC.TL_messageActionCustomAction) {
                                    this.messageText = messageAction.message;
                                } else if (messageAction instanceof TLRPC.TL_messageActionChatCreate) {
                                    if (isOut()) {
                                        this.messageText = LocaleController.getString(C2888R.string.ActionYouCreateGroup);
                                    } else {
                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionCreateGroup), "un1", chat14);
                                    }
                                } else if (messageAction instanceof TLRPC.TL_messageActionChatDeleteUser) {
                                    if (isFromUser()) {
                                        TLRPC.Message message2 = this.messageOwner;
                                        if (message2.action.user_id == message2.from_id.user_id) {
                                            if (isOut()) {
                                                this.messageText = LocaleController.getString(C2888R.string.ActionYouLeftUser);
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionLeftUser), "un1", chat14);
                                            }
                                        } else {
                                            TLRPC.User user9 = getUser(abstractMap, longSparseArray, this.messageOwner.action.user_id);
                                            if (isOut()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionYouKickUser), "un2", user9);
                                            } else if (this.messageOwner.action.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionKickUserYou), "un1", chat14);
                                            } else {
                                                CharSequence charSequenceReplaceWithLink6 = replaceWithLink(LocaleController.getString(C2888R.string.ActionKickUser), "un2", user9);
                                                this.messageText = charSequenceReplaceWithLink6;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink6, "un1", chat14);
                                            }
                                        }
                                    }
                                } else if (messageAction instanceof TLRPC.TL_messageActionPaymentRefunded) {
                                    TLRPC.TL_messageActionPaymentRefunded tL_messageActionPaymentRefunded = (TLRPC.TL_messageActionPaymentRefunded) messageAction;
                                    long peerDialogId = DialogObject.getPeerDialogId(tL_messageActionPaymentRefunded.peer);
                                    if (peerDialogId >= 0) {
                                        chat11 = getUser(abstractMap, longSparseArray, peerDialogId);
                                    } else {
                                        chat11 = getChat(abstractMap2, longSparseArray2, -peerDialogId);
                                    }
                                    this.messageText = StarsIntroActivity.replaceStars(replaceWithLink(LocaleController.formatString(C2888R.string.ActionRefunded, tL_messageActionPaymentRefunded.currency + " " + LocaleController.formatNumber(tL_messageActionPaymentRefunded.total_amount, ',')), "un1", chat11));
                                } else {
                                    if (TlUtils.isInstance(messageAction, TLRPC.TL_messageActionSuggestedPostRefund.class, TLRPC.TL_messageActionSuggestedPostSuccess.class)) {
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
                                            if (messageSuggestionParamsObtainSuggestionOfferFromReply == null || (amountUtils$Amount2 = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) == null) {
                                                if (z2) {
                                                    i5 = C2888R.string.SuggestedOfferRefundByUserAmountUnknown;
                                                } else {
                                                    i5 = C2888R.string.SuggestedOfferRefundByAdminAmountUnknown;
                                                }
                                                this.messageText = LocaleController.formatString(i5, name2, monoForumTitle);
                                            } else {
                                                this.messageText = StarsIntroActivity.replaceStars(amountUtils$Amount2.currency == AmountUtils$Currency.TON, LocaleController.formatString(z2 ? C2888R.string.SuggestedOfferRefundByUserAmountF : C2888R.string.SuggestedOfferRefundByAdminAmountF, name2, monoForumTitle, amountUtils$Amount2.asDecimalString()));
                                            }
                                        } else if (messageAction2 instanceof TLRPC.TL_messageActionSuggestedPostSuccess) {
                                            if (messageSuggestionParamsObtainSuggestionOfferFromReply == null || (amountUtils$Amount = messageSuggestionParamsObtainSuggestionOfferFromReply.amount) == null) {
                                                this.messageText = LocaleController.formatString(C2888R.string.SuggestedOfferCompleteAmountUnknown, monoForumTitle);
                                            } else {
                                                this.messageText = StarsIntroActivity.replaceStars(amountUtils$Amount.currency == AmountUtils$Currency.TON, LocaleController.formatString(C2888R.string.SuggestedOfferCompleteAmountF, monoForumTitle, amountUtils$Amount.asDecimalString()));
                                            }
                                        }
                                    } else {
                                        TLRPC.Message message3 = this.messageOwner;
                                        TLRPC.MessageAction messageAction3 = message3.action;
                                        if (messageAction3 instanceof TLRPC.TL_messageActionChatAddUser) {
                                            long jLongValue2 = messageAction3.user_id;
                                            if (jLongValue2 == 0 && messageAction3.users.size() == 1) {
                                                jLongValue2 = ((Long) this.messageOwner.action.users.get(0)).longValue();
                                            }
                                            if (jLongValue2 != 0) {
                                                TLRPC.User user10 = getUser(abstractMap, longSparseArray, jLongValue2);
                                                long j2 = this.messageOwner.peer_id.channel_id;
                                                TLRPC.Chat chat16 = j2 != 0 ? getChat(abstractMap2, longSparseArray2, j2) : null;
                                                TLRPC.Peer peer3 = this.messageOwner.from_id;
                                                if (peer3 != null && jLongValue2 == peer3.user_id) {
                                                    if (ChatObject.isChannel(chat16) && !chat16.megagroup) {
                                                        this.channelJoined = true;
                                                        this.messageText = LocaleController.getString(C2888R.string.ChannelJoined);
                                                    } else if (this.messageOwner.peer_id.channel_id != 0) {
                                                        if (jLongValue2 == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ChannelMegaJoined);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionAddUserSelfMega), "un1", chat14);
                                                        }
                                                    } else if (isOut()) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionAddUserSelfYou);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionAddUserSelf), "un1", chat14);
                                                    }
                                                } else if (isOut()) {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionYouAddUser), "un2", user10);
                                                } else if (jLongValue2 != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                    CharSequence charSequenceReplaceWithLink7 = replaceWithLink(LocaleController.getString(C2888R.string.ActionAddUser), "un2", user10);
                                                    this.messageText = charSequenceReplaceWithLink7;
                                                    this.messageText = replaceWithLink(charSequenceReplaceWithLink7, "un1", chat14);
                                                } else if (this.messageOwner.peer_id.channel_id != 0) {
                                                    if (chat16 != null && chat16.megagroup) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.MegaAddedBy), "un1", chat14);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ChannelAddedBy), "un1", chat14);
                                                    }
                                                } else {
                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionAddUserYou), "un1", chat14);
                                                }
                                            } else if (isOut()) {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionYouAddUser), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                            } else {
                                                CharSequence charSequenceReplaceWithLink8 = replaceWithLink(LocaleController.getString(C2888R.string.ActionAddUser), "un2", this.messageOwner.action.users, abstractMap, longSparseArray);
                                                this.messageText = charSequenceReplaceWithLink8;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink8, "un1", chat14);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionChatJoinedByLink) {
                                            if (isOut()) {
                                                this.messageText = LocaleController.getString(C2888R.string.ActionInviteYou);
                                            } else {
                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionInviteUser), "un1", chat14);
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayLaunch) {
                                            TLRPC.TL_messageActionGiveawayLaunch tL_messageActionGiveawayLaunch = (TLRPC.TL_messageActionGiveawayLaunch) messageAction3;
                                            TLRPC.Peer peer4 = message3.peer_id;
                                            if (peer4 != null) {
                                                long j3 = peer4.channel_id;
                                                TLRPC.Chat chat17 = j3 != 0 ? getChat(abstractMap2, longSparseArray2, j3) : null;
                                                boolean zIsChannelAndNotMegaGroup2 = ChatObject.isChannelAndNotMegaGroup(chat17);
                                                if ((tL_messageActionGiveawayLaunch.flags & 1) != 0) {
                                                    this.messageText = LocaleController.formatPluralStringComma(zIsChannelAndNotMegaGroup2 ? "BoostingStarsGiveawayJustStarted" : "BoostingStarsGiveawayJustStartedGroup", (int) tL_messageActionGiveawayLaunch.stars, chat17 != null ? chat17.title : str2);
                                                } else {
                                                    this.messageText = LocaleController.formatString(zIsChannelAndNotMegaGroup2 ? C2888R.string.BoostingGiveawayJustStarted : C2888R.string.BoostingGiveawayJustStartedGroup, chat17 != null ? chat17.title : str2);
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionBoostApply) {
                                            TLRPC.Peer peer5 = message3.peer_id;
                                            if (peer5 != null) {
                                                long j4 = peer5.channel_id;
                                                TLRPC.Chat chat18 = j4 != 0 ? getChat(abstractMap2, longSparseArray2, j4) : null;
                                                boolean zIsChannelAndNotMegaGroup3 = ChatObject.isChannelAndNotMegaGroup(chat18);
                                                TLRPC.TL_messageActionBoostApply tL_messageActionBoostApply = (TLRPC.TL_messageActionBoostApply) this.messageOwner.action;
                                                if (chat14 instanceof TLRPC.User) {
                                                    TLRPC.User user11 = (TLRPC.User) chat14;
                                                    zIsUserSelf = UserObject.isUserSelf(user11);
                                                    firstName = UserObject.getFirstName(user11);
                                                } else {
                                                    firstName = chat14 instanceof TLRPC.Chat ? ((TLRPC.Chat) chat14).title : str2;
                                                    zIsUserSelf = false;
                                                }
                                                if (zIsUserSelf) {
                                                    int i10 = tL_messageActionBoostApply.boosts;
                                                    if (i10 <= 1) {
                                                        this.messageText = LocaleController.getString(zIsChannelAndNotMegaGroup3 ? C2888R.string.BoostingBoostsChannelByYouServiceMsg : C2888R.string.BoostingBoostsGroupByYouServiceMsg);
                                                    } else {
                                                        this.messageText = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup3 ? "BoostingBoostsChannelByYouServiceMsgCount" : "BoostingBoostsGroupByYouServiceMsgCount", i10, new Object[0]);
                                                    }
                                                } else {
                                                    int i11 = tL_messageActionBoostApply.boosts;
                                                    if (i11 <= 1) {
                                                        this.messageText = LocaleController.formatString(zIsChannelAndNotMegaGroup3 ? C2888R.string.BoostingBoostsChannelByUserServiceMsg : C2888R.string.BoostingBoostsGroupByUserServiceMsg, firstName);
                                                    } else {
                                                        this.messageText = LocaleController.formatPluralString(zIsChannelAndNotMegaGroup3 ? "BoostingBoostsChannelByUserServiceMsgCount" : "BoostingBoostsGroupByUserServiceMsgCount", i11, firstName);
                                                    }
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiveawayResults) {
                                            TLRPC.Peer peer6 = message3.peer_id;
                                            if (peer6 != null) {
                                                long j5 = peer6.channel_id;
                                                TLRPC.Chat chat19 = j5 != 0 ? getChat(abstractMap2, longSparseArray2, j5) : null;
                                                boolean zIsChannelAndNotMegaGroup4 = ChatObject.isChannelAndNotMegaGroup(chat19);
                                                TLRPC.TL_messageActionGiveawayResults tL_messageActionGiveawayResults = (TLRPC.TL_messageActionGiveawayResults) this.messageOwner.action;
                                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                                if (tL_messageActionGiveawayResults.stars) {
                                                    spannableStringBuilder.append((CharSequence) LocaleController.formatPluralStringComma("BoostingStarsGiveawayServiceWinnersSelected", tL_messageActionGiveawayResults.winners_count));
                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                        spannableStringBuilder.append((CharSequence) "\n");
                                                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingStarsGiveawayServiceUndistributed" : "BoostingStarsGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]));
                                                    }
                                                } else {
                                                    spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString("BoostingGiveawayServiceWinnersSelected", tL_messageActionGiveawayResults.winners_count, new Object[0]));
                                                    if (tL_messageActionGiveawayResults.unclaimed_count > 0) {
                                                        spannableStringBuilder.append((CharSequence) "\n");
                                                        spannableStringBuilder.append((CharSequence) LocaleController.formatPluralString(zIsChannelAndNotMegaGroup4 ? "BoostingGiveawayServiceUndistributed" : "BoostingGiveawayServiceUndistributedGroup", tL_messageActionGiveawayResults.unclaimed_count, new Object[0]));
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
                                            TLRPC.Peer peer7 = tL_messageActionStarGift.peer;
                                            boolean z3 = peer7 != null && DialogObject.getPeerDialogId(peer7) < 0;
                                            TLRPC.User user12 = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                            if (!tL_messageActionStarGift.prepaid_upgrade && (peer = tL_messageActionStarGift.from_id) != null) {
                                                long peerDialogId2 = DialogObject.getPeerDialogId(peer);
                                                if (peerDialogId2 >= 0) {
                                                    chat14 = getUser(abstractMap, longSparseArray, peerDialogId2);
                                                } else {
                                                    chat14 = getChat(abstractMap2, longSparseArray2, -peerDialogId2);
                                                }
                                            }
                                            TLRPC.Peer peer8 = tL_messageActionStarGift.peer;
                                            if (peer8 != null) {
                                                long peerDialogId3 = DialogObject.getPeerDialogId(peer8);
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
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionPrepaidGiftOutbound)), "un1", user12);
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionPrepaidGiftInbound)), "un1", chat14);
                                                }
                                            } else if (UserObject.isService(getDialogId()) && tL_messageActionStarGift.from_id == null) {
                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(tL_messageActionStarGift.auction_acquired ? C2888R.string.ActionGiftAuctionSelf : C2888R.string.ActionGiftSomeone));
                                                this.messageTextShort = LocaleController.getString(C2888R.string.ActionStarGift);
                                            } else if (z3) {
                                                SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionGiftChannel", i4));
                                                this.messageText = spannableStringBuilderReplaceTags;
                                                CharSequence charSequenceReplaceWithLink9 = replaceWithLink(spannableStringBuilderReplaceTags, "un1", chat14);
                                                this.messageText = charSequenceReplaceWithLink9;
                                                this.messageText = replaceWithLink(charSequenceReplaceWithLink9, "un2", chat9);
                                                this.messageTextShort = LocaleController.getString(C2888R.string.ActionStarGift);
                                            } else if (UserObject.isUserSelf(user12)) {
                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(tL_messageActionStarGift.auction_acquired ? C2888R.string.ActionGiftAuctionSelf : C2888R.string.ActionGiftSelf));
                                                this.messageTextShort = LocaleController.getString(C2888R.string.ActionStarGift);
                                            } else {
                                                boolean z4 = chat14 instanceof TLRPC.User;
                                                if (z4 && ((TLRPC.User) chat14).self && !tL_messageActionStarGift.forceIn) {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftOutbound)), "un1", user12);
                                                    TLRPC.TL_textWithEntities tL_textWithEntities2 = tL_messageActionStarGift.message;
                                                    if (tL_textWithEntities2 != null && !TextUtils.isEmpty(tL_textWithEntities2.text)) {
                                                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                        addEntitiesToText(spannableStringBuilder2, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                        this.messageTextShort = spannableStringBuilder2;
                                                    } else {
                                                        this.messageTextShort = LocaleController.getString(C2888R.string.ActionStarGift);
                                                    }
                                                } else if (z4 && UserObject.isService(((TLRPC.User) chat14).f1825id)) {
                                                    this.messageText = TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(C2888R.string.StarsTransactionUnknown)});
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftInbound)), "un1", chat14);
                                                    TLRPC.TL_textWithEntities tL_textWithEntities3 = tL_messageActionStarGift.message;
                                                    if (tL_textWithEntities3 != null && !TextUtils.isEmpty(tL_textWithEntities3.text)) {
                                                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(tL_messageActionStarGift.message.text);
                                                        addEntitiesToText(spannableStringBuilder3, tL_messageActionStarGift.message.entities, isOutOwner(), false, false, false);
                                                        this.messageTextShort = spannableStringBuilder3;
                                                    } else {
                                                        this.messageTextShort = LocaleController.getString(C2888R.string.ActionStarGift);
                                                    }
                                                }
                                            }
                                            int iIndexOf = this.messageText.toString().indexOf("un2");
                                            if (iIndexOf != -1) {
                                                this.messageText = SpannableStringBuilder.valueOf(this.messageText).replace(iIndexOf, iIndexOf + 3, (CharSequence) LocaleController.formatPluralStringComma("Gift2StarsCount", i4));
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionStarGiftUnique) {
                                            TLRPC.TL_messageActionStarGiftUnique tL_messageActionStarGiftUnique = (TLRPC.TL_messageActionStarGiftUnique) messageAction3;
                                            TLRPC.User user13 = getUser(abstractMap, longSparseArray, getDialogId());
                                            TL_stars.StarsAmount starsAmount = tL_messageActionStarGiftUnique.resale_amount;
                                            if (starsAmount != null) {
                                                AmountUtils$Amount amountUtils$AmountOfSafe = AmountUtils$Amount.ofSafe(starsAmount);
                                                long dialogId = getDialogId();
                                                TLRPC.Peer peer9 = tL_messageActionStarGiftUnique.from_id;
                                                if (peer9 != null) {
                                                    dialogId = DialogObject.getPeerDialogId(peer9);
                                                }
                                                if (dialogId >= 0) {
                                                    chat7 = getUser(abstractMap, longSparseArray, dialogId);
                                                } else {
                                                    chat7 = getChat(abstractMap2, longSparseArray2, -dialogId);
                                                }
                                                if (tL_messageActionStarGiftUnique.craft) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionUniqueGiftCrafted));
                                                } else {
                                                    TLRPC.Peer peer10 = tL_messageActionStarGiftUnique.peer;
                                                    if (peer10 != null) {
                                                        long peerDialogId4 = DialogObject.getPeerDialogId(peer10);
                                                        if (peerDialogId4 >= 0) {
                                                            chat8 = getUser(abstractMap, longSparseArray, peerDialogId4);
                                                        } else {
                                                            chat8 = getChat(abstractMap2, longSparseArray2, -peerDialogId4);
                                                        }
                                                        if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                            this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.ActionUniqueGiftResaleServiceTON, amountUtils$AmountOfSafe.asFormatString()));
                                                        } else {
                                                            this.messageText = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("ActionUniqueGiftResaleService", (int) amountUtils$AmountOfSafe.asDecimal()));
                                                        }
                                                        CharSequence charSequenceReplaceWithLink10 = replaceWithLink(this.messageText, "un1", chat7);
                                                        this.messageText = charSequenceReplaceWithLink10;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink10, "un2", chat8);
                                                    } else {
                                                        if (tL_messageActionStarGiftUnique.from_offer) {
                                                            if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(isOutOwner() ? C2888R.string.ActionUniqueGiftResaleSoldOutboundTON : C2888R.string.ActionUniqueGiftResaleOutboundTON, amountUtils$AmountOfSafe.asFormatString()));
                                                            } else {
                                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(isOutOwner() ? "ActionUniqueGiftResaleSoldOutbound" : "ActionUniqueGiftResaleOutbound", (int) amountUtils$AmountOfSafe.asDecimal()));
                                                            }
                                                        } else if (amountUtils$AmountOfSafe.currency == AmountUtils$Currency.TON) {
                                                            this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(isOutOwner() ? C2888R.string.ActionUniqueGiftResaleOutboundTON : C2888R.string.ActionUniqueGiftResaleInboundTON, amountUtils$AmountOfSafe.asFormatString())), "un1", chat7);
                                                        } else {
                                                            this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(isOutOwner() ? "ActionUniqueGiftResaleOutbound" : "ActionUniqueGiftResaleInbound", (int) amountUtils$AmountOfSafe.asDecimal())), "un1", chat7);
                                                        }
                                                    }
                                                }
                                            } else if (tL_messageActionStarGiftUnique.upgrade) {
                                                TLRPC.Peer peer11 = tL_messageActionStarGiftUnique.peer;
                                                if (peer11 != null) {
                                                    long peerDialogId5 = DialogObject.getPeerDialogId(peer11);
                                                    if (peerDialogId5 >= 0) {
                                                        chat6 = getUser(abstractMap, longSparseArray, peerDialogId5);
                                                    } else {
                                                        chat6 = getChat(abstractMap2, longSparseArray2, -peerDialogId5);
                                                    }
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionUniqueGiftUpgradeInboundChannel)), "un1", chat6);
                                                } else if (UserObject.isUserSelf(user13)) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionUniqueGiftUpgradeSelf));
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(isOutOwner() ? C2888R.string.ActionUniqueGiftUpgradeOutbound : C2888R.string.ActionUniqueGiftUpgradeInbound)), "un1", user13);
                                                }
                                            } else {
                                                long dialogId2 = getDialogId();
                                                TLRPC.Peer peer12 = tL_messageActionStarGiftUnique.from_id;
                                                if (peer12 != null) {
                                                    dialogId2 = DialogObject.getPeerDialogId(peer12);
                                                }
                                                if (dialogId2 >= 0) {
                                                    chat4 = getUser(abstractMap, longSparseArray, dialogId2);
                                                } else {
                                                    chat4 = getChat(abstractMap2, longSparseArray2, -dialogId2);
                                                }
                                                if (tL_messageActionStarGiftUnique.craft) {
                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionUniqueGiftCrafted));
                                                } else {
                                                    TLRPC.Peer peer13 = tL_messageActionStarGiftUnique.peer;
                                                    if (peer13 != null) {
                                                        long peerDialogId6 = DialogObject.getPeerDialogId(peer13);
                                                        if (peerDialogId6 >= 0) {
                                                            chat5 = getUser(abstractMap, longSparseArray, peerDialogId6);
                                                        } else {
                                                            chat5 = getChat(abstractMap2, longSparseArray2, -peerDialogId6);
                                                        }
                                                        SpannableStringBuilder spannableStringBuilderReplaceTags2 = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionUniqueGiftTransferService));
                                                        this.messageText = spannableStringBuilderReplaceTags2;
                                                        CharSequence charSequenceReplaceWithLink11 = replaceWithLink(spannableStringBuilderReplaceTags2, "un1", chat4);
                                                        this.messageText = charSequenceReplaceWithLink11;
                                                        this.messageText = replaceWithLink(charSequenceReplaceWithLink11, "un2", chat5);
                                                    } else if (tL_messageActionStarGiftUnique.assigned) {
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.ActionUniqueGiftTransferOutboundAssigned, tL_messageActionStarGiftUnique.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftUnique.gift.num, ','))), "un1", chat4);
                                                    } else {
                                                        this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(isOutOwner() ? C2888R.string.ActionUniqueGiftTransferOutbound : C2888R.string.ActionUniqueGiftTransferInbound)), "un1", chat4);
                                                    }
                                                }
                                            }
                                        } else if (messageAction3 instanceof TLRPC.TL_messageActionGiftStars) {
                                            boolean z5 = chat14 instanceof TLRPC.User;
                                            if (z5 && ((TLRPC.User) chat14).self) {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, message3.peer_id.user_id));
                                            } else if (z5 && UserObject.isService(((TLRPC.User) chat14).f1825id)) {
                                                this.messageText = TextUtils.replace(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftInbound)), new String[]{"un1"}, new CharSequence[]{LocaleController.getString(C2888R.string.StarsTransactionUnknown)});
                                            } else {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftInbound)), "un1", chat14);
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
                                            this.messageText = LocaleController.getString(C2888R.string.BoostingReceivedGiftNoName);
                                        } else if (TlUtils.isInstance(messageAction3, TLRPC.TL_messageActionGiftPremium.class, TLRPC.TL_messageActionGiftCode.class, TLRPC.TL_messageActionGiftTon.class)) {
                                            if ((chat14 instanceof TLRPC.User) && ((TLRPC.User) chat14).self) {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftOutbound)), "un1", getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id));
                                            } else if (this.messageOwner.action instanceof TLRPC.TL_messageActionGiftTon) {
                                                this.messageText = AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftTonInbound));
                                            } else {
                                                this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionGiftInbound)), "un1", chat14);
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
                                                    this.messageText = LocaleController.getString(C2888R.string.ActionYouSuggestBirthday);
                                                } else {
                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.ActionSuggestBirthday)), "un1", chat14);
                                                }
                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionSuggestProfilePhoto) {
                                                TLRPC.Photo photo = messageAction6.photo;
                                                if (photo != null && (arrayList = photo.video_sizes) != null && !arrayList.isEmpty()) {
                                                    this.messageText = LocaleController.getString(C2888R.string.ActionSuggestVideoShort);
                                                } else {
                                                    this.messageText = LocaleController.getString(C2888R.string.ActionSuggestPhotoShort);
                                                }
                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditPhoto) {
                                                TLRPC.Peer peer14 = message4.peer_id;
                                                if (peer14 != null) {
                                                    long j6 = peer14.channel_id;
                                                    TLRPC.Chat chat20 = j6 != 0 ? getChat(abstractMap2, longSparseArray2, j6) : null;
                                                    if (ChatObject.isChannel(chat20) && !chat20.megagroup) {
                                                        if (isVideoAvatar()) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionChannelChangedVideo);
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionChannelChangedPhoto);
                                                        }
                                                    } else if (isOut()) {
                                                        if (isVideoAvatar()) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionYouChangedVideo);
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionYouChangedPhoto);
                                                        }
                                                    } else if (isVideoAvatar()) {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionChangedVideo), "un1", chat14);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionChangedPhoto), "un1", chat14);
                                                    }
                                                }
                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionChatEditTitle) {
                                                TLRPC.Peer peer15 = message4.peer_id;
                                                if (peer15 != null) {
                                                    long j7 = peer15.channel_id;
                                                    TLRPC.Chat chat21 = j7 != 0 ? getChat(abstractMap2, longSparseArray2, j7) : null;
                                                    if (ChatObject.isChannel(chat21) && !chat21.megagroup) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionChannelChangedTitle).replace("un2", this.messageOwner.action.title);
                                                    } else if (isOut()) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionYouChangedTitle).replace("un2", this.messageOwner.action.title);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionChangedTitle).replace("un2", this.messageOwner.action.title), "un1", chat14);
                                                    }
                                                }
                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionChatDeletePhoto) {
                                                TLRPC.Peer peer16 = message4.peer_id;
                                                if (peer16 != null) {
                                                    long j8 = peer16.channel_id;
                                                    TLRPC.Chat chat22 = j8 != 0 ? getChat(abstractMap2, longSparseArray2, j8) : null;
                                                    if (ChatObject.isChannel(chat22) && !chat22.megagroup) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionChannelRemovedPhoto);
                                                    } else if (isOut()) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionYouRemovedPhoto);
                                                    } else {
                                                        this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionRemovedPhoto), "un1", chat14);
                                                    }
                                                }
                                            } else if (messageAction6 instanceof TLRPC.TL_messageActionTTLChange) {
                                                if (messageAction6.ttl != 0) {
                                                    if (isOut()) {
                                                        this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(this.messageOwner.action.ttl));
                                                    } else {
                                                        this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(this.messageOwner.action.ttl));
                                                    }
                                                } else if (isOut()) {
                                                    this.messageText = LocaleController.getString(C2888R.string.MessageLifetimeYouRemoved);
                                                } else {
                                                    this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                }
                                            } else {
                                                String str4 = ", ";
                                                if (messageAction6 instanceof TLRPC.TL_messageActionRequestedPeer) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    ArrayList arrayList5 = ((TLRPC.TL_messageActionRequestedPeer) this.messageOwner.action).peers;
                                                    int size = arrayList5.size();
                                                    int i12 = 0;
                                                    int i13 = 0;
                                                    int i14 = 0;
                                                    int i15 = 0;
                                                    while (i15 < size) {
                                                        Object obj = arrayList5.get(i15);
                                                        int i16 = i15 + 1;
                                                        TLRPC.Peer peer17 = (TLRPC.Peer) obj;
                                                        ArrayList arrayList6 = arrayList5;
                                                        boolean z6 = peer17 instanceof TLRPC.TL_peerUser;
                                                        if (z6) {
                                                            z = z6;
                                                            str3 = str4;
                                                            i3 = i16;
                                                            chat3 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer17.user_id));
                                                            if (chat3 == null) {
                                                                chat3 = getUser(abstractMap, longSparseArray, peer17.user_id);
                                                            }
                                                        } else {
                                                            z = z6;
                                                            str3 = str4;
                                                            i3 = i16;
                                                            if (peer17 instanceof TLRPC.TL_peerChat) {
                                                                chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer17.chat_id));
                                                                if (chat3 == null) {
                                                                    chat3 = getChat(abstractMap2, longSparseArray2, peer17.chat_id);
                                                                }
                                                            } else if (peer17 instanceof TLRPC.TL_peerChannel) {
                                                                chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer17.channel_id));
                                                                if (chat3 == null) {
                                                                    chat3 = getChat(abstractMap2, longSparseArray2, peer17.channel_id);
                                                                }
                                                            } else {
                                                                chat3 = null;
                                                            }
                                                        }
                                                        if (z) {
                                                            i12++;
                                                        } else if (peer17 instanceof TLRPC.TL_peerChat) {
                                                            i14++;
                                                        } else {
                                                            i13++;
                                                        }
                                                        if (chat3 != null) {
                                                            arrayList4.add(chat3);
                                                        }
                                                        arrayList5 = arrayList6;
                                                        i15 = i3;
                                                        str4 = str3;
                                                    }
                                                    String str5 = str4;
                                                    if (i12 > 0 && i12 != arrayList4.size()) {
                                                        this.messageText = LocaleController.getPluralString("ActionRequestedPeerUserPlural", i12);
                                                    } else if (i13 > 0 && i13 != arrayList4.size()) {
                                                        this.messageText = LocaleController.getPluralString("ActionRequestedPeerChannelPlural", i13);
                                                    } else if (i14 > 0 && i14 != arrayList4.size()) {
                                                        this.messageText = LocaleController.getPluralString("ActionRequestedPeerChatPlural", i14);
                                                    } else {
                                                        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                                                        int i17 = 0;
                                                        while (i17 < arrayList4.size()) {
                                                            spannableStringBuilder4.append(replaceWithLink("un1", "un1", (TLObject) arrayList4.get(i17)));
                                                            String str6 = str5;
                                                            if (i17 < arrayList4.size() - 1) {
                                                                spannableStringBuilder4.append((CharSequence) str6);
                                                            }
                                                            i17++;
                                                            str5 = str6;
                                                        }
                                                        this.messageText = AndroidUtilities.replaceCharSequence("un1", LocaleController.getString(C2888R.string.ActionRequestedPeer), spannableStringBuilder4);
                                                    }
                                                    TLRPC.User user14 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getDialogId()));
                                                    if (user14 == null) {
                                                        user14 = getUser(abstractMap, longSparseArray, getDialogId());
                                                    }
                                                    this.messageText = replaceWithLink(this.messageText, "un2", user14);
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionSetMessagesTTL) {
                                                    TLRPC.TL_messageActionSetMessagesTTL tL_messageActionSetMessagesTTL = (TLRPC.TL_messageActionSetMessagesTTL) messageAction6;
                                                    TLRPC.Peer peer18 = message4.peer_id;
                                                    if (peer18 != null) {
                                                        long j9 = peer18.channel_id;
                                                        TLRPC.Chat chat23 = j9 != 0 ? getChat(abstractMap2, longSparseArray2, j9) : null;
                                                        if (chat23 != null && !chat23.megagroup) {
                                                            int i18 = tL_messageActionSetMessagesTTL.period;
                                                            if (i18 != 0) {
                                                                this.messageText = LocaleController.formatString(C2888R.string.ActionTTLChannelChanged, LocaleController.formatTTLString(i18));
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionTTLChannelDisabled);
                                                            }
                                                        } else {
                                                            long j10 = tL_messageActionSetMessagesTTL.auto_setting_from;
                                                            if (j10 != 0) {
                                                                this.drawServiceWithDefaultTypeface = true;
                                                                if (j10 == UserConfig.getInstance(this.currentAccount).clientUserId) {
                                                                    this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AutoDeleteGlobalActionFromYou, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period)));
                                                                } else {
                                                                    TLRPC.Chat chat24 = longSparseArray != null ? (TLObject) longSparseArray.get(tL_messageActionSetMessagesTTL.auto_setting_from) : null;
                                                                    if (chat24 == null && abstractMap != null) {
                                                                        chat24 = abstractMap.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                    }
                                                                    if (chat24 == null && abstractMap2 != null) {
                                                                        chat24 = abstractMap2.get(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                    }
                                                                    if (chat24 == null) {
                                                                        if (tL_messageActionSetMessagesTTL.auto_setting_from > 0) {
                                                                            chat24 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                        } else {
                                                                            chat24 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tL_messageActionSetMessagesTTL.auto_setting_from));
                                                                        }
                                                                    }
                                                                    if (chat24 != null) {
                                                                        chat14 = chat24;
                                                                    }
                                                                    this.messageText = replaceWithLink(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.AutoDeleteGlobalAction, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period))), "un1", chat14);
                                                                }
                                                            } else if (tL_messageActionSetMessagesTTL.period != 0) {
                                                                if (isOut()) {
                                                                    this.messageText = LocaleController.formatString(C2888R.string.ActionTTLYouChanged, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period));
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.formatString(C2888R.string.ActionTTLChanged, LocaleController.formatTTLString(tL_messageActionSetMessagesTTL.period)), "un1", chat14);
                                                                }
                                                            } else if (isOut()) {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionTTLYouDisabled);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionTTLDisabled), "un1", chat14);
                                                            }
                                                        }
                                                    }
                                                } else if (messageAction6 instanceof TLRPC.TL_messageActionLoginUnknownLocation) {
                                                    long j11 = ((long) message4.date) * 1000;
                                                    if (LocaleController.getInstance().getFormatterDay() != null && LocaleController.getInstance().getFormatterYear() != null) {
                                                        string2 = LocaleController.formatString(C2888R.string.formatDateAtTime, LocaleController.getInstance().getFormatterYear().format(j11), LocaleController.getInstance().getFormatterDay().format(j11));
                                                        str = str2;
                                                    } else {
                                                        StringBuilder sb = new StringBuilder();
                                                        str = str2;
                                                        sb.append(str);
                                                        sb.append(this.messageOwner.date);
                                                        string2 = sb.toString();
                                                    }
                                                    TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                                                    if (currentUser == null) {
                                                        currentUser = getUser(abstractMap, longSparseArray, this.messageOwner.peer_id.user_id);
                                                    }
                                                    String firstName2 = currentUser != null ? UserObject.getFirstName(currentUser) : str;
                                                    int i19 = C2888R.string.NotificationUnrecognizedDevice;
                                                    TLRPC.MessageAction messageAction7 = this.messageOwner.action;
                                                    this.messageText = LocaleController.formatString(i19, firstName2, string2, messageAction7.title, messageAction7.address);
                                                } else {
                                                    str = str2;
                                                    if ((messageAction6 instanceof TLRPC.TL_messageActionUserJoined) || (messageAction6 instanceof TLRPC.TL_messageActionContactSignUp)) {
                                                        this.messageText = LocaleController.formatString(C2888R.string.NotificationContactJoined, UserObject.getUserName(user));
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionUserUpdatedPhoto) {
                                                        this.messageText = LocaleController.formatString(C2888R.string.NotificationContactNewPhoto, UserObject.getUserName(user));
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageEncryptedAction) {
                                                        TLRPC.DecryptedMessageAction decryptedMessageAction = messageAction6.encryptedAction;
                                                        if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionScreenshotMessages) {
                                                            if (isOut()) {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionTakeScreenshootYou);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionTakeScreenshoot), "un1", chat14);
                                                            }
                                                        } else if (decryptedMessageAction instanceof TLRPC.TL_decryptedMessageActionSetMessageTTL) {
                                                            TLRPC.TL_decryptedMessageActionSetMessageTTL tL_decryptedMessageActionSetMessageTTL = (TLRPC.TL_decryptedMessageActionSetMessageTTL) decryptedMessageAction;
                                                            if (tL_decryptedMessageActionSetMessageTTL.ttl_seconds != 0) {
                                                                if (isOut()) {
                                                                    this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeChangedOutgoing, LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds));
                                                                } else {
                                                                    this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeChanged, UserObject.getFirstName(user), LocaleController.formatTTLString(tL_decryptedMessageActionSetMessageTTL.ttl_seconds));
                                                                }
                                                            } else if (isOut()) {
                                                                this.messageText = LocaleController.getString(C2888R.string.MessageLifetimeYouRemoved);
                                                            } else {
                                                                this.messageText = LocaleController.formatString(C2888R.string.MessageLifetimeRemoved, UserObject.getFirstName(user));
                                                            }
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionScreenshotTaken) {
                                                        if (isOut()) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionTakeScreenshootYou);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.ActionTakeScreenshoot), "un1", chat14);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionCreatedBroadcastList) {
                                                        this.messageText = LocaleController.getString(C2888R.string.YouCreatedBroadcastList);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionChannelCreate) {
                                                        TLRPC.Peer peer19 = message4.peer_id;
                                                        if (peer19 != null) {
                                                            long j12 = peer19.channel_id;
                                                            TLRPC.Chat chat25 = j12 != 0 ? getChat(abstractMap2, longSparseArray2, j12) : null;
                                                            if (ChatObject.isChannel(chat25) && chat25.megagroup) {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionCreateMega);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.ActionCreateChannel);
                                                            }
                                                        }
                                                    } else if ((messageAction6 instanceof TLRPC.TL_messageActionChatMigrateTo) || (messageAction6 instanceof TLRPC.TL_messageActionChannelMigrateFrom)) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionMigrateFromGroup);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionPinMessage) {
                                                        generatePinMessageText(user, user == null ? getChat(abstractMap2, longSparseArray2, message4.peer_id.channel_id) : null);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionHistoryClear) {
                                                        this.messageText = LocaleController.getString(C2888R.string.HistoryCleared);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionTopicCreate) {
                                                        this.messageText = LocaleController.getString(C2888R.string.TopicCreated);
                                                        TLRPC.TL_messageActionTopicCreate tL_messageActionTopicCreate = (TLRPC.TL_messageActionTopicCreate) this.messageOwner.action;
                                                        TLRPC.TL_forumTopic tL_forumTopic = new TLRPC.TL_forumTopic();
                                                        tL_forumTopic.icon_emoji_id = tL_messageActionTopicCreate.icon_emoji_id;
                                                        tL_forumTopic.title = tL_messageActionTopicCreate.title;
                                                        tL_forumTopic.icon_color = tL_messageActionTopicCreate.icon_color;
                                                        this.messageTextShort = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2888R.string.TopicWasCreatedAction), ForumUtilities.getTopicSpannedName(tL_forumTopic, null, false));
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionTopicEdit) {
                                                        TLRPC.TL_messageActionTopicEdit tL_messageActionTopicEdit = (TLRPC.TL_messageActionTopicEdit) messageAction6;
                                                        if (user != null) {
                                                            name = ContactsController.formatName(user.first_name, user.last_name);
                                                        } else if (chat != null) {
                                                            name = chat.title;
                                                            user = chat;
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
                                                        int i20 = messageAction8.flags;
                                                        if ((i20 & 8) > 0) {
                                                            if (((TLRPC.TL_messageActionTopicEdit) messageAction8).hidden) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.TopicHidden2), "%s", user);
                                                                this.messageTextShort = LocaleController.getString(C2888R.string.TopicHidden);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.TopicShown2), "%s", user);
                                                                this.messageTextShort = LocaleController.getString(C2888R.string.TopicShown);
                                                            }
                                                        } else if ((i20 & 4) > 0) {
                                                            if (((TLRPC.TL_messageActionTopicEdit) messageAction8).closed) {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.TopicClosed2), "%s", user);
                                                                this.messageTextShort = LocaleController.getString(C2888R.string.TopicClosed);
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.TopicRestarted2), "%s", user);
                                                                this.messageTextShort = LocaleController.getString(C2888R.string.TopicRestarted);
                                                            }
                                                        } else if ((i20 & 2) != 0 && (i20 & 1) != 0) {
                                                            TLRPC.TL_forumTopic tL_forumTopic2 = new TLRPC.TL_forumTopic();
                                                            tL_forumTopic2.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                            tL_forumTopic2.title = tL_messageActionTopicEdit.title;
                                                            tL_forumTopic2.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                            CharSequence topicSpannedName = ForumUtilities.getTopicSpannedName(tL_forumTopic2, null, this.topicIconDrawable, false);
                                                            this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2888R.string.TopicChangeIconAndTitleTo), strTrim), topicSpannedName);
                                                            this.messageTextShort = LocaleController.getString(C2888R.string.TopicRenamed);
                                                            this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2888R.string.TopicChangeIconAndTitleToInReply), topicSpannedName);
                                                        } else if ((i20 & 2) != 0) {
                                                            TLRPC.TL_forumTopic tL_forumTopic3 = new TLRPC.TL_forumTopic();
                                                            tL_forumTopic3.icon_emoji_id = tL_messageActionTopicEdit.icon_emoji_id;
                                                            tL_forumTopic3.title = str;
                                                            tL_forumTopic3.icon_color = ForumBubbleDrawable.serverSupportedColor[0];
                                                            CharSequence topicSpannedName2 = ForumUtilities.getTopicSpannedName(tL_forumTopic3, null, this.topicIconDrawable, false);
                                                            this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2888R.string.TopicIconChangedTo), strTrim), topicSpannedName2);
                                                            this.messageTextShort = LocaleController.getString(C2888R.string.TopicIconChanged);
                                                            this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2888R.string.TopicIconChangedToInReply), topicSpannedName2);
                                                        } else if ((i20 & 1) != 0) {
                                                            this.messageText = AndroidUtilities.replaceCharSequence("%2$s", AndroidUtilities.replaceCharSequence("%1$s", LocaleController.getString(C2888R.string.TopicRenamedTo), strTrim), tL_messageActionTopicEdit.title);
                                                            this.messageTextShort = LocaleController.getString(C2888R.string.TopicRenamed);
                                                            this.messageTextForReply = AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2888R.string.TopicRenamedToInReply), tL_messageActionTopicEdit.title);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionGameScore) {
                                                        generateGameMessageText(user);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionConferenceCall) {
                                                        TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageAction6;
                                                        if (isOutOwner()) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ConferenceCallOutgoing);
                                                        } else if (tL_messageActionConferenceCall.missed) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ConferenceCallMissed);
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2888R.string.ConferenceCallIncoming);
                                                        }
                                                        int i21 = tL_messageActionConferenceCall.duration;
                                                        if (i21 > 0) {
                                                            String callDuration = LocaleController.formatCallDuration(i21);
                                                            String string5 = LocaleController.formatString(C2888R.string.CallMessageWithDuration, this.messageText, callDuration);
                                                            this.messageText = string5;
                                                            String string6 = string5.toString();
                                                            int iIndexOf4 = string6.indexOf(callDuration);
                                                            if (iIndexOf4 != -1) {
                                                                SpannableString spannableString3 = new SpannableString(this.messageText);
                                                                int length = callDuration.length() + iIndexOf4;
                                                                if (iIndexOf4 > 0 && string6.charAt(iIndexOf4 - 1) == '(') {
                                                                    iIndexOf4--;
                                                                }
                                                                if (length < string6.length() && string6.charAt(length) == ')') {
                                                                    length++;
                                                                }
                                                                spannableString3.setSpan(new TypefaceSpan(Typeface.DEFAULT), iIndexOf4, length, 0);
                                                                this.messageText = spannableString3;
                                                            }
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionPhoneCall) {
                                                        TLRPC.TL_messageActionPhoneCall tL_messageActionPhoneCall = (TLRPC.TL_messageActionPhoneCall) messageAction6;
                                                        boolean z7 = tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonMissed;
                                                        if (isFromUser() && this.messageOwner.from_id.user_id == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                                                            if (z7) {
                                                                if (tL_messageActionPhoneCall.video) {
                                                                    this.messageText = LocaleController.getString(C2888R.string.CallMessageVideoOutgoingMissed);
                                                                } else {
                                                                    this.messageText = LocaleController.getString(C2888R.string.CallMessageOutgoingMissed);
                                                                }
                                                            } else if (tL_messageActionPhoneCall.video) {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageVideoOutgoing);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageOutgoing);
                                                            }
                                                        } else if (z7) {
                                                            if (tL_messageActionPhoneCall.video) {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageVideoIncomingMissed);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageIncomingMissed);
                                                            }
                                                        } else if (tL_messageActionPhoneCall.reason instanceof TLRPC.TL_phoneCallDiscardReasonBusy) {
                                                            if (tL_messageActionPhoneCall.video) {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageVideoIncomingDeclined);
                                                            } else {
                                                                this.messageText = LocaleController.getString(C2888R.string.CallMessageIncomingDeclined);
                                                            }
                                                        } else if (tL_messageActionPhoneCall.video) {
                                                            this.messageText = LocaleController.getString(C2888R.string.CallMessageVideoIncoming);
                                                        } else {
                                                            this.messageText = LocaleController.getString(C2888R.string.CallMessageIncoming);
                                                        }
                                                        int i22 = tL_messageActionPhoneCall.duration;
                                                        if (i22 > 0) {
                                                            String callDuration2 = LocaleController.formatCallDuration(i22);
                                                            String string7 = LocaleController.formatString(C2888R.string.CallMessageWithDuration, this.messageText, callDuration2);
                                                            this.messageText = string7;
                                                            String string8 = string7.toString();
                                                            int iIndexOf5 = string8.indexOf(callDuration2);
                                                            if (iIndexOf5 != -1) {
                                                                SpannableString spannableString4 = new SpannableString(this.messageText);
                                                                int length2 = callDuration2.length() + iIndexOf5;
                                                                if (iIndexOf5 > 0 && string8.charAt(iIndexOf5 - 1) == '(') {
                                                                    iIndexOf5--;
                                                                }
                                                                if (length2 < string8.length() && string8.charAt(length2) == ')') {
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
                                                        String str7 = ((TLRPC.TL_messageActionBotAllowed) messageAction6).domain;
                                                        TLRPC.BotApp botApp = ((TLRPC.TL_messageActionBotAllowed) messageAction6).app;
                                                        if (((TLRPC.TL_messageActionBotAllowed) messageAction6).from_request) {
                                                            this.messageText = LocaleController.getString(C2888R.string.ActionBotAllowedWebapp);
                                                        } else if (botApp != null) {
                                                            String str8 = botApp.title;
                                                            String str9 = str8 == null ? str : str8;
                                                            String string9 = LocaleController.getString(C2888R.string.ActionBotAllowedApp);
                                                            int iIndexOf6 = string9.indexOf("%1$s");
                                                            SpannableString spannableString5 = new SpannableString(String.format(string9, str9));
                                                            TLRPC.User user15 = getUser(abstractMap, longSparseArray, getDialogId());
                                                            if (iIndexOf6 >= 0 && user15 != null && (publicUsername2 = UserObject.getPublicUsername(user15)) != null) {
                                                                spannableString5.setSpan(new URLSpanNoUnderlineBold("https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername2 + "/" + botApp.short_name), iIndexOf6, str9.length() + iIndexOf6, 33);
                                                            }
                                                            this.messageText = spannableString5;
                                                        } else {
                                                            if (str7 == null) {
                                                                str7 = str;
                                                            }
                                                            String string10 = LocaleController.getString(C2888R.string.ActionBotAllowed);
                                                            int iIndexOf7 = string10.indexOf("%1$s");
                                                            SpannableString spannableString6 = new SpannableString(String.format(string10, str7));
                                                            if (iIndexOf7 >= 0 && !TextUtils.isEmpty(str7)) {
                                                                spannableString6.setSpan(new URLSpanNoUnderlineBold("http://" + str7), iIndexOf7, str7.length() + iIndexOf7, 33);
                                                            }
                                                            this.messageText = spannableString6;
                                                        }
                                                    } else if ((messageAction6 instanceof TLRPC.TL_messageActionAttachMenuBotAllowed) || ((messageAction6 instanceof TLRPC.TL_messageActionBotAllowed) && ((TLRPC.TL_messageActionBotAllowed) messageAction6).attach_menu)) {
                                                        this.messageText = LocaleController.getString(C2888R.string.ActionAttachMenuBotAllowed);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionSecureValuesSent) {
                                                        TLRPC.TL_messageActionSecureValuesSent tL_messageActionSecureValuesSent = (TLRPC.TL_messageActionSecureValuesSent) messageAction6;
                                                        StringBuilder sb2 = new StringBuilder();
                                                        int size2 = tL_messageActionSecureValuesSent.types.size();
                                                        for (int i23 = 0; i23 < size2; i23++) {
                                                            TLRPC.SecureValueType secureValueType = (TLRPC.SecureValueType) tL_messageActionSecureValuesSent.types.get(i23);
                                                            if (sb2.length() > 0) {
                                                                sb2.append(", ");
                                                            }
                                                            if (secureValueType instanceof TLRPC.TL_secureValueTypePhone) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentPhone));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeEmail) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentEmail));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeAddress) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentAddress));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypePersonalDetails) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentIdentity));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassport) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentPassport));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeDriverLicense) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentDriverLicence));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeIdentityCard) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentIdentityCard));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeUtilityBill) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentUtilityBill));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeBankStatement) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentBankStatement));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeRentalAgreement) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentRentalAgreement));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeInternalPassport) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentInternalPassport));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypePassportRegistration) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentPassportRegistration));
                                                            } else if (secureValueType instanceof TLRPC.TL_secureValueTypeTemporaryRegistration) {
                                                                sb2.append(LocaleController.getString(C2888R.string.ActionBotDocumentTemporaryRegistration));
                                                            }
                                                        }
                                                        TLRPC.Peer peer20 = this.messageOwner.peer_id;
                                                        this.messageText = LocaleController.formatString(C2888R.string.ActionBotDocuments, UserObject.getFirstName(peer20 != null ? getUser(abstractMap, longSparseArray, peer20.user_id) : null), sb2.toString());
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionWebViewDataSent) {
                                                        this.messageText = LocaleController.formatString(C2888R.string.ActionBotWebViewData, ((TLRPC.TL_messageActionWebViewDataSent) messageAction6).text);
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionSetChatTheme) {
                                                        TLRPC.ChatTheme chatTheme = ((TLRPC.TL_messageActionSetChatTheme) messageAction6).theme;
                                                        CharSequence themeEmoticonOrGiftTitle = TlUtils.getThemeEmoticonOrGiftTitle(chatTheme);
                                                        if (themeEmoticonOrGiftTitle != null && (chatTheme instanceof TLRPC.TL_chatThemeUniqueGift)) {
                                                            SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(themeEmoticonOrGiftTitle);
                                                            TlUtils.getGiftDocument(((TLRPC.TL_chatThemeUniqueGift) chatTheme).gift);
                                                            themeEmoticonOrGiftTitle = spannableStringBuilder5;
                                                        }
                                                        String firstName3 = UserObject.getFirstName(user);
                                                        boolean z8 = user == null && chat != null;
                                                        if (z8) {
                                                            firstName3 = chat.title;
                                                        }
                                                        boolean zIsUserSelf2 = UserObject.isUserSelf(user);
                                                        if (TextUtils.isEmpty(themeEmoticonOrGiftTitle)) {
                                                            if (zIsUserSelf2) {
                                                                spannable2 = LocaleController.formatSpannable(C2888R.string.ChatThemeDisabledYou, new Object[0]);
                                                            } else {
                                                                spannable2 = LocaleController.formatSpannable(z8 ? C2888R.string.ChannelThemeDisabled : C2888R.string.ChatThemeDisabled, firstName3, themeEmoticonOrGiftTitle);
                                                            }
                                                            this.messageText = spannable2;
                                                        } else {
                                                            if (zIsUserSelf2) {
                                                                spannable = LocaleController.formatSpannable(C2888R.string.ChatThemeChangedYou, themeEmoticonOrGiftTitle);
                                                            } else {
                                                                spannable = LocaleController.formatSpannable(z8 ? C2888R.string.ChannelThemeChangedTo : C2888R.string.ChatThemeChangedTo, firstName3, themeEmoticonOrGiftTitle);
                                                            }
                                                            this.messageText = spannable;
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionChatJoinedByRequest) {
                                                        if (UserObject.isUserSelf(user)) {
                                                            if (ChatObject.isChannelAndNotMegaGroup(this.messageOwner.peer_id.channel_id, this.currentAccount)) {
                                                                string = LocaleController.getString(C2888R.string.RequestToJoinChannelApproved);
                                                            } else {
                                                                string = LocaleController.getString(C2888R.string.RequestToJoinGroupApproved);
                                                            }
                                                            this.messageText = string;
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.UserAcceptedToGroupAction), "un1", chat14);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesPrice) {
                                                        TLRPC.TL_messageActionPaidMessagesPrice tL_messageActionPaidMessagesPrice = (TLRPC.TL_messageActionPaidMessagesPrice) messageAction6;
                                                        if (ChatObject.isChannel(chat) && chat != null && chat.broadcast) {
                                                            if ((tL_messageActionPaidMessagesPrice.flags & 1) != 0) {
                                                                long j13 = tL_messageActionPaidMessagesPrice.stars;
                                                                if (j13 > 0) {
                                                                    this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PostSuggestionsPriceUpdated", (int) j13), "un1", chat14);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.PostSuggestionsEnabledUpdated), "un1", chat14);
                                                                }
                                                            } else {
                                                                this.messageText = replaceWithLink(LocaleController.getString(C2888R.string.PostSuggestionsDisabledUpdated), "un1", chat14);
                                                            }
                                                        } else if (isOutOwner()) {
                                                            this.messageText = LocaleController.formatPluralStringComma("PaidMessagesPriceUpdatedOut", (int) tL_messageActionPaidMessagesPrice.stars);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesPriceUpdated", (int) tL_messageActionPaidMessagesPrice.stars), "un1", chat14);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionPaidMessagesRefunded) {
                                                        TLRPC.TL_messageActionPaidMessagesRefunded tL_messageActionPaidMessagesRefunded = (TLRPC.TL_messageActionPaidMessagesRefunded) messageAction6;
                                                        if (isOutOwner()) {
                                                            TLRPC.Message message5 = this.messageOwner;
                                                            TLRPC.Peer peer21 = message5.saved_peer_id;
                                                            if (peer21 != null) {
                                                                user2 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(peer21));
                                                            } else {
                                                                user2 = getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message5.peer_id));
                                                            }
                                                            this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesRefundedOut", (int) tL_messageActionPaidMessagesRefunded.stars), "un1", user2);
                                                        } else {
                                                            this.messageText = replaceWithLink(LocaleController.formatPluralStringComma("PaidMessagesRefunded", (int) tL_messageActionPaidMessagesRefunded.stars), "un1", chat14);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionTodoCompletions) {
                                                        TLRPC.TL_messageActionTodoCompletions tL_messageActionTodoCompletions = (TLRPC.TL_messageActionTodoCompletions) messageAction6;
                                                        boolean zIsEmpty = tL_messageActionTodoCompletions.completed.isEmpty();
                                                        int iIntValue = !tL_messageActionTodoCompletions.completed.isEmpty() ? ((Integer) tL_messageActionTodoCompletions.completed.get(0)).intValue() : !tL_messageActionTodoCompletions.incompleted.isEmpty() ? ((Integer) tL_messageActionTodoCompletions.incompleted.get(0)).intValue() : 0;
                                                        MessageObject messageObject = this.replyMessageObject;
                                                        if (messageObject == null || !(getMedia(messageObject.messageOwner) instanceof TLRPC.TL_messageMediaToDo)) {
                                                            todoItem = null;
                                                            if (todoItem != null) {
                                                                if (isOutOwner()) {
                                                                    this.messageText = LocaleController.getString(!zIsEmpty ? C2888R.string.TodoTaskCompletedOutUnknown : C2888R.string.TodoTaskNotCompletedOutUnknown);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.getString(!zIsEmpty ? C2888R.string.TodoTaskCompletedUnknown : C2888R.string.TodoTaskNotCompletedUnknown), "un1", chat14);
                                                                }
                                                            } else {
                                                                Theme.createCommonChatResources();
                                                                CharSequence taskTitle = formatTaskTitle(todoItem);
                                                                if (isOutOwner()) {
                                                                    this.messageText = LocaleController.formatSpannable(!zIsEmpty ? C2888R.string.TodoTaskCompletedOut : C2888R.string.TodoTaskNotCompletedOut, taskTitle);
                                                                } else {
                                                                    this.messageText = replaceWithLink(LocaleController.formatSpannable(!zIsEmpty ? C2888R.string.TodoTaskCompleted : C2888R.string.TodoTaskNotCompleted, taskTitle), "un1", chat14);
                                                                }
                                                            }
                                                        } else {
                                                            TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) getMedia(this.replyMessageObject.messageOwner);
                                                            for (int i24 = 0; i24 < tL_messageMediaToDo.todo.list.size(); i24++) {
                                                                TLRPC.TodoItem todoItem2 = (TLRPC.TodoItem) tL_messageMediaToDo.todo.list.get(i24);
                                                                if (todoItem2.f1823id == iIntValue) {
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
                                                            if (tL_messageActionTodoAppendTasks.list.size() == 1) {
                                                                this.messageText = LocaleController.formatSpannable(C2888R.string.TodoAddedOneTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)));
                                                            } else if (tL_messageActionTodoAppendTasks.list.size() == 2) {
                                                                this.messageText = LocaleController.formatSpannable(C2888R.string.TodoAddedTwoTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)));
                                                            } else if (tL_messageActionTodoAppendTasks.list.size() == 3) {
                                                                this.messageText = LocaleController.formatSpannable(C2888R.string.TodoAddedThreeTaskOut, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                            } else if (tL_messageActionTodoAppendTasks.list.size() >= 4) {
                                                                this.messageText = LocaleController.formatPluralSpannable("TodoAddedMoreTasksOut", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2)));
                                                            }
                                                        } else if (tL_messageActionTodoAppendTasks.list.size() == 1) {
                                                            this.messageText = replaceWithLink(LocaleController.formatSpannable(C2888R.string.TodoAddedOneTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0))), "un1", chat14);
                                                        } else if (tL_messageActionTodoAppendTasks.list.size() == 2) {
                                                            this.messageText = replaceWithLink(LocaleController.formatSpannable(C2888R.string.TodoAddedTwoTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1))), "un1", chat14);
                                                        } else if (tL_messageActionTodoAppendTasks.list.size() == 3) {
                                                            this.messageText = replaceWithLink(LocaleController.formatSpannable(C2888R.string.TodoAddedThreeTask, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2))), "un1", chat14);
                                                        } else if (tL_messageActionTodoAppendTasks.list.size() >= 4) {
                                                            this.messageText = replaceWithLink(LocaleController.formatPluralSpannable("TodoAddedMoreTasks", tL_messageActionTodoAppendTasks.list.size() - 3, formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(0)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(1)), formatTaskTitle((TLRPC.TodoItem) tL_messageActionTodoAppendTasks.list.get(2))), "un1", chat14);
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
                                                        String monoForumTitle2 = ForumUtilities.getMonoForumTitle(this.currentAccount, DialogObject.getPeerDialogId(message4.peer_id), true);
                                                        if (monoForumTitle2 == null) {
                                                            TLRPC.Chat chat26 = getChat(abstractMap2, longSparseArray2, -DialogObject.getPeerDialogId(this.messageOwner.peer_id));
                                                            if (chat26 != null) {
                                                                long j14 = chat26.linked_monoforum_id;
                                                                if (j14 != 0 && (chat2 = getChat(abstractMap2, longSparseArray2, j14)) != null) {
                                                                    chat26 = chat2;
                                                                }
                                                            }
                                                            monoForumTitle2 = DialogObject.getDialogTitle(chat26);
                                                        }
                                                        this.messageText = getActionSuggestionApprovalText(monoForumTitle2, DialogObject.getName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.saved_peer_id))));
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionStarGiftPurchaseOffer) {
                                                        TLRPC.TL_messageActionStarGiftPurchaseOffer tL_messageActionStarGiftPurchaseOffer = (TLRPC.TL_messageActionStarGiftPurchaseOffer) messageAction6;
                                                        AmountUtils$Amount amountUtils$AmountOfSafe2 = AmountUtils$Amount.ofSafe(tL_messageActionStarGiftPurchaseOffer.price);
                                                        String str10 = tL_messageActionStarGiftPurchaseOffer.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftPurchaseOffer.gift.num, ',');
                                                        String shortName = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id)));
                                                        SpannableStringBuilder spannableStringBuilder6 = new SpannableStringBuilder();
                                                        if (amountUtils$AmountOfSafe2.currency == AmountUtils$Currency.STARS) {
                                                            i2 = isOut() ? C2888R.string.GiftOfferOfferedTextStarsOut : C2888R.string.GiftOfferOfferedTextStars2;
                                                        } else {
                                                            i2 = isOut() ? C2888R.string.GiftOfferOfferedTextTONOut : C2888R.string.GiftOfferOfferedTextTON2;
                                                        }
                                                        spannableStringBuilder6.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i2, shortName, amountUtils$AmountOfSafe2.asFormatString(), str10)));
                                                        this.messageText = spannableStringBuilder6;
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined) {
                                                        TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined tL_messageActionStarGiftPurchaseOfferDeclined = (TLRPC.TL_messageActionStarGiftPurchaseOfferDeclined) messageAction6;
                                                        AmountUtils$Amount amountUtils$AmountOfSafe3 = AmountUtils$Amount.ofSafe(tL_messageActionStarGiftPurchaseOfferDeclined.price);
                                                        String str11 = tL_messageActionStarGiftPurchaseOfferDeclined.gift.title + " #" + LocaleController.formatNumber(tL_messageActionStarGiftPurchaseOfferDeclined.gift.num, ',');
                                                        String shortName2 = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id)));
                                                        String strAsFormatString = amountUtils$AmountOfSafe3.asFormatString();
                                                        if (tL_messageActionStarGiftPurchaseOfferDeclined.expired) {
                                                            if (amountUtils$AmountOfSafe3.currency == AmountUtils$Currency.STARS) {
                                                                i = isOut() ? C2888R.string.GiftOfferOfferedTextStarsExpiredOut : C2888R.string.GiftOfferOfferedTextStarsExpired;
                                                            } else {
                                                                i = isOut() ? C2888R.string.GiftOfferOfferedTextTONExpiredOut : C2888R.string.GiftOfferOfferedTextTONExpired;
                                                            }
                                                        } else if (amountUtils$AmountOfSafe3.currency == AmountUtils$Currency.STARS) {
                                                            i = isOut() ? C2888R.string.GiftOfferOfferedTextStarsRejectedOut : C2888R.string.GiftOfferOfferedTextStarsRejected;
                                                        } else {
                                                            i = isOut() ? C2888R.string.GiftOfferOfferedTextTONRejectedOut : C2888R.string.GiftOfferOfferedTextTONRejected;
                                                        }
                                                        this.messageText = AndroidUtilities.replaceTags(LocaleController.formatString(i, shortName2, strAsFormatString, str11));
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionNoForwardsToggle) {
                                                        TLRPC.TL_messageActionNoForwardsToggle tL_messageActionNoForwardsToggle = (TLRPC.TL_messageActionNoForwardsToggle) messageAction6;
                                                        boolean z9 = tL_messageActionNoForwardsToggle.new_value;
                                                        if (z9 == tL_messageActionNoForwardsToggle.prev_value) {
                                                            this.messageText = LocaleController.getString(z9 ? C2888R.string.DisableSharingActionStillDisabled : C2888R.string.DisableSharingActionStillEnabled);
                                                        } else if (isOut()) {
                                                            this.messageText = LocaleController.getString(tL_messageActionNoForwardsToggle.new_value ? C2888R.string.DisableSharingActionYou : C2888R.string.EnableSharingActionYou);
                                                        } else {
                                                            this.messageText = LocaleController.formatString(tL_messageActionNoForwardsToggle.new_value ? C2888R.string.DisableSharingActionOther : C2888R.string.EnableSharingActionOther, DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(this.messageOwner.peer_id))));
                                                        }
                                                    } else if (messageAction6 instanceof TLRPC.TL_messageActionNoForwardsRequest) {
                                                        String shortName3 = DialogObject.getShortName(getUser(abstractMap, longSparseArray, DialogObject.getPeerDialogId(message4.peer_id)));
                                                        if (((TLRPC.TL_messageActionNoForwardsRequest) messageAction6).new_value) {
                                                            this.messageText = isOut() ? LocaleController.getString(C2888R.string.SharingOfferDisableHeaderShortYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SharingOfferDisableHeaderShortOther, shortName3));
                                                        } else {
                                                            this.messageText = isOut() ? LocaleController.getString(C2888R.string.SharingOfferEnableHeaderShortYou) : AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SharingOfferEnableHeaderShortOther, shortName3));
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
                    this.isRestrictedMessage = false;
                    String restrictionReason = MessagesController.getInstance(this.currentAccount).getRestrictionReason(this.messageOwner.restriction_reason);
                    if (!TextUtils.isEmpty(restrictionReason)) {
                        this.messageText = restrictionReason;
                        this.isRestrictedMessage = true;
                    } else if (!isMediaEmpty() && !isSponsored()) {
                        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveaway) {
                            TLRPC.MessageFwdHeader messageFwdHeader = this.messageOwner.fwd_from;
                            if (messageFwdHeader != null) {
                                TLRPC.Peer peer22 = messageFwdHeader.from_id;
                                if (peer22 instanceof TLRPC.TL_peerChannel) {
                                    zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(getChat(abstractMap2, longSparseArray2, peer22.channel_id));
                                } else {
                                    zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
                                }
                                this.messageText = LocaleController.getString(zIsChannelAndNotMegaGroup ? C2888R.string.BoostingGiveawayChannelStarted : C2888R.string.BoostingGiveawayGroupStarted);
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGiveawayResults) {
                            this.messageText = LocaleController.getString(C2888R.string.BoostingGiveawayResults);
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaStory) {
                            if (getMedia(this.messageOwner).via_mention) {
                                TLRPC.User user16 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(getMedia(this.messageOwner).user_id));
                                String str12 = (user16 == null || (publicUsername = UserObject.getPublicUsername(user16)) == null) ? null : MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + getMedia(this.messageOwner).f1687id;
                                if (str12 != null) {
                                    SpannableString spannableString7 = new SpannableString(str12);
                                    this.messageText = spannableString7;
                                    spannableString7.setSpan(new URLSpanReplacement("https://" + str12, new TextStyleSpan.TextStyleRun()), 0, this.messageText.length(), 33);
                                } else {
                                    this.messageText = str;
                                }
                            } else {
                                this.messageText = LocaleController.getString(C2888R.string.ForwardedStory);
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDice) {
                            this.messageText = getDiceEmoji();
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPoll) {
                            if (((TLRPC.TL_messageMediaPoll) getMedia(this.messageOwner)).poll.quiz) {
                                this.messageText = LocaleController.getString(C2888R.string.QuizPoll);
                            } else {
                                this.messageText = LocaleController.getString(C2888R.string.Poll);
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaToDo) {
                            TLRPC.TL_messageMediaToDo tL_messageMediaToDo2 = (TLRPC.TL_messageMediaToDo) getMedia(this.messageOwner);
                            TLRPC.TodoList todoList = tL_messageMediaToDo2.todo;
                            if (todoList == null || (tL_textWithEntities = todoList.title) == null || tL_textWithEntities.text.isEmpty()) {
                                this.messageText = LocaleController.getString(C2888R.string.MessageTodo);
                            } else {
                                this.messageText = LocaleController.formatSpannable(C2888R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo2.todo.title, isOutOwner()));
                            }
                        } else if (isVoiceOnce()) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachOnceAudio);
                        } else if (isRoundOnce()) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachOnceRound);
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPaidMedia) {
                            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) getMedia(this.messageOwner);
                            int size3 = tL_messageMediaPaidMedia.extended_media.size();
                            boolean z10 = false;
                            for (int i25 = 0; i25 < size3; i25++) {
                                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i25);
                                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                                    TLRPC.MessageMedia messageMedia = ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media;
                                    z10 = (messageMedia instanceof TLRPC.TL_messageMediaDocument) && isVideoDocument(messageMedia.document);
                                } else {
                                    if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMediaPreview) {
                                        z10 = (((TLRPC.TL_messageExtendedMediaPreview) messageExtendedMedia).flags & 4) != 0;
                                    }
                                    if (!z10) {
                                        break;
                                    }
                                }
                                if (!z10) {
                                }
                            }
                            if (size3 == 1) {
                                pluralString = LocaleController.getString(z10 ? C2888R.string.AttachVideo : C2888R.string.AttachPhoto);
                                c = 0;
                            } else {
                                c = 0;
                                pluralString = LocaleController.formatPluralString(z10 ? "Media" : "Photos", size3, new Object[0]);
                            }
                            this.messageText = pluralString;
                            int i26 = C2888R.string.AttachPaidMedia;
                            Object[] objArr = new Object[1];
                            objArr[c] = pluralString;
                            this.messageText = StarsIntroActivity.replaceStars(LocaleController.formatString(i26, objArr));
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                            if (getMedia(this.messageOwner).ttl_seconds != 0 && !(this.messageOwner instanceof TLRPC.TL_message_secret)) {
                                this.messageText = LocaleController.getString(C2888R.string.AttachDestructingPhoto);
                            } else if (getGroupId() != 0) {
                                this.messageText = LocaleController.getString(C2888R.string.Album);
                            } else {
                                this.messageText = LocaleController.getString(C2888R.string.AttachPhoto);
                            }
                        } else if (isVideo() || ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && (((getDocument() instanceof TLRPC.TL_documentEmpty) || getDocument() == null) && getMedia(this.messageOwner).ttl_seconds != 0))) {
                            if (getMedia(this.messageOwner).ttl_seconds != 0) {
                                TLRPC.Message message6 = this.messageOwner;
                                if (!(message6 instanceof TLRPC.TL_message_secret)) {
                                    if (getMedia(message6).voice) {
                                        this.messageText = LocaleController.getString(C2888R.string.AttachVoiceExpired);
                                    } else if (getMedia(this.messageOwner).round) {
                                        this.messageText = LocaleController.getString(C2888R.string.AttachRoundExpired);
                                    } else {
                                        this.messageText = LocaleController.getString(C2888R.string.AttachDestructingVideo);
                                    }
                                } else {
                                    this.messageText = LocaleController.getString(C2888R.string.AttachVideo);
                                }
                            }
                        } else if (isVoice()) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachAudio);
                        } else if (isRoundVideo()) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachRound);
                        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeo) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaVenue)) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachLocation);
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGeoLive) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachLiveLocation);
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaContact) {
                            this.messageText = LocaleController.getString(C2888R.string.AttachContact);
                            if (!TextUtils.isEmpty(getMedia(this.messageOwner).vcard)) {
                                this.vCardData = VCardData.parse(getMedia(this.messageOwner).vcard);
                            }
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                            this.messageText = this.messageOwner.message;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice) {
                            this.messageText = getMedia(this.messageOwner).description;
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaUnsupported) {
                            this.messageText = LocaleController.getString(C2888R.string.UnsupportedMedia2);
                        } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                            if (isSticker() || isAnimatedStickerDocument(getDocument(), true)) {
                                String stickerChar = getStickerChar();
                                if (stickerChar == null || stickerChar.length() <= 0) {
                                    this.messageText = LocaleController.getString(C2888R.string.AttachSticker);
                                } else {
                                    this.messageText = String.format("%s %s", stickerChar, LocaleController.getString(C2888R.string.AttachSticker));
                                }
                            } else if (isMusic()) {
                                this.messageText = LocaleController.getString(C2888R.string.AttachMusic);
                            } else if (isGif()) {
                                this.messageText = LocaleController.getString(C2888R.string.AttachGif);
                            } else {
                                String documentFileName = FileLoader.getDocumentFileName(getDocument());
                                if (!TextUtils.isEmpty(documentFileName)) {
                                    this.messageText = documentFileName;
                                } else {
                                    this.messageText = LocaleController.getString(C2888R.string.AttachDocument);
                                }
                            }
                        }
                    } else {
                        String str13 = this.messageOwner.message;
                        if (str13 != null) {
                            try {
                                if (str13.length() > 200) {
                                    this.messageText = AndroidUtilities.BAD_CHARS_MESSAGE_LONG_PATTERN.matcher(this.messageOwner.message).replaceAll("\u200c");
                                } else {
                                    this.messageText = AndroidUtilities.BAD_CHARS_MESSAGE_PATTERN.matcher(this.messageOwner.message).replaceAll("\u200c");
                                }
                            } catch (Throwable unused) {
                                this.messageText = this.messageOwner.message;
                            }
                        } else {
                            this.messageText = str13;
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
        ((Spannable) textWithEntities).setSpan(new URLSpanNoUnderline("task?" + todoItem.f1823id, true), 0, textWithEntities.length(), 33);
        return textWithEntities;
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities) {
        return formatTextWithEntities(tL_textWithEntities, false);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z) {
        Theme.createCommonChatResources();
        TextPaint textPaint = Theme.chat_actionTextPaint;
        if (textPaint == null) {
            textPaint = new TextPaint(1);
            textPaint.setTypeface(AndroidUtilities.bold());
            textPaint.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize) - 2));
        }
        return formatTextWithEntities(tL_textWithEntities, z, textPaint);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z, TextPaint textPaint) {
        return formatTextWithEntities(tL_textWithEntities, z, false, textPaint);
    }

    public static CharSequence formatTextWithEntities(TLRPC.TL_textWithEntities tL_textWithEntities, boolean z, boolean z2, TextPaint textPaint) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(tL_textWithEntities.text);
        addEntitiesToText(spannableStringBuilder, tL_textWithEntities.entities, z, false, z2, false);
        return replaceAnimatedEmoji(Emoji.replaceEmoji(spannableStringBuilder, textPaint.getFontMetricsInt(), false), tL_textWithEntities.entities, textPaint.getFontMetricsInt());
    }

    public static TLRPC.TL_textWithEntities removeLinks(TLRPC.TL_textWithEntities tL_textWithEntities) {
        TLRPC.TL_textWithEntities tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
        tL_textWithEntities2.text = tL_textWithEntities.text;
        for (int i = 0; i < tL_textWithEntities.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) tL_textWithEntities.entities.get(i);
            if (!(messageEntity instanceof TLRPC.TL_messageEntityUrl) && !(messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) {
                tL_textWithEntities2.entities.add(messageEntity);
            }
        }
        return tL_textWithEntities2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x01a0, code lost:
    
        if (r8.ttl_seconds == 0) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence getMediaTitle(TLRPC.MessageMedia messageMedia) {
        String pluralString;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        String publicUsername;
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveaway) {
            return LocaleController.getString(C2888R.string.BoostingGiveaway);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGiveawayResults) {
            return LocaleController.getString(C2888R.string.BoostingGiveawayResults);
        }
        String str = null;
        if (messageMedia instanceof TLRPC.TL_messageMediaStory) {
            if (messageMedia.via_mention) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(messageMedia.user_id));
                if (user != null && (publicUsername = UserObject.getPublicUsername(user)) != null) {
                    str = MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername + "/s/" + messageMedia.f1687id;
                }
                if (str != null) {
                    SpannableString spannableString = new SpannableString(str);
                    spannableString.setSpan(new URLSpanReplacement("https://" + str, new TextStyleSpan.TextStyleRun()), 0, spannableString.length(), 33);
                    return spannableString;
                }
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            return LocaleController.getString(C2888R.string.ForwardedStory);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDice) {
            return getDiceEmoji((TLRPC.TL_messageMediaDice) messageMedia);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
            if (((TLRPC.TL_messageMediaPoll) messageMedia).poll.quiz) {
                return LocaleController.getString(C2888R.string.QuizPoll);
            }
            return LocaleController.getString(C2888R.string.Poll);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaToDo) {
            TLRPC.TL_messageMediaToDo tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) messageMedia;
            TLRPC.TodoList todoList = tL_messageMediaToDo.todo;
            return (todoList == null || (tL_textWithEntities = todoList.title) == null || tL_textWithEntities.text.isEmpty()) ? LocaleController.getString(C2888R.string.MessageTodo) : LocaleController.formatSpannable(C2888R.string.MessageTodoName, formatTextWithEntities(tL_messageMediaToDo.todo.title, isOutOwner()));
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
                pluralString = LocaleController.getString(z ? C2888R.string.AttachVideo : C2888R.string.AttachPhoto);
            } else {
                pluralString = LocaleController.formatPluralString(z ? "Media" : "Photos", size, new Object[0]);
            }
            return StarsIntroActivity.replaceStars(LocaleController.formatString(C2888R.string.AttachPaidMedia, pluralString));
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            if (messageMedia.ttl_seconds != 0 && !(this.messageOwner instanceof TLRPC.TL_message_secret)) {
                return LocaleController.getString(C2888R.string.AttachDestructingPhoto);
            }
            if (getGroupId() != 0) {
                return LocaleController.getString(C2888R.string.Album);
            }
            return LocaleController.getString(C2888R.string.AttachPhoto);
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
                    return LocaleController.getString(C2888R.string.AttachVoiceExpired);
                }
                if (messageMedia.round) {
                    return LocaleController.getString(C2888R.string.AttachRoundExpired);
                }
                return LocaleController.getString(C2888R.string.AttachDestructingVideo);
            }
            return LocaleController.getString(C2888R.string.AttachVideo);
        }
        if (messageMedia != null && isVoiceDocument(messageMedia.document)) {
            return LocaleController.getString(C2888R.string.AttachAudio);
        }
        if (messageMedia != null && isRoundVideoDocument(messageMedia.document)) {
            return LocaleController.getString(C2888R.string.AttachRound);
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaGeo) || (messageMedia instanceof TLRPC.TL_messageMediaVenue)) {
            return LocaleController.getString(C2888R.string.AttachLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGeoLive) {
            return LocaleController.getString(C2888R.string.AttachLiveLocation);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaContact) {
            return LocaleController.getString(C2888R.string.AttachContact);
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaGame) {
            return this.messageOwner.message;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaInvoice) {
            return messageMedia.description;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaUnsupported) {
            return LocaleController.getString(C2888R.string.UnsupportedMedia2);
        }
        if (!(messageMedia instanceof TLRPC.TL_messageMediaDocument)) {
            return null;
        }
        if (isStickerDocument(messageMedia.document) || isAnimatedStickerDocument(messageMedia.document, true)) {
            String stickerChar = getStickerChar();
            return (stickerChar == null || stickerChar.length() <= 0) ? LocaleController.getString(C2888R.string.AttachSticker) : String.format("%s %s", stickerChar, LocaleController.getString(C2888R.string.AttachSticker));
        }
        if (isMusic()) {
            return LocaleController.getString(C2888R.string.AttachMusic);
        }
        if (isGif()) {
            return LocaleController.getString(C2888R.string.AttachGif);
        }
        String documentFileName = FileLoader.getDocumentFileName(messageMedia.document);
        return !TextUtils.isEmpty(documentFileName) ? documentFileName : LocaleController.getString(C2888R.string.AttachDocument);
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
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) this.messageOwner.entities.get(i);
                if (!(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) && (!(messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (str = ((TLRPC.TL_messageEntityTextUrl) messageEntity).url) == null || !str.startsWith("tg://emoji?id="))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setType() {
        int i;
        int i2 = this.type;
        this.type = MediaDataController.MAX_STYLE_RUNS_COUNT;
        this.isRoundVideoCached = 0;
        if (isSponsored()) {
            this.type = 0;
        } else if (this.channelJoined) {
            this.type = 27;
            this.channelJoinedExpanded = MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("c" + getDialogId() + "_rec", true);
        } else {
            TLRPC.Message message = this.messageOwner;
            if ((message instanceof TLRPC.TL_message) || (message instanceof TLRPC.TL_messageForwarded_old2)) {
                if (this.isRestrictedMessage) {
                    this.type = 0;
                } else if (this.emojiAnimatedSticker != null || this.emojiAnimatedStickerId != null) {
                    if (isSticker()) {
                        this.type = 13;
                    } else {
                        this.type = 15;
                    }
                } else if (message.media instanceof TLRPC.TL_messageMediaPaidMedia) {
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
                        getMedia(this.messageOwner).document.f1668id = -2147483648L;
                        TLRPC.TL_documentAttributeImageSize tL_documentAttributeImageSize = new TLRPC.TL_documentAttributeImageSize();
                        tL_documentAttributeImageSize.f1671w = 512;
                        tL_documentAttributeImageSize.f1670h = 512;
                        getMedia(this.messageOwner).document.attributes.add(tL_documentAttributeImageSize);
                    }
                } else if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                    this.type = 1;
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
            } else {
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = this.currentEvent;
                if (tL_channelAdminLogEvent != null) {
                    TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                    if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionChangeWallpaper) {
                        TLRPC.TL_channelAdminLogEventActionChangeWallpaper tL_channelAdminLogEventActionChangeWallpaper = (TLRPC.TL_channelAdminLogEventActionChangeWallpaper) channelAdminLogEventAction;
                        this.contentType = 1;
                        TLRPC.WallPaper wallPaper = tL_channelAdminLogEventActionChangeWallpaper.new_value;
                        if ((wallPaper instanceof TLRPC.TL_wallPaperNoFile) && wallPaper.f1833id == 0 && wallPaper.settings == null) {
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
                        if ((messageAction instanceof TLRPC.TL_messageActionChangeCreator) || (messageAction instanceof TLRPC.TL_messageActionNewCreatorPending) || (messageAction instanceof TLRPC.TL_messageActionSetSameChatWallPaper)) {
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
        if ((i == 0 || i == 19) && this.messageOwner.peer_id != null && (charSequence = this.messageText) != null && charSequence.length() != 0) {
            if (this.layoutCreated) {
                if (Math.abs(this.generatedWithMinSize - (AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : AndroidUtilities.displaySize.x)) > AndroidUtilities.m1124dp(52.0f) || this.generatedWithDensity != AndroidUtilities.density) {
                    this.layoutCreated = false;
                }
            }
            if (!this.layoutCreated) {
                this.layoutCreated = true;
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
                return true;
            }
        }
        return false;
    }

    public void resetLayout() {
        this.layoutCreated = false;
    }

    public String getMimeType() {
        TLRPC.Document document = getDocument();
        if (document != null) {
            return document.mime_type;
        }
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaInvoice)) {
            return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? "image/jpeg" : (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) || getMedia(this.messageOwner).webpage.photo == null) ? _UrlKt.FRAGMENT_ENCODE_SET : "image/jpeg";
        }
        TLRPC.WebDocument webDocument = ((TLRPC.TL_messageMediaInvoice) getMedia(this.messageOwner)).webPhoto;
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
                        return tL_documentAttributeImageSize.f1671w < 6000 && tL_documentAttributeImageSize.f1670h < 6000;
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
                    i = documentAttribute.f1671w;
                    i2 = documentAttribute.f1670h;
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
                    i = documentAttribute.f1671w;
                    i2 = documentAttribute.f1670h;
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
                    i = documentAttribute.f1671w;
                    i2 = documentAttribute.f1670h;
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
        ArrayList<TLRPC.PhotoSize> arrayList4;
        ArrayList<TLRPC.PhotoSize> arrayList5;
        ArrayList<TLRPC.PhotoSize> arrayList6;
        ArrayList<TLRPC.PhotoSize> arrayList7;
        ArrayList<TLRPC.PhotoSize> arrayList8;
        ArrayList<TLRPC.PhotoSize> arrayList9;
        ArrayList<TLRPC.PhotoSize> arrayList10;
        if (hasExtendedMediaPreview()) {
            TLRPC.TL_messageExtendedMediaPreview tL_messageExtendedMediaPreview = (TLRPC.TL_messageExtendedMediaPreview) this.messageOwner.media.extended_media.get(0);
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
        TLRPC.Message message = this.messageOwner;
        if (message instanceof TLRPC.TL_messageService) {
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionChatEditPhoto) {
                TLRPC.Photo photo = messageAction.photo;
                if (!z) {
                    this.photoThumbs = new ArrayList<>(photo.sizes);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList11 = this.photoThumbs;
                    if (arrayList11 != null && !arrayList11.isEmpty()) {
                        for (int i = 0; i < this.photoThumbs.size(); i++) {
                            TLRPC.PhotoSize photoSize = this.photoThumbs.get(i);
                            int i2 = 0;
                            while (true) {
                                if (i2 < photo.sizes.size()) {
                                    TLRPC.PhotoSize photoSize2 = (TLRPC.PhotoSize) photo.sizes.get(i2);
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
                if (photo.dc_id != 0 && (arrayList10 = this.photoThumbs) != null) {
                    int size = arrayList10.size();
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
                    ArrayList<TLRPC.PhotoSize> arrayList12 = new ArrayList<>();
                    this.photoThumbs = arrayList12;
                    arrayList12.addAll(this.emojiAnimatedSticker.thumbs);
                } else if (!arrayList.isEmpty()) {
                    updatePhotoSizeLocations(this.photoThumbs, this.emojiAnimatedSticker.thumbs);
                }
                this.photoThumbsObject = this.emojiAnimatedSticker;
                return;
            }
            return;
        }
        if (getMedia(message) != null && !(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaEmpty)) {
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
                TLRPC.Photo photo2 = getMedia(this.messageOwner).photo;
                if (!z || ((arrayList9 = this.photoThumbs) != null && arrayList9.size() != photo2.sizes.size())) {
                    this.photoThumbs = new ArrayList<>(photo2.sizes);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList13 = this.photoThumbs;
                    if (arrayList13 != null && !arrayList13.isEmpty()) {
                        for (int i4 = 0; i4 < this.photoThumbs.size(); i4++) {
                            TLRPC.PhotoSize photoSize3 = this.photoThumbs.get(i4);
                            if (photoSize3 != null) {
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= photo2.sizes.size()) {
                                        break;
                                    }
                                    TLRPC.PhotoSize photoSize4 = (TLRPC.PhotoSize) photo2.sizes.get(i5);
                                    if (photoSize4 != null && !(photoSize4 instanceof TLRPC.TL_photoSizeEmpty)) {
                                        if (photoSize4.type.equals(photoSize3.type)) {
                                            photoSize3.location = photoSize4.location;
                                            break;
                                        } else if ("s".equals(photoSize3.type) && (photoSize4 instanceof TLRPC.TL_photoStrippedSize)) {
                                            this.photoThumbs.set(i4, photoSize4);
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
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
                TLRPC.Photo photo3 = ((TLRPC.TL_messageMediaDocument) getMedia(this.messageOwner)).video_cover;
                if (photo3 != null) {
                    if (!z || ((arrayList8 = this.photoThumbs) != null && arrayList8.size() != photo3.sizes.size())) {
                        this.photoThumbs = new ArrayList<>(photo3.sizes);
                    } else {
                        ArrayList<TLRPC.PhotoSize> arrayList14 = this.photoThumbs;
                        if (arrayList14 != null && !arrayList14.isEmpty()) {
                            for (int i6 = 0; i6 < this.photoThumbs.size(); i6++) {
                                TLRPC.PhotoSize photoSize5 = this.photoThumbs.get(i6);
                                if (photoSize5 != null) {
                                    int i7 = 0;
                                    while (true) {
                                        if (i7 >= photo3.sizes.size()) {
                                            break;
                                        }
                                        TLRPC.PhotoSize photoSize6 = (TLRPC.PhotoSize) photo3.sizes.get(i7);
                                        if (photoSize6 != null && !(photoSize6 instanceof TLRPC.TL_photoSizeEmpty)) {
                                            if (photoSize6.type.equals(photoSize5.type)) {
                                                photoSize5.location = photoSize6.location;
                                                break;
                                            } else if ("s".equals(photoSize5.type) && (photoSize6 instanceof TLRPC.TL_photoStrippedSize)) {
                                                this.photoThumbs.set(i6, photoSize6);
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
                    if (!z || (arrayList7 = this.photoThumbs) == null) {
                        ArrayList<TLRPC.PhotoSize> arrayList15 = new ArrayList<>();
                        this.photoThumbs = arrayList15;
                        arrayList15.addAll(document.thumbs);
                    } else if (!arrayList7.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, document.thumbs);
                    }
                    this.photoThumbsObject = document;
                    return;
                }
                return;
            }
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                TLRPC.Document document2 = getMedia(this.messageOwner).game.document;
                if (document2 != null && isDocumentHasThumb(document2)) {
                    if (!z) {
                        ArrayList<TLRPC.PhotoSize> arrayList16 = new ArrayList<>();
                        this.photoThumbs = arrayList16;
                        arrayList16.addAll(document2.thumbs);
                    } else {
                        ArrayList<TLRPC.PhotoSize> arrayList17 = this.photoThumbs;
                        if (arrayList17 != null && !arrayList17.isEmpty()) {
                            updatePhotoSizeLocations(this.photoThumbs, document2.thumbs);
                        }
                    }
                    this.photoThumbsObject = document2;
                }
                TLRPC.Photo photo4 = getMedia(this.messageOwner).game.photo;
                if (photo4 != null) {
                    if (!z || (arrayList6 = this.photoThumbs2) == null) {
                        this.photoThumbs2 = new ArrayList<>(photo4.sizes);
                    } else if (!arrayList6.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs2, photo4.sizes);
                    }
                    this.photoThumbsObject2 = photo4;
                }
                if (this.photoThumbs != null || (arrayList5 = this.photoThumbs2) == null) {
                    return;
                }
                this.photoThumbs = arrayList5;
                this.photoThumbs2 = null;
                this.photoThumbsObject = this.photoThumbsObject2;
                this.photoThumbsObject2 = null;
                return;
            }
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) {
                TLRPC.Photo photo5 = getMedia(this.messageOwner).webpage.photo;
                TLRPC.Document document3 = getMedia(this.messageOwner).webpage.document;
                if (photo5 != null) {
                    if (!z || (arrayList4 = this.photoThumbs) == null) {
                        this.photoThumbs = new ArrayList<>(photo5.sizes);
                    } else if (!arrayList4.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, photo5.sizes);
                    }
                    this.photoThumbsObject = photo5;
                    return;
                }
                if (document3 == null || !isDocumentHasThumb(document3)) {
                    return;
                }
                if (!z) {
                    ArrayList<TLRPC.PhotoSize> arrayList18 = new ArrayList<>();
                    this.photoThumbs = arrayList18;
                    arrayList18.addAll(document3.thumbs);
                } else {
                    ArrayList<TLRPC.PhotoSize> arrayList19 = this.photoThumbs;
                    if (arrayList19 != null && !arrayList19.isEmpty()) {
                        updatePhotoSizeLocations(this.photoThumbs, document3.thumbs);
                    }
                }
                this.photoThumbsObject = document3;
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
                ArrayList<TLRPC.PhotoSize> arrayList20 = new ArrayList<>();
                this.photoThumbs = arrayList20;
                arrayList20.addAll(document4.thumbs);
            } else {
                ArrayList<TLRPC.PhotoSize> arrayList21 = this.photoThumbs;
                if (arrayList21 != null && !arrayList21.isEmpty()) {
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

    public CharSequence replaceWithLink(CharSequence charSequence, String str, ArrayList<Long> arrayList, AbstractMap<Long, TLRPC.User> abstractMap, LongSparseArray longSparseArray) {
        TLRPC.User user;
        if (TextUtils.indexOf(charSequence, str) < 0) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
        for (int i = 0; i < arrayList.size(); i++) {
            if (abstractMap != null) {
                user = abstractMap.get(arrayList.get(i));
            } else {
                user = longSparseArray != null ? (TLRPC.User) longSparseArray.get(arrayList.get(i).longValue()) : null;
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
                spannableStringBuilder.setSpan(new URLSpanNoUnderlineBold(_UrlKt.FRAGMENT_ENCODE_SET + user.f1825id), length, userName.length() + length, 33);
            }
        }
        return TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{spannableStringBuilder});
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, CharSequence charSequence2) {
        return TextUtils.indexOf(charSequence, str) >= 0 ? TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{charSequence2}) : charSequence;
    }

    public static CharSequence replaceWithLink(CharSequence charSequence, String str, TLObject tLObject) {
        String str2;
        CharSequence topicSpannedName;
        String str3;
        TLObject tLObject2;
        int iIndexOf = TextUtils.indexOf(charSequence, str);
        if (iIndexOf < 0) {
            return charSequence;
        }
        TLObject tLObject3 = null;
        tLObject3 = null;
        tLObject3 = null;
        tLObject3 = null;
        if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            topicSpannedName = UserObject.getUserName(user).replace('\n', ' ');
            str2 = _UrlKt.FRAGMENT_ENCODE_SET + user.f1825id;
        } else if (tLObject instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) tLObject;
            topicSpannedName = chat.title.replace('\n', ' ');
            str2 = _UrlKt.FRAGMENT_ENCODE_SET + (-chat.f1660id);
        } else if (tLObject instanceof TLRPC.TL_game) {
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
                topicSpannedName = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String str4 = str3;
            tLObject3 = tLObject2;
            str2 = str4;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TextUtils.replace(charSequence, new String[]{str}, new CharSequence[]{topicSpannedName}));
        URLSpanNoUnderlineBold uRLSpanNoUnderlineBold = new URLSpanNoUnderlineBold(_UrlKt.FRAGMENT_ENCODE_SET + str2);
        uRLSpanNoUnderlineBold.setObject(tLObject3);
        spannableStringBuilder.setSpan(uRLSpanNoUnderlineBold, iIndexOf, topicSpannedName.length() + iIndexOf, 33);
        return spannableStringBuilder;
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
            ArrayList arrayList = getMedia(message).photo.sizes;
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
            ArrayList arrayList = messageMedia.photo.sizes;
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
            char c = 0;
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
                            if (i4 == 0 && c != ' ') {
                                i4++;
                            }
                        } else if (cCharAt != ' ' && c == '.' && i4 == 1) {
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
                    c = cCharAt;
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
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) webPage.attributes.get(i3);
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
                FileLog.m1136e(e);
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
            SpannableString spannableString = new SpannableString(LocaleController.getString(C2888R.string.NoWordsRecognized));
            spannableString.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.1
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
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
        StaticLayout staticLayout;
        CharSequence voiceTranscription = getVoiceTranscription();
        if (voiceTranscription == null) {
            return 0.0f;
        }
        int iM1124dp = AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(needDrawAvatar() ? 147.0f : 95.0f);
        if (Build.VERSION.SDK_INT >= 24) {
            staticLayout = StaticLayout.Builder.obtain(voiceTranscription, 0, voiceTranscription.length(), Theme.chat_msgTextPaint, iM1124dp).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL).build();
        } else {
            staticLayout = new StaticLayout(voiceTranscription, Theme.chat_msgTextPaint, iM1124dp, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        }
        return staticLayout.getHeight();
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
                boolean z3 = z || (!(this.messageOwner.send_state != 0 ? false : arrayList.isEmpty() ^ true) && (this.eventId != 0 || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto_layer74) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_old) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer68) || (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument_layer74) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.f1686id < 0)));
                if (z3) {
                    if (containsUrls(this.caption)) {
                        try {
                            AndroidUtilities.addLinksSafe((Spannable) this.caption, 5, false, true);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                    addUrlsByPattern(isOutOwner(), this.caption, true, 0, 0, true);
                }
                addEntitiesToText(this.caption, z3);
                this.caption = FormattedDateSpan.applyFormatedDateEntities(this.caption);
                if (isVideo()) {
                    addUrlsByPattern(isOutOwner(), this.caption, true, 3, (int) getDuration(), false);
                    return;
                } else {
                    if (isMusic() || isVoice()) {
                        addUrlsByPattern(isOutOwner(), this.caption, true, 4, (int) getDuration(), false);
                        return;
                    }
                    return;
                }
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

    /* JADX WARN: Removed duplicated region for block: B:101:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x023b  */
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
                    urlPattern = Pattern.compile("(^|\\s)/[a-zA-Z@\\d_]{1,255}|(^|\\s|\\()@[a-zA-Z\\d_]{1,32}|(^|\\s|\\()#[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s|\\()\\$[^0-9][\\w.]+(@[^0-9][\\w.]+)?|(^|\\s)\\$[A-Z]{3,8}([ ,.]|$)");
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
                        int iIntValue = Utilities.parseInt(charSequence.subSequence(iStart3, iEnd3)).intValue();
                        int iIntValue2 = Utilities.parseInt(charSequence.subSequence(iStart4, iEnd4)).intValue();
                        int iIntValue3 = (iStart2 < 0 || iEnd2 < 0) ? -1 : Utilities.parseInt(charSequence.subSequence(iStart2, iEnd2)).intValue();
                        String string = (iStart5 < 0 || iEnd5 < 0) ? null : charSequence.subSequence(iStart5, iEnd5).toString();
                        if (iStart5 >= 0 || iEnd5 >= 0) {
                            iEnd = iEnd4;
                        }
                        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(iStart, iEnd, URLSpan.class);
                        if (uRLSpanArr == null || uRLSpanArr.length <= 0) {
                            int i9 = iIntValue2 + (iIntValue * 60);
                            if (iIntValue3 > 0) {
                                i9 += iIntValue3 * 3600;
                            }
                            if (i9 <= i2) {
                                i5 = 3;
                                if (i == 3) {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("video?" + i9);
                                } else {
                                    uRLSpanNoUnderline = new URLSpanNoUnderline("audio?" + i9);
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
            FileLog.m1136e(e);
        }
    }

    public static int[] getWebDocumentWidthAndHeight(TLRPC.WebDocument webDocument) {
        if (webDocument == null) {
            return null;
        }
        int size = webDocument.attributes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.DocumentAttribute documentAttribute = (TLRPC.DocumentAttribute) webDocument.attributes.get(i);
            if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                return new int[]{documentAttribute.f1671w, documentAttribute.f1670h};
            }
            if (documentAttribute instanceof TLRPC.TL_documentAttributeVideo) {
                return new int[]{documentAttribute.f1671w, documentAttribute.f1670h};
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
            TLRPC.DocumentAttribute documentAttribute = (TLRPC.DocumentAttribute) webDocument.attributes.get(i);
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
                FileLog.m1136e(e);
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
        if (this.summarized) {
            if (this.translated && (tL_textWithEntities = message.translatedSummaryText) != null) {
                return tL_textWithEntities.entities;
            }
            TLRPC.TL_textWithEntities tL_textWithEntities2 = message.summaryText;
            if (tL_textWithEntities2 != null) {
                return tL_textWithEntities2.entities;
            }
            return null;
        }
        if (this.translated) {
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

    /* JADX WARN: Removed duplicated region for block: B:141:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04ae A[PHI: r0 r5 r7 r8 r19
  0x04ae: PHI (r0v43 android.text.Spannable) = (r0v10 android.text.Spannable), (r0v38 android.text.Spannable), (r0v44 android.text.Spannable) binds: [B:267:0x04ac, B:270:0x04c2, B:182:0x0280] A[DONT_GENERATE, DONT_INLINE]
  0x04ae: PHI (r5v24 int) = (r5v4 int), (r5v18 int), (r5v4 int) binds: [B:267:0x04ac, B:270:0x04c2, B:182:0x0280] A[DONT_GENERATE, DONT_INLINE]
  0x04ae: PHI (r7v19 boolean) = (r7v3 boolean), (r7v16 boolean), (r7v3 boolean) binds: [B:267:0x04ac, B:270:0x04c2, B:182:0x0280] A[DONT_GENERATE, DONT_INLINE]
  0x04ae: PHI (r8v50 byte) = (r8v12 byte), (r8v45 byte), (r8v51 byte) binds: [B:267:0x04ac, B:270:0x04c2, B:182:0x0280] A[DONT_GENERATE, DONT_INLINE]
  0x04ae: PHI (r19v10 int) = (r19v2 int), (r19v5 int), (r19v11 int) binds: [B:267:0x04ac, B:270:0x04c2, B:182:0x0280] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0257 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean addEntitiesToText(CharSequence charSequence, ArrayList<TLRPC.MessageEntity> arrayList, boolean z, boolean z2, boolean z3, boolean z4, int i) {
        int i2;
        String strReplaceAll;
        int i3;
        Spannable spannable;
        byte b;
        int i4;
        boolean z5;
        int i5;
        int i6;
        int size;
        int i7;
        int i8;
        if (!(charSequence instanceof Spannable)) {
            return false;
        }
        CharSequence charSequenceRestoreFormatedDateEntities = FormattedDateSpan.restoreFormatedDateEntities(charSequence);
        Spannable spannable2 = (Spannable) charSequenceRestoreFormatedDateEntities;
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable2.getSpans(0, charSequenceRestoreFormatedDateEntities.length(), URLSpan.class);
        boolean z6 = uRLSpanArr != null && uRLSpanArr.length > 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            byte b2 = z3 ? (byte) 2 : z ? (byte) 1 : (byte) 0;
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList(arrayList);
            Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.messenger.MessageObject$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return MessageObject.$r8$lambda$w1b4brUQc9jkaGF7tJdOKyazR9k((TLRPC.MessageEntity) obj, (TLRPC.MessageEntity) obj2);
                }
            });
            int size2 = arrayList3.size();
            int i9 = 0;
            while (i9 < size2) {
                TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) arrayList3.get(i9);
                if (messageEntity.length <= 0 || (i6 = messageEntity.offset) < 0 || i6 >= charSequenceRestoreFormatedDateEntities.length()) {
                    i5 = size2;
                } else {
                    if (messageEntity.offset + messageEntity.length > charSequenceRestoreFormatedDateEntities.length()) {
                        messageEntity.length = charSequenceRestoreFormatedDateEntities.length() - messageEntity.offset;
                    }
                    if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityBold) || (messageEntity instanceof TLRPC.TL_messageEntityItalic) || (messageEntity instanceof TLRPC.TL_messageEntityStrike) || (messageEntity instanceof TLRPC.TL_messageEntityUnderline) || (messageEntity instanceof TLRPC.TL_messageEntityBlockquote) || (messageEntity instanceof TLRPC.TL_messageEntityFormattedDate) || (messageEntity instanceof TLRPC.TL_messageEntityCode) || (messageEntity instanceof TLRPC.TL_messageEntityPre) || (messageEntity instanceof TLRPC.TL_messageEntityMentionName) || (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) || (messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji)) && uRLSpanArr != null && uRLSpanArr.length > 0) {
                        for (int i10 = 0; i10 < uRLSpanArr.length; i10++) {
                            URLSpan uRLSpan = uRLSpanArr[i10];
                            if (uRLSpan != null) {
                                int spanStart = spannable2.getSpanStart(uRLSpan);
                                int spanEnd = spannable2.getSpanEnd(uRLSpanArr[i10]);
                                int i11 = messageEntity.offset;
                                if ((i11 <= spanStart && messageEntity.length + i11 >= spanStart) || (i11 <= spanEnd && i11 + messageEntity.length >= spanEnd)) {
                                    spannable2.removeSpan(uRLSpanArr[i10]);
                                    uRLSpanArr[i10] = null;
                                }
                            }
                        }
                    }
                    if ((i != 1 || (messageEntity instanceof TLRPC.TL_messageEntityHashtag)) && !(messageEntity instanceof TLRPC.TL_messageEntityCustomEmoji) && !(messageEntity instanceof TLRPC.TL_messageEntityBlockquote) && !(messageEntity instanceof TLRPC.TL_messageEntityPre)) {
                        TextStyleSpan.TextStyleRun textStyleRun = new TextStyleSpan.TextStyleRun();
                        int i12 = messageEntity.offset;
                        textStyleRun.start = i12;
                        textStyleRun.end = i12 + messageEntity.length;
                        if (messageEntity instanceof TLRPC.TL_messageEntitySpoiler) {
                            textStyleRun.flags = 256;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityStrike) {
                            textStyleRun.flags = 8;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityUnderline) {
                            textStyleRun.flags = 16;
                        } else if (messageEntity instanceof TLRPC.TL_messageEntityBold) {
                            textStyleRun.flags = 1;
                        } else {
                            if (messageEntity instanceof TLRPC.TL_messageEntityItalic) {
                                textStyleRun.flags = 2;
                            } else if (messageEntity instanceof TLRPC.TL_messageEntityCode) {
                                textStyleRun.flags = 4;
                            } else if (messageEntity instanceof TLRPC.TL_messageEntityMentionName) {
                                if (z2) {
                                    textStyleRun.flags = 64;
                                    textStyleRun.urlEntity = messageEntity;
                                }
                                i5 = size2;
                            } else if (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                if (z2) {
                                    textStyleRun.flags = 64;
                                    textStyleRun.urlEntity = messageEntity;
                                }
                                i5 = size2;
                            } else {
                                if ((!z4 || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) || (messageEntity instanceof TLRPC.TL_messageEntityFormattedDate)) && (((!(messageEntity instanceof TLRPC.TL_messageEntityUrl) && !(messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) || !Browser.isPassportUrl(messageEntity.url)) && (!(messageEntity instanceof TLRPC.TL_messageEntityMention) || z2))) {
                                    textStyleRun.flags = 128;
                                    textStyleRun.urlEntity = messageEntity;
                                    if (messageEntity instanceof TLRPC.TL_messageEntityTextUrl) {
                                        textStyleRun.flags = 128 | 1024;
                                    }
                                }
                                i5 = size2;
                            }
                            size = arrayList2.size();
                            i7 = 0;
                            while (i7 < size) {
                                TextStyleSpan.TextStyleRun textStyleRun2 = (TextStyleSpan.TextStyleRun) arrayList2.get(i7);
                                if ((textStyleRun2.flags & 256) == 0 || textStyleRun.start < textStyleRun2.start || textStyleRun.end > textStyleRun2.end) {
                                    int i13 = textStyleRun.start;
                                    int i14 = textStyleRun2.start;
                                    if (i13 > i14) {
                                        int i15 = textStyleRun2.end;
                                        if (i13 < i15) {
                                            if (textStyleRun.end < i15) {
                                                TextStyleSpan.TextStyleRun textStyleRun3 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun3.merge(textStyleRun2);
                                                arrayList2.add(i7 + 1, textStyleRun3);
                                                TextStyleSpan.TextStyleRun textStyleRun4 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                                textStyleRun4.start = textStyleRun.end;
                                                i7 += 2;
                                                size += 2;
                                                arrayList2.add(i7, textStyleRun4);
                                            } else {
                                                TextStyleSpan.TextStyleRun textStyleRun5 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun5.merge(textStyleRun2);
                                                textStyleRun5.end = textStyleRun2.end;
                                                i7++;
                                                size++;
                                                arrayList2.add(i7, textStyleRun5);
                                            }
                                            int i16 = textStyleRun.start;
                                            textStyleRun.start = textStyleRun2.end;
                                            textStyleRun2.end = i16;
                                        }
                                    } else {
                                        int i17 = textStyleRun.end;
                                        if (i14 < i17) {
                                            i8 = size2;
                                            int i18 = textStyleRun2.end;
                                            if (i17 == i18) {
                                                textStyleRun2.merge(textStyleRun);
                                            } else if (i17 < i18) {
                                                TextStyleSpan.TextStyleRun textStyleRun6 = new TextStyleSpan.TextStyleRun(textStyleRun2);
                                                textStyleRun6.merge(textStyleRun);
                                                textStyleRun6.end = textStyleRun.end;
                                                i7++;
                                                size++;
                                                arrayList2.add(i7, textStyleRun6);
                                                textStyleRun2.start = textStyleRun.end;
                                            } else {
                                                TextStyleSpan.TextStyleRun textStyleRun7 = new TextStyleSpan.TextStyleRun(textStyleRun);
                                                textStyleRun7.start = textStyleRun2.end;
                                                i7++;
                                                size++;
                                                arrayList2.add(i7, textStyleRun7);
                                                textStyleRun2.merge(textStyleRun);
                                            }
                                            textStyleRun.end = i14;
                                        }
                                    }
                                    i8 = size2;
                                } else {
                                    i8 = size2;
                                }
                                i7++;
                                size2 = i8;
                            }
                            i5 = size2;
                            if (textStyleRun.start >= textStyleRun.end) {
                                arrayList2.add(textStyleRun);
                            }
                        }
                        size = arrayList2.size();
                        i7 = 0;
                        while (i7 < size) {
                        }
                        i5 = size2;
                        if (textStyleRun.start >= textStyleRun.end) {
                        }
                    }
                }
                i9++;
                size2 = i5;
            }
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            for (int iMin = Math.min(MediaDataController.MAX_STYLE_RUNS_COUNT, arrayList2.size()); i19 < iMin; iMin = i3) {
                TextStyleSpan.TextStyleRun textStyleRun8 = (TextStyleSpan.TextStyleRun) arrayList2.get(i19);
                if (i != 1 || (textStyleRun8.urlEntity instanceof TLRPC.TL_messageEntityHashtag)) {
                    TLRPC.MessageEntity messageEntity2 = textStyleRun8.urlEntity;
                    if (messageEntity2 != null) {
                        int i22 = messageEntity2.offset;
                        strReplaceAll = TextUtils.substring(charSequenceRestoreFormatedDateEntities, i22, messageEntity2.length + i22);
                    } else {
                        strReplaceAll = null;
                    }
                    TLRPC.MessageEntity messageEntity3 = textStyleRun8.urlEntity;
                    if (messageEntity3 instanceof TLRPC.TL_messageEntityBotCommand) {
                        if (i20 < 250) {
                            i20++;
                            spannable2.setSpan(new URLSpanBotCommand(strReplaceAll, b2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                            i3 = iMin;
                            spannable = spannable2;
                            b = b2;
                            z5 = false;
                            if (z5) {
                                if ((textStyleRun8.flags & 256) != 0 && i21 < 100) {
                                    i21++;
                                    spannable.setSpan(new TextStyleSpan(textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                }
                            }
                        }
                        i3 = iMin;
                        spannable = spannable2;
                        b = b2;
                    } else {
                        if ((messageEntity3 instanceof TLRPC.TL_messageEntityHashtag) || (messageEntity3 instanceof TLRPC.TL_messageEntityMention)) {
                            i3 = iMin;
                            spannable = spannable2;
                            b = b2;
                            i4 = 250;
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityCashtag) {
                            i3 = iMin;
                            spannable = spannable2;
                            i4 = 250;
                            b = b2;
                        } else if (messageEntity3 instanceof TLRPC.TL_messageEntityEmail) {
                            if (i20 < 250) {
                                i20++;
                                spannable2.setSpan(new URLSpanReplacement("mailto:" + strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                i3 = iMin;
                                spannable = spannable2;
                                b = b2;
                                z5 = false;
                                if (z5) {
                                }
                            }
                            i3 = iMin;
                            spannable = spannable2;
                            b = b2;
                        } else {
                            i3 = iMin;
                            if (messageEntity3 instanceof TLRPC.TL_messageEntityUrl) {
                                if (i20 < 250) {
                                    i20++;
                                    if (!strReplaceAll.toLowerCase().contains("://")) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(BotWebViewContainer.isTonsite(strReplaceAll) ? "tonsite://" : "http://");
                                        sb.append(strReplaceAll);
                                        strReplaceAll = sb.toString();
                                    }
                                    if (strReplaceAll != null) {
                                        strReplaceAll = strReplaceAll.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                    }
                                    if (Browser.isTonsitePunycode(strReplaceAll)) {
                                        spannable = spannable2;
                                        b = b2;
                                        z6 = true;
                                    } else {
                                        spannable2.setSpan(new URLSpanBrowser(strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        spannable = spannable2;
                                        b = b2;
                                        z5 = false;
                                        z6 = true;
                                        if (z5) {
                                        }
                                    }
                                }
                                spannable = spannable2;
                                b = b2;
                            } else if (messageEntity3 instanceof TLRPC.TL_messageEntityFormattedDate) {
                                if (i20 < 250) {
                                    i20++;
                                    spannable2.setSpan(new FormattedDateSpan(strReplaceAll, textStyleRun8, (TLRPC.TL_messageEntityFormattedDate) textStyleRun8.urlEntity), textStyleRun8.start, textStyleRun8.end, 33);
                                    spannable = spannable2;
                                    b = b2;
                                    z5 = false;
                                    if (z5) {
                                    }
                                }
                                spannable = spannable2;
                                b = b2;
                            } else {
                                if (messageEntity3 instanceof TLRPC.TL_messageEntityBankCard) {
                                    spannable2.setSpan(new URLSpanNoUnderline("card:" + strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                } else if (messageEntity3 instanceof TLRPC.TL_messageEntityPhone) {
                                    String strStripExceptNumbers = PhoneFormat.stripExceptNumbers(strReplaceAll);
                                    if (strReplaceAll.startsWith("+")) {
                                        strStripExceptNumbers = "+" + strStripExceptNumbers;
                                    }
                                    spannable2.setSpan(new URLSpanNoUnderline("tel:" + strStripExceptNumbers, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                } else if (messageEntity3 instanceof TLRPC.TL_messageEntityTextUrl) {
                                    if (i20 < 250) {
                                        i20++;
                                        String strReplaceAll2 = messageEntity3.url;
                                        if (strReplaceAll2 != null) {
                                            strReplaceAll2 = strReplaceAll2.replaceAll("∕|⁄|%E2%81%84|%E2%88%95", "/");
                                        }
                                        if (Browser.isTonsitePunycode(strReplaceAll2)) {
                                            spannable = spannable2;
                                            b = b2;
                                        } else {
                                            spannable2.setSpan(new URLSpanReplacement(strReplaceAll2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                            spannable = spannable2;
                                            b = b2;
                                            z5 = false;
                                            if (z5) {
                                            }
                                        }
                                    }
                                    spannable = spannable2;
                                    b = b2;
                                } else {
                                    if (messageEntity3 instanceof TLRPC.TL_messageEntityMentionName) {
                                        spannable2.setSpan(new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.TL_messageEntityMentionName) textStyleRun8.urlEntity).user_id, b2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                    } else if (messageEntity3 instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                        spannable2.setSpan(new URLSpanUserMention(_UrlKt.FRAGMENT_ENCODE_SET + ((TLRPC.TL_inputMessageEntityMentionName) textStyleRun8.urlEntity).user_id.user_id, b2, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                    } else if ((textStyleRun8.flags & 4) != 0) {
                                        Spannable spannable3 = spannable2;
                                        byte b3 = b2;
                                        spannable = spannable3;
                                        b = b3;
                                        spannable.setSpan(new URLSpanMono(spannable3, textStyleRun8.start, textStyleRun8.end, b3, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        z5 = false;
                                        if (z5) {
                                        }
                                    } else {
                                        spannable = spannable2;
                                        b = b2;
                                        spannable.setSpan(new TextStyleSpan(textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                                        z5 = true;
                                        if (z5) {
                                        }
                                    }
                                    spannable = spannable2;
                                    b = b2;
                                    z5 = false;
                                    if (z5) {
                                    }
                                }
                                spannable = spannable2;
                                b = b2;
                                z5 = false;
                                z6 = true;
                                if (z5) {
                                }
                            }
                        }
                        if (i20 < i4) {
                            i20++;
                            spannable.setSpan(new URLSpanNoUnderline(strReplaceAll, textStyleRun8), textStyleRun8.start, textStyleRun8.end, 33);
                            z5 = false;
                            if (z5) {
                            }
                        }
                    }
                } else {
                    i3 = iMin;
                    spannable = spannable2;
                    b = b2;
                }
                i19++;
                spannable2 = spannable;
                b2 = b;
            }
            Spannable spannable4 = spannable2;
            int size3 = arrayList3.size();
            int i23 = 0;
            for (int i24 = 0; i24 < size3; i24++) {
                TLRPC.MessageEntity messageEntity4 = (TLRPC.MessageEntity) arrayList3.get(i24);
                if (messageEntity4.length > 0 && (i2 = messageEntity4.offset) >= 0 && i2 < charSequenceRestoreFormatedDateEntities.length()) {
                    if (messageEntity4.offset + messageEntity4.length > charSequenceRestoreFormatedDateEntities.length()) {
                        messageEntity4.length = charSequenceRestoreFormatedDateEntities.length() - messageEntity4.offset;
                    }
                    if (messageEntity4 instanceof TLRPC.TL_messageEntityBlockquote) {
                        int i25 = messageEntity4.offset;
                        QuoteSpan.putQuote(spannable4, i25, messageEntity4.length + i25, messageEntity4.collapsed);
                    } else if ((messageEntity4 instanceof TLRPC.TL_messageEntityPre) && i23 < 50) {
                        i23++;
                        int i26 = messageEntity4.offset;
                        int i27 = messageEntity4.length + i26;
                        spannable4.setSpan(new CodeHighlighting.Span(true, 0, null, messageEntity4.language, spannable4.subSequence(i26, i27).toString()), i26, i27, 33);
                    }
                }
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
        boolean z = false;
        if (bool != null) {
            TLRPC.Message message = this.messageOwner;
            return (message == null || (messageMedia2 = message.media) == null || messageMedia2.webpage == null || !bool.booleanValue()) ? false : true;
        }
        TLRPC.Message message2 = this.messageOwner;
        if (message2 != null && (messageMedia = message2.media) != null && (webPage = messageMedia.webpage) != null && !TextUtils.isEmpty(WebPlayerView.getYouTubeVideoId(webPage.url))) {
            z = true;
        }
        this.isEmbedVideoCached = Boolean.valueOf(z);
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getMaxMessageTextWidth() {
        int iM1124dp;
        int iM1124dp2;
        int iM1124dp3;
        if (AndroidUtilities.isTablet() && this.eventId != 0) {
            this.generatedWithMinSize = AndroidUtilities.m1124dp(530.0f);
        } else {
            this.generatedWithMinSize = AndroidUtilities.isTablet() ? AndroidUtilities.getMinTabletSide() : getParentWidth();
        }
        this.generatedWithDensity = AndroidUtilities.density;
        if (this.hasCode && !this.isSaved) {
            iM1124dp = this.generatedWithMinSize - AndroidUtilities.m1124dp(60.0f);
            if (this.sideMenuEnabled) {
                iM1124dp3 = AndroidUtilities.m1124dp(64.0f);
            } else if (needDrawAvatarInternal() && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                iM1124dp3 = AndroidUtilities.m1124dp(52.0f);
            }
            iM1124dp -= iM1124dp3;
        } else if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && getMedia(this.messageOwner).webpage != null && "telegram_background".equals(getMedia(this.messageOwner).webpage.type)) {
            try {
                Uri uri = Uri.parse(getMedia(this.messageOwner).webpage.url);
                String lastPathSegment = uri.getLastPathSegment();
                if (uri.getQueryParameter("bg_color") != null) {
                    iM1124dp = AndroidUtilities.m1124dp(220.0f);
                } else if (lastPathSegment.length() == 6 || (lastPathSegment.length() == 13 && lastPathSegment.charAt(6) == '-')) {
                    iM1124dp = AndroidUtilities.m1124dp(200.0f);
                }
            } catch (Exception unused) {
            }
        } else {
            iM1124dp = isAndroidTheme() ? AndroidUtilities.m1124dp(200.0f) : 0;
        }
        if (iM1124dp == 0) {
            iM1124dp = this.generatedWithMinSize - AndroidUtilities.m1124dp(80.0f);
            if (this.sideMenuEnabled) {
                iM1124dp2 = AndroidUtilities.m1124dp(64.0f);
            } else {
                if (needDrawAvatarInternal() && !isOutOwner() && !this.messageOwner.isThreadMessage) {
                    iM1124dp2 = AndroidUtilities.m1124dp(52.0f);
                }
                if (needDrawShareButton() && (this.isSaved || !isOutOwner())) {
                    iM1124dp -= AndroidUtilities.m1124dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
                if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
                    iM1124dp -= AndroidUtilities.m1124dp(10.0f);
                }
            }
            iM1124dp -= iM1124dp2;
            if (needDrawShareButton()) {
                if (this.isSaved) {
                    iM1124dp -= AndroidUtilities.m1124dp((this.isSaved || !isOutOwner()) ? 14.0f : 40.0f);
                }
            }
            if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame) {
            }
        }
        int i = this.emojiOnlyCount;
        if (i < 1) {
            return iM1124dp;
        }
        int i2 = this.totalAnimatedEmojiCount;
        if (i2 <= 100) {
            return i - i2 < (SharedConfig.getDevicePerformanceClass() >= 2 ? 200 : 100) ? (hasValidReplyMessageObject() || isForwarded()) ? Math.min(iM1124dp, (int) (this.generatedWithMinSize * 0.65f)) : iM1124dp : iM1124dp;
        }
        return iM1124dp;
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
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject == null) {
            return;
        }
        if (messageObject.isYouTubeVideo()) {
            addUrlsByPattern(isOutOwner(), this.messageText, false, 3, Integer.MAX_VALUE, false);
            return;
        }
        if (messageObject.isVideo()) {
            addUrlsByPattern(isOutOwner(), this.messageText, false, 3, (int) messageObject.getDuration(), false);
            return;
        }
        if (messageObject.isMusic() || messageObject.isVoice()) {
            addUrlsByPattern(isOutOwner(), this.messageText, false, 4, (int) messageObject.getDuration(), false);
        }
        TLRPC.Message message = this.messageOwner;
        if (message != null) {
            TLRPC.MessageAction messageAction = message.action;
            if ((messageAction instanceof TLRPC.TL_messageActionTodoCompletions) || (messageAction instanceof TLRPC.TL_messageActionTodoAppendTasks)) {
                updateMessageText();
            }
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
                if ((message instanceof TLRPC.TL_message_old) || (message instanceof TLRPC.TL_message_old2) || (message instanceof TLRPC.TL_message_old3) || (message instanceof TLRPC.TL_message_old4) || (message instanceof TLRPC.TL_messageForwarded_old) || (message instanceof TLRPC.TL_messageForwarded_old2) || (message instanceof TLRPC.TL_message_secret) || (getMedia(message) instanceof TLRPC.TL_messageMediaInvoice) || ((isOut() && this.messageOwner.send_state != 0) || this.messageOwner.f1686id < 0)) {
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

    public static StaticLayout makeStaticLayout(CharSequence charSequence, TextPaint textPaint, int i, float f, float f2, boolean z) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            StaticLayout.Builder alignment = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(1).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL);
            if (z) {
                alignment.setIncludePad(false);
                if (i2 >= 28) {
                    alignment.setUseLineSpacingFromFallbacks(false);
                }
            }
            StaticLayout staticLayoutBuild = alignment.build();
            for (int i3 = 0; i3 < staticLayoutBuild.getLineCount(); i3++) {
                if (staticLayoutBuild.getLineRight(i3) > i) {
                    StaticLayout.Builder alignment2 = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i).setLineSpacing(f2, f).setBreakStrategy(0).setHyphenationFrequency(0).setAlignment(Layout.Alignment.ALIGN_NORMAL);
                    if (z) {
                        alignment2.setIncludePad(false);
                        if (Build.VERSION.SDK_INT >= 28) {
                            alignment2.setUseLineSpacingFromFallbacks(false);
                        }
                    }
                    return alignment2.build();
                }
            }
            return staticLayoutBuild;
        }
        return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, f, f2, false);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:351|(3:459|352|353)|355|(1:357)(12:359|(1:361)|457|362|365|(1:367)(1:369)|368|370|(4:372|(0)(1:375)|(3:384|385|486)(5:455|380|(1:382)(0)|385|486)|386)(1:376)|377|(3:384|385|486)(0)|386)|358|457|362|365|(0)(0)|368|370|(0)(0)|377|(0)(0)|386) */
    /* JADX WARN: Can't wrap try/catch for region: R(48:178|(1:180)|181|(1:183)(1:184)|185|(1:187)(1:188)|189|(1:191)|(1:193)|(1:199)(1:198)|200|(1:208)(1:207)|209|(2:211|(2:(1:216)|217)(1:214))(2:218|(7:220|(1:222)(1:223)|224|(1:226)(1:227)|228|(1:230)(1:231)|232))|233|(3:235|(1:237)(1:(1:240)(1:241))|238)(1:242)|243|(1:245)(2:247|(1:249)(29:250|251|(6:253|(1:274)(8:259|(1:261)(1:263)|262|264|(1:266)(1:267)|268|(1:270)(1:271)|272)|273|275|(2:277|(1:(2:280|(1:283))(1:284))(1:285))|286)(3:287|(2:289|480)(8:290|465|291|(1:299)(1:295)|296|300|(1:302)(1:303)|304)|430)|305|453|306|(1:310)|314|461|318|322|(1:324)(18:327|(1:329)|326|330|(1:332)|333|(1:335)|336|(3:338|(7:451|340|341|467|342|484|346)|482)|347|(6:349|(17:351|459|352|353|355|(1:357)(12:359|(1:361)|457|362|365|(1:367)(1:369)|368|370|(4:372|(0)(1:375)|(3:384|385|486)(5:455|380|(1:382)(0)|385|486)|386)(1:376)|377|(3:384|385|486)(0)|386)|358|457|362|365|(0)(0)|368|370|(0)(0)|377|(0)(0)|386)|485|387|(1:(1:390))(2:(1:392)|393)|394)(3:395|(5:397|(1:399)(1:401)|400|(1:403)(1:404)|405)(1:406)|407)|408|(3:410|(1:412)(1:413)|414)|415|(5:419|(1:421)(4:424|(1:426)|423|427)|422|423|427)|428|481|430)|325|326|330|(0)|333|(0)|336|(0)|347|(0)(0)|408|(0)|415|(6:417|419|(0)(0)|422|423|427)|428|481|430))|246|251|(0)(0)|305|453|306|(2:308|310)|314|461|318|322|(0)(0)|325|326|330|(0)|333|(0)|336|(0)|347|(0)(0)|408|(0)|415|(0)|428|481|430|176) */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x054f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0553, code lost:
    
        if (r4 == 0) goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0555, code lost:
    
        r35.textXOffset = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0559, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
        r8 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0566, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0567, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
        r0 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0607, code lost:
    
        r6 = 0.0f;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x024a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x05d1  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0650 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:384:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0725  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x072d  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0735  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0766  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x078b  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x02ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateLayout(TLRPC.User user) {
        int iM1124dp;
        TextPaint textPaint;
        CharSequence charSequenceInsertHexColorsPreview;
        int i;
        float f;
        float f2;
        float f3;
        int i2;
        int iM1124dp2;
        int i3;
        ArrayList arrayList;
        StaticLayout staticLayoutMakeStaticLayout;
        int i4;
        int i5;
        int i6;
        boolean z;
        TextPaint textPaint2;
        int i7;
        int iM1124dp3;
        boolean z2;
        CharSequence charSequence;
        TextPaint textPaint3;
        ArrayList arrayList2;
        SpannableString spannableStringValueOf;
        int lineCount;
        int iM1124dp4;
        int iCeil;
        int i8;
        int iCeil2;
        int i9;
        int i10;
        Text text;
        int iM1124dp5;
        float lineWidth;
        int iM1124dp6;
        int i11;
        float f4;
        float f5;
        boolean z3;
        int i12;
        boolean z4;
        int i13;
        float lineLeft;
        SpannableString spannableString;
        TextPaint textPaint4;
        int i14;
        int i15 = this.type;
        if ((i15 != 0 && i15 != 19 && i15 != 24) || this.messageOwner.peer_id == null || TextUtils.isEmpty(this.messageText)) {
            return;
        }
        applyEntities();
        TLRPC.Message message = this.messageOwner;
        boolean z5 = false;
        boolean zIsPeerNoForwards = message != null && message.noforwards;
        if (!zIsPeerNoForwards) {
            zIsPeerNoForwards = MessagesController.getInstance(this.currentAccount).isPeerNoForwards(getDialogId());
        }
        boolean z6 = zIsPeerNoForwards;
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
        int maxMessageTextWidth = getMaxMessageTextWidth();
        try {
            if (this.hasSingleQuote) {
                iM1124dp = AndroidUtilities.m1124dp(32.0f);
            } else {
                if (this.hasSingleCode) {
                    iM1124dp = AndroidUtilities.m1124dp(15.0f);
                }
                int i16 = maxMessageTextWidth;
                if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
                    textPaint = Theme.chat_msgGameTextPaint;
                } else {
                    textPaint = Theme.chat_msgTextPaint;
                }
                TextPaint textPaint5 = textPaint;
                charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(this.messageText);
                float f6 = 0.0f;
                StaticLayout staticLayoutMakeStaticLayout2 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint5, i16, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : 0.0f, this.emojiOnlyCount <= 0);
                if (this.isRepostPreview) {
                    if (this.type != 0) {
                        i14 = hasValidGroupId() ? 7 : 12;
                    } else {
                        i14 = 22;
                    }
                    if (isWebpage()) {
                        i14 -= 8;
                    }
                    if (staticLayoutMakeStaticLayout2.getLineCount() > i14) {
                        String string = LocaleController.getString(C2888R.string.ReadMore);
                        StringBuilder sb = new StringBuilder();
                        f2 = 32.0f;
                        sb.append("… ");
                        sb.append(string);
                        f3 = 15.0f;
                        i = 1;
                        int iCeil3 = (int) Math.ceil(textPaint5.measureText(sb.toString()) + AndroidUtilities.m1124dp(1.0f));
                        float fMax = 0.0f;
                        for (int i17 = 0; i17 < i14; i17++) {
                            fMax = Math.max(fMax, staticLayoutMakeStaticLayout2.getLineRight(i17));
                        }
                        int i18 = i14 - 1;
                        int lineStart = staticLayoutMakeStaticLayout2.getLineStart(i18);
                        int lineEnd = staticLayoutMakeStaticLayout2.getLineEnd(i18) - 1;
                        while (true) {
                            if (lineEnd < lineStart) {
                                f = f6;
                                break;
                            }
                            f = f6;
                            if (staticLayoutMakeStaticLayout2.getPrimaryHorizontal(lineEnd) < fMax - iCeil3) {
                                break;
                            }
                            lineEnd--;
                            f6 = f;
                        }
                        while (lineEnd >= lineStart && !Character.isWhitespace(charSequenceInsertHexColorsPreview.charAt(lineEnd))) {
                            lineEnd--;
                        }
                        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequenceInsertHexColorsPreview.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                        spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.2
                            @Override // android.text.style.CharacterStyle
                            public void updateDrawState(TextPaint textPaint6) {
                                textPaint6.setColor(Theme.chat_msgTextPaint.linkColor);
                            }
                        }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                        try {
                            charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(spannableStringBuilderAppend);
                            staticLayoutMakeStaticLayout2 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint5, i16, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : f, this.emojiOnlyCount > 0);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                            return;
                        }
                    }
                } else {
                    i = 1;
                    f = 0.0f;
                    f2 = 32.0f;
                    f3 = 15.0f;
                }
                if (!this.hasSingleQuote) {
                    iM1124dp2 = AndroidUtilities.m1124dp(f2);
                } else if (this.hasSingleCode) {
                    iM1124dp2 = AndroidUtilities.m1124dp(f3);
                } else {
                    i2 = i16;
                    int lineCount2 = staticLayoutMakeStaticLayout2.getLineCount();
                    int i19 = this.totalAnimatedEmojiCount;
                    int i20 = i19 >= 50 ? 5 : 10;
                    i3 = (Build.VERSION.SDK_INT < 24 || i19 >= 50) ? 0 : i;
                    int iCeil4 = i3 != 0 ? i : (int) Math.ceil(lineCount2 / i20);
                    arrayList = new ArrayList();
                    if ((charSequenceInsertHexColorsPreview instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                        cutIntoRanges(charSequenceInsertHexColorsPreview, arrayList);
                    } else {
                        if (i3 == 0 || iCeil4 == i) {
                            staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                            z5 = false;
                            arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                            int size = arrayList.size();
                            this.hasCodeAtTop = z5;
                            this.hasCodeAtBottom = z5;
                            this.hasQuoteAtBottom = z5;
                            this.hasSingleQuote = z5;
                            this.hasSingleCode = z5;
                            i6 = 0;
                            while (i6 < arrayList.size()) {
                                TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                                TextRange textRange = (TextRange) arrayList.get(i6);
                                textLayoutBlock.code = textRange.code;
                                textLayoutBlock.quote = textRange.quote;
                                boolean z7 = textRange.collapse;
                                textLayoutBlock.quoteCollapse = z7;
                                if (z7) {
                                    textLayoutBlock.messageObject = this;
                                }
                                textLayoutBlock.index = i6;
                                textLayoutBlock.start = textRange.start;
                                textLayoutBlock.first = i6 == 0;
                                boolean z8 = i6 == arrayList.size() + (-1);
                                textLayoutBlock.last = z8;
                                boolean z9 = textLayoutBlock.first;
                                if (z9) {
                                    this.hasCodeAtTop = textLayoutBlock.code;
                                }
                                if (z8) {
                                    this.hasQuoteAtBottom = textLayoutBlock.quote;
                                    this.hasCodeAtBottom = textLayoutBlock.code;
                                }
                                this.hasSingleQuote = z9 && z8 && textLayoutBlock.quote;
                                this.hasSingleCode = z9 && z8 && !textLayoutBlock.quote && textLayoutBlock.code;
                                if (textLayoutBlock.quote) {
                                    if (z9 && z8) {
                                        int iM1124dp7 = AndroidUtilities.m1124dp(6.0f);
                                        textLayoutBlock.padBottom = iM1124dp7;
                                        textLayoutBlock.padTop = iM1124dp7;
                                    } else {
                                        textLayoutBlock.padTop = AndroidUtilities.m1124dp(z9 ? 8.0f : 6.0f);
                                        textLayoutBlock.padBottom = AndroidUtilities.m1124dp(7.0f);
                                    }
                                } else if (textLayoutBlock.code) {
                                    textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z6);
                                    textLayoutBlock.padTop = AndroidUtilities.m1124dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? 0 : AndroidUtilities.m1124dp(5.0f));
                                    textLayoutBlock.padBottom = AndroidUtilities.m1124dp(4.0f) + (textLayoutBlock.last ? 0 : AndroidUtilities.m1124dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.m1124dp(38.0f) : 0);
                                }
                                if (textLayoutBlock.code) {
                                    int i21 = textRange.end - textRange.start;
                                    if (i21 > 220) {
                                        textPaint4 = Theme.chat_msgTextCode3Paint;
                                    } else if (i21 > 80) {
                                        textPaint4 = Theme.chat_msgTextCode2Paint;
                                    } else {
                                        textPaint4 = Theme.chat_msgTextCodePaint;
                                    }
                                    textPaint2 = textPaint4;
                                } else {
                                    textPaint2 = textPaint5;
                                }
                                CharSequence charSequenceSubSequence = charSequenceInsertHexColorsPreview.subSequence(textRange.start, textRange.end);
                                if (textLayoutBlock.quote) {
                                    iM1124dp3 = AndroidUtilities.m1124dp(24.0f);
                                } else if (textLayoutBlock.code) {
                                    iM1124dp3 = AndroidUtilities.m1124dp(f3);
                                } else {
                                    i7 = i2;
                                    if (size != 1) {
                                        if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout.getText() instanceof Spannable)) {
                                            if (!TextUtils.isEmpty(textRange.language)) {
                                                spannableString = CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language);
                                            } else {
                                                spannableString = new SpannableString(charSequenceSubSequence.toString());
                                            }
                                            SpannableString spannableString2 = spannableString;
                                            textLayoutBlock.originalWidth = i7;
                                            staticLayoutMakeStaticLayout = makeStaticLayout(spannableString2, textPaint2, i7, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : f, this.emojiOnlyCount > 0);
                                            i16 = i7;
                                        } else {
                                            textLayoutBlock.originalWidth = i16;
                                        }
                                        StaticLayout staticLayout = staticLayoutMakeStaticLayout;
                                        textLayoutBlock.textLayout = staticLayout;
                                        textLayoutBlock.charactersOffset = 0;
                                        textLayoutBlock.charactersEnd = staticLayout.getText().length();
                                        textLayoutBlock.height = staticLayout.getHeight();
                                        textLayoutBlock.collapsedHeight = (int) Math.min(textPaint5.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                        int i22 = this.emojiOnlyCount;
                                        if (i22 != 0) {
                                            if (i22 == 1) {
                                                textLayoutBlock.padTop -= AndroidUtilities.m1124dp(5.3f);
                                            } else if (i22 == 2) {
                                                textLayoutBlock.padTop -= AndroidUtilities.m1124dp(4.5f);
                                            } else if (i22 == 3) {
                                                textLayoutBlock.padTop -= AndroidUtilities.m1124dp(4.2f);
                                            }
                                        }
                                        staticLayoutMakeStaticLayout = staticLayout;
                                    } else {
                                        int i23 = textRange.start;
                                        int i24 = textRange.end;
                                        if (i24 < i23) {
                                            z2 = z6;
                                            charSequence = charSequenceInsertHexColorsPreview;
                                            textPaint3 = textPaint5;
                                            arrayList2 = arrayList;
                                        } else {
                                            textLayoutBlock.charactersOffset = i23;
                                            textLayoutBlock.charactersEnd = i24;
                                            try {
                                                if (textLayoutBlock.code && !textLayoutBlock.quote) {
                                                    spannableStringValueOf = CodeHighlighting.getHighlighted(charSequenceSubSequence.toString(), textRange.language);
                                                } else {
                                                    spannableStringValueOf = SpannableString.valueOf(charSequenceSubSequence);
                                                }
                                                SpannableString spannableString3 = spannableStringValueOf;
                                                textLayoutBlock.originalWidth = i7;
                                                StaticLayout staticLayoutMakeStaticLayout3 = makeStaticLayout(spannableString3, textPaint2, i7, 1.0f, this.totalAnimatedEmojiCount >= 4 ? -1.0f : f, false);
                                                textLayoutBlock.textLayout = staticLayoutMakeStaticLayout3;
                                                textLayoutBlock.height = staticLayoutMakeStaticLayout3.getHeight();
                                                textLayoutBlock.collapsedHeight = (int) Math.min(textPaint5.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                            } catch (Exception e2) {
                                                z2 = z6;
                                                charSequence = charSequenceInsertHexColorsPreview;
                                                textPaint3 = textPaint5;
                                                arrayList2 = arrayList;
                                                FileLog.m1136e(e2);
                                            }
                                        }
                                        i6++;
                                        textPaint5 = textPaint3;
                                        charSequenceInsertHexColorsPreview = charSequence;
                                        z6 = z2;
                                        arrayList = arrayList2;
                                    }
                                    this.textLayoutBlocks.add(textLayoutBlock);
                                    lineCount = textLayoutBlock.textLayout.getLineCount();
                                    lineLeft = textLayoutBlock.textLayout.getLineLeft(lineCount - 1);
                                    if (i6 == 0 && lineLeft >= f) {
                                        this.textXOffset = lineLeft;
                                    }
                                    float f7 = lineLeft;
                                    float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                                    if (!textLayoutBlock.quote) {
                                        iM1124dp4 = AndroidUtilities.m1124dp(f2);
                                    } else {
                                        if (textLayoutBlock.code) {
                                            iM1124dp4 = AndroidUtilities.m1124dp(f3);
                                        }
                                        ArrayList arrayList3 = arrayList;
                                        iCeil = (int) Math.ceil(lineWidth2);
                                        if (iCeil > i2 + 80) {
                                            iCeil = i2;
                                        }
                                        i8 = size - 1;
                                        if (i6 == i8) {
                                            this.lastLineWidth = iCeil;
                                        }
                                        float f8 = iCeil;
                                        charSequence = charSequenceInsertHexColorsPreview;
                                        textPaint3 = textPaint5;
                                        iCeil2 = (int) Math.ceil(f8 + Math.max(0.0f, f7));
                                        if (textLayoutBlock.quote) {
                                            textLayoutBlock.maxRight = 0.0f;
                                            int i25 = 0;
                                            while (i25 < lineCount) {
                                                try {
                                                    i13 = iCeil;
                                                } catch (Exception unused) {
                                                    i13 = iCeil;
                                                }
                                                try {
                                                    textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i25));
                                                } catch (Exception unused2) {
                                                    textLayoutBlock.maxRight = this.textWidth;
                                                }
                                                i25++;
                                                iCeil = i13;
                                            }
                                        }
                                        int i26 = iCeil;
                                        if (lineCount > 1) {
                                            z2 = z6;
                                            int iMax = iCeil2;
                                            int iMax2 = i26;
                                            int i27 = 0;
                                            float fMax2 = 0.0f;
                                            float f9 = 0.0f;
                                            boolean z10 = false;
                                            while (i27 < lineCount) {
                                                int i28 = lineCount;
                                                try {
                                                    lineWidth = textLayoutBlock.textLayout.getLineWidth(i27);
                                                } catch (Exception unused3) {
                                                    lineWidth = 0.0f;
                                                }
                                                if (textLayoutBlock.quote) {
                                                    iM1124dp6 = AndroidUtilities.m1124dp(f2);
                                                } else {
                                                    if (textLayoutBlock.code) {
                                                        iM1124dp6 = AndroidUtilities.m1124dp(f3);
                                                    }
                                                    float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(i27);
                                                    float f10 = lineLeft2;
                                                    if (lineWidth <= i2 + 20) {
                                                        f5 = i2;
                                                        i11 = i16;
                                                        f4 = 0.0f;
                                                    } else {
                                                        i11 = i16;
                                                        f4 = f10;
                                                        f5 = lineWidth;
                                                    }
                                                    ArrayList arrayList4 = arrayList3;
                                                    if (f4 > 0.0f) {
                                                        z3 = z10;
                                                        if (textLayoutBlock.textLayout.getParagraphDirection(i27) != -1) {
                                                            textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                            i12 = 1;
                                                        }
                                                        if (z3 || f4 != 0.0f) {
                                                            z4 = z3;
                                                            z10 = z4;
                                                        } else {
                                                            try {
                                                                if (textLayoutBlock.textLayout.getParagraphDirection(i27) == i12) {
                                                                    z4 = true;
                                                                }
                                                                z10 = z4;
                                                            } catch (Exception unused4) {
                                                                z10 = true;
                                                            }
                                                        }
                                                        float fMax3 = Math.max(f9, f5);
                                                        float f11 = f4 + f5;
                                                        fMax2 = Math.max(fMax2, f11);
                                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                                        iMax = Math.max(iMax, (int) Math.ceil(f11));
                                                        i27++;
                                                        f9 = fMax3;
                                                        lineCount = i28;
                                                        i16 = i11;
                                                        arrayList3 = arrayList4;
                                                    } else {
                                                        z3 = z10;
                                                    }
                                                    this.textXOffset = Math.min(this.textXOffset, f4);
                                                    i12 = 1;
                                                    textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                    this.hasRtl = true;
                                                    if (z3) {
                                                        z4 = z3;
                                                        z10 = z4;
                                                    }
                                                    float fMax32 = Math.max(f9, f5);
                                                    float f112 = f4 + f5;
                                                    fMax2 = Math.max(fMax2, f112);
                                                    iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                                    iMax = Math.max(iMax, (int) Math.ceil(f112));
                                                    i27++;
                                                    f9 = fMax32;
                                                    lineCount = i28;
                                                    i16 = i11;
                                                    arrayList3 = arrayList4;
                                                }
                                                lineWidth += iM1124dp6;
                                                float lineLeft22 = textLayoutBlock.textLayout.getLineLeft(i27);
                                                float f102 = lineLeft22;
                                                if (lineWidth <= i2 + 20) {
                                                }
                                                ArrayList arrayList42 = arrayList3;
                                                if (f4 > 0.0f) {
                                                }
                                                this.textXOffset = Math.min(this.textXOffset, f4);
                                                i12 = 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                this.hasRtl = true;
                                                if (z3) {
                                                }
                                                float fMax322 = Math.max(f9, f5);
                                                float f1122 = f4 + f5;
                                                fMax2 = Math.max(fMax2, f1122);
                                                iMax2 = Math.max(iMax2, (int) Math.ceil(f5));
                                                iMax = Math.max(iMax, (int) Math.ceil(f1122));
                                                i27++;
                                                f9 = fMax322;
                                                lineCount = i28;
                                                i16 = i11;
                                                arrayList3 = arrayList42;
                                            }
                                            i9 = i16;
                                            arrayList2 = arrayList3;
                                            if (!z10) {
                                                if (i6 == i8) {
                                                    this.lastLineWidth = iMax2;
                                                }
                                                fMax2 = f9;
                                            } else if (i6 == i8) {
                                                this.lastLineWidth = iCeil2;
                                            }
                                            this.textWidth = Math.max(this.textWidth, (int) Math.ceil(fMax2));
                                            iCeil2 = iMax;
                                            f = 0.0f;
                                        } else {
                                            z2 = z6;
                                            i9 = i16;
                                            arrayList2 = arrayList3;
                                            f = 0.0f;
                                            if (f7 > 0.0f) {
                                                float fMin = Math.min(this.textXOffset, f7);
                                                this.textXOffset = fMin;
                                                i10 = fMin == 0.0f ? (int) (f8 + f7) : i26;
                                                this.hasRtl = size != 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                            } else {
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                i10 = i26;
                                            }
                                            this.textWidth = Math.max(this.textWidth, Math.min(i2, i10));
                                        }
                                        text = textLayoutBlock.languageLayout;
                                        if (text != null) {
                                            this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.m1124dp(f3), textLayoutBlock.textLayout == null ? f : r6.getWidth()));
                                        }
                                        textLayoutBlock.spoilers.clear();
                                        if (!this.isSpoilersRevealed && !this.spoiledLoginCode) {
                                            if (!textLayoutBlock.quote) {
                                                iM1124dp5 = AndroidUtilities.m1124dp(f2);
                                            } else {
                                                if (textLayoutBlock.code) {
                                                    iM1124dp5 = AndroidUtilities.m1124dp(f3);
                                                }
                                                SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil2, null, textLayoutBlock.spoilers);
                                            }
                                            iCeil2 -= iM1124dp5;
                                            SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil2, null, textLayoutBlock.spoilers);
                                        }
                                        i16 = i9;
                                        i6++;
                                        textPaint5 = textPaint3;
                                        charSequenceInsertHexColorsPreview = charSequence;
                                        z6 = z2;
                                        arrayList = arrayList2;
                                    }
                                    lineWidth2 += iM1124dp4;
                                    ArrayList arrayList32 = arrayList;
                                    iCeil = (int) Math.ceil(lineWidth2);
                                    if (iCeil > i2 + 80) {
                                    }
                                    i8 = size - 1;
                                    if (i6 == i8) {
                                    }
                                    float f82 = iCeil;
                                    charSequence = charSequenceInsertHexColorsPreview;
                                    textPaint3 = textPaint5;
                                    iCeil2 = (int) Math.ceil(f82 + Math.max(0.0f, f7));
                                    if (textLayoutBlock.quote) {
                                    }
                                    int i262 = iCeil;
                                    if (lineCount > 1) {
                                    }
                                    text = textLayoutBlock.languageLayout;
                                    if (text != null) {
                                    }
                                    textLayoutBlock.spoilers.clear();
                                    if (!this.isSpoilersRevealed) {
                                        if (!textLayoutBlock.quote) {
                                        }
                                        iCeil2 -= iM1124dp5;
                                        SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil2, null, textLayoutBlock.spoilers);
                                    }
                                    i16 = i9;
                                    i6++;
                                    textPaint5 = textPaint3;
                                    charSequenceInsertHexColorsPreview = charSequence;
                                    z6 = z2;
                                    arrayList = arrayList2;
                                }
                                i7 = i2 - iM1124dp3;
                                if (size != 1) {
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
                                lineWidth22 += iM1124dp4;
                                ArrayList arrayList322 = arrayList;
                                iCeil = (int) Math.ceil(lineWidth22);
                                if (iCeil > i2 + 80) {
                                }
                                i8 = size - 1;
                                if (i6 == i8) {
                                }
                                float f822 = iCeil;
                                charSequence = charSequenceInsertHexColorsPreview;
                                textPaint3 = textPaint5;
                                iCeil2 = (int) Math.ceil(f822 + Math.max(0.0f, f72));
                                if (textLayoutBlock.quote) {
                                }
                                int i2622 = iCeil;
                                if (lineCount > 1) {
                                }
                                text = textLayoutBlock.languageLayout;
                                if (text != null) {
                                }
                                textLayoutBlock.spoilers.clear();
                                if (!this.isSpoilersRevealed) {
                                }
                                i16 = i9;
                                i6++;
                                textPaint5 = textPaint3;
                                charSequenceInsertHexColorsPreview = charSequence;
                                z6 = z2;
                                arrayList = arrayList2;
                            }
                            if (!this.hasCode) {
                                z = this.textWidth > this.generatedWithMinSize - AndroidUtilities.m1124dp((float) (80 + ((!needDrawAvatarInternal() || isOutOwner() || this.messageOwner.isThreadMessage) ? 0 : 52)));
                            }
                            this.hasWideCode = z;
                            this.factCheckText = null;
                            return;
                        }
                        int i29 = 0;
                        int i30 = 0;
                        while (i29 < iCeil4) {
                            int iMin = i3 != 0 ? lineCount2 : Math.min(i20, lineCount2 - i30);
                            int lineStart2 = staticLayoutMakeStaticLayout2.getLineStart(i30);
                            int i31 = iMin + i30;
                            int i32 = lineCount2;
                            int lineEnd2 = staticLayoutMakeStaticLayout2.getLineEnd(i31 - 1);
                            StaticLayout staticLayout2 = staticLayoutMakeStaticLayout2;
                            int i33 = lineEnd2 - 1;
                            if (i33 >= 0) {
                                i4 = lineEnd2;
                                if (i33 < staticLayout2.getText().length()) {
                                    if (staticLayout2.getText().charAt(i33) == '\n') {
                                        i5 = i4 - 1;
                                    }
                                    if (i5 >= lineStart2) {
                                        arrayList.add(new TextRange(lineStart2, i5));
                                        i30 = i31;
                                    }
                                    i29++;
                                    lineCount2 = i32;
                                    staticLayoutMakeStaticLayout2 = staticLayout2;
                                    z5 = false;
                                }
                                i5 = i4;
                                if (i5 >= lineStart2) {
                                }
                                i29++;
                                lineCount2 = i32;
                                staticLayoutMakeStaticLayout2 = staticLayout2;
                                z5 = false;
                            } else {
                                i4 = lineEnd2;
                            }
                            i5 = i4;
                            if (i5 >= lineStart2) {
                            }
                            i29++;
                            lineCount2 = i32;
                            staticLayoutMakeStaticLayout2 = staticLayout2;
                            z5 = false;
                        }
                    }
                    staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                    int size2 = arrayList.size();
                    this.hasCodeAtTop = z5;
                    this.hasCodeAtBottom = z5;
                    this.hasQuoteAtBottom = z5;
                    this.hasSingleQuote = z5;
                    this.hasSingleCode = z5;
                    i6 = 0;
                    while (i6 < arrayList.size()) {
                    }
                    if (!this.hasCode) {
                    }
                    this.hasWideCode = z;
                    this.factCheckText = null;
                    return;
                }
                i2 = iM1124dp2 + i16;
                int lineCount22 = staticLayoutMakeStaticLayout2.getLineCount();
                int i192 = this.totalAnimatedEmojiCount;
                if (i192 >= 50) {
                }
                if (Build.VERSION.SDK_INT < 24) {
                }
                if (i3 != 0) {
                }
                arrayList = new ArrayList();
                if (charSequenceInsertHexColorsPreview instanceof Spanned) {
                    if (i3 == 0) {
                    }
                    staticLayoutMakeStaticLayout = staticLayoutMakeStaticLayout2;
                    z5 = false;
                    arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                }
                int size22 = arrayList.size();
                this.hasCodeAtTop = z5;
                this.hasCodeAtBottom = z5;
                this.hasQuoteAtBottom = z5;
                this.hasSingleQuote = z5;
                this.hasSingleCode = z5;
                i6 = 0;
                while (i6 < arrayList.size()) {
                }
                if (!this.hasCode) {
                }
                this.hasWideCode = z;
                this.factCheckText = null;
                return;
            }
            charSequenceInsertHexColorsPreview = LocaleUtils.insertHexColorsPreview(this.messageText);
            float f62 = 0.0f;
            StaticLayout staticLayoutMakeStaticLayout22 = makeStaticLayout(charSequenceInsertHexColorsPreview, textPaint5, i16, 1.0f, this.totalAnimatedEmojiCount < 4 ? -1.0f : 0.0f, this.emojiOnlyCount <= 0);
            if (this.isRepostPreview) {
            }
            if (!this.hasSingleQuote) {
            }
            i2 = iM1124dp2 + i16;
            int lineCount222 = staticLayoutMakeStaticLayout22.getLineCount();
            int i1922 = this.totalAnimatedEmojiCount;
            if (i1922 >= 50) {
            }
            if (Build.VERSION.SDK_INT < 24) {
            }
            if (i3 != 0) {
            }
            arrayList = new ArrayList();
            if (charSequenceInsertHexColorsPreview instanceof Spanned) {
            }
            int size222 = arrayList.size();
            this.hasCodeAtTop = z5;
            this.hasCodeAtBottom = z5;
            this.hasQuoteAtBottom = z5;
            this.hasSingleQuote = z5;
            this.hasSingleCode = z5;
            i6 = 0;
            while (i6 < arrayList.size()) {
            }
            if (!this.hasCode) {
            }
            this.hasWideCode = z;
            this.factCheckText = null;
            return;
        } catch (Exception e3) {
            FileLog.m1136e(e3);
            return;
        }
        maxMessageTextWidth -= iM1124dp;
        int i162 = maxMessageTextWidth;
        if (!(getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaGame)) {
        }
        TextPaint textPaint52 = textPaint;
    }

    public int textHeightCached() {
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

        /* JADX WARN: Can't wrap try/catch for region: R(14:271|(3:360|272|273)|275|(1:277)(11:279|(1:281)|358|282|285|(1:287)(1:289)|288|290|(1:296)(1:295)|(2:303|391)(5:356|299|(1:301)|303|391)|304)|278|358|282|285|(0)(0)|288|290|(2:292|296)(0)|(2:303|391)(0)|304) */
        /* JADX WARN: Can't wrap try/catch for region: R(44:132|(1:134)|135|(1:137)(1:138)|139|(1:141)(1:142)|143|(1:145)|(1:147)|(1:153)(1:152)|154|(2:156|(2:(1:161)|162)(1:159))(2:163|(7:165|(1:167)(1:168)|169|(1:171)(1:172)|173|(1:175)(1:176)|177))|178|(3:180|(1:182)(2:184|(1:186)(1:187))|183)(1:188)|189|(1:191)(1:(1:194)(27:195|196|(3:198|(1:210)(4:204|(1:206)(1:208)|207|209)|211)(3:212|(2:214|385)(6:215|366|216|(1:224)(1:220)|221|225)|350)|226|(1:232)|233|362|234|(1:238)|242|374|246|250|(1:252)|253|(1:255)|256|(3:258|(7:370|260|261|368|262|389|266)|387)|267|(6:269|(16:271|360|272|273|275|(1:277)(11:279|(1:281)|358|282|285|(1:287)(1:289)|288|290|(1:296)(1:295)|(2:303|391)(5:356|299|(1:301)|303|391)|304)|278|358|282|285|(0)(0)|288|290|(2:292|296)(0)|(2:303|391)(0)|304)|390|305|(1:(1:308))(2:(1:310)|311)|312)(3:313|(5:315|(1:317)(1:319)|318|(1:321)(1:322)|323)(1:324)|325)|326|(3:328|(1:330)(1:331)|332)|333|(5:339|(1:341)(4:344|(1:346)|343|347)|342|343|347)|348|386|350))|192|196|(0)(0)|226|(3:228|230|232)|233|362|234|(2:236|238)|242|374|246|250|(0)|253|(0)|256|(0)|267|(0)(0)|326|(0)|333|(7:335|337|339|(0)(0)|342|343|347)|348|386|350|130) */
        /* JADX WARN: Code restructure failed: missing block: B:240:0x048b, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:243:0x048f, code lost:
        
            if (r8 == 0) goto L244;
         */
        /* JADX WARN: Code restructure failed: missing block: B:244:0x0491, code lost:
        
            r32.textXOffset = r36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:245:0x0495, code lost:
        
            org.telegram.messenger.FileLog.m1136e(r0);
            r13 = 0.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:248:0x04a2, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:249:0x04a3, code lost:
        
            org.telegram.messenger.FileLog.m1136e(r0);
            r0 = 0.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:284:0x052e, code lost:
        
            r7 = 0.0f;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:104:0x01e4  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x01e6  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x01eb  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x01ed  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01ff  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x020b  */
        /* JADX WARN: Removed duplicated region for block: B:128:0x0237  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x025c  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x0355  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x03c9  */
        /* JADX WARN: Removed duplicated region for block: B:252:0x04b1  */
        /* JADX WARN: Removed duplicated region for block: B:255:0x04b6  */
        /* JADX WARN: Removed duplicated region for block: B:258:0x04d0  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x04f8  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x0538  */
        /* JADX WARN: Removed duplicated region for block: B:289:0x053f  */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0560  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x0582 A[PHI: r21
  0x0582: PHI (r21v8 boolean) = (r21v7 boolean), (r21v7 boolean), (r21v7 boolean), (r21v10 boolean) binds: [B:297:0x0571, B:298:0x0573, B:300:0x057b, B:301:0x057d] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:313:0x05d3  */
        /* JADX WARN: Removed duplicated region for block: B:328:0x0617  */
        /* JADX WARN: Removed duplicated region for block: B:341:0x064c  */
        /* JADX WARN: Removed duplicated region for block: B:344:0x0654  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x01c0  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x01d0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public TextLayoutBlocks(MessageObject messageObject, CharSequence charSequence, TextPaint textPaint, int i) {
            int i2;
            int iM1124dp;
            float f;
            float f2;
            float f3;
            CharSequence charSequence2;
            int i3;
            int iM1124dp2;
            boolean z;
            ArrayList arrayList;
            int i4;
            TextPaint textPaint2;
            int i5;
            int iM1124dp3;
            CharSequence charSequence3;
            boolean z2;
            ArrayList arrayList2;
            float f4;
            SpannableString spannableStringValueOf;
            int lineCount;
            int i6;
            int iCeil;
            StaticLayout staticLayout;
            int i7;
            int i8;
            Text text;
            int iM1124dp4;
            float lineWidth;
            int i9;
            float f5;
            float f6;
            boolean z3;
            int i10;
            boolean z4;
            int iM1124dp5;
            int i11;
            float lineLeft;
            SpannableString spannableString;
            TextPaint textPaint3;
            int i12;
            TLRPC.Message message;
            MessageObject messageObject2 = messageObject;
            CharSequence charSequence4 = charSequence;
            this.text = charSequence4;
            int i13 = 0;
            this.textWidth = 0;
            boolean zIsPeerNoForwards = (messageObject2 == null || (message = messageObject2.messageOwner) == null || !message.noforwards) ? false : true;
            if (messageObject2 != null && !zIsPeerNoForwards) {
                zIsPeerNoForwards = MessagesController.getInstance(messageObject2.currentAccount).isPeerNoForwards(messageObject2.getDialogId());
            }
            boolean z5 = zIsPeerNoForwards;
            boolean z6 = charSequence4 instanceof Spanned;
            this.hasCode = z6 && ((CodeHighlighting.Span[]) ((Spanned) charSequence4).getSpans(0, charSequence4.length(), CodeHighlighting.Span.class)).length > 0;
            this.hasQuote = z6 && ((QuoteSpan.QuoteStyleSpan[]) ((Spanned) charSequence4).getSpans(0, charSequence4.length(), QuoteSpan.QuoteStyleSpan.class)).length > 0;
            this.hasSingleQuote = false;
            this.hasSingleCode = false;
            if (z6) {
                Spanned spanned = (Spanned) charSequence4;
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
                    iM1124dp = AndroidUtilities.m1124dp(32.0f);
                } else if (this.hasSingleCode) {
                    iM1124dp = AndroidUtilities.m1124dp(15.0f);
                } else {
                    i2 = i;
                    StaticLayout staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(charSequence4, textPaint, i2, 1.0f, 0.0f, false);
                    if (messageObject2 == null && messageObject2.isRepostPreview) {
                        if (messageObject2.type != 0) {
                            i12 = messageObject2.hasValidGroupId() ? 7 : 12;
                        } else {
                            i12 = 22;
                        }
                        i12 = messageObject2.isWebpage() ? i12 - 8 : i12;
                        if (staticLayoutMakeStaticLayout.getLineCount() > i12) {
                            String string = LocaleController.getString(C2888R.string.ReadMore);
                            f = 32.0f;
                            float f7 = 15.0f;
                            f3 = 0.0f;
                            int iCeil2 = (int) Math.ceil(textPaint.measureText("… " + string) + AndroidUtilities.m1124dp(1.0f));
                            float fMax = 0.0f;
                            int i14 = 0;
                            while (i14 < i12) {
                                fMax = Math.max(fMax, staticLayoutMakeStaticLayout.getLineRight(i14));
                                i14++;
                                f7 = f7;
                            }
                            f2 = f7;
                            int i15 = i12 - 1;
                            int lineStart = staticLayoutMakeStaticLayout.getLineStart(i15);
                            int lineEnd = staticLayoutMakeStaticLayout.getLineEnd(i15) - 1;
                            while (lineEnd >= lineStart && staticLayoutMakeStaticLayout.getPrimaryHorizontal(lineEnd) >= fMax - iCeil2) {
                                lineEnd--;
                            }
                            while (lineEnd >= lineStart && !Character.isWhitespace(charSequence4.charAt(lineEnd))) {
                                lineEnd--;
                            }
                            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence4.subSequence(0, lineEnd)).append((CharSequence) "… ").append((CharSequence) string);
                            spannableStringBuilderAppend.setSpan(new CharacterStyle() { // from class: org.telegram.messenger.MessageObject.TextLayoutBlocks.1
                                @Override // android.text.style.CharacterStyle
                                public void updateDrawState(TextPaint textPaint4) {
                                    textPaint4.setColor(Theme.chat_msgTextPaint.linkColor);
                                }
                            }, spannableStringBuilderAppend.length() - string.length(), spannableStringBuilderAppend.length(), 33);
                            try {
                                staticLayoutMakeStaticLayout = MessageObject.makeStaticLayout(spannableStringBuilderAppend, textPaint, i2, 1.0f, 0.0f, false);
                                charSequence2 = spannableStringBuilderAppend;
                            } catch (Exception e) {
                                FileLog.m1136e(e);
                                return;
                            }
                        }
                    } else {
                        f = 32.0f;
                        f2 = 15.0f;
                        f3 = 0.0f;
                        charSequence2 = charSequence4;
                    }
                    if (!this.hasSingleQuote) {
                        iM1124dp2 = AndroidUtilities.m1124dp(f);
                    } else if (this.hasSingleCode) {
                        iM1124dp2 = AndroidUtilities.m1124dp(f2);
                    } else {
                        i3 = i2;
                        int lineCount2 = staticLayoutMakeStaticLayout.getLineCount();
                        z = Build.VERSION.SDK_INT >= 24;
                        int i16 = 10;
                        int iCeil3 = z ? 1 : (int) Math.ceil(lineCount2 / 10);
                        arrayList = new ArrayList();
                        if ((charSequence2 instanceof Spanned) && (this.hasQuote || this.hasCode)) {
                            MessageObject.cutIntoRanges(charSequence2, arrayList);
                        } else if (!z || iCeil3 == 1) {
                            arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                        } else {
                            int i17 = 0;
                            int i18 = 0;
                            while (i17 < iCeil3) {
                                int iMin = Math.min(i16, lineCount2 - i18);
                                int lineStart2 = staticLayoutMakeStaticLayout.getLineStart(i18);
                                int i19 = iMin + i18;
                                int lineEnd2 = staticLayoutMakeStaticLayout.getLineEnd(i19 - 1);
                                if (lineEnd2 >= lineStart2) {
                                    arrayList.add(new TextRange(lineStart2, lineEnd2));
                                    i18 = i19;
                                }
                                i17++;
                                i16 = 10;
                            }
                        }
                        int size = arrayList.size();
                        this.hasCodeAtTop = false;
                        this.hasCodeAtBottom = false;
                        this.hasQuoteAtBottom = false;
                        this.hasSingleQuote = false;
                        int i20 = i2;
                        i4 = 0;
                        StaticLayout staticLayoutMakeStaticLayout2 = staticLayoutMakeStaticLayout;
                        CharSequence charSequence5 = charSequence2;
                        while (i4 < arrayList.size()) {
                            TextLayoutBlock textLayoutBlock = new TextLayoutBlock();
                            TextRange textRange = (TextRange) arrayList.get(i4);
                            textLayoutBlock.code = textRange.code;
                            textLayoutBlock.quote = textRange.quote;
                            boolean z7 = textRange.collapse;
                            textLayoutBlock.quoteCollapse = z7;
                            if (z7) {
                                textLayoutBlock.messageObject = messageObject2;
                            }
                            textLayoutBlock.index = i4;
                            textLayoutBlock.start = textRange.start;
                            textLayoutBlock.first = i4 == 0 ? 1 : i13;
                            boolean z8 = i4 == arrayList.size() + (-1) ? 1 : i13;
                            textLayoutBlock.last = z8;
                            boolean z9 = textLayoutBlock.first;
                            if (z9) {
                                this.hasCodeAtTop = textLayoutBlock.code;
                            }
                            if (z8 != 0) {
                                this.hasQuoteAtBottom = textLayoutBlock.quote;
                                this.hasCodeAtBottom = textLayoutBlock.code;
                            }
                            this.hasSingleQuote = (z9 && z8 != 0 && textLayoutBlock.quote) ? 1 : i13;
                            if (textLayoutBlock.quote) {
                                if (z9 && z8 != 0) {
                                    int iM1124dp6 = AndroidUtilities.m1124dp(6.0f);
                                    textLayoutBlock.padBottom = iM1124dp6;
                                    textLayoutBlock.padTop = iM1124dp6;
                                } else {
                                    textLayoutBlock.padTop = AndroidUtilities.m1124dp(z9 ? 8.0f : 6.0f);
                                    textLayoutBlock.padBottom = AndroidUtilities.m1124dp(7.0f);
                                }
                            } else if (textLayoutBlock.code) {
                                textLayoutBlock.layoutCode(textRange.language, textRange.end - textRange.start, z5);
                                textLayoutBlock.padTop = AndroidUtilities.m1124dp(4.0f) + textLayoutBlock.languageHeight + (textLayoutBlock.first ? i13 : AndroidUtilities.m1124dp(5.0f));
                                textLayoutBlock.padBottom = AndroidUtilities.m1124dp(4.0f) + (textLayoutBlock.last ? i13 : AndroidUtilities.m1124dp(7.0f)) + (textLayoutBlock.hasCodeCopyButton ? AndroidUtilities.m1124dp(38.0f) : i13);
                            }
                            boolean z10 = textLayoutBlock.code;
                            if (z10) {
                                int i21 = textRange.end - textRange.start;
                                if (i21 > 220) {
                                    textPaint3 = Theme.chat_msgTextCode3Paint;
                                } else if (i21 > 80) {
                                    textPaint3 = Theme.chat_msgTextCode2Paint;
                                } else {
                                    textPaint3 = Theme.chat_msgTextCodePaint;
                                }
                                textPaint2 = textPaint3;
                            } else {
                                textPaint2 = textPaint;
                            }
                            if (textLayoutBlock.quote) {
                                iM1124dp3 = AndroidUtilities.m1124dp(f);
                            } else if (z10) {
                                iM1124dp3 = AndroidUtilities.m1124dp(f2);
                            } else {
                                i5 = i3;
                                if (size != 1) {
                                    if (textLayoutBlock.code && !textLayoutBlock.quote && (staticLayoutMakeStaticLayout2.getText() instanceof Spannable)) {
                                        if (!TextUtils.isEmpty(textRange.language)) {
                                            spannableString = CodeHighlighting.getHighlighted(charSequence5.subSequence(textRange.start, textRange.end).toString(), textRange.language);
                                        } else {
                                            spannableString = new SpannableString(charSequence5.subSequence(textRange.start, textRange.end));
                                        }
                                        SpannableString spannableString2 = spannableString;
                                        textLayoutBlock.originalWidth = i5;
                                        staticLayoutMakeStaticLayout2 = MessageObject.makeStaticLayout(spannableString2, textPaint2, i5, 1.0f, 0.0f, false);
                                        i20 = i5;
                                    } else {
                                        textLayoutBlock.originalWidth = i20;
                                    }
                                    textLayoutBlock.textLayout = staticLayoutMakeStaticLayout2;
                                    textLayoutBlock.charactersOffset = i13;
                                    textLayoutBlock.charactersEnd = staticLayoutMakeStaticLayout2.getText().length();
                                    textLayoutBlock.height = staticLayoutMakeStaticLayout2.getHeight();
                                    textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                } else {
                                    int i22 = textRange.start;
                                    int i23 = textRange.end;
                                    if (i23 < i22) {
                                        charSequence3 = charSequence5;
                                        z2 = z5;
                                        arrayList2 = arrayList;
                                        f4 = f3;
                                    } else {
                                        textLayoutBlock.charactersOffset = i22;
                                        textLayoutBlock.charactersEnd = i23;
                                        try {
                                            if (textLayoutBlock.code && !textLayoutBlock.quote) {
                                                spannableStringValueOf = CodeHighlighting.getHighlighted(charSequence5.subSequence(i22, i23).toString(), textRange.language);
                                            } else {
                                                spannableStringValueOf = SpannableString.valueOf(charSequence5.subSequence(i22, i23));
                                            }
                                            SpannableString spannableString3 = spannableStringValueOf;
                                            textLayoutBlock.originalWidth = i5;
                                            StaticLayout staticLayoutMakeStaticLayout3 = MessageObject.makeStaticLayout(spannableString3, textPaint2, i5, 1.0f, 0.0f, false);
                                            textLayoutBlock.textLayout = staticLayoutMakeStaticLayout3;
                                            textLayoutBlock.height = staticLayoutMakeStaticLayout3.getHeight();
                                            textLayoutBlock.collapsedHeight = (int) Math.min(textPaint.getTextSize() * 1.4f * 3.0f, textLayoutBlock.height);
                                        } catch (Exception e2) {
                                            charSequence3 = charSequence5;
                                            z2 = z5;
                                            arrayList2 = arrayList;
                                            f4 = f3;
                                            FileLog.m1136e(e2);
                                        }
                                    }
                                    i4++;
                                    arrayList = arrayList2;
                                    f3 = f4;
                                    charSequence5 = charSequence3;
                                    z5 = z2;
                                    i13 = 0;
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
                                float f8 = lineLeft;
                                float lineWidth2 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                                int iCeil4 = (int) Math.ceil(lineWidth2);
                                iCeil4 = iCeil4 > i3 + 80 ? i3 : iCeil4;
                                i6 = size - 1;
                                if (i4 == i6) {
                                    this.lastLineWidth = iCeil4;
                                }
                                float f9 = iCeil4;
                                charSequence3 = charSequence5;
                                z2 = z5;
                                arrayList2 = arrayList;
                                iCeil = (int) Math.ceil(f9 + Math.max(0.0f, f8));
                                if (textLayoutBlock.quote) {
                                    textLayoutBlock.maxRight = 0.0f;
                                    int i24 = 0;
                                    while (i24 < lineCount) {
                                        try {
                                            i11 = iCeil4;
                                            try {
                                                textLayoutBlock.maxRight = Math.max(textLayoutBlock.maxRight, textLayoutBlock.textLayout.getLineRight(i24));
                                            } catch (Exception unused) {
                                                textLayoutBlock.maxRight = this.textWidth;
                                            }
                                        } catch (Exception unused2) {
                                            i11 = iCeil4;
                                        }
                                        i24++;
                                        iCeil4 = i11;
                                    }
                                }
                                int i25 = iCeil4;
                                if (lineCount <= 1) {
                                    staticLayout = staticLayoutMakeStaticLayout2;
                                    int iMax = i25;
                                    boolean z11 = false;
                                    float f10 = 0.0f;
                                    float fMax2 = 0.0f;
                                    int i26 = 0;
                                    int iMax2 = iCeil;
                                    while (i26 < lineCount) {
                                        int i27 = i20;
                                        try {
                                            lineWidth = textLayoutBlock.textLayout.getLineWidth(i26);
                                        } catch (Exception unused3) {
                                            lineWidth = 0.0f;
                                        }
                                        if (textLayoutBlock.quote) {
                                            iM1124dp5 = AndroidUtilities.m1124dp(f);
                                        } else {
                                            iM1124dp5 = textLayoutBlock.code ? AndroidUtilities.m1124dp(f2) : iM1124dp5;
                                            float lineLeft2 = textLayoutBlock.textLayout.getLineLeft(i26);
                                            float f11 = lineLeft2;
                                            if (lineWidth <= i3 + 20) {
                                                f6 = i3;
                                                i9 = lineCount;
                                                f5 = 0.0f;
                                            } else {
                                                i9 = lineCount;
                                                f5 = f11;
                                                f6 = lineWidth;
                                            }
                                            z3 = z11;
                                            if (f5 <= 0.0f || textLayoutBlock.textLayout.getParagraphDirection(i26) == -1) {
                                                this.textXOffset = Math.min(this.textXOffset, f5);
                                                i10 = 1;
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                                this.hasRtl = true;
                                            } else {
                                                textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                                i10 = 1;
                                            }
                                            if (z3 && f5 == 0.0f) {
                                                try {
                                                    if (textLayoutBlock.textLayout.getParagraphDirection(i26) == i10) {
                                                        z3 = true;
                                                    }
                                                    z4 = z3;
                                                } catch (Exception unused4) {
                                                    z4 = true;
                                                }
                                            } else {
                                                z4 = z3;
                                            }
                                            float fMax3 = Math.max(f10, f6);
                                            float f12 = f5 + f6;
                                            fMax2 = Math.max(fMax2, f12);
                                            iMax = Math.max(iMax, (int) Math.ceil(f6));
                                            iMax2 = Math.max(iMax2, (int) Math.ceil(f12));
                                            i26++;
                                            z11 = z4;
                                            f10 = fMax3;
                                            i20 = i27;
                                            lineCount = i9;
                                        }
                                        lineWidth += iM1124dp5;
                                        float lineLeft22 = textLayoutBlock.textLayout.getLineLeft(i26);
                                        float f112 = lineLeft22;
                                        if (lineWidth <= i3 + 20) {
                                        }
                                        z3 = z11;
                                        if (f5 <= 0.0f) {
                                            this.textXOffset = Math.min(this.textXOffset, f5);
                                            i10 = 1;
                                            textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                            this.hasRtl = true;
                                        }
                                        if (z3) {
                                            z4 = z3;
                                        }
                                        float fMax32 = Math.max(f10, f6);
                                        float f122 = f5 + f6;
                                        fMax2 = Math.max(fMax2, f122);
                                        iMax = Math.max(iMax, (int) Math.ceil(f6));
                                        iMax2 = Math.max(iMax2, (int) Math.ceil(f122));
                                        i26++;
                                        z11 = z4;
                                        f10 = fMax32;
                                        i20 = i27;
                                        lineCount = i9;
                                    }
                                    i7 = i20;
                                    if (!z11) {
                                        if (i4 == i6) {
                                            this.lastLineWidth = iMax;
                                        }
                                        fMax2 = f10;
                                    } else if (i4 == i6) {
                                        this.lastLineWidth = iCeil;
                                    }
                                    this.textWidth = Math.max(this.textWidth, (int) Math.ceil(fMax2));
                                    iCeil = iMax2;
                                    f4 = 0.0f;
                                } else {
                                    staticLayout = staticLayoutMakeStaticLayout2;
                                    i7 = i20;
                                    f4 = 0.0f;
                                    if (f8 > 0.0f) {
                                        float fMin = Math.min(this.textXOffset, f8);
                                        this.textXOffset = fMin;
                                        i8 = fMin == 0.0f ? (int) (f9 + f8) : i25;
                                        this.hasRtl = size != 1;
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 1);
                                    } else {
                                        textLayoutBlock.directionFlags = (byte) (textLayoutBlock.directionFlags | 2);
                                        i8 = i25;
                                    }
                                    this.textWidth = Math.max(this.textWidth, Math.min(i3, i8));
                                }
                                text = textLayoutBlock.languageLayout;
                                if (text != null) {
                                    this.textWidth = (int) Math.max(this.textWidth, Math.min(text.getCurrentWidth() + AndroidUtilities.m1124dp(f2), textLayoutBlock.textLayout == null ? f4 : r5.getWidth()));
                                }
                                messageObject2 = messageObject;
                                if (messageObject != null && !messageObject2.isSpoilersRevealed && !messageObject2.spoiledLoginCode) {
                                    if (!textLayoutBlock.quote) {
                                        iM1124dp4 = AndroidUtilities.m1124dp(f);
                                    } else {
                                        iM1124dp4 = textLayoutBlock.code ? AndroidUtilities.m1124dp(f2) : iM1124dp4;
                                        SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                                    }
                                    iCeil -= iM1124dp4;
                                    SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                                }
                                staticLayoutMakeStaticLayout2 = staticLayout;
                                i20 = i7;
                                i4++;
                                arrayList = arrayList2;
                                f3 = f4;
                                charSequence5 = charSequence3;
                                z5 = z2;
                                i13 = 0;
                            }
                            i5 = i3 - iM1124dp3;
                            if (size != 1) {
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
                            float f82 = lineLeft;
                            float lineWidth22 = textLayoutBlock.textLayout.getLineWidth(lineCount - 1);
                            int iCeil42 = (int) Math.ceil(lineWidth22);
                            if (iCeil42 > i3 + 80) {
                            }
                            i6 = size - 1;
                            if (i4 == i6) {
                            }
                            float f92 = iCeil42;
                            charSequence3 = charSequence5;
                            z2 = z5;
                            arrayList2 = arrayList;
                            iCeil = (int) Math.ceil(f92 + Math.max(0.0f, f82));
                            if (textLayoutBlock.quote) {
                            }
                            int i252 = iCeil42;
                            if (lineCount <= 1) {
                            }
                            text = textLayoutBlock.languageLayout;
                            if (text != null) {
                            }
                            messageObject2 = messageObject;
                            if (messageObject != null) {
                                if (!textLayoutBlock.quote) {
                                }
                                iCeil -= iM1124dp4;
                                SpoilerEffect.addSpoilers(null, textLayoutBlock.textLayout, -1, iCeil, null, textLayoutBlock.spoilers);
                            }
                            staticLayoutMakeStaticLayout2 = staticLayout;
                            i20 = i7;
                            i4++;
                            arrayList = arrayList2;
                            f3 = f4;
                            charSequence5 = charSequence3;
                            z5 = z2;
                            i13 = 0;
                        }
                        return;
                    }
                    i3 = iM1124dp2 + i2;
                    int lineCount22 = staticLayoutMakeStaticLayout.getLineCount();
                    if (Build.VERSION.SDK_INT >= 24) {
                    }
                    int i162 = 10;
                    if (z) {
                    }
                    arrayList = new ArrayList();
                    if (charSequence2 instanceof Spanned) {
                        if (z) {
                            arrayList.add(new TextRange(0, staticLayoutMakeStaticLayout.getText().length()));
                        }
                    }
                    int size2 = arrayList.size();
                    this.hasCodeAtTop = false;
                    this.hasCodeAtBottom = false;
                    this.hasQuoteAtBottom = false;
                    this.hasSingleQuote = false;
                    int i202 = i2;
                    i4 = 0;
                    StaticLayout staticLayoutMakeStaticLayout22 = staticLayoutMakeStaticLayout;
                    CharSequence charSequence52 = charSequence2;
                    while (i4 < arrayList.size()) {
                    }
                    return;
                }
                StaticLayout staticLayoutMakeStaticLayout4 = MessageObject.makeStaticLayout(charSequence4, textPaint, i2, 1.0f, 0.0f, false);
                if (messageObject2 == null) {
                    f = 32.0f;
                    f2 = 15.0f;
                    f3 = 0.0f;
                    charSequence2 = charSequence4;
                }
                if (!this.hasSingleQuote) {
                }
                i3 = iM1124dp2 + i2;
                int lineCount222 = staticLayoutMakeStaticLayout4.getLineCount();
                if (Build.VERSION.SDK_INT >= 24) {
                }
                int i1622 = 10;
                if (z) {
                }
                arrayList = new ArrayList();
                if (charSequence2 instanceof Spanned) {
                }
                int size22 = arrayList.size();
                this.hasCodeAtTop = false;
                this.hasCodeAtBottom = false;
                this.hasQuoteAtBottom = false;
                this.hasSingleQuote = false;
                int i2022 = i2;
                i4 = 0;
                StaticLayout staticLayoutMakeStaticLayout222 = staticLayoutMakeStaticLayout4;
                CharSequence charSequence522 = charSequence2;
                while (i4 < arrayList.size()) {
                }
                return;
            } catch (Exception e3) {
                FileLog.m1136e(e3);
                return;
            }
            i2 = i - iM1124dp;
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

    public boolean needDrawAvatar() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Chat chat;
        if (this.type == 27) {
            return false;
        }
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || this.searchType != 0) {
            return true;
        }
        return !isSponsored() && (isFromUser() || isFromGroup() || ((getDialogId() > 0L ? 1 : (getDialogId() == 0L ? 0 : -1)) >= 0 ? (getDialogId() > UserObject.VERIFY ? 1 : (getDialogId() == UserObject.VERIFY ? 0 : -1)) == 0 : !((chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) == null || !chat.signature_profiles)) || this.eventId != 0 || !((messageFwdHeader = this.messageOwner.fwd_from) == null || messageFwdHeader.saved_from_peer == null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needDrawAvatarInternal() {
        TLRPC.MessageFwdHeader messageFwdHeader;
        TLRPC.Chat chat;
        if (this.isRepostPreview || this.isSaved || this.forceAvatar || this.customAvatarDrawable != null || this.searchType != 0) {
            return true;
        }
        return !isSponsored() && ((isFromChat() && isFromUser()) || isFromGroup() || ((getDialogId() > 0L ? 1 : (getDialogId() == 0L ? 0 : -1)) >= 0 ? (getDialogId() > UserObject.VERIFY ? 1 : (getDialogId() == UserObject.VERIFY ? 0 : -1)) == 0 : !((chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-getDialogId()))) == null || !chat.signature_profiles)) || this.eventId != 0 || !((messageFwdHeader = this.messageOwner.fwd_from) == null || messageFwdHeader.saved_from_peer == null));
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
            return -((TLRPC.Chat) tLObject).f1660id;
        }
        if (tLObject instanceof TLRPC.User) {
            return ((TLRPC.User) tLObject).f1825id;
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
                return chat.f1660id == peer.channel_id;
            }
            if (!ChatObject.isChannel(chat) && (peer instanceof TLRPC.TL_peerChat) && chat.f1660id == peer.chat_id) {
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
        return this.messageOwner.f1686id;
    }

    public int getRealId() {
        TLRPC.Message message = this.messageOwner;
        int i = message.realId;
        return i != 0 ? i : message.f1686id;
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
                } else if (message.from_id == null || isOut(message)) {
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
        TLRPC.Message message = this.messageOwner;
        if (message instanceof TLRPC.TL_messageService) {
            return message.reactions_are_possible;
        }
        return true;
    }

    public boolean isSending() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 1 && message.f1686id < 0;
    }

    public boolean isEditing() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 3 && message.f1686id > 0;
    }

    public boolean isEditingMedia() {
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto ? getMedia(this.messageOwner).photo.f1692id == 0 : (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) && getMedia(this.messageOwner).document.dc_id == 0;
    }

    public boolean isSendError() {
        TLRPC.Message message = this.messageOwner;
        if (message.send_state == 2 && message.f1686id < 0) {
            return true;
        }
        if (!this.scheduled || message.f1686id <= 0) {
            return false;
        }
        return message.date < ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - (this.messageOwner.video_processing_pending ? 300 : 60);
    }

    public boolean isSent() {
        TLRPC.Message message = this.messageOwner;
        return message.send_state == 0 || message.f1686id > 0;
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
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_viewonce);
                coloredImageSpan.setTranslateX(-AndroidUtilities.m1124dp(3.0f));
                coloredImageSpan.setWidth(AndroidUtilities.m1124dp(13.0f));
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
            ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2888R.drawable.play_mini_video);
            coloredImageSpan2.setTranslateX(AndroidUtilities.m1124dp(1.0f));
            coloredImageSpan2.setWidth(AndroidUtilities.m1124dp(13.0f));
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
                i = documentAttribute.f1671w;
                i2 = documentAttribute.f1670h;
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

    public static TLRPC.Photo getPhoto(TLRPC.Message message) {
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return getMedia(message).webpage.photo;
        }
        if (getMedia(message) != null) {
            return getMedia(message).photo;
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
        if (getMedia(message) instanceof TLRPC.TL_messageMediaWebPage) {
            return (getMedia(message).webpage.photo instanceof TLRPC.TL_photo) && !(getMedia(message).webpage.document instanceof TLRPC.TL_document);
        }
        if (message != null && (messageAction = message.action) != null && (photo = messageAction.photo) != null) {
            return photo instanceof TLRPC.TL_photo;
        }
        return getMedia(message) instanceof TLRPC.TL_messageMediaPhoto;
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
                                TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) stickerSet.packs.get(i2);
                                if (tL_stickerPack.documents.contains(Long.valueOf(document.f1668id))) {
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
                            TLRPC.TL_stickerPack tL_stickerPack = (TLRPC.TL_stickerPack) stickerSet.packs.get(i2);
                            if (tL_stickerPack.documents.contains(Long.valueOf(document.f1668id)) && Emoji.getEmojiDrawable(tL_stickerPack.emoticon) != null) {
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
            ArrayList arrayList = tL_messages_stickerSet.documents;
            if (arrayList != null && !arrayList.isEmpty()) {
                return isTextColorEmoji((TLRPC.Document) tL_messages_stickerSet.documents.get(0));
            }
        }
        return false;
    }

    public static boolean isPremiumEmojiPack(TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.StickerSet stickerSet;
        if ((tL_messages_stickerSet == null || (stickerSet = tL_messages_stickerSet.set) == null || stickerSet.emojis) && tL_messages_stickerSet != null && tL_messages_stickerSet.documents != null) {
            for (int i = 0; i < tL_messages_stickerSet.documents.size(); i++) {
                if (!isFreeEmoji((TLRPC.Document) tL_messages_stickerSet.documents.get(i))) {
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
        ArrayList arrayList = stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered ? ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents : stickerSetCovered.covers;
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (!isFreeEmoji((TLRPC.Document) arrayList.get(i))) {
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
                return inputStickerSet.f1685id;
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

    /* JADX WARN: Removed duplicated region for block: B:138:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getApproximateHeight(boolean z) {
        int minTabletSide;
        int iM1124dp;
        float f;
        float f2;
        int iM1124dp2;
        int iMin;
        TLRPC.PhotoSize closestPhotoSizeWithSize;
        int iMin2;
        int i = this.type;
        int iM1124dp3 = 0;
        if (i == 0) {
            int iTextHeightCached = z ? textHeightCached() : textHeight();
            if ((getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaWebPage) && (getMedia(this.messageOwner).webpage instanceof TLRPC.TL_webPage)) {
                iM1124dp3 = AndroidUtilities.m1124dp(100.0f);
            }
            int i2 = iTextHeightCached + iM1124dp3;
            return isReply() ? i2 + AndroidUtilities.m1124dp(42.0f) : i2;
        }
        if (i == 20) {
            return AndroidUtilities.getPhotoSize();
        }
        if (i == 2) {
            return AndroidUtilities.m1124dp(72.0f);
        }
        if (i == 12) {
            return AndroidUtilities.m1124dp(71.0f);
        }
        if (i == 9) {
            return AndroidUtilities.m1124dp(100.0f);
        }
        if (i == 4) {
            return AndroidUtilities.m1124dp(114.0f);
        }
        if (i == 14) {
            return AndroidUtilities.m1124dp(82.0f);
        }
        if (i == 10 || i == 35 || i == 33 || i == 34) {
            return AndroidUtilities.m1124dp(30.0f);
        }
        if (i == 11 || i == 18 || i == 31 || i == 30 || i == 25 || i == 21) {
            return AndroidUtilities.m1124dp(50.0f);
        }
        if (i == 32) {
            return AndroidUtilities.m1124dp(234.0f);
        }
        if (i == 5) {
            return AndroidUtilities.roundMessageSize;
        }
        if (i == 19) {
            return (z ? textHeightCached() : textHeight()) + AndroidUtilities.m1124dp(30.0f);
        }
        if (i == 13 || i == 15) {
            float f3 = AndroidUtilities.displaySize.y * 0.4f;
            if (AndroidUtilities.isTablet()) {
                minTabletSide = AndroidUtilities.getMinTabletSide();
            } else {
                minTabletSide = AndroidUtilities.displaySize.x;
            }
            float f4 = minTabletSide * 0.5f;
            TLRPC.Document document = getDocument();
            if (document != null) {
                int size = document.attributes.size();
                for (int i3 = 0; i3 < size; i3++) {
                    TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i3);
                    if (documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) {
                        iM1124dp3 = documentAttribute.f1671w;
                        iM1124dp = documentAttribute.f1670h;
                        break;
                    }
                }
                iM1124dp = 0;
                if (iM1124dp3 == 0) {
                    iM1124dp = (int) f3;
                    iM1124dp3 = AndroidUtilities.m1124dp(100.0f) + iM1124dp;
                }
                f = iM1124dp;
                if (f > f3) {
                    iM1124dp3 = (int) (iM1124dp3 * (f3 / f));
                    iM1124dp = (int) f3;
                }
                f2 = iM1124dp3;
                if (f2 > f4) {
                    iM1124dp = (int) (iM1124dp * (f4 / f2));
                }
                iM1124dp2 = AndroidUtilities.m1124dp(14.0f);
            } else {
                iM1124dp = 0;
                if (iM1124dp3 == 0) {
                }
                f = iM1124dp;
                if (f > f3) {
                }
                f2 = iM1124dp3;
                if (f2 > f4) {
                }
                iM1124dp2 = AndroidUtilities.m1124dp(14.0f);
            }
        } else {
            if (AndroidUtilities.isTablet()) {
                iMin = AndroidUtilities.getMinTabletSide();
            } else {
                Point point = AndroidUtilities.displaySize;
                iMin = Math.min(point.x, point.y);
            }
            int photoSize = (int) (iMin * 0.7f);
            iM1124dp = AndroidUtilities.m1124dp(100.0f) + photoSize;
            if (photoSize > AndroidUtilities.getPhotoSize()) {
                photoSize = AndroidUtilities.getPhotoSize();
            }
            if (iM1124dp > AndroidUtilities.getPhotoSize()) {
                iM1124dp = AndroidUtilities.getPhotoSize();
            }
            if (z) {
                ArrayList<TLRPC.PhotoSize> arrayList = this.photoThumbs;
                closestPhotoSizeWithSize = (arrayList == null || arrayList.isEmpty()) ? null : this.photoThumbs.get(0);
            } else {
                closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize());
            }
            if (closestPhotoSizeWithSize != null) {
                int iM1124dp4 = (int) (closestPhotoSizeWithSize.f1693h / (closestPhotoSizeWithSize.f1694w / photoSize));
                if (iM1124dp4 == 0) {
                    iM1124dp4 = AndroidUtilities.m1124dp(100.0f);
                }
                if (iM1124dp4 <= iM1124dp) {
                    iM1124dp = iM1124dp4 < AndroidUtilities.m1124dp(120.0f) ? AndroidUtilities.m1124dp(120.0f) : iM1124dp4;
                }
                if (!z && needDrawBluredPreview()) {
                    if (AndroidUtilities.isTablet()) {
                        iMin2 = AndroidUtilities.getMinTabletSide();
                    } else {
                        Point point2 = AndroidUtilities.displaySize;
                        iMin2 = Math.min(point2.x, point2.y);
                    }
                    iM1124dp = (int) (iMin2 * 0.5f);
                }
            }
            iM1124dp2 = AndroidUtilities.m1124dp(14.0f);
        }
        return iM1124dp + iM1124dp2;
    }

    private int getParentWidth() {
        int i;
        return (!this.preview || (i = this.parentWidth) <= 0) ? AndroidUtilities.displaySize.x : i;
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
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
            return getMedia(this.messageOwner).photo != null && getMedia(this.messageOwner).photo.has_stickers;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument) {
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
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) getMedia(this.messageOwner).webpage.attributes.get(i);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeTheme) {
                    TLRPC.TL_webPageAttributeTheme tL_webPageAttributeTheme = (TLRPC.TL_webPageAttributeTheme) webPageAttribute;
                    ArrayList arrayList = tL_webPageAttributeTheme.documents;
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        if ("application/x-tgtheme-android".equals(((TLRPC.Document) arrayList.get(i2)).mime_type)) {
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
                    return (TextUtils.isEmpty(documentFileName) && z) ? LocaleController.getString(C2888R.string.AudioUnknownTitle) : documentFileName;
                }
                if ((documentAttribute instanceof TLRPC.TL_documentAttributeVideo) && documentAttribute.round_message) {
                    if (isQuickReply()) {
                        return LocaleController.formatString(C2888R.string.BusinessInReplies, "/" + getQuickReplyDisplayName());
                    }
                    return LocaleController.formatDateAudio(this.messageOwner.date, true);
                }
            }
            String documentFileName2 = FileLoader.getDocumentFileName(document);
            if (!TextUtils.isEmpty(documentFileName2)) {
                return documentFileName2;
            }
        }
        return LocaleController.getString(C2888R.string.AudioUnknownTitle);
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
        TLRPC.Document document = getDocument();
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0153 A[SYNTHETIC] */
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
                        return (TextUtils.isEmpty(str2) && z) ? LocaleController.getString(C2888R.string.AudioUnknownArtist) : str2;
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
                        return LocaleController.getString(C2888R.string.FromYou);
                    }
                }
                z2 = true;
                if (!z2) {
                }
            }
        }
        return LocaleController.getString(C2888R.string.AudioUnknownArtist);
    }

    public TLRPC.InputStickerSet getInputStickerSet() {
        return getInputStickerSet(this.messageOwner);
    }

    public boolean isForwarded() {
        return isForwardedMessage(this.messageOwner);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0099  */
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
        if (this.isSaved) {
            TLRPC.Message message = this.messageOwner;
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
        if (((this.messageOwner.flags & 4) != 0 || (getMedia(this) instanceof TLRPC.TL_messageMediaPaidMedia)) && (messageFwdHeader = this.messageOwner.fwd_from) != null && !messageFwdHeader.imported) {
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
        return canEditMessage(this.currentAccount, this.messageOwner, chat, this.scheduled);
    }

    public boolean canEditMessageScheduleTime(TLRPC.Chat chat) {
        return canEditMessageScheduleTime(this.currentAccount, this.messageOwner, chat);
    }

    public boolean canForwardMessage() {
        int i;
        return (isQuickReply() || (i = this.type) == 30 || i == 31 || i == 32 || i == 33 || i == 35 || (this.messageOwner instanceof TLRPC.TL_message_secret) || needDrawBluredPreview() || isLiveLocation() || this.type == 16 || isSponsored() || this.messageOwner.noforwards) ? false : true;
    }

    public boolean canEditMedia() {
        if (isSecretMedia()) {
            return false;
        }
        if (getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaPhoto) {
            return true;
        }
        return getMedia(this.messageOwner) instanceof TLRPC.TL_messageMediaDocument ? (isVoice() || isSticker() || isAnimatedSticker() || isRoundVideo()) ? false : true : isMediaEmpty();
    }

    public boolean canEditMessageAnytime(TLRPC.Chat chat) {
        return canEditMessageAnytime(this.currentAccount, this.messageOwner, chat);
    }

    public static boolean canEditMessageAnytime(int i, TLRPC.Message message, TLRPC.Chat chat) {
        TLRPC.MessageAction messageAction;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        if (message != null && message.peer_id != null && ((getMedia(message) == null || (!isRoundVideoDocument(getMedia(message).document) && !isStickerDocument(getMedia(message).document) && !isAnimatedStickerDocument(getMedia(message).document, true))) && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.f1686id >= 0))) {
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

    /* JADX WARN: Removed duplicated region for block: B:117:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean canEditMessage(int i, TLRPC.Message message, TLRPC.Chat chat, boolean z) {
        TLRPC.MessageAction messageAction;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights3;
        if (z && message.date < ConnectionsManager.getInstance(i).getCurrentTime() - 60) {
            return false;
        }
        if (chat != null && ((chat.left || chat.kicked) && (!chat.megagroup || !chat.has_link))) {
            return false;
        }
        TLRPC.MessageMedia media = getMedia(message);
        if (message != null && message.peer_id != null && ((media == null || (!isRoundVideoDocument(media.document) && !isStickerDocument(media.document) && !isAnimatedStickerDocument(media.document, true) && !isLocationMessage(message))) && (((messageAction = message.action) == null || (messageAction instanceof TLRPC.TL_messageActionEmpty)) && !isForwardedMessage(message) && message.via_bot_id == 0 && message.f1686id >= 0 && !message.paid_suggested_post_stars && !message.paid_suggested_post_ton))) {
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
            if (media != null && !(media instanceof TLRPC.TL_messageMediaEmpty) && !(media instanceof TLRPC.TL_messageMediaPhoto) && !(media instanceof TLRPC.TL_messageMediaDocument) && !(media instanceof TLRPC.TL_messageMediaWebPage) && !(media instanceof TLRPC.TL_messageMediaPaidMedia) && !(media instanceof TLRPC.TL_messageMediaToDo)) {
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
                        if ((media instanceof TLRPC.TL_messageMediaPhoto) || (((media instanceof TLRPC.TL_messageMediaDocument) && !isStickerMessage(message) && !isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            if (((chat != null && chat.megagroup && message.out) || (chat != null && !chat.megagroup && ((chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && (tL_chatAdminRights.edit_messages || (message.out && tL_chatAdminRights.post_messages)))) && message.post))) && ((media instanceof TLRPC.TL_messageMediaPhoto) || (((media instanceof TLRPC.TL_messageMediaDocument) && !isStickerMessage(message) && !isAnimatedStickerMessage(message)) || (media instanceof TLRPC.TL_messageMediaEmpty) || (media instanceof TLRPC.TL_messageMediaWebPage) || (media instanceof TLRPC.TL_messageMediaPaidMedia) || (media instanceof TLRPC.TL_messageMediaToDo) || media == null))) {
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
        return this.eventId == 0 && this.sponsoredId == null && canDeleteMessage(this.currentAccount, z, this.messageOwner, chat);
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
        if (message.f1686id < 0) {
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
        return (z2 && (message instanceof TLRPC.TL_messageService)) ? message.f1686id != 1 && ChatObject.canUserDoAdminAction(chat, 13) : z || (message.f1686id != 1 && (chat.creator || (((tL_chatAdminRights = chat.admin_rights) != null && (tL_chatAdminRights.delete_messages || (z2 && (chat.megagroup || tL_chatAdminRights.post_messages)))) || (chat.megagroup && z2))));
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
                if (isWallpaper()) {
                    this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach(document, null, true, z).exists();
                } else {
                    this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach(document, null, false, z).exists();
                }
            } else {
                int i3 = this.type;
                if (i3 == 0) {
                    TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(this.photoThumbs, AndroidUtilities.getPhotoSize());
                    if (closestPhotoSizeWithSize == null) {
                        return;
                    } else {
                        this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, null, true, z).exists();
                    }
                } else if (i3 == 11) {
                    TLRPC.Photo photo = this.messageOwner.action.photo;
                    if (photo == null || photo.video_sizes.isEmpty()) {
                        return;
                    } else {
                        this.mediaExists = FileLoader.getInstance(this.currentAccount).getPathToAttach((TLObject) photo.video_sizes.get(0), null, true, z).exists();
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
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_quote);
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
                float f = 120;
                int iMax = Math.max(0, iIndexOf - ((int) (0.1f * f)));
                charSequenceReplaceMultipleCharSequence = charSequenceReplaceMultipleCharSequence.subSequence(iMax, Math.min(length3, (iIndexOf - iMax) + iIndexOf + ((int) (f * 0.9f))));
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
        return (isEditing() || isSponsored() || !isSent() || isExpiredStory() || !canSetReaction()) ? false : true;
    }

    public boolean isPaidReactionChosen() {
        if (this.messageOwner.reactions == null) {
            return false;
        }
        for (int i = 0; i < this.messageOwner.reactions.results.size(); i++) {
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
                return ((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).chosen;
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
        ArrayList arrayList;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) obj;
            if (messageReactor != null && messageReactor.f1688my) {
                if (messageReactor.anonymous) {
                    return Long.valueOf(UserObject.ANONYMOUS);
                }
                TLRPC.Peer peer = messageReactor.peer_id;
                if (peer != null) {
                    return Long.valueOf(DialogObject.getPeerDialogId(peer));
                }
            }
        }
        return null;
    }

    public static Long getMyPaidReactionPeer(TLRPC.MessageReactions messageReactions) {
        ArrayList arrayList;
        if (messageReactions == null || (arrayList = messageReactions.top_reactors) == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) obj;
            if (messageReactor != null && messageReactor.f1688my) {
                if (messageReactor.anonymous) {
                    return Long.valueOf(UserObject.ANONYMOUS);
                }
                TLRPC.Peer peer = messageReactor.peer_id;
                if (peer != null) {
                    return Long.valueOf(DialogObject.getPeerDialogId(peer));
                }
            }
        }
        return null;
    }

    public void setMyPaidReactionDialogId(long j) {
        TLRPC.TL_messageReactions tL_messageReactions;
        ArrayList arrayList;
        TLRPC.Message message = this.messageOwner;
        if (message == null || (tL_messageReactions = message.reactions) == null || (arrayList = tL_messageReactions.top_reactors) == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TLRPC.MessageReactor messageReactor = (TLRPC.MessageReactor) obj;
            if (messageReactor != null && messageReactor.f1688my) {
                boolean z = j == UserObject.ANONYMOUS;
                messageReactor.anonymous = z;
                if (z) {
                    messageReactor.flags &= -9;
                    messageReactor.peer_id = null;
                } else {
                    messageReactor.flags |= 8;
                    messageReactor.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(j);
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
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
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
            if (((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i)).reaction instanceof TLRPC.TL_reactionPaid) {
                reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i);
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
            if (((TLRPC.ReactionCount) messageReactions.results.get(i3)).reaction instanceof TLRPC.TL_reactionPaid) {
                tL_reactionCount = (TLRPC.ReactionCount) messageReactions.results.get(i3);
            }
        }
        int i4 = 0;
        while (true) {
            if (i4 >= messageReactions.top_reactors.size()) {
                break;
            }
            if (((TLRPC.MessageReactor) messageReactions.top_reactors.get(i4)).f1688my) {
                tL_messageReactor = (TLRPC.MessageReactor) messageReactions.top_reactors.get(i4);
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
            tL_messageReactor.f1688my = true;
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
            TLRPC.ReactionCount reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
            if (reactionCount.chosen && !(reactionCount.reaction instanceof TLRPC.TL_reactionPaid)) {
                arrayList.add(reactionCount);
                int i4 = reactionCount.chosen_order;
                if (i4 > i2) {
                    i2 = i4;
                }
            }
            TLRPC.Reaction reaction = ((TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3)).reaction;
            if (reaction instanceof TLRPC.TL_reactionEmoji) {
                String str = visibleReaction.emojicon;
                if (str != null) {
                    if (((TLRPC.TL_reactionEmoji) reaction).emoticon.equals(str)) {
                        tL_reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
                    }
                    if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                    }
                }
            } else if (!(reaction instanceof TLRPC.TL_reactionCustomEmoji)) {
                long j = visibleReaction.documentId;
                if (j != 0 && ((TLRPC.TL_reactionCustomEmoji) reaction).document_id == j) {
                    tL_reactionCount = (TLRPC.ReactionCount) this.messageOwner.reactions.results.get(i3);
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
                    if (getPeerId(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i6)).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i6)).reaction, visibleReaction)) {
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
                    if (getPeerId(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i10)).peer_id) == UserConfig.getInstance(this.currentAccount).getClientUserId() && ReactionsUtils.compare(((TLRPC.MessagePeerReaction) this.messageOwner.reactions.recent_reactions.get(i10)).reaction, visibleReaction)) {
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
                ArrayList arrayList2 = tL_messageReactions.results;
                int size = arrayList2.size();
                i = 0;
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList2.get(i11);
                    i11++;
                    if (!(((TLRPC.ReactionCount) obj).reaction instanceof TLRPC.TL_reactionPaid)) {
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
        tL_webPageAttributeStory.f1821id = this.messageOwner.media.f1687id;
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
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_reply_user);
            coloredImageSpan.spaceScaleX = 0.9f;
            if (i == 0) {
                coloredImageSpan.translate(0.0f, AndroidUtilities.m1124dp(1.0f));
            }
            ((SpannableStringBuilder) userSpan[i]).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return userSpan[i];
    }

    public static CharSequence groupSpan() {
        if (groupSpan == null) {
            groupSpan = new SpannableStringBuilder(ImageLoader.AUTOPLAY_FILTER);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_folders_groups);
            coloredImageSpan.setScale(0.7f, 0.7f);
            ((SpannableStringBuilder) groupSpan).setSpan(coloredImageSpan, 0, 1, 33);
        }
        return groupSpan;
    }

    public static CharSequence channelSpan() {
        if (channelSpan == null) {
            channelSpan = new SpannableStringBuilder("c");
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_folders_channels);
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
            if (DialogObject.isChatDialog(getDialogId())) {
                charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, getDialogId());
            } else {
                spannableStringBuilder = peerNameWithIcon(this.currentAccount, getDialogId());
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
                if (peer2 instanceof TLRPC.TL_peerUser) {
                    spannableStringBuilder = peerNameWithIcon(this.currentAccount, peer2, z);
                    charSequencePeerNameWithIcon2 = spannableStringBuilder;
                    charSequencePeerNameWithIcon = null;
                } else {
                    charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, peer2, z);
                }
            } else {
                TLRPC.Peer peer3 = messageFwdHeader.saved_from_peer;
                if (peer3 != null) {
                    if (peer3 instanceof TLRPC.TL_peerUser) {
                        spannableStringBuilder = peerNameWithIcon(this.currentAccount, peer3, z);
                    } else {
                        charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, peer3, z);
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
            if (peer5 instanceof TLRPC.TL_peerUser) {
                charSequencePeerNameWithIcon2 = peerNameWithIcon(this.currentAccount, peer5, true);
            } else {
                charSequencePeerNameWithIcon = peerNameWithIcon(this.currentAccount, peer5);
            }
        }
        MessageObject messageObject = this.replyMessageObject;
        if (messageObject != null) {
            if (messageObject.messageOwner instanceof TLRPC.TL_messageEmpty) {
                charSequencePeerNameWithIcon2 = new SpannableStringBuilder(userSpan()).append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2888R.string.StarsTransactionUnknown));
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
            return charSequencePeerNameWithIcon != null ? charSequencePeerNameWithIcon : charSequencePeerNameWithIcon2 != null ? charSequencePeerNameWithIcon2 : LocaleController.getString(C2888R.string.Loading);
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
            treeSet.add(Integer.valueOf(spanStart));
            map.put(Integer.valueOf(spanStart), Integer.valueOf((map.containsKey(Integer.valueOf(spanStart)) ? ((Integer) map.get(Integer.valueOf(spanStart))).intValue() : 0) | (quoteStyleSpanArr[i2].span.isCollapsing ? 16 : 1)));
            treeSet.add(Integer.valueOf(spanEnd));
            map.put(Integer.valueOf(spanEnd), Integer.valueOf((map.containsKey(Integer.valueOf(spanEnd)) ? ((Integer) map.get(Integer.valueOf(spanEnd))).intValue() : 0) | 2));
            i2++;
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            if (iIntValue >= 0 && iIntValue < spanned.length() && map.containsKey(num)) {
                int iIntValue2 = ((Integer) map.get(num)).intValue();
                if ((iIntValue2 & 17) != 0 && (iIntValue2 & 2) != 0 && spanned.charAt(iIntValue) != '\n' && (iIntValue - 1 <= 0 || spanned.charAt(i) != '\n')) {
                    it.remove();
                    map.remove(num);
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
        boolean z = false;
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
                int i10 = i6;
                arrayList.add(new TextRange(i7, i9, i4 > 0, i5 > 0, z, str));
                i7 = i9 + 1;
                if (i7 >= charSequence.length() || charSequence.charAt(i9) != '\n') {
                    i7 = i9;
                }
                i6 = i10;
            }
            if ((iIntValue4 & 2) != 0) {
                i4--;
            }
            if ((iIntValue4 & 1) != 0 || (iIntValue4 & 16) != 0) {
                i4++;
                z = (iIntValue4 & 16) != 0;
            }
            if ((iIntValue4 & 8) != 0) {
                i5--;
            }
            if ((iIntValue4 & 4) != 0) {
                i5++;
            }
        }
        if (i7 < charSequence.length()) {
            arrayList.add(new TextRange(i7, charSequence.length(), i4 > 0, i5 > 0, z, null));
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
        return quickReplyFindReply.f1887id;
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
            TLRPC.MessageEntity messageEntity = (TLRPC.MessageEntity) this.messageOwner.entities.get(i);
            if ((messageEntity instanceof TLRPC.TL_messageEntityPhone) || (messageEntity instanceof TLRPC.TL_messageEntityBankCard)) {
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
                FileLog.m1136e(e);
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
            ArrayList arrayList2 = quality.uris;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList2.get(i2);
                i2++;
                ((VideoPlayer.VideoUri) obj).updateCached(z);
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

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
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
        boolean z2;
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
        MessageSuggestionParams messageSuggestionParamsM1155of = MessageSuggestionParams.m1155of(tL_messageActionSuggestedPostApproval);
        boolean zCanManageMonoForum = ChatObject.canManageMonoForum(this.currentAccount, DialogObject.getPeerDialogId(this.messageOwner.peer_id));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (tL_messageActionSuggestedPostApproval.balance_too_low) {
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.SuggestionAgreementNotEnoughStars, str2)));
            return spannableStringBuilder;
        }
        if (tL_messageActionSuggestedPostApproval.rejected) {
            MessageObject messageObject = this.replyMessageObject;
            if (messageObject == null || (message = messageObject.messageOwner) == null) {
                z = false;
                z2 = true;
            } else {
                long peerDialogId = DialogObject.getPeerDialogId(message.from_id);
                z2 = peerDialogId == DialogObject.getPeerDialogId(this.replyMessageObject.messageOwner.saved_peer_id);
                z = peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
            }
            if (TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                i5 = z ? C2888R.string.SuggestionAgreementDeclinedYou : C2888R.string.SuggestionAgreementDeclinedThis;
            } else {
                i5 = z ? C2888R.string.SuggestionAgreementDeclinedYouComment : C2888R.string.SuggestionAgreementDeclinedThisComment;
            }
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i5, z2 ? str : str2)));
            if (!TextUtils.isEmpty(tL_messageActionSuggestedPostApproval.reject_comment)) {
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.8f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append('\"');
                spannableStringBuilder.append((CharSequence) tL_messageActionSuggestedPostApproval.reject_comment);
                spannableStringBuilder.append('\"');
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
                        i4 = C2888R.string.SuggestionAgreementReachedAdmin1;
                    } else {
                        i4 = C2888R.string.SuggestionAgreementReachedUser1;
                    }
                } else if (zCanManageMonoForum) {
                    i4 = C2888R.string.SuggestionAgreementReachedAdmin1PastSimple;
                } else {
                    i4 = C2888R.string.SuggestionAgreementReachedUser1PastSimple;
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i4, str, dateTime)));
            } else {
                if (zCanManageMonoForum) {
                    i = C2888R.string.SuggestionAgreementReachedAdmin1PresentPerfect;
                } else {
                    i = C2888R.string.SuggestionAgreementReachedUser1PresentPerfect;
                }
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i, str)));
            }
            AmountUtils$Amount amountUtils$Amount = messageSuggestionParamsM1155of.amount;
            if (amountUtils$Amount != null && !amountUtils$Amount.isZero()) {
                AmountUtils$Amount amountUtils$Amount2 = messageSuggestionParamsM1155of.amount;
                AmountUtils$Currency amountUtils$Currency = amountUtils$Amount2.currency;
                AmountUtils$Currency amountUtils$Currency2 = AmountUtils$Currency.TON;
                boolean z3 = amountUtils$Currency == amountUtils$Currency2;
                if (zCanManageMonoForum) {
                    string = LocaleController.formatString(C2888R.string.SuggestionAgreementReachedAdmin2, str2, amountUtils$Amount2.asDecimalString());
                } else {
                    string = LocaleController.formatString(C2888R.string.SuggestionAgreementReachedUser2, amountUtils$Amount2.asDecimalString());
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) StarsIntroActivity.replaceStars(messageSuggestionParamsM1155of.amount.currency == amountUtils$Currency2, AndroidUtilities.replaceTags(string)));
                if (z3) {
                    if (zCanManageMonoForum) {
                        i2 = C2888R.string.SuggestionAgreementReachedAdmin3TON;
                    } else {
                        i2 = C2888R.string.SuggestionAgreementReachedUser3TON;
                    }
                } else if (zCanManageMonoForum) {
                    i2 = C2888R.string.SuggestionAgreementReachedAdmin3Stars;
                } else {
                    i2 = C2888R.string.SuggestionAgreementReachedUser3Stars;
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i2, str, Integer.valueOf(i6))));
                if (z3) {
                    if (zCanManageMonoForum) {
                        i3 = C2888R.string.SuggestionAgreementReachedAdmin4TON;
                    } else {
                        i3 = C2888R.string.SuggestionAgreementReachedUser4TON;
                    }
                } else if (zCanManageMonoForum) {
                    i3 = C2888R.string.SuggestionAgreementReachedAdmin4Stars;
                } else {
                    i3 = C2888R.string.SuggestionAgreementReachedUser4Stars;
                }
                spannableStringBuilder.append((CharSequence) "\n\n");
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6f), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatString(i3, str, Integer.valueOf(i6))));
            }
        }
        return spannableStringBuilder;
    }

    public static TLRPC.TodoItem findTodoItem(MessageObject messageObject, int i) {
        TLRPC.TL_messageMediaToDo tL_messageMediaToDo;
        TLRPC.TodoList todoList;
        TLRPC.MessageMedia media = getMedia(messageObject);
        if ((media instanceof TLRPC.TL_messageMediaToDo) && (todoList = (tL_messageMediaToDo = (TLRPC.TL_messageMediaToDo) media).todo) != null && todoList.list != null) {
            for (int i2 = 0; i2 < tL_messageMediaToDo.todo.list.size(); i2++) {
                TLRPC.TodoItem todoItem = (TLRPC.TodoItem) tL_messageMediaToDo.todo.list.get(i2);
                if (todoItem.f1823id == i) {
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
            if (((TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i2)).f1822id == i) {
                return true;
            }
        }
        return false;
    }

    public static void toggleTodo(int i, long j, TLRPC.TL_messageMediaToDo tL_messageMediaToDo, int i2, boolean z, int i3) {
        int i4 = 0;
        while (i4 < tL_messageMediaToDo.completions.size()) {
            if (((TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i4)).f1822id == i2) {
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
            tL_todoCompletion.f1822id = i2;
            tL_todoCompletion.completed_by = MessagesController.getInstance(i).getPeer(j);
            tL_todoCompletion.date = i3;
            tL_messageMediaToDo.flags |= 1;
            tL_messageMediaToDo.completions.add(tL_todoCompletion);
        }
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
            return MessageSuggestionParams.m1154of(suggestedPost);
        }
        TLRPC.MessageAction messageAction = message.action;
        if (messageAction instanceof TLRPC.TL_messageActionSuggestedPostApproval) {
            return MessageSuggestionParams.m1155of((TLRPC.TL_messageActionSuggestedPostApproval) messageAction);
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
        } else if (photo2.f1692id != photo.f1692id) {
        }
        TLRPC.Document document2 = messageMedia.document;
        if (document2 == null || (document = messageMedia3.document) == null) {
            if ((document2 == null) != (messageMedia3.document == null)) {
                return i | 8;
            }
        } else if (document2.f1668id != document.f1668id) {
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
                ArrayList arrayList = poll.answers;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    sb.append("\n🔘 ");
                    TLRPC.TL_textWithEntities tL_textWithEntities = ((TLRPC.PollAnswer) obj).text;
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
            TLRPC.TodoCompletion todoCompletion = (TLRPC.TodoCompletion) tL_messageMediaToDo.completions.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= tL_messageMediaToDo.todo.list.size()) {
                    break;
                }
                if (((TLRPC.TodoItem) tL_messageMediaToDo.todo.list.get(i3)).f1823id == todoCompletion.f1822id) {
                    i++;
                    break;
                }
                i3++;
            }
        }
        return i;
    }
}
